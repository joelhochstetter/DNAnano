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
	<24.097691, 34.810955, 35.004932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.367872, 35.076927, 34.877415>,  <24.529982, 35.236511, 34.800903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.367872, 35.076927, 34.877415>,  <24.097691, 34.810955, 35.004932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.367872, 35.076927, 34.877415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320766, -0.654220, -0.684913,
		-0.663982, 0.360368, -0.655182,
		0.675453, 0.664930, -0.318796,
		24.570509, 35.276405, 34.781776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.096809, 34.915462, 34.299236>,  <24.097691, 34.810955, 35.004932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.096809, 34.915462, 34.299236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.482258, 34.969490, 34.391487>,  <24.713528, 35.001907, 34.446838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.482258, 34.969490, 34.391487>,  <24.096809, 34.915462, 34.299236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.482258, 34.969490, 34.391487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266762, -0.539287, -0.798754,
		0.016487, 0.831220, -0.555700,
		0.963621, 0.135070, 0.230629,
		24.771345, 35.010010, 34.460674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.471796, 35.223366, 33.702274>,  <24.096809, 34.915462, 34.299236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.471796, 35.223366, 33.702274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.727011, 35.037399, 33.947800>,  <24.880138, 34.925819, 34.095116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.727011, 35.037399, 33.947800>,  <24.471796, 35.223366, 33.702274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.727011, 35.037399, 33.947800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421528, -0.456202, -0.783705,
		0.644379, 0.758770, -0.095097,
		0.638035, -0.464917, 0.613810,
		24.918421, 34.897923, 34.131943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.180515, 35.208981, 33.369530>,  <24.471796, 35.223366, 33.702274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.180515, 35.208981, 33.369530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204704, 34.923771, 33.648941>,  <25.219217, 34.752647, 33.816589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204704, 34.923771, 33.648941>,  <25.180515, 35.208981, 33.369530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.204704, 34.923771, 33.648941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449573, -0.605355, -0.656833,
		0.891194, 0.353759, 0.283949,
		0.060470, -0.713022, 0.698530,
		25.222845, 34.709866, 33.858501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.802250, 34.951481, 33.156891>,  <25.180515, 35.208981, 33.369530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.802250, 34.951481, 33.156891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599728, 34.673779, 33.361504>,  <25.478214, 34.507156, 33.484272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599728, 34.673779, 33.361504>,  <25.802250, 34.951481, 33.156891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.599728, 34.673779, 33.361504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119475, -0.643933, -0.755695,
		0.854037, -0.321499, 0.408974,
		-0.506307, -0.694254, 0.511531,
		25.447836, 34.465504, 33.514961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230696, 34.325581, 33.294815>,  <25.802250, 34.951481, 33.156891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230696, 34.325581, 33.294815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836742, 34.280315, 33.242359>,  <25.600370, 34.253159, 33.210888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836742, 34.280315, 33.242359>,  <26.230696, 34.325581, 33.294815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.836742, 34.280315, 33.242359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167420, -0.427815, -0.888226,
		0.044410, -0.896755, 0.440293,
		-0.984885, -0.113160, -0.131136,
		25.541277, 34.246368, 33.203018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033684, 33.568249, 33.105522>,  <26.230696, 34.325581, 33.294815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033684, 33.568249, 33.105522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.747337, 33.809689, 32.965118>,  <25.575529, 33.954552, 32.880878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.747337, 33.809689, 32.965118>,  <26.033684, 33.568249, 33.105522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.747337, 33.809689, 32.965118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012593, -0.491460, -0.870809,
		-0.698126, -0.627801, 0.344218,
		-0.715864, 0.603600, -0.351007,
		25.532578, 33.990768, 32.859818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.627281, 33.117371, 32.665779>,  <26.033684, 33.568249, 33.105522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.627281, 33.117371, 32.665779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542473, 33.491894, 32.553799>,  <25.491589, 33.716606, 32.486610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542473, 33.491894, 32.553799>,  <25.627281, 33.117371, 32.665779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.542473, 33.491894, 32.553799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121406, -0.309482, -0.943123,
		-0.969695, -0.165973, 0.179290,
		-0.212020, 0.936309, -0.279953,
		25.478867, 33.772785, 32.469814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.000479, 32.992516, 32.341499>,  <25.627281, 33.117371, 32.665779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.000479, 32.992516, 32.341499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.157717, 33.335812, 32.209496>,  <25.252060, 33.541790, 32.130295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.157717, 33.335812, 32.209496>,  <25.000479, 32.992516, 32.341499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.157717, 33.335812, 32.209496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008443, -0.355516, -0.934632,
		-0.919459, 0.370187, -0.132506,
		0.393096, 0.858236, -0.330008,
		25.275646, 33.593281, 32.110493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.565359, 33.220295, 31.864918>,  <25.000479, 32.992516, 32.341499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.565359, 33.220295, 31.864918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.913729, 33.397228, 31.779284>,  <25.122749, 33.503387, 31.727903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.913729, 33.397228, 31.779284>,  <24.565359, 33.220295, 31.864918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.913729, 33.397228, 31.779284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025456, -0.475672, -0.879254,
		-0.490760, 0.760313, -0.425534,
		0.870923, 0.442335, -0.214086,
		25.175005, 33.529930, 31.715057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.499655, 33.423092, 31.158871>,  <24.565359, 33.220295, 31.864918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.499655, 33.423092, 31.158871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893509, 33.422661, 31.228718>,  <25.129822, 33.422401, 31.270626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893509, 33.422661, 31.228718>,  <24.499655, 33.423092, 31.158871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.893509, 33.422661, 31.228718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156563, -0.437388, -0.885539,
		0.077333, 0.899272, -0.430499,
		0.984636, -0.001082, 0.174618,
		25.188900, 33.422337, 31.281103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.825798, 33.649620, 30.592049>,  <24.499655, 33.423092, 31.158871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.825798, 33.649620, 30.592049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079338, 33.416725, 30.795712>,  <25.231462, 33.276989, 30.917910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079338, 33.416725, 30.795712>,  <24.825798, 33.649620, 30.592049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.079338, 33.416725, 30.795712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094741, -0.594883, -0.798209,
		0.767633, 0.554182, -0.321904,
		0.633848, -0.582234, 0.509156,
		25.269493, 33.242054, 30.948458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.759174, 32.840462, 30.495687>,  <24.825798, 33.649620, 30.592049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.759174, 32.840462, 30.495687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075369, 32.631641, 30.367567>,  <25.265085, 32.506351, 30.290695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075369, 32.631641, 30.367567>,  <24.759174, 32.840462, 30.495687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.075369, 32.631641, 30.367567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600801, 0.559305, 0.571154,
		-0.119023, -0.643929, 0.755771,
		0.790489, -0.522048, -0.320303,
		25.312515, 32.475025, 30.271477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.134554, 32.669415, 31.018959>,  <24.759174, 32.840462, 30.495687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.134554, 32.669415, 31.018959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382055, 32.672264, 30.704737>,  <25.530556, 32.673973, 30.516203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382055, 32.672264, 30.704737>,  <25.134554, 32.669415, 31.018959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382055, 32.672264, 30.704737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562364, 0.694208, 0.449245,
		0.548536, -0.719739, 0.425539,
		0.618752, 0.007119, -0.785554,
		25.567680, 32.674400, 30.469070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.772369, 32.310120, 31.203876>,  <25.134554, 32.669415, 31.018959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.772369, 32.310120, 31.203876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758692, 32.605087, 30.934048>,  <25.750486, 32.782066, 30.772150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758692, 32.605087, 30.934048>,  <25.772369, 32.310120, 31.203876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.758692, 32.605087, 30.934048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333326, 0.644736, 0.687903,
		0.942192, -0.201331, -0.267845,
		-0.034193, 0.737416, -0.674573,
		25.748434, 32.826313, 30.731676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266459, 32.745483, 31.326244>,  <25.772369, 32.310120, 31.203876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266459, 32.745483, 31.326244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996489, 32.984135, 31.152571>,  <25.834507, 33.127323, 31.048367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996489, 32.984135, 31.152571>,  <26.266459, 32.745483, 31.326244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996489, 32.984135, 31.152571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144436, 0.683853, 0.715180,
		0.723613, 0.419980, -0.547723,
		-0.674924, 0.596625, -0.434185,
		25.794012, 33.163120, 31.022316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.468004, 33.524696, 31.272089>,  <26.266459, 32.745483, 31.326244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.468004, 33.524696, 31.272089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068357, 33.508270, 31.268583>,  <25.828569, 33.498413, 31.266479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068357, 33.508270, 31.268583>,  <26.468004, 33.524696, 31.272089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068357, 33.508270, 31.268583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032312, 0.618589, 0.785051,
		-0.026820, 0.784641, -0.619370,
		-0.999118, -0.041068, -0.008763,
		25.768621, 33.495949, 31.265955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199610, 34.219818, 31.279064>,  <26.468004, 33.524696, 31.272089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199610, 34.219818, 31.279064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867809, 34.035027, 31.404606>,  <25.668730, 33.924152, 31.479931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867809, 34.035027, 31.404606>,  <26.199610, 34.219818, 31.279064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867809, 34.035027, 31.404606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077447, 0.651670, 0.754538,
		-0.553108, 0.601584, -0.576340,
		-0.829502, -0.461978, 0.313853,
		25.618959, 33.896435, 31.498762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740154, 34.726719, 31.586979>,  <26.199610, 34.219818, 31.279064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740154, 34.726719, 31.586979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564934, 34.398170, 31.733107>,  <25.459801, 34.201042, 31.820784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564934, 34.398170, 31.733107>,  <25.740154, 34.726719, 31.586979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.564934, 34.398170, 31.733107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292045, 0.514374, 0.806306,
		-0.850188, 0.246515, -0.465200,
		-0.438053, -0.821371, 0.365321,
		25.433517, 34.151760, 31.842703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212305, 34.949341, 32.010883>,  <25.740154, 34.726719, 31.586979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212305, 34.949341, 32.010883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.249016, 34.579071, 32.157688>,  <25.271042, 34.356907, 32.245770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.249016, 34.579071, 32.157688>,  <25.212305, 34.949341, 32.010883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.249016, 34.579071, 32.157688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218181, 0.340920, 0.914424,
		-0.971584, -0.163996, -0.170678,
		0.091775, -0.925678, 0.367013,
		25.276548, 34.301369, 32.267792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.875204, 35.586159, 32.439518>,  <25.212305, 34.949341, 32.010883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.875204, 35.586159, 32.439518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.659313, 35.588055, 32.102787>,  <24.529778, 35.589191, 31.900749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.659313, 35.588055, 32.102787>,  <24.875204, 35.586159, 32.439518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.659313, 35.588055, 32.102787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831182, 0.155612, 0.533780,
		0.133528, 0.987807, -0.080050,
		-0.539728, 0.004739, -0.841826,
		24.497395, 35.589478, 31.850239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.663422, 34.859688, 32.505989>,  <24.875204, 35.586159, 32.439518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.663422, 34.859688, 32.505989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933067, 34.590019, 32.626694>,  <25.094854, 34.428219, 32.699116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933067, 34.590019, 32.626694>,  <24.663422, 34.859688, 32.505989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.933067, 34.590019, 32.626694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206677, 0.220052, 0.953342,
		-0.709121, -0.705029, 0.009004,
		0.674116, -0.674175, 0.301757,
		25.135302, 34.387768, 32.717220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.299992, 34.401871, 32.944717>,  <24.663422, 34.859688, 32.505989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.299992, 34.401871, 32.944717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.685703, 34.391663, 33.050179>,  <24.917130, 34.385536, 33.113457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.685703, 34.391663, 33.050179>,  <24.299992, 34.401871, 32.944717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.685703, 34.391663, 33.050179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256020, 0.165610, 0.952380,
		-0.067973, -0.985861, 0.153159,
		0.964279, -0.025524, 0.263657,
		24.974987, 34.384007, 33.129276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.485956, 33.745689, 33.409843>,  <24.299992, 34.401871, 32.944717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.485956, 33.745689, 33.409843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.884130, 33.782841, 33.401100>,  <25.123035, 33.805130, 33.395855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.884130, 33.782841, 33.401100>,  <24.485956, 33.745689, 33.409843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.884130, 33.782841, 33.401100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016215, 0.390455, 0.920479,
		0.094029, -0.915925, 0.390179,
		0.995437, 0.092879, -0.021863,
		25.182762, 33.810703, 33.394543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.755854, 33.455917, 34.022892>,  <24.485956, 33.745689, 33.409843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.755854, 33.455917, 34.022892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.977486, 33.760883, 33.889194>,  <25.110464, 33.943863, 33.808975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.977486, 33.760883, 33.889194>,  <24.755854, 33.455917, 34.022892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.977486, 33.760883, 33.889194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236966, 0.529351, 0.814637,
		0.798024, -0.372170, 0.473970,
		0.554080, 0.762415, -0.334243,
		25.143709, 33.989609, 33.788921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158289, 33.618423, 34.569561>,  <24.755854, 33.455917, 34.022892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158289, 33.618423, 34.569561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156099, 33.958206, 34.358509>,  <25.154785, 34.162075, 34.231876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156099, 33.958206, 34.358509>,  <25.158289, 33.618423, 34.569561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.156099, 33.958206, 34.358509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289543, 0.503691, 0.813916,
		0.957149, 0.157227, 0.243197,
		-0.005473, 0.849456, -0.527631,
		25.154457, 34.213043, 34.200218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635515, 34.032295, 34.949440>,  <25.158289, 33.618423, 34.569561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.635515, 34.032295, 34.949440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391710, 34.245293, 34.714512>,  <25.245426, 34.373093, 34.573555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391710, 34.245293, 34.714512>,  <25.635515, 34.032295, 34.949440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.391710, 34.245293, 34.714512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138449, 0.657954, 0.740222,
		0.780592, 0.532489, -0.327308,
		-0.609514, 0.532496, -0.587316,
		25.208857, 34.405041, 34.538319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938169, 34.626095, 34.894932>,  <25.635515, 34.032295, 34.949440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938169, 34.626095, 34.894932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549665, 34.678596, 34.815514>,  <25.316563, 34.710098, 34.767860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549665, 34.678596, 34.815514>,  <25.938169, 34.626095, 34.894932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.549665, 34.678596, 34.815514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050135, 0.702660, 0.709757,
		0.232671, 0.699314, -0.675887,
		-0.971262, 0.131255, -0.198549,
		25.258287, 34.717972, 34.755947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.751945, 35.410809, 34.830799>,  <25.938169, 34.626095, 34.894932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.751945, 35.410809, 34.830799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.523546, 35.128193, 34.998020>,  <25.386507, 34.958626, 35.098354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.523546, 35.128193, 34.998020>,  <25.751945, 35.410809, 34.830799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.523546, 35.128193, 34.998020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090589, 0.560348, 0.823288,
		-0.815938, 0.432225, -0.383962,
		-0.570998, -0.706535, 0.418054,
		25.352247, 34.916233, 35.123436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381662, 35.756622, 35.204342>,  <25.751945, 35.410809, 34.830799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381662, 35.756622, 35.204342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694145, 35.507767, 35.183720>,  <26.881634, 35.358452, 35.171345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694145, 35.507767, 35.183720>,  <26.381662, 35.756622, 35.204342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694145, 35.507767, 35.183720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428129, 0.473815, 0.769548,
		-0.454339, -0.623248, 0.636504,
		0.781205, -0.622142, -0.051558,
		26.928507, 35.321125, 35.168251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515093, 35.411484, 35.848476>,  <26.381662, 35.756622, 35.204342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515093, 35.411484, 35.848476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858896, 35.379513, 35.646545>,  <27.065178, 35.360329, 35.525387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858896, 35.379513, 35.646545>,  <26.515093, 35.411484, 35.848476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858896, 35.379513, 35.646545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495217, 0.374679, 0.783822,
		0.126495, -0.923703, 0.361624,
		0.859511, -0.079933, -0.504828,
		27.116749, 35.355534, 35.495098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994766, 35.329815, 36.321014>,  <26.515093, 35.411484, 35.848476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994766, 35.329815, 36.321014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270954, 35.397144, 36.039612>,  <27.436666, 35.437542, 35.870770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270954, 35.397144, 36.039612>,  <26.994766, 35.329815, 36.321014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270954, 35.397144, 36.039612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626842, 0.346127, 0.698043,
		0.361005, -0.922963, 0.133472,
		0.690467, 0.168331, -0.703506,
		27.478094, 35.447643, 35.828560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629889, 35.115257, 36.496368>,  <26.994766, 35.329815, 36.321014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629889, 35.115257, 36.496368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.729631, 35.388359, 36.221657>,  <27.789478, 35.552219, 36.056828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.729631, 35.388359, 36.221657>,  <27.629889, 35.115257, 36.496368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729631, 35.388359, 36.221657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713288, 0.350187, 0.607116,
		0.655012, -0.641262, -0.399677,
		0.249358, 0.682753, -0.686781,
		27.804440, 35.593185, 36.015621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419321, 35.017067, 36.313766>,  <27.629889, 35.115257, 36.496368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419321, 35.017067, 36.313766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327656, 35.379303, 36.171001>,  <28.272655, 35.596645, 36.085342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327656, 35.379303, 36.171001>,  <28.419321, 35.017067, 36.313766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327656, 35.379303, 36.171001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679485, 0.411378, 0.607509,
		0.696981, -0.103296, -0.709610,
		-0.229165, 0.905592, -0.356911,
		28.258905, 35.650982, 36.063927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010941, 35.442341, 36.047005>,  <28.419321, 35.017067, 36.313766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010941, 35.442341, 36.047005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711479, 35.671116, 36.181114>,  <28.531801, 35.808380, 36.261578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711479, 35.671116, 36.181114>,  <29.010941, 35.442341, 36.047005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711479, 35.671116, 36.181114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597669, 0.363413, 0.714648,
		0.286891, 0.735405, -0.613899,
		-0.748655, 0.571935, 0.335269,
		28.486883, 35.842697, 36.281696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261524, 36.148476, 36.070141>,  <29.010941, 35.442341, 36.047005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261524, 36.148476, 36.070141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939392, 36.118286, 36.305344>,  <28.746113, 36.100170, 36.446465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939392, 36.118286, 36.305344>,  <29.261524, 36.148476, 36.070141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939392, 36.118286, 36.305344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506745, 0.427105, 0.748860,
		-0.307660, 0.901047, -0.305713,
		-0.805329, -0.075476, 0.588004,
		28.697794, 36.095642, 36.481747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545343, 36.693913, 35.742874>,  <29.261524, 36.148476, 36.070141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545343, 36.693913, 35.742874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210323, 36.714622, 35.960434>,  <29.009312, 36.727051, 36.090969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210323, 36.714622, 35.960434>,  <29.545343, 36.693913, 35.742874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210323, 36.714622, 35.960434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461536, 0.599802, 0.653622,
		-0.292388, 0.798471, -0.526263,
		-0.837553, 0.051778, 0.543898,
		28.959057, 36.730156, 36.123604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358860, 37.405491, 35.863522>,  <29.545343, 36.693913, 35.742874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358860, 37.405491, 35.863522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190464, 37.193829, 36.158211>,  <29.089426, 37.066830, 36.335022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190464, 37.193829, 36.158211>,  <29.358860, 37.405491, 35.863522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190464, 37.193829, 36.158211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377804, 0.636105, 0.672781,
		-0.824641, 0.561570, -0.067875,
		-0.420990, -0.529159, 0.736721,
		29.064167, 37.035080, 36.379227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925022, 37.820831, 36.215797>,  <29.358860, 37.405491, 35.863522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925022, 37.820831, 36.215797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054552, 37.536694, 36.465775>,  <29.132271, 37.366211, 36.615761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054552, 37.536694, 36.465775>,  <28.925022, 37.820831, 36.215797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054552, 37.536694, 36.465775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412937, 0.700413, 0.582156,
		-0.851246, 0.069544, 0.520138,
		0.323826, -0.710342, 0.624941,
		29.151699, 37.323589, 36.653255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449434, 38.043030, 36.753277>,  <28.925022, 37.820831, 36.215797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449434, 38.043030, 36.753277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292360, 37.982220, 37.116085>,  <29.198116, 37.945732, 37.333771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292360, 37.982220, 37.116085>,  <29.449434, 38.043030, 36.753277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292360, 37.982220, 37.116085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625974, -0.766715, 0.142495,
		0.673763, 0.623727, 0.396243,
		-0.392683, -0.152029, 0.907021,
		29.174555, 37.936611, 37.388191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751074, 37.534485, 37.214851>,  <29.449434, 38.043030, 36.753277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751074, 37.534485, 37.214851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448219, 37.483711, 37.471172>,  <29.266506, 37.453247, 37.624966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448219, 37.483711, 37.471172>,  <29.751074, 37.534485, 37.214851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448219, 37.483711, 37.471172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436200, -0.631975, -0.640576,
		0.486285, -0.764523, 0.423122,
		-0.757137, -0.126937, 0.640804,
		29.221079, 37.445629, 37.663414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637241, 36.826168, 37.427719>,  <29.751074, 37.534485, 37.214851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637241, 36.826168, 37.427719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293152, 37.028889, 37.405205>,  <29.086699, 37.150520, 37.391697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293152, 37.028889, 37.405205>,  <29.637241, 36.826168, 37.427719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293152, 37.028889, 37.405205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284516, -0.568649, -0.771809,
		-0.423163, -0.647913, 0.633358,
		-0.860223, 0.506801, -0.056290,
		29.035086, 37.180927, 37.388317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083431, 36.409771, 37.508018>,  <29.637241, 36.826168, 37.427719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083431, 36.409771, 37.508018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016726, 36.734711, 37.284489>,  <28.976702, 36.929672, 37.150372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016726, 36.734711, 37.284489>,  <29.083431, 36.409771, 37.508018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016726, 36.734711, 37.284489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346614, -0.578883, -0.738074,
		-0.923065, 0.070610, 0.378108,
		-0.166765, 0.812347, -0.558821,
		28.966696, 36.978416, 37.116844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341709, 36.485409, 37.323002>,  <29.083431, 36.409771, 37.508018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341709, 36.485409, 37.323002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550657, 36.665154, 37.033119>,  <28.676025, 36.773003, 36.859188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550657, 36.665154, 37.033119>,  <28.341709, 36.485409, 37.323002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550657, 36.665154, 37.033119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491464, -0.535864, -0.686522,
		-0.696844, 0.714786, -0.059072,
		0.522371, 0.449366, -0.724706,
		28.707369, 36.799965, 36.815708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897894, 36.426155, 36.818504>,  <28.341709, 36.485409, 37.323002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897894, 36.426155, 36.818504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213911, 36.542618, 36.602703>,  <28.403521, 36.612495, 36.473225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213911, 36.542618, 36.602703>,  <27.897894, 36.426155, 36.818504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213911, 36.542618, 36.602703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355419, -0.499509, -0.790043,
		-0.499509, 0.815918, -0.291152,
		0.790043, 0.291152, -0.539501,
		28.450924, 36.629963, 36.440853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741110, 36.625931, 36.160976>,  <27.897894, 36.426155, 36.818504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741110, 36.625931, 36.160976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110815, 36.474655, 36.140133>,  <28.332638, 36.383892, 36.127628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110815, 36.474655, 36.140133>,  <27.741110, 36.625931, 36.160976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110815, 36.474655, 36.140133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253736, -0.506587, -0.824007,
		0.285231, 0.774819, -0.564179,
		0.924262, -0.378185, -0.052105,
		28.388094, 36.361198, 36.124500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078150, 36.870956, 35.649906>,  <27.741110, 36.625931, 36.160976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078150, 36.870956, 35.649906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125282, 36.492695, 35.771141>,  <28.153563, 36.265739, 35.843884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125282, 36.492695, 35.771141>,  <28.078150, 36.870956, 35.649906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125282, 36.492695, 35.771141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581648, -0.313103, -0.750768,
		0.804861, -0.087828, -0.586928,
		0.117831, -0.945650, 0.303089,
		28.160631, 36.209000, 35.862068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940662, 36.492577, 35.104973>,  <28.078150, 36.870956, 35.649906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940662, 36.492577, 35.104973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945181, 36.198017, 35.375553>,  <27.947893, 36.021282, 35.537903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945181, 36.198017, 35.375553>,  <27.940662, 36.492577, 35.104973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945181, 36.198017, 35.375553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584931, -0.553541, -0.592830,
		0.811004, -0.388979, -0.436998,
		0.011298, -0.736402, 0.676450,
		27.948570, 35.977097, 35.578487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247162, 35.874165, 34.860031>,  <27.940662, 36.492577, 35.104973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247162, 35.874165, 34.860031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014074, 35.728291, 35.150536>,  <27.874222, 35.640766, 35.324837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014074, 35.728291, 35.150536>,  <28.247162, 35.874165, 34.860031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014074, 35.728291, 35.150536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592528, -0.420967, -0.686802,
		0.556194, -0.830539, 0.029220,
		-0.582717, -0.364682, 0.726257,
		27.839260, 35.618885, 35.368412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121683, 35.183556, 34.624863>,  <28.247162, 35.874165, 34.860031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121683, 35.183556, 34.624863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855124, 35.356026, 34.868176>,  <27.695189, 35.459507, 35.014164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855124, 35.356026, 34.868176>,  <28.121683, 35.183556, 34.624863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855124, 35.356026, 34.868176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742943, -0.315241, -0.590474,
		-0.062843, -0.845406, 0.530414,
		-0.666398, 0.431174, 0.608278,
		27.655205, 35.485378, 35.050659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295591, 34.479675, 34.338760>,  <28.121683, 35.183556, 34.624863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295591, 34.479675, 34.338760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327425, 34.122799, 34.516598>,  <28.346525, 33.908672, 34.623299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327425, 34.122799, 34.516598>,  <28.295591, 34.479675, 34.338760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327425, 34.122799, 34.516598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941042, -0.079868, -0.328727,
		0.328796, 0.444542, 0.833232,
		0.079585, -0.892190, 0.444592,
		28.351301, 33.855141, 34.649975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970570, 34.447559, 34.776150>,  <28.295591, 34.479675, 34.338760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970570, 34.447559, 34.776150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.850815, 34.100166, 34.618111>,  <28.778963, 33.891731, 34.523289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.850815, 34.100166, 34.618111>,  <28.970570, 34.447559, 34.776150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.850815, 34.100166, 34.618111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824256, -0.026841, -0.565582,
		0.480595, -0.494987, 0.723890,
		-0.299386, -0.868485, -0.395097,
		28.761000, 33.839622, 34.499580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569475, 34.154629, 34.596622>,  <28.970570, 34.447559, 34.776150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569475, 34.154629, 34.596622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283171, 33.950314, 34.406136>,  <29.111387, 33.827724, 34.291843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283171, 33.950314, 34.406136>,  <29.569475, 34.154629, 34.596622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283171, 33.950314, 34.406136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668075, -0.302246, -0.679944,
		0.203373, -0.804825, 0.557581,
		-0.715762, -0.510788, -0.476215,
		29.068441, 33.797077, 34.263271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447338, 33.368107, 34.549240>,  <29.569475, 34.154629, 34.596622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447338, 33.368107, 34.549240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383909, 33.535679, 34.191616>,  <29.345852, 33.636223, 33.977039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383909, 33.535679, 34.191616>,  <29.447338, 33.368107, 34.549240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383909, 33.535679, 34.191616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904346, -0.301782, -0.301804,
		-0.396248, -0.856402, -0.331004,
		-0.158575, 0.418932, -0.894064,
		29.336336, 33.661358, 33.923397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311371, 32.780952, 34.175713>,  <29.447338, 33.368107, 34.549240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311371, 32.780952, 34.175713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517759, 33.108234, 34.074268>,  <29.641592, 33.304604, 34.013401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517759, 33.108234, 34.074268>,  <29.311371, 32.780952, 34.175713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517759, 33.108234, 34.074268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848837, -0.528153, 0.023030,
		-0.115104, -0.227160, -0.967031,
		0.515972, 0.818201, -0.253615,
		29.672550, 33.353695, 33.998184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995190, 32.475880, 34.009655>,  <29.311371, 32.780952, 34.175713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995190, 32.475880, 34.009655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062847, 32.867622, 34.053921>,  <30.103441, 33.102669, 34.080479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062847, 32.867622, 34.053921>,  <29.995190, 32.475880, 34.009655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062847, 32.867622, 34.053921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914810, -0.197784, 0.352143,
		0.366762, 0.041675, -0.929381,
		0.169142, 0.979359, 0.110664,
		30.113590, 33.161430, 34.087120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635839, 32.627605, 33.746155>,  <29.995190, 32.475880, 34.009655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635839, 32.627605, 33.746155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586529, 32.907604, 34.027523>,  <30.556942, 33.075603, 34.196346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586529, 32.907604, 34.027523>,  <30.635839, 32.627605, 33.746155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586529, 32.907604, 34.027523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877495, -0.254154, 0.406703,
		0.463470, 0.667388, -0.582914,
		-0.123278, 0.699999, 0.703423,
		30.549545, 33.117603, 34.238548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977894, 32.808819, 34.314125>,  <30.635839, 32.627605, 33.746155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977894, 32.808819, 34.314125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055986, 32.921635, 33.938393>,  <31.102842, 32.989323, 33.712952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055986, 32.921635, 33.938393>,  <30.977894, 32.808819, 34.314125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055986, 32.921635, 33.938393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739952, 0.586252, 0.329817,
		0.643704, -0.759450, -0.094236,
		0.195234, 0.282035, -0.939329,
		31.114557, 33.006245, 33.656593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518345, 32.845322, 34.936943>,  <30.977894, 32.808819, 34.314125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518345, 32.845322, 34.936943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471111, 33.206291, 35.102680>,  <31.442772, 33.422874, 35.202122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471111, 33.206291, 35.102680>,  <31.518345, 32.845322, 34.936943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471111, 33.206291, 35.102680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915193, -0.260820, 0.307238,
		0.385329, -0.342924, 0.856694,
		-0.118084, 0.902428, 0.414343,
		31.435686, 33.477020, 35.226982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265667, 32.870510, 35.762306>,  <31.518345, 32.845322, 34.936943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265667, 32.870510, 35.762306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126633, 33.174686, 35.542885>,  <31.043213, 33.357193, 35.411232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126633, 33.174686, 35.542885>,  <31.265667, 32.870510, 35.762306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126633, 33.174686, 35.542885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937463, -0.293502, 0.187138,
		-0.018694, 0.579295, 0.814904,
		-0.347584, 0.760443, -0.548554,
		31.022358, 33.402821, 35.378319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865086, 33.526127, 36.172516>,  <31.265667, 32.870510, 35.762306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865086, 33.526127, 36.172516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732180, 33.451603, 35.802677>,  <30.652435, 33.406887, 35.580772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732180, 33.451603, 35.802677>,  <30.865086, 33.526127, 36.172516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732180, 33.451603, 35.802677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876106, -0.302116, 0.375717,
		-0.349337, 0.934887, -0.062846,
		-0.332267, -0.186312, -0.924601,
		30.632500, 33.395710, 35.525295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312729, 34.035206, 36.158844>,  <30.865086, 33.526127, 36.172516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312729, 34.035206, 36.158844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478752, 34.397266, 36.122124>,  <30.578365, 34.614502, 36.100090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478752, 34.397266, 36.122124>,  <30.312729, 34.035206, 36.158844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478752, 34.397266, 36.122124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780941, -0.302687, 0.546362,
		0.466753, -0.298464, -0.832503,
		0.415057, 0.905152, -0.091802,
		30.603270, 34.668812, 36.094582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803699, 34.261318, 35.693581>,  <30.312729, 34.035206, 36.158844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803699, 34.261318, 35.693581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786312, 34.655647, 35.628746>,  <30.775881, 34.892242, 35.589844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786312, 34.655647, 35.628746>,  <30.803699, 34.261318, 35.693581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786312, 34.655647, 35.628746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781706, 0.067473, 0.619986,
		0.622130, 0.153656, 0.767687,
		-0.043466, 0.985818, -0.162091,
		30.773272, 34.951393, 35.580120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429491, 34.133179, 35.028118>,  <30.803699, 34.261318, 35.693581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429491, 34.133179, 35.028118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464216, 33.814266, 34.789185>,  <30.485052, 33.622917, 34.645824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464216, 33.814266, 34.789185>,  <30.429491, 34.133179, 35.028118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464216, 33.814266, 34.789185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565126, 0.454377, -0.688603,
		0.820425, 0.397348, -0.411118,
		0.086813, -0.797280, -0.597334,
		30.490259, 33.575081, 34.609985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373356, 34.447151, 34.425987>,  <30.429491, 34.133179, 35.028118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373356, 34.447151, 34.425987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291004, 34.068142, 34.328159>,  <30.241594, 33.840736, 34.269463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291004, 34.068142, 34.328159>,  <30.373356, 34.447151, 34.425987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291004, 34.068142, 34.328159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539975, 0.318430, -0.779121,
		0.816114, -0.028341, -0.577196,
		-0.205878, -0.947523, -0.244572,
		30.229240, 33.783886, 34.254787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441322, 34.311073, 33.597992>,  <30.373356, 34.447151, 34.425987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441322, 34.311073, 33.597992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197981, 34.032749, 33.750702>,  <30.051977, 33.865753, 33.842327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197981, 34.032749, 33.750702>,  <30.441322, 34.311073, 33.597992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197981, 34.032749, 33.750702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749180, 0.344661, -0.565631,
		0.261987, -0.630125, -0.730962,
		-0.608352, -0.695810, 0.381780,
		30.015476, 33.824005, 33.865234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180777, 33.861542, 33.053497>,  <30.441322, 34.311073, 33.597992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180777, 33.861542, 33.053497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.896315, 33.860203, 33.334709>,  <29.725637, 33.859398, 33.503437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.896315, 33.860203, 33.334709>,  <30.180777, 33.861542, 33.053497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896315, 33.860203, 33.334709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657036, 0.358946, -0.662919,
		-0.250129, -0.933352, -0.257466,
		-0.711153, -0.003349, 0.703029,
		29.682968, 33.859200, 33.545616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480310, 33.412159, 32.515575>,  <30.180777, 33.861542, 33.053497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480310, 33.412159, 32.515575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625351, 33.660011, 32.237129>,  <30.712376, 33.808723, 32.070061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625351, 33.660011, 32.237129>,  <30.480310, 33.412159, 32.515575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625351, 33.660011, 32.237129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145409, -0.700186, -0.698997,
		-0.920530, 0.354680, -0.163789,
		0.362603, 0.619631, -0.696116,
		30.734133, 33.845901, 32.028294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058390, 33.317478, 31.866173>,  <30.480310, 33.412159, 32.515575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058390, 33.317478, 31.866173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415386, 33.480534, 31.788933>,  <30.629585, 33.578365, 31.742588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415386, 33.480534, 31.788933>,  <30.058390, 33.317478, 31.866173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415386, 33.480534, 31.788933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130247, -0.642773, -0.754903,
		-0.431846, 0.648595, -0.626764,
		0.892493, 0.407636, -0.193102,
		30.683134, 33.602825, 31.731003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073341, 33.422859, 31.140160>,  <30.058390, 33.317478, 31.866173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073341, 33.422859, 31.140160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451895, 33.405846, 31.268255>,  <30.679026, 33.395638, 31.345112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451895, 33.405846, 31.268255>,  <30.073341, 33.422859, 31.140160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451895, 33.405846, 31.268255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243437, -0.557759, -0.793500,
		0.212369, 0.828912, -0.517498,
		0.946381, -0.042537, 0.320239,
		30.735809, 33.393085, 31.364326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472025, 33.437668, 30.555855>,  <30.073341, 33.422859, 31.140160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472025, 33.437668, 30.555855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753122, 33.300583, 30.805237>,  <30.921782, 33.218330, 30.954866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753122, 33.300583, 30.805237>,  <30.472025, 33.437668, 30.555855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753122, 33.300583, 30.805237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318406, -0.632156, -0.706397,
		0.636213, 0.694929, -0.335122,
		0.702745, -0.342715, 0.623455,
		30.963945, 33.197769, 30.992273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987375, 33.189098, 30.138184>,  <30.472025, 33.437668, 30.555855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987375, 33.189098, 30.138184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084860, 33.019501, 30.487087>,  <31.143351, 32.917744, 30.696428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084860, 33.019501, 30.487087>,  <30.987375, 33.189098, 30.138184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084860, 33.019501, 30.487087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398521, -0.776159, -0.488630,
		0.884187, 0.466697, -0.020187,
		0.243710, -0.423995, 0.872258,
		31.157972, 32.892303, 30.748764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575233, 32.939236, 29.977903>,  <30.987375, 33.189098, 30.138184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575233, 32.939236, 29.977903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393324, 32.729233, 30.265667>,  <31.284178, 32.603230, 30.438324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393324, 32.729233, 30.265667>,  <31.575233, 32.939236, 29.977903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393324, 32.729233, 30.265667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216876, -0.848739, -0.482294,
		0.863797, -0.063312, 0.499846,
		-0.454774, -0.525009, 0.719407,
		31.256891, 32.571732, 30.481489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148132, 32.584087, 30.237825>,  <31.575233, 32.939236, 29.977903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148132, 32.584087, 30.237825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806087, 32.406078, 30.344217>,  <31.600861, 32.299274, 30.408052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806087, 32.406078, 30.344217>,  <32.148132, 32.584087, 30.237825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806087, 32.406078, 30.344217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300923, -0.843803, -0.444344,
		0.422176, -0.299923, 0.855461,
		-0.855110, -0.445020, 0.265979,
		31.549555, 32.272572, 30.424011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394672, 31.981556, 30.545059>,  <32.148132, 32.584087, 30.237825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394672, 31.981556, 30.545059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023411, 31.935570, 30.403463>,  <31.800653, 31.907978, 30.318506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023411, 31.935570, 30.403463>,  <32.394672, 31.981556, 30.545059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023411, 31.935570, 30.403463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290817, -0.817571, -0.496994,
		-0.232274, -0.564234, 0.792268,
		-0.928156, -0.114966, -0.353989,
		31.744965, 31.901079, 30.297266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365871, 31.310904, 30.548895>,  <32.394672, 31.981556, 30.545059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365871, 31.310904, 30.548895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054020, 31.412943, 30.320126>,  <31.866909, 31.474167, 30.182863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054020, 31.412943, 30.320126>,  <32.365871, 31.310904, 30.548895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054020, 31.412943, 30.320126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228085, -0.734873, -0.638701,
		-0.583226, -0.628399, 0.514745,
		-0.779631, 0.255101, -0.571925,
		31.820131, 31.489473, 30.148548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999163, 30.722038, 30.475288>,  <32.365871, 31.310904, 30.548895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999163, 30.722038, 30.475288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911552, 30.953409, 30.160976>,  <31.858986, 31.092232, 29.972389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911552, 30.953409, 30.160976>,  <31.999163, 30.722038, 30.475288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911552, 30.953409, 30.160976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086166, -0.790721, -0.606083,
		-0.971907, -0.200456, 0.123349,
		-0.219028, 0.578428, -0.785779,
		31.845844, 31.126938, 29.925243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001480, 30.287354, 29.963181>,  <31.999163, 30.722038, 30.475288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001480, 30.287354, 29.963181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970161, 30.618324, 29.740744>,  <31.951370, 30.816906, 29.607281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970161, 30.618324, 29.740744>,  <32.001480, 30.287354, 29.963181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970161, 30.618324, 29.740744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135820, -0.543750, -0.828184,
		-0.987635, -0.140370, -0.069808,
		-0.078294, 0.827425, -0.556091,
		31.946672, 30.866552, 29.573915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506701, 30.135677, 29.296116>,  <32.001480, 30.287354, 29.963181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506701, 30.135677, 29.296116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762323, 30.433516, 29.218983>,  <31.915697, 30.612219, 29.172703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762323, 30.433516, 29.218983>,  <31.506701, 30.135677, 29.296116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762323, 30.433516, 29.218983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148471, -0.365412, -0.918929,
		-0.754693, 0.558618, -0.344070,
		0.639058, 0.744593, -0.192835,
		31.954041, 30.656893, 29.161133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344467, 30.336290, 28.618313>,  <31.506701, 30.135677, 29.296116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344467, 30.336290, 28.618313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709019, 30.481512, 28.695850>,  <31.927750, 30.568645, 28.742373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709019, 30.481512, 28.695850>,  <31.344467, 30.336290, 28.618313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709019, 30.481512, 28.695850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290375, -0.233449, -0.928000,
		-0.291662, 0.902049, -0.318183,
		0.911381, 0.363055, 0.193845,
		31.982433, 30.590429, 28.754004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525345, 30.689747, 28.033915>,  <31.344467, 30.336290, 28.618313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525345, 30.689747, 28.033915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859758, 30.604925, 28.236334>,  <32.060406, 30.554031, 28.357784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859758, 30.604925, 28.236334>,  <31.525345, 30.689747, 28.033915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859758, 30.604925, 28.236334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412441, -0.365382, -0.834499,
		0.361860, 0.906382, -0.218011,
		0.836032, -0.212055, 0.506046,
		32.110569, 30.541309, 28.388147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012218, 30.871536, 27.523046>,  <31.525345, 30.689747, 28.033915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012218, 30.871536, 27.523046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206200, 30.620722, 27.766897>,  <32.322590, 30.470234, 27.913208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206200, 30.620722, 27.766897>,  <32.012218, 30.871536, 27.523046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206200, 30.620722, 27.766897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501471, -0.371721, -0.781250,
		0.716483, 0.684579, 0.134174,
		0.484952, -0.627036, 0.609628,
		32.351685, 30.432611, 27.949785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717987, 30.848560, 27.338753>,  <32.012218, 30.871536, 27.523046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717987, 30.848560, 27.338753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669727, 30.503155, 27.534626>,  <32.640774, 30.295912, 27.652151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669727, 30.503155, 27.534626>,  <32.717987, 30.848560, 27.338753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669727, 30.503155, 27.534626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401483, -0.493588, -0.771480,
		0.907885, 0.103524, 0.406235,
		-0.120646, -0.863512, 0.489685,
		32.633533, 30.244101, 27.681532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332108, 30.456003, 27.176216>,  <32.717987, 30.848560, 27.338753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332108, 30.456003, 27.176216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125683, 30.164595, 27.356411>,  <33.001827, 29.989750, 27.464527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125683, 30.164595, 27.356411>,  <33.332108, 30.456003, 27.176216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125683, 30.164595, 27.356411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388512, -0.667803, -0.634900,
		0.763373, -0.152629, 0.627667,
		-0.516062, -0.728522, 0.450485,
		32.970863, 29.946037, 27.491556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789532, 29.927185, 27.392143>,  <33.332108, 30.456003, 27.176216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789532, 29.927185, 27.392143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425766, 29.772190, 27.331709>,  <33.207508, 29.679193, 27.295448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425766, 29.772190, 27.331709>,  <33.789532, 29.927185, 27.392143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425766, 29.772190, 27.331709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343097, -0.493641, -0.799127,
		0.235071, -0.778570, 0.581868,
		-0.909410, -0.387489, -0.151084,
		33.152943, 29.655943, 27.286385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943943, 29.188435, 27.229528>,  <33.789532, 29.927185, 27.392143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943943, 29.188435, 27.229528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578545, 29.277000, 27.092999>,  <33.359306, 29.330141, 27.011080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578545, 29.277000, 27.092999>,  <33.943943, 29.188435, 27.229528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578545, 29.277000, 27.092999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222355, -0.430866, -0.874593,
		-0.340712, -0.874832, 0.344362,
		-0.913496, 0.221413, -0.341324,
		33.304497, 29.343426, 26.990601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759323, 28.547089, 26.877378>,  <33.943943, 29.188435, 27.229528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759323, 28.547089, 26.877378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523083, 28.846224, 26.756100>,  <33.381340, 29.025705, 26.683332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523083, 28.846224, 26.756100>,  <33.759323, 28.547089, 26.877378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523083, 28.846224, 26.756100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104993, -0.301319, -0.947725,
		-0.800103, -0.591562, 0.099442,
		-0.590602, 0.747837, -0.303196,
		33.345901, 29.070576, 26.665140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528992, 28.271620, 26.296974>,  <33.759323, 28.547089, 26.877378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528992, 28.271620, 26.296974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462410, 28.663801, 26.255011>,  <33.422459, 28.899109, 26.229834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462410, 28.663801, 26.255011>,  <33.528992, 28.271620, 26.296974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462410, 28.663801, 26.255011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137789, -0.082219, -0.987043,
		-0.976374, -0.178755, -0.121409,
		-0.166457, 0.980452, -0.104907,
		33.412472, 28.957937, 26.223537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021179, 28.401077, 25.792505>,  <33.528992, 28.271620, 26.296974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021179, 28.401077, 25.792505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228382, 28.743227, 25.792059>,  <33.352703, 28.948517, 25.791792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228382, 28.743227, 25.792059>,  <33.021179, 28.401077, 25.792505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228382, 28.743227, 25.792059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227046, -0.138754, -0.963949,
		-0.824692, 0.499081, -0.266085,
		0.518009, 0.855374, -0.001115,
		33.383785, 28.999840, 25.791725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916203, 28.609056, 25.087059>,  <33.021179, 28.401077, 25.792505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916203, 28.609056, 25.087059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217239, 28.828613, 25.232563>,  <33.397861, 28.960348, 25.319864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217239, 28.828613, 25.232563>,  <32.916203, 28.609056, 25.087059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217239, 28.828613, 25.232563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393584, 0.067913, -0.916777,
		-0.527916, 0.833129, -0.164925,
		0.752593, 0.548893, 0.363759,
		33.443016, 28.993280, 25.341690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929649, 29.270088, 24.650234>,  <32.916203, 28.609056, 25.087059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929649, 29.270088, 24.650234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271069, 29.191292, 24.843168>,  <33.475922, 29.144014, 24.958929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271069, 29.191292, 24.843168>,  <32.929649, 29.270088, 24.650234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271069, 29.191292, 24.843168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514328, 0.170760, -0.840421,
		0.083191, 0.965420, 0.247069,
		0.853549, -0.196991, 0.482337,
		33.527134, 29.132195, 24.987869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449257, 29.853584, 24.494997>,  <32.929649, 29.270088, 24.650234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449257, 29.853584, 24.494997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660412, 29.529858, 24.598024>,  <33.787106, 29.335621, 24.659842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660412, 29.529858, 24.598024>,  <33.449257, 29.853584, 24.494997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660412, 29.529858, 24.598024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610385, 0.150639, -0.777649,
		0.590565, 0.567725, 0.573516,
		0.527885, -0.809318, 0.257569,
		33.818779, 29.287062, 24.675295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144497, 30.086662, 24.550406>,  <33.449257, 29.853584, 24.494997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144497, 30.086662, 24.550406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163559, 29.690960, 24.495119>,  <34.174995, 29.453539, 24.461946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163559, 29.690960, 24.495119>,  <34.144497, 30.086662, 24.550406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163559, 29.690960, 24.495119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672974, 0.134055, -0.727417,
		0.738129, -0.058351, 0.672132,
		0.047657, -0.989255, -0.138218,
		34.177856, 29.394184, 24.453653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746532, 30.099161, 24.426353>,  <34.144497, 30.086662, 24.550406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746532, 30.099161, 24.426353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624344, 29.743671, 24.289616>,  <34.551029, 29.530378, 24.207573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624344, 29.743671, 24.289616>,  <34.746532, 30.099161, 24.426353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624344, 29.743671, 24.289616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630616, 0.080166, -0.771943,
		0.713448, -0.451382, 0.535954,
		-0.305476, -0.888723, -0.341843,
		34.532700, 29.477055, 24.187063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304886, 29.805450, 24.328890>,  <34.746532, 30.099161, 24.426353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304886, 29.805450, 24.328890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043285, 29.606117, 24.101223>,  <34.886326, 29.486517, 23.964622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043285, 29.606117, 24.101223>,  <35.304886, 29.805450, 24.328890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043285, 29.606117, 24.101223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582741, 0.147896, -0.799087,
		0.482388, -0.854278, 0.193675,
		-0.653999, -0.498332, -0.569167,
		34.847084, 29.456617, 23.930473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740543, 29.341049, 24.001444>,  <35.304886, 29.805450, 24.328890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740543, 29.341049, 24.001444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410191, 29.400452, 23.783869>,  <35.211979, 29.436092, 23.653324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410191, 29.400452, 23.783869>,  <35.740543, 29.341049, 24.001444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410191, 29.400452, 23.783869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561754, 0.133655, -0.816436,
		-0.048547, -0.979838, -0.193808,
		-0.825879, 0.148508, -0.543939,
		35.162426, 29.445004, 23.620687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931435, 28.984161, 23.390291>,  <35.740543, 29.341049, 24.001444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931435, 28.984161, 23.390291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648636, 29.252302, 23.300156>,  <35.478954, 29.413187, 23.246075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648636, 29.252302, 23.300156>,  <35.931435, 28.984161, 23.390291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648636, 29.252302, 23.300156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338205, 0.040651, -0.940194,
		-0.621103, -0.740927, -0.255458,
		-0.707000, 0.670354, -0.225337,
		35.436535, 29.453409, 23.232555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775059, 28.869318, 22.752590>,  <35.931435, 28.984161, 23.390291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775059, 28.869318, 22.752590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641888, 29.245089, 22.785173>,  <35.561985, 29.470551, 22.804724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641888, 29.245089, 22.785173>,  <35.775059, 28.869318, 22.752590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641888, 29.245089, 22.785173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329223, 0.196757, -0.923525,
		-0.883612, -0.280651, -0.374787,
		-0.332930, 0.939426, 0.081460,
		35.542007, 29.526917, 22.809612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572231, 29.135330, 22.001200>,  <35.775059, 28.869318, 22.752590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572231, 29.135330, 22.001200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612991, 29.475658, 22.207390>,  <35.637447, 29.679855, 22.331104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612991, 29.475658, 22.207390>,  <35.572231, 29.135330, 22.001200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612991, 29.475658, 22.207390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236904, 0.482512, -0.843243,
		-0.966174, 0.208046, -0.152395,
		0.101901, 0.850823, 0.515477,
		35.643562, 29.730906, 22.362034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204651, 29.584669, 21.601068>,  <35.572231, 29.135330, 22.001200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204651, 29.584669, 21.601068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452423, 29.780466, 21.846571>,  <35.601086, 29.897945, 21.993872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452423, 29.780466, 21.846571>,  <35.204651, 29.584669, 21.601068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452423, 29.780466, 21.846571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378839, 0.498371, -0.779813,
		-0.687591, 0.715558, 0.123269,
		0.619435, 0.489493, 0.613756,
		35.638252, 29.927315, 22.030699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295876, 30.186213, 21.209091>,  <35.204651, 29.584669, 21.601068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295876, 30.186213, 21.209091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595760, 30.216494, 21.472057>,  <35.775692, 30.234661, 21.629837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595760, 30.216494, 21.472057>,  <35.295876, 30.186213, 21.209091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595760, 30.216494, 21.472057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459708, 0.655027, -0.599674,
		-0.476021, 0.751804, 0.456283,
		0.749715, 0.075700, 0.657417,
		35.820675, 30.239204, 21.669283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443989, 30.895548, 21.235788>,  <35.295876, 30.186213, 21.209091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443989, 30.895548, 21.235788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761814, 30.710178, 21.392712>,  <35.952511, 30.598957, 21.486866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761814, 30.710178, 21.392712>,  <35.443989, 30.895548, 21.235788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761814, 30.710178, 21.392712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606793, 0.629044, -0.485907,
		-0.021598, 0.624134, 0.781019,
		0.794567, -0.463422, 0.392306,
		36.000183, 30.571152, 21.510403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856396, 31.423246, 21.358072>,  <35.443989, 30.895548, 21.235788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856396, 31.423246, 21.358072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066322, 31.083370, 21.337683>,  <36.192276, 30.879444, 21.325449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066322, 31.083370, 21.337683>,  <35.856396, 31.423246, 21.358072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066322, 31.083370, 21.337683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603227, 0.413499, -0.682008,
		0.600575, 0.327176, 0.729566,
		0.524812, -0.849690, -0.050976,
		36.223766, 30.828463, 21.322390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601330, 31.609945, 21.345362>,  <35.856396, 31.423246, 21.358072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601330, 31.609945, 21.345362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599957, 31.245897, 21.179630>,  <36.599133, 31.027468, 21.080191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599957, 31.245897, 21.179630>,  <36.601330, 31.609945, 21.345362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599957, 31.245897, 21.179630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752725, 0.270415, -0.600233,
		0.658326, -0.313935, 0.684143,
		-0.003431, -0.910121, -0.414328,
		36.598927, 30.972860, 21.055332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328896, 31.434362, 21.359970>,  <36.601330, 31.609945, 21.345362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328896, 31.434362, 21.359970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131779, 31.226387, 21.080881>,  <37.013508, 31.101603, 20.913427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131779, 31.226387, 21.080881>,  <37.328896, 31.434362, 21.359970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131779, 31.226387, 21.080881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742018, 0.167716, -0.649062,
		0.454490, -0.837578, 0.303153,
		-0.492796, -0.519937, -0.697723,
		36.983940, 31.070406, 20.871565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863647, 30.969227, 21.115946>,  <37.328896, 31.434362, 21.359970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863647, 30.969227, 21.115946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563511, 31.015589, 20.855623>,  <37.383427, 31.043406, 20.699430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563511, 31.015589, 20.855623>,  <37.863647, 30.969227, 21.115946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563511, 31.015589, 20.855623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635645, 0.396796, -0.662199,
		0.181484, -0.910560, -0.371409,
		-0.750345, 0.115906, -0.650805,
		37.338406, 31.050360, 20.660381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199806, 30.915466, 20.475069>,  <37.863647, 30.969227, 21.115946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199806, 30.915466, 20.475069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841705, 31.057190, 20.367008>,  <37.626842, 31.142225, 20.302172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841705, 31.057190, 20.367008>,  <38.199806, 30.915466, 20.475069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841705, 31.057190, 20.367008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411186, 0.423485, -0.807209,
		-0.171598, -0.833741, -0.524815,
		-0.895254, 0.354312, -0.270154,
		37.573128, 31.163483, 20.285961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150208, 30.886988, 19.804443>,  <38.199806, 30.915466, 20.475069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150208, 30.886988, 19.804443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866982, 31.165588, 19.850965>,  <37.697044, 31.332748, 19.878880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866982, 31.165588, 19.850965>,  <38.150208, 30.886988, 19.804443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866982, 31.165588, 19.850965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451854, 0.573467, -0.683347,
		-0.542650, -0.431302, -0.720770,
		-0.708067, 0.696501, 0.116306,
		37.654560, 31.374538, 19.885857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812901, 31.029243, 19.149200>,  <38.150208, 30.886988, 19.804443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812901, 31.029243, 19.149200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788494, 31.353699, 19.381865>,  <37.773849, 31.548372, 19.521463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788494, 31.353699, 19.381865>,  <37.812901, 31.029243, 19.149200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788494, 31.353699, 19.381865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530336, 0.520032, -0.669560,
		-0.845589, 0.267621, -0.461908,
		-0.061019, 0.811139, 0.581662,
		37.770187, 31.597040, 19.556362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627220, 31.547657, 18.751108>,  <37.812901, 31.029243, 19.149200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627220, 31.547657, 18.751108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802700, 31.725620, 19.063416>,  <37.907990, 31.832397, 19.250801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802700, 31.725620, 19.063416>,  <37.627220, 31.547657, 18.751108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802700, 31.725620, 19.063416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622541, 0.476112, -0.621096,
		-0.648064, 0.758535, -0.068102,
		0.438699, 0.444906, 0.780770,
		37.934311, 31.859093, 19.297647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341984, 31.873806, 18.500948>,  <37.627220, 31.547657, 18.751108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341984, 31.873806, 18.500948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539047, 32.160637, 18.303732>,  <38.657284, 32.332737, 18.185402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539047, 32.160637, 18.303732>,  <38.341984, 31.873806, 18.500948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539047, 32.160637, 18.303732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516932, -0.696923, -0.497072,
		-0.700049, -0.009980, -0.714025,
		0.492659, 0.717077, -0.493039,
		38.686844, 32.375759, 18.155821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340591, 31.646387, 17.838604>,  <38.341984, 31.873806, 18.500948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340591, 31.646387, 17.838604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610554, 31.938686, 17.797598>,  <38.772530, 32.114067, 17.772993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610554, 31.938686, 17.797598>,  <38.340591, 31.646387, 17.838604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610554, 31.938686, 17.797598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507839, -0.560772, -0.653938,
		-0.535353, 0.389284, -0.749570,
		0.674905, 0.730749, -0.102517,
		38.813026, 32.157909, 17.766842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534874, 31.592173, 17.146471>,  <38.340591, 31.646387, 17.838604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534874, 31.592173, 17.146471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835358, 31.786762, 17.324919>,  <39.015648, 31.903517, 17.431988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835358, 31.786762, 17.324919>,  <38.534874, 31.592173, 17.146471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835358, 31.786762, 17.324919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651717, -0.653782, -0.384493,
		0.104619, 0.579580, -0.808172,
		0.751212, 0.486474, 0.446120,
		39.060722, 31.932705, 17.458755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052967, 31.847353, 16.624334>,  <38.534874, 31.592173, 17.146471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052967, 31.847353, 16.624334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178699, 31.765879, 16.995216>,  <39.254139, 31.716995, 17.217745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178699, 31.765879, 16.995216>,  <39.052967, 31.847353, 16.624334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178699, 31.765879, 16.995216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615724, -0.699660, -0.362436,
		0.722550, 0.684828, -0.094513,
		0.314333, -0.203684, 0.927204,
		39.272999, 31.704773, 17.273378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706139, 32.138855, 16.715887>,  <39.052967, 31.847353, 16.624334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706139, 32.138855, 16.715887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634106, 31.812410, 16.935535>,  <39.590885, 31.616545, 17.067324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634106, 31.812410, 16.935535>,  <39.706139, 32.138855, 16.715887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634106, 31.812410, 16.935535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761748, -0.468900, -0.447071,
		0.622342, 0.337782, 0.706111,
		-0.180083, -0.816110, 0.549121,
		39.580082, 31.567577, 17.100271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266251, 31.879690, 17.125536>,  <39.706139, 32.138855, 16.715887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266251, 31.879690, 17.125536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042896, 31.567331, 17.013536>,  <39.908882, 31.379915, 16.946337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042896, 31.567331, 17.013536>,  <40.266251, 31.879690, 17.125536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042896, 31.567331, 17.013536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795280, -0.407838, -0.448551,
		0.236078, -0.473144, 0.848765,
		-0.558387, -0.780899, -0.280001,
		39.875381, 31.333061, 16.929537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811630, 31.783695, 17.678827>,  <40.266251, 31.879690, 17.125536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811630, 31.783695, 17.678827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182953, 31.931765, 17.664904>,  <40.405746, 32.020607, 17.656549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182953, 31.931765, 17.664904>,  <39.811630, 31.783695, 17.678827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182953, 31.931765, 17.664904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311312, 0.825048, 0.471572,
		0.203282, -0.426929, 0.881140,
		0.928311, 0.370172, -0.034809,
		40.461445, 32.042816, 17.654461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883759, 31.829472, 18.335245>,  <39.811630, 31.783695, 17.678827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883759, 31.829472, 18.335245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196865, 31.815338, 18.583769>,  <40.384731, 31.806858, 18.732883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196865, 31.815338, 18.583769>,  <39.883759, 31.829472, 18.335245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196865, 31.815338, 18.583769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517269, 0.592013, -0.618024,
		-0.345984, 0.805154, 0.481687,
		0.782769, -0.035335, 0.621308,
		40.431694, 31.804737, 18.770161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117687, 32.512329, 17.981153>,  <39.883759, 31.829472, 18.335245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117687, 32.512329, 17.981153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794556, 32.357040, 17.803753>,  <39.600677, 32.263866, 17.697311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794556, 32.357040, 17.803753>,  <40.117687, 32.512329, 17.981153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794556, 32.357040, 17.803753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520804, 0.822483, 0.228661,
		0.276002, 0.415696, -0.866614,
		-0.807828, -0.388225, -0.443503,
		39.552208, 32.240574, 17.670702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724220, 33.069038, 17.705677>,  <40.117687, 32.512329, 17.981153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724220, 33.069038, 17.705677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450863, 32.777439, 17.721321>,  <39.286850, 32.602478, 17.730707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450863, 32.777439, 17.721321>,  <39.724220, 33.069038, 17.705677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450863, 32.777439, 17.721321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638967, 0.623186, 0.450955,
		-0.353121, 0.283189, -0.891689,
		-0.683394, -0.729002, 0.039112,
		39.245846, 32.558739, 17.733055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066261, 33.272507, 17.388954>,  <39.724220, 33.069038, 17.705677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066261, 33.272507, 17.388954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975174, 32.988514, 17.655508>,  <38.920521, 32.818119, 17.815441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975174, 32.988514, 17.655508>,  <39.066261, 33.272507, 17.388954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975174, 32.988514, 17.655508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780697, 0.542131, 0.310816,
		-0.581942, -0.449465, -0.677735,
		-0.227720, -0.709983, 0.666385,
		38.906857, 32.775520, 17.855423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422932, 33.305481, 17.346294>,  <39.066261, 33.272507, 17.388954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422932, 33.305481, 17.346294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490517, 33.119812, 17.694086>,  <38.531067, 33.008411, 17.902761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490517, 33.119812, 17.694086>,  <38.422932, 33.305481, 17.346294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490517, 33.119812, 17.694086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752270, 0.509243, 0.418046,
		-0.636821, -0.724719, -0.263137,
		0.168965, -0.464171, 0.869481,
		38.541206, 32.980560, 17.954929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696095, 33.098194, 17.593639>,  <38.422932, 33.305481, 17.346294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696095, 33.098194, 17.593639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956516, 33.112061, 17.896935>,  <38.112770, 33.120380, 18.078913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956516, 33.112061, 17.896935>,  <37.696095, 33.098194, 17.593639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956516, 33.112061, 17.896935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660417, 0.518269, 0.543365,
		-0.374135, -0.854514, 0.360316,
		0.651054, 0.034667, 0.758239,
		38.151833, 33.122459, 18.124407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355839, 33.087849, 18.082478>,  <37.696095, 33.098194, 17.593639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355839, 33.087849, 18.082478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686218, 33.249004, 18.240210>,  <37.884445, 33.345699, 18.334848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686218, 33.249004, 18.240210>,  <37.355839, 33.087849, 18.082478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686218, 33.249004, 18.240210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559077, 0.495495, 0.664768,
		0.072441, -0.769522, 0.634498,
		0.825945, 0.402890, 0.394329,
		37.934002, 33.369873, 18.358507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166115, 33.144440, 18.770430>,  <37.355839, 33.087849, 18.082478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166115, 33.144440, 18.770430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501564, 33.359856, 18.737724>,  <37.702831, 33.489105, 18.718102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501564, 33.359856, 18.737724>,  <37.166115, 33.144440, 18.770430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501564, 33.359856, 18.737724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247353, 0.510236, 0.823696,
		0.485308, -0.670549, 0.561106,
		0.838626, 0.538538, -0.081760,
		37.753151, 33.521420, 18.713196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323727, 33.154774, 19.483715>,  <37.166115, 33.144440, 18.770430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323727, 33.154774, 19.483715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492573, 33.460506, 19.288734>,  <37.593880, 33.643948, 19.171745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492573, 33.460506, 19.288734>,  <37.323727, 33.154774, 19.483715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492573, 33.460506, 19.288734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122156, 0.580760, 0.804858,
		0.898272, -0.280201, 0.338518,
		0.422120, 0.764333, -0.487452,
		37.619209, 33.689808, 19.142498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887474, 33.372211, 19.874166>,  <37.323727, 33.154774, 19.483715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887474, 33.372211, 19.874166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815411, 33.682858, 19.632700>,  <37.772171, 33.869244, 19.487820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815411, 33.682858, 19.632700>,  <37.887474, 33.372211, 19.874166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815411, 33.682858, 19.632700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255582, 0.555671, 0.791144,
		0.949853, 0.296818, 0.098379,
		-0.180159, 0.776614, -0.603667,
		37.761364, 33.915840, 19.451599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227245, 33.915730, 20.289608>,  <37.887474, 33.372211, 19.874166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227245, 33.915730, 20.289608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973019, 34.067142, 20.020454>,  <37.820484, 34.157990, 19.858963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973019, 34.067142, 20.020454>,  <38.227245, 33.915730, 20.289608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973019, 34.067142, 20.020454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438204, 0.540696, 0.718071,
		0.635636, 0.751241, -0.177775,
		-0.635566, 0.378529, -0.672882,
		37.782349, 34.180702, 19.818590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145992, 34.661224, 20.403708>,  <38.227245, 33.915730, 20.289608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145992, 34.661224, 20.403708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804440, 34.554024, 20.225243>,  <37.599506, 34.489704, 20.118164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804440, 34.554024, 20.225243>,  <38.145992, 34.661224, 20.403708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804440, 34.554024, 20.225243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520412, 0.426915, 0.739537,
		-0.007725, 0.863665, -0.504007,
		-0.853880, -0.268004, -0.446164,
		37.548275, 34.473621, 20.091393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742390, 35.216793, 20.397852>,  <38.145992, 34.661224, 20.403708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742390, 35.216793, 20.397852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482933, 34.916557, 20.347458>,  <37.327259, 34.736416, 20.317221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482933, 34.916557, 20.347458>,  <37.742390, 35.216793, 20.397852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482933, 34.916557, 20.347458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605661, 0.408810, 0.682678,
		-0.460910, 0.519118, -0.719777,
		-0.648643, -0.750593, -0.125985,
		37.288342, 34.691380, 20.309662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055752, 35.567917, 20.407221>,  <37.742390, 35.216793, 20.397852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055752, 35.567917, 20.407221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987843, 35.179443, 20.474138>,  <36.947098, 34.946362, 20.514288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987843, 35.179443, 20.474138>,  <37.055752, 35.567917, 20.407221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987843, 35.179443, 20.474138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446218, 0.227114, 0.865627,
		-0.878673, 0.072314, -0.471916,
		-0.169776, -0.971180, 0.167291,
		36.936909, 34.888088, 20.524326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296501, 35.493752, 20.598265>,  <37.055752, 35.567917, 20.407221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296501, 35.493752, 20.598265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504314, 35.180073, 20.733980>,  <36.629002, 34.991863, 20.815409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504314, 35.180073, 20.733980>,  <36.296501, 35.493752, 20.598265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504314, 35.180073, 20.733980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449105, 0.087193, 0.889215,
		-0.726906, -0.614352, -0.306888,
		0.519532, -0.784200, 0.339289,
		36.660175, 34.944813, 20.835768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836571, 34.984913, 20.878857>,  <36.296501, 35.493752, 20.598265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836571, 34.984913, 20.878857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177464, 34.891838, 21.066286>,  <36.382000, 34.835991, 21.178743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177464, 34.891838, 21.066286>,  <35.836571, 34.984913, 20.878857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177464, 34.891838, 21.066286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501852, -0.110540, 0.857861,
		-0.147828, -0.966246, -0.210986,
		0.852227, -0.232699, 0.468571,
		36.433132, 34.822033, 21.206858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637363, 34.403984, 21.258507>,  <35.836571, 34.984913, 20.878857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637363, 34.403984, 21.258507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973949, 34.529602, 21.434372>,  <36.175903, 34.604973, 21.539890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973949, 34.529602, 21.434372>,  <35.637363, 34.403984, 21.258507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973949, 34.529602, 21.434372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381254, -0.231471, 0.895023,
		0.382851, -0.920757, -0.075043,
		0.841469, 0.314050, 0.439662,
		36.226391, 34.623817, 21.566271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711563, 33.927746, 21.866774>,  <35.637363, 34.403984, 21.258507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711563, 33.927746, 21.866774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930428, 34.251667, 21.951477>,  <36.061745, 34.446018, 22.002300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930428, 34.251667, 21.951477>,  <35.711563, 33.927746, 21.866774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930428, 34.251667, 21.951477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270197, -0.068567, 0.960360,
		0.792220, -0.582685, 0.181289,
		0.547157, 0.809800, 0.211760,
		36.094574, 34.494606, 22.015005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016434, 33.795967, 22.440392>,  <35.711563, 33.927746, 21.866774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016434, 33.795967, 22.440392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000561, 34.195618, 22.435295>,  <35.991035, 34.435410, 22.432238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000561, 34.195618, 22.435295>,  <36.016434, 33.795967, 22.440392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000561, 34.195618, 22.435295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376950, -0.003160, 0.926228,
		0.925383, 0.041558, 0.376748,
		-0.039682, 0.999131, -0.012741,
		35.988655, 34.495358, 22.431473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327396, 34.000671, 23.054499>,  <36.016434, 33.795967, 22.440392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327396, 34.000671, 23.054499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096893, 34.307877, 22.942719>,  <35.958591, 34.492199, 22.875650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096893, 34.307877, 22.942719>,  <36.327396, 34.000671, 23.054499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096893, 34.307877, 22.942719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376665, 0.053875, 0.924782,
		0.725297, 0.638168, 0.258237,
		-0.576253, 0.768010, -0.279451,
		35.924019, 34.538280, 22.858883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269115, 34.329479, 23.708076>,  <36.327396, 34.000671, 23.054499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269115, 34.329479, 23.708076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992210, 34.516724, 23.488390>,  <35.826065, 34.629070, 23.356579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992210, 34.516724, 23.488390>,  <36.269115, 34.329479, 23.708076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992210, 34.516724, 23.488390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506404, 0.227090, 0.831857,
		0.514123, 0.853992, 0.079847,
		-0.692266, 0.468111, -0.549217,
		35.784531, 34.657158, 23.323626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147327, 35.051777, 23.954288>,  <36.269115, 34.329479, 23.708076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147327, 35.051777, 23.954288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821995, 34.922565, 23.760736>,  <35.626797, 34.845039, 23.644606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821995, 34.922565, 23.760736>,  <36.147327, 35.051777, 23.954288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821995, 34.922565, 23.760736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578698, 0.363421, 0.730092,
		-0.059992, 0.873828, -0.482520,
		-0.813332, -0.323033, -0.483880,
		35.577995, 34.825657, 23.615572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695904, 35.629818, 24.036530>,  <36.147327, 35.051777, 23.954288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695904, 35.629818, 24.036530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468433, 35.307346, 23.971182>,  <35.331951, 35.113865, 23.931974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468433, 35.307346, 23.971182>,  <35.695904, 35.629818, 24.036530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468433, 35.307346, 23.971182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644782, 0.313568, 0.697088,
		-0.510748, 0.501753, -0.698126,
		-0.568676, -0.806175, -0.163367,
		35.297832, 35.065495, 23.922173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965008, 35.876484, 24.109680>,  <35.695904, 35.629818, 24.036530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965008, 35.876484, 24.109680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918762, 35.481045, 24.148252>,  <34.891014, 35.243782, 24.171396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918762, 35.481045, 24.148252>,  <34.965008, 35.876484, 24.109680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918762, 35.481045, 24.148252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742575, 0.150502, 0.652634,
		-0.659709, 0.003844, -0.751512,
		-0.115613, -0.988602, 0.096433,
		34.884079, 35.184464, 24.177183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201824, 35.713272, 24.009346>,  <34.965008, 35.876484, 24.109680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201824, 35.713272, 24.009346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369007, 35.410622, 24.210470>,  <34.469318, 35.229031, 24.331144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369007, 35.410622, 24.210470>,  <34.201824, 35.713272, 24.009346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369007, 35.410622, 24.210470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757340, 0.015484, 0.652838,
		-0.501742, -0.653659, -0.566554,
		0.417961, -0.756630, 0.502811,
		34.494396, 35.183632, 24.361313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556419, 35.253498, 24.218662>,  <34.201824, 35.713272, 24.009346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556419, 35.253498, 24.218662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865673, 35.126640, 24.438362>,  <34.051228, 35.050526, 24.570183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865673, 35.126640, 24.438362>,  <33.556419, 35.253498, 24.218662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865673, 35.126640, 24.438362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624706, -0.231218, 0.745842,
		-0.109545, -0.919759, -0.376887,
		0.773138, -0.317147, 0.549250,
		34.097614, 35.031494, 24.603136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245380, 34.638817, 24.588924>,  <33.556419, 35.253498, 24.218662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245380, 34.638817, 24.588924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577576, 34.750305, 24.781843>,  <33.776894, 34.817200, 24.897594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577576, 34.750305, 24.781843>,  <33.245380, 34.638817, 24.588924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577576, 34.750305, 24.781843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441459, -0.198708, 0.875002,
		0.339719, -0.939590, -0.041979,
		0.830485, 0.278723, 0.482296,
		33.826721, 34.833923, 24.926533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494347, 34.085266, 24.998608>,  <33.245380, 34.638817, 24.588924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494347, 34.085266, 24.998608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656113, 34.408230, 25.170439>,  <33.753174, 34.602009, 25.273537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656113, 34.408230, 25.170439>,  <33.494347, 34.085266, 24.998608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656113, 34.408230, 25.170439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422472, -0.251661, 0.870738,
		0.811150, -0.533626, 0.239332,
		0.404417, 0.807410, 0.429577,
		33.777439, 34.650452, 25.299313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705269, 33.782272, 25.649483>,  <33.494347, 34.085266, 24.998608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705269, 33.782272, 25.649483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675011, 34.180042, 25.678886>,  <33.656857, 34.418705, 25.696529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675011, 34.180042, 25.678886>,  <33.705269, 33.782272, 25.649483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675011, 34.180042, 25.678886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534337, -0.102668, 0.839013,
		0.841880, 0.024185, 0.539122,
		-0.075642, 0.994422, 0.073511,
		33.652317, 34.478371, 25.700939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946781, 34.017220, 26.359991>,  <33.705269, 33.782272, 25.649483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946781, 34.017220, 26.359991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698517, 34.292904, 26.210453>,  <33.549557, 34.458317, 26.120729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698517, 34.292904, 26.210453>,  <33.946781, 34.017220, 26.359991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698517, 34.292904, 26.210453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509976, 0.007315, 0.860158,
		0.595566, 0.724522, 0.346941,
		-0.620665, 0.689213, -0.373845,
		33.512318, 34.499668, 26.098299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862221, 34.482304, 26.907667>,  <33.946781, 34.017220, 26.359991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862221, 34.482304, 26.907667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574570, 34.596050, 26.654055>,  <33.401981, 34.664299, 26.501888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574570, 34.596050, 26.654055>,  <33.862221, 34.482304, 26.907667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574570, 34.596050, 26.654055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640792, 0.081548, 0.763371,
		0.268784, 0.955240, 0.123578,
		-0.719125, 0.284370, -0.634029,
		33.358833, 34.681362, 26.463846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575993, 35.106689, 27.209269>,  <33.862221, 34.482304, 26.907667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575993, 35.106689, 27.209269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299522, 34.962379, 26.958790>,  <33.133640, 34.875793, 26.808502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299522, 34.962379, 26.958790>,  <33.575993, 35.106689, 27.209269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299522, 34.962379, 26.958790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720257, 0.272859, 0.637791,
		-0.059236, 0.891846, -0.448444,
		-0.691173, -0.360775, -0.626195,
		33.092171, 34.854145, 26.770931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138935, 35.647884, 27.017086>,  <33.575993, 35.106689, 27.209269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138935, 35.647884, 27.017086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940250, 35.306313, 26.955000>,  <32.821041, 35.101372, 26.917747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940250, 35.306313, 26.955000>,  <33.138935, 35.647884, 27.017086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940250, 35.306313, 26.955000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645325, 0.243775, 0.723967,
		-0.580376, 0.459766, -0.672145,
		-0.496708, -0.853925, -0.155218,
		32.791237, 35.050137, 26.908434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383938, 35.802876, 26.888418>,  <33.138935, 35.647884, 27.017086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383938, 35.802876, 26.888418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357433, 35.417683, 26.992929>,  <32.341530, 35.186565, 27.055635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357433, 35.417683, 26.992929>,  <32.383938, 35.802876, 26.888418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357433, 35.417683, 26.992929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603747, 0.247174, 0.757888,
		-0.794417, -0.107525, -0.597779,
		-0.066263, -0.962986, 0.261277,
		32.337555, 35.128788, 27.071312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626038, 35.671978, 27.168179>,  <32.383938, 35.802876, 26.888418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626038, 35.671978, 27.168179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869629, 35.393105, 27.319481>,  <32.015785, 35.225780, 27.410263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869629, 35.393105, 27.319481>,  <31.626038, 35.671978, 27.168179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869629, 35.393105, 27.319481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291155, 0.247111, 0.924210,
		-0.737818, -0.672954, -0.052504,
		0.608977, -0.697186, 0.378257,
		32.052322, 35.183949, 27.432959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320063, 35.497807, 27.740179>,  <31.626038, 35.671978, 27.168179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320063, 35.497807, 27.740179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678410, 35.334938, 27.811319>,  <31.893417, 35.237217, 27.854004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678410, 35.334938, 27.811319>,  <31.320063, 35.497807, 27.740179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678410, 35.334938, 27.811319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140161, 0.120868, 0.982724,
		-0.421634, -0.905319, 0.051212,
		0.895868, -0.407172, 0.177852,
		31.947170, 35.212788, 27.864676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191624, 35.014969, 28.207767>,  <31.320063, 35.497807, 27.740179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191624, 35.014969, 28.207767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586994, 35.070263, 28.232765>,  <31.824217, 35.103439, 28.247765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586994, 35.070263, 28.232765>,  <31.191624, 35.014969, 28.207767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586994, 35.070263, 28.232765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088697, 0.192369, 0.977306,
		0.123076, -0.971537, 0.202404,
		0.988426, 0.138236, 0.062497,
		31.883522, 35.111736, 28.251514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339607, 34.626194, 28.841385>,  <31.191624, 35.014969, 28.207767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339607, 34.626194, 28.841385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647125, 34.870571, 28.765799>,  <31.831636, 35.017197, 28.720448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647125, 34.870571, 28.765799>,  <31.339607, 34.626194, 28.841385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647125, 34.870571, 28.765799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048551, 0.238877, 0.969836,
		0.637650, -0.754779, 0.153985,
		0.768795, 0.610940, -0.188965,
		31.877764, 35.053852, 28.709108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695824, 34.461391, 29.350050>,  <31.339607, 34.626194, 28.841385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695824, 34.461391, 29.350050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850492, 34.809441, 29.227823>,  <31.943295, 35.018269, 29.154488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850492, 34.809441, 29.227823>,  <31.695824, 34.461391, 29.350050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850492, 34.809441, 29.227823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084452, 0.296538, 0.951280,
		0.918342, -0.393640, 0.041180,
		0.386673, 0.870122, -0.305567,
		31.966494, 35.070477, 29.136152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275677, 34.721043, 29.823076>,  <31.695824, 34.461391, 29.350050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275677, 34.721043, 29.823076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170414, 35.065269, 29.648643>,  <32.107254, 35.271805, 29.543983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170414, 35.065269, 29.648643>,  <32.275677, 34.721043, 29.823076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170414, 35.065269, 29.648643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099015, 0.425536, 0.899508,
		0.959657, 0.279894, -0.026775,
		-0.263161, 0.860569, -0.436083,
		32.091465, 35.323441, 29.517818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658031, 35.231960, 30.111534>,  <32.275677, 34.721043, 29.823076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658031, 35.231960, 30.111534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365059, 35.457104, 29.958311>,  <32.189274, 35.592190, 29.866377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365059, 35.457104, 29.958311>,  <32.658031, 35.231960, 30.111534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365059, 35.457104, 29.958311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211584, 0.346593, 0.913841,
		0.647124, 0.750379, -0.134766,
		-0.732436, 0.562854, -0.383057,
		32.145329, 35.625961, 29.843393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686230, 35.924576, 30.403362>,  <32.658031, 35.231960, 30.111534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686230, 35.924576, 30.403362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302612, 35.894367, 30.294163>,  <32.072441, 35.876244, 30.228643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302612, 35.894367, 30.294163>,  <32.686230, 35.924576, 30.403362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302612, 35.894367, 30.294163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281359, 0.142812, 0.948916,
		-0.032676, 0.986864, -0.158211,
		-0.959046, -0.075521, -0.272997,
		32.014900, 35.871712, 30.212263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381481, 35.796738, 30.756653>,  <32.686230, 35.924576, 30.403362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381481, 35.796738, 30.756653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611370, 36.081905, 30.917372>,  <33.749302, 36.253006, 31.013803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611370, 36.081905, 30.917372>,  <33.381481, 35.796738, 30.756653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611370, 36.081905, 30.917372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675265, -0.135779, -0.724969,
		-0.462290, 0.687974, -0.559446,
		0.574721, 0.712921, 0.401795,
		33.783787, 36.295780, 31.037910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529404, 36.297756, 30.237738>,  <33.381481, 35.796738, 30.756653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529404, 36.297756, 30.237738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835155, 36.359924, 30.488041>,  <34.018604, 36.397224, 30.638224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835155, 36.359924, 30.488041>,  <33.529404, 36.297756, 30.237738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835155, 36.359924, 30.488041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626216, 0.052210, -0.777900,
		-0.153574, 0.986468, -0.057419,
		0.764375, 0.155422, 0.625760,
		34.064468, 36.406551, 30.675768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897038, 36.852360, 29.988106>,  <33.529404, 36.297756, 30.237738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897038, 36.852360, 29.988106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190845, 36.692596, 30.207544>,  <34.367130, 36.596741, 30.339209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190845, 36.692596, 30.207544>,  <33.897038, 36.852360, 29.988106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190845, 36.692596, 30.207544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665685, 0.267189, -0.696759,
		0.131709, 0.876976, 0.462133,
		0.734518, -0.399404, 0.548598,
		34.411201, 36.572777, 30.372124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539749, 37.291157, 29.940727>,  <33.897038, 36.852360, 29.988106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539749, 37.291157, 29.940727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688854, 36.945267, 30.075371>,  <34.778316, 36.737732, 30.156157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688854, 36.945267, 30.075371>,  <34.539749, 37.291157, 29.940727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688854, 36.945267, 30.075371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686250, 0.012726, -0.727255,
		0.624589, 0.502090, 0.598159,
		0.372760, -0.864722, 0.336610,
		34.800682, 36.685852, 30.176353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246822, 37.331928, 29.978338>,  <34.539749, 37.291157, 29.940727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246822, 37.331928, 29.978338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177643, 36.938335, 29.961075>,  <35.136135, 36.702179, 29.950718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177643, 36.938335, 29.961075>,  <35.246822, 37.331928, 29.978338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177643, 36.938335, 29.961075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583591, -0.067081, -0.809272,
		0.793416, -0.165151, 0.585846,
		-0.172951, -0.983984, -0.043157,
		35.125759, 36.643139, 29.948128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950970, 37.028313, 29.843525>,  <35.246822, 37.331928, 29.978338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950970, 37.028313, 29.843525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673107, 36.754688, 29.754520>,  <35.506390, 36.590515, 29.701118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673107, 36.754688, 29.754520>,  <35.950970, 37.028313, 29.843525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673107, 36.754688, 29.754520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500071, -0.236876, -0.832958,
		0.517083, -0.689894, 0.506627,
		-0.694661, -0.684058, -0.222512,
		35.464710, 36.549469, 29.687767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241371, 36.378986, 29.776936>,  <35.950970, 37.028313, 29.843525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241371, 36.378986, 29.776936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907204, 36.369232, 29.557308>,  <35.706703, 36.363380, 29.425533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907204, 36.369232, 29.557308>,  <36.241371, 36.378986, 29.776936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907204, 36.369232, 29.557308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546099, -0.149527, -0.824268,
		-0.061997, -0.988457, 0.138237,
		-0.835423, -0.024389, -0.549066,
		35.656578, 36.361916, 29.392588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322567, 35.772335, 29.381952>,  <36.241371, 36.378986, 29.776936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322567, 35.772335, 29.381952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046917, 35.965302, 29.165665>,  <35.881527, 36.081081, 29.035892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046917, 35.965302, 29.165665>,  <36.322567, 35.772335, 29.381952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046917, 35.965302, 29.165665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498893, -0.225332, -0.836858,
		-0.525558, -0.846461, -0.085393,
		-0.689126, 0.482419, -0.540719,
		35.840179, 36.110027, 29.003448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200752, 35.350891, 28.755117>,  <36.322567, 35.772335, 29.381952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200752, 35.350891, 28.755117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046860, 35.708855, 28.664682>,  <35.954525, 35.923634, 28.610420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046860, 35.708855, 28.664682>,  <36.200752, 35.350891, 28.755117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046860, 35.708855, 28.664682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398524, -0.059887, -0.915201,
		-0.832565, -0.442204, -0.333604,
		-0.384727, 0.894913, -0.226089,
		35.931442, 35.977329, 28.596855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817966, 35.321590, 28.132248>,  <36.200752, 35.350891, 28.755117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817966, 35.321590, 28.132248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904160, 35.712132, 28.125292>,  <35.955875, 35.946457, 28.121119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904160, 35.712132, 28.125292>,  <35.817966, 35.321590, 28.132248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904160, 35.712132, 28.125292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349768, -0.093796, -0.932129,
		-0.911719, 0.194772, -0.361708,
		0.215479, 0.976354, -0.017391,
		35.968803, 36.005039, 28.120075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770828, 35.522926, 27.365664>,  <35.817966, 35.321590, 28.132248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770828, 35.522926, 27.365664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959789, 35.822933, 27.550835>,  <36.073166, 36.002937, 27.661938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959789, 35.822933, 27.550835>,  <35.770828, 35.522926, 27.365664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959789, 35.822933, 27.550835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462883, 0.235843, -0.854469,
		-0.750047, 0.617938, -0.235758,
		0.472407, 0.750021, 0.462926,
		36.101513, 36.047939, 27.689713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793804, 36.106304, 26.898905>,  <35.770828, 35.522926, 27.365664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793804, 36.106304, 26.898905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083569, 36.227680, 27.146502>,  <36.257427, 36.300507, 27.295059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083569, 36.227680, 27.146502>,  <35.793804, 36.106304, 26.898905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083569, 36.227680, 27.146502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570093, 0.241141, -0.785395,
		-0.387585, 0.921832, 0.001696,
		0.724412, 0.303440, 0.618993,
		36.300892, 36.318714, 27.332199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077492, 36.787865, 26.714474>,  <35.793804, 36.106304, 26.898905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077492, 36.787865, 26.714474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366627, 36.617649, 26.932251>,  <36.540108, 36.515518, 27.062918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366627, 36.617649, 26.932251>,  <36.077492, 36.787865, 26.714474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366627, 36.617649, 26.932251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680893, 0.304247, -0.666197,
		0.117847, 0.852262, 0.509668,
		0.722839, -0.425539, 0.544444,
		36.583477, 36.489986, 27.095585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606472, 37.274918, 26.746378>,  <36.077492, 36.787865, 26.714474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606472, 37.274918, 26.746378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762154, 36.908772, 26.787619>,  <36.855560, 36.689083, 26.812363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762154, 36.908772, 26.787619>,  <36.606472, 37.274918, 26.746378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762154, 36.908772, 26.787619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622321, 0.178765, -0.762075,
		0.679145, 0.360765, 0.639227,
		0.389201, -0.915364, 0.103104,
		36.878914, 36.634163, 26.818550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198830, 37.402473, 26.614353>,  <36.606472, 37.274918, 26.746378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198830, 37.402473, 26.614353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209332, 37.003044, 26.595724>,  <37.215633, 36.763386, 26.584547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209332, 37.003044, 26.595724>,  <37.198830, 37.402473, 26.614353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209332, 37.003044, 26.595724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665236, 0.052227, -0.744804,
		0.746171, -0.011429, 0.665656,
		0.026253, -0.998570, -0.046573,
		37.217209, 36.703472, 26.581753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937691, 37.081017, 26.684782>,  <37.198830, 37.402473, 26.614353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937691, 37.081017, 26.684782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696083, 36.845303, 26.470156>,  <37.551117, 36.703876, 26.341379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696083, 36.845303, 26.470156>,  <37.937691, 37.081017, 26.684782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696083, 36.845303, 26.470156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622539, 0.071489, -0.779316,
		0.497595, -0.804759, 0.323670,
		-0.604023, -0.589282, -0.536566,
		37.514877, 36.668518, 26.309185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378223, 36.559227, 26.244204>,  <37.937691, 37.081017, 26.684782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378223, 36.559227, 26.244204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011581, 36.530979, 26.086803>,  <37.791595, 36.514030, 25.992363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011581, 36.530979, 26.086803>,  <38.378223, 36.559227, 26.244204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011581, 36.530979, 26.086803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387816, -0.396152, -0.832263,
		-0.097108, -0.915465, 0.390505,
		-0.916607, -0.070624, -0.393502,
		37.736599, 36.509792, 25.968754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401245, 35.978874, 25.810593>,  <38.378223, 36.559227, 26.244204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401245, 35.978874, 25.810593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055824, 36.131321, 25.678516>,  <37.848572, 36.222790, 25.599272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055824, 36.131321, 25.678516>,  <38.401245, 35.978874, 25.810593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055824, 36.131321, 25.678516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181354, -0.376258, -0.908593,
		-0.470516, -0.844500, 0.255802,
		-0.863554, 0.381117, -0.330189,
		37.796757, 36.245655, 25.579460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041073, 35.414162, 25.435886>,  <38.401245, 35.978874, 25.810593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041073, 35.414162, 25.435886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865582, 35.742218, 25.288980>,  <37.760288, 35.939053, 25.200836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865582, 35.742218, 25.288980>,  <38.041073, 35.414162, 25.435886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865582, 35.742218, 25.288980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022305, -0.398634, -0.916839,
		-0.898342, -0.410436, 0.156599,
		-0.438729, 0.820142, -0.367264,
		37.733963, 35.988262, 25.178801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537670, 35.137180, 24.984310>,  <38.041073, 35.414162, 25.435886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537670, 35.137180, 24.984310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629948, 35.510788, 24.875221>,  <37.685314, 35.734955, 24.809767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629948, 35.510788, 24.875221>,  <37.537670, 35.137180, 24.984310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629948, 35.510788, 24.875221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407884, -0.347301, -0.844401,
		-0.883407, 0.083562, -0.461095,
		0.230698, 0.934023, -0.272725,
		37.699158, 35.790997, 24.793404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183640, 35.274155, 24.387869>,  <37.537670, 35.137180, 24.984310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183640, 35.274155, 24.387869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498482, 35.520748, 24.379776>,  <37.687386, 35.668705, 24.374920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498482, 35.520748, 24.379776>,  <37.183640, 35.274155, 24.387869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498482, 35.520748, 24.379776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246448, -0.344389, -0.905903,
		-0.565444, 0.708055, -0.423002,
		0.787107, 0.616485, -0.020234,
		37.734615, 35.705692, 24.373707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127312, 35.648052, 23.802887>,  <37.183640, 35.274155, 24.387869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127312, 35.648052, 23.802887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515278, 35.639584, 23.899893>,  <37.748058, 35.634502, 23.958096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515278, 35.639584, 23.899893>,  <37.127312, 35.648052, 23.802887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515278, 35.639584, 23.899893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233153, -0.205699, -0.950435,
		0.070008, 0.978386, -0.194575,
		0.969917, -0.021172, 0.242515,
		37.806252, 35.633232, 23.972647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470116, 36.078251, 23.296946>,  <37.127312, 35.648052, 23.802887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470116, 36.078251, 23.296946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755505, 35.837719, 23.440809>,  <37.926739, 35.693401, 23.527128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755505, 35.837719, 23.440809>,  <37.470116, 36.078251, 23.296946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755505, 35.837719, 23.440809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337448, -0.154962, -0.928502,
		0.614069, 0.783830, 0.092356,
		0.713476, -0.601330, 0.359660,
		37.969547, 35.657322, 23.548708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178101, 36.320438, 22.911005>,  <37.470116, 36.078251, 23.296946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178101, 36.320438, 22.911005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213657, 35.959072, 23.078789>,  <38.234993, 35.742252, 23.179459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213657, 35.959072, 23.078789>,  <38.178101, 36.320438, 22.911005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213657, 35.959072, 23.078789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602549, -0.286552, -0.744864,
		0.793116, 0.318960, 0.518876,
		0.088896, -0.903412, 0.419458,
		38.240326, 35.688049, 23.204626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887726, 36.209599, 22.912647>,  <38.178101, 36.320438, 22.911005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887726, 36.209599, 22.912647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711193, 35.850693, 22.917526>,  <38.605274, 35.635349, 22.920454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711193, 35.850693, 22.917526>,  <38.887726, 36.209599, 22.912647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711193, 35.850693, 22.917526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662379, -0.334909, -0.670143,
		0.605380, -0.287671, 0.742132,
		-0.441327, -0.897263, 0.012200,
		38.578796, 35.581512, 22.921186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481873, 35.655529, 22.815842>,  <38.887726, 36.209599, 22.912647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481873, 35.655529, 22.815842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131222, 35.483631, 22.729273>,  <38.920830, 35.380493, 22.677332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131222, 35.483631, 22.729273>,  <39.481873, 35.655529, 22.815842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131222, 35.483631, 22.729273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467295, -0.653158, -0.595835,
		0.114698, -0.623461, 0.773395,
		-0.876630, -0.429745, -0.216424,
		38.868233, 35.354706, 22.664345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527740, 34.966148, 22.900824>,  <39.481873, 35.655529, 22.815842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527740, 34.966148, 22.900824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221764, 34.996037, 22.644924>,  <39.038177, 35.013969, 22.491385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221764, 34.996037, 22.644924>,  <39.527740, 34.966148, 22.900824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221764, 34.996037, 22.644924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394789, -0.730407, -0.557358,
		-0.508922, -0.678913, 0.529222,
		-0.764944, 0.074721, -0.639748,
		38.992279, 35.018452, 22.452999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389774, 34.314915, 22.753017>,  <39.527740, 34.966148, 22.900824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389774, 34.314915, 22.753017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216911, 34.507538, 22.448034>,  <39.113194, 34.623112, 22.265043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216911, 34.507538, 22.448034>,  <39.389774, 34.314915, 22.753017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216911, 34.507538, 22.448034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500723, -0.575043, -0.646994,
		-0.750013, -0.661382, 0.007379,
		-0.432153, 0.481559, -0.762459,
		39.087265, 34.652004, 22.219296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078281, 33.814278, 22.421223>,  <39.389774, 34.314915, 22.753017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078281, 33.814278, 22.421223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105717, 34.098938, 22.141552>,  <39.122177, 34.269733, 21.973749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105717, 34.098938, 22.141552>,  <39.078281, 33.814278, 22.421223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105717, 34.098938, 22.141552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351447, -0.673137, -0.650671,
		-0.933692, -0.201096, -0.296275,
		0.068586, 0.711651, -0.699177,
		39.126293, 34.312435, 21.931799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869545, 33.514523, 21.733480>,  <39.078281, 33.814278, 22.421223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869545, 33.514523, 21.733480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074768, 33.848698, 21.654665>,  <39.197903, 34.049202, 21.607376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074768, 33.848698, 21.654665>,  <38.869545, 33.514523, 21.733480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074768, 33.848698, 21.654665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513543, -0.482693, -0.709423,
		-0.687785, 0.262786, -0.676679,
		0.513055, 0.835435, -0.197037,
		39.228683, 34.099327, 21.595554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939129, 33.423405, 20.994638>,  <38.869545, 33.514523, 21.733480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939129, 33.423405, 20.994638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218342, 33.700054, 21.068844>,  <39.385868, 33.866043, 21.113367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218342, 33.700054, 21.068844>,  <38.939129, 33.423405, 20.994638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218342, 33.700054, 21.068844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602289, -0.426943, -0.674513,
		-0.387302, 0.582564, -0.714575,
		0.698029, 0.691620, 0.185516,
		39.427750, 33.907539, 21.124498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114471, 33.798538, 20.417130>,  <38.939129, 33.423405, 20.994638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114471, 33.798538, 20.417130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437138, 33.847893, 20.648323>,  <39.630737, 33.877506, 20.787039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437138, 33.847893, 20.648323>,  <39.114471, 33.798538, 20.417130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437138, 33.847893, 20.648323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562080, -0.462386, -0.685759,
		0.182639, 0.878052, -0.442344,
		0.806665, 0.123387, 0.577985,
		39.679138, 33.884911, 20.821718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587345, 34.026234, 19.993652>,  <39.114471, 33.798538, 20.417130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587345, 34.026234, 19.993652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796940, 33.875919, 20.299389>,  <39.922699, 33.785728, 20.482830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796940, 33.875919, 20.299389>,  <39.587345, 34.026234, 19.993652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796940, 33.875919, 20.299389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609958, -0.460779, -0.644697,
		0.594462, 0.804030, -0.012228,
		0.523991, -0.375790, 0.764340,
		39.954136, 33.763184, 20.528690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342644, 34.227467, 19.856073>,  <39.587345, 34.026234, 19.993652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342644, 34.227467, 19.856073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359253, 33.924938, 20.117226>,  <40.369217, 33.743420, 20.273916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359253, 33.924938, 20.117226>,  <40.342644, 34.227467, 19.856073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359253, 33.924938, 20.117226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567474, -0.519969, -0.638440,
		0.822344, 0.397000, 0.407604,
		0.041520, -0.756322, 0.652881,
		40.371708, 33.698040, 20.313089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956955, 33.967358, 19.736984>,  <40.342644, 34.227467, 19.856073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956955, 33.967358, 19.736984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782715, 33.664165, 19.931187>,  <40.678169, 33.482250, 20.047709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782715, 33.664165, 19.931187>,  <40.956955, 33.967358, 19.736984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782715, 33.664165, 19.931187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462764, -0.651206, -0.601481,
		0.772075, -0.037332, 0.634434,
		-0.435602, -0.757982, 0.485504,
		40.652035, 33.436771, 20.076838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514427, 33.543594, 19.977434>,  <40.956955, 33.967358, 19.736984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514427, 33.543594, 19.977434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174271, 33.333221, 19.971346>,  <40.970177, 33.206997, 19.967693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174271, 33.333221, 19.971346>,  <41.514427, 33.543594, 19.977434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174271, 33.333221, 19.971346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426036, -0.671322, -0.606481,
		0.308748, -0.522232, 0.794952,
		-0.850393, -0.525928, -0.015220,
		40.919151, 33.175442, 19.966780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729939, 32.898350, 20.179693>,  <41.514427, 33.543594, 19.977434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729939, 32.898350, 20.179693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378616, 32.837597, 19.998363>,  <41.167824, 32.801144, 19.889565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378616, 32.837597, 19.998363>,  <41.729939, 32.898350, 20.179693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378616, 32.837597, 19.998363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462164, -0.512440, -0.723747,
		-0.122378, -0.845185, 0.520275,
		-0.878309, -0.151882, -0.453326,
		41.115124, 32.792034, 19.862366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598507, 32.149948, 20.111141>,  <41.729939, 32.898350, 20.179693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598507, 32.149948, 20.111141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375748, 32.335552, 19.835590>,  <41.242092, 32.446915, 19.670259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375748, 32.335552, 19.835590>,  <41.598507, 32.149948, 20.111141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375748, 32.335552, 19.835590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409154, -0.568518, -0.713708,
		-0.722809, -0.679323, 0.126756,
		-0.556902, 0.464012, -0.688878,
		41.208675, 32.474754, 19.628927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243687, 31.973167, 20.190989>,  <41.598507, 32.149948, 20.111141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243687, 31.973167, 20.190989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527340, 31.876389, 20.455893>,  <42.697533, 31.818321, 20.614834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527340, 31.876389, 20.455893>,  <42.243687, 31.973167, 20.190989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527340, 31.876389, 20.455893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535262, 0.426645, 0.729019,
		-0.458934, -0.871456, 0.173044,
		0.709136, -0.241948, 0.662259,
		42.740082, 31.803804, 20.654570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850727, 31.689739, 20.716446>,  <42.243687, 31.973167, 20.190989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850727, 31.689739, 20.716446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203533, 31.802757, 20.867294>,  <42.415218, 31.870567, 20.957804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203533, 31.802757, 20.867294>,  <41.850727, 31.689739, 20.716446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203533, 31.802757, 20.867294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459740, 0.340367, 0.820238,
		0.103393, -0.896839, 0.430105,
		0.882014, 0.282543, 0.377121,
		42.468136, 31.887520, 20.980431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644043, 31.587963, 21.389839>,  <41.850727, 31.689739, 20.716446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644043, 31.587963, 21.389839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974998, 31.810833, 21.418093>,  <42.173573, 31.944555, 21.435045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974998, 31.810833, 21.418093>,  <41.644043, 31.587963, 21.389839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974998, 31.810833, 21.418093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288601, 0.313896, 0.904532,
		0.481812, -0.768782, 0.420514,
		0.827386, 0.557175, 0.070632,
		42.223213, 31.977985, 21.439283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990570, 31.526453, 21.997932>,  <41.644043, 31.587963, 21.389839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990570, 31.526453, 21.997932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133770, 31.882757, 21.885946>,  <42.219692, 32.096539, 21.818754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133770, 31.882757, 21.885946>,  <41.990570, 31.526453, 21.997932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133770, 31.882757, 21.885946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202591, 0.366799, 0.907973,
		0.911477, -0.268337, 0.311775,
		0.358002, 0.890760, -0.279967,
		42.241169, 32.149986, 21.801956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308849, 31.725229, 22.630219>,  <41.990570, 31.526453, 21.997932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308849, 31.725229, 22.630219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259296, 32.039135, 22.387304>,  <42.229565, 32.227478, 22.241556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259296, 32.039135, 22.387304>,  <42.308849, 31.725229, 22.630219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259296, 32.039135, 22.387304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191925, 0.581496, 0.790587,
		0.973559, 0.214494, 0.078578,
		-0.123883, 0.784765, -0.607287,
		42.222130, 32.274563, 22.205118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851444, 32.233940, 22.722605>,  <42.308849, 31.725229, 22.630219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851444, 32.233940, 22.722605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536003, 32.428017, 22.571507>,  <42.346737, 32.544464, 22.480848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536003, 32.428017, 22.571507>,  <42.851444, 32.233940, 22.722605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536003, 32.428017, 22.571507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073415, 0.535630, 0.841255,
		0.610501, 0.691151, -0.386781,
		-0.788606, 0.485191, -0.377743,
		42.299423, 32.573574, 22.458183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847275, 32.875828, 23.048317>,  <42.851444, 32.233940, 22.722605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847275, 32.875828, 23.048317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470932, 32.867592, 22.913044>,  <42.245125, 32.862648, 22.831881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470932, 32.867592, 22.913044>,  <42.847275, 32.875828, 23.048317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470932, 32.867592, 22.913044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306463, 0.477342, 0.823544,
		0.144468, 0.878476, -0.455421,
		-0.940856, -0.020593, -0.338181,
		42.188675, 32.861412, 22.811590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560730, 33.532516, 23.263763>,  <42.847275, 32.875828, 23.048317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560730, 33.532516, 23.263763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267700, 33.273682, 23.179272>,  <42.091885, 33.118382, 23.128576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267700, 33.273682, 23.179272>,  <42.560730, 33.532516, 23.263763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267700, 33.273682, 23.179272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525705, 0.340716, 0.779453,
		-0.432403, 0.682051, -0.589775,
		-0.732572, -0.647085, -0.211231,
		42.047928, 33.079556, 23.115902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933075, 33.939514, 23.334190>,  <42.560730, 33.532516, 23.263763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933075, 33.939514, 23.334190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814823, 33.558159, 23.358362>,  <41.743874, 33.329346, 23.372866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814823, 33.558159, 23.358362>,  <41.933075, 33.939514, 23.334190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814823, 33.558159, 23.358362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547755, 0.220997, 0.806923,
		-0.782667, 0.205449, -0.587557,
		-0.295630, -0.953389, 0.060432,
		41.726135, 33.272141, 23.376492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280670, 33.923260, 23.455473>,  <41.933075, 33.939514, 23.334190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280670, 33.923260, 23.455473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404694, 33.571171, 23.599182>,  <41.479107, 33.359917, 23.685408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404694, 33.571171, 23.599182>,  <41.280670, 33.923260, 23.455473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404694, 33.571171, 23.599182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485607, 0.178252, 0.855811,
		-0.817342, -0.439818, -0.372172,
		0.310060, -0.880220, 0.359272,
		41.497711, 33.307106, 23.706964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643002, 33.739323, 23.854010>,  <41.280670, 33.923260, 23.455473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643002, 33.739323, 23.854010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944572, 33.505074, 23.973097>,  <41.125515, 33.364525, 24.044550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944572, 33.505074, 23.973097>,  <40.643002, 33.739323, 23.854010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944572, 33.505074, 23.973097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329931, 0.054366, 0.942438,
		-0.568099, -0.808758, -0.152227,
		0.753929, -0.585623, 0.297719,
		41.170750, 33.329388, 24.062412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431385, 33.428574, 24.391876>,  <40.643002, 33.739323, 23.854010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431385, 33.428574, 24.391876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815224, 33.330296, 24.446726>,  <41.045528, 33.271328, 24.479635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815224, 33.330296, 24.446726>,  <40.431385, 33.428574, 24.391876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815224, 33.330296, 24.446726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154133, -0.051293, 0.986718,
		-0.235398, -0.967989, -0.087090,
		0.959599, -0.245695, 0.137125,
		41.103104, 33.256588, 24.487864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394180, 32.886417, 24.711353>,  <40.431385, 33.428574, 24.391876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394180, 32.886417, 24.711353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732231, 33.083122, 24.795195>,  <40.935062, 33.201145, 24.845499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732231, 33.083122, 24.795195>,  <40.394180, 32.886417, 24.711353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732231, 33.083122, 24.795195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259554, 0.034702, 0.965105,
		0.467331, -0.870036, 0.156967,
		0.845123, 0.491764, 0.209604,
		40.985767, 33.230652, 24.858076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570560, 32.716087, 25.347029>,  <40.394180, 32.886417, 24.711353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570560, 32.716087, 25.347029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770401, 33.056602, 25.282909>,  <40.890305, 33.260914, 25.244438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770401, 33.056602, 25.282909>,  <40.570560, 32.716087, 25.347029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770401, 33.056602, 25.282909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231655, 0.309608, 0.922214,
		0.834704, -0.423608, 0.351888,
		0.499605, 0.851292, -0.160300,
		40.920284, 33.311989, 25.234819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758457, 32.873070, 25.992161>,  <40.570560, 32.716087, 25.347029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758457, 32.873070, 25.992161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808945, 33.209770, 25.782200>,  <40.839237, 33.411793, 25.656223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808945, 33.209770, 25.782200>,  <40.758457, 32.873070, 25.992161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808945, 33.209770, 25.782200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215076, 0.539767, 0.813876,
		0.968406, 0.010165, 0.249170,
		0.126220, 0.841753, -0.524900,
		40.846809, 33.462296, 25.624729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019039, 33.302734, 26.463272>,  <40.758457, 32.873070, 25.992161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019039, 33.302734, 26.463272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901615, 33.553131, 26.174288>,  <40.831161, 33.703369, 26.000896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901615, 33.553131, 26.174288>,  <41.019039, 33.302734, 26.463272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901615, 33.553131, 26.174288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305792, 0.654556, 0.691410,
		0.905712, 0.423892, -0.000726,
		-0.293558, 0.625996, -0.722463,
		40.813549, 33.740929, 25.957548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288338, 34.002182, 26.668009>,  <41.019039, 33.302734, 26.463272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288338, 34.002182, 26.668009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973705, 34.041454, 26.424156>,  <40.784927, 34.065018, 26.277845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973705, 34.041454, 26.424156>,  <41.288338, 34.002182, 26.668009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973705, 34.041454, 26.424156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444837, 0.594641, 0.669718,
		0.428262, 0.797974, -0.424062,
		-0.786582, 0.098176, -0.609631,
		40.737732, 34.070908, 26.241266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122822, 34.692806, 26.733702>,  <41.288338, 34.002182, 26.668009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122822, 34.692806, 26.733702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789696, 34.528248, 26.585552>,  <40.589821, 34.429512, 26.496662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789696, 34.528248, 26.585552>,  <41.122822, 34.692806, 26.733702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789696, 34.528248, 26.585552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544237, 0.730760, 0.412063,
		0.101135, 0.544743, -0.832482,
		-0.832813, -0.411394, -0.370375,
		40.539852, 34.404831, 26.474440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777538, 35.301540, 26.442093>,  <41.122822, 34.692806, 26.733702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777538, 35.301540, 26.442093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514042, 35.008213, 26.509396>,  <40.355946, 34.832218, 26.549776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514042, 35.008213, 26.509396>,  <40.777538, 35.301540, 26.442093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514042, 35.008213, 26.509396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623101, 0.657074, 0.424262,
		-0.421675, 0.174638, -0.889771,
		-0.658738, -0.733318, 0.168254,
		40.316422, 34.788219, 26.559872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105125, 35.557316, 26.295553>,  <40.777538, 35.301540, 26.442093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105125, 35.557316, 26.295553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021080, 35.244225, 26.529884>,  <39.970654, 35.056370, 26.670483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021080, 35.244225, 26.529884>,  <40.105125, 35.557316, 26.295553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021080, 35.244225, 26.529884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700985, 0.538305, 0.467812,
		-0.681522, -0.312362, -0.661784,
		-0.210115, -0.782725, 0.585827,
		39.958046, 35.009407, 26.705633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379532, 35.532024, 26.391600>,  <40.105125, 35.557316, 26.295553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379532, 35.532024, 26.391600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521832, 35.314953, 26.695951>,  <39.607212, 35.184708, 26.878563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521832, 35.314953, 26.695951>,  <39.379532, 35.532024, 26.391600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521832, 35.314953, 26.695951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637727, 0.454184, 0.622110,
		-0.683186, -0.706551, -0.184504,
		0.355754, -0.542681, 0.760879,
		39.628559, 35.152149, 26.924215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772846, 35.255924, 26.781061>,  <39.379532, 35.532024, 26.391600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772846, 35.255924, 26.781061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082672, 35.233406, 27.033054>,  <39.268566, 35.219894, 27.184250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082672, 35.233406, 27.033054>,  <38.772846, 35.255924, 26.781061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082672, 35.233406, 27.033054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597397, 0.262061, 0.757919,
		-0.207762, -0.963408, 0.169353,
		0.774566, -0.056296, 0.629984,
		39.315041, 35.216518, 27.222050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513512, 34.915894, 27.367146>,  <38.772846, 35.255924, 26.781061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513512, 34.915894, 27.367146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830879, 35.113735, 27.509048>,  <39.021301, 35.232441, 27.594191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830879, 35.113735, 27.509048>,  <38.513512, 34.915894, 27.367146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830879, 35.113735, 27.509048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509517, 0.220846, 0.831637,
		0.332989, -0.840588, 0.427235,
		0.793417, 0.494609, 0.354754,
		39.068905, 35.262119, 27.615475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462330, 34.741669, 28.059931>,  <38.513512, 34.915894, 27.367146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462330, 34.741669, 28.059931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719738, 35.047840, 28.060226>,  <38.874184, 35.231541, 28.060404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719738, 35.047840, 28.060226>,  <38.462330, 34.741669, 28.059931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719738, 35.047840, 28.060226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385732, 0.323465, 0.864049,
		0.661127, -0.556320, 0.503407,
		0.643523, 0.765426, 0.000739,
		38.912796, 35.277470, 28.060448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895912, 34.678150, 28.634907>,  <38.462330, 34.741669, 28.059931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895912, 34.678150, 28.634907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892124, 35.064266, 28.530506>,  <38.889851, 35.295937, 28.467865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892124, 35.064266, 28.530506>,  <38.895912, 34.678150, 28.634907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892124, 35.064266, 28.530506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378064, 0.238183, 0.894615,
		0.925731, 0.107150, 0.362686,
		-0.009472, 0.965292, -0.261003,
		38.889282, 35.353855, 28.452206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165257, 34.960896, 29.271578>,  <38.895912, 34.678150, 28.634907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165257, 34.960896, 29.271578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995811, 35.246922, 29.049143>,  <38.894146, 35.418537, 28.915682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995811, 35.246922, 29.049143>,  <39.165257, 34.960896, 29.271578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995811, 35.246922, 29.049143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214932, 0.517016, 0.828552,
		0.879976, 0.470505, -0.065322,
		-0.423610, 0.715067, -0.556088,
		38.868729, 35.461441, 28.882317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482029, 35.531467, 29.553854>,  <39.165257, 34.960896, 29.271578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482029, 35.531467, 29.553854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130730, 35.605602, 29.377523>,  <38.919949, 35.650082, 29.271725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130730, 35.605602, 29.377523>,  <39.482029, 35.531467, 29.553854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130730, 35.605602, 29.377523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329214, 0.434272, 0.838467,
		0.346837, 0.881509, -0.320384,
		-0.878250, 0.185337, -0.440826,
		38.867256, 35.661201, 29.245275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360554, 36.367947, 29.639019>,  <39.482029, 35.531467, 29.553854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360554, 36.367947, 29.639019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000011, 36.209461, 29.569086>,  <38.783684, 36.114368, 29.527126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000011, 36.209461, 29.569086>,  <39.360554, 36.367947, 29.639019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000011, 36.209461, 29.569086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371985, 0.501591, 0.781047,
		-0.221769, 0.769038, -0.599499,
		-0.901358, -0.396217, -0.174833,
		38.729603, 36.090595, 29.516636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803482, 36.875286, 29.852743>,  <39.360554, 36.367947, 29.639019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803482, 36.875286, 29.852743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614021, 36.524300, 29.822506>,  <38.500343, 36.313709, 29.804363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614021, 36.524300, 29.822506>,  <38.803482, 36.875286, 29.852743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614021, 36.524300, 29.822506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570738, 0.240442, 0.785141,
		-0.670755, 0.415028, -0.614687,
		-0.473651, -0.877462, -0.075595,
		38.471928, 36.261063, 29.799828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196384, 37.040516, 29.996870>,  <38.803482, 36.875286, 29.852743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196384, 37.040516, 29.996870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185234, 36.644447, 30.051699>,  <38.178543, 36.406807, 30.084595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185234, 36.644447, 30.051699>,  <38.196384, 37.040516, 29.996870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185234, 36.644447, 30.051699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322307, 0.138704, 0.936418,
		-0.946225, -0.018071, -0.323006,
		-0.027880, -0.990169, 0.137070,
		38.176868, 36.347397, 30.092819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576897, 36.997810, 30.305248>,  <38.196384, 37.040516, 29.996870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576897, 36.997810, 30.305248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782402, 36.667103, 30.396893>,  <37.905704, 36.468678, 30.451880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782402, 36.667103, 30.396893>,  <37.576897, 36.997810, 30.305248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782402, 36.667103, 30.396893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320684, 0.062628, 0.945113,
		-0.795743, -0.559039, -0.232957,
		0.513765, -0.826773, 0.229111,
		37.936531, 36.419071, 30.465626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093777, 36.692211, 30.752836>,  <37.576897, 36.997810, 30.305248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093777, 36.692211, 30.752836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426018, 36.478779, 30.816578>,  <37.625362, 36.350719, 30.854822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426018, 36.478779, 30.816578>,  <37.093777, 36.692211, 30.752836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426018, 36.478779, 30.816578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272241, -0.139456, 0.952070,
		-0.485780, -0.834175, -0.261094,
		0.830604, -0.533577, 0.159352,
		37.675198, 36.318707, 30.864384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947357, 35.998367, 30.894218>,  <37.093777, 36.692211, 30.752836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947357, 35.998367, 30.894218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295589, 36.090305, 31.068233>,  <37.504528, 36.145466, 31.172644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295589, 36.090305, 31.068233>,  <36.947357, 35.998367, 30.894218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295589, 36.090305, 31.068233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355427, -0.317635, 0.879079,
		0.340231, -0.919936, -0.194837,
		0.870583, 0.229840, 0.435039,
		37.556763, 36.159256, 31.198746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188614, 35.368813, 31.283249>,  <36.947357, 35.998367, 30.894218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188614, 35.368813, 31.283249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388149, 35.663494, 31.465864>,  <37.507874, 35.840302, 31.575434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388149, 35.663494, 31.465864>,  <37.188614, 35.368813, 31.283249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388149, 35.663494, 31.465864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291856, -0.353207, 0.888856,
		0.816073, -0.576644, 0.038816,
		0.498843, 0.736700, 0.456540,
		37.537804, 35.884502, 31.602825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413731, 35.000233, 31.904634>,  <37.188614, 35.368813, 31.283249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413731, 35.000233, 31.904634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481445, 35.386627, 31.982824>,  <37.522076, 35.618465, 32.029739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481445, 35.386627, 31.982824>,  <37.413731, 35.000233, 31.904634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481445, 35.386627, 31.982824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033387, -0.192605, 0.980708,
		0.985001, -0.172547, -0.000354,
		0.169286, 0.965987, 0.195477,
		37.532230, 35.676422, 32.041466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023308, 35.005466, 32.163509>,  <37.413731, 35.000233, 31.904634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023308, 35.005466, 32.163509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849167, 35.339607, 32.297760>,  <37.744682, 35.540092, 32.378311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849167, 35.339607, 32.297760>,  <38.023308, 35.005466, 32.163509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849167, 35.339607, 32.297760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242914, -0.249986, 0.937283,
		0.866868, 0.489578, -0.094088,
		-0.435353, 0.835356, 0.335630,
		37.718559, 35.590214, 32.398449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488663, 35.249374, 32.734005>,  <38.023308, 35.005466, 32.163509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488663, 35.249374, 32.734005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126171, 35.414345, 32.771221>,  <37.908676, 35.513329, 32.793552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126171, 35.414345, 32.771221>,  <38.488663, 35.249374, 32.734005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126171, 35.414345, 32.771221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030713, -0.155262, 0.987396,
		0.421675, 0.897662, 0.128036,
		-0.906227, 0.412428, 0.093040,
		37.854301, 35.538074, 32.799133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591511, 35.645023, 33.254360>,  <38.488663, 35.249374, 32.734005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591511, 35.645023, 33.254360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193317, 35.668510, 33.224525>,  <37.954403, 35.682602, 33.206623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193317, 35.668510, 33.224525>,  <38.591511, 35.645023, 33.254360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193317, 35.668510, 33.224525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085089, -0.203618, 0.975346,
		0.042087, 0.977288, 0.207695,
		-0.995484, 0.058722, -0.074587,
		37.894672, 35.686127, 33.202148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297947, 36.232391, 33.702663>,  <38.591511, 35.645023, 33.254360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297947, 36.232391, 33.702663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988258, 35.991043, 33.626217>,  <37.802444, 35.846233, 33.580349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988258, 35.991043, 33.626217>,  <38.297947, 36.232391, 33.702663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988258, 35.991043, 33.626217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222571, -0.023125, 0.974642,
		-0.592493, 0.797123, -0.116389,
		-0.774218, -0.603374, -0.191118,
		37.755993, 35.810032, 33.568882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756176, 36.572945, 33.919292>,  <38.297947, 36.232391, 33.702663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756176, 36.572945, 33.919292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651268, 36.187115, 33.930649>,  <37.588326, 35.955616, 33.937462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651268, 36.187115, 33.930649>,  <37.756176, 36.572945, 33.919292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651268, 36.187115, 33.930649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415115, 0.139330, 0.899037,
		-0.871146, 0.224002, -0.436952,
		-0.262266, -0.964578, 0.028390,
		37.572590, 35.897743, 33.939167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150627, 36.638405, 34.220631>,  <37.756176, 36.572945, 33.919292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150627, 36.638405, 34.220631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240963, 36.250710, 34.259785>,  <37.295166, 36.018093, 34.283279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240963, 36.250710, 34.259785>,  <37.150627, 36.638405, 34.220631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240963, 36.250710, 34.259785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380660, 0.004694, 0.924703,
		-0.896713, -0.246097, -0.367889,
		0.225839, -0.969234, 0.097888,
		37.308716, 35.959938, 34.289150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588665, 36.370808, 34.470421>,  <37.150627, 36.638405, 34.220631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588665, 36.370808, 34.470421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885052, 36.125385, 34.579605>,  <37.062885, 35.978130, 34.645115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885052, 36.125385, 34.579605>,  <36.588665, 36.370808, 34.470421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885052, 36.125385, 34.579605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439776, -0.136164, 0.887725,
		-0.507503, -0.777822, -0.370721,
		0.740971, -0.613558, 0.272964,
		37.107342, 35.941319, 34.661495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277908, 35.703194, 34.665913>,  <36.588665, 36.370808, 34.470421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277908, 35.703194, 34.665913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643600, 35.732807, 34.825264>,  <36.863014, 35.750576, 34.920876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643600, 35.732807, 34.825264>,  <36.277908, 35.703194, 34.665913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643600, 35.732807, 34.825264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376518, -0.208086, 0.902737,
		0.149729, -0.975305, -0.162364,
		0.914229, 0.074033, 0.398376,
		36.917870, 35.755016, 34.944778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369961, 35.179665, 35.157806>,  <36.277908, 35.703194, 34.665913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369961, 35.179665, 35.157806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639130, 35.448071, 35.282333>,  <36.800632, 35.609116, 35.357048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639130, 35.448071, 35.282333>,  <36.369961, 35.179665, 35.157806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639130, 35.448071, 35.282333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212985, -0.227275, 0.950255,
		0.708388, -0.705752, -0.010022,
		0.672922, 0.671014, 0.311313,
		36.841007, 35.649376, 35.375729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484001, 34.938782, 35.758503>,  <36.369961, 35.179665, 35.157806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484001, 34.938782, 35.758503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662209, 35.294262, 35.801819>,  <36.769131, 35.507549, 35.827808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662209, 35.294262, 35.801819>,  <36.484001, 34.938782, 35.758503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662209, 35.294262, 35.801819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358020, 0.065985, 0.931379,
		0.820571, -0.453716, 0.347570,
		0.445516, 0.888700, 0.108294,
		36.795864, 35.560871, 35.834309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645561, 34.976723, 36.504616>,  <36.484001, 34.938782, 35.758503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645561, 34.976723, 36.504616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660362, 35.357010, 36.381485>,  <36.669243, 35.585182, 36.307606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660362, 35.357010, 36.381485>,  <36.645561, 34.976723, 36.504616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660362, 35.357010, 36.381485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450216, 0.290867, 0.844216,
		0.892152, 0.107349, 0.438794,
		0.037005, 0.950722, -0.307828,
		36.671463, 35.642227, 36.289135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998722, 35.358234, 37.034222>,  <36.645561, 34.976723, 36.504616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998722, 35.358234, 37.034222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755486, 35.592693, 36.820061>,  <36.609543, 35.733368, 36.691563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755486, 35.592693, 36.820061>,  <36.998722, 35.358234, 37.034222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755486, 35.592693, 36.820061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460068, 0.289428, 0.839386,
		0.646966, 0.756743, 0.093671,
		-0.608089, 0.586149, -0.535404,
		36.573059, 35.768539, 36.659439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899429, 35.924080, 37.545769>,  <36.998722, 35.358234, 37.034222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899429, 35.924080, 37.545769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614357, 35.966358, 37.268379>,  <36.443314, 35.991726, 37.101944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614357, 35.966358, 37.268379>,  <36.899429, 35.924080, 37.545769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614357, 35.966358, 37.268379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677628, 0.151892, 0.719548,
		0.181390, 0.982729, -0.036626,
		-0.712683, 0.105700, -0.693476,
		36.400551, 35.998070, 37.060337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544487, 36.575657, 37.683548>,  <36.899429, 35.924080, 37.545769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544487, 36.575657, 37.683548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307369, 36.322472, 37.484367>,  <36.165100, 36.170559, 37.364861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307369, 36.322472, 37.484367>,  <36.544487, 36.575657, 37.683548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307369, 36.322472, 37.484367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713063, 0.125111, 0.689847,
		-0.374349, 0.764004, -0.525509,
		-0.592793, -0.632964, -0.497948,
		36.129532, 36.132584, 37.334984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909920, 36.965759, 37.541172>,  <36.544487, 36.575657, 37.683548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909920, 36.965759, 37.541172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805595, 36.580612, 37.513260>,  <35.743000, 36.349525, 37.496513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805595, 36.580612, 37.513260>,  <35.909920, 36.965759, 37.541172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805595, 36.580612, 37.513260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830623, 0.186977, 0.524505,
		-0.491980, 0.194756, -0.848543,
		-0.260809, -0.962866, -0.069780,
		35.727352, 36.291752, 37.492325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294762, 36.845200, 37.131992>,  <35.909920, 36.965759, 37.541172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294762, 36.845200, 37.131992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357315, 36.570740, 37.416176>,  <35.394848, 36.406067, 37.586685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357315, 36.570740, 37.416176>,  <35.294762, 36.845200, 37.131992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357315, 36.570740, 37.416176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905522, 0.187653, 0.380548,
		-0.394431, -0.702845, -0.591974,
		0.156381, -0.686145, 0.710458,
		35.404228, 36.364895, 37.629314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623238, 36.645653, 37.366226>,  <35.294762, 36.845200, 37.131992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623238, 36.645653, 37.366226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879578, 36.486248, 37.628674>,  <35.033382, 36.390606, 37.786144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879578, 36.486248, 37.628674>,  <34.623238, 36.645653, 37.366226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879578, 36.486248, 37.628674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678367, 0.106096, 0.727023,
		-0.359340, -0.911005, -0.202346,
		0.640853, -0.398513, 0.656121,
		35.071835, 36.366695, 37.825508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389866, 36.095573, 36.972145>,  <34.623238, 36.645653, 37.366226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389866, 36.095573, 36.972145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601093, 35.988876, 37.294636>,  <34.727829, 35.924858, 37.488129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601093, 35.988876, 37.294636>,  <34.389866, 36.095573, 36.972145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601093, 35.988876, 37.294636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844564, -0.065852, 0.531390,
		-0.088677, -0.961503, -0.260092,
		0.528061, -0.266786, 0.806212,
		34.759514, 35.908852, 37.536503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010593, 35.495937, 37.283955>,  <34.389866, 36.095573, 36.972145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010593, 35.495937, 37.283955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240582, 35.659168, 37.567612>,  <34.378574, 35.757107, 37.737804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240582, 35.659168, 37.567612>,  <34.010593, 35.495937, 37.283955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240582, 35.659168, 37.567612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791447, 0.057668, 0.608511,
		0.207426, -0.911123, 0.356131,
		0.574966, 0.408080, 0.709144,
		34.413071, 35.781593, 37.780354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696671, 35.256710, 37.930927>,  <34.010593, 35.495937, 37.283955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696671, 35.256710, 37.930927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910065, 35.587021, 38.004120>,  <34.038101, 35.785210, 38.048035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910065, 35.587021, 38.004120>,  <33.696671, 35.256710, 37.930927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910065, 35.587021, 38.004120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658874, 0.270080, 0.702098,
		0.530357, -0.495121, 0.688168,
		0.533484, 0.825779, 0.182984,
		34.070110, 35.834755, 38.059017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915680, 35.241215, 38.602806>,  <33.696671, 35.256710, 37.930927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915680, 35.241215, 38.602806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885502, 35.621098, 38.481239>,  <33.867397, 35.849026, 38.408298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885502, 35.621098, 38.481239>,  <33.915680, 35.241215, 38.602806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885502, 35.621098, 38.481239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534588, 0.218761, 0.816309,
		0.841739, 0.224053, 0.491198,
		-0.075442, 0.949707, -0.303916,
		33.862869, 35.906010, 38.390064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180241, 35.710987, 39.119385>,  <33.915680, 35.241215, 38.602806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180241, 35.710987, 39.119385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905712, 35.890610, 38.890537>,  <33.740997, 35.998383, 38.753227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905712, 35.890610, 38.890537>,  <34.180241, 35.710987, 39.119385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905712, 35.890610, 38.890537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535674, 0.219986, 0.815266,
		0.491955, 0.866001, 0.089565,
		-0.686319, 0.449052, -0.572118,
		33.699818, 36.025326, 38.718903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087143, 36.312447, 39.402412>,  <34.180241, 35.710987, 39.119385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087143, 36.312447, 39.402412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746876, 36.271614, 39.196129>,  <33.542717, 36.247116, 39.072361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746876, 36.271614, 39.196129>,  <34.087143, 36.312447, 39.402412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746876, 36.271614, 39.196129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525435, 0.133385, 0.840313,
		-0.016991, 0.985793, -0.167102,
		-0.850664, -0.102079, -0.515704,
		33.491676, 36.240990, 39.041416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574440, 36.897408, 39.574432>,  <34.087143, 36.312447, 39.402412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574440, 36.897408, 39.574432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363861, 36.576763, 39.461109>,  <33.237514, 36.384377, 39.393116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363861, 36.576763, 39.461109>,  <33.574440, 36.897408, 39.574432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363861, 36.576763, 39.461109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492850, 0.016208, 0.869963,
		-0.692783, 0.597622, -0.403608,
		-0.526451, -0.801614, -0.283310,
		33.205925, 36.336281, 39.376118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861839, 36.976906, 39.709068>,  <33.574440, 36.897408, 39.574432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861839, 36.976906, 39.709068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955715, 36.588680, 39.687447>,  <33.012043, 36.355743, 39.674473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955715, 36.588680, 39.687447>,  <32.861839, 36.976906, 39.709068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955715, 36.588680, 39.687447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598031, -0.187998, 0.779112,
		-0.766341, -0.150526, -0.624550,
		0.234691, -0.970566, -0.054051,
		33.026123, 36.297512, 39.671230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066998, 37.100945, 40.398464>,  <32.861839, 36.976906, 39.709068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066998, 37.100945, 40.398464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005199, 37.495808, 40.382198>,  <32.968121, 37.732727, 40.372437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005199, 37.495808, 40.382198>,  <33.066998, 37.100945, 40.398464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005199, 37.495808, 40.382198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836065, -0.152558, -0.526992,
		-0.526428, -0.047416, 0.848897,
		-0.154493, 0.987156, -0.040668,
		32.958851, 37.791954, 40.369999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507122, 37.363758, 40.742138>,  <33.066998, 37.100945, 40.398464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507122, 37.363758, 40.742138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589725, 37.545223, 40.395370>,  <32.639286, 37.654102, 40.187309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589725, 37.545223, 40.395370>,  <32.507122, 37.363758, 40.742138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589725, 37.545223, 40.395370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780466, -0.457988, -0.425582,
		-0.590108, 0.764485, 0.259491,
		0.206507, 0.453663, -0.866917,
		32.651676, 37.681324, 40.135296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250065, 36.635490, 40.605194>,  <32.507122, 37.363758, 40.742138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250065, 36.635490, 40.605194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970310, 36.397072, 40.447418>,  <31.802456, 36.254021, 40.352753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970310, 36.397072, 40.447418>,  <32.250065, 36.635490, 40.605194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970310, 36.397072, 40.447418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660139, -0.327140, -0.676163,
		0.273989, -0.733285, 0.622272,
		-0.699391, -0.596047, -0.394437,
		31.760492, 36.218258, 40.329086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447197, 35.882122, 40.594818>,  <32.250065, 36.635490, 40.605194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447197, 35.882122, 40.594818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195621, 35.936012, 40.288540>,  <32.044678, 35.968346, 40.104774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195621, 35.936012, 40.288540>,  <32.447197, 35.882122, 40.594818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195621, 35.936012, 40.288540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726714, -0.248092, -0.640576,
		-0.276269, -0.959322, 0.058122,
		-0.628938, 0.134733, -0.765692,
		32.006939, 35.976433, 40.058834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710690, 35.423618, 40.199627>,  <32.447197, 35.882122, 40.594818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710690, 35.423618, 40.199627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505035, 35.694790, 39.989452>,  <32.381645, 35.857491, 39.863346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505035, 35.694790, 39.989452>,  <32.710690, 35.423618, 40.199627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505035, 35.694790, 39.989452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527072, -0.233573, -0.817092,
		-0.676656, -0.697036, -0.237229,
		-0.514132, 0.677927, -0.525436,
		32.350796, 35.898167, 39.831821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613430, 35.227119, 39.492329>,  <32.710690, 35.423618, 40.199627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613430, 35.227119, 39.492329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569115, 35.622425, 39.450275>,  <32.542526, 35.859608, 39.425045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569115, 35.622425, 39.450275>,  <32.613430, 35.227119, 39.492329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569115, 35.622425, 39.450275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506942, -0.034793, -0.861278,
		-0.854831, -0.148718, -0.497139,
		-0.110790, 0.988268, -0.105133,
		32.535877, 35.918907, 39.418736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418003, 35.442738, 38.828789>,  <32.613430, 35.227119, 39.492329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418003, 35.442738, 38.828789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649639, 35.721260, 38.998405>,  <32.788620, 35.888374, 39.100178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649639, 35.721260, 38.998405>,  <32.418003, 35.442738, 38.828789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649639, 35.721260, 38.998405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492665, 0.115538, -0.862515,
		-0.649567, 0.708385, -0.276139,
		0.579088, 0.696306, 0.424046,
		32.823364, 35.930153, 39.125618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389793, 35.959995, 38.330948>,  <32.418003, 35.442738, 38.828789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389793, 35.959995, 38.330948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714661, 36.034161, 38.552219>,  <32.909580, 36.078659, 38.684982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714661, 36.034161, 38.552219>,  <32.389793, 35.959995, 38.330948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714661, 36.034161, 38.552219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530167, 0.161234, -0.832422,
		-0.243533, 0.969343, 0.032648,
		0.812166, 0.185413, 0.553180,
		32.958309, 36.089787, 38.718174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760490, 36.410496, 37.908569>,  <32.389793, 35.959995, 38.330948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760490, 36.410496, 37.908569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036217, 36.265450, 38.159443>,  <33.201653, 36.178421, 38.309967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036217, 36.265450, 38.159443>,  <32.760490, 36.410496, 37.908569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036217, 36.265450, 38.159443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687460, 0.054259, -0.724192,
		0.228572, 0.930359, 0.286684,
		0.689314, -0.362614, 0.627183,
		33.243011, 36.156666, 38.347599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358284, 36.936546, 37.931931>,  <32.760490, 36.410496, 37.908569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358284, 36.936546, 37.931931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491470, 36.578522, 38.050587>,  <33.571384, 36.363705, 38.121780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491470, 36.578522, 38.050587>,  <33.358284, 36.936546, 37.931931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491470, 36.578522, 38.050587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707816, 0.029405, -0.705785,
		0.622999, 0.444968, 0.643331,
		0.332969, -0.895063, 0.296636,
		33.591362, 36.310001, 38.139576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936020, 36.772778, 38.371597>,  <33.358284, 36.936546, 37.931931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936020, 36.772778, 38.371597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045776, 36.421570, 38.528458>,  <34.111629, 36.210846, 38.622574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045776, 36.421570, 38.528458>,  <33.936020, 36.772778, 38.371597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045776, 36.421570, 38.528458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792423, -0.024573, -0.609477,
		0.544771, 0.477987, 0.689023,
		0.274391, -0.878023, 0.392155,
		34.128094, 36.158161, 38.646103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667343, 36.726505, 38.479561>,  <33.936020, 36.772778, 38.371597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667343, 36.726505, 38.479561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511208, 36.363079, 38.420033>,  <34.417526, 36.145023, 38.384315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511208, 36.363079, 38.420033>,  <34.667343, 36.726505, 38.479561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511208, 36.363079, 38.420033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744203, -0.216212, -0.631992,
		0.542027, -0.357446, 0.760552,
		-0.390344, -0.908562, -0.148820,
		34.394104, 36.090511, 38.375385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189240, 36.220169, 38.750549>,  <34.667343, 36.726505, 38.479561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189240, 36.220169, 38.750549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938068, 36.079384, 38.472893>,  <34.787365, 35.994911, 38.306301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938068, 36.079384, 38.472893>,  <35.189240, 36.220169, 38.750549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938068, 36.079384, 38.472893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769274, -0.145457, -0.622141,
		0.118007, -0.924641, 0.362096,
		-0.627927, -0.351968, -0.694137,
		34.749691, 35.973793, 38.264652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573677, 35.790955, 38.562870>,  <35.189240, 36.220169, 38.750549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573677, 35.790955, 38.562870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320286, 35.825161, 38.255260>,  <35.168251, 35.845684, 38.070694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320286, 35.825161, 38.255260>,  <35.573677, 35.790955, 38.562870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320286, 35.825161, 38.255260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758994, -0.124578, -0.639069,
		-0.150461, -0.988517, 0.014003,
		-0.633474, 0.085527, -0.769022,
		35.130241, 35.850819, 38.024555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558945, 35.185787, 38.165997>,  <35.573677, 35.790955, 38.562870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558945, 35.185787, 38.165997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471947, 35.516178, 37.957977>,  <35.419746, 35.714413, 37.833164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471947, 35.516178, 37.957977>,  <35.558945, 35.185787, 38.165997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471947, 35.516178, 37.957977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786603, -0.167121, -0.594412,
		-0.577884, -0.538355, -0.613371,
		-0.217498, 0.825981, -0.520048,
		35.406696, 35.763973, 37.801964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382336, 35.074158, 37.371540>,  <35.558945, 35.185787, 38.165997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382336, 35.074158, 37.371540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516163, 35.447849, 37.420979>,  <35.596458, 35.672066, 37.450642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516163, 35.447849, 37.420979>,  <35.382336, 35.074158, 37.371540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516163, 35.447849, 37.420979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678665, -0.147863, -0.719410,
		-0.653820, 0.324572, -0.683500,
		0.334565, 0.934232, 0.123600,
		35.616531, 35.728119, 37.458057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483459, 35.202492, 36.738281>,  <35.382336, 35.074158, 37.371540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483459, 35.202492, 36.738281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677952, 35.489021, 36.938465>,  <35.794647, 35.660938, 37.058575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677952, 35.489021, 36.938465>,  <35.483459, 35.202492, 36.738281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677952, 35.489021, 36.938465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763665, -0.069968, -0.641811,
		-0.424729, 0.694250, -0.581053,
		0.486232, 0.716325, 0.500457,
		35.823822, 35.703918, 37.088604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261078, 35.844692, 36.685875>,  <35.483459, 35.202492, 36.738281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261078, 35.844692, 36.685875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546093, 36.083134, 36.833904>,  <35.717102, 36.226200, 36.922722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546093, 36.083134, 36.833904>,  <35.261078, 35.844692, 36.685875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546093, 36.083134, 36.833904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513059, -0.082884, -0.854342,
		-0.478604, 0.798617, -0.364895,
		0.712537, 0.596104, 0.370069,
		35.759853, 36.261967, 36.944923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521141, 36.269825, 36.103832>,  <35.261078, 35.844692, 36.685875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521141, 36.269825, 36.103832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796654, 36.223438, 36.390087>,  <35.961960, 36.195606, 36.561840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796654, 36.223438, 36.390087>,  <35.521141, 36.269825, 36.103832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796654, 36.223438, 36.390087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691867, -0.189724, -0.696653,
		0.216563, 0.974965, -0.050443,
		0.688782, -0.115969, 0.715633,
		36.003288, 36.188648, 36.604778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044891, 36.823437, 36.020084>,  <35.521141, 36.269825, 36.103832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044891, 36.823437, 36.020084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196419, 36.503586, 36.206455>,  <36.287334, 36.311676, 36.318275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196419, 36.503586, 36.206455>,  <36.044891, 36.823437, 36.020084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196419, 36.503586, 36.206455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693825, -0.087785, -0.714774,
		0.612457, 0.594039, 0.521550,
		0.378819, -0.799632, 0.465924,
		36.310066, 36.263695, 36.346233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629070, 36.916298, 35.848610>,  <36.044891, 36.823437, 36.020084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629070, 36.916298, 35.848610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647087, 36.536278, 35.972145>,  <36.657898, 36.308266, 36.046265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647087, 36.536278, 35.972145>,  <36.629070, 36.916298, 35.848610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647087, 36.536278, 35.972145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657701, -0.204492, -0.724991,
		0.751931, 0.235777, 0.615637,
		0.045043, -0.950048, 0.308835,
		36.660599, 36.251263, 36.064796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333828, 36.732502, 35.801922>,  <36.629070, 36.916298, 35.848610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333828, 36.732502, 35.801922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158451, 36.373131, 35.811653>,  <37.053226, 36.157509, 35.817493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158451, 36.373131, 35.811653>,  <37.333828, 36.732502, 35.801922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158451, 36.373131, 35.811653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661874, -0.341075, -0.667525,
		0.608024, -0.276567, 0.744190,
		-0.438440, -0.898431, 0.024329,
		37.026920, 36.103600, 35.818951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804337, 36.093849, 35.955349>,  <37.333828, 36.732502, 35.801922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804337, 36.093849, 35.955349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478931, 36.023033, 35.733768>,  <37.283688, 35.980545, 35.600819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478931, 36.023033, 35.733768>,  <37.804337, 36.093849, 35.955349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478931, 36.023033, 35.733768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571988, -0.415610, -0.707176,
		-0.105030, -0.892147, 0.439366,
		-0.813510, -0.177037, -0.553949,
		37.234879, 35.969921, 35.567585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071266, 35.704487, 35.457397>,  <37.804337, 36.093849, 35.955349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071266, 35.704487, 35.457397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703800, 35.709332, 35.299458>,  <37.483322, 35.712238, 35.204693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703800, 35.709332, 35.299458>,  <38.071266, 35.704487, 35.457397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703800, 35.709332, 35.299458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350207, -0.437523, -0.828208,
		-0.182785, -0.899126, 0.397696,
		-0.918665, 0.012108, -0.394853,
		37.428200, 35.712963, 35.181004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937496, 35.071308, 35.096458>,  <38.071266, 35.704487, 35.457397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937496, 35.071308, 35.096458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675701, 35.331360, 34.942066>,  <37.518623, 35.487392, 34.849430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675701, 35.331360, 34.942066>,  <37.937496, 35.071308, 35.096458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675701, 35.331360, 34.942066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335113, -0.208182, -0.918891,
		-0.677755, -0.730744, -0.081616,
		-0.654483, 0.650133, -0.385978,
		37.479355, 35.526402, 34.826271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739517, 34.738750, 34.407566>,  <37.937496, 35.071308, 35.096458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739517, 34.738750, 34.407566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605694, 35.114670, 34.379700>,  <37.525402, 35.340221, 34.362980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605694, 35.114670, 34.379700>,  <37.739517, 34.738750, 34.407566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605694, 35.114670, 34.379700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206127, -0.145115, -0.967705,
		-0.919556, -0.309391, 0.242267,
		-0.334556, 0.939797, -0.069668,
		37.505325, 35.396610, 34.358799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539825, 34.810158, 34.532734>,  <37.739517, 34.738750, 34.407566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539825, 34.810158, 34.532734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530285, 34.425488, 34.641994>,  <38.524563, 34.194687, 34.707550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530285, 34.425488, 34.641994>,  <38.539825, 34.810158, 34.532734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530285, 34.425488, 34.641994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960992, -0.097360, -0.258875,
		0.275547, 0.256322, 0.926484,
		-0.023847, -0.961676, 0.273150,
		38.523132, 34.136986, 34.723938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147213, 34.614258, 35.036236>,  <38.539825, 34.810158, 34.532734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147213, 34.614258, 35.036236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017231, 34.326424, 34.790764>,  <38.939240, 34.153725, 34.643482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017231, 34.326424, 34.790764>,  <39.147213, 34.614258, 35.036236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017231, 34.326424, 34.790764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903169, -0.043657, -0.427060,
		0.280514, -0.693033, 0.664092,
		-0.324959, -0.719583, -0.613679,
		38.919743, 34.110550, 34.606659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517761, 34.079163, 35.238888>,  <39.147213, 34.614258, 35.036236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517761, 34.079163, 35.238888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370216, 34.023899, 34.871223>,  <39.281689, 33.990742, 34.650623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370216, 34.023899, 34.871223>,  <39.517761, 34.079163, 35.238888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370216, 34.023899, 34.871223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928591, -0.011411, -0.370929,
		0.040758, -0.990345, 0.132500,
		-0.368860, -0.138156, -0.919160,
		39.259560, 33.982452, 34.595474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141838, 34.019226, 35.610737>,  <39.517761, 34.079163, 35.238888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141838, 34.019226, 35.610737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213383, 34.139446, 35.985474>,  <40.256310, 34.211578, 36.210316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213383, 34.139446, 35.985474>,  <40.141838, 34.019226, 35.610737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213383, 34.139446, 35.985474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966422, 0.232220, 0.110011,
		-0.184490, -0.925063, 0.331997,
		0.178863, 0.300553, 0.936843,
		40.267040, 34.229610, 36.266525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703564, 33.952347, 35.025677>,  <40.141838, 34.019226, 35.610737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703564, 33.952347, 35.025677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866508, 33.590282, 34.977108>,  <40.964275, 33.373043, 34.947968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866508, 33.590282, 34.977108>,  <40.703564, 33.952347, 35.025677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866508, 33.590282, 34.977108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277593, 0.003943, -0.960691,
		0.870057, 0.425054, -0.249660,
		0.407361, -0.905159, -0.121423,
		40.988716, 33.318733, 34.940681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957783, 33.969513, 34.295811>,  <40.703564, 33.952347, 35.025677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957783, 33.969513, 34.295811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896599, 33.583984, 34.383125>,  <40.859890, 33.352669, 34.435516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896599, 33.583984, 34.383125>,  <40.957783, 33.969513, 34.295811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896599, 33.583984, 34.383125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397028, -0.142345, -0.906701,
		0.904970, -0.225356, -0.360892,
		-0.152959, -0.963822, 0.218291,
		40.850712, 33.294838, 34.448612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403084, 33.370731, 33.865162>,  <40.957783, 33.969513, 34.295811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403084, 33.370731, 33.865162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040981, 33.244038, 33.978432>,  <40.823719, 33.168022, 34.046394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040981, 33.244038, 33.978432>,  <41.403084, 33.370731, 33.865162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040981, 33.244038, 33.978432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252416, -0.135166, -0.958132,
		0.341752, -0.938833, 0.042410,
		-0.905258, -0.316738, 0.283170,
		40.769405, 33.149017, 34.063381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014885, 33.170918, 34.243858>,  <41.403084, 33.370731, 33.865162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014885, 33.170918, 34.243858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996334, 33.542614, 34.390476>,  <41.985203, 33.765633, 34.478447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996334, 33.542614, 34.390476>,  <42.014885, 33.170918, 34.243858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996334, 33.542614, 34.390476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414809, 0.315893, -0.853314,
		-0.908726, -0.191622, 0.370808,
		-0.046378, 0.929243, 0.366547,
		41.982422, 33.821388, 34.500439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701332, 33.162346, 34.581463>,  <42.014885, 33.170918, 34.243858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701332, 33.162346, 34.581463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880039, 32.806709, 34.541641>,  <42.987263, 32.593327, 34.517750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880039, 32.806709, 34.541641>,  <42.701332, 33.162346, 34.581463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880039, 32.806709, 34.541641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865298, 0.401159, 0.300550,
		-0.227281, -0.220418, 0.948556,
		0.446769, -0.889094, -0.099551,
		43.014069, 32.539982, 34.511776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148907, 33.133457, 35.068321>,  <42.701332, 33.162346, 34.581463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148907, 33.133457, 35.068321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315491, 32.863136, 34.825058>,  <43.415440, 32.700943, 34.679100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315491, 32.863136, 34.825058>,  <43.148907, 33.133457, 35.068321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315491, 32.863136, 34.825058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903173, 0.384139, 0.191612,
		0.104125, -0.629070, 0.770344,
		0.416457, -0.675802, -0.608157,
		43.440426, 32.660397, 34.642612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601254, 32.739815, 35.424950>,  <43.148907, 33.133457, 35.068321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601254, 32.739815, 35.424950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709713, 32.761875, 35.040565>,  <43.774788, 32.775112, 34.809937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709713, 32.761875, 35.040565>,  <43.601254, 32.739815, 35.424950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709713, 32.761875, 35.040565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822005, 0.506155, 0.260986,
		0.500786, -0.860678, 0.091912,
		0.271147, 0.055146, -0.960957,
		43.791058, 32.778419, 34.752277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379990, 32.634201, 35.337036>,  <43.601254, 32.739815, 35.424950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379990, 32.634201, 35.337036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317863, 32.748367, 34.958740>,  <44.280590, 32.816868, 34.731762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317863, 32.748367, 34.958740>,  <44.379990, 32.634201, 35.337036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317863, 32.748367, 34.958740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862384, 0.506133, 0.011123,
		0.481842, -0.813859, -0.324749,
		-0.155313, 0.285418, -0.945735,
		44.271271, 32.833992, 34.675018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.956715, 32.451611, 34.875763>,  <44.379990, 32.634201, 35.337036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.956715, 32.451611, 34.875763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.789021, 32.772923, 34.706539>,  <44.688404, 32.965710, 34.605003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.789021, 32.772923, 34.706539>,  <44.956715, 32.451611, 34.875763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.789021, 32.772923, 34.706539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901200, 0.424620, -0.086807,
		0.109909, -0.417655, -0.901934,
		-0.419235, 0.803282, -0.423061,
		44.663250, 33.013908, 34.579620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292255, 32.647125, 34.219368>,  <44.956715, 32.451611, 34.875763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292255, 32.647125, 34.219368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144787, 32.976734, 34.391441>,  <45.056305, 33.174500, 34.494686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144787, 32.976734, 34.391441>,  <45.292255, 32.647125, 34.219368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144787, 32.976734, 34.391441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928055, 0.352604, 0.119934,
		-0.052857, 0.443454, -0.894737,
		-0.368674, 0.824026, 0.430187,
		45.034184, 33.223942, 34.520496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.642303, 33.182339, 33.832855>,  <45.292255, 32.647125, 34.219368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.642303, 33.182339, 33.832855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.498325, 33.321392, 34.179173>,  <45.411938, 33.404823, 34.386963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.498325, 33.321392, 34.179173>,  <45.642303, 33.182339, 33.832855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.498325, 33.321392, 34.179173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899201, 0.376680, 0.222597,
		-0.248744, 0.858642, -0.448174,
		-0.359949, 0.347629, 0.865789,
		45.390339, 33.425682, 34.438908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.862133, 33.889065, 33.906666>,  <45.642303, 33.182339, 33.832855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.862133, 33.889065, 33.906666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.791210, 33.749180, 34.274635>,  <45.748657, 33.665249, 34.495419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.791210, 33.749180, 34.274635>,  <45.862133, 33.889065, 33.906666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.791210, 33.749180, 34.274635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746376, 0.561475, 0.357308,
		-0.641470, 0.749964, 0.161461,
		-0.177312, -0.349713, 0.919925,
		45.738018, 33.644264, 34.550613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.628319, 34.571404, 34.177612>,  <45.862133, 33.889065, 33.906666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.628319, 34.571404, 34.177612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747982, 34.267540, 34.408585>,  <45.819778, 34.085224, 34.547169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747982, 34.267540, 34.408585>,  <45.628319, 34.571404, 34.177612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747982, 34.267540, 34.408585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682091, 0.593425, 0.427315,
		-0.667274, 0.266025, 0.695683,
		0.299160, -0.759656, 0.577431,
		45.837730, 34.039642, 34.581814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.620995, 34.708157, 34.915012>,  <45.628319, 34.571404, 34.177612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.620995, 34.708157, 34.915012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.902451, 34.439129, 34.823322>,  <46.071323, 34.277714, 34.768307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.902451, 34.439129, 34.823322>,  <45.620995, 34.708157, 34.915012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.902451, 34.439129, 34.823322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704017, 0.616224, 0.353027,
		-0.096180, -0.409782, 0.907099,
		0.703640, -0.672567, -0.229225,
		46.113544, 34.237358, 34.754555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.038887, 34.757534, 35.502872>,  <45.620995, 34.708157, 34.915012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.038887, 34.757534, 35.502872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240280, 34.656754, 35.172291>,  <46.361118, 34.596287, 34.973942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240280, 34.656754, 35.172291>,  <46.038887, 34.757534, 35.502872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.240280, 34.656754, 35.172291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609939, 0.781131, 0.133450,
		0.611944, -0.571275, 0.546962,
		0.503486, -0.251950, -0.826452,
		46.391327, 34.581169, 34.924355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.731804, 34.955082, 35.350182>,  <46.038887, 34.757534, 35.502872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.731804, 34.955082, 35.350182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.959862, 34.696819, 35.553379>,  <47.096695, 34.541862, 35.675297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.959862, 34.696819, 35.553379>,  <46.731804, 34.955082, 35.350182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.959862, 34.696819, 35.553379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774395, 0.628829, -0.069903,
		-0.274311, 0.433246, 0.858517,
		0.570145, -0.645657, 0.507998,
		47.130905, 34.503120, 35.705780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.490196, 35.069660, 35.319378>,  <46.731804, 34.955082, 35.350182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.490196, 35.069660, 35.319378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.641300, 35.038082, 34.950363>,  <47.731964, 35.019135, 34.728954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.641300, 35.038082, 34.950363>,  <47.490196, 35.069660, 35.319378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.641300, 35.038082, 34.950363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452387, 0.853601, -0.258287,
		0.807864, 0.514912, 0.286744,
		0.377760, -0.078941, -0.922532,
		47.754627, 35.014400, 34.673603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.856144, 30.962639, 26.594490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.587292, 30.738119, 26.401333>,  <36.425980, 30.603407, 26.285439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.587292, 30.738119, 26.401333>,  <36.856144, 30.962639, 26.594490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587292, 30.738119, 26.401333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635562, 0.102759, 0.765181,
		-0.379873, 0.821209, -0.425807,
		-0.672129, -0.561299, -0.482894,
		36.385654, 30.569729, 26.256464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243965, 31.413811, 26.701277>,  <36.856144, 30.962639, 26.594490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243965, 31.413811, 26.701277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.161766, 31.033001, 26.610573>,  <36.112446, 30.804516, 26.556150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.161766, 31.033001, 26.610573>,  <36.243965, 31.413811, 26.701277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161766, 31.033001, 26.610573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691856, -0.022552, 0.721683,
		-0.692173, 0.305192, -0.654029,
		-0.205502, -0.952023, -0.226759,
		36.100117, 30.747395, 26.542545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598488, 31.342648, 26.906271>,  <36.243965, 31.413811, 26.701277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598488, 31.342648, 26.906271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.706833, 30.958406, 26.881369>,  <35.771839, 30.727861, 26.866428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.706833, 30.958406, 26.881369>,  <35.598488, 31.342648, 26.906271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706833, 30.958406, 26.881369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516831, -0.199682, 0.832474,
		-0.812108, -0.193311, -0.550555,
		0.270862, -0.960603, -0.062255,
		35.788090, 30.670225, 26.862692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007690, 30.953022, 26.993107>,  <35.598488, 31.342648, 26.906271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007690, 30.953022, 26.993107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.295895, 30.689318, 27.079124>,  <35.468815, 30.531096, 27.130735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.295895, 30.689318, 27.079124>,  <35.007690, 30.953022, 26.993107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295895, 30.689318, 27.079124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493261, -0.269276, 0.827154,
		-0.487404, -0.702044, -0.519203,
		0.720508, -0.659261, 0.215045,
		35.512047, 30.491539, 27.143639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641815, 30.415157, 27.213249>,  <35.007690, 30.953022, 26.993107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641815, 30.415157, 27.213249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.012234, 30.311054, 27.322584>,  <35.234486, 30.248592, 27.388186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.012234, 30.311054, 27.322584>,  <34.641815, 30.415157, 27.213249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012234, 30.311054, 27.322584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361601, -0.404312, 0.840105,
		-0.108127, -0.876812, -0.468519,
		0.926042, -0.260255, 0.273339,
		35.290047, 30.232977, 27.404585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602615, 29.741194, 27.337097>,  <34.641815, 30.415157, 27.213249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602615, 29.741194, 27.337097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.910210, 29.901844, 27.536037>,  <35.094765, 29.998234, 27.655401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.910210, 29.901844, 27.536037>,  <34.602615, 29.741194, 27.337097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910210, 29.901844, 27.536037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289242, -0.475216, 0.830968,
		0.570089, -0.782857, -0.249267,
		0.768985, 0.401627, 0.497351,
		35.140903, 30.022331, 27.685244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806892, 29.177433, 27.840027>,  <34.602615, 29.741194, 27.337097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806892, 29.177433, 27.840027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.948517, 29.534164, 27.952658>,  <35.033493, 29.748203, 28.020235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.948517, 29.534164, 27.952658>,  <34.806892, 29.177433, 27.840027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948517, 29.534164, 27.952658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210970, -0.217153, 0.953067,
		0.911116, -0.396848, 0.111263,
		0.354061, 0.891827, 0.281575,
		35.054737, 29.801712, 28.037130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251385, 29.031475, 28.475256>,  <34.806892, 29.177433, 27.840027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251385, 29.031475, 28.475256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.160099, 29.420780, 28.485653>,  <35.105328, 29.654364, 28.491892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.160099, 29.420780, 28.485653>,  <35.251385, 29.031475, 28.475256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160099, 29.420780, 28.485653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260592, -0.086783, 0.961541,
		0.938090, 0.212659, 0.273430,
		-0.228210, 0.973265, 0.025992,
		35.091637, 29.712759, 28.493450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476856, 29.291603, 29.188915>,  <35.251385, 29.031475, 28.475256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476856, 29.291603, 29.188915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.205620, 29.563206, 29.076384>,  <35.042877, 29.726166, 29.008865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.205620, 29.563206, 29.076384>,  <35.476856, 29.291603, 29.188915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205620, 29.563206, 29.076384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397918, -0.017341, 0.917257,
		0.617943, 0.733930, 0.281947,
		-0.678091, 0.679004, -0.281328,
		35.002193, 29.766907, 28.991985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375629, 29.712881, 29.738630>,  <35.476856, 29.291603, 29.188915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375629, 29.712881, 29.738630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.044052, 29.814960, 29.539541>,  <34.845104, 29.876207, 29.420088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.044052, 29.814960, 29.539541>,  <35.375629, 29.712881, 29.738630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044052, 29.814960, 29.539541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429301, 0.280132, 0.858619,
		0.358546, 0.925419, -0.122657,
		-0.828943, 0.255197, -0.497723,
		34.795368, 29.891520, 29.390224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286850, 30.379002, 29.861116>,  <35.375629, 29.712881, 29.738630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286850, 30.379002, 29.861116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.934357, 30.218569, 29.761063>,  <34.722862, 30.122309, 29.701031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.934357, 30.218569, 29.761063>,  <35.286850, 30.379002, 29.861116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934357, 30.218569, 29.761063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409953, 0.385059, 0.826842,
		-0.235313, 0.831182, -0.503750,
		-0.881230, -0.401081, -0.250136,
		34.669987, 30.098244, 29.686022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736626, 30.826279, 30.161077>,  <35.286850, 30.379002, 29.861116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736626, 30.826279, 30.161077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.531807, 30.504021, 30.041922>,  <34.408916, 30.310665, 29.970428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.531807, 30.504021, 30.041922>,  <34.736626, 30.826279, 30.161077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531807, 30.504021, 30.041922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573687, 0.062656, 0.816674,
		-0.639286, 0.589074, -0.494272,
		-0.512051, -0.805646, -0.297889,
		34.378193, 30.262327, 29.952555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033443, 31.061943, 30.131981>,  <34.736626, 30.826279, 30.161077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033443, 31.061943, 30.131981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.097492, 30.672216, 30.195320>,  <34.135921, 30.438381, 30.233324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.097492, 30.672216, 30.195320>,  <34.033443, 31.061943, 30.131981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097492, 30.672216, 30.195320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349355, 0.094097, 0.932254,
		-0.923208, -0.204591, -0.325315,
		0.160119, -0.974314, 0.158346,
		34.145527, 30.379923, 30.242825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586456, 30.988146, 30.617701>,  <34.033443, 31.061943, 30.131981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586456, 30.988146, 30.617701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.792938, 30.647650, 30.655478>,  <33.916828, 30.443352, 30.678144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.792938, 30.647650, 30.655478>,  <33.586456, 30.988146, 30.617701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792938, 30.647650, 30.655478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313325, -0.085068, 0.945828,
		-0.797095, -0.517833, -0.310628,
		0.516206, -0.851242, 0.094443,
		33.947800, 30.392277, 30.683811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254128, 30.690647, 31.128111>,  <33.586456, 30.988146, 30.617701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254128, 30.690647, 31.128111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.601707, 30.492914, 31.137560>,  <33.810257, 30.374275, 31.143229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.601707, 30.492914, 31.137560>,  <33.254128, 30.690647, 31.128111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601707, 30.492914, 31.137560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100773, -0.130010, 0.986378,
		-0.484529, -0.859495, -0.162788,
		0.868952, -0.494333, 0.023620,
		33.862392, 30.344614, 31.144646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122940, 30.107868, 31.462685>,  <33.254128, 30.690647, 31.128111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122940, 30.107868, 31.462685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.510410, 30.181805, 31.529024>,  <33.742893, 30.226168, 31.568829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.510410, 30.181805, 31.529024>,  <33.122940, 30.107868, 31.462685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510410, 30.181805, 31.529024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158045, -0.056291, 0.985826,
		0.191559, -0.981155, -0.025314,
		0.968673, 0.184843, 0.165850,
		33.801014, 30.237257, 31.578779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380154, 29.631054, 32.035721>,  <33.122940, 30.107868, 31.462685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380154, 29.631054, 32.035721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.633369, 29.940687, 32.032619>,  <33.785297, 30.126467, 32.030758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.633369, 29.940687, 32.032619>,  <33.380154, 29.631054, 32.035721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633369, 29.940687, 32.032619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012958, 0.020607, 0.999704,
		0.774015, -0.632747, 0.023075,
		0.633035, 0.774084, -0.007751,
		33.823280, 30.172913, 32.030293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705589, 29.624525, 32.651436>,  <33.380154, 29.631054, 32.035721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705589, 29.624525, 32.651436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.825413, 29.988377, 32.536312>,  <33.897308, 30.206688, 32.467236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.825413, 29.988377, 32.536312>,  <33.705589, 29.624525, 32.651436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825413, 29.988377, 32.536312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014568, 0.297269, 0.954683,
		0.953966, -0.290177, 0.075798,
		0.299560, 0.909631, -0.287812,
		33.915279, 30.261267, 32.449970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147041, 29.849276, 33.159538>,  <33.705589, 29.624525, 32.651436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147041, 29.849276, 33.159538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.095814, 30.186586, 32.950741>,  <34.065079, 30.388973, 32.825462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.095814, 30.186586, 32.950741>,  <34.147041, 29.849276, 33.159538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095814, 30.186586, 32.950741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098146, 0.512973, 0.852776,
		0.986897, 0.160444, 0.017070,
		-0.128067, 0.843277, -0.521998,
		34.057392, 30.439569, 32.794140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661163, 30.268671, 33.351585>,  <34.147041, 29.849276, 33.159538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661163, 30.268671, 33.351585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.375580, 30.514357, 33.217117>,  <34.204231, 30.661768, 33.136436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.375580, 30.514357, 33.217117>,  <34.661163, 30.268671, 33.351585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375580, 30.514357, 33.217117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086398, 0.553718, 0.828210,
		0.694839, 0.562263, -0.448398,
		-0.713957, 0.614213, -0.336166,
		34.161392, 30.698620, 33.116268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871426, 30.908724, 33.523788>,  <34.661163, 30.268671, 33.351585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871426, 30.908724, 33.523788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481594, 30.976707, 33.465385>,  <34.247696, 31.017498, 33.430344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481594, 30.976707, 33.465385>,  <34.871426, 30.908724, 33.523788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481594, 30.976707, 33.465385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031635, 0.540722, 0.840606,
		0.221818, 0.823852, -0.521598,
		-0.974575, 0.169961, -0.146004,
		34.189220, 31.027697, 33.421585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766228, 31.620192, 33.584068>,  <34.871426, 30.908724, 33.523788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766228, 31.620192, 33.584068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.415794, 31.449116, 33.673115>,  <34.205536, 31.346470, 33.726543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.415794, 31.449116, 33.673115>,  <34.766228, 31.620192, 33.584068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415794, 31.449116, 33.673115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061469, 0.557007, 0.828230,
		-0.478223, 0.711916, -0.514274,
		-0.876084, -0.427691, 0.222613,
		34.152969, 31.320808, 33.739899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012012, 32.325748, 33.666519>,  <34.766228, 31.620192, 33.584068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012012, 32.325748, 33.666519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.248219, 32.490334, 33.944221>,  <35.389942, 32.589085, 34.110844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.248219, 32.490334, 33.944221>,  <35.012012, 32.325748, 33.666519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248219, 32.490334, 33.944221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546260, 0.429444, -0.719151,
		-0.594050, 0.803912, 0.028824,
		0.590512, 0.411466, 0.694256,
		35.425373, 32.613773, 34.152500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920406, 33.029373, 33.514263>,  <35.012012, 32.325748, 33.666519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920406, 33.029373, 33.514263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.276684, 32.965683, 33.684586>,  <35.490452, 32.927467, 33.786781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.276684, 32.965683, 33.684586>,  <34.920406, 33.029373, 33.514263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276684, 32.965683, 33.684586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449987, 0.441973, -0.775997,
		-0.064635, 0.882783, 0.465313,
		0.890693, -0.159228, 0.425808,
		35.543892, 32.917915, 33.812328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297714, 33.651466, 33.437683>,  <34.920406, 33.029373, 33.514263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297714, 33.651466, 33.437683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.572369, 33.365757, 33.491856>,  <35.737160, 33.194332, 33.524357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.572369, 33.365757, 33.491856>,  <35.297714, 33.651466, 33.437683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572369, 33.365757, 33.491856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510847, 0.341495, -0.788934,
		0.517269, 0.610893, 0.599369,
		0.686635, -0.714277, 0.135428,
		35.778358, 33.151474, 33.532482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846649, 33.907845, 33.246639>,  <35.297714, 33.651466, 33.437683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846649, 33.907845, 33.246639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954498, 33.522678, 33.242657>,  <36.019207, 33.291580, 33.240265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954498, 33.522678, 33.242657>,  <35.846649, 33.907845, 33.246639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954498, 33.522678, 33.242657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483103, 0.144205, -0.863607,
		0.833016, 0.228035, 0.504067,
		0.269622, -0.962915, -0.009961,
		36.035385, 33.233803, 33.239670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533974, 33.933594, 32.927864>,  <35.846649, 33.907845, 33.246639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533974, 33.933594, 32.927864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.392006, 33.561062, 32.895226>,  <36.306824, 33.337543, 32.875641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.392006, 33.561062, 32.895226>,  <36.533974, 33.933594, 32.927864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392006, 33.561062, 32.895226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446910, -0.092351, -0.889799,
		0.821160, -0.352275, 0.448998,
		-0.354920, -0.931329, -0.081601,
		36.285530, 33.281662, 32.870747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089989, 33.620415, 32.586071>,  <36.533974, 33.933594, 32.927864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089989, 33.620415, 32.586071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.755272, 33.409836, 32.525883>,  <36.554443, 33.283489, 32.489769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.755272, 33.409836, 32.525883>,  <37.089989, 33.620415, 32.586071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755272, 33.409836, 32.525883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174748, 0.003668, -0.984606,
		0.518891, -0.850202, 0.088926,
		-0.836789, -0.526444, -0.150475,
		36.504234, 33.251904, 32.480740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329746, 33.076595, 32.126987>,  <37.089989, 33.620415, 32.586071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329746, 33.076595, 32.126987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.933002, 33.096897, 32.080261>,  <36.694958, 33.109077, 32.052227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.933002, 33.096897, 32.080261>,  <37.329746, 33.076595, 32.126987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933002, 33.096897, 32.080261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113896, -0.056997, -0.991856,
		-0.056997, -0.997083, 0.050753,
		0.991856, -0.050753, 0.116812,
		36.635445, 33.112122, 32.045219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208157, 32.537098, 31.701389>,  <37.329746, 33.076595, 32.126987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208157, 32.537098, 31.701389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.874146, 32.755665, 31.675591>,  <36.673740, 32.886803, 31.660112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.874146, 32.755665, 31.675591>,  <37.208157, 32.537098, 31.701389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874146, 32.755665, 31.675591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001374, -0.115148, -0.993347,
		-0.550205, -0.829562, 0.095401,
		-0.835029, 0.546413, -0.064495,
		36.623638, 32.919590, 31.656242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788158, 32.241405, 31.088623>,  <37.208157, 32.537098, 31.701389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788158, 32.241405, 31.088623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.605415, 32.593960, 31.136688>,  <36.495770, 32.805492, 31.165527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.605415, 32.593960, 31.136688>,  <36.788158, 32.241405, 31.088623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605415, 32.593960, 31.136688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192562, 0.033890, -0.980699,
		-0.868445, -0.471183, 0.154238,
		-0.456862, 0.881384, 0.120163,
		36.468357, 32.858376, 31.172737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025192, 32.282162, 30.647083>,  <36.788158, 32.241405, 31.088623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025192, 32.282162, 30.647083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.181759, 32.643333, 30.718092>,  <36.275700, 32.860035, 30.760696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.181759, 32.643333, 30.718092>,  <36.025192, 32.282162, 30.647083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181759, 32.643333, 30.718092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133018, 0.246404, -0.959995,
		-0.910548, 0.352146, 0.216553,
		0.391418, 0.902928, 0.177520,
		36.299183, 32.914211, 30.771349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662315, 32.679726, 30.216702>,  <36.025192, 32.282162, 30.647083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662315, 32.679726, 30.216702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.983704, 32.902439, 30.301016>,  <36.176537, 33.036068, 30.351604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.983704, 32.902439, 30.301016>,  <35.662315, 32.679726, 30.216702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983704, 32.902439, 30.301016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089439, 0.237151, -0.967347,
		-0.588589, 0.796086, 0.140745,
		0.803470, 0.556782, 0.210786,
		36.224743, 33.069473, 30.364252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663910, 33.211033, 29.795408>,  <35.662315, 32.679726, 30.216702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663910, 33.211033, 29.795408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050018, 33.170162, 29.891579>,  <36.281685, 33.145638, 29.949280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050018, 33.170162, 29.891579>,  <35.663910, 33.211033, 29.795408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050018, 33.170162, 29.891579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248841, 0.079514, -0.965275,
		0.079514, 0.991583, 0.102179,
		0.965275, -0.102179, 0.240424,
		36.339600, 33.139507, 29.963705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999626, 33.676449, 29.432564>,  <35.663910, 33.211033, 29.795408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999626, 33.676449, 29.432564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.267727, 33.396095, 29.530149>,  <36.428589, 33.227882, 29.588701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.267727, 33.396095, 29.530149>,  <35.999626, 33.676449, 29.432564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267727, 33.396095, 29.530149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279715, -0.065910, -0.957818,
		0.687402, 0.710220, 0.151873,
		0.670252, -0.700887, 0.243966,
		36.468803, 33.185829, 29.603340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718967, 33.956703, 29.173464>,  <35.999626, 33.676449, 29.432564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718967, 33.956703, 29.173464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.727306, 33.560005, 29.224077>,  <36.732311, 33.321987, 29.254446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.727306, 33.560005, 29.224077>,  <36.718967, 33.956703, 29.173464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727306, 33.560005, 29.224077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383700, -0.108934, -0.917010,
		0.923222, 0.067670, 0.378261,
		0.020848, -0.991743, 0.126536,
		36.733562, 33.262482, 29.262037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333878, 33.830261, 29.031071>,  <36.718967, 33.956703, 29.173464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333878, 33.830261, 29.031071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.158939, 33.472691, 28.991837>,  <37.053974, 33.258148, 28.968296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.158939, 33.472691, 28.991837>,  <37.333878, 33.830261, 29.031071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158939, 33.472691, 28.991837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337495, -0.062057, -0.939279,
		0.833561, -0.443895, 0.328837,
		-0.437348, -0.893927, -0.098084,
		37.027737, 33.204514, 28.962412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857044, 33.313118, 28.920883>,  <37.333878, 33.830261, 29.031071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857044, 33.313118, 28.920883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510342, 33.172718, 28.779158>,  <37.302322, 33.088478, 28.694122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510342, 33.172718, 28.779158>,  <37.857044, 33.313118, 28.920883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510342, 33.172718, 28.779158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425526, -0.149918, -0.892442,
		0.260125, -0.924298, 0.279300,
		-0.866754, -0.350996, -0.354315,
		37.250317, 33.067421, 28.672863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997131, 32.659023, 28.582983>,  <37.857044, 33.313118, 28.920883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997131, 32.659023, 28.582983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.656723, 32.802319, 28.429394>,  <37.452480, 32.888294, 28.337240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.656723, 32.802319, 28.429394>,  <37.997131, 32.659023, 28.582983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656723, 32.802319, 28.429394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261676, -0.344655, -0.901520,
		-0.455295, -0.867687, 0.199567,
		-0.851018, 0.358236, -0.383972,
		37.401417, 32.909790, 28.314201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733662, 32.076752, 28.222651>,  <37.997131, 32.659023, 28.582983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733662, 32.076752, 28.222651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.512966, 32.369263, 28.062241>,  <37.380547, 32.544769, 27.965996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.512966, 32.369263, 28.062241>,  <37.733662, 32.076752, 28.222651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512966, 32.369263, 28.062241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210654, -0.343053, -0.915390,
		-0.806974, -0.589535, 0.035231,
		-0.551741, 0.731274, -0.401023,
		37.347443, 32.588646, 27.941933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.395432, 31.708696, 27.676512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.334122, 32.084999, 27.555529>,  <37.297337, 32.310780, 27.482939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.334122, 32.084999, 27.555529>,  <37.395432, 31.708696, 27.676512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334122, 32.084999, 27.555529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067306, -0.295427, -0.952992,
		-0.985889, -0.166424, -0.018038,
		-0.153272, 0.940758, -0.302459,
		37.288139, 32.367226, 27.464790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863335, 31.790144, 26.950598>,  <37.395432, 31.708696, 27.676512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863335, 31.790144, 26.950598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.088604, 32.114361, 27.014923>,  <37.223766, 32.308891, 27.053518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.088604, 32.114361, 27.014923>,  <36.863335, 31.790144, 26.950598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088604, 32.114361, 27.014923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311823, -0.028231, -0.949721,
		-0.765248, 0.585001, -0.268644,
		0.563171, 0.810541, 0.160813,
		37.257557, 32.357525, 27.063168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786392, 32.125423, 26.357981>,  <36.863335, 31.790144, 26.950598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786392, 32.125423, 26.357981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.099239, 32.319973, 26.513788>,  <37.286949, 32.436703, 26.607273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.099239, 32.319973, 26.513788>,  <36.786392, 32.125423, 26.357981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099239, 32.319973, 26.513788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412341, 0.064699, -0.908729,
		-0.467186, 0.871351, -0.149951,
		0.782120, 0.486376, 0.389520,
		37.333874, 32.465885, 26.630644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945801, 32.705776, 25.990791>,  <36.786392, 32.125423, 26.357981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945801, 32.705776, 25.990791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.295017, 32.616699, 26.164318>,  <37.504547, 32.563251, 26.268435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.295017, 32.616699, 26.164318>,  <36.945801, 32.705776, 25.990791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295017, 32.616699, 26.164318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446572, 0.007792, -0.894714,
		0.195869, 0.974857, 0.106253,
		0.873046, -0.222697, 0.433817,
		37.556931, 32.549889, 26.294464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480961, 32.922695, 25.572729>,  <36.945801, 32.705776, 25.990791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480961, 32.922695, 25.572729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.719677, 32.687813, 25.791464>,  <37.862907, 32.546883, 25.922705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.719677, 32.687813, 25.791464>,  <37.480961, 32.922695, 25.572729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719677, 32.687813, 25.791464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547403, -0.200340, -0.812536,
		0.586682, 0.784250, 0.201880,
		0.596787, -0.587210, 0.546837,
		37.898712, 32.511650, 25.955515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168308, 32.966492, 25.267542>,  <37.480961, 32.922695, 25.572729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168308, 32.966492, 25.267542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.211842, 32.631359, 25.481529>,  <38.237961, 32.430279, 25.609922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.211842, 32.631359, 25.481529>,  <38.168308, 32.966492, 25.267542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211842, 32.631359, 25.481529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550142, -0.397472, -0.734412,
		0.827949, 0.374238, 0.417668,
		0.108833, -0.837832, 0.534970,
		38.244492, 32.380009, 25.642021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907551, 32.779274, 25.142424>,  <38.168308, 32.966492, 25.267542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907551, 32.779274, 25.142424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.728588, 32.452816, 25.288706>,  <38.621212, 32.256943, 25.376476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.728588, 32.452816, 25.288706>,  <38.907551, 32.779274, 25.142424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728588, 32.452816, 25.288706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505846, -0.568155, -0.649092,
		0.737529, -0.105415, 0.667037,
		-0.447404, -0.816142, 0.365707,
		38.594368, 32.207973, 25.398418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498135, 32.373524, 25.369387>,  <38.907551, 32.779274, 25.142424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498135, 32.373524, 25.369387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.180122, 32.137970, 25.311232>,  <38.989315, 31.996637, 25.276339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.180122, 32.137970, 25.311232>,  <39.498135, 32.373524, 25.369387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180122, 32.137970, 25.311232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567638, -0.637845, -0.520519,
		0.213791, -0.496358, 0.841381,
		-0.795035, -0.588882, -0.145386,
		38.941612, 31.961306, 25.267616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682346, 31.730145, 25.566114>,  <39.498135, 32.373524, 25.369387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682346, 31.730145, 25.566114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.374214, 31.692268, 25.313885>,  <39.189335, 31.669542, 25.162546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.374214, 31.692268, 25.313885>,  <39.682346, 31.730145, 25.566114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374214, 31.692268, 25.313885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560691, -0.571548, -0.599132,
		-0.303673, -0.815087, 0.493371,
		-0.770330, -0.094689, -0.630576,
		39.143116, 31.663862, 25.124712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629276, 31.027441, 25.308393>,  <39.682346, 31.730145, 25.566114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629276, 31.027441, 25.308393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.436726, 31.239220, 25.028976>,  <39.321194, 31.366287, 24.861326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.436726, 31.239220, 25.028976>,  <39.629276, 31.027441, 25.308393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436726, 31.239220, 25.028976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451606, -0.533219, -0.715352,
		-0.751219, -0.659819, 0.017576,
		-0.481375, 0.529449, -0.698543,
		39.292313, 31.398054, 24.819414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436314, 30.522955, 24.867970>,  <39.629276, 31.027441, 25.308393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436314, 30.522955, 24.867970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.441212, 30.867170, 24.664274>,  <39.444153, 31.073700, 24.542057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.441212, 30.867170, 24.664274>,  <39.436314, 30.522955, 24.867970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441212, 30.867170, 24.664274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637387, -0.399122, -0.659121,
		-0.770447, -0.316509, -0.553384,
		0.012250, 0.860537, -0.509240,
		39.444885, 31.125332, 24.511501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520741, 30.263025, 24.195776>,  <39.436314, 30.522955, 24.867970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520741, 30.263025, 24.195776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.573273, 30.658300, 24.164190>,  <39.604794, 30.895466, 24.145239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.573273, 30.658300, 24.164190>,  <39.520741, 30.263025, 24.195776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573273, 30.658300, 24.164190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435512, -0.129068, -0.890882,
		-0.890551, 0.082614, -0.447319,
		0.131334, 0.988188, -0.078962,
		39.612675, 30.954758, 24.140501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141403, 30.574226, 23.588989>,  <39.520741, 30.263025, 24.195776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141403, 30.574226, 23.588989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.469276, 30.786846, 23.674389>,  <39.666000, 30.914417, 23.725630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.469276, 30.786846, 23.674389>,  <39.141403, 30.574226, 23.588989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469276, 30.786846, 23.674389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349122, -0.168085, -0.921879,
		-0.454138, 0.830182, -0.323351,
		0.819679, 0.531549, 0.213501,
		39.715179, 30.946310, 23.738440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370140, 30.930965, 22.975870>,  <39.141403, 30.574226, 23.588989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370140, 30.930965, 22.975870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.700794, 30.970613, 23.197447>,  <39.899185, 30.994402, 23.330393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.700794, 30.970613, 23.197447>,  <39.370140, 30.930965, 22.975870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700794, 30.970613, 23.197447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557010, -0.284248, -0.780348,
		0.080108, 0.953613, -0.290180,
		0.826633, 0.099121, 0.553943,
		39.948784, 31.000349, 23.363630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770283, 31.346573, 22.594980>,  <39.370140, 30.930965, 22.975870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770283, 31.346573, 22.594980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.028168, 31.162455, 22.839102>,  <40.182899, 31.051983, 22.985575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.028168, 31.162455, 22.839102>,  <39.770283, 31.346573, 22.594980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028168, 31.162455, 22.839102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557421, -0.263242, -0.787392,
		0.523090, 0.847839, 0.086863,
		0.644716, -0.460296, 0.610303,
		40.221584, 31.024366, 23.022192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386021, 31.568487, 22.319271>,  <39.770283, 31.346573, 22.594980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386021, 31.568487, 22.319271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.447868, 31.238926, 22.537363>,  <40.484978, 31.041189, 22.668219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.447868, 31.238926, 22.537363>,  <40.386021, 31.568487, 22.319271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447868, 31.238926, 22.537363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609665, -0.354692, -0.708874,
		0.777433, 0.442014, 0.447462,
		0.154620, -0.823904, 0.545229,
		40.494255, 30.991755, 22.700932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104378, 31.431940, 22.398752>,  <40.386021, 31.568487, 22.319271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104378, 31.431940, 22.398752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.941700, 31.069790, 22.447577>,  <40.844093, 30.852501, 22.476871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.941700, 31.069790, 22.447577>,  <41.104378, 31.431940, 22.398752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941700, 31.069790, 22.447577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725513, -0.401280, -0.559111,
		0.555185, -0.138831, 0.820058,
		-0.406695, -0.905373, 0.122061,
		40.819691, 30.798178, 22.484194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640568, 31.004250, 22.431732>,  <41.104378, 31.431940, 22.398752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640568, 31.004250, 22.431732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.353069, 30.746071, 22.328348>,  <41.180569, 30.591164, 22.266317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.353069, 30.746071, 22.328348>,  <41.640568, 31.004250, 22.431732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353069, 30.746071, 22.328348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634121, -0.456106, -0.624386,
		0.285122, -0.612671, 0.737116,
		-0.718746, -0.645447, -0.258462,
		41.137447, 30.552437, 22.250809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036163, 30.348822, 22.314800>,  <41.640568, 31.004250, 22.431732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036163, 30.348822, 22.314800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.674503, 30.299946, 22.151052>,  <41.457508, 30.270620, 22.052805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.674503, 30.299946, 22.151052>,  <42.036163, 30.348822, 22.314800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674503, 30.299946, 22.151052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413838, -0.488421, -0.768234,
		-0.106072, -0.864010, 0.492174,
		-0.904150, -0.122192, -0.409368,
		41.403259, 30.263288, 22.028242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073383, 29.604242, 22.106701>,  <42.036163, 30.348822, 22.314800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073383, 29.604242, 22.106701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.785305, 29.778437, 21.890675>,  <41.612457, 29.882954, 21.761059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.785305, 29.778437, 21.890675>,  <42.073383, 29.604242, 22.106701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785305, 29.778437, 21.890675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410820, -0.359595, -0.837805,
		-0.559058, -0.825253, 0.080072,
		-0.720194, 0.435487, -0.540065,
		41.569248, 29.909082, 21.728655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830940, 29.077757, 21.617048>,  <42.073383, 29.604242, 22.106701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830940, 29.077757, 21.617048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.695309, 29.417318, 21.454870>,  <41.613930, 29.621056, 21.357563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.695309, 29.417318, 21.454870>,  <41.830940, 29.077757, 21.617048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695309, 29.417318, 21.454870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228613, -0.343702, -0.910827,
		-0.912557, -0.401533, -0.077528,
		-0.339081, 0.848905, -0.405443,
		41.593586, 29.671989, 21.333237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354649, 28.845335, 21.124998>,  <41.830940, 29.077757, 21.617048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354649, 28.845335, 21.124998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.445633, 29.218998, 21.015007>,  <41.500225, 29.443195, 20.949013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.445633, 29.218998, 21.015007>,  <41.354649, 28.845335, 21.124998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445633, 29.218998, 21.015007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182712, -0.318307, -0.930213,
		-0.956492, 0.161345, -0.243084,
		0.227461, 0.934156, -0.274979,
		41.513870, 29.499245, 20.932514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857891, 29.070513, 20.534935>,  <41.354649, 28.845335, 21.124998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857891, 29.070513, 20.534935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.227341, 29.223753, 20.539768>,  <41.449013, 29.315697, 20.542667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.227341, 29.223753, 20.539768>,  <40.857891, 29.070513, 20.534935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227341, 29.223753, 20.539768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205556, -0.468477, -0.859230,
		-0.323512, 0.796092, -0.511447,
		0.923627, 0.383102, 0.012084,
		41.504429, 29.338684, 20.543394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008720, 28.847185, 19.884048>,  <40.857891, 29.070513, 20.534935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008720, 28.847185, 19.884048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.313572, 29.062206, 20.028381>,  <41.496483, 29.191219, 20.114981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.313572, 29.062206, 20.028381>,  <41.008720, 28.847185, 19.884048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313572, 29.062206, 20.028381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582492, -0.326049, -0.744577,
		-0.282599, 0.777645, -0.561611,
		0.762129, 0.537551, 0.360831,
		41.542210, 29.223471, 20.136631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636379, 28.075155, 19.918556>,  <41.008720, 28.847185, 19.884048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636379, 28.075155, 19.918556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.297077, 27.871792, 19.977861>,  <40.093494, 27.749773, 20.013445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.297077, 27.871792, 19.977861>,  <40.636379, 28.075155, 19.918556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297077, 27.871792, 19.977861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332394, 0.729066, 0.598311,
		-0.412280, 0.458240, -0.787427,
		-0.848257, -0.508408, 0.148263,
		40.042599, 27.719269, 20.022341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004391, 28.536446, 19.737505>,  <40.636379, 28.075155, 19.918556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004391, 28.536446, 19.737505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.876781, 28.221922, 19.949144>,  <39.800217, 28.033209, 20.076128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.876781, 28.221922, 19.949144>,  <40.004391, 28.536446, 19.737505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876781, 28.221922, 19.949144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590260, 0.601621, 0.538187,
		-0.741498, -0.140616, -0.656054,
		-0.319018, -0.786308, 0.529101,
		39.781075, 27.986031, 20.107874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212124, 28.548952, 19.737106>,  <40.004391, 28.536446, 19.737505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212124, 28.548952, 19.737106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.322670, 28.315228, 20.042316>,  <39.388996, 28.174994, 20.225443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.322670, 28.315228, 20.042316>,  <39.212124, 28.548952, 19.737106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322670, 28.315228, 20.042316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669373, 0.452671, 0.589092,
		-0.689611, -0.673550, -0.266019,
		0.276364, -0.584311, 0.763023,
		39.405579, 28.139935, 20.271223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637703, 28.315054, 19.990025>,  <39.212124, 28.548952, 19.737106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637703, 28.315054, 19.990025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.874043, 28.269926, 20.309566>,  <39.015846, 28.242849, 20.501291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.874043, 28.269926, 20.309566>,  <38.637703, 28.315054, 19.990025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874043, 28.269926, 20.309566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741353, 0.314693, 0.592760,
		-0.318270, -0.942465, 0.102295,
		0.590847, -0.112821, 0.798857,
		39.051296, 28.236080, 20.549223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147488, 28.169956, 20.490774>,  <38.637703, 28.315054, 19.990025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147488, 28.169956, 20.490774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.469521, 28.240953, 20.717171>,  <38.662739, 28.283552, 20.853008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.469521, 28.240953, 20.717171>,  <38.147488, 28.169956, 20.490774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469521, 28.240953, 20.717171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592475, 0.194497, 0.781757,
		0.028673, -0.964711, 0.261746,
		0.805078, 0.177493, 0.565990,
		38.711044, 28.294201, 20.886967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082527, 27.824451, 21.188494>,  <38.147488, 28.169956, 20.490774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082527, 27.824451, 21.188494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.351044, 28.118576, 21.225760>,  <38.512154, 28.295052, 21.248119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.351044, 28.118576, 21.225760>,  <38.082527, 27.824451, 21.188494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351044, 28.118576, 21.225760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523011, 0.380866, 0.762496,
		0.525191, -0.560584, 0.640250,
		0.671292, 0.735314, 0.093164,
		38.552433, 28.339170, 21.253710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169498, 27.943996, 21.872284>,  <38.082527, 27.824451, 21.188494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169498, 27.943996, 21.872284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.347931, 28.279247, 21.746708>,  <38.454990, 28.480398, 21.671362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.347931, 28.279247, 21.746708>,  <38.169498, 27.943996, 21.872284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347931, 28.279247, 21.746708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270063, 0.460475, 0.845594,
		0.853275, -0.292418, 0.431755,
		0.446080, 0.838126, -0.313941,
		38.481754, 28.530685, 21.652525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519531, 28.258722, 22.383110>,  <38.169498, 27.943996, 21.872284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519531, 28.258722, 22.383110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.468933, 28.583820, 22.155621>,  <38.438576, 28.778879, 22.019127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.468933, 28.583820, 22.155621>,  <38.519531, 28.258722, 22.383110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468933, 28.583820, 22.155621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259360, 0.526285, 0.809788,
		0.957461, 0.249937, 0.144222,
		-0.126494, 0.812745, -0.568721,
		38.430984, 28.827644, 21.985004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841255, 28.874485, 22.731930>,  <38.519531, 28.258722, 22.383110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841255, 28.874485, 22.731930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.606239, 29.035347, 22.451054>,  <38.465229, 29.131865, 22.282528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.606239, 29.035347, 22.451054>,  <38.841255, 28.874485, 22.731930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606239, 29.035347, 22.451054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374877, 0.633753, 0.676627,
		0.717122, 0.660780, -0.221597,
		-0.587539, 0.402153, -0.702190,
		38.429977, 29.155993, 22.240396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002907, 29.553127, 22.749584>,  <38.841255, 28.874485, 22.731930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002907, 29.553127, 22.749584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.644279, 29.491392, 22.583527>,  <38.429104, 29.454351, 22.483892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.644279, 29.491392, 22.583527>,  <39.002907, 29.553127, 22.749584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644279, 29.491392, 22.583527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425066, 0.563174, 0.708628,
		0.124428, 0.811797, -0.570529,
		-0.896569, -0.154340, -0.415142,
		38.375309, 29.445091, 22.458984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789570, 30.268427, 22.577263>,  <39.002907, 29.553127, 22.749584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789570, 30.268427, 22.577263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.483280, 30.018200, 22.637028>,  <38.299507, 29.868063, 22.672886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.483280, 30.018200, 22.637028>,  <38.789570, 30.268427, 22.577263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483280, 30.018200, 22.637028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320762, 0.572796, 0.754332,
		-0.557469, 0.529687, -0.639265,
		-0.765728, -0.625569, 0.149412,
		38.253563, 29.830530, 22.681852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342941, 30.627407, 22.982084>,  <38.789570, 30.268427, 22.577263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342941, 30.627407, 22.982084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.186329, 30.260218, 23.007479>,  <38.092361, 30.039904, 23.022717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.186329, 30.260218, 23.007479>,  <38.342941, 30.627407, 22.982084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186329, 30.260218, 23.007479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487134, 0.265315, 0.832051,
		-0.780644, 0.294846, -0.551054,
		-0.391529, -0.917973, 0.063487,
		38.068871, 29.984825, 23.026525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601864, 30.700411, 22.989256>,  <38.342941, 30.627407, 22.982084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601864, 30.700411, 22.989256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.638355, 30.333542, 23.144419>,  <37.660248, 30.113420, 23.237516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.638355, 30.333542, 23.144419>,  <37.601864, 30.700411, 22.989256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638355, 30.333542, 23.144419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621385, 0.251966, 0.741885,
		-0.778177, -0.308718, -0.546932,
		0.091225, -0.917173, 0.387907,
		37.665722, 30.058390, 23.260790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004208, 30.494669, 23.202002>,  <37.601864, 30.700411, 22.989256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004208, 30.494669, 23.202002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.230793, 30.253260, 23.426456>,  <37.366745, 30.108414, 23.561131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.230793, 30.253260, 23.426456>,  <37.004208, 30.494669, 23.202002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230793, 30.253260, 23.426456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569605, 0.205337, 0.795856,
		-0.595541, -0.770451, -0.227454,
		0.566464, -0.603524, 0.561139,
		37.400734, 30.072203, 23.594799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518726, 30.104630, 23.515429>,  <37.004208, 30.494669, 23.202002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518726, 30.104630, 23.515429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864670, 30.107946, 23.716209>,  <37.072235, 30.109936, 23.836678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864670, 30.107946, 23.716209>,  <36.518726, 30.104630, 23.515429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864670, 30.107946, 23.716209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498568, 0.131250, 0.856857,
		-0.058779, -0.991315, 0.117645,
		0.864856, 0.008289, 0.501952,
		37.124126, 30.110434, 23.866795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428860, 29.650736, 24.137310>,  <36.518726, 30.104630, 23.515429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428860, 29.650736, 24.137310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754250, 29.864740, 24.228544>,  <36.949482, 29.993143, 24.283285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754250, 29.864740, 24.228544>,  <36.428860, 29.650736, 24.137310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754250, 29.864740, 24.228544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324746, 0.092492, 0.941268,
		0.482495, -0.839766, 0.248983,
		0.813473, 0.535013, 0.228083,
		36.998291, 30.025244, 24.296968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634506, 29.308046, 24.654940>,  <36.428860, 29.650736, 24.137310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634506, 29.308046, 24.654940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.788692, 29.675955, 24.684427>,  <36.881207, 29.896700, 24.702120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.788692, 29.675955, 24.684427>,  <36.634506, 29.308046, 24.654940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788692, 29.675955, 24.684427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262584, 0.032755, 0.964353,
		0.884570, -0.391084, 0.254143,
		0.385467, 0.919772, 0.073718,
		36.904331, 29.951887, 24.706543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033798, 29.321533, 25.360514>,  <36.634506, 29.308046, 24.654940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033798, 29.321533, 25.360514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.980370, 29.701681, 25.248117>,  <36.948315, 29.929770, 25.180679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.980370, 29.701681, 25.248117>,  <37.033798, 29.321533, 25.360514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980370, 29.701681, 25.248117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322672, 0.226376, 0.919041,
		0.937039, 0.213423, 0.276422,
		-0.133569, 0.950371, -0.280989,
		36.940300, 29.986792, 25.163820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329769, 29.722963, 25.803017>,  <37.033798, 29.321533, 25.360514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329769, 29.722963, 25.803017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043869, 29.961817, 25.657377>,  <36.872330, 30.105129, 25.569994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043869, 29.961817, 25.657377>,  <37.329769, 29.722963, 25.803017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043869, 29.961817, 25.657377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405245, 0.070695, 0.911470,
		0.570009, 0.799021, 0.191456,
		-0.714749, 0.597133, -0.364097,
		36.829445, 30.140957, 25.548149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146030, 30.086077, 26.436914>,  <37.329769, 29.722963, 25.803017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146030, 30.086077, 26.436914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.856716, 30.172878, 26.174686>,  <36.683128, 30.224960, 26.017349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.856716, 30.172878, 26.174686>,  <37.146030, 30.086077, 26.436914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856716, 30.172878, 26.174686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569018, 0.350594, 0.743843,
		0.391258, 0.911039, -0.130098,
		-0.723282, 0.217006, -0.655570,
		36.639732, 30.237980, 25.978016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.543720, 32.996658, 30.323839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.174850, 33.080608, 30.193882>,  <36.953529, 33.130978, 30.115908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.174850, 33.080608, 30.193882>,  <37.543720, 32.996658, 30.323839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174850, 33.080608, 30.193882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271805, 0.245982, 0.930384,
		0.275178, 0.946281, -0.169794,
		-0.922171, 0.209870, -0.324893,
		36.898201, 33.143570, 30.096415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383205, 33.551365, 30.721077>,  <37.543720, 32.996658, 30.323839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383205, 33.551365, 30.721077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.027363, 33.409451, 30.606026>,  <36.813858, 33.324303, 30.536995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.027363, 33.409451, 30.606026>,  <37.383205, 33.551365, 30.721077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027363, 33.409451, 30.606026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353386, 0.135721, 0.925580,
		-0.289349, 0.925043, -0.246116,
		-0.889604, -0.354789, -0.287627,
		36.760483, 33.303013, 30.519737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859375, 33.986996, 31.067537>,  <37.383205, 33.551365, 30.721077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859375, 33.986996, 31.067537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.688976, 33.634975, 30.983599>,  <36.586739, 33.423763, 30.933235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.688976, 33.634975, 30.983599>,  <36.859375, 33.986996, 31.067537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688976, 33.634975, 30.983599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333786, -0.062704, 0.940561,
		-0.840903, 0.470716, -0.267038,
		-0.425993, -0.880054, -0.209846,
		36.561180, 33.370960, 30.920645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134014, 34.107204, 31.350698>,  <36.859375, 33.986996, 31.067537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134014, 34.107204, 31.350698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.236290, 33.726013, 31.285625>,  <36.297653, 33.497299, 31.246582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.236290, 33.726013, 31.285625>,  <36.134014, 34.107204, 31.350698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236290, 33.726013, 31.285625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227370, -0.222834, 0.947970,
		-0.939642, -0.205392, -0.273654,
		0.255685, -0.952974, -0.162684,
		36.312996, 33.440121, 31.236820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631054, 33.751621, 31.545824>,  <36.134014, 34.107204, 31.350698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631054, 33.751621, 31.545824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.927761, 33.484814, 31.573744>,  <36.105785, 33.324730, 31.590496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.927761, 33.484814, 31.573744>,  <35.631054, 33.751621, 31.545824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927761, 33.484814, 31.573744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225684, -0.150252, 0.962544,
		-0.631546, -0.729735, -0.261986,
		0.741766, -0.667017, 0.069799,
		36.150291, 33.284710, 31.594683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319710, 33.081009, 31.830385>,  <35.631054, 33.751621, 31.545824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319710, 33.081009, 31.830385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.708721, 33.126827, 31.911448>,  <35.942127, 33.154316, 31.960085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.708721, 33.126827, 31.911448>,  <35.319710, 33.081009, 31.830385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708721, 33.126827, 31.911448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155726, -0.326966, 0.932117,
		0.173028, -0.938069, -0.300146,
		0.972528, 0.114542, 0.202656,
		36.000481, 33.161190, 31.972244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483459, 32.483257, 32.168030>,  <35.319710, 33.081009, 31.830385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483459, 32.483257, 32.168030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.800125, 32.702854, 32.275269>,  <35.990124, 32.834610, 32.339611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.800125, 32.702854, 32.275269>,  <35.483459, 32.483257, 32.168030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800125, 32.702854, 32.275269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191415, -0.193841, 0.962178,
		0.580194, -0.813041, -0.048372,
		0.791666, 0.548990, 0.268094,
		36.037624, 32.867550, 32.355698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946663, 32.058743, 32.609871>,  <35.483459, 32.483257, 32.168030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946663, 32.058743, 32.609871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.005028, 32.448952, 32.675667>,  <36.040047, 32.683079, 32.715145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.005028, 32.448952, 32.675667>,  <35.946663, 32.058743, 32.609871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005028, 32.448952, 32.675667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192256, -0.135140, 0.971995,
		0.970437, -0.173449, 0.167832,
		0.145911, 0.975527, 0.164491,
		36.048801, 32.741611, 32.725014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376289, 32.020794, 33.166676>,  <35.946663, 32.058743, 32.609871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376289, 32.020794, 33.166676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.284252, 32.409706, 33.183311>,  <36.229031, 32.643055, 33.193291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.284252, 32.409706, 33.183311>,  <36.376289, 32.020794, 33.166676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284252, 32.409706, 33.183311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068353, -0.058774, 0.995928,
		0.970765, 0.226316, 0.079982,
		-0.230095, 0.972279, 0.041586,
		36.215225, 32.701389, 33.195786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602577, 32.169052, 33.712902>,  <36.376289, 32.020794, 33.166676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602577, 32.169052, 33.712902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.355637, 32.480377, 33.667122>,  <36.207470, 32.667171, 33.639656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.355637, 32.480377, 33.667122>,  <36.602577, 32.169052, 33.712902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355637, 32.480377, 33.667122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256306, -0.061456, 0.964640,
		0.743761, 0.624858, 0.237427,
		-0.617355, 0.778316, -0.114446,
		36.170429, 32.713871, 33.632790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760197, 32.593792, 34.250351>,  <36.602577, 32.169052, 33.712902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760197, 32.593792, 34.250351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.391628, 32.684761, 34.124321>,  <36.170486, 32.739342, 34.048702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.391628, 32.684761, 34.124321>,  <36.760197, 32.593792, 34.250351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391628, 32.684761, 34.124321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348431, -0.124638, 0.929011,
		0.172004, 0.965788, 0.194083,
		-0.921417, 0.227418, -0.315073,
		36.115204, 32.752987, 34.029800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460373, 33.243137, 34.639267>,  <36.760197, 32.593792, 34.250351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460373, 33.243137, 34.639267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.184460, 32.974560, 34.530922>,  <36.018913, 32.813416, 34.465916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.184460, 32.974560, 34.530922>,  <36.460373, 33.243137, 34.639267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184460, 32.974560, 34.530922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301792, -0.073412, 0.950543,
		-0.658119, 0.737412, -0.151998,
		-0.689783, -0.671442, -0.270859,
		35.977524, 32.773129, 34.449665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983742, 33.739052, 34.615871>,  <36.460373, 33.243137, 34.639267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983742, 33.739052, 34.615871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.318012, 33.954678, 34.657940>,  <37.518574, 34.084053, 34.683182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.318012, 33.954678, 34.657940>,  <36.983742, 33.739052, 34.615871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318012, 33.954678, 34.657940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462733, -0.587891, -0.663523,
		-0.295852, 0.603154, -0.740727,
		0.835674, 0.539063, 0.105170,
		37.568714, 34.116398, 34.689491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219746, 34.027237, 33.970654>,  <36.983742, 33.739052, 34.615871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219746, 34.027237, 33.970654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.508129, 33.936802, 34.232674>,  <37.681160, 33.882542, 34.389885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.508129, 33.936802, 34.232674>,  <37.219746, 34.027237, 33.970654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508129, 33.936802, 34.232674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449810, -0.566395, -0.690556,
		0.527146, 0.792516, -0.306653,
		0.720963, -0.226089, 0.655054,
		37.724419, 33.868977, 34.429192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202148, 34.684937, 33.945904>,  <37.219746, 34.027237, 33.970654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202148, 34.684937, 33.945904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.314728, 35.068768, 33.945862>,  <37.382275, 35.299065, 33.945835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.314728, 35.068768, 33.945862>,  <37.202148, 34.684937, 33.945904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314728, 35.068768, 33.945862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093456, 0.027300, -0.995249,
		-0.955014, 0.280123, 0.097361,
		0.281450, 0.959576, -0.000107,
		37.399162, 35.356640, 33.945831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762676, 34.965168, 33.422001>,  <37.202148, 34.684937, 33.945904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762676, 34.965168, 33.422001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.055889, 35.230339, 33.482906>,  <37.231819, 35.389442, 33.519447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.055889, 35.230339, 33.482906>,  <36.762676, 34.965168, 33.422001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055889, 35.230339, 33.482906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011447, 0.235839, -0.971725,
		-0.680095, 0.710565, 0.180466,
		0.733035, 0.662931, 0.152259,
		37.275799, 35.429218, 33.528584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605946, 35.491043, 33.008446>,  <36.762676, 34.965168, 33.422001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605946, 35.491043, 33.008446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.994476, 35.561771, 33.072006>,  <37.227596, 35.604210, 33.110142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.994476, 35.561771, 33.072006>,  <36.605946, 35.491043, 33.008446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994476, 35.561771, 33.072006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044159, 0.522576, -0.851449,
		-0.233596, 0.834055, 0.499785,
		0.971331, 0.176824, 0.158902,
		37.285877, 35.614819, 33.119678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780415, 36.245552, 32.860508>,  <36.605946, 35.491043, 33.008446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780415, 36.245552, 32.860508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.115383, 36.028458, 32.834709>,  <37.316364, 35.898201, 32.819229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.115383, 36.028458, 32.834709>,  <36.780415, 36.245552, 32.860508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115383, 36.028458, 32.834709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271036, 0.514848, -0.813309,
		0.474623, 0.663600, 0.578246,
		0.837420, -0.542741, -0.064499,
		37.366608, 35.865635, 32.815361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210690, 36.737751, 32.745426>,  <36.780415, 36.245552, 32.860508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210690, 36.737751, 32.745426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.385487, 36.396450, 32.631584>,  <37.490364, 36.191669, 32.563278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.385487, 36.396450, 32.631584>,  <37.210690, 36.737751, 32.745426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385487, 36.396450, 32.631584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151712, 0.381804, -0.911707,
		0.886576, 0.355235, 0.296295,
		0.436997, -0.853249, -0.284605,
		37.516586, 36.140476, 32.546204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836720, 36.928143, 32.419601>,  <37.210690, 36.737751, 32.745426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836720, 36.928143, 32.419601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.749599, 36.557247, 32.297756>,  <37.697327, 36.334709, 32.224648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.749599, 36.557247, 32.297756>,  <37.836720, 36.928143, 32.419601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749599, 36.557247, 32.297756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474849, 0.172004, -0.863095,
		0.852690, -0.332630, 0.402836,
		-0.217802, -0.927239, -0.304615,
		37.684258, 36.279076, 32.206371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384655, 36.767746, 32.012833>,  <37.836720, 36.928143, 32.419601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384655, 36.767746, 32.012833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.130459, 36.482128, 31.895332>,  <37.977940, 36.310757, 31.824833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.130459, 36.482128, 31.895332>,  <38.384655, 36.767746, 32.012833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130459, 36.482128, 31.895332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479917, -0.067268, -0.874732,
		0.604840, -0.696858, 0.385432,
		-0.635491, -0.714048, -0.293747,
		37.939812, 36.267914, 31.807209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813564, 36.165920, 31.756294>,  <38.384655, 36.767746, 32.012833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813564, 36.165920, 31.756294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.449753, 36.188053, 31.591516>,  <38.231464, 36.201332, 31.492649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.449753, 36.188053, 31.591516>,  <38.813564, 36.165920, 31.756294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449753, 36.188053, 31.591516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408281, -0.066784, -0.910410,
		-0.077892, -0.996232, 0.038148,
		-0.909527, 0.055339, -0.411944,
		38.176895, 36.204651, 31.467934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846558, 35.768021, 31.256741>,  <38.813564, 36.165920, 31.756294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846558, 35.768021, 31.256741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.502945, 35.933979, 31.136793>,  <38.296776, 36.033554, 31.064825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.502945, 35.933979, 31.136793>,  <38.846558, 35.768021, 31.256741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502945, 35.933979, 31.136793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257412, -0.156237, -0.953587,
		-0.442492, -0.896353, 0.027413,
		-0.859034, 0.414898, -0.299866,
		38.245235, 36.058449, 31.046833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661461, 35.344860, 30.668127>,  <38.846558, 35.768021, 31.256741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661461, 35.344860, 30.668127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.421043, 35.655449, 30.592407>,  <38.276791, 35.841801, 30.546976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.421043, 35.655449, 30.592407>,  <38.661461, 35.344860, 30.668127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421043, 35.655449, 30.592407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219533, -0.067345, -0.973278,
		-0.768470, -0.626545, -0.129983,
		-0.601048, 0.776471, -0.189300,
		38.240730, 35.888390, 30.535618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049042, 35.098938, 30.210810>,  <38.661461, 35.344860, 30.668127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049042, 35.098938, 30.210810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.103142, 35.494041, 30.179703>,  <38.135601, 35.731102, 30.161039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.103142, 35.494041, 30.179703>,  <38.049042, 35.098938, 30.210810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103142, 35.494041, 30.179703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222262, -0.106734, -0.969127,
		-0.965561, 0.113788, -0.233976,
		0.135248, 0.987755, -0.077768,
		38.143715, 35.790367, 30.156372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649014, 35.279991, 29.723099>,  <38.049042, 35.098938, 30.210810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649014, 35.279991, 29.723099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.938374, 35.555737, 29.738451>,  <38.111988, 35.721184, 29.747662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.938374, 35.555737, 29.738451>,  <37.649014, 35.279991, 29.723099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938374, 35.555737, 29.738451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234008, -0.192506, -0.952985,
		-0.649564, 0.698370, -0.300575,
		0.723400, 0.689362, 0.038380,
		38.155392, 35.762547, 29.749966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604961, 35.639324, 29.102694>,  <37.649014, 35.279991, 29.723099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604961, 35.639324, 29.102694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.949444, 35.774910, 29.254181>,  <38.156132, 35.856262, 29.345074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.949444, 35.774910, 29.254181>,  <37.604961, 35.639324, 29.102694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949444, 35.774910, 29.254181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395277, 0.021728, -0.918305,
		-0.319502, 0.940548, -0.115273,
		0.861205, 0.338966, 0.378719,
		38.207806, 35.876598, 29.367796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761791, 36.160694, 28.561432>,  <37.604961, 35.639324, 29.102694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761791, 36.160694, 28.561432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.080685, 36.014557, 28.753656>,  <38.272022, 35.926872, 28.868990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.080685, 36.014557, 28.753656>,  <37.761791, 36.160694, 28.561432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080685, 36.014557, 28.753656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458039, -0.152436, -0.875764,
		0.393213, 0.918305, 0.045816,
		0.797235, -0.365348, 0.480559,
		38.319855, 35.904953, 28.897823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258347, 36.593933, 28.165724>,  <37.761791, 36.160694, 28.561432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258347, 36.593933, 28.165724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.966064, 36.509911, 27.905895>,  <36.790695, 36.459499, 27.749998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.966064, 36.509911, 27.905895>,  <37.258347, 36.593933, 28.165724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966064, 36.509911, 27.905895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667534, 0.020460, 0.744299,
		-0.143053, 0.977476, -0.155169,
		-0.730708, -0.210054, -0.649571,
		36.746853, 36.446896, 27.711023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709793, 36.988815, 28.346447>,  <37.258347, 36.593933, 28.165724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709793, 36.988815, 28.346447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.541504, 36.693459, 28.135633>,  <36.440529, 36.516243, 28.009146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.541504, 36.693459, 28.135633>,  <36.709793, 36.988815, 28.346447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541504, 36.693459, 28.135633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732775, -0.065882, 0.677274,
		-0.534818, 0.671143, -0.513359,
		-0.420727, -0.738395, -0.527032,
		36.415287, 36.471939, 27.977524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059162, 37.270493, 28.335402>,  <36.709793, 36.988815, 28.346447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059162, 37.270493, 28.335402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.051853, 36.875675, 28.271643>,  <36.047466, 36.638783, 28.233387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.051853, 36.875675, 28.271643>,  <36.059162, 37.270493, 28.335402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051853, 36.875675, 28.271643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632374, -0.112077, 0.766513,
		-0.774447, 0.114806, -0.622134,
		-0.018274, -0.987045, -0.159398,
		36.046371, 36.579563, 28.223824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396919, 37.152096, 28.429087>,  <36.059162, 37.270493, 28.335402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396919, 37.152096, 28.429087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.572636, 36.797718, 28.488594>,  <35.678066, 36.585091, 28.524298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.572636, 36.797718, 28.488594>,  <35.396919, 37.152096, 28.429087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572636, 36.797718, 28.488594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517818, -0.114396, 0.847808,
		-0.734088, -0.449471, -0.509009,
		0.439294, -0.885940, 0.148767,
		35.704422, 36.531937, 28.533224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806858, 36.709206, 28.497835>,  <35.396919, 37.152096, 28.429087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806858, 36.709206, 28.497835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.134682, 36.530037, 28.640774>,  <35.331375, 36.422535, 28.726536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.134682, 36.530037, 28.640774>,  <34.806858, 36.709206, 28.497835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134682, 36.530037, 28.640774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456630, -0.133811, 0.879536,
		-0.346143, -0.884005, -0.314199,
		0.819557, -0.447918, 0.357345,
		35.380550, 36.395660, 28.747978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590973, 36.105400, 28.736778>,  <34.806858, 36.709206, 28.497835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590973, 36.105400, 28.736778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.919830, 36.198360, 28.944653>,  <35.117146, 36.254135, 29.069378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.919830, 36.198360, 28.944653>,  <34.590973, 36.105400, 28.736778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919830, 36.198360, 28.944653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530227, -0.019697, 0.847627,
		0.207224, -0.972421, 0.107030,
		0.822142, 0.232399, 0.519685,
		35.166473, 36.268078, 29.100557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598404, 35.654194, 29.402441>,  <34.590973, 36.105400, 28.736778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598404, 35.654194, 29.402441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.863937, 35.942490, 29.482296>,  <35.023258, 36.115467, 29.530209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.863937, 35.942490, 29.482296>,  <34.598404, 35.654194, 29.402441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863937, 35.942490, 29.482296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294911, 0.006963, 0.955499,
		0.687280, -0.693167, 0.217178,
		0.663833, 0.720743, 0.199637,
		35.063087, 36.158714, 29.542187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923645, 35.400581, 30.027697>,  <34.598404, 35.654194, 29.402441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923645, 35.400581, 30.027697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.991875, 35.793678, 29.999056>,  <35.032810, 36.029537, 29.981871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.991875, 35.793678, 29.999056>,  <34.923645, 35.400581, 30.027697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991875, 35.793678, 29.999056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398443, 0.135253, 0.907166,
		0.901193, -0.126206, 0.414636,
		0.170571, 0.982740, -0.071603,
		35.043045, 36.088501, 29.977575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373802, 35.659119, 30.690432>,  <34.923645, 35.400581, 30.027697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373802, 35.659119, 30.690432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.157429, 35.958309, 30.536587>,  <35.027603, 36.137825, 30.444281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.157429, 35.958309, 30.536587>,  <35.373802, 35.659119, 30.690432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157429, 35.958309, 30.536587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319766, 0.240054, 0.916582,
		0.777909, 0.618794, 0.109324,
		-0.540932, 0.747976, -0.384610,
		34.995148, 36.182701, 30.421204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464161, 36.292561, 31.113935>,  <35.373802, 35.659119, 30.690432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464161, 36.292561, 31.113935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.138512, 36.370289, 30.895050>,  <34.943123, 36.416927, 30.763720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.138512, 36.370289, 30.895050>,  <35.464161, 36.292561, 31.113935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138512, 36.370289, 30.895050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482299, 0.298549, 0.823563,
		0.323404, 0.934403, -0.149336,
		-0.814124, 0.194319, -0.547214,
		34.894276, 36.428585, 30.730886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995457, 36.708633, 31.549282>,  <35.464161, 36.292561, 31.113935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995457, 36.708633, 31.549282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.733543, 36.644554, 31.253822>,  <34.576397, 36.606106, 31.076548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.733543, 36.644554, 31.253822>,  <34.995457, 36.708633, 31.549282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733543, 36.644554, 31.253822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750414, 0.254452, 0.610027,
		0.090226, 0.953725, -0.286824,
		-0.654781, -0.160197, -0.738647,
		34.537109, 36.596497, 31.032228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537663, 37.299335, 31.434208>,  <34.995457, 36.708633, 31.549282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537663, 37.299335, 31.434208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.316177, 36.980595, 31.337515>,  <34.183285, 36.789352, 31.279499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.316177, 36.980595, 31.337515>,  <34.537663, 37.299335, 31.434208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316177, 36.980595, 31.337515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692319, 0.279228, 0.665377,
		-0.462706, 0.535783, -0.706285,
		-0.553712, -0.796849, -0.241732,
		34.150063, 36.741539, 31.264996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.669628, 36.614834, 24.432981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374725, 36.350716, 24.375751>,  <38.197784, 36.192245, 24.341413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374725, 36.350716, 24.375751>,  <38.669628, 36.614834, 24.432981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374725, 36.350716, 24.375751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423316, 0.286416, 0.859517,
		-0.526553, 0.694249, -0.490673,
		-0.737256, -0.660291, -0.143074,
		38.153549, 36.152630, 24.332829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996006, 37.007862, 24.425070>,  <38.669628, 36.614834, 24.432981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996006, 37.007862, 24.425070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900764, 36.635540, 24.536001>,  <37.843620, 36.412148, 24.602560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900764, 36.635540, 24.536001>,  <37.996006, 37.007862, 24.425070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900764, 36.635540, 24.536001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418386, 0.355989, 0.835599,
		-0.876504, 0.082930, -0.474197,
		-0.238105, -0.930803, 0.277329,
		37.829334, 36.356300, 24.619200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331898, 37.087536, 24.742830>,  <37.996006, 37.007862, 24.425070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331898, 37.087536, 24.742830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467911, 36.731403, 24.863949>,  <37.549519, 36.517723, 24.936619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467911, 36.731403, 24.863949>,  <37.331898, 37.087536, 24.742830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467911, 36.731403, 24.863949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356138, 0.176083, 0.917693,
		-0.870368, -0.419885, -0.257207,
		0.340036, -0.890332, 0.302794,
		37.569923, 36.464302, 24.954786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742073, 36.821617, 25.045910>,  <37.331898, 37.087536, 24.742830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742073, 36.821617, 25.045910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057335, 36.643051, 25.215393>,  <37.246490, 36.535912, 25.317083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057335, 36.643051, 25.215393>,  <36.742073, 36.821617, 25.045910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057335, 36.643051, 25.215393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427966, 0.097266, 0.898546,
		-0.442340, -0.889522, -0.114392,
		0.788150, -0.446419, 0.423709,
		37.293781, 36.509125, 25.342506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508743, 36.360325, 25.487158>,  <36.742073, 36.821617, 25.045910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508743, 36.360325, 25.487158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882195, 36.422131, 25.616444>,  <37.106266, 36.459213, 25.694016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882195, 36.422131, 25.616444>,  <36.508743, 36.360325, 25.487158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882195, 36.422131, 25.616444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320278, -0.044244, 0.946290,
		0.160513, -0.987000, 0.008179,
		0.933626, 0.154511, 0.323216,
		37.162281, 36.468483, 25.713408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658859, 35.766537, 25.971100>,  <36.508743, 36.360325, 25.487158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658859, 35.766537, 25.971100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936596, 36.041527, 26.056194>,  <37.103237, 36.206520, 26.107252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936596, 36.041527, 26.056194>,  <36.658859, 35.766537, 25.971100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936596, 36.041527, 26.056194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172665, -0.127831, 0.976651,
		0.698621, -0.714865, 0.029944,
		0.694345, 0.687479, 0.212737,
		37.144901, 36.247772, 26.120016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212593, 35.393425, 26.484915>,  <36.658859, 35.766537, 25.971100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212593, 35.393425, 26.484915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169197, 35.790504, 26.506002>,  <37.143158, 36.028751, 26.518656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169197, 35.790504, 26.506002>,  <37.212593, 35.393425, 26.484915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169197, 35.790504, 26.506002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334961, -0.086436, 0.938259,
		0.935965, 0.084133, 0.341893,
		-0.108490, 0.992699, 0.052720,
		37.136650, 36.088314, 26.521818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613003, 35.635906, 27.141779>,  <37.212593, 35.393425, 26.484915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613003, 35.635906, 27.141779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369106, 35.933453, 27.032326>,  <37.222767, 36.111980, 26.966654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369106, 35.933453, 27.032326>,  <37.613003, 35.635906, 27.141779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369106, 35.933453, 27.032326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329531, 0.076061, 0.941076,
		0.720849, 0.663984, 0.198750,
		-0.609743, 0.743868, -0.273632,
		37.186184, 36.156612, 26.950235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625519, 36.158909, 27.720770>,  <37.613003, 35.635906, 27.141779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625519, 36.158909, 27.720770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288696, 36.234550, 27.518709>,  <37.086601, 36.279934, 27.397472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288696, 36.234550, 27.518709>,  <37.625519, 36.158909, 27.720770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288696, 36.234550, 27.518709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491240, 0.117910, 0.863007,
		0.222759, 0.974853, -0.006392,
		-0.842058, 0.189103, -0.505152,
		37.036079, 36.291283, 27.367163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299973, 36.372677, 28.109985>,  <37.625519, 36.158909, 27.720770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299973, 36.372677, 28.109985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508621, 36.140385, 28.359995>,  <38.633812, 36.001007, 28.510000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508621, 36.140385, 28.359995>,  <38.299973, 36.372677, 28.109985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508621, 36.140385, 28.359995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615498, -0.251165, -0.747046,
		0.590820, 0.774379, 0.226427,
		0.521626, -0.580735, 0.625022,
		38.665108, 35.966164, 28.547503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019371, 36.555046, 28.113913>,  <38.299973, 36.372677, 28.109985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019371, 36.555046, 28.113913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995037, 36.170574, 28.221571>,  <38.980434, 35.939892, 28.286165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995037, 36.170574, 28.221571>,  <39.019371, 36.555046, 28.113913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995037, 36.170574, 28.221571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583110, -0.253071, -0.771970,
		0.810112, 0.109976, 0.575868,
		-0.060837, -0.961177, 0.269144,
		38.976788, 35.882221, 28.302315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688129, 36.295837, 28.042364>,  <39.019371, 36.555046, 28.113913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688129, 36.295837, 28.042364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463028, 35.966034, 28.066011>,  <39.327969, 35.768150, 28.080200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463028, 35.966034, 28.066011>,  <39.688129, 36.295837, 28.042364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463028, 35.966034, 28.066011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657942, -0.490063, -0.571796,
		0.500423, -0.282883, 0.818263,
		-0.562752, -0.824509, 0.059118,
		39.294201, 35.718681, 28.083746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152161, 35.773857, 28.124949>,  <39.688129, 36.295837, 28.042364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152161, 35.773857, 28.124949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821487, 35.598175, 27.984274>,  <39.623081, 35.492764, 27.899868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821487, 35.598175, 27.984274>,  <40.152161, 35.773857, 28.124949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821487, 35.598175, 27.984274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551338, -0.507547, -0.662134,
		0.112316, -0.741277, 0.661735,
		-0.826687, -0.439208, -0.351688,
		39.573483, 35.466412, 27.878767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377926, 35.071121, 27.983839>,  <40.152161, 35.773857, 28.124949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377926, 35.071121, 27.983839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049526, 35.114048, 27.759535>,  <39.852486, 35.139805, 27.624952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049526, 35.114048, 27.759535>,  <40.377926, 35.071121, 27.983839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049526, 35.114048, 27.759535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404625, -0.583563, -0.704083,
		-0.402797, -0.804946, 0.435680,
		-0.820995, 0.107316, -0.560758,
		39.803226, 35.146244, 27.591307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095531, 34.415234, 27.872957>,  <40.377926, 35.071121, 27.983839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095531, 34.415234, 27.872957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958694, 34.647148, 27.577168>,  <39.876591, 34.786297, 27.399693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958694, 34.647148, 27.577168>,  <40.095531, 34.415234, 27.872957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958694, 34.647148, 27.577168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344447, -0.654806, -0.672745,
		-0.874259, -0.484851, 0.024299,
		-0.342092, 0.579784, -0.739476,
		39.856068, 34.821083, 27.355326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589874, 34.009850, 27.451998>,  <40.095531, 34.415234, 27.872957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589874, 34.009850, 27.451998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721855, 34.311310, 27.224617>,  <39.801044, 34.492188, 27.088188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721855, 34.311310, 27.224617>,  <39.589874, 34.009850, 27.451998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721855, 34.311310, 27.224617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317488, -0.655693, -0.685031,
		-0.889007, 0.045550, -0.455623,
		0.329952, 0.753652, -0.568454,
		39.820839, 34.537407, 27.054081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420204, 33.832275, 26.698187>,  <39.589874, 34.009850, 27.451998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420204, 33.832275, 26.698187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692570, 34.124142, 26.673096>,  <39.855991, 34.299263, 26.658041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692570, 34.124142, 26.673096>,  <39.420204, 33.832275, 26.698187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692570, 34.124142, 26.673096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481685, -0.510723, -0.712138,
		-0.551663, 0.454692, -0.699231,
		0.680917, 0.729669, -0.062729,
		39.896843, 34.343044, 26.654278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496433, 33.781063, 26.034950>,  <39.420204, 33.832275, 26.698187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496433, 33.781063, 26.034950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811111, 33.999073, 26.150925>,  <39.999920, 34.129879, 26.220510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811111, 33.999073, 26.150925>,  <39.496433, 33.781063, 26.034950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811111, 33.999073, 26.150925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550758, -0.407459, -0.728452,
		-0.278884, 0.732755, -0.620721,
		0.786695, 0.545020, 0.289937,
		40.047119, 34.162579, 26.237906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747208, 34.161015, 25.402678>,  <39.496433, 33.781063, 26.034950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747208, 34.161015, 25.402678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052315, 34.131268, 25.659632>,  <40.235378, 34.113419, 25.813805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052315, 34.131268, 25.659632>,  <39.747208, 34.161015, 25.402678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052315, 34.131268, 25.659632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586958, -0.337314, -0.736003,
		0.271418, 0.938450, -0.213642,
		0.762766, -0.074366, 0.642384,
		40.281143, 34.108959, 25.852346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286179, 34.528175, 25.075869>,  <39.747208, 34.161015, 25.402678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286179, 34.528175, 25.075869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444504, 34.281036, 25.347631>,  <40.539501, 34.132751, 25.510689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444504, 34.281036, 25.347631>,  <40.286179, 34.528175, 25.075869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444504, 34.281036, 25.347631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648727, -0.335523, -0.683065,
		0.649987, 0.711117, 0.268011,
		0.395815, -0.617849, 0.679406,
		40.563248, 34.095680, 25.551453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998035, 34.546917, 24.991995>,  <40.286179, 34.528175, 25.075869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998035, 34.546917, 24.991995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968906, 34.213131, 25.210487>,  <40.951427, 34.012859, 25.341583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968906, 34.213131, 25.210487>,  <40.998035, 34.546917, 24.991995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968906, 34.213131, 25.210487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770297, -0.394951, -0.500656,
		0.633513, 0.384299, 0.671547,
		-0.072827, -0.834463, 0.546231,
		40.947060, 33.962791, 25.374357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670212, 34.365208, 25.292660>,  <40.998035, 34.546917, 24.991995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670212, 34.365208, 25.292660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443314, 34.036858, 25.266144>,  <41.307175, 33.839848, 25.250235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443314, 34.036858, 25.266144>,  <41.670212, 34.365208, 25.292660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443314, 34.036858, 25.266144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653896, -0.399997, -0.642201,
		0.500651, -0.407634, 0.763665,
		-0.567246, -0.820876, -0.066291,
		41.273140, 33.790596, 25.246256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084461, 33.945698, 25.109320>,  <41.670212, 34.365208, 25.292660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084461, 33.945698, 25.109320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759380, 33.724560, 25.035686>,  <41.564331, 33.591877, 24.991507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759380, 33.724560, 25.035686>,  <42.084461, 33.945698, 25.109320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759380, 33.724560, 25.035686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483201, -0.462877, -0.743143,
		0.325634, -0.692900, 0.643314,
		-0.812699, -0.552842, -0.184082,
		41.515572, 33.558708, 24.980461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.978603, 28.818718, 23.207899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.251850, 29.003643, 23.434036>,  <34.415798, 29.114597, 23.569719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.251850, 29.003643, 23.434036>,  <33.978603, 28.818718, 23.207899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251850, 29.003643, 23.434036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437799, -0.360362, 0.823694,
		0.584532, -0.810189, -0.043770,
		0.683120, 0.462313, 0.565343,
		34.456787, 29.142338, 23.603640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187195, 28.316254, 23.745783>,  <33.978603, 28.818718, 23.207899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187195, 28.316254, 23.745783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.301716, 28.668476, 23.896858>,  <34.370430, 28.879810, 23.987503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.301716, 28.668476, 23.896858>,  <34.187195, 28.316254, 23.745783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301716, 28.668476, 23.896858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321714, -0.282958, 0.903568,
		0.902514, -0.380202, 0.202276,
		0.286303, 0.880557, 0.377690,
		34.387608, 28.932644, 24.010164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575062, 28.200481, 24.436218>,  <34.187195, 28.316254, 23.745783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575062, 28.200481, 24.436218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.402611, 28.559895, 24.403311>,  <34.299141, 28.775543, 24.383566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.402611, 28.559895, 24.403311>,  <34.575062, 28.200481, 24.436218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402611, 28.559895, 24.403311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346316, -0.080592, 0.934650,
		0.833185, 0.431441, 0.345922,
		-0.431125, 0.898534, -0.082267,
		34.273273, 28.829454, 24.378632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675491, 28.428705, 25.098280>,  <34.575062, 28.200481, 24.436218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675491, 28.428705, 25.098280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.391727, 28.666006, 24.946077>,  <34.221470, 28.808388, 24.854755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.391727, 28.666006, 24.946077>,  <34.675491, 28.428705, 25.098280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391727, 28.666006, 24.946077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421008, 0.076279, 0.903844,
		0.565234, 0.801393, 0.195652,
		-0.709410, 0.593254, -0.380508,
		34.178905, 28.843983, 24.831924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728897, 29.040073, 25.541962>,  <34.675491, 28.428705, 25.098280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728897, 29.040073, 25.541962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.375534, 29.077368, 25.358265>,  <34.163517, 29.099745, 25.248047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.375534, 29.077368, 25.358265>,  <34.728897, 29.040073, 25.541962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375534, 29.077368, 25.358265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382603, 0.422346, 0.821729,
		0.270575, 0.901626, -0.337429,
		-0.883405, 0.093238, -0.459242,
		34.110512, 29.105339, 25.220493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456997, 29.620775, 25.867067>,  <34.728897, 29.040073, 25.541962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456997, 29.620775, 25.867067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.142380, 29.434874, 25.704412>,  <33.953609, 29.323334, 25.606819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.142380, 29.434874, 25.704412>,  <34.456997, 29.620775, 25.867067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142380, 29.434874, 25.704412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549120, 0.225110, 0.804856,
		-0.282520, 0.856348, -0.432263,
		-0.786543, -0.464752, -0.406639,
		33.906418, 29.295448, 25.582420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968945, 30.132807, 25.822645>,  <34.456997, 29.620775, 25.867067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968945, 30.132807, 25.822645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.792744, 29.773731, 25.826895>,  <33.687023, 29.558285, 25.829445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.792744, 29.773731, 25.826895>,  <33.968945, 30.132807, 25.822645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792744, 29.773731, 25.826895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570231, 0.288915, 0.769002,
		-0.693396, 0.332686, -0.639158,
		-0.440499, -0.897690, 0.010625,
		33.660595, 29.504425, 25.830082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271996, 30.224802, 26.039602>,  <33.968945, 30.132807, 25.822645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271996, 30.224802, 26.039602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.306290, 29.832029, 26.107082>,  <33.326866, 29.596365, 26.147570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.306290, 29.832029, 26.107082>,  <33.271996, 30.224802, 26.039602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306290, 29.832029, 26.107082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462550, 0.110743, 0.879650,
		-0.882438, -0.153447, -0.444698,
		0.085732, -0.981932, 0.168700,
		33.332008, 29.537449, 26.157692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609764, 30.018192, 26.214979>,  <33.271996, 30.224802, 26.039602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609764, 30.018192, 26.214979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.844597, 29.721382, 26.344425>,  <32.985497, 29.543295, 26.422092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.844597, 29.721382, 26.344425>,  <32.609764, 30.018192, 26.214979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844597, 29.721382, 26.344425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420138, 0.062416, 0.905311,
		-0.691964, -0.667458, -0.275110,
		0.587086, -0.742027, 0.323614,
		33.020721, 29.498774, 26.441509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105595, 29.517614, 26.539629>,  <32.609764, 30.018192, 26.214979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105595, 29.517614, 26.539629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.481075, 29.468845, 26.668615>,  <32.706364, 29.439585, 26.746006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.481075, 29.468845, 26.668615>,  <32.105595, 29.517614, 26.539629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481075, 29.468845, 26.668615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300102, 0.171356, 0.938390,
		-0.169666, -0.977636, 0.124263,
		0.938697, -0.121921, 0.322464,
		32.762684, 29.432268, 26.765354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985058, 29.159433, 27.121946>,  <32.105595, 29.517614, 26.539629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985058, 29.159433, 27.121946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.341545, 29.334965, 27.167837>,  <32.555435, 29.440285, 27.195372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.341545, 29.334965, 27.167837>,  <31.985058, 29.159433, 27.121946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341545, 29.334965, 27.167837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193136, 0.138287, 0.971378,
		0.410406, -0.887865, 0.207998,
		0.891216, 0.438831, 0.114725,
		32.608910, 29.466614, 27.202255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011059, 29.188438, 27.836163>,  <31.985058, 29.159433, 27.121946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011059, 29.188438, 27.836163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.347485, 29.387459, 27.751261>,  <32.549339, 29.506872, 27.700319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.347485, 29.387459, 27.751261>,  <32.011059, 29.188438, 27.836163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347485, 29.387459, 27.751261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117158, 0.550624, 0.826491,
		0.528089, -0.670268, 0.521404,
		0.841068, 0.497548, -0.212252,
		32.599804, 29.536724, 27.687584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597889, 29.165018, 28.407003>,  <32.011059, 29.188438, 27.836163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597889, 29.165018, 28.407003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.596661, 29.493719, 28.179070>,  <32.595924, 29.690941, 28.042309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.596661, 29.493719, 28.179070>,  <32.597889, 29.165018, 28.407003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596661, 29.493719, 28.179070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030145, 0.569653, 0.821332,
		0.999541, -0.014652, -0.026523,
		-0.003075, 0.821755, -0.569833,
		32.595737, 29.740246, 28.008120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184723, 29.633766, 28.588373>,  <32.597889, 29.165018, 28.407003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184723, 29.633766, 28.588373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.916584, 29.878782, 28.420837>,  <32.755699, 30.025791, 28.320316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.916584, 29.878782, 28.420837>,  <33.184723, 29.633766, 28.588373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916584, 29.878782, 28.420837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143946, 0.661060, 0.736395,
		0.727949, 0.433352, -0.531315,
		-0.670350, 0.612539, -0.418839,
		32.715481, 30.062544, 28.295185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790642, 29.958841, 28.678566>,  <33.184723, 29.633766, 28.588373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790642, 29.958841, 28.678566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.105339, 29.986282, 28.923950>,  <34.294155, 30.002747, 29.071180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.105339, 29.986282, 28.923950>,  <33.790642, 29.958841, 28.678566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105339, 29.986282, 28.923950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573397, 0.286815, -0.767433,
		-0.228596, 0.955527, 0.186313,
		0.786740, 0.068601, 0.613461,
		34.341362, 30.006863, 29.107988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092056, 30.710779, 28.743719>,  <33.790642, 29.958841, 28.678566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092056, 30.710779, 28.743719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.361904, 30.420393, 28.797169>,  <34.523815, 30.246161, 28.829239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.361904, 30.420393, 28.797169>,  <34.092056, 30.710779, 28.743719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361904, 30.420393, 28.797169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562222, 0.388037, -0.730298,
		0.478321, 0.567801, 0.669933,
		0.674623, -0.725968, 0.133624,
		34.564289, 30.202602, 28.837255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748539, 30.965515, 28.453207>,  <34.092056, 30.710779, 28.743719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748539, 30.965515, 28.453207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.831722, 30.574722, 28.472237>,  <34.881634, 30.340246, 28.483654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.831722, 30.574722, 28.472237>,  <34.748539, 30.965515, 28.453207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831722, 30.574722, 28.472237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655858, 0.103189, -0.747798,
		0.725675, 0.186714, 0.662219,
		0.207958, -0.976980, 0.047576,
		34.894108, 30.281628, 28.486509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459721, 30.943672, 28.454876>,  <34.748539, 30.965515, 28.453207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459721, 30.943672, 28.454876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.313667, 30.600315, 28.310743>,  <35.226036, 30.394300, 28.224264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.313667, 30.600315, 28.310743>,  <35.459721, 30.943672, 28.454876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313667, 30.600315, 28.310743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586229, 0.088673, -0.805278,
		0.723196, -0.505273, 0.470836,
		-0.365135, -0.858392, -0.360334,
		35.204128, 30.342798, 28.202642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104099, 30.602165, 28.275156>,  <35.459721, 30.943672, 28.454876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104099, 30.602165, 28.275156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.804302, 30.407276, 28.095881>,  <35.624424, 30.290342, 27.988316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.804302, 30.407276, 28.095881>,  <36.104099, 30.602165, 28.275156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804302, 30.407276, 28.095881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503950, 0.019110, -0.863521,
		0.429294, -0.873068, 0.231214,
		-0.749494, -0.487224, -0.448187,
		35.579453, 30.261108, 27.961424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441517, 30.077448, 27.925016>,  <36.104099, 30.602165, 28.275156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441517, 30.077448, 27.925016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.079010, 30.077341, 27.755938>,  <35.861504, 30.077276, 27.654490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.079010, 30.077341, 27.755938>,  <36.441517, 30.077448, 27.925016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079010, 30.077341, 27.755938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416187, 0.174287, -0.892419,
		0.073906, -0.984695, -0.157842,
		-0.906271, -0.000264, -0.422698,
		35.807129, 30.077261, 27.629128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490875, 29.683357, 27.297894>,  <36.441517, 30.077448, 27.925016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490875, 29.683357, 27.297894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.183826, 29.937395, 27.263475>,  <35.999596, 30.089819, 27.242825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.183826, 29.937395, 27.263475>,  <36.490875, 29.683357, 27.297894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183826, 29.937395, 27.263475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237646, 0.157375, -0.958518,
		-0.595211, -0.756231, -0.271733,
		-0.767625, 0.635097, -0.086044,
		35.953537, 30.127924, 27.237661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096203, 29.461216, 26.698877>,  <36.490875, 29.683357, 27.297894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096203, 29.461216, 26.698877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.971825, 29.839340, 26.738287>,  <35.897198, 30.066214, 26.761932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.971825, 29.839340, 26.738287>,  <36.096203, 29.461216, 26.698877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971825, 29.839340, 26.738287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088947, 0.132150, -0.987231,
		-0.946258, -0.298208, -0.125173,
		-0.310941, 0.945309, 0.098523,
		35.878544, 30.122932, 26.767843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599682, 29.565590, 26.227051>,  <36.096203, 29.461216, 26.698877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599682, 29.565590, 26.227051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.733101, 29.932241, 26.315174>,  <35.813152, 30.152233, 26.368048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.733101, 29.932241, 26.315174>,  <35.599682, 29.565590, 26.227051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733101, 29.932241, 26.315174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349171, 0.096952, -0.932030,
		-0.875687, 0.387798, -0.287723,
		0.333544, 0.916631, 0.220308,
		35.833164, 30.207232, 26.381266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521217, 29.899654, 25.593716>,  <35.599682, 29.565590, 26.227051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521217, 29.899654, 25.593716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.784866, 30.120382, 25.798090>,  <35.943054, 30.252819, 25.920713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.784866, 30.120382, 25.798090>,  <35.521217, 29.899654, 25.593716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784866, 30.120382, 25.798090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457212, 0.245382, -0.854836,
		-0.597089, 0.797046, -0.090562,
		0.659122, 0.551820, 0.510934,
		35.982601, 30.285929, 25.951370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585724, 30.382839, 25.166103>,  <35.521217, 29.899654, 25.593716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585724, 30.382839, 25.166103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.920570, 30.380507, 25.384899>,  <36.121479, 30.379107, 25.516176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.920570, 30.380507, 25.384899>,  <35.585724, 30.382839, 25.166103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920570, 30.380507, 25.384899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528822, 0.264396, -0.806500,
		-0.139919, 0.964397, 0.224415,
		0.837120, -0.005831, 0.546988,
		36.171707, 30.378757, 25.548996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992958, 31.037689, 25.133039>,  <35.585724, 30.382839, 25.166103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992958, 31.037689, 25.133039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.247955, 30.745159, 25.230000>,  <36.400955, 30.569641, 25.288176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.247955, 30.745159, 25.230000>,  <35.992958, 31.037689, 25.133039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247955, 30.745159, 25.230000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548755, 0.210160, -0.809136,
		0.540801, 0.648840, 0.535296,
		0.637497, -0.731328, 0.242399,
		36.439205, 30.525761, 25.302719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557110, 31.138657, 24.747292>,  <35.992958, 31.037689, 25.133039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557110, 31.138657, 24.747292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.686943, 30.791197, 24.897011>,  <36.764843, 30.582722, 24.986843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.686943, 30.791197, 24.897011>,  <36.557110, 31.138657, 24.747292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686943, 30.791197, 24.897011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676135, -0.063645, -0.734024,
		0.661431, 0.491325, 0.566665,
		0.324579, -0.868648, 0.374298,
		36.784317, 30.530602, 25.009300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278618, 31.218626, 24.626520>,  <36.557110, 31.138657, 24.747292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278618, 31.218626, 24.626520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.169456, 30.834938, 24.655964>,  <37.103958, 30.604725, 24.673630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.169456, 30.834938, 24.655964>,  <37.278618, 31.218626, 24.626520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169456, 30.834938, 24.655964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563292, -0.221352, -0.796056,
		0.779887, -0.175786, 0.600730,
		-0.272908, -0.959220, 0.073611,
		37.087585, 30.547173, 24.678047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912567, 31.166216, 25.109911>,  <37.278618, 31.218626, 24.626520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912567, 31.166216, 25.109911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.225834, 31.407557, 25.170078>,  <38.413792, 31.552361, 25.206179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.225834, 31.407557, 25.170078>,  <37.912567, 31.166216, 25.109911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225834, 31.407557, 25.170078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439628, 0.366184, 0.820144,
		0.439755, -0.708432, 0.552032,
		0.783161, 0.603352, 0.150415,
		38.460781, 31.588562, 25.215202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132683, 31.095184, 25.795321>,  <37.912567, 31.166216, 25.109911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132683, 31.095184, 25.795321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.262432, 31.448708, 25.660461>,  <38.340282, 31.660822, 25.579546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.262432, 31.448708, 25.660461>,  <38.132683, 31.095184, 25.795321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262432, 31.448708, 25.660461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306302, 0.435354, 0.846549,
		0.894964, -0.171329, 0.411929,
		0.324374, 0.883806, -0.337147,
		38.359745, 31.713850, 25.559317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442085, 31.334911, 26.343586>,  <38.132683, 31.095184, 25.795321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442085, 31.334911, 26.343586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.394558, 31.665592, 26.123604>,  <38.366043, 31.864000, 25.991615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.394558, 31.665592, 26.123604>,  <38.442085, 31.334911, 26.343586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394558, 31.665592, 26.123604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349183, 0.483708, 0.802557,
		0.929492, 0.287390, 0.231198,
		-0.118815, 0.826700, -0.549955,
		38.358913, 31.913603, 25.958618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735664, 31.824125, 26.689054>,  <38.442085, 31.334911, 26.343586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735664, 31.824125, 26.689054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.469273, 32.020599, 26.464479>,  <38.309437, 32.138485, 26.329735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.469273, 32.020599, 26.464479>,  <38.735664, 31.824125, 26.689054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469273, 32.020599, 26.464479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355841, 0.452299, 0.817804,
		0.655629, 0.744422, -0.126439,
		-0.665979, 0.491183, -0.561436,
		38.269478, 32.167953, 26.296049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639164, 32.388203, 27.036669>,  <38.735664, 31.824125, 26.689054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639164, 32.388203, 27.036669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.319458, 32.419716, 26.798349>,  <38.127636, 32.438625, 26.655357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.319458, 32.419716, 26.798349>,  <38.639164, 32.388203, 27.036669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319458, 32.419716, 26.798349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521839, 0.400766, 0.753041,
		0.298102, 0.912787, -0.279205,
		-0.799262, 0.078783, -0.595797,
		38.079678, 32.443352, 26.619610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396770, 32.984482, 27.196035>,  <38.639164, 32.388203, 27.036669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396770, 32.984482, 27.196035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.067097, 32.841877, 27.020029>,  <37.869293, 32.756313, 26.914425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.067097, 32.841877, 27.020029>,  <38.396770, 32.984482, 27.196035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067097, 32.841877, 27.020029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552248, 0.333848, 0.763916,
		-0.125448, 0.872607, -0.472037,
		-0.824188, -0.356513, -0.440015,
		37.819839, 32.734924, 26.888025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835175, 33.548367, 27.213657>,  <38.396770, 32.984482, 27.196035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835175, 33.548367, 27.213657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.664726, 33.190922, 27.157255>,  <37.562458, 32.976456, 27.123413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.664726, 33.190922, 27.157255>,  <37.835175, 33.548367, 27.213657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664726, 33.190922, 27.157255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617715, 0.173532, 0.767017,
		-0.660943, 0.413946, -0.625941,
		-0.426124, -0.893608, -0.141006,
		37.536888, 32.922840, 27.114954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137630, 33.664051, 27.151588>,  <37.835175, 33.548367, 27.213657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137630, 33.664051, 27.151588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.166630, 33.276806, 27.247513>,  <37.184029, 33.044460, 27.305067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.166630, 33.276806, 27.247513>,  <37.137630, 33.664051, 27.151588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166630, 33.276806, 27.247513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660897, 0.133446, 0.738517,
		-0.746967, -0.212030, -0.630146,
		0.072497, -0.968109, 0.239810,
		37.188377, 32.986374, 27.319456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590145, 33.512680, 27.504078>,  <37.137630, 33.664051, 27.151588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590145, 33.512680, 27.504078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.827885, 33.215004, 27.626022>,  <36.970528, 33.036400, 27.699188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.827885, 33.215004, 27.626022>,  <36.590145, 33.512680, 27.504078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827885, 33.215004, 27.626022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369938, 0.083597, 0.925288,
		-0.714074, -0.662718, -0.225618,
		0.594344, -0.744188, 0.304859,
		37.006187, 32.991749, 27.717480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190025, 33.245415, 27.855640>,  <36.590145, 33.512680, 27.504078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190025, 33.245415, 27.855640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.541817, 33.111591, 27.991045>,  <36.752892, 33.031296, 28.072289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.541817, 33.111591, 27.991045>,  <36.190025, 33.245415, 27.855640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541817, 33.111591, 27.991045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301420, 0.158906, 0.940156,
		-0.368334, -0.928879, 0.038910,
		0.879474, -0.334563, 0.338514,
		36.805660, 33.011223, 28.092600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087036, 32.579136, 28.235769>,  <36.190025, 33.245415, 27.855640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087036, 32.579136, 28.235769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.425148, 32.744129, 28.371626>,  <36.628017, 32.843124, 28.453140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.425148, 32.744129, 28.371626>,  <36.087036, 32.579136, 28.235769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425148, 32.744129, 28.371626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281318, -0.196853, 0.939207,
		0.454266, -0.889442, -0.050358,
		0.845283, 0.412484, 0.339639,
		36.678734, 32.867874, 28.473518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339886, 32.114510, 28.812176>,  <36.087036, 32.579136, 28.235769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339886, 32.114510, 28.812176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.541267, 32.453804, 28.877935>,  <36.662098, 32.657383, 28.917391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.541267, 32.453804, 28.877935>,  <36.339886, 32.114510, 28.812176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541267, 32.453804, 28.877935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112869, -0.124075, 0.985833,
		0.856619, -0.514875, 0.033274,
		0.503453, 0.848238, 0.164398,
		36.692303, 32.708275, 28.927256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971134, 32.040230, 29.266600>,  <36.339886, 32.114510, 28.812176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971134, 32.040230, 29.266600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.860241, 32.423630, 29.293192>,  <36.793705, 32.653671, 29.309147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.860241, 32.423630, 29.293192>,  <36.971134, 32.040230, 29.266600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860241, 32.423630, 29.293192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077484, -0.046666, 0.995901,
		0.957673, 0.281249, -0.061331,
		-0.277234, 0.958500, 0.066483,
		36.777069, 32.711178, 29.313137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261185, 32.219086, 29.884975>,  <36.971134, 32.040230, 29.266600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261185, 32.219086, 29.884975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.057861, 32.550655, 29.791594>,  <36.935867, 32.749599, 29.735565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.057861, 32.550655, 29.791594>,  <37.261185, 32.219086, 29.884975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057861, 32.550655, 29.791594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063099, 0.234508, 0.970064,
		0.858861, 0.507822, -0.066898,
		-0.508308, 0.828929, -0.233452,
		36.905369, 32.799335, 29.721558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.327038, 33.047039, 24.766615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.940056, 33.106575, 24.684755>,  <41.707867, 33.142296, 24.635639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.940056, 33.106575, 24.684755>,  <42.327038, 33.047039, 24.766615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940056, 33.106575, 24.684755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126730, -0.415018, -0.900944,
		-0.219032, -0.897556, 0.382647,
		-0.967453, 0.148843, -0.204650,
		41.649818, 33.151230, 24.623360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966923, 32.434891, 24.575794>,  <42.327038, 33.047039, 24.766615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966923, 32.434891, 24.575794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.743141, 32.715012, 24.398443>,  <41.608871, 32.883083, 24.292032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.743141, 32.715012, 24.398443>,  <41.966923, 32.434891, 24.575794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743141, 32.715012, 24.398443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255938, -0.362827, -0.896020,
		-0.788356, -0.614760, 0.023751,
		-0.559455, 0.700304, -0.443377,
		41.575306, 32.925102, 24.265430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691528, 32.072582, 24.033848>,  <41.966923, 32.434891, 24.575794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691528, 32.072582, 24.033848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.618275, 32.454670, 23.940878>,  <41.574322, 32.683922, 23.885096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.618275, 32.454670, 23.940878>,  <41.691528, 32.072582, 24.033848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618275, 32.454670, 23.940878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004072, -0.237159, -0.971462,
		-0.983080, -0.176960, 0.047321,
		-0.183133, 0.955218, -0.232426,
		41.563335, 32.741234, 23.871151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336586, 32.031521, 23.450747>,  <41.691528, 32.072582, 24.033848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336586, 32.031521, 23.450747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.449528, 32.415169, 23.443050>,  <41.517292, 32.645355, 23.438433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.449528, 32.415169, 23.443050>,  <41.336586, 32.031521, 23.450747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449528, 32.415169, 23.443050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196589, -0.077481, -0.977420,
		-0.938950, 0.272200, -0.210429,
		0.282358, 0.959116, -0.019239,
		41.534237, 32.702904, 23.437279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014957, 32.256386, 22.877285>,  <41.336586, 32.031521, 23.450747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014957, 32.256386, 22.877285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.318668, 32.503941, 22.957754>,  <41.500896, 32.652473, 23.006035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.318668, 32.503941, 22.957754>,  <41.014957, 32.256386, 22.877285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318668, 32.503941, 22.957754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253017, 0.004061, -0.967453,
		-0.599562, 0.785469, -0.153506,
		0.759281, 0.618888, 0.201171,
		41.546452, 32.689606, 23.018106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982525, 32.767036, 22.311203>,  <41.014957, 32.256386, 22.877285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982525, 32.767036, 22.311203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.346760, 32.780170, 22.476004>,  <41.565300, 32.788052, 22.574884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.346760, 32.780170, 22.476004>,  <40.982525, 32.767036, 22.311203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346760, 32.780170, 22.476004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410742, 0.039015, -0.910917,
		-0.045983, 0.998699, 0.022041,
		0.910591, 0.032833, 0.412002,
		41.619938, 32.790020, 22.599604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395653, 33.324242, 22.013544>,  <40.982525, 32.767036, 22.311203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395653, 33.324242, 22.013544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.650188, 33.044643, 22.144068>,  <41.802910, 32.876884, 22.222382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.650188, 33.044643, 22.144068>,  <41.395653, 33.324242, 22.013544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650188, 33.044643, 22.144068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432047, -0.027492, -0.901432,
		0.639065, 0.714600, 0.284503,
		0.636342, -0.698993, 0.326310,
		41.841091, 32.834946, 22.241961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917301, 33.314392, 21.464674>,  <41.395653, 33.324242, 22.013544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917301, 33.314392, 21.464674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.024117, 33.000427, 21.688316>,  <42.088203, 32.812046, 21.822502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.024117, 33.000427, 21.688316>,  <41.917301, 33.314392, 21.464674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024117, 33.000427, 21.688316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819774, -0.119985, -0.559977,
		0.506619, 0.607875, 0.611412,
		0.267036, -0.784915, 0.559107,
		42.104229, 32.764954, 21.856049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629147, 33.341599, 21.457115>,  <41.917301, 33.314392, 21.464674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629147, 33.341599, 21.457115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.512321, 32.964813, 21.523346>,  <42.442226, 32.738743, 21.563084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.512321, 32.964813, 21.523346>,  <42.629147, 33.341599, 21.457115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512321, 32.964813, 21.523346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758292, -0.333567, -0.560113,
		0.582834, -0.038031, 0.811701,
		-0.292058, -0.941959, 0.165575,
		42.424706, 32.682224, 21.573019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205368, 32.833519, 21.554029>,  <42.629147, 33.341599, 21.457115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205368, 32.833519, 21.554029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.923367, 32.555145, 21.499395>,  <42.754166, 32.388123, 21.466614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.923367, 32.555145, 21.499395>,  <43.205368, 32.833519, 21.554029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923367, 32.555145, 21.499395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574067, -0.446890, -0.686103,
		0.416440, -0.562112, 0.714568,
		-0.705000, -0.695931, -0.136587,
		42.711868, 32.346367, 21.458420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508175, 32.178093, 21.621782>,  <43.205368, 32.833519, 21.554029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508175, 32.178093, 21.621782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.182541, 32.118526, 21.397247>,  <42.987160, 32.082787, 21.262527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.182541, 32.118526, 21.397247>,  <43.508175, 32.178093, 21.621782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182541, 32.118526, 21.397247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540721, -0.546996, -0.639075,
		-0.211883, -0.823784, 0.525819,
		-0.814080, -0.148912, -0.561336,
		42.938316, 32.073853, 21.228846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.554482, 31.378662, 21.547253>,  <43.508175, 32.178093, 21.621782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.554482, 31.378662, 21.547253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.322685, 31.545456, 21.267162>,  <43.183609, 31.645533, 21.099108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.322685, 31.545456, 21.267162>,  <43.554482, 31.378662, 21.547253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322685, 31.545456, 21.267162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333023, -0.663032, -0.670436,
		-0.743834, -0.621702, 0.245353,
		-0.579488, 0.416985, -0.700227,
		43.148838, 31.670551, 21.057095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076969, 30.845755, 21.209146>,  <43.554482, 31.378662, 21.547253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076969, 30.845755, 21.209146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.164234, 31.144583, 20.957975>,  <43.216591, 31.323879, 20.807272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.164234, 31.144583, 20.957975>,  <43.076969, 30.845755, 21.209146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164234, 31.144583, 20.957975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262721, -0.664630, -0.699460,
		-0.939885, -0.012375, -0.341267,
		0.218161, 0.747070, -0.627927,
		43.229683, 31.368704, 20.769598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658623, 30.746586, 20.561357>,  <43.076969, 30.845755, 21.209146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658623, 30.746586, 20.561357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.017250, 30.920580, 20.527990>,  <43.232426, 31.024977, 20.507969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.017250, 30.920580, 20.527990>,  <42.658623, 30.746586, 20.561357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017250, 30.920580, 20.527990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310529, -0.751634, -0.581908,
		-0.315823, 0.495814, -0.808965,
		0.896564, 0.434987, -0.083419,
		43.286221, 31.051077, 20.502964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871380, 30.638914, 20.512981>,  <42.658623, 30.746586, 20.561357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871380, 30.638914, 20.512981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.731094, 30.289125, 20.647030>,  <41.646923, 30.079252, 20.727459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.731094, 30.289125, 20.647030>,  <41.871380, 30.638914, 20.512981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731094, 30.289125, 20.647030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419328, 0.466608, 0.778743,
		-0.837357, 0.132588, -0.530334,
		-0.350710, -0.874470, 0.335119,
		41.625881, 30.026785, 20.747566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197205, 30.771544, 20.744633>,  <41.871380, 30.638914, 20.512981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197205, 30.771544, 20.744633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.296406, 30.435802, 20.938120>,  <41.355927, 30.234358, 21.054213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.296406, 30.435802, 20.938120>,  <41.197205, 30.771544, 20.744633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296406, 30.435802, 20.938120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534858, 0.297687, 0.790765,
		-0.807727, -0.454832, -0.375108,
		0.248000, -0.839351, 0.483720,
		41.370808, 30.183996, 21.083237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590919, 30.517179, 20.969585>,  <41.197205, 30.771544, 20.744633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590919, 30.517179, 20.969585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.866871, 30.345705, 21.202925>,  <41.032440, 30.242821, 21.342928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.866871, 30.345705, 21.202925>,  <40.590919, 30.517179, 20.969585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866871, 30.345705, 21.202925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526566, 0.255832, 0.810727,
		-0.496788, -0.866474, -0.049239,
		0.689877, -0.428686, 0.583350,
		41.073833, 30.217098, 21.377930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256310, 30.156944, 21.386993>,  <40.590919, 30.517179, 20.969585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256310, 30.156944, 21.386993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.608643, 30.177778, 21.575218>,  <40.820042, 30.190279, 21.688152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.608643, 30.177778, 21.575218>,  <40.256310, 30.156944, 21.386993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608643, 30.177778, 21.575218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467914, 0.247133, 0.848517,
		-0.072099, -0.967581, 0.242052,
		0.880828, 0.052083, 0.470563,
		40.872890, 30.193403, 21.716387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251354, 29.674000, 21.957150>,  <40.256310, 30.156944, 21.386993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251354, 29.674000, 21.957150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.513943, 29.965202, 22.036190>,  <40.671497, 30.139925, 22.083614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.513943, 29.965202, 22.036190>,  <40.251354, 29.674000, 21.957150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513943, 29.965202, 22.036190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392735, 0.106197, 0.913500,
		0.644051, -0.677293, 0.355630,
		0.656474, 0.728009, 0.197600,
		40.710884, 30.183605, 22.095470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288853, 29.606855, 22.694416>,  <40.251354, 29.674000, 21.957150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288853, 29.606855, 22.694416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.446110, 29.966871, 22.619192>,  <40.540462, 30.182880, 22.574059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.446110, 29.966871, 22.619192>,  <40.288853, 29.606855, 22.694416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446110, 29.966871, 22.619192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340640, 0.332541, 0.879421,
		0.854052, -0.281675, 0.437326,
		0.393140, 0.900042, -0.188058,
		40.564053, 30.236883, 22.562775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712246, 29.854490, 23.271643>,  <40.288853, 29.606855, 22.694416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712246, 29.854490, 23.271643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.624710, 30.200090, 23.090263>,  <40.572189, 30.407450, 22.981436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.624710, 30.200090, 23.090263>,  <40.712246, 29.854490, 23.271643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624710, 30.200090, 23.090263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359948, 0.360456, 0.860528,
		0.906943, 0.351537, 0.232111,
		-0.218842, 0.863998, -0.453448,
		40.559059, 30.459290, 22.954229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937397, 30.369017, 23.861502>,  <40.712246, 29.854490, 23.271643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937397, 30.369017, 23.861502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.729877, 30.577766, 23.590652>,  <40.605366, 30.703016, 23.428143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.729877, 30.577766, 23.590652>,  <40.937397, 30.369017, 23.861502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729877, 30.577766, 23.590652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373425, 0.574156, 0.728628,
		0.769025, 0.630867, -0.102992,
		-0.518800, 0.521873, -0.677122,
		40.574238, 30.734329, 23.387516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956383, 31.082960, 24.153465>,  <40.937397, 30.369017, 23.861502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956383, 31.082960, 24.153465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.652748, 31.070517, 23.893366>,  <40.470566, 31.063049, 23.737307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.652748, 31.070517, 23.893366>,  <40.956383, 31.082960, 24.153465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652748, 31.070517, 23.893366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540283, 0.587324, 0.602616,
		0.363158, 0.808754, -0.462637,
		-0.759086, -0.031110, -0.650247,
		40.425022, 31.061184, 23.698292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670593, 31.738405, 24.168991>,  <40.956383, 31.082960, 24.153465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670593, 31.738405, 24.168991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.381241, 31.499931, 24.029688>,  <40.207630, 31.356846, 23.946106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.381241, 31.499931, 24.029688>,  <40.670593, 31.738405, 24.168991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381241, 31.499931, 24.029688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640850, 0.392027, 0.660020,
		-0.256968, 0.700626, -0.665650,
		-0.723380, -0.596186, -0.348258,
		40.164227, 31.321075, 23.925211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000748, 32.201336, 24.165005>,  <40.670593, 31.738405, 24.168991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000748, 32.201336, 24.165005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.883812, 31.819801, 24.137461>,  <39.813652, 31.590881, 24.120934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.883812, 31.819801, 24.137461>,  <40.000748, 32.201336, 24.165005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883812, 31.819801, 24.137461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726384, 0.174638, 0.664731,
		-0.622017, 0.244344, -0.743902,
		-0.292336, -0.953833, -0.068859,
		39.796112, 31.533651, 24.116802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335365, 32.278820, 23.914593>,  <40.000748, 32.201336, 24.165005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335365, 32.278820, 23.914593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.368923, 31.923779, 24.095751>,  <39.389057, 31.710752, 24.204447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.368923, 31.923779, 24.095751>,  <39.335365, 32.278820, 23.914593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368923, 31.923779, 24.095751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802437, 0.209293, 0.558830,
		-0.590810, -0.410305, -0.694690,
		0.083897, -0.887607, 0.452896,
		39.394093, 31.657495, 24.231619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624557, 32.069839, 23.981232>,  <39.335365, 32.278820, 23.914593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624557, 32.069839, 23.981232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.844440, 31.868420, 24.247841>,  <38.976372, 31.747568, 24.407806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.844440, 31.868420, 24.247841>,  <38.624557, 32.069839, 23.981232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844440, 31.868420, 24.247841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684599, 0.185660, 0.704879,
		-0.478690, -0.843781, -0.242671,
		0.549709, -0.503551, 0.666525,
		39.009354, 31.717354, 24.447798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085358, 31.715561, 24.338140>,  <38.624557, 32.069839, 23.981232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085358, 31.715561, 24.338140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.406944, 31.732048, 24.575439>,  <38.599895, 31.741940, 24.717819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.406944, 31.732048, 24.575439>,  <38.085358, 31.715561, 24.338140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406944, 31.732048, 24.575439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585423, 0.230170, 0.777368,
		-0.104507, -0.972277, 0.209178,
		0.803964, 0.041217, 0.593248,
		38.648132, 31.744413, 24.753414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928356, 30.937231, 24.432726>,  <38.085358, 31.715561, 24.338140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928356, 30.937231, 24.432726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.638798, 30.661785, 24.415855>,  <37.465061, 30.496517, 24.405733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.638798, 30.661785, 24.415855>,  <37.928356, 30.937231, 24.432726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638798, 30.661785, 24.415855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562561, -0.553788, -0.613876,
		0.399367, -0.468112, 0.788275,
		-0.723900, -0.688614, -0.042177,
		37.421627, 30.455200, 24.403202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305202, 30.201221, 24.396027>,  <37.928356, 30.937231, 24.432726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305202, 30.201221, 24.396027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.943390, 30.197720, 24.225500>,  <37.726303, 30.195618, 24.123184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.943390, 30.197720, 24.225500>,  <38.305202, 30.201221, 24.396027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943390, 30.197720, 24.225500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339547, -0.619557, -0.707712,
		-0.257930, -0.784902, 0.563383,
		-0.904533, -0.008755, -0.426314,
		37.672031, 30.195093, 24.097607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326168, 29.422791, 24.207249>,  <38.305202, 30.201221, 24.396027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326168, 29.422791, 24.207249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.028927, 29.614599, 24.020550>,  <37.850582, 29.729685, 23.908529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.028927, 29.614599, 24.020550>,  <38.326168, 29.422791, 24.207249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028927, 29.614599, 24.020550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212753, -0.492009, -0.844194,
		-0.634454, -0.726626, 0.263594,
		-0.743104, 0.479522, -0.466749,
		37.805996, 29.758455, 23.880526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925629, 28.962280, 23.806398>,  <38.326168, 29.422791, 24.207249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925629, 28.962280, 23.806398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.834282, 29.307486, 23.626152>,  <37.779472, 29.514608, 23.518003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.834282, 29.307486, 23.626152>,  <37.925629, 28.962280, 23.806398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834282, 29.307486, 23.626152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126944, -0.432500, -0.892653,
		-0.965263, -0.261059, -0.010784,
		-0.228371, 0.863013, -0.450616,
		37.765770, 29.566389, 23.490967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410240, 28.897520, 23.339535>,  <37.925629, 28.962280, 23.806398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410240, 28.897520, 23.339535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.624969, 29.208748, 23.209040>,  <37.753807, 29.395485, 23.130743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.624969, 29.208748, 23.209040>,  <37.410240, 28.897520, 23.339535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624969, 29.208748, 23.209040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121139, -0.453751, -0.882856,
		-0.834953, 0.434418, -0.337838,
		0.536823, 0.778069, -0.326236,
		37.786015, 29.442169, 23.111170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098392, 29.142696, 22.671171>,  <37.410240, 28.897520, 23.339535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098392, 29.142696, 22.671171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.457096, 29.318716, 22.689867>,  <37.672318, 29.424328, 22.701084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.457096, 29.318716, 22.689867>,  <37.098392, 29.142696, 22.671171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457096, 29.318716, 22.689867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231739, -0.376997, -0.896756,
		-0.376997, 0.815003, -0.440050,
		0.896756, 0.440050, 0.046741,
		37.726124, 29.450731, 22.703890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131855, 29.338015, 21.997995>,  <37.098392, 29.142696, 22.671171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131855, 29.338015, 21.997995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.504177, 29.370275, 22.140594>,  <37.727570, 29.389631, 22.226154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.504177, 29.370275, 22.140594>,  <37.131855, 29.338015, 21.997995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504177, 29.370275, 22.140594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365500, -0.212028, -0.906341,
		0.002490, 0.973930, -0.226836,
		0.930808, 0.080652, 0.356499,
		37.783421, 29.394470, 22.247543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141396, 30.117823, 21.892021>,  <37.131855, 29.338015, 21.997995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141396, 30.117823, 21.892021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.784618, 30.249315, 21.767847>,  <36.570553, 30.328211, 21.693342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.784618, 30.249315, 21.767847>,  <37.141396, 30.117823, 21.892021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784618, 30.249315, 21.767847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421539, -0.356285, 0.833886,
		0.163523, 0.874640, 0.456360,
		-0.891945, 0.328733, -0.310434,
		36.517036, 30.347935, 21.674717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831123, 30.310654, 22.503571>,  <37.141396, 30.117823, 21.892021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831123, 30.310654, 22.503571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.525398, 30.307333, 22.245653>,  <36.341965, 30.305340, 22.090902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.525398, 30.307333, 22.245653>,  <36.831123, 30.310654, 22.503571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525398, 30.307333, 22.245653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642514, -0.075143, 0.762580,
		-0.054784, 0.997138, 0.052098,
		-0.764313, -0.008303, -0.644792,
		36.296104, 30.304842, 22.052216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234062, 30.708347, 22.801962>,  <36.831123, 30.310654, 22.503571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234062, 30.708347, 22.801962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.078621, 30.431767, 22.558361>,  <35.985355, 30.265818, 22.412201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.078621, 30.431767, 22.558361>,  <36.234062, 30.708347, 22.801962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078621, 30.431767, 22.558361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608863, -0.303380, 0.732970,
		-0.691572, 0.655633, -0.303105,
		-0.388604, -0.691452, -0.609001,
		35.962040, 30.224331, 22.375660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569984, 30.787630, 23.102373>,  <36.234062, 30.708347, 22.801962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569984, 30.787630, 23.102373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552303, 30.478907, 22.848646>,  <35.541695, 30.293673, 22.696411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552303, 30.478907, 22.848646>,  <35.569984, 30.787630, 23.102373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552303, 30.478907, 22.848646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587638, -0.493390, 0.641287,
		-0.807916, 0.401095, -0.431735,
		-0.044203, -0.771809, -0.634316,
		35.539043, 30.247364, 22.658352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892155, 30.631205, 22.954521>,  <35.569984, 30.787630, 23.102373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892155, 30.631205, 22.954521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.090012, 30.286905, 22.906450>,  <35.208725, 30.080326, 22.877607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.090012, 30.286905, 22.906450>,  <34.892155, 30.631205, 22.954521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090012, 30.286905, 22.906450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623787, -0.447899, 0.640529,
		-0.605163, -0.241863, -0.758472,
		0.494639, -0.860749, -0.120181,
		35.238403, 30.028681, 22.870396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378952, 30.170900, 22.968817>,  <34.892155, 30.631205, 22.954521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378952, 30.170900, 22.968817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.711441, 29.959803, 23.038744>,  <34.910934, 29.833143, 23.080700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.711441, 29.959803, 23.038744>,  <34.378952, 30.170900, 22.968817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711441, 29.959803, 23.038744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507991, -0.593229, 0.624520,
		-0.225880, -0.607918, -0.761192,
		0.831218, -0.527745, 0.174818,
		34.960808, 29.801479, 23.091190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175106, 29.518845, 22.831261>,  <34.378952, 30.170900, 22.968817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175106, 29.518845, 22.831261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.474003, 29.488344, 23.095327>,  <34.653339, 29.470045, 23.253767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.474003, 29.488344, 23.095327>,  <34.175106, 29.518845, 22.831261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474003, 29.488344, 23.095327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580741, -0.557856, 0.592906,
		0.323069, -0.826428, -0.461133,
		0.747239, -0.076249, 0.660166,
		34.698174, 29.465469, 23.293377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.413616, 33.050934, 18.753439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.635303, 32.841934, 19.012617>,  <40.768314, 32.716534, 19.168125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.635303, 32.841934, 19.012617>,  <40.413616, 33.050934, 18.753439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635303, 32.841934, 19.012617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567360, 0.332453, 0.753377,
		-0.609052, -0.785155, -0.112194,
		0.554219, -0.522500, 0.647946,
		40.801571, 32.685184, 19.207001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942566, 32.687283, 19.261566>,  <40.413616, 33.050934, 18.753439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942566, 32.687283, 19.261566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.299572, 32.729721, 19.436913>,  <40.513775, 32.755184, 19.542120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.299572, 32.729721, 19.436913>,  <39.942566, 32.687283, 19.261566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299572, 32.729721, 19.436913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445174, 0.363242, 0.818459,
		-0.072398, -0.925634, 0.371429,
		0.892512, 0.106096, 0.438366,
		40.567326, 32.761551, 19.568422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774799, 32.518242, 20.046694>,  <39.942566, 32.687283, 19.261566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774799, 32.518242, 20.046694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.116814, 32.723724, 20.018370>,  <40.322021, 32.847015, 20.001375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.116814, 32.723724, 20.018370>,  <39.774799, 32.518242, 20.046694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116814, 32.723724, 20.018370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242853, 0.517331, 0.820604,
		0.458181, -0.684453, 0.567093,
		0.855039, 0.513705, -0.070810,
		40.373325, 32.877838, 19.997126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104782, 32.397621, 20.626850>,  <39.774799, 32.518242, 20.046694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104782, 32.397621, 20.626850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.269825, 32.731487, 20.480923>,  <40.368851, 32.931805, 20.393366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.269825, 32.731487, 20.480923>,  <40.104782, 32.397621, 20.626850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269825, 32.731487, 20.480923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176778, 0.466256, 0.866807,
		0.893591, -0.293159, 0.339931,
		0.412607, 0.834663, -0.364819,
		40.393608, 32.981888, 20.371477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517765, 32.711563, 21.250725>,  <40.104782, 32.397621, 20.626850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517765, 32.711563, 21.250725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.459808, 32.996166, 20.975695>,  <40.425034, 33.166927, 20.810677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.459808, 32.996166, 20.975695>,  <40.517765, 32.711563, 21.250725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459808, 32.996166, 20.975695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100078, 0.680808, 0.725593,
		0.984373, 0.173946, -0.027439,
		-0.144894, 0.711508, -0.687577,
		40.416340, 33.209618, 20.769421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786079, 33.324722, 21.481909>,  <40.517765, 32.711563, 21.250725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786079, 33.324722, 21.481909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.535656, 33.462830, 21.202242>,  <40.385403, 33.545692, 21.034441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.535656, 33.462830, 21.202242>,  <40.786079, 33.324722, 21.481909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535656, 33.462830, 21.202242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232061, 0.773505, 0.589777,
		0.744441, 0.531487, -0.404139,
		-0.626063, 0.345270, -0.699167,
		40.347836, 33.566410, 20.992493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681084, 34.133850, 21.601044>,  <40.786079, 33.324722, 21.481909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681084, 34.133850, 21.601044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.369419, 34.031773, 21.372032>,  <40.182419, 33.970528, 21.234625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.369419, 34.031773, 21.372032>,  <40.681084, 34.133850, 21.601044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369419, 34.031773, 21.372032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568909, 0.671361, 0.474991,
		0.263158, 0.695810, -0.668279,
		-0.779160, -0.255192, -0.572527,
		40.135670, 33.955215, 21.200274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360806, 34.767658, 21.471796>,  <40.681084, 34.133850, 21.601044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360806, 34.767658, 21.471796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.074699, 34.513031, 21.356432>,  <39.903038, 34.360256, 21.287212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.074699, 34.513031, 21.356432>,  <40.360806, 34.767658, 21.471796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074699, 34.513031, 21.356432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695625, 0.608865, 0.381298,
		-0.067118, 0.473355, -0.878311,
		-0.715262, -0.636567, -0.288412,
		39.860119, 34.322060, 21.269909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786400, 35.148201, 21.269489>,  <40.360806, 34.767658, 21.471796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786400, 35.148201, 21.269489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.594475, 34.802181, 21.328093>,  <39.479321, 34.594570, 21.363255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.594475, 34.802181, 21.328093>,  <39.786400, 35.148201, 21.269489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594475, 34.802181, 21.328093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664753, 0.467413, 0.582776,
		-0.572612, 0.182230, -0.799317,
		-0.479811, -0.865053, 0.146509,
		39.450531, 34.542664, 21.372046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104340, 35.374088, 21.100311>,  <39.786400, 35.148201, 21.269489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104340, 35.374088, 21.100311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.091896, 35.046741, 21.329849>,  <39.084431, 34.850334, 21.467573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.091896, 35.046741, 21.329849>,  <39.104340, 35.374088, 21.100311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091896, 35.046741, 21.329849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629265, 0.462098, 0.624892,
		-0.776568, -0.341663, -0.529348,
		-0.031109, -0.818371, 0.573847,
		39.082565, 34.801231, 21.502003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372799, 35.163803, 21.238901>,  <39.104340, 35.374088, 21.100311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372799, 35.163803, 21.238901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.603306, 35.018929, 21.531950>,  <38.741611, 34.932003, 21.707779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.603306, 35.018929, 21.531950>,  <38.372799, 35.163803, 21.238901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603306, 35.018929, 21.531950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603176, 0.416387, 0.680295,
		-0.551446, -0.833934, 0.021492,
		0.576270, -0.362182, 0.732624,
		38.776188, 34.910275, 21.751738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934471, 35.004028, 21.746025>,  <38.372799, 35.163803, 21.238901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934471, 35.004028, 21.746025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.272949, 35.023376, 21.958298>,  <38.476036, 35.034985, 22.085661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.272949, 35.023376, 21.958298>,  <37.934471, 35.004028, 21.746025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272949, 35.023376, 21.958298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474578, 0.521342, 0.709210,
		-0.242358, -0.851976, 0.464111,
		0.846191, 0.048374, 0.530680,
		38.526806, 35.037888, 22.117502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546383, 34.346783, 21.693037>,  <37.934471, 35.004028, 21.746025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546383, 34.346783, 21.693037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.190136, 34.478363, 21.567436>,  <36.976387, 34.557312, 21.492077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.190136, 34.478363, 21.567436>,  <37.546383, 34.346783, 21.693037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190136, 34.478363, 21.567436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325438, -0.021256, -0.945324,
		-0.317641, -0.944107, -0.088123,
		-0.890614, 0.328952, -0.314000,
		36.922951, 34.577049, 21.473236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358730, 33.894665, 21.177258>,  <37.546383, 34.346783, 21.693037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358730, 33.894665, 21.177258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.141136, 34.220753, 21.097769>,  <37.010578, 34.416405, 21.050076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.141136, 34.220753, 21.097769>,  <37.358730, 33.894665, 21.177258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141136, 34.220753, 21.097769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190233, -0.110844, -0.975461,
		-0.817245, -0.568442, -0.094785,
		-0.543987, 0.815222, -0.198723,
		36.977940, 34.465321, 21.038153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750595, 33.608624, 20.735743>,  <37.358730, 33.894665, 21.177258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750595, 33.608624, 20.735743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.806736, 34.000534, 20.678686>,  <36.840420, 34.235680, 20.644451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.806736, 34.000534, 20.678686>,  <36.750595, 33.608624, 20.735743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806736, 34.000534, 20.678686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364674, -0.185098, -0.912552,
		-0.920496, 0.076065, -0.383278,
		0.140357, 0.979772, -0.142643,
		36.848843, 34.294464, 20.635893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465275, 33.725166, 20.069040>,  <36.750595, 33.608624, 20.735743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465275, 33.725166, 20.069040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.709522, 34.027328, 20.164120>,  <36.856071, 34.208626, 20.221167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.709522, 34.027328, 20.164120>,  <36.465275, 33.725166, 20.069040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709522, 34.027328, 20.164120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302194, 0.055174, -0.951648,
		-0.731997, 0.652928, -0.194589,
		0.610622, 0.755407, 0.237698,
		36.892708, 34.253952, 20.235430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468163, 34.166668, 19.504000>,  <36.465275, 33.725166, 20.069040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468163, 34.166668, 19.504000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.811600, 34.280979, 19.674250>,  <37.017662, 34.349564, 19.776400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.811600, 34.280979, 19.674250>,  <36.468163, 34.166668, 19.504000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811600, 34.280979, 19.674250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431530, 0.045352, -0.900958,
		-0.276775, 0.957223, -0.084382,
		0.858590, 0.285776, 0.425623,
		37.069176, 34.366711, 19.801937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766861, 34.607586, 19.035734>,  <36.468163, 34.166668, 19.504000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766861, 34.607586, 19.035734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.060459, 34.457012, 19.261850>,  <37.236618, 34.366669, 19.397520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.060459, 34.457012, 19.261850>,  <36.766861, 34.607586, 19.035734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060459, 34.457012, 19.261850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558925, -0.138040, -0.817648,
		0.385821, 0.916103, 0.109077,
		0.733992, -0.376431, 0.565292,
		37.280659, 34.344082, 19.431438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411411, 34.936493, 18.781864>,  <36.766861, 34.607586, 19.035734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411411, 34.936493, 18.781864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.498356, 34.594746, 18.970673>,  <37.550522, 34.389698, 19.083958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.498356, 34.594746, 18.970673>,  <37.411411, 34.936493, 18.781864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498356, 34.594746, 18.970673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720710, -0.185649, -0.667916,
		0.658278, 0.485369, 0.575401,
		0.217363, -0.854372, 0.472019,
		37.563564, 34.338432, 19.112278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163353, 34.777649, 18.599152>,  <37.411411, 34.936493, 18.781864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163353, 34.777649, 18.599152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.000084, 34.443394, 18.746174>,  <37.902122, 34.242840, 18.834387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.000084, 34.443394, 18.746174>,  <38.163353, 34.777649, 18.599152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000084, 34.443394, 18.746174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628685, -0.549240, -0.550537,
		0.661927, 0.006360, 0.749542,
		-0.408177, -0.835640, 0.367555,
		37.877632, 34.192703, 18.856440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776485, 34.277988, 18.611313>,  <38.163353, 34.777649, 18.599152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776485, 34.277988, 18.611313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.450333, 34.048077, 18.638968>,  <38.254639, 33.910130, 18.655561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.450333, 34.048077, 18.638968>,  <38.776485, 34.277988, 18.611313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450333, 34.048077, 18.638968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489195, -0.747945, -0.448628,
		0.309572, -0.331982, 0.891040,
		-0.815385, -0.574775, 0.069139,
		38.205715, 33.875645, 18.659710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024937, 33.738976, 18.977270>,  <38.776485, 34.277988, 18.611313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024937, 33.738976, 18.977270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.687275, 33.638855, 18.787636>,  <38.484680, 33.578781, 18.673855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.687275, 33.638855, 18.787636>,  <39.024937, 33.738976, 18.977270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687275, 33.638855, 18.787636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472286, -0.765667, -0.436693,
		-0.253687, -0.592539, 0.764553,
		-0.844150, -0.250304, -0.474088,
		38.434029, 33.563763, 18.645409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049019, 33.110455, 19.104719>,  <39.024937, 33.738976, 18.977270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049019, 33.110455, 19.104719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.777130, 33.125843, 18.811733>,  <38.613998, 33.135078, 18.635942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.777130, 33.125843, 18.811733>,  <39.049019, 33.110455, 19.104719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777130, 33.125843, 18.811733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427548, -0.790635, -0.438290,
		-0.595975, -0.611077, 0.520959,
		-0.679718, 0.038475, -0.732464,
		38.573215, 33.137386, 18.591993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808723, 32.405285, 19.115980>,  <39.049019, 33.110455, 19.104719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808723, 32.405285, 19.115980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.723228, 32.577374, 18.765160>,  <38.671932, 32.680626, 18.554667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.723228, 32.577374, 18.765160>,  <38.808723, 32.405285, 19.115980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723228, 32.577374, 18.765160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469131, -0.742296, -0.478449,
		-0.856874, -0.513715, -0.043176,
		-0.213737, 0.430225, -0.877053,
		38.659107, 32.706440, 18.502043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929081, 32.182770, 19.941195>,  <38.808723, 32.405285, 19.115980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929081, 32.182770, 19.941195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.611446, 32.272926, 19.715406>,  <38.420864, 32.327023, 19.579933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.611446, 32.272926, 19.715406>,  <38.929081, 32.182770, 19.941195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611446, 32.272926, 19.715406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579646, -0.560233, 0.591734,
		-0.182861, 0.797080, 0.575521,
		-0.794086, 0.225394, -0.564470,
		38.373222, 32.340546, 19.546066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370705, 32.580990, 20.299282>,  <38.929081, 32.182770, 19.941195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370705, 32.580990, 20.299282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.228405, 32.343864, 20.010281>,  <38.143024, 32.201588, 19.836880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.228405, 32.343864, 20.010281>,  <38.370705, 32.580990, 20.299282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228405, 32.343864, 20.010281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595503, -0.452032, 0.664111,
		-0.720289, 0.666513, -0.192210,
		-0.355754, -0.592813, -0.722504,
		38.121677, 32.166019, 19.793530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637165, 32.682175, 20.233679>,  <38.370705, 32.580990, 20.299282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637165, 32.682175, 20.233679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.689884, 32.335114, 20.041927>,  <37.721516, 32.126877, 19.926876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.689884, 32.335114, 20.041927>,  <37.637165, 32.682175, 20.233679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689884, 32.335114, 20.041927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741606, -0.407195, 0.533116,
		-0.657762, 0.285249, -0.697124,
		0.131795, -0.867655, -0.479380,
		37.729424, 32.074818, 19.898113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918228, 32.343372, 20.072887>,  <37.637165, 32.682175, 20.233679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918228, 32.343372, 20.072887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.180073, 32.041077, 20.065483>,  <37.337181, 31.859699, 20.061041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.180073, 32.041077, 20.065483>,  <36.918228, 32.343372, 20.072887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180073, 32.041077, 20.065483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683379, -0.602051, 0.412949,
		-0.323227, -0.257671, -0.910566,
		0.654612, -0.755738, -0.018512,
		37.376457, 31.814356, 20.059929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536953, 31.708382, 19.782351>,  <36.918228, 32.343372, 20.072887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536953, 31.708382, 19.782351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.852146, 31.561369, 19.979937>,  <37.041264, 31.473162, 20.098488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.852146, 31.561369, 19.979937>,  <36.536953, 31.708382, 19.782351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852146, 31.561369, 19.979937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581760, -0.707129, 0.401900,
		0.201584, -0.604059, -0.771023,
		0.787985, -0.367534, 0.493963,
		37.088543, 31.451109, 20.128126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373844, 31.026142, 19.708645>,  <36.536953, 31.708382, 19.782351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373844, 31.026142, 19.708645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.658459, 31.019279, 19.989622>,  <36.829227, 31.015162, 20.158209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.658459, 31.019279, 19.989622>,  <36.373844, 31.026142, 19.708645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658459, 31.019279, 19.989622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597955, -0.539795, 0.592513,
		0.369011, -0.841622, -0.394340,
		0.711535, -0.017154, 0.702442,
		36.871918, 31.014133, 20.200356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529366, 30.310677, 19.929447>,  <36.373844, 31.026142, 19.708645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529366, 30.310677, 19.929447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.631039, 30.562878, 20.222801>,  <36.692043, 30.714199, 20.398813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.631039, 30.562878, 20.222801>,  <36.529366, 30.310677, 19.929447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631039, 30.562878, 20.222801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615269, -0.479646, 0.625607,
		0.746213, -0.610250, 0.266010,
		0.254186, 0.630504, 0.733386,
		36.707294, 30.752029, 20.442818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589458, 29.817806, 20.517015>,  <36.529366, 30.310677, 19.929447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589458, 29.817806, 20.517015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.574707, 30.182699, 20.680220>,  <36.565857, 30.401634, 20.778143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.574707, 30.182699, 20.680220>,  <36.589458, 29.817806, 20.517015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574707, 30.182699, 20.680220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445181, -0.380534, 0.810560,
		0.894681, -0.151747, 0.420142,
		-0.036878, 0.912232, 0.408011,
		36.563644, 30.456369, 20.802624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855396, 29.717421, 21.234894>,  <36.589458, 29.817806, 20.517015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855396, 29.717421, 21.234894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.663692, 30.066990, 21.267319>,  <36.548672, 30.276731, 21.286774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.663692, 30.066990, 21.267319>,  <36.855396, 29.717421, 21.234894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663692, 30.066990, 21.267319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176382, -0.186378, 0.966516,
		0.859768, 0.448913, 0.243467,
		-0.479258, 0.873923, 0.081061,
		36.519917, 30.329166, 21.291637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553444, 29.461798, 21.313337>,  <36.855396, 29.717421, 21.234894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553444, 29.461798, 21.313337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.817162, 29.374651, 21.601189>,  <37.975391, 29.322363, 21.773899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.817162, 29.374651, 21.601189>,  <37.553444, 29.461798, 21.313337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817162, 29.374651, 21.601189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681520, -0.231102, -0.694351,
		0.317582, 0.948223, -0.003885,
		0.659297, -0.217866, 0.719626,
		38.014950, 29.309292, 21.817076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264275, 29.843990, 21.285595>,  <37.553444, 29.461798, 21.313337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264275, 29.843990, 21.285595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.315586, 29.495634, 21.475372>,  <38.346371, 29.286621, 21.589239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.315586, 29.495634, 21.475372>,  <38.264275, 29.843990, 21.285595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315586, 29.495634, 21.475372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734009, -0.238338, -0.635945,
		0.666915, 0.429824, 0.608667,
		0.128276, -0.870889, 0.474446,
		38.354069, 29.234367, 21.617706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960949, 29.667221, 21.253735>,  <38.264275, 29.843990, 21.285595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960949, 29.667221, 21.253735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.798073, 29.318783, 21.363564>,  <38.700348, 29.109720, 21.429461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.798073, 29.318783, 21.363564>,  <38.960949, 29.667221, 21.253735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798073, 29.318783, 21.363564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641302, -0.486733, -0.593147,
		0.650331, -0.065439, 0.756827,
		-0.407188, -0.871096, 0.274571,
		38.675915, 29.057453, 21.445934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461590, 29.289246, 21.380684>,  <38.960949, 29.667221, 21.253735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461590, 29.289246, 21.380684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.184662, 29.002621, 21.346668>,  <39.018505, 28.830647, 21.326260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.184662, 29.002621, 21.346668>,  <39.461590, 29.289246, 21.380684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184662, 29.002621, 21.346668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610746, -0.519129, -0.597908,
		0.384292, -0.465882, 0.797041,
		-0.692321, -0.716561, -0.085039,
		38.976967, 28.787653, 21.321157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785774, 28.708973, 21.463984>,  <39.461590, 29.289246, 21.380684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785774, 28.708973, 21.463984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.454544, 28.553564, 21.302319>,  <39.255806, 28.460320, 21.205320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.454544, 28.553564, 21.302319>,  <39.785774, 28.708973, 21.463984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454544, 28.553564, 21.302319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546699, -0.719282, -0.428664,
		-0.124162, -0.575921, 0.808022,
		-0.828072, -0.388521, -0.404163,
		39.206123, 28.437008, 21.181070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795315, 27.968903, 21.574446>,  <39.785774, 28.708973, 21.463984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795315, 27.968903, 21.574446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.565590, 28.063532, 21.260962>,  <39.427757, 28.120310, 21.072870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.565590, 28.063532, 21.260962>,  <39.795315, 27.968903, 21.574446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565590, 28.063532, 21.260962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438574, -0.719444, -0.538566,
		-0.691245, -0.653019, 0.309431,
		-0.574312, 0.236572, -0.783709,
		39.393299, 28.134504, 21.025848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571453, 27.390224, 21.318861>,  <39.795315, 27.968903, 21.574446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571453, 27.390224, 21.318861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.541985, 27.630444, 21.000385>,  <39.524303, 27.774574, 20.809299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.541985, 27.630444, 21.000385>,  <39.571453, 27.390224, 21.318861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541985, 27.630444, 21.000385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549862, -0.641582, -0.534813,
		-0.832000, -0.477195, -0.282951,
		-0.073674, 0.600548, -0.796187,
		39.519882, 27.810608, 20.761530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229069, 27.043812, 20.809139>,  <39.571453, 27.390224, 21.318861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229069, 27.043812, 20.809139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.417503, 27.323624, 20.594200>,  <39.530563, 27.491510, 20.465237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.417503, 27.323624, 20.594200>,  <39.229069, 27.043812, 20.809139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417503, 27.323624, 20.594200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355902, -0.708123, -0.609833,
		-0.807101, 0.096041, -0.582549,
		0.471085, 0.699527, -0.537346,
		39.558830, 27.533482, 20.432997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060886, 26.933311, 20.154234>,  <39.229069, 27.043812, 20.809139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060886, 26.933311, 20.154234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.387108, 27.164242, 20.138412>,  <39.582840, 27.302799, 20.128920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.387108, 27.164242, 20.138412>,  <39.060886, 26.933311, 20.154234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387108, 27.164242, 20.138412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396683, -0.607516, -0.688162,
		-0.421322, 0.545544, -0.724479,
		0.815555, 0.577326, -0.039552,
		39.631775, 27.337440, 20.126547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.967285, 30.709934, 33.886810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.309093, 30.908863, 33.826851>,  <33.514179, 31.028221, 33.790874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.309093, 30.908863, 33.826851>,  <32.967285, 30.709934, 33.886810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309093, 30.908863, 33.826851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023033, -0.324580, -0.945578,
		-0.518912, 0.804560, -0.288814,
		0.854517, 0.497324, -0.149897,
		33.565449, 31.058060, 33.781883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916447, 31.015049, 33.215748>,  <32.967285, 30.709934, 33.886810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916447, 31.015049, 33.215748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.308834, 31.028099, 33.292320>,  <33.544266, 31.035929, 33.338264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.308834, 31.028099, 33.292320>,  <32.916447, 31.015049, 33.215748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308834, 31.028099, 33.292320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189891, -0.367404, -0.910470,
		0.040626, 0.929489, -0.366606,
		0.980964, 0.032627, 0.191428,
		33.603123, 31.037888, 33.349751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208809, 31.409122, 32.699001>,  <32.916447, 31.015049, 33.215748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208809, 31.409122, 32.699001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505157, 31.170633, 32.822697>,  <33.682968, 31.027540, 32.896912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505157, 31.170633, 32.822697>,  <33.208809, 31.409122, 32.699001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505157, 31.170633, 32.822697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255036, -0.176198, -0.950742,
		0.621341, 0.783245, 0.021518,
		0.740873, -0.596223, 0.309235,
		33.727421, 30.991766, 32.915466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762394, 31.599323, 32.321449>,  <33.208809, 31.409122, 32.699001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762394, 31.599323, 32.321449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847839, 31.232174, 32.455242>,  <33.899105, 31.011885, 32.535519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847839, 31.232174, 32.455242>,  <33.762394, 31.599323, 32.321449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847839, 31.232174, 32.455242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511242, -0.186724, -0.838907,
		0.832466, 0.350204, 0.429369,
		0.213615, -0.917873, 0.334480,
		33.911922, 30.956812, 32.555588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392693, 31.440197, 32.021378>,  <33.762394, 31.599323, 32.321449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392693, 31.440197, 32.021378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266823, 31.081373, 32.145481>,  <34.191299, 30.866079, 32.219944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266823, 31.081373, 32.145481>,  <34.392693, 31.440197, 32.021378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266823, 31.081373, 32.145481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445864, -0.428255, -0.786004,
		0.837963, -0.109004, 0.534730,
		-0.314679, -0.897059, 0.310261,
		34.172421, 30.812256, 32.238560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864059, 30.939219, 31.888594>,  <34.392693, 31.440197, 32.021378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864059, 30.939219, 31.888594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.542263, 30.708725, 31.946209>,  <34.349186, 30.570429, 31.980778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.542263, 30.708725, 31.946209>,  <34.864059, 30.939219, 31.888594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542263, 30.708725, 31.946209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199037, -0.490023, -0.848683,
		0.559620, -0.654091, 0.508911,
		-0.804494, -0.576232, 0.144039,
		34.300915, 30.535856, 31.989420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110233, 30.307674, 31.709507>,  <34.864059, 30.939219, 31.888594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110233, 30.307674, 31.709507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.713638, 30.284151, 31.663042>,  <34.475681, 30.270037, 31.635162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.713638, 30.284151, 31.663042>,  <35.110233, 30.307674, 31.709507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713638, 30.284151, 31.663042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129242, -0.336416, -0.932803,
		0.015778, -0.939875, 0.341153,
		-0.991487, -0.058809, -0.116163,
		34.416191, 30.266508, 31.628193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026424, 29.756725, 31.212936>,  <35.110233, 30.307674, 31.709507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026424, 29.756725, 31.212936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.659458, 29.913210, 31.183828>,  <34.439278, 30.007101, 31.166363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.659458, 29.913210, 31.183828>,  <35.026424, 29.756725, 31.212936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659458, 29.913210, 31.183828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018282, -0.224126, -0.974389,
		-0.397501, -0.892593, 0.212770,
		-0.917420, 0.391210, -0.072772,
		34.384232, 30.030573, 31.161997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694645, 29.327700, 30.739948>,  <35.026424, 29.756725, 31.212936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694645, 29.327700, 30.739948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.461464, 29.652700, 30.741117>,  <34.321556, 29.847702, 30.741819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.461464, 29.652700, 30.741117>,  <34.694645, 29.327700, 30.739948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461464, 29.652700, 30.741117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152184, -0.105651, -0.982689,
		-0.798129, -0.573303, 0.185239,
		-0.582949, 0.812503, 0.002925,
		34.286579, 29.896452, 30.741995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040596, 29.113977, 30.451584>,  <34.694645, 29.327700, 30.739948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040596, 29.113977, 30.451584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.121960, 29.501587, 30.395552>,  <34.170776, 29.734152, 30.361933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.121960, 29.501587, 30.395552>,  <34.040596, 29.113977, 30.451584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121960, 29.501587, 30.395552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069170, -0.128491, -0.989296,
		-0.976648, 0.210918, 0.040892,
		0.203406, 0.969022, -0.140080,
		34.182980, 29.792294, 30.353527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800056, 29.103271, 29.800077>,  <34.040596, 29.113977, 30.451584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800056, 29.103271, 29.800077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.946960, 29.472584, 29.845106>,  <34.035103, 29.694170, 29.872124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.946960, 29.472584, 29.845106>,  <33.800056, 29.103271, 29.800077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946960, 29.472584, 29.845106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254392, 0.016705, -0.966957,
		-0.894652, 0.383766, -0.228740,
		0.367264, 0.923279, 0.112572,
		34.057140, 29.749567, 29.878878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527287, 29.580631, 29.297295>,  <33.800056, 29.103271, 29.800077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527287, 29.580631, 29.297295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884750, 29.719595, 29.410912>,  <34.099228, 29.802973, 29.479082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884750, 29.719595, 29.410912>,  <33.527287, 29.580631, 29.297295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884750, 29.719595, 29.410912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209052, 0.237787, -0.948554,
		-0.397078, 0.907064, 0.139874,
		0.893659, 0.347409, 0.284043,
		34.152847, 29.823818, 29.496124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242554, 30.308094, 28.980400>,  <33.527287, 29.580631, 29.297295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242554, 30.308094, 28.980400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.901314, 30.367512, 28.780336>,  <32.696571, 30.403162, 28.660297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.901314, 30.367512, 28.780336>,  <33.242554, 30.308094, 28.980400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901314, 30.367512, 28.780336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251086, 0.723434, 0.643117,
		0.457364, 0.674224, -0.579862,
		-0.853097, 0.148543, -0.500161,
		32.645386, 30.412075, 28.630289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205673, 31.071857, 28.883232>,  <33.242554, 30.308094, 28.980400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205673, 31.071857, 28.883232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.830391, 30.943190, 28.832161>,  <32.605221, 30.865990, 28.801519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.830391, 30.943190, 28.832161>,  <33.205673, 31.071857, 28.883232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830391, 30.943190, 28.832161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335967, 0.757998, 0.559075,
		-0.083058, 0.567422, -0.819228,
		-0.938204, -0.321669, -0.127677,
		32.548931, 30.846689, 28.793858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665161, 31.677969, 28.746622>,  <33.205673, 31.071857, 28.883232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665161, 31.677969, 28.746622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478191, 31.361677, 28.904743>,  <32.366009, 31.171902, 28.999615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478191, 31.361677, 28.904743>,  <32.665161, 31.677969, 28.746622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478191, 31.361677, 28.904743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503714, 0.605693, 0.615961,
		-0.726490, 0.088796, -0.681416,
		-0.467424, -0.790728, 0.395302,
		32.337963, 31.124458, 29.023335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000408, 31.889952, 28.855679>,  <32.665161, 31.677969, 28.746622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000408, 31.889952, 28.855679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.983326, 31.565905, 29.089563>,  <31.973076, 31.371477, 29.229895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.983326, 31.565905, 29.089563>,  <32.000408, 31.889952, 28.855679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983326, 31.565905, 29.089563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467054, 0.533547, 0.705116,
		-0.883197, -0.242977, -0.401155,
		-0.042708, -0.810117, 0.584710,
		31.970514, 31.322870, 29.264977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268734, 31.764631, 28.958891>,  <32.000408, 31.889952, 28.855679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268734, 31.764631, 28.958891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.463255, 31.597557, 29.265890>,  <31.579967, 31.497313, 29.450089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.463255, 31.597557, 29.265890>,  <31.268734, 31.764631, 28.958891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463255, 31.597557, 29.265890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576127, 0.507113, 0.641026,
		-0.656955, -0.753906, 0.005969,
		0.486301, -0.417686, 0.767496,
		31.609144, 31.472252, 29.496140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788511, 31.646555, 29.373112>,  <31.268734, 31.764631, 28.958891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788511, 31.646555, 29.373112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.108953, 31.623747, 29.611431>,  <31.301220, 31.610062, 29.754423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.108953, 31.623747, 29.611431>,  <30.788511, 31.646555, 29.373112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108953, 31.623747, 29.611431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559118, 0.283920, 0.778959,
		-0.213578, -0.957151, 0.195568,
		0.801107, -0.057023, 0.595799,
		31.349285, 31.606640, 29.790171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517267, 31.563940, 29.972795>,  <30.788511, 31.646555, 29.373112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517267, 31.563940, 29.972795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.882174, 31.687943, 30.079882>,  <31.101116, 31.762344, 30.144133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.882174, 31.687943, 30.079882>,  <30.517267, 31.563940, 29.972795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882174, 31.687943, 30.079882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402362, 0.555907, 0.727374,
		0.076665, -0.771275, 0.631868,
		0.912265, 0.310004, 0.267713,
		31.155853, 31.780943, 30.160196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547020, 31.547337, 30.668816>,  <30.517267, 31.563940, 29.972795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547020, 31.547337, 30.668816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.862957, 31.782700, 30.599623>,  <31.052519, 31.923918, 30.558107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.862957, 31.782700, 30.599623>,  <30.547020, 31.547337, 30.668816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862957, 31.782700, 30.599623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295432, 0.612193, 0.733443,
		0.537461, -0.528202, 0.657372,
		0.789845, 0.588406, -0.172982,
		31.099911, 31.959221, 30.547728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838015, 31.774343, 31.433317>,  <30.547020, 31.547337, 30.668816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838015, 31.774343, 31.433317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.943958, 32.033775, 31.147886>,  <31.007524, 32.189434, 30.976627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.943958, 32.033775, 31.147886>,  <30.838015, 31.774343, 31.433317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943958, 32.033775, 31.147886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255584, 0.760755, 0.596597,
		0.929800, 0.024366, 0.367259,
		0.264857, 0.648581, -0.713578,
		31.023415, 32.228352, 30.933813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276121, 32.301186, 31.874577>,  <30.838015, 31.774343, 31.433317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276121, 32.301186, 31.874577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.240288, 32.495739, 31.526920>,  <31.218788, 32.612473, 31.318327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.240288, 32.495739, 31.526920>,  <31.276121, 32.301186, 31.874577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240288, 32.495739, 31.526920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170408, 0.852296, 0.494522,
		0.981293, 0.192410, 0.006533,
		-0.089583, 0.486384, -0.869141,
		31.213413, 32.641655, 31.266178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869913, 32.781887, 31.806185>,  <31.276121, 32.301186, 31.874577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869913, 32.781887, 31.806185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.574125, 32.909016, 31.568808>,  <31.396652, 32.985294, 31.426382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.574125, 32.909016, 31.568808>,  <31.869913, 32.781887, 31.806185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574125, 32.909016, 31.568808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188884, 0.748172, 0.636051,
		0.646151, 0.582431, -0.493217,
		-0.739468, 0.317824, -0.593444,
		31.352285, 33.004364, 31.390774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936092, 33.479351, 31.739487>,  <31.869913, 32.781887, 31.806185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936092, 33.479351, 31.739487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.557579, 33.444706, 31.614880>,  <31.330471, 33.423920, 31.540115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.557579, 33.444706, 31.614880>,  <31.936092, 33.479351, 31.739487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557579, 33.444706, 31.614880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278092, 0.709550, 0.647459,
		0.164960, 0.699311, -0.695523,
		-0.946284, -0.086615, -0.311520,
		31.273693, 33.418720, 31.521423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781080, 34.154388, 31.413971>,  <31.936092, 33.479351, 31.739487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781080, 34.154388, 31.413971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.433470, 33.984589, 31.515633>,  <31.224903, 33.882710, 31.576630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.433470, 33.984589, 31.515633>,  <31.781080, 34.154388, 31.413971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433470, 33.984589, 31.515633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241663, 0.812424, 0.530628,
		-0.431734, 0.399708, -0.808603,
		-0.869025, -0.424500, 0.254156,
		31.172762, 33.857239, 31.591879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316135, 34.644711, 31.229685>,  <31.781080, 34.154388, 31.413971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316135, 34.644711, 31.229685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.148405, 34.387024, 31.485544>,  <31.047766, 34.232414, 31.639061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.148405, 34.387024, 31.485544>,  <31.316135, 34.644711, 31.229685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148405, 34.387024, 31.485544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301873, 0.763439, 0.570993,
		-0.856176, 0.046341, -0.514603,
		-0.419328, -0.644215, 0.639649,
		31.022606, 34.193760, 31.677439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460180, 35.275906, 30.836355>,  <31.316135, 34.644711, 31.229685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460180, 35.275906, 30.836355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.388130, 35.667389, 30.796974>,  <31.344900, 35.902279, 30.773346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.388130, 35.667389, 30.796974>,  <31.460180, 35.275906, 30.836355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388130, 35.667389, 30.796974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088254, -0.083608, -0.992583,
		-0.979677, -0.187477, -0.071314,
		-0.180124, 0.978704, -0.098454,
		31.334093, 35.960999, 30.767437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885466, 35.335747, 30.437433>,  <31.460180, 35.275906, 30.836355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885466, 35.335747, 30.437433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.144527, 35.639282, 30.410004>,  <31.299965, 35.821404, 30.393547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.144527, 35.639282, 30.410004>,  <30.885466, 35.335747, 30.437433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144527, 35.639282, 30.410004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165272, -0.227769, -0.959587,
		-0.743793, 0.610149, -0.272931,
		0.647656, 0.758841, -0.068572,
		31.338823, 35.866936, 30.389431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804136, 35.664818, 29.801214>,  <30.885466, 35.335747, 30.437433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804136, 35.664818, 29.801214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.178946, 35.749523, 29.912315>,  <31.403831, 35.800346, 29.978975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.178946, 35.749523, 29.912315>,  <30.804136, 35.664818, 29.801214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178946, 35.749523, 29.912315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276157, 0.037678, -0.960373,
		-0.213836, 0.976595, -0.023174,
		0.937022, 0.211763, 0.277751,
		31.460052, 35.813053, 29.995640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039827, 36.158955, 29.359985>,  <30.804136, 35.664818, 29.801214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039827, 36.158955, 29.359985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.382711, 36.021156, 29.513094>,  <31.588442, 35.938477, 29.604959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.382711, 36.021156, 29.513094>,  <31.039827, 36.158955, 29.359985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382711, 36.021156, 29.513094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347685, -0.161135, -0.923662,
		0.379875, 0.924856, -0.018351,
		0.857211, -0.344495, 0.382769,
		31.639875, 35.917809, 29.627924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596479, 36.440041, 28.977831>,  <31.039827, 36.158955, 29.359985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596479, 36.440041, 28.977831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.758198, 36.109211, 29.134033>,  <31.855228, 35.910713, 29.227755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.758198, 36.109211, 29.134033>,  <31.596479, 36.440041, 28.977831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758198, 36.109211, 29.134033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413700, -0.215420, -0.884560,
		0.815718, 0.519177, 0.255067,
		0.404297, -0.827073, 0.390505,
		31.879486, 35.861088, 29.251184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295067, 36.305927, 28.668251>,  <31.596479, 36.440041, 28.977831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295067, 36.305927, 28.668251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.215683, 35.941044, 28.811634>,  <32.168053, 35.722115, 28.897663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.215683, 35.941044, 28.811634>,  <32.295067, 36.305927, 28.668251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215683, 35.941044, 28.811634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220716, -0.397932, -0.890469,
		0.954933, -0.097606, 0.280313,
		-0.198461, -0.912208, 0.358456,
		32.156143, 35.667381, 28.919170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866924, 35.904751, 28.598377>,  <32.295067, 36.305927, 28.668251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866924, 35.904751, 28.598377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.561817, 35.646084, 28.599693>,  <32.378754, 35.490883, 28.600483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.561817, 35.646084, 28.599693>,  <32.866924, 35.904751, 28.598377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561817, 35.646084, 28.599693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367350, -0.437476, -0.820773,
		0.532209, -0.624846, 0.571245,
		-0.762763, -0.646670, 0.003292,
		32.332989, 35.452084, 28.600681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144394, 35.392632, 28.305290>,  <32.866924, 35.904751, 28.598377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144394, 35.392632, 28.305290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758339, 35.288677, 28.292896>,  <32.526707, 35.226303, 28.285460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758339, 35.288677, 28.292896>,  <33.144394, 35.392632, 28.305290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758339, 35.288677, 28.292896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204029, -0.672934, -0.711008,
		0.163933, -0.692544, 0.702501,
		-0.965142, -0.259888, -0.030983,
		32.468796, 35.210712, 28.283602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085396, 34.680649, 28.111061>,  <33.144394, 35.392632, 28.305290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085396, 34.680649, 28.111061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.748741, 34.867401, 28.002491>,  <32.546749, 34.979454, 27.937349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.748741, 34.867401, 28.002491>,  <33.085396, 34.680649, 28.111061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748741, 34.867401, 28.002491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001398, -0.504477, -0.863424,
		-0.540046, -0.726308, 0.425238,
		-0.841634, 0.466883, -0.271426,
		32.496250, 35.007465, 27.921064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623985, 34.125389, 27.905331>,  <33.085396, 34.680649, 28.111061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623985, 34.125389, 27.905331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.493671, 34.466721, 27.742506>,  <32.415482, 34.671520, 27.644812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.493671, 34.466721, 27.742506>,  <32.623985, 34.125389, 27.905331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493671, 34.466721, 27.742506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072906, -0.406595, -0.910694,
		-0.942629, -0.326368, 0.070251,
		-0.325785, 0.853325, -0.407063,
		32.395935, 34.722717, 27.620388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289082, 33.883614, 27.303436>,  <32.623985, 34.125389, 27.905331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289082, 33.883614, 27.303436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.312195, 34.276184, 27.230267>,  <32.326061, 34.511726, 27.186365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.312195, 34.276184, 27.230267>,  <32.289082, 33.883614, 27.303436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312195, 34.276184, 27.230267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287351, -0.191827, -0.938420,
		-0.956081, 0.001662, -0.293099,
		0.057784, 0.981427, -0.182925,
		32.329529, 34.570614, 27.175388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947674, 34.104778, 26.666622>,  <32.289082, 33.883614, 27.303436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947674, 34.104778, 26.666622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.228699, 34.376480, 26.751495>,  <32.397312, 34.539501, 26.802420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.228699, 34.376480, 26.751495>,  <31.947674, 34.104778, 26.666622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228699, 34.376480, 26.751495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319127, -0.034229, -0.947094,
		-0.636056, 0.733103, -0.240816,
		0.702560, 0.679255, 0.212182,
		32.439468, 34.580257, 26.815149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213818, 34.342911, 25.984381>,  <31.947674, 34.104778, 26.666622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213818, 34.342911, 25.984381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.470268, 34.506474, 26.244150>,  <32.624138, 34.604610, 26.400013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.470268, 34.506474, 26.244150>,  <32.213818, 34.342911, 25.984381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470268, 34.506474, 26.244150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600019, 0.260512, -0.756380,
		-0.478470, 0.874604, -0.078329,
		0.641127, 0.408904, 0.649426,
		32.662605, 34.629147, 26.438978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359173, 35.003792, 25.676472>,  <32.213818, 34.342911, 25.984381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359173, 35.003792, 25.676472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.661327, 34.911507, 25.921803>,  <32.842621, 34.856136, 26.069000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.661327, 34.911507, 25.921803>,  <32.359173, 35.003792, 25.676472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661327, 34.911507, 25.921803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653544, 0.197088, -0.730778,
		0.047720, 0.952853, 0.299657,
		0.755383, -0.230712, 0.613326,
		32.887943, 34.842293, 26.105801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827702, 35.582901, 25.723454>,  <32.359173, 35.003792, 25.676472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827702, 35.582901, 25.723454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040016, 35.259254, 25.824324>,  <33.167404, 35.065067, 25.884846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040016, 35.259254, 25.824324>,  <32.827702, 35.582901, 25.723454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040016, 35.259254, 25.824324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755565, 0.316988, -0.573272,
		0.383908, 0.494821, 0.779594,
		0.530789, -0.809117, 0.252175,
		33.199253, 35.016518, 25.899977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474617, 35.811745, 25.754925>,  <32.827702, 35.582901, 25.723454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474617, 35.811745, 25.754925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.533665, 35.416595, 25.735693>,  <33.569092, 35.179504, 25.724154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.533665, 35.416595, 25.735693>,  <33.474617, 35.811745, 25.754925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533665, 35.416595, 25.735693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810172, 0.148660, -0.567028,
		0.567300, 0.044750, 0.822294,
		0.147617, -0.987875, -0.048080,
		33.577950, 35.120232, 25.721270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260635, 35.700333, 25.912951>,  <33.474617, 35.811745, 25.754925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260635, 35.700333, 25.912951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.116882, 35.375542, 25.728977>,  <34.030628, 35.180668, 25.618593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.116882, 35.375542, 25.728977>,  <34.260635, 35.700333, 25.912951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116882, 35.375542, 25.728977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651605, 0.134467, -0.746545,
		0.668022, -0.567992, 0.480762,
		-0.359386, -0.811975, -0.459933,
		34.009068, 35.131950, 25.590998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807411, 35.283478, 25.652462>,  <34.260635, 35.700333, 25.912951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807411, 35.283478, 25.652462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.514088, 35.146523, 25.417507>,  <34.338093, 35.064350, 25.276533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.514088, 35.146523, 25.417507>,  <34.807411, 35.283478, 25.652462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514088, 35.146523, 25.417507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650507, -0.102070, -0.752611,
		0.197733, -0.933996, 0.297577,
		-0.733309, -0.342392, -0.587388,
		34.294094, 35.043804, 25.241291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078735, 34.592350, 25.344172>,  <34.807411, 35.283478, 25.652462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078735, 34.592350, 25.344172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784809, 34.734982, 25.113386>,  <34.608452, 34.820560, 24.974915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784809, 34.734982, 25.113386>,  <35.078735, 34.592350, 25.344172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784809, 34.734982, 25.113386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565555, -0.147457, -0.811421,
		-0.374416, -0.922554, -0.093313,
		-0.734819, 0.356582, -0.576966,
		34.564362, 34.841957, 24.940296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040195, 34.117107, 24.899313>,  <35.078735, 34.592350, 25.344172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040195, 34.117107, 24.899313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.876980, 34.442852, 24.734236>,  <34.779053, 34.638298, 24.635189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.876980, 34.442852, 24.734236>,  <35.040195, 34.117107, 24.899313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876980, 34.442852, 24.734236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593060, -0.107240, -0.797985,
		-0.694109, -0.570358, -0.439209,
		-0.408036, 0.814366, -0.412693,
		34.754570, 34.687160, 24.610428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635960, 33.902390, 24.306988>,  <35.040195, 34.117107, 24.899313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635960, 33.902390, 24.306988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.727848, 34.289768, 24.268347>,  <34.782982, 34.522198, 24.245163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.727848, 34.289768, 24.268347>,  <34.635960, 33.902390, 24.306988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727848, 34.289768, 24.268347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374283, -0.179531, -0.909770,
		-0.898410, 0.172836, -0.403717,
		0.229721, 0.968450, -0.096603,
		34.796764, 34.580303, 24.239367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421482, 34.107883, 23.523579>,  <34.635960, 33.902390, 24.306988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421482, 34.107883, 23.523579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.698475, 34.366478, 23.651661>,  <34.864670, 34.521633, 23.728510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.698475, 34.366478, 23.651661>,  <34.421482, 34.107883, 23.523579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698475, 34.366478, 23.651661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441382, -0.028569, -0.896864,
		-0.570660, 0.762393, -0.305130,
		0.692480, 0.646484, 0.320203,
		34.906219, 34.560425, 23.747723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479301, 34.601986, 22.967985>,  <34.421482, 34.107883, 23.523579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479301, 34.601986, 22.967985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.817650, 34.642059, 23.177546>,  <35.020657, 34.666103, 23.303282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.817650, 34.642059, 23.177546>,  <34.479301, 34.601986, 22.967985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817650, 34.642059, 23.177546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481348, 0.279807, -0.830670,
		-0.229811, 0.954815, 0.188457,
		0.845867, 0.100184, 0.523901,
		35.071411, 34.672115, 23.334715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785347, 35.131718, 22.581190>,  <34.479301, 34.601986, 22.967985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785347, 35.131718, 22.581190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078918, 35.008774, 22.823471>,  <35.255062, 34.935005, 22.968840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078918, 35.008774, 22.823471>,  <34.785347, 35.131718, 22.581190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078918, 35.008774, 22.823471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663603, 0.134320, -0.735927,
		0.144838, 0.942065, 0.302548,
		0.733929, -0.307362, 0.605703,
		35.299099, 34.916565, 23.005182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316017, 35.682785, 22.523870>,  <34.785347, 35.131718, 22.581190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316017, 35.682785, 22.523870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.474899, 35.330322, 22.626472>,  <35.570229, 35.118847, 22.688034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.474899, 35.330322, 22.626472>,  <35.316017, 35.682785, 22.523870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474899, 35.330322, 22.626472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629271, 0.058054, -0.775015,
		0.668017, 0.469251, 0.577544,
		0.397205, -0.881155, 0.256505,
		35.594059, 35.065975, 22.703424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015965, 35.807743, 22.505722>,  <35.316017, 35.682785, 22.523870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015965, 35.807743, 22.505722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.015610, 35.408718, 22.477831>,  <36.015396, 35.169304, 22.461096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.015610, 35.408718, 22.477831>,  <36.015965, 35.807743, 22.505722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015610, 35.408718, 22.477831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663481, 0.051579, -0.746414,
		0.748193, -0.046927, 0.661819,
		-0.000891, -0.997566, -0.069727,
		36.015343, 35.109447, 22.456913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712273, 35.583828, 22.288330>,  <36.015965, 35.807743, 22.505722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712273, 35.583828, 22.288330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.537811, 35.233383, 22.206156>,  <36.433136, 35.023117, 22.156851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.537811, 35.233383, 22.206156>,  <36.712273, 35.583828, 22.288330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537811, 35.233383, 22.206156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489396, -0.039357, -0.871174,
		0.755157, -0.480505, 0.445929,
		-0.436153, -0.876109, -0.205436,
		36.406963, 34.970551, 22.144526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245121, 35.149368, 22.085522>,  <36.712273, 35.583828, 22.288330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245121, 35.149368, 22.085522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.914444, 34.996052, 21.920755>,  <36.716038, 34.904064, 21.821896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.914444, 34.996052, 21.920755>,  <37.245121, 35.149368, 22.085522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914444, 34.996052, 21.920755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451506, -0.015047, -0.892141,
		0.335749, -0.923506, 0.185496,
		-0.826689, -0.383288, -0.411917,
		36.666439, 34.881065, 21.797180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797962, 34.666653, 22.373684>,  <37.245121, 35.149368, 22.085522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797962, 34.666653, 22.373684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.108330, 34.904305, 22.458496>,  <38.294552, 35.046894, 22.509382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.108330, 34.904305, 22.458496>,  <37.797962, 34.666653, 22.373684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108330, 34.904305, 22.458496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384845, 0.179502, 0.905358,
		0.499842, -0.784083, 0.367928,
		0.775920, 0.594131, 0.212028,
		38.341106, 35.082542, 22.522104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161823, 34.382278, 23.020990>,  <37.797962, 34.666653, 22.373684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161823, 34.382278, 23.020990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.265846, 34.767132, 22.988327>,  <38.328262, 34.998043, 22.968729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.265846, 34.767132, 22.988327>,  <38.161823, 34.382278, 23.020990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265846, 34.767132, 22.988327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168818, 0.128570, 0.977226,
		0.950721, -0.240351, 0.195861,
		0.260059, 0.962133, -0.081659,
		38.343864, 35.055771, 22.963829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632881, 34.467731, 23.655560>,  <38.161823, 34.382278, 23.020990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632881, 34.467731, 23.655560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.516685, 34.829193, 23.529688>,  <38.446968, 35.046070, 23.454165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.516685, 34.829193, 23.529688>,  <38.632881, 34.467731, 23.655560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516685, 34.829193, 23.529688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113328, 0.294057, 0.949045,
		0.950145, 0.311345, 0.016990,
		-0.290485, 0.903656, -0.314681,
		38.429539, 35.100288, 23.435284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941170, 34.912197, 24.049934>,  <38.632881, 34.467731, 23.655560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941170, 34.912197, 24.049934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.645355, 35.136555, 23.901079>,  <38.467865, 35.271168, 23.811766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.645355, 35.136555, 23.901079>,  <38.941170, 34.912197, 24.049934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645355, 35.136555, 23.901079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126762, 0.426917, 0.895362,
		0.661072, 0.709327, -0.244621,
		-0.739537, 0.560890, -0.372138,
		38.423492, 35.304821, 23.789438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063274, 35.637142, 24.322550>,  <38.941170, 34.912197, 24.049934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063274, 35.637142, 24.322550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.679745, 35.627159, 24.209389>,  <38.449627, 35.621170, 24.141493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.679745, 35.627159, 24.209389>,  <39.063274, 35.637142, 24.322550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679745, 35.627159, 24.209389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240838, 0.599354, 0.763395,
		0.150509, 0.800095, -0.580684,
		-0.958824, -0.024953, -0.282902,
		38.392097, 35.619675, 24.124517>
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
