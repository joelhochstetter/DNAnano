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
	<24.541262, 34.763168, 35.317287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.485943, 35.006615, 35.004761>,  <24.452751, 35.152683, 34.817245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.485943, 35.006615, 35.004761>,  <24.541262, 34.763168, 35.317287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.485943, 35.006615, 35.004761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943554, -0.320701, -0.082804,
		-0.300965, 0.725764, 0.618617,
		-0.138295, 0.608619, -0.781318,
		24.444454, 35.189201, 34.770367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.672092, 34.018990, 34.982124>,  <24.541262, 34.763168, 35.317287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.672092, 34.018990, 34.982124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813887, 33.916225, 35.341755>,  <24.898964, 33.854568, 35.557533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813887, 33.916225, 35.341755>,  <24.672092, 34.018990, 34.982124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.813887, 33.916225, 35.341755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916657, 0.285306, -0.279893,
		-0.184604, 0.923362, 0.336637,
		0.354487, -0.256911, 0.899075,
		24.920233, 33.839153, 35.611477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.373753, 34.317715, 34.910854>,  <24.672092, 34.018990, 34.982124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.373753, 34.317715, 34.910854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369419, 34.064896, 35.220795>,  <25.366819, 33.913204, 35.406757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369419, 34.064896, 35.220795>,  <25.373753, 34.317715, 34.910854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.369419, 34.064896, 35.220795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996281, -0.073066, -0.045673,
		0.085483, 0.771475, 0.630491,
		-0.010832, -0.632050, 0.774852,
		25.366169, 33.875282, 35.453251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618769, 34.677917, 35.479649>,  <25.373753, 34.317715, 34.910854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618769, 34.677917, 35.479649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685631, 34.283875, 35.463490>,  <25.725748, 34.047451, 35.453793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685631, 34.283875, 35.463490>,  <25.618769, 34.677917, 35.479649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.685631, 34.283875, 35.463490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977756, 0.170894, -0.121607,
		0.126700, -0.019175, 0.991756,
		0.167153, -0.985103, -0.040400,
		25.735777, 33.988342, 35.451370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079491, 34.330589, 35.987019>,  <25.618769, 34.677917, 35.479649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079491, 34.330589, 35.987019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099386, 34.150578, 35.630367>,  <26.111324, 34.042572, 35.416378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099386, 34.150578, 35.630367>,  <26.079491, 34.330589, 35.987019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099386, 34.150578, 35.630367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929547, 0.347408, -0.123490,
		0.365333, -0.822669, 0.435601,
		0.049740, -0.450027, -0.891629,
		26.114307, 34.015568, 35.362877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651163, 33.759956, 35.847710>,  <26.079491, 34.330589, 35.987019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651163, 33.759956, 35.847710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561911, 33.981960, 35.527164>,  <26.508360, 34.115162, 35.334839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561911, 33.981960, 35.527164>,  <26.651163, 33.759956, 35.847710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561911, 33.981960, 35.527164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958562, 0.274303, -0.076923,
		0.177123, -0.785319, -0.593213,
		-0.223130, 0.555006, -0.801362,
		26.494972, 34.148460, 35.286755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991739, 33.512108, 35.151398>,  <26.651163, 33.759956, 35.847710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991739, 33.512108, 35.151398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909782, 33.903156, 35.170479>,  <26.860609, 34.137787, 35.181927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909782, 33.903156, 35.170479>,  <26.991739, 33.512108, 35.151398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909782, 33.903156, 35.170479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950698, 0.210366, -0.227859,
		-0.232796, -0.001334, -0.972525,
		-0.204890, 0.977622, 0.047704,
		26.848316, 34.196442, 35.184792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.256704, 33.720753, 34.472767>,  <26.991739, 33.512108, 35.151398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.256704, 33.720753, 34.472767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253513, 33.978802, 34.778381>,  <27.251598, 34.133629, 34.961750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253513, 33.978802, 34.778381>,  <27.256704, 33.720753, 34.472767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253513, 33.978802, 34.778381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975393, 0.173373, -0.136201,
		-0.220330, 0.744153, -0.630627,
		-0.007979, 0.645118, 0.764041,
		27.251120, 34.172337, 35.007595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609816, 34.330643, 34.304352>,  <27.256704, 33.720753, 34.472767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609816, 34.330643, 34.304352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625349, 34.353264, 34.703411>,  <27.634670, 34.366837, 34.942844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625349, 34.353264, 34.703411>,  <27.609816, 34.330643, 34.304352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625349, 34.353264, 34.703411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962579, 0.265858, -0.052542,
		-0.268203, 0.962352, -0.044116,
		0.038835, 0.056557, 0.997644,
		27.636999, 34.370232, 35.002705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815376, 34.936314, 34.436630>,  <27.609816, 34.330643, 34.304352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815376, 34.936314, 34.436630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915337, 34.718765, 34.757069>,  <27.975313, 34.588238, 34.949333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915337, 34.718765, 34.757069>,  <27.815376, 34.936314, 34.436630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915337, 34.718765, 34.757069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929010, 0.367880, -0.040048,
		-0.272926, 0.754235, 0.597194,
		0.249901, -0.543869, 0.801097,
		27.990307, 34.555603, 34.997398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171612, 35.370029, 34.820477>,  <27.815376, 34.936314, 34.436630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171612, 35.370029, 34.820477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314907, 35.032074, 34.979389>,  <28.400885, 34.829300, 35.074738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314907, 35.032074, 34.979389>,  <28.171612, 35.370029, 34.820477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314907, 35.032074, 34.979389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928585, 0.366612, -0.057660,
		-0.096933, 0.389568, 0.915882,
		0.358236, -0.844886, 0.397284,
		28.422379, 34.778606, 35.098576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610500, 35.526062, 35.397594>,  <28.171612, 35.370029, 34.820477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610500, 35.526062, 35.397594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743084, 35.160511, 35.303810>,  <28.822634, 34.941181, 35.247540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743084, 35.160511, 35.303810>,  <28.610500, 35.526062, 35.397594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743084, 35.160511, 35.303810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928898, 0.272598, 0.250675,
		-0.165173, -0.300875, 0.939251,
		0.331459, -0.913873, -0.234457,
		28.842522, 34.886349, 35.233475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120026, 35.413185, 35.786011>,  <28.610500, 35.526062, 35.397594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120026, 35.413185, 35.786011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190779, 35.143955, 35.498768>,  <29.233231, 34.982418, 35.326420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190779, 35.143955, 35.498768>,  <29.120026, 35.413185, 35.786011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190779, 35.143955, 35.498768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984195, 0.127338, 0.123069,
		0.008607, -0.728528, 0.684962,
		0.176881, -0.673077, -0.718109,
		29.243843, 34.942032, 35.283337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558069, 35.064529, 36.172794>,  <29.120026, 35.413185, 35.786011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558069, 35.064529, 36.172794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604502, 34.994247, 35.781765>,  <29.632362, 34.952080, 35.547146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604502, 34.994247, 35.781765>,  <29.558069, 35.064529, 36.172794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604502, 34.994247, 35.781765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991084, 0.085304, 0.102355,
		0.065407, -0.980740, 0.184038,
		0.116083, -0.175703, -0.977575,
		29.639326, 34.941536, 35.488491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189302, 34.710258, 36.143326>,  <29.558069, 35.064529, 36.172794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189302, 34.710258, 36.143326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166697, 34.798878, 35.753922>,  <30.153133, 34.852051, 35.520279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166697, 34.798878, 35.753922>,  <30.189302, 34.710258, 36.143326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166697, 34.798878, 35.753922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996785, 0.067983, -0.042395,
		0.056789, -0.972776, -0.224680,
		-0.056515, 0.221551, -0.973510,
		30.149742, 34.865341, 35.461868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651474, 34.210457, 35.827538>,  <30.189302, 34.710258, 36.143326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651474, 34.210457, 35.827538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609421, 34.534195, 35.596401>,  <30.584188, 34.728439, 35.457718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609421, 34.534195, 35.596401>,  <30.651474, 34.210457, 35.827538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609421, 34.534195, 35.596401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993493, 0.111071, -0.025187,
		0.043797, -0.576732, -0.815758,
		-0.105133, 0.809347, -0.577844,
		30.577881, 34.777000, 35.423046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256733, 34.177174, 35.438717>,  <30.651474, 34.210457, 35.827538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256733, 34.177174, 35.438717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143078, 34.551083, 35.353420>,  <31.074884, 34.775429, 35.302242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143078, 34.551083, 35.353420>,  <31.256733, 34.177174, 35.438717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143078, 34.551083, 35.353420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949684, 0.243823, -0.196598,
		-0.131782, -0.258369, -0.957016,
		-0.284138, 0.934770, -0.213238,
		31.057837, 34.831512, 35.289448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454424, 34.336266, 34.744301>,  <31.256733, 34.177174, 35.438717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454424, 34.336266, 34.744301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419569, 34.676544, 34.951653>,  <31.398657, 34.880711, 35.076065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419569, 34.676544, 34.951653>,  <31.454424, 34.336266, 34.744301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419569, 34.676544, 34.951653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953318, 0.222230, -0.204445,
		-0.289121, 0.476369, -0.830350,
		-0.087137, 0.850698, 0.518383,
		31.393429, 34.931755, 35.107166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889391, 34.879635, 34.427132>,  <31.454424, 34.336266, 34.744301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889391, 34.879635, 34.427132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832851, 35.051640, 34.783810>,  <31.798927, 35.154842, 34.997814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832851, 35.051640, 34.783810>,  <31.889391, 34.879635, 34.427132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832851, 35.051640, 34.783810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933430, 0.357913, -0.024636,
		-0.329742, 0.828849, -0.451974,
		-0.141348, 0.430009, 0.891691,
		31.790447, 35.180641, 35.051315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084087, 35.621746, 34.379715>,  <31.889391, 34.879635, 34.427132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084087, 35.621746, 34.379715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143177, 35.503876, 34.757359>,  <32.178631, 35.433151, 34.983944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143177, 35.503876, 34.757359>,  <32.084087, 35.621746, 34.379715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143177, 35.503876, 34.757359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838014, 0.544271, 0.038755,
		-0.525272, 0.785451, 0.327347,
		0.147725, -0.294678, 0.944109,
		32.187496, 35.415474, 35.040592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413280, 36.096138, 34.597046>,  <32.084087, 35.621746, 34.379715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413280, 36.096138, 34.597046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448292, 35.865425, 34.921925>,  <32.469299, 35.726997, 35.116852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448292, 35.865425, 34.921925>,  <32.413280, 36.096138, 34.597046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448292, 35.865425, 34.921925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722788, 0.597834, 0.346659,
		-0.685504, 0.556704, 0.469217,
		0.087527, -0.576780, 0.812197,
		32.474548, 35.692390, 35.165585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441490, 36.579937, 35.221115>,  <32.413280, 36.096138, 34.597046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441490, 36.579937, 35.221115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611458, 36.233742, 35.327225>,  <32.713440, 36.026024, 35.390892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611458, 36.233742, 35.327225>,  <32.441490, 36.579937, 35.221115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611458, 36.233742, 35.327225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811401, 0.494077, 0.312275,
		-0.401336, 0.082551, 0.912203,
		0.424920, -0.865490, 0.265273,
		32.738934, 35.974094, 35.406807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722370, 36.715668, 35.792198>,  <32.441490, 36.579937, 35.221115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722370, 36.715668, 35.792198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926064, 36.385338, 35.695286>,  <33.048279, 36.187141, 35.637138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926064, 36.385338, 35.695286>,  <32.722370, 36.715668, 35.792198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926064, 36.385338, 35.695286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839508, 0.414658, 0.351121,
		-0.189501, -0.382197, 0.904442,
		0.509231, -0.825824, -0.242279,
		33.078835, 36.137592, 35.622601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272778, 36.564247, 36.343887>,  <32.722370, 36.715668, 35.792198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272778, 36.564247, 36.343887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414410, 36.394260, 36.010651>,  <33.499390, 36.292271, 35.810711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414410, 36.394260, 36.010651>,  <33.272778, 36.564247, 36.343887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414410, 36.394260, 36.010651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841255, 0.533881, 0.085214,
		0.408556, -0.731011, 0.546539,
		0.354079, -0.424964, -0.833087,
		33.520634, 36.266769, 35.760723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063965, 36.155228, 36.509785>,  <33.272778, 36.564247, 36.343887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063965, 36.155228, 36.509785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030376, 36.244492, 36.121323>,  <34.010223, 36.298050, 35.888245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030376, 36.244492, 36.121323>,  <34.063965, 36.155228, 36.509785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030376, 36.244492, 36.121323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787928, 0.611498, 0.072385,
		0.610014, -0.759124, -0.227184,
		-0.083973, 0.223161, -0.971158,
		34.005184, 36.311440, 35.829975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481747, 36.556873, 36.114487>,  <34.063965, 36.155228, 36.509785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481747, 36.556873, 36.114487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308453, 36.824116, 35.872517>,  <34.204475, 36.984463, 35.727333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308453, 36.824116, 35.872517>,  <34.481747, 36.556873, 36.114487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308453, 36.824116, 35.872517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623211, 0.706935, 0.334441,
		0.651086, -0.232104, -0.722644,
		-0.433237, 0.668110, -0.604925,
		34.178482, 37.024548, 35.691040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998035, 36.833149, 35.576176>,  <34.481747, 36.556873, 36.114487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998035, 36.833149, 35.576176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717690, 37.111229, 35.640026>,  <34.549480, 37.278076, 35.678337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717690, 37.111229, 35.640026>,  <34.998035, 36.833149, 35.576176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717690, 37.111229, 35.640026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710383, 0.660130, 0.244099,
		0.064324, 0.284477, -0.956523,
		-0.700870, 0.695199, 0.159625,
		34.507427, 37.319790, 35.687912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123775, 37.442993, 35.187809>,  <34.998035, 36.833149, 35.576176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123775, 37.442993, 35.187809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941467, 37.564854, 35.522343>,  <34.832081, 37.637970, 35.723064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941467, 37.564854, 35.522343>,  <35.123775, 37.442993, 35.187809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941467, 37.564854, 35.522343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635547, 0.769223, 0.066149,
		-0.623179, 0.561681, -0.544207,
		-0.455772, 0.304647, 0.836339,
		34.804737, 37.656246, 35.773243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759270, 38.113792, 35.136562>,  <35.123775, 37.442993, 35.187809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759270, 38.113792, 35.136562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927452, 38.020729, 35.487354>,  <35.028362, 37.964890, 35.697830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927452, 38.020729, 35.487354>,  <34.759270, 38.113792, 35.136562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927452, 38.020729, 35.487354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691246, 0.708225, -0.143515,
		-0.587707, 0.666547, 0.458601,
		0.420453, -0.232662, 0.876977,
		35.053589, 37.950932, 35.750446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899559, 37.703373, 34.442795>,  <34.759270, 38.113792, 35.136562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899559, 37.703373, 34.442795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298851, 37.685253, 34.427391>,  <35.538425, 37.674381, 34.418148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298851, 37.685253, 34.427391>,  <34.899559, 37.703373, 34.442795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298851, 37.685253, 34.427391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003229, -0.688055, 0.725651,
		-0.059365, -0.724243, -0.686985,
		0.998231, -0.045296, -0.038508,
		35.598320, 37.671665, 34.415840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096798, 37.058117, 34.186535>,  <34.899559, 37.703373, 34.442795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096798, 37.058117, 34.186535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768726, 37.259781, 34.078362>,  <34.571884, 37.380779, 34.013458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768726, 37.259781, 34.078362>,  <35.096798, 37.058117, 34.186535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768726, 37.259781, 34.078362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016672, -0.493555, -0.869555,
		-0.571869, -0.708679, 0.413207,
		-0.820176, 0.504160, -0.270434,
		34.522675, 37.411030, 33.997231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520058, 36.554825, 33.943523>,  <35.096798, 37.058117, 34.186535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520058, 36.554825, 33.943523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497856, 36.921581, 33.785423>,  <34.484535, 37.141636, 33.690563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497856, 36.921581, 33.785423>,  <34.520058, 36.554825, 33.943523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497856, 36.921581, 33.785423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059636, -0.398201, -0.915358,
		-0.996676, -0.027236, 0.076782,
		-0.055506, 0.916894, -0.395253,
		34.481205, 37.196648, 33.666847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860600, 36.636375, 33.560814>,  <34.520058, 36.554825, 33.943523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860600, 36.636375, 33.560814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135639, 36.891773, 33.422523>,  <34.300663, 37.045013, 33.339550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135639, 36.891773, 33.422523>,  <33.860600, 36.636375, 33.560814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135639, 36.891773, 33.422523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076999, -0.409345, -0.909125,
		-0.721996, 0.651734, -0.232302,
		0.687599, 0.638498, -0.345729,
		34.341919, 37.083324, 33.318806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638187, 36.831699, 32.908611>,  <33.860600, 36.636375, 33.560814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638187, 36.831699, 32.908611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032536, 36.874321, 32.960323>,  <34.269142, 36.899895, 32.991352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032536, 36.874321, 32.960323>,  <33.638187, 36.831699, 32.908611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032536, 36.874321, 32.960323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164738, -0.476229, -0.863752,
		-0.030465, 0.872842, -0.487051,
		0.985867, 0.106550, 0.129282,
		34.328297, 36.906284, 32.999107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877281, 36.948429, 32.221958>,  <33.638187, 36.831699, 32.908611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877281, 36.948429, 32.221958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200947, 36.887894, 32.449062>,  <34.395145, 36.851570, 32.585323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200947, 36.887894, 32.449062>,  <33.877281, 36.948429, 32.221958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200947, 36.887894, 32.449062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505493, -0.313307, -0.803938,
		0.299551, 0.937515, -0.177015,
		0.809164, -0.151340, 0.567759,
		34.443695, 36.842491, 32.619389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178993, 37.314026, 32.339130>,  <33.877281, 36.948429, 32.221958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178993, 37.314026, 32.339130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257629, 37.679943, 32.197994>,  <33.304813, 37.899494, 32.113312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257629, 37.679943, 32.197994>,  <33.178993, 37.314026, 32.339130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257629, 37.679943, 32.197994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902722, 0.309329, 0.299011,
		0.382680, 0.259738, 0.886619,
		0.196592, 0.914796, -0.352845,
		33.316608, 37.954384, 32.092140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031948, 37.810246, 32.850735>,  <33.178993, 37.314026, 32.339130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031948, 37.810246, 32.850735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946236, 37.949699, 32.485760>,  <32.894810, 38.033371, 32.266777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946236, 37.949699, 32.485760>,  <33.031948, 37.810246, 32.850735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946236, 37.949699, 32.485760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916887, 0.250259, 0.310949,
		0.336753, 0.903230, 0.266034,
		-0.214280, 0.348636, -0.912434,
		32.881950, 38.054291, 32.212029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966076, 38.559776, 32.913181>,  <33.031948, 37.810246, 32.850735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966076, 38.559776, 32.913181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758511, 38.435242, 32.594734>,  <32.633972, 38.360519, 32.403667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758511, 38.435242, 32.594734>,  <32.966076, 38.559776, 32.913181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758511, 38.435242, 32.594734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849215, 0.081188, 0.521768,
		-0.097810, 0.946825, -0.306521,
		-0.518909, -0.311336, -0.796117,
		32.602837, 38.341843, 32.355900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481785, 39.043564, 32.926239>,  <32.966076, 38.559776, 32.913181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481785, 39.043564, 32.926239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377148, 38.703754, 32.742989>,  <32.314365, 38.499870, 32.633038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377148, 38.703754, 32.742989>,  <32.481785, 39.043564, 32.926239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377148, 38.703754, 32.742989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843471, -0.029516, 0.536363,
		-0.469175, 0.526725, -0.708827,
		-0.261594, -0.849523, -0.458125,
		32.298668, 38.448898, 32.605553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807234, 39.207767, 32.715843>,  <32.481785, 39.043564, 32.926239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807234, 39.207767, 32.715843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867405, 38.812321, 32.716499>,  <31.903507, 38.575050, 32.716892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867405, 38.812321, 32.716499>,  <31.807234, 39.207767, 32.715843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867405, 38.812321, 32.716499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773822, -0.116709, 0.622558,
		-0.615282, -0.094920, -0.782572,
		0.150427, -0.988620, 0.001642,
		31.912533, 38.515736, 32.716991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169096, 38.917999, 32.807739>,  <31.807234, 39.207767, 32.715843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169096, 38.917999, 32.807739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368298, 38.575928, 32.865234>,  <31.487818, 38.370686, 32.899731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368298, 38.575928, 32.865234>,  <31.169096, 38.917999, 32.807739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368298, 38.575928, 32.865234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742756, -0.335106, 0.579670,
		-0.447556, -0.395436, -0.802074,
		0.498003, -0.855181, 0.143734,
		31.517698, 38.319374, 32.908356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643663, 38.402554, 32.725044>,  <31.169096, 38.917999, 32.807739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643663, 38.402554, 32.725044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935581, 38.247433, 32.950256>,  <31.110733, 38.154362, 33.085384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935581, 38.247433, 32.950256>,  <30.643663, 38.402554, 32.725044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935581, 38.247433, 32.950256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683039, -0.378331, 0.624759,
		-0.029269, -0.840521, -0.540987,
		0.729796, -0.387801, 0.563035,
		31.154520, 38.131092, 33.119167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414400, 37.837875, 33.013462>,  <30.643663, 38.402554, 32.725044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414400, 37.837875, 33.013462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732321, 37.876453, 33.253124>,  <30.923073, 37.899601, 33.396923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732321, 37.876453, 33.253124>,  <30.414400, 37.837875, 33.013462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732321, 37.876453, 33.253124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565469, -0.240699, 0.788865,
		0.220300, -0.965796, -0.136770,
		0.794803, 0.096448, 0.599154,
		30.970762, 37.905388, 33.432869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545130, 37.183998, 33.352814>,  <30.414400, 37.837875, 33.013462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545130, 37.183998, 33.352814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722389, 37.463661, 33.577240>,  <30.828745, 37.631458, 33.711895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722389, 37.463661, 33.577240>,  <30.545130, 37.183998, 33.352814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722389, 37.463661, 33.577240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436453, -0.378420, 0.816276,
		0.783024, -0.606614, 0.137452,
		0.443150, 0.699155, 0.561070,
		30.855333, 37.673409, 33.745560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743565, 36.831512, 33.993725>,  <30.545130, 37.183998, 33.352814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743565, 36.831512, 33.993725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738562, 37.217243, 34.099491>,  <30.735559, 37.448681, 34.162949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738562, 37.217243, 34.099491>,  <30.743565, 36.831512, 33.993725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738562, 37.217243, 34.099491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535305, -0.229806, 0.812796,
		0.844566, -0.131376, 0.519084,
		-0.012507, 0.964328, 0.264413,
		30.734810, 37.506542, 34.178814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992880, 36.879650, 34.736446>,  <30.743565, 36.831512, 33.993725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992880, 36.879650, 34.736446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769777, 37.202572, 34.659328>,  <30.635916, 37.396324, 34.613056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769777, 37.202572, 34.659328>,  <30.992880, 36.879650, 34.736446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769777, 37.202572, 34.659328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505617, -0.146272, 0.850268,
		0.658222, 0.571725, 0.489770,
		-0.557759, 0.807301, -0.192794,
		30.602449, 37.444763, 34.601490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867519, 37.155239, 35.410625>,  <30.992880, 36.879650, 34.736446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867519, 37.155239, 35.410625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591692, 37.362186, 35.207912>,  <30.426195, 37.486355, 35.086285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591692, 37.362186, 35.207912>,  <30.867519, 37.155239, 35.410625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591692, 37.362186, 35.207912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670920, -0.192876, 0.716006,
		0.272696, 0.833742, 0.480116,
		-0.689568, 0.517371, -0.506778,
		30.384821, 37.517399, 35.055878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533873, 37.667515, 35.910412>,  <30.867519, 37.155239, 35.410625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533873, 37.667515, 35.910412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287975, 37.618092, 35.598816>,  <30.140436, 37.588436, 35.411858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287975, 37.618092, 35.598816>,  <30.533873, 37.667515, 35.910412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287975, 37.618092, 35.598816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751329, -0.208781, 0.626031,
		-0.239992, 0.970125, 0.035511,
		-0.614743, -0.123562, -0.778989,
		30.103552, 37.581024, 35.365120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919697, 38.037273, 36.099056>,  <30.533873, 37.667515, 35.910412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919697, 38.037273, 36.099056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827337, 37.762619, 35.823311>,  <29.771921, 37.597828, 35.657864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827337, 37.762619, 35.823311>,  <29.919697, 38.037273, 36.099056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827337, 37.762619, 35.823311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702783, -0.372289, 0.606215,
		-0.672890, 0.624445, -0.396594,
		-0.230900, -0.686636, -0.689359,
		29.758068, 37.556629, 35.616505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209677, 37.891033, 36.172737>,  <29.919697, 38.037273, 36.099056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209677, 37.891033, 36.172737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297380, 37.588215, 35.926548>,  <29.350002, 37.406525, 35.778835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297380, 37.588215, 35.926548>,  <29.209677, 37.891033, 36.172737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297380, 37.588215, 35.926548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711409, -0.555757, 0.430152,
		-0.667699, 0.343541, -0.660422,
		0.219260, -0.757043, -0.615477,
		29.363159, 37.361103, 35.741905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588614, 37.674873, 35.941818>,  <29.209677, 37.891033, 36.172737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588614, 37.674873, 35.941818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856270, 37.382828, 35.886421>,  <29.016863, 37.207600, 35.853184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856270, 37.382828, 35.886421>,  <28.588614, 37.674873, 35.941818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856270, 37.382828, 35.886421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527318, -0.597806, 0.603791,
		-0.523630, -0.330992, -0.785020,
		0.669139, -0.730118, -0.138491,
		29.057011, 37.163792, 35.844875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126087, 37.132275, 35.636642>,  <28.588614, 37.674873, 35.941818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126087, 37.132275, 35.636642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454855, 36.952484, 35.776592>,  <28.652117, 36.844608, 35.860561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454855, 36.952484, 35.776592>,  <28.126087, 37.132275, 35.636642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454855, 36.952484, 35.776592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563093, -0.733763, 0.380156,
		0.085853, -0.509471, -0.856194,
		0.821922, -0.449479, 0.349876,
		28.701431, 36.817642, 35.881554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034237, 36.467731, 35.553848>,  <28.126087, 37.132275, 35.636642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034237, 36.467731, 35.553848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312641, 36.471222, 35.841038>,  <28.479685, 36.473316, 36.013351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312641, 36.471222, 35.841038>,  <28.034237, 36.467731, 35.553848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312641, 36.471222, 35.841038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567934, -0.605134, 0.557910,
		0.439338, -0.796076, -0.416227,
		0.696012, 0.008722, 0.717977,
		28.521444, 36.473839, 36.056431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048174, 35.750477, 35.792057>,  <28.034237, 36.467731, 35.553848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048174, 35.750477, 35.792057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236423, 35.939610, 36.090034>,  <28.349373, 36.053089, 36.268822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236423, 35.939610, 36.090034>,  <28.048174, 35.750477, 35.792057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236423, 35.939610, 36.090034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483229, -0.568288, 0.665987,
		0.738243, -0.673409, -0.038964,
		0.470625, 0.472831, 0.744945,
		28.377611, 36.081459, 36.313519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332794, 35.273987, 36.077209>,  <28.048174, 35.750477, 35.792057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332794, 35.273987, 36.077209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321474, 35.534222, 36.380772>,  <28.314682, 35.690365, 36.562908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321474, 35.534222, 36.380772>,  <28.332794, 35.273987, 36.077209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321474, 35.534222, 36.380772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568396, -0.634994, 0.523172,
		0.822269, -0.416550, 0.387763,
		-0.028300, 0.650591, 0.758901,
		28.312984, 35.729401, 36.608440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754288, 34.981659, 36.553699>,  <28.332794, 35.273987, 36.077209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754288, 34.981659, 36.553699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.496111, 35.215420, 36.750423>,  <28.341204, 35.355675, 36.868458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.496111, 35.215420, 36.750423>,  <28.754288, 34.981659, 36.553699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496111, 35.215420, 36.750423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308434, -0.788482, 0.532133,
		0.698763, 0.191770, 0.689169,
		-0.645444, 0.584398, 0.491814,
		28.302477, 35.390739, 36.897968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835533, 34.804279, 37.207973>,  <28.754288, 34.981659, 36.553699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835533, 34.804279, 37.207973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479195, 34.985722, 37.218086>,  <28.265392, 35.094585, 37.224155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479195, 34.985722, 37.218086>,  <28.835533, 34.804279, 37.207973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479195, 34.985722, 37.218086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333559, -0.690845, 0.641460,
		0.308436, 0.563008, 0.766739,
		-0.890846, 0.453602, 0.025285,
		28.211941, 35.121803, 37.225670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756727, 34.831741, 37.901196>,  <28.835533, 34.804279, 37.207973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756727, 34.831741, 37.901196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407913, 34.869125, 37.709019>,  <28.198626, 34.891556, 37.593712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407913, 34.869125, 37.709019>,  <28.756727, 34.831741, 37.901196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407913, 34.869125, 37.709019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369774, -0.768899, 0.521595,
		-0.320660, 0.632502, 0.705066,
		-0.872035, 0.093460, -0.480438,
		28.146303, 34.897163, 37.564888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469099, 34.591366, 37.900494>,  <28.756727, 34.831741, 37.901196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469099, 34.591366, 37.900494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478556, 34.790077, 37.553471>,  <29.484230, 34.909302, 37.345257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478556, 34.790077, 37.553471>,  <29.469099, 34.591366, 37.900494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478556, 34.790077, 37.553471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963425, 0.220390, 0.152452,
		0.266935, -0.839431, -0.473394,
		0.023642, 0.496774, -0.867558,
		29.485649, 34.939110, 37.293201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052181, 34.339897, 37.487625>,  <29.469099, 34.591366, 37.900494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052181, 34.339897, 37.487625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948223, 34.719463, 37.416050>,  <29.885847, 34.947201, 37.373104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948223, 34.719463, 37.416050>,  <30.052181, 34.339897, 37.487625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948223, 34.719463, 37.416050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960318, 0.273410, 0.055099,
		0.101206, -0.157513, -0.982317,
		-0.259896, 0.948913, -0.178933,
		29.870255, 35.004139, 37.362370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351269, 34.641685, 36.841885>,  <30.052181, 34.339897, 37.487625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351269, 34.641685, 36.841885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312704, 34.939468, 37.106152>,  <30.289566, 35.118137, 37.264713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312704, 34.939468, 37.106152>,  <30.351269, 34.641685, 36.841885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312704, 34.939468, 37.106152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994686, 0.096148, 0.036811,
		-0.036118, 0.660709, -0.749773,
		-0.096411, 0.744459, 0.660671,
		30.283781, 35.162807, 37.304352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764965, 35.134953, 36.731937>,  <30.351269, 34.641685, 36.841885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764965, 35.134953, 36.731937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693718, 35.211452, 37.118034>,  <30.650969, 35.257355, 37.349693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693718, 35.211452, 37.118034>,  <30.764965, 35.134953, 36.731937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693718, 35.211452, 37.118034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962414, 0.238238, 0.130392,
		-0.205020, 0.952189, -0.226500,
		-0.178119, 0.191254, 0.965244,
		30.640282, 35.268829, 37.407608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011402, 35.793575, 36.905605>,  <30.764965, 35.134953, 36.731937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011402, 35.793575, 36.905605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038866, 35.547924, 37.220089>,  <31.055346, 35.400532, 37.408779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038866, 35.547924, 37.220089>,  <31.011402, 35.793575, 36.905605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038866, 35.547924, 37.220089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912326, 0.357524, 0.199594,
		-0.403666, 0.703579, 0.584833,
		0.068662, -0.614128, 0.786214,
		31.059465, 35.363686, 37.455952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008139, 36.206387, 37.514729>,  <31.011402, 35.793575, 36.905605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008139, 36.206387, 37.514729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211025, 35.862537, 37.539322>,  <31.332758, 35.656227, 37.554077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211025, 35.862537, 37.539322>,  <31.008139, 36.206387, 37.514729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211025, 35.862537, 37.539322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760209, 0.479883, 0.437943,
		-0.405973, -0.175388, 0.896898,
		0.507216, -0.859623, 0.061488,
		31.363190, 35.604652, 37.557770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140423, 35.957893, 38.290104>,  <31.008139, 36.206387, 37.514729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140423, 35.957893, 38.290104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416296, 35.845448, 38.023178>,  <31.581820, 35.777981, 37.863022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416296, 35.845448, 38.023178>,  <31.140423, 35.957893, 38.290104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416296, 35.845448, 38.023178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707318, 0.458863, 0.537722,
		0.155048, -0.842864, 0.515306,
		0.689682, -0.281112, -0.667319,
		31.623201, 35.761112, 37.822983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726542, 35.604759, 38.540627>,  <31.140423, 35.957893, 38.290104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726542, 35.604759, 38.540627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844351, 35.789333, 38.205883>,  <31.915037, 35.900078, 38.005035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844351, 35.789333, 38.205883>,  <31.726542, 35.604759, 38.540627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844351, 35.789333, 38.205883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755199, 0.424232, 0.499702,
		0.585602, -0.779169, -0.223530,
		0.294524, 0.461436, -0.836859,
		31.932709, 35.927765, 37.954826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640120, 34.888329, 38.290489>,  <31.726542, 35.604759, 38.540627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640120, 34.888329, 38.290489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011913, 34.841228, 38.150661>,  <32.234989, 34.812969, 38.066765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011913, 34.841228, 38.150661>,  <31.640120, 34.888329, 38.290489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011913, 34.841228, 38.150661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328249, -0.168265, 0.929483,
		-0.168265, -0.978684, -0.117749,
		-0.929483, 0.117749, 0.349565,
		32.290760, 34.805904, 38.045792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906994, 34.207909, 38.510712>,  <31.640120, 34.888329, 38.290489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906994, 34.207909, 38.510712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220909, 34.443638, 38.433968>,  <32.409256, 34.585075, 38.387920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220909, 34.443638, 38.433968>,  <31.906994, 34.207909, 38.510712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220909, 34.443638, 38.433968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364105, -0.187887, 0.912209,
		0.501536, -0.785747, -0.362027,
		0.784786, 0.589321, -0.191862,
		32.456345, 34.620434, 38.376408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622086, 33.888096, 38.648148>,  <31.906994, 34.207909, 38.510712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622086, 33.888096, 38.648148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693020, 34.281551, 38.660862>,  <32.735580, 34.517624, 38.668491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693020, 34.281551, 38.660862>,  <32.622086, 33.888096, 38.648148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693020, 34.281551, 38.660862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423159, -0.105374, 0.899907,
		0.888531, -0.146136, -0.434921,
		0.177338, 0.983636, 0.031790,
		32.746220, 34.576641, 38.670399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329700, 33.984779, 38.806835>,  <32.622086, 33.888096, 38.648148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329700, 33.984779, 38.806835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185684, 34.351543, 38.875717>,  <33.099274, 34.571602, 38.917046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185684, 34.351543, 38.875717>,  <33.329700, 33.984779, 38.806835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185684, 34.351543, 38.875717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373053, -0.027685, 0.927397,
		0.855105, 0.398139, -0.332087,
		-0.360039, 0.916907, 0.172200,
		33.077671, 34.626617, 38.927376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860912, 34.353024, 39.112530>,  <33.329700, 33.984779, 38.806835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860912, 34.353024, 39.112530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524601, 34.533741, 39.231842>,  <33.322815, 34.642170, 39.303429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524601, 34.533741, 39.231842>,  <33.860912, 34.353024, 39.112530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524601, 34.533741, 39.231842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238418, -0.185650, 0.953253,
		0.486049, 0.872592, 0.048375,
		-0.840782, 0.451794, 0.298276,
		33.272366, 34.669281, 39.321323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091644, 34.704121, 39.683361>,  <33.860912, 34.353024, 39.112530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091644, 34.704121, 39.683361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693714, 34.670841, 39.706665>,  <33.454956, 34.650871, 39.720646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693714, 34.670841, 39.706665>,  <34.091644, 34.704121, 39.683361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693714, 34.670841, 39.706665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079800, -0.285403, 0.955079,
		-0.062836, 0.954789, 0.290567,
		-0.994828, -0.083200, 0.058259,
		33.395267, 34.645882, 39.724144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900013, 35.171959, 40.301102>,  <34.091644, 34.704121, 39.683361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900013, 35.171959, 40.301102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618324, 34.901325, 40.215034>,  <33.449310, 34.738945, 40.163395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618324, 34.901325, 40.215034>,  <33.900013, 35.171959, 40.301102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618324, 34.901325, 40.215034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099144, -0.393812, 0.913829,
		-0.703023, 0.622206, 0.344411,
		-0.704222, -0.676589, -0.215171,
		33.407059, 34.698349, 40.150482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466923, 35.156391, 40.949997>,  <33.900013, 35.171959, 40.301102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466923, 35.156391, 40.949997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388744, 34.815659, 40.755604>,  <33.341835, 34.611217, 40.638966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388744, 34.815659, 40.755604>,  <33.466923, 35.156391, 40.949997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388744, 34.815659, 40.755604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087572, -0.508721, 0.856466,
		-0.976796, 0.124838, 0.174026,
		-0.195450, -0.851832, -0.485985,
		33.330109, 34.560108, 40.609810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845261, 34.771328, 41.270775>,  <33.466923, 35.156391, 40.949997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845261, 34.771328, 41.270775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021805, 34.475445, 41.067585>,  <33.127731, 34.297916, 40.945671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021805, 34.475445, 41.067585>,  <32.845261, 34.771328, 41.270775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021805, 34.475445, 41.067585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070810, -0.593041, 0.802052,
		-0.894531, -0.318024, -0.314124,
		0.441360, -0.739704, -0.507975,
		33.154213, 34.253532, 40.915192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382050, 34.240177, 41.396839>,  <32.845261, 34.771328, 41.270775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382050, 34.240177, 41.396839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741096, 34.095432, 41.296169>,  <32.956524, 34.008583, 41.235767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741096, 34.095432, 41.296169>,  <32.382050, 34.240177, 41.396839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741096, 34.095432, 41.296169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002342, -0.567052, 0.823678,
		-0.440774, -0.739935, -0.508147,
		0.897615, -0.361866, -0.251675,
		33.010380, 33.986874, 41.220665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226971, 33.644707, 41.527008>,  <32.382050, 34.240177, 41.396839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226971, 33.644707, 41.527008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626247, 33.668015, 41.532894>,  <32.865814, 33.681999, 41.536427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626247, 33.668015, 41.532894>,  <32.226971, 33.644707, 41.527008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626247, 33.668015, 41.532894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023946, -0.610211, 0.791877,
		0.055126, -0.790093, -0.610504,
		0.998192, 0.058272, 0.014719,
		32.925705, 33.685497, 41.537312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511154, 32.977032, 41.489056>,  <32.226971, 33.644707, 41.527008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511154, 32.977032, 41.489056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811039, 33.199959, 41.631790>,  <32.990971, 33.333714, 41.717430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811039, 33.199959, 41.631790>,  <32.511154, 32.977032, 41.489056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811039, 33.199959, 41.631790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176411, -0.688018, 0.703925,
		0.637815, -0.464793, -0.614132,
		0.749714, 0.557314, 0.356834,
		33.035954, 33.367153, 41.738842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026970, 32.516724, 41.676807>,  <32.511154, 32.977032, 41.489056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026970, 32.516724, 41.676807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092484, 32.864204, 41.863800>,  <33.131790, 33.072693, 41.975994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092484, 32.864204, 41.863800>,  <33.026970, 32.516724, 41.676807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092484, 32.864204, 41.863800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313008, -0.495151, 0.810464,
		0.935522, 0.013585, -0.353006,
		0.163781, 0.868700, 0.467477,
		33.141617, 33.124813, 42.004044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572765, 32.281986, 42.068111>,  <33.026970, 32.516724, 41.676807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572765, 32.281986, 42.068111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394878, 32.606922, 42.219021>,  <33.288147, 32.801884, 42.309566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394878, 32.606922, 42.219021>,  <33.572765, 32.281986, 42.068111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394878, 32.606922, 42.219021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053611, -0.444604, 0.894121,
		0.894065, 0.377406, 0.241273,
		-0.444718, 0.812337, 0.377272,
		33.261463, 32.850624, 42.332203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862007, 32.214546, 42.672737>,  <33.572765, 32.281986, 42.068111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862007, 32.214546, 42.672737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555496, 32.465603, 42.727703>,  <33.371590, 32.616238, 42.760685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555496, 32.465603, 42.727703>,  <33.862007, 32.214546, 42.672737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555496, 32.465603, 42.727703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091236, -0.318006, 0.943689,
		0.635996, 0.710592, 0.300945,
		-0.766280, 0.627639, 0.137419,
		33.325611, 32.653896, 42.768929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046417, 32.748745, 43.239922>,  <33.862007, 32.214546, 42.672737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046417, 32.748745, 43.239922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648640, 32.740204, 43.198689>,  <33.409973, 32.735081, 43.173950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648640, 32.740204, 43.198689>,  <34.046417, 32.748745, 43.239922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648640, 32.740204, 43.198689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101334, -0.071154, 0.992305,
		-0.028519, 0.997237, 0.068596,
		-0.994444, -0.021348, -0.103083,
		33.350307, 32.733799, 43.167763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826698, 33.140148, 43.836582>,  <34.046417, 32.748745, 43.239922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826698, 33.140148, 43.836582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512814, 32.918930, 43.724602>,  <33.324482, 32.786198, 43.657413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512814, 32.918930, 43.724602>,  <33.826698, 33.140148, 43.836582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512814, 32.918930, 43.724602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184828, -0.222332, 0.957292,
		-0.591667, 0.802939, 0.072248,
		-0.784710, -0.553044, -0.279952,
		33.277401, 32.753017, 43.640617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352985, 33.244263, 44.266705>,  <33.826698, 33.140148, 43.836582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352985, 33.244263, 44.266705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175339, 32.921978, 44.109947>,  <33.068752, 32.728607, 44.015892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175339, 32.921978, 44.109947>,  <33.352985, 33.244263, 44.266705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175339, 32.921978, 44.109947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394791, -0.216670, 0.892857,
		-0.804301, 0.551251, -0.221862,
		-0.444117, -0.805715, -0.391896,
		33.042103, 32.680264, 43.992378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613216, 33.271507, 44.433060>,  <33.352985, 33.244263, 44.266705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613216, 33.271507, 44.433060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701740, 32.891552, 44.344753>,  <32.754852, 32.663578, 44.291767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701740, 32.891552, 44.344753>,  <32.613216, 33.271507, 44.433060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701740, 32.891552, 44.344753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488674, -0.303928, 0.817818,
		-0.843932, -0.073105, -0.531446,
		0.221307, -0.949886, -0.220770,
		32.768131, 32.606586, 44.278522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993176, 32.874943, 44.521774>,  <32.613216, 33.271507, 44.433060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993176, 32.874943, 44.521774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281040, 32.599228, 44.555161>,  <32.453758, 32.433800, 44.575191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281040, 32.599228, 44.555161>,  <31.993176, 32.874943, 44.521774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281040, 32.599228, 44.555161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535149, -0.474068, 0.699196,
		-0.442375, -0.547856, -0.710040,
		0.719667, -0.689285, 0.083469,
		32.496941, 32.392441, 44.580200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655996, 32.273540, 44.649120>,  <31.993176, 32.874943, 44.521774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655996, 32.273540, 44.649120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026737, 32.189262, 44.773415>,  <32.249180, 32.138695, 44.847992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026737, 32.189262, 44.773415>,  <31.655996, 32.273540, 44.649120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026737, 32.189262, 44.773415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375370, -0.534933, 0.756931,
		0.006743, -0.818202, -0.574891,
		0.926851, -0.210693, 0.310735,
		32.304794, 32.126053, 44.866634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621378, 31.627565, 44.922680>,  <31.655996, 32.273540, 44.649120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621378, 31.627565, 44.922680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953512, 31.775759, 45.089191>,  <32.152794, 31.864676, 45.189098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953512, 31.775759, 45.089191>,  <31.621378, 31.627565, 44.922680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953512, 31.775759, 45.089191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267769, -0.389859, 0.881085,
		0.488717, -0.843061, -0.224509,
		0.830335, 0.370484, 0.416276,
		32.202614, 31.886904, 45.214073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914730, 31.174227, 45.412109>,  <31.621378, 31.627565, 44.922680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914730, 31.174227, 45.412109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104572, 31.507927, 45.524380>,  <32.218479, 31.708147, 45.591740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104572, 31.507927, 45.524380>,  <31.914730, 31.174227, 45.412109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104572, 31.507927, 45.524380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058211, -0.288426, 0.955731,
		0.878271, -0.469934, -0.088326,
		0.474605, 0.834250, 0.280672,
		32.246956, 31.758202, 45.608582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492527, 30.970947, 45.804855>,  <31.914730, 31.174227, 45.412109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492527, 30.970947, 45.804855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402363, 31.348459, 45.901577>,  <32.348263, 31.574966, 45.959610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402363, 31.348459, 45.901577>,  <32.492527, 30.970947, 45.804855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402363, 31.348459, 45.901577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108937, -0.271051, 0.956381,
		0.968154, 0.189236, 0.163910,
		-0.225410, 0.943780, 0.241804,
		32.334740, 31.631594, 45.974117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813496, 31.031963, 46.401405>,  <32.492527, 30.970947, 45.804855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813496, 31.031963, 46.401405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537376, 31.321323, 46.395992>,  <32.371704, 31.494940, 46.392746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537376, 31.321323, 46.395992>,  <32.813496, 31.031963, 46.401405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537376, 31.321323, 46.395992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026418, -0.006514, 0.999630,
		0.723046, 0.690396, 0.023607,
		-0.690295, 0.723402, -0.013529,
		32.330288, 31.538343, 46.391933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015675, 31.571360, 46.834961>,  <32.813496, 31.031963, 46.401405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015675, 31.571360, 46.834961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623260, 31.640076, 46.799068>,  <32.387810, 31.681305, 46.777531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623260, 31.640076, 46.799068>,  <33.015675, 31.571360, 46.834961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623260, 31.640076, 46.799068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084852, 0.035569, 0.995759,
		0.174254, 0.984491, -0.020317,
		-0.981038, 0.171791, -0.089734,
		32.328949, 31.691612, 46.772148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850826, 32.205795, 47.217270>,  <33.015675, 31.571360, 46.834961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850826, 32.205795, 47.217270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537952, 31.956972, 47.203209>,  <32.350227, 31.807678, 47.194775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537952, 31.956972, 47.203209>,  <32.850826, 32.205795, 47.217270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537952, 31.956972, 47.203209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014603, -0.038097, 0.999167,
		-0.622876, 0.782047, 0.020715,
		-0.782185, -0.622054, -0.035150,
		32.303299, 31.770355, 47.192665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652592, 32.166630, 47.916924>,  <32.850826, 32.205795, 47.217270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652592, 32.166630, 47.916924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383930, 31.906746, 47.774509>,  <32.222733, 31.750816, 47.689060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383930, 31.906746, 47.774509>,  <32.652592, 32.166630, 47.916924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383930, 31.906746, 47.774509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193720, -0.309830, 0.930848,
		-0.715091, 0.694177, 0.082236,
		-0.671653, -0.649710, -0.356032,
		32.182434, 31.711832, 47.667698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021816, 32.140171, 48.361855>,  <32.652592, 32.166630, 47.916924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021816, 32.140171, 48.361855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018112, 31.780806, 48.186234>,  <32.015888, 31.565187, 48.080860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018112, 31.780806, 48.186234>,  <32.021816, 32.140171, 48.361855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018112, 31.780806, 48.186234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237820, -0.424497, 0.873638,
		-0.971265, 0.112509, -0.209728,
		-0.009264, -0.898412, -0.439056,
		32.015331, 31.511282, 48.054516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550610, 31.828493, 48.772026>,  <32.021816, 32.140171, 48.361855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550610, 31.828493, 48.772026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740746, 31.552794, 48.553307>,  <31.854828, 31.387373, 48.422077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740746, 31.552794, 48.553307>,  <31.550610, 31.828493, 48.772026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740746, 31.552794, 48.553307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066319, -0.647802, 0.758917,
		-0.877299, -0.324481, -0.353636,
		0.475340, -0.689250, -0.546797,
		31.883348, 31.346018, 48.389267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178589, 31.127178, 48.905682>,  <31.550610, 31.828493, 48.772026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178589, 31.127178, 48.905682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558634, 31.079521, 48.790379>,  <31.786661, 31.050926, 48.721199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558634, 31.079521, 48.790379>,  <31.178589, 31.127178, 48.905682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558634, 31.079521, 48.790379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131952, -0.683857, 0.717585,
		-0.282620, -0.719822, -0.634020,
		0.950113, -0.119144, -0.288254,
		31.843668, 31.043777, 48.703903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218342, 30.333021, 48.799011>,  <31.178589, 31.127178, 48.905682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218342, 30.333021, 48.799011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593544, 30.470514, 48.816868>,  <31.818666, 30.553009, 48.827583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593544, 30.470514, 48.816868>,  <31.218342, 30.333021, 48.799011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593544, 30.470514, 48.816868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202444, -0.647827, 0.734396,
		0.281354, -0.679831, -0.677252,
		0.938007, 0.343731, 0.044641,
		31.874947, 30.573633, 48.830261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735699, 29.777233, 48.701115>,  <31.218342, 30.333021, 48.799011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735699, 29.777233, 48.701115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917984, 30.073536, 48.898540>,  <32.027355, 30.251318, 49.016994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917984, 30.073536, 48.898540>,  <31.735699, 29.777233, 48.701115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917984, 30.073536, 48.898540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185811, -0.621437, 0.761111,
		0.870518, -0.255137, -0.420837,
		0.455711, 0.740757, 0.493565,
		32.054699, 30.295763, 49.046612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351864, 29.460657, 48.901207>,  <31.735699, 29.777233, 48.701115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351864, 29.460657, 48.901207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304794, 29.784784, 49.130829>,  <32.276554, 29.979261, 49.268600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304794, 29.784784, 49.130829>,  <32.351864, 29.460657, 48.901207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304794, 29.784784, 49.130829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072507, -0.569516, 0.818776,
		0.990402, 0.137970, 0.008263,
		-0.117672, 0.810318, 0.574053,
		32.269493, 30.027880, 49.303043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893612, 29.444622, 49.278233>,  <32.351864, 29.460657, 48.901207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893612, 29.444622, 49.278233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624603, 29.659245, 49.482124>,  <32.463200, 29.788017, 49.604462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624603, 29.659245, 49.482124>,  <32.893612, 29.444622, 49.278233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624603, 29.659245, 49.482124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123432, -0.597787, 0.792095,
		0.729713, 0.595617, 0.335796,
		-0.672520, 0.536554, 0.509732,
		32.422848, 29.820211, 49.635044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114174, 29.585766, 50.016800>,  <32.893612, 29.444622, 49.278233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114174, 29.585766, 50.016800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721436, 29.658079, 50.039738>,  <32.485790, 29.701468, 50.053501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721436, 29.658079, 50.039738>,  <33.114174, 29.585766, 50.016800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721436, 29.658079, 50.039738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028590, -0.439969, 0.897558,
		0.187494, 0.879627, 0.437152,
		-0.981850, 0.180785, 0.057343,
		32.426880, 29.712315, 50.056942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012222, 29.845690, 50.685898>,  <33.114174, 29.585766, 50.016800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012222, 29.845690, 50.685898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646851, 29.736063, 50.565544>,  <32.427628, 29.670286, 50.493332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646851, 29.736063, 50.565544>,  <33.012222, 29.845690, 50.685898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646851, 29.736063, 50.565544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112948, -0.539543, 0.834347,
		-0.391007, 0.796103, 0.461880,
		-0.913431, -0.274067, -0.300884,
		32.372822, 29.653843, 50.475281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515537, 29.988501, 51.220978>,  <33.012222, 29.845690, 50.685898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515537, 29.988501, 51.220978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358253, 29.709446, 50.981415>,  <32.263882, 29.542013, 50.837677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358253, 29.709446, 50.981415>,  <32.515537, 29.988501, 51.220978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358253, 29.709446, 50.981415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489488, -0.392565, 0.778649,
		-0.778324, 0.599329, -0.187126,
		-0.393208, -0.697637, -0.598907,
		32.240292, 29.500154, 50.801743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826010, 29.938505, 51.422356>,  <32.515537, 29.988501, 51.220978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826010, 29.938505, 51.422356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966650, 29.597164, 51.268387>,  <32.051033, 29.392359, 51.176006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966650, 29.597164, 51.268387>,  <31.826010, 29.938505, 51.422356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966650, 29.597164, 51.268387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230265, -0.477378, 0.847991,
		-0.907390, -0.209519, -0.364343,
		0.351599, -0.853354, -0.384923,
		32.072128, 29.341158, 51.152908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277828, 29.477518, 51.484138>,  <31.826010, 29.938505, 51.422356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277828, 29.477518, 51.484138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635401, 29.301153, 51.516338>,  <31.849945, 29.195333, 51.535660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635401, 29.301153, 51.516338>,  <31.277828, 29.477518, 51.484138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635401, 29.301153, 51.516338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229900, -0.296893, 0.926823,
		-0.384750, -0.847023, -0.366769,
		0.893932, -0.440915, 0.080501,
		31.903580, 29.168879, 51.540489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374510, 28.666674, 51.626785>,  <31.277828, 29.477518, 51.484138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374510, 28.666674, 51.626785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662069, 28.899231, 51.779186>,  <31.834606, 29.038765, 51.870628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662069, 28.899231, 51.779186>,  <31.374510, 28.666674, 51.626785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662069, 28.899231, 51.779186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328245, -0.199221, 0.923345,
		0.612730, -0.788856, 0.047619,
		0.718900, 0.581392, 0.381007,
		31.877739, 29.073648, 51.893490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626070, 28.363194, 52.260666>,  <31.374510, 28.666674, 51.626785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626070, 28.363194, 52.260666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685366, 28.755276, 52.313160>,  <31.720943, 28.990524, 52.344654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685366, 28.755276, 52.313160>,  <31.626070, 28.363194, 52.260666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685366, 28.755276, 52.313160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513525, -0.037109, 0.857272,
		0.845172, -0.194473, 0.497859,
		0.148241, 0.980206, 0.131230,
		31.729837, 29.049337, 52.352528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146938, 28.075998, 52.711414>,  <31.626070, 28.363194, 52.260666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146938, 28.075998, 52.711414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360157, 27.774292, 52.558083>,  <32.488087, 27.593267, 52.466084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360157, 27.774292, 52.558083>,  <32.146938, 28.075998, 52.711414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360157, 27.774292, 52.558083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518934, 0.066388, -0.852233,
		0.668259, 0.653204, -0.356027,
		0.533046, -0.754266, -0.383334,
		32.520069, 27.548012, 52.443081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382568, 28.231201, 52.090935>,  <32.146938, 28.075998, 52.711414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382568, 28.231201, 52.090935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359589, 27.831871, 52.093533>,  <32.345798, 27.592272, 52.095089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359589, 27.831871, 52.093533>,  <32.382568, 28.231201, 52.090935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359589, 27.831871, 52.093533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584343, 0.028354, -0.811011,
		0.809470, -0.050387, -0.584995,
		-0.057451, -0.998327, 0.006492,
		32.342354, 27.532373, 52.095482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586945, 27.964779, 51.404591>,  <32.382568, 28.231201, 52.090935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586945, 27.964779, 51.404591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331055, 27.728867, 51.601734>,  <32.177521, 27.587320, 51.720020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331055, 27.728867, 51.601734>,  <32.586945, 27.964779, 51.404591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331055, 27.728867, 51.601734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684448, 0.145395, -0.714417,
		0.349690, -0.794367, -0.496687,
		-0.639725, -0.589781, 0.492859,
		32.139137, 27.551933, 51.749592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089088, 27.632406, 50.893574>,  <32.586945, 27.964779, 51.404591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089088, 27.632406, 50.893574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886072, 27.664925, 51.236687>,  <31.764263, 27.684435, 51.442554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886072, 27.664925, 51.236687>,  <32.089088, 27.632406, 50.893574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886072, 27.664925, 51.236687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826689, 0.234685, -0.511378,
		-0.242882, -0.968666, -0.051906,
		-0.507536, 0.081294, 0.857787,
		31.733810, 27.689312, 51.494022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542690, 27.036999, 50.803032>,  <32.089088, 27.632406, 50.893574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542690, 27.036999, 50.803032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381664, 26.690649, 50.684235>,  <32.285049, 26.482840, 50.612957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381664, 26.690649, 50.684235>,  <32.542690, 27.036999, 50.803032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381664, 26.690649, 50.684235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433455, 0.105461, -0.894983,
		0.806264, -0.489020, 0.332863,
		-0.402561, -0.865874, -0.296998,
		32.260895, 26.430887, 50.595135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036224, 26.464289, 50.628902>,  <32.542690, 27.036999, 50.803032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036224, 26.464289, 50.628902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713242, 26.427376, 50.395840>,  <32.519451, 26.405228, 50.256001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713242, 26.427376, 50.395840>,  <33.036224, 26.464289, 50.628902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713242, 26.427376, 50.395840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576762, 0.083974, -0.812585,
		0.123920, -0.992185, -0.014577,
		-0.807459, -0.092288, -0.582661,
		32.471004, 26.399693, 50.221043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248268, 26.018705, 50.044010>,  <33.036224, 26.464289, 50.628902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248268, 26.018705, 50.044010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926392, 26.227846, 49.931515>,  <32.733265, 26.353331, 49.864017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926392, 26.227846, 49.931515>,  <33.248268, 26.018705, 50.044010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926392, 26.227846, 49.931515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452517, 0.233510, -0.860640,
		-0.384316, -0.819816, -0.424503,
		-0.804693, 0.522852, -0.281240,
		32.684982, 26.384703, 49.847141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091637, 25.872564, 49.295620>,  <33.248268, 26.018705, 50.044010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091637, 25.872564, 49.295620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982708, 26.240025, 49.410107>,  <32.917351, 26.460501, 49.478798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982708, 26.240025, 49.410107>,  <33.091637, 25.872564, 49.295620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982708, 26.240025, 49.410107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519975, 0.390787, -0.759546,
		-0.809609, -0.058015, -0.584096,
		-0.272322, 0.918651, 0.286218,
		32.901012, 26.515619, 49.495972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847927, 26.057636, 48.705688>,  <33.091637, 25.872564, 49.295620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847927, 26.057636, 48.705688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924519, 26.386515, 48.920101>,  <32.970474, 26.583841, 49.048748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924519, 26.386515, 48.920101>,  <32.847927, 26.057636, 48.705688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924519, 26.386515, 48.920101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454808, 0.409637, -0.790789,
		-0.869762, 0.395208, -0.295507,
		0.191476, 0.822197, 0.536031,
		32.981960, 26.633173, 49.080910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806145, 26.655073, 48.197739>,  <32.847927, 26.057636, 48.705688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806145, 26.655073, 48.197739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017456, 26.777239, 48.514633>,  <33.144245, 26.850538, 48.704769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017456, 26.777239, 48.514633>,  <32.806145, 26.655073, 48.197739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017456, 26.777239, 48.514633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642861, 0.465656, -0.608189,
		-0.554660, 0.830594, 0.049659,
		0.528282, 0.305414, 0.792237,
		33.175941, 26.868862, 48.752304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947239, 27.340929, 48.089165>,  <32.806145, 26.655073, 48.197739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947239, 27.340929, 48.089165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217705, 27.231733, 48.362888>,  <33.379982, 27.166216, 48.527122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217705, 27.231733, 48.362888>,  <32.947239, 27.340929, 48.089165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217705, 27.231733, 48.362888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714696, 0.468604, -0.519249,
		-0.178923, 0.840171, 0.511956,
		0.676163, -0.272987, 0.684311,
		33.420555, 27.149837, 48.568180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357742, 27.967026, 48.280952>,  <32.947239, 27.340929, 48.089165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357742, 27.967026, 48.280952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580975, 27.641888, 48.347675>,  <33.714912, 27.446804, 48.387711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580975, 27.641888, 48.347675>,  <33.357742, 27.967026, 48.280952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580975, 27.641888, 48.347675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824208, 0.519740, -0.224834,
		0.096058, 0.262962, 0.960013,
		0.558080, -0.812848, 0.166810,
		33.748398, 27.398033, 48.397717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883213, 28.289873, 48.558929>,  <33.357742, 27.967026, 48.280952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883213, 28.289873, 48.558929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010082, 27.929903, 48.439236>,  <34.086205, 27.713921, 48.367420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010082, 27.929903, 48.439236>,  <33.883213, 28.289873, 48.558929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010082, 27.929903, 48.439236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841552, 0.412545, -0.348707,
		0.437256, -0.141219, 0.888180,
		0.317171, -0.899924, -0.299231,
		34.105232, 27.659925, 48.349468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582638, 28.287975, 48.769455>,  <33.883213, 28.289873, 48.558929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582638, 28.287975, 48.769455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571945, 28.005600, 48.486347>,  <34.565529, 27.836174, 48.316483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571945, 28.005600, 48.486347>,  <34.582638, 28.287975, 48.769455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571945, 28.005600, 48.486347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747079, 0.456326, -0.483364,
		0.664198, -0.541678, 0.515195,
		-0.026730, -0.705941, -0.707767,
		34.563927, 27.793818, 48.274017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322514, 27.972475, 48.561451>,  <34.582638, 28.287975, 48.769455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322514, 27.972475, 48.561451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090527, 27.931543, 48.238174>,  <34.951336, 27.906984, 48.044209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090527, 27.931543, 48.238174>,  <35.322514, 27.972475, 48.561451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090527, 27.931543, 48.238174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707034, 0.429563, -0.561764,
		0.404655, -0.897220, -0.176778,
		-0.579963, -0.102332, -0.808190,
		34.916538, 27.900845, 47.995716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729805, 27.743793, 47.984978>,  <35.322514, 27.972475, 48.561451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729805, 27.743793, 47.984978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405590, 27.908691, 47.818562>,  <35.211063, 28.007629, 47.718712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405590, 27.908691, 47.818562>,  <35.729805, 27.743793, 47.984978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405590, 27.908691, 47.818562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585247, 0.597683, -0.547961,
		0.022765, -0.687626, -0.725708,
		-0.810535, 0.412243, -0.416038,
		35.162430, 28.032364, 47.693748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001148, 27.836462, 47.368141>,  <35.729805, 27.743793, 47.984978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001148, 27.836462, 47.368141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650085, 28.027695, 47.354588>,  <35.439445, 28.142435, 47.346455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650085, 28.027695, 47.354588>,  <36.001148, 27.836462, 47.368141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650085, 28.027695, 47.354588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393203, 0.677806, -0.621264,
		-0.274047, -0.558584, -0.782868,
		-0.877661, 0.478082, -0.033887,
		35.386787, 28.171120, 47.344421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681492, 27.812943, 46.638653>,  <36.001148, 27.836462, 47.368141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681492, 27.812943, 46.638653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540302, 28.126696, 46.842674>,  <35.455589, 28.314947, 46.965088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540302, 28.126696, 46.842674>,  <35.681492, 27.812943, 46.638653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540302, 28.126696, 46.842674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381612, 0.618431, -0.686961,
		-0.854272, -0.047838, -0.517621,
		-0.352975, 0.784382, 0.510053,
		35.434410, 28.362011, 46.995689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412540, 28.338684, 46.137894>,  <35.681492, 27.812943, 46.638653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412540, 28.338684, 46.137894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435303, 28.560822, 46.469761>,  <35.448959, 28.694103, 46.668880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435303, 28.560822, 46.469761>,  <35.412540, 28.338684, 46.137894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435303, 28.560822, 46.469761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314751, 0.778662, -0.542786,
		-0.947467, 0.292027, -0.130485,
		0.056904, 0.555343, 0.829673,
		35.452374, 28.727425, 46.718662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981964, 28.933651, 46.022591>,  <35.412540, 28.338684, 46.137894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981964, 28.933651, 46.022591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276947, 29.032282, 46.274101>,  <35.453938, 29.091461, 46.425007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276947, 29.032282, 46.274101>,  <34.981964, 28.933651, 46.022591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276947, 29.032282, 46.274101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232627, 0.781277, -0.579215,
		-0.634071, 0.573415, 0.518795,
		0.737454, 0.246578, 0.628777,
		35.498184, 29.106255, 46.462734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866005, 29.640644, 46.188488>,  <34.981964, 28.933651, 46.022591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866005, 29.640644, 46.188488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240349, 29.612509, 46.326599>,  <35.464954, 29.595629, 46.409466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240349, 29.612509, 46.326599>,  <34.866005, 29.640644, 46.188488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240349, 29.612509, 46.326599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196431, 0.917637, -0.345481,
		-0.292544, 0.391146, 0.872596,
		0.935859, -0.070336, 0.345282,
		35.521107, 29.591408, 46.430183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970310, 30.185696, 46.613716>,  <34.866005, 29.640644, 46.188488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970310, 30.185696, 46.613716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329350, 30.060356, 46.489704>,  <35.544773, 29.985151, 46.415295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329350, 30.060356, 46.489704>,  <34.970310, 30.185696, 46.613716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329350, 30.060356, 46.489704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184796, 0.906039, -0.380714,
		0.400201, 0.284437, 0.871169,
		0.897602, -0.313351, -0.310035,
		35.598629, 29.966351, 46.396694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468945, 30.804399, 46.749031>,  <34.970310, 30.185696, 46.613716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468945, 30.804399, 46.749031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631966, 30.559893, 46.477665>,  <35.729778, 30.413189, 46.314846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631966, 30.559893, 46.477665>,  <35.468945, 30.804399, 46.749031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631966, 30.559893, 46.477665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288349, 0.791052, -0.539529,
		0.866459, 0.024268, 0.498658,
		0.407558, -0.611267, -0.678417,
		35.754234, 30.376513, 46.274139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099945, 31.145330, 46.523743>,  <35.468945, 30.804399, 46.749031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099945, 31.145330, 46.523743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007710, 30.878267, 46.240601>,  <35.952366, 30.718029, 46.070713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007710, 30.878267, 46.240601>,  <36.099945, 31.145330, 46.523743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007710, 30.878267, 46.240601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422776, 0.586465, -0.690883,
		0.876406, -0.458577, 0.147035,
		-0.230593, -0.667657, -0.707857,
		35.938530, 30.677971, 46.028244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507080, 31.475428, 46.170864>,  <36.099945, 31.145330, 46.523743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507080, 31.475428, 46.170864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346649, 31.208128, 45.920238>,  <36.250389, 31.047749, 45.769863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346649, 31.208128, 45.920238>,  <36.507080, 31.475428, 46.170864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346649, 31.208128, 45.920238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378868, 0.501733, -0.777640,
		0.834022, -0.549281, 0.051942,
		-0.401081, -0.668248, -0.626561,
		36.226326, 31.007654, 45.732269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846886, 31.498180, 45.559479>,  <36.507080, 31.475428, 46.170864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846886, 31.498180, 45.559479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522495, 31.298916, 45.436737>,  <36.327862, 31.179358, 45.363091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522495, 31.298916, 45.436737>,  <36.846886, 31.498180, 45.559479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522495, 31.298916, 45.436737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006479, 0.516784, -0.856091,
		0.585052, -0.696252, -0.415869,
		-0.810970, -0.498163, -0.306857,
		36.279205, 31.149467, 45.344681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023945, 31.105585, 44.931564>,  <36.846886, 31.498180, 45.559479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023945, 31.105585, 44.931564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630287, 31.173256, 44.952873>,  <36.394093, 31.213858, 44.965656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630287, 31.173256, 44.952873>,  <37.023945, 31.105585, 44.931564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630287, 31.173256, 44.952873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043007, 0.518994, -0.853695,
		-0.172070, -0.837869, -0.518041,
		-0.984145, 0.169175, 0.053269,
		36.335045, 31.224009, 44.968853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821865, 30.864737, 44.312862>,  <37.023945, 31.105585, 44.931564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821865, 30.864737, 44.312862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510754, 31.090935, 44.422604>,  <36.324085, 31.226654, 44.488449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510754, 31.090935, 44.422604>,  <36.821865, 30.864737, 44.312862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510754, 31.090935, 44.422604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018761, 0.457189, -0.889172,
		-0.628254, -0.686435, -0.366203,
		-0.777783, 0.565496, 0.274353,
		36.277420, 31.260584, 44.504910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439922, 30.747744, 43.710171>,  <36.821865, 30.864737, 44.312862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439922, 30.747744, 43.710171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262627, 31.068523, 43.870377>,  <36.156250, 31.260992, 43.966499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262627, 31.068523, 43.870377>,  <36.439922, 30.747744, 43.710171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262627, 31.068523, 43.870377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116221, 0.391621, -0.912757,
		-0.888836, -0.451120, -0.080379,
		-0.443242, 0.801950, 0.400516,
		36.129654, 31.309109, 43.990532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933483, 30.959949, 43.279537>,  <36.439922, 30.747744, 43.710171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933483, 30.959949, 43.279537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953049, 31.303328, 43.483765>,  <35.964787, 31.509354, 43.606300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953049, 31.303328, 43.483765>,  <35.933483, 30.959949, 43.279537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953049, 31.303328, 43.483765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000253, 0.511190, -0.859468,
		-0.998803, 0.041907, 0.025219,
		0.048910, 0.858446, 0.510567,
		35.967720, 31.560862, 43.636936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529934, 31.457689, 42.873291>,  <35.933483, 30.959949, 43.279537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529934, 31.457689, 42.873291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764488, 31.684790, 43.104397>,  <35.905220, 31.821051, 43.243061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764488, 31.684790, 43.104397>,  <35.529934, 31.457689, 42.873291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764488, 31.684790, 43.104397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008587, 0.708863, -0.705294,
		-0.809988, 0.418534, 0.410791,
		0.586384, 0.567752, 0.577764,
		35.940403, 31.855116, 43.277725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200947, 32.069660, 42.857670>,  <35.529934, 31.457689, 42.873291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200947, 32.069660, 42.857670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585514, 32.139362, 42.942814>,  <35.816254, 32.181183, 42.993900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585514, 32.139362, 42.942814>,  <35.200947, 32.069660, 42.857670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585514, 32.139362, 42.942814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080825, 0.560700, -0.824064,
		-0.262946, 0.809476, 0.524984,
		0.961419, 0.174252, 0.212860,
		35.873940, 32.191639, 43.006672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378994, 32.789101, 42.701138>,  <35.200947, 32.069660, 42.857670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378994, 32.789101, 42.701138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729725, 32.598606, 42.674656>,  <35.940163, 32.484310, 42.658768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729725, 32.598606, 42.674656>,  <35.378994, 32.789101, 42.701138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729725, 32.598606, 42.674656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218472, 0.517272, -0.827466,
		0.428310, 0.711078, 0.557600,
		0.876824, -0.476232, -0.066202,
		35.992771, 32.455738, 42.654797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855457, 33.295914, 42.447647>,  <35.378994, 32.789101, 42.701138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855457, 33.295914, 42.447647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094017, 32.978985, 42.396221>,  <36.237152, 32.788826, 42.365364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094017, 32.978985, 42.396221>,  <35.855457, 33.295914, 42.447647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094017, 32.978985, 42.396221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333519, 0.390298, -0.858157,
		0.730115, 0.468928, 0.497029,
		0.596403, -0.792322, -0.128566,
		36.272938, 32.741287, 42.357651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482391, 33.520271, 42.331608>,  <35.855457, 33.295914, 42.447647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482391, 33.520271, 42.331608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461678, 33.158375, 42.162483>,  <36.449249, 32.941238, 42.061008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461678, 33.158375, 42.162483>,  <36.482391, 33.520271, 42.331608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461678, 33.158375, 42.162483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388787, 0.371713, -0.843015,
		0.919871, -0.208036, 0.332503,
		-0.051782, -0.904738, -0.422809,
		36.446144, 32.886955, 42.035641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128395, 33.365631, 41.990791>,  <36.482391, 33.520271, 42.331608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128395, 33.365631, 41.990791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873154, 33.115929, 41.810516>,  <36.720009, 32.966106, 41.702351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873154, 33.115929, 41.810516>,  <37.128395, 33.365631, 41.990791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873154, 33.115929, 41.810516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343278, 0.293289, -0.892268,
		0.689189, -0.724073, 0.027145,
		-0.638105, -0.624260, -0.450690,
		36.681721, 32.928650, 41.675308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452728, 33.143593, 41.452198>,  <37.128395, 33.365631, 41.990791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452728, 33.143593, 41.452198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078476, 33.040508, 41.355713>,  <36.853924, 32.978657, 41.297821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078476, 33.040508, 41.355713>,  <37.452728, 33.143593, 41.452198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078476, 33.040508, 41.355713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212209, 0.135401, -0.967799,
		0.282071, -0.956688, -0.071997,
		-0.935630, -0.257710, -0.241210,
		36.797787, 32.963196, 41.283348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541103, 32.716717, 40.905800>,  <37.452728, 33.143593, 41.452198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541103, 32.716717, 40.905800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160789, 32.837959, 40.880054>,  <36.932602, 32.910706, 40.864605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160789, 32.837959, 40.880054>,  <37.541103, 32.716717, 40.905800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160789, 32.837959, 40.880054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082032, 0.045901, -0.995572,
		-0.298809, -0.951851, -0.068507,
		-0.950781, 0.303106, -0.064366,
		36.875557, 32.928890, 40.860744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212521, 32.253117, 40.473598>,  <37.541103, 32.716717, 40.905800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212521, 32.253117, 40.473598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979820, 32.578339, 40.464550>,  <36.840199, 32.773472, 40.459122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979820, 32.578339, 40.464550>,  <37.212521, 32.253117, 40.473598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979820, 32.578339, 40.464550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075602, 0.026363, -0.996790,
		-0.809846, -0.581593, -0.076805,
		-0.581751, 0.813052, -0.022620,
		36.805294, 32.822254, 40.457764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830090, 32.119343, 39.884972>,  <37.212521, 32.253117, 40.473598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830090, 32.119343, 39.884972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788029, 32.511406, 39.952179>,  <36.762791, 32.746643, 39.992504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788029, 32.511406, 39.952179>,  <36.830090, 32.119343, 39.884972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788029, 32.511406, 39.952179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044592, 0.164138, -0.985429,
		-0.993456, -0.111112, 0.026447,
		-0.105152, 0.980160, 0.168018,
		36.756481, 32.805454, 40.002583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287022, 32.366543, 39.419762>,  <36.830090, 32.119343, 39.884972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287022, 32.366543, 39.419762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522617, 32.678356, 39.505016>,  <36.663975, 32.865444, 39.556171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522617, 32.678356, 39.505016>,  <36.287022, 32.366543, 39.419762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522617, 32.678356, 39.505016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054993, 0.224468, -0.972929,
		-0.806271, 0.584761, 0.089339,
		0.588985, 0.779531, 0.213140,
		36.699314, 32.912216, 39.568958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953732, 32.914238, 39.110741>,  <36.287022, 32.366543, 39.419762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953732, 32.914238, 39.110741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338680, 33.007885, 39.165924>,  <36.569649, 33.064072, 39.199036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338680, 33.007885, 39.165924>,  <35.953732, 32.914238, 39.110741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338680, 33.007885, 39.165924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059027, 0.315467, -0.947099,
		-0.265251, 0.919604, 0.289777,
		0.962371, 0.234114, 0.137959,
		36.627392, 33.078117, 39.207314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084743, 33.626789, 38.815853>,  <35.953732, 32.914238, 39.110741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084743, 33.626789, 38.815853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447792, 33.459244, 38.827045>,  <36.665619, 33.358715, 38.833759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447792, 33.459244, 38.827045>,  <36.084743, 33.626789, 38.815853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447792, 33.459244, 38.827045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086345, 0.121041, -0.988885,
		0.410821, 0.899946, 0.146026,
		0.907618, -0.418863, 0.027980,
		36.720078, 33.333584, 38.835438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566204, 34.128834, 38.357723>,  <36.084743, 33.626789, 38.815853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566204, 34.128834, 38.357723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754841, 33.779434, 38.406044>,  <36.868023, 33.569794, 38.435036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754841, 33.779434, 38.406044>,  <36.566204, 34.128834, 38.357723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754841, 33.779434, 38.406044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149905, -0.055586, -0.987136,
		0.868982, 0.483635, 0.104729,
		0.471592, -0.873503, 0.120802,
		36.896317, 33.517384, 38.442284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299202, 34.130222, 38.046505>,  <36.566204, 34.128834, 38.357723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299202, 34.130222, 38.046505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169670, 33.751781, 38.044193>,  <37.091953, 33.524719, 38.042805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169670, 33.751781, 38.044193>,  <37.299202, 34.130222, 38.046505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169670, 33.751781, 38.044193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216255, -0.068071, -0.973961,
		0.921070, -0.316644, 0.226642,
		-0.323827, -0.946099, -0.005778,
		37.072521, 33.467953, 38.042461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835892, 33.791416, 37.905338>,  <37.299202, 34.130222, 38.046505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835892, 33.791416, 37.905338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522003, 33.565174, 37.803902>,  <37.333672, 33.429428, 37.743038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522003, 33.565174, 37.803902>,  <37.835892, 33.791416, 37.905338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522003, 33.565174, 37.803902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240217, 0.099648, -0.965591,
		0.571415, -0.818632, 0.057673,
		-0.784717, -0.565608, -0.253590,
		37.286587, 33.395493, 37.727825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116653, 33.200821, 37.497326>,  <37.835892, 33.791416, 37.905338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116653, 33.200821, 37.497326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742599, 33.316242, 37.415096>,  <37.518166, 33.385494, 37.365757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742599, 33.316242, 37.415096>,  <38.116653, 33.200821, 37.497326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742599, 33.316242, 37.415096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247579, 0.117168, -0.961757,
		-0.253430, -0.950268, -0.181007,
		-0.935135, 0.288551, -0.205573,
		37.462059, 33.402809, 37.353424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605225, 32.507805, 37.498653>,  <38.116653, 33.200821, 37.497326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605225, 32.507805, 37.498653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005028, 32.509434, 37.511116>,  <39.244907, 32.510410, 37.518593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005028, 32.509434, 37.511116>,  <38.605225, 32.507805, 37.498653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005028, 32.509434, 37.511116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026714, -0.412003, 0.910791,
		0.016550, -0.911174, -0.411690,
		0.999506, 0.004076, 0.031160,
		39.304878, 32.510658, 37.520466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899460, 31.796473, 37.668495>,  <38.605225, 32.507805, 37.498653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899460, 31.796473, 37.668495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193344, 32.037811, 37.792545>,  <39.369675, 32.182613, 37.866978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193344, 32.037811, 37.792545>,  <38.899460, 31.796473, 37.668495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193344, 32.037811, 37.792545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010186, -0.447294, 0.894329,
		0.678308, -0.660228, -0.322484,
		0.734707, 0.603346, 0.310129,
		39.413757, 32.218815, 37.885586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327450, 31.393398, 38.117203>,  <38.899460, 31.796473, 37.668495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327450, 31.393398, 38.117203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412277, 31.775154, 38.201271>,  <39.463173, 32.004208, 38.251713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412277, 31.775154, 38.201271>,  <39.327450, 31.393398, 38.117203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412277, 31.775154, 38.201271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071975, -0.229734, 0.970589,
		0.974601, -0.190702, -0.117411,
		0.212066, 0.954387, 0.210173,
		39.475899, 32.061470, 38.264324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019833, 31.375326, 38.570797>,  <39.327450, 31.393398, 38.117203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019833, 31.375326, 38.570797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816936, 31.713690, 38.636700>,  <39.695198, 31.916708, 38.676243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816936, 31.713690, 38.636700>,  <40.019833, 31.375326, 38.570797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816936, 31.713690, 38.636700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108398, -0.127039, 0.985957,
		0.854959, 0.517978, -0.027255,
		-0.507242, 0.845907, 0.164761,
		39.664764, 31.967463, 38.686127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490513, 31.731728, 38.984039>,  <40.019833, 31.375326, 38.570797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490513, 31.731728, 38.984039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128880, 31.898426, 39.021893>,  <39.911900, 31.998446, 39.044605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128880, 31.898426, 39.021893>,  <40.490513, 31.731728, 38.984039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128880, 31.898426, 39.021893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098042, -0.013275, 0.995094,
		0.415955, 0.908927, -0.028856,
		-0.904085, 0.416744, 0.094635,
		39.857655, 32.023449, 39.050282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545277, 32.224976, 39.444332>,  <40.490513, 31.731728, 38.984039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545277, 32.224976, 39.444332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149105, 32.169960, 39.439793>,  <39.911400, 32.136951, 39.437069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149105, 32.169960, 39.439793>,  <40.545277, 32.224976, 39.444332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149105, 32.169960, 39.439793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005807, -0.123680, 0.992305,
		-0.137882, 0.982745, 0.123295,
		-0.990432, -0.137537, -0.011347,
		39.851974, 32.128700, 39.436390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308964, 32.609993, 40.057301>,  <40.545277, 32.224976, 39.444332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308964, 32.609993, 40.057301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020660, 32.341034, 39.989906>,  <39.847679, 32.179661, 39.949471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020660, 32.341034, 39.989906>,  <40.308964, 32.609993, 40.057301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020660, 32.341034, 39.989906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038578, -0.203781, 0.978256,
		-0.692108, 0.711590, 0.120938,
		-0.720762, -0.672393, -0.168490,
		39.804432, 32.139317, 39.939358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863979, 32.753742, 40.558380>,  <40.308964, 32.609993, 40.057301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863979, 32.753742, 40.558380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743301, 32.391155, 40.440205>,  <39.670895, 32.173603, 40.369297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743301, 32.391155, 40.440205>,  <39.863979, 32.753742, 40.558380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743301, 32.391155, 40.440205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321807, -0.194874, 0.926533,
		-0.897450, 0.374610, -0.232916,
		-0.301700, -0.906472, -0.295442,
		39.652790, 32.119213, 40.351570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240192, 32.581104, 40.989067>,  <39.863979, 32.753742, 40.558380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240192, 32.581104, 40.989067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389225, 32.233524, 40.858768>,  <39.478645, 32.024975, 40.780590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389225, 32.233524, 40.858768>,  <39.240192, 32.581104, 40.989067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389225, 32.233524, 40.858768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179406, -0.411844, 0.893419,
		-0.910493, -0.274429, -0.309340,
		0.372580, -0.868950, -0.325747,
		39.500999, 31.972839, 40.761044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926437, 32.195152, 41.366661>,  <39.240192, 32.581104, 40.989067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926437, 32.195152, 41.366661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207775, 31.942993, 41.235264>,  <39.376579, 31.791698, 41.156425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207775, 31.942993, 41.235264>,  <38.926437, 32.195152, 41.366661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207775, 31.942993, 41.235264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032332, -0.490011, 0.871116,
		-0.710114, -0.602074, -0.365028,
		0.703344, -0.630394, -0.328498,
		39.418777, 31.753876, 41.136715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613426, 31.522036, 41.365936>,  <38.926437, 32.195152, 41.366661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613426, 31.522036, 41.365936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004917, 31.447430, 41.400105>,  <39.239811, 31.402666, 41.420605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004917, 31.447430, 41.400105>,  <38.613426, 31.522036, 41.365936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004917, 31.447430, 41.400105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193373, -0.699783, 0.687685,
		-0.068491, -0.689577, -0.720967,
		0.978732, -0.186516, 0.085416,
		39.298538, 31.391476, 41.425728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705750, 30.795578, 41.390663>,  <38.613426, 31.522036, 41.365936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705750, 30.795578, 41.390663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047802, 30.913750, 41.561058>,  <39.253033, 30.984653, 41.663296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047802, 30.913750, 41.561058>,  <38.705750, 30.795578, 41.390663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047802, 30.913750, 41.561058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189853, -0.586167, 0.787632,
		0.482391, -0.754407, -0.445163,
		0.855134, 0.295431, 0.425988,
		39.304344, 31.002378, 41.688854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051315, 30.237242, 41.812202>,  <38.705750, 30.795578, 41.390663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051315, 30.237242, 41.812202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256916, 30.540403, 41.972893>,  <39.380276, 30.722301, 42.069305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256916, 30.540403, 41.972893>,  <39.051315, 30.237242, 41.812202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256916, 30.540403, 41.972893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054973, -0.438260, 0.897166,
		0.856029, -0.483224, -0.183600,
		0.513997, 0.757906, 0.401727,
		39.411114, 30.767775, 42.093410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594151, 29.990248, 42.229603>,  <39.051315, 30.237242, 41.812202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594151, 29.990248, 42.229603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517590, 30.359491, 42.363010>,  <39.471653, 30.581038, 42.443054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517590, 30.359491, 42.363010>,  <39.594151, 29.990248, 42.229603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517590, 30.359491, 42.363010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206931, -0.370119, 0.905644,
		0.959451, 0.104324, 0.261860,
		-0.191400, 0.923108, 0.333523,
		39.460171, 30.636423, 42.463066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952389, 30.004581, 42.733135>,  <39.594151, 29.990248, 42.229603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952389, 30.004581, 42.733135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704395, 30.305880, 42.820988>,  <39.555599, 30.486658, 42.873699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704395, 30.305880, 42.820988>,  <39.952389, 30.004581, 42.733135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704395, 30.305880, 42.820988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131981, -0.376059, 0.917148,
		0.773433, 0.539632, 0.332565,
		-0.619986, 0.753245, 0.219635,
		39.518398, 30.531853, 42.886879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221939, 30.276918, 43.335770>,  <39.952389, 30.004581, 42.733135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221939, 30.276918, 43.335770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848484, 30.419346, 43.351402>,  <39.624409, 30.504803, 43.360783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848484, 30.419346, 43.351402>,  <40.221939, 30.276918, 43.335770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848484, 30.419346, 43.351402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043665, -0.221415, 0.974202,
		0.355536, 0.907849, 0.222270,
		-0.933642, 0.356069, 0.039080,
		39.568390, 30.526167, 43.363125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132450, 30.604904, 43.980705>,  <40.221939, 30.276918, 43.335770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132450, 30.604904, 43.980705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755756, 30.525938, 43.871773>,  <39.529739, 30.478559, 43.806412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755756, 30.525938, 43.871773>,  <40.132450, 30.604904, 43.980705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755756, 30.525938, 43.871773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249168, -0.134428, 0.959085,
		-0.225946, 0.971060, 0.077406,
		-0.941734, -0.197414, -0.272330,
		39.473236, 30.466713, 43.790073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681427, 30.937740, 44.557560>,  <40.132450, 30.604904, 43.980705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681427, 30.937740, 44.557560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449615, 30.661427, 44.384602>,  <39.310528, 30.495638, 44.280827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449615, 30.661427, 44.384602>,  <39.681427, 30.937740, 44.557560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449615, 30.661427, 44.384602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421310, -0.200219, 0.884540,
		-0.697598, 0.694789, -0.175001,
		-0.579530, -0.690783, -0.432394,
		39.275757, 30.454191, 44.254883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901878, 31.082275, 44.782967>,  <39.681427, 30.937740, 44.557560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901878, 31.082275, 44.782967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931053, 30.703144, 44.658833>,  <38.948559, 30.475666, 44.584354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931053, 30.703144, 44.658833>,  <38.901878, 31.082275, 44.782967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931053, 30.703144, 44.658833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366082, -0.314883, 0.875690,
		-0.927720, 0.049735, -0.369950,
		0.072939, -0.947826, -0.310330,
		38.952934, 30.418797, 44.565735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340759, 30.820942, 44.978188>,  <38.901878, 31.082275, 44.782967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340759, 30.820942, 44.978188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564232, 30.492300, 44.932865>,  <38.698315, 30.295115, 44.905674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564232, 30.492300, 44.932865>,  <38.340759, 30.820942, 44.978188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564232, 30.492300, 44.932865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382210, -0.376291, 0.843991,
		-0.736062, -0.428217, -0.524254,
		0.558683, -0.821605, -0.113305,
		38.731838, 30.245819, 44.898872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864262, 30.338896, 45.030487>,  <38.340759, 30.820942, 44.978188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864262, 30.338896, 45.030487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225163, 30.185846, 45.110023>,  <38.441704, 30.094017, 45.157745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225163, 30.185846, 45.110023>,  <37.864262, 30.338896, 45.030487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225163, 30.185846, 45.110023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397684, -0.560114, 0.726718,
		-0.166687, -0.734760, -0.657528,
		0.902255, -0.382622, 0.198839,
		38.495838, 30.071060, 45.169674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853951, 29.629927, 45.154812>,  <37.864262, 30.338896, 45.030487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853951, 29.629927, 45.154812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204384, 29.711599, 45.329525>,  <38.414646, 29.760603, 45.434353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204384, 29.711599, 45.329525>,  <37.853951, 29.629927, 45.154812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204384, 29.711599, 45.329525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292586, -0.494907, 0.818205,
		0.383232, -0.844616, -0.373840,
		0.876086, 0.204182, 0.436787,
		38.467209, 29.772854, 45.460560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049702, 29.036226, 45.496708>,  <37.853951, 29.629927, 45.154812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049702, 29.036226, 45.496708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284523, 29.312132, 45.666225>,  <38.425415, 29.477674, 45.767937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284523, 29.312132, 45.666225>,  <38.049702, 29.036226, 45.496708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284523, 29.312132, 45.666225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158801, -0.415203, 0.895761,
		0.793823, -0.593155, -0.134210,
		0.587050, 0.689763, 0.423792,
		38.460636, 29.519060, 45.793362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589775, 28.628254, 45.899960>,  <38.049702, 29.036226, 45.496708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589775, 28.628254, 45.899960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560120, 28.988451, 46.071362>,  <38.542328, 29.204569, 46.174202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560120, 28.988451, 46.071362>,  <38.589775, 28.628254, 45.899960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560120, 28.988451, 46.071362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188113, -0.434598, 0.880760,
		0.979346, -0.015311, 0.201614,
		-0.074136, 0.900495, 0.428502,
		38.537880, 29.258600, 46.199913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976540, 28.592825, 46.621010>,  <38.589775, 28.628254, 45.899960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976540, 28.592825, 46.621010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761700, 28.928972, 46.650146>,  <38.632797, 29.130661, 46.667629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761700, 28.928972, 46.650146>,  <38.976540, 28.592825, 46.621010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761700, 28.928972, 46.650146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137852, -0.172646, 0.975290,
		0.832178, 0.513786, 0.208574,
		-0.537100, 0.840368, 0.072846,
		38.600571, 29.181082, 46.672001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135456, 28.960590, 47.321907>,  <38.976540, 28.592825, 46.621010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135456, 28.960590, 47.321907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772911, 29.106691, 47.236969>,  <38.555382, 29.194351, 47.186005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772911, 29.106691, 47.236969>,  <39.135456, 28.960590, 47.321907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772911, 29.106691, 47.236969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248308, -0.053883, 0.967182,
		0.341822, 0.929349, 0.139532,
		-0.906367, 0.365251, -0.212346,
		38.500999, 29.216267, 47.173264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934277, 29.311131, 47.947598>,  <39.135456, 28.960590, 47.321907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934277, 29.311131, 47.947598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603992, 29.276226, 47.724678>,  <38.405823, 29.255283, 47.590927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603992, 29.276226, 47.724678>,  <38.934277, 29.311131, 47.947598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603992, 29.276226, 47.724678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564011, 0.144564, 0.813015,
		0.009621, 0.985640, -0.168585,
		-0.825711, -0.087261, -0.557303,
		38.356277, 29.250048, 47.557487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569347, 29.932577, 48.099133>,  <38.934277, 29.311131, 47.947598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569347, 29.932577, 48.099133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328335, 29.642584, 47.965656>,  <38.183727, 29.468588, 47.885571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328335, 29.642584, 47.965656>,  <38.569347, 29.932577, 48.099133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328335, 29.642584, 47.965656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500370, 0.017435, 0.865636,
		-0.621755, 0.688544, -0.373266,
		-0.602536, -0.724985, -0.333687,
		38.147575, 29.425089, 47.865551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953888, 30.107082, 48.416714>,  <38.569347, 29.932577, 48.099133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953888, 30.107082, 48.416714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913052, 29.728737, 48.293476>,  <37.888550, 29.501730, 48.219532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913052, 29.728737, 48.293476>,  <37.953888, 30.107082, 48.416714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913052, 29.728737, 48.293476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612933, -0.184127, 0.768382,
		-0.783512, 0.267287, -0.560952,
		-0.102091, -0.945862, -0.308095,
		37.882423, 29.444979, 48.201046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231068, 30.090891, 48.334927>,  <37.953888, 30.107082, 48.416714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231068, 30.090891, 48.334927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381340, 29.720312, 48.344387>,  <37.471504, 29.497965, 48.350063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381340, 29.720312, 48.344387>,  <37.231068, 30.090891, 48.334927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381340, 29.720312, 48.344387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396619, -0.137657, 0.907603,
		-0.837590, -0.350352, -0.419162,
		0.375681, -0.926447, 0.023656,
		37.494045, 29.442377, 48.351482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680439, 29.570681, 48.421341>,  <37.231068, 30.090891, 48.334927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680439, 29.570681, 48.421341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002705, 29.377588, 48.558674>,  <37.196064, 29.261732, 48.641071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002705, 29.377588, 48.558674>,  <36.680439, 29.570681, 48.421341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002705, 29.377588, 48.558674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468497, -0.164570, 0.868002,
		-0.362509, -0.860168, -0.358746,
		0.805667, -0.482730, 0.343328,
		37.244404, 29.232769, 48.661671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360229, 29.056597, 48.841164>,  <36.680439, 29.570681, 48.421341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360229, 29.056597, 48.841164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733253, 29.104481, 48.977398>,  <36.957069, 29.133211, 49.059139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733253, 29.104481, 48.977398>,  <36.360229, 29.056597, 48.841164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733253, 29.104481, 48.977398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310466, -0.215520, 0.925830,
		0.184237, -0.969134, -0.163818,
		0.932559, 0.119713, 0.340590,
		37.013020, 29.140394, 49.079575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387016, 28.605131, 49.402870>,  <36.360229, 29.056597, 48.841164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387016, 28.605131, 49.402870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710617, 28.831224, 49.467392>,  <36.904778, 28.966881, 49.506107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710617, 28.831224, 49.467392>,  <36.387016, 28.605131, 49.402870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710617, 28.831224, 49.467392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194242, -0.001934, 0.980952,
		0.554781, -0.824927, 0.108228,
		0.809004, 0.565236, 0.161308,
		36.953320, 29.000795, 49.515785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827759, 28.231180, 49.852978>,  <36.387016, 28.605131, 49.402870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827759, 28.231180, 49.852978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887188, 28.626165, 49.874287>,  <36.922848, 28.863157, 49.887074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887188, 28.626165, 49.874287>,  <36.827759, 28.231180, 49.852978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887188, 28.626165, 49.874287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363518, 0.004437, 0.931577,
		0.919663, -0.157776, 0.359621,
		0.148576, 0.987465, 0.053274,
		36.931759, 28.922405, 49.890270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216801, 28.340038, 50.479851>,  <36.827759, 28.231180, 49.852978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216801, 28.340038, 50.479851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033398, 28.683964, 50.389969>,  <36.923355, 28.890318, 50.336040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033398, 28.683964, 50.389969>,  <37.216801, 28.340038, 50.479851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033398, 28.683964, 50.389969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428410, 0.007674, 0.903552,
		0.778609, 0.510553, 0.364834,
		-0.458511, 0.859812, -0.224701,
		36.895844, 28.941908, 50.322559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270576, 28.700531, 51.048477>,  <37.216801, 28.340038, 50.479851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270576, 28.700531, 51.048477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981110, 28.901840, 50.859573>,  <36.807430, 29.022625, 50.746231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981110, 28.901840, 50.859573>,  <37.270576, 28.700531, 51.048477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981110, 28.901840, 50.859573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502410, 0.084995, 0.860442,
		0.473176, 0.859938, 0.191341,
		-0.723664, 0.503272, -0.472259,
		36.764011, 29.052822, 50.717896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289921, 29.357029, 51.442219>,  <37.270576, 28.700531, 51.048477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289921, 29.357029, 51.442219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932747, 29.289673, 51.275215>,  <36.718441, 29.249258, 51.175014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932747, 29.289673, 51.275215>,  <37.289921, 29.357029, 51.442219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932747, 29.289673, 51.275215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442618, 0.159033, 0.882495,
		-0.082208, 0.972807, -0.216539,
		-0.892934, -0.168392, -0.417508,
		36.664867, 29.239155, 51.149963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220688, 29.852966, 52.018295>,  <37.289921, 29.357029, 51.442219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220688, 29.852966, 52.018295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104069, 30.234844, 52.042152>,  <37.034096, 30.463970, 52.056465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104069, 30.234844, 52.042152>,  <37.220688, 29.852966, 52.018295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104069, 30.234844, 52.042152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350918, 0.164751, -0.921799,
		-0.889862, -0.247823, -0.383053,
		-0.291552, 0.954694, 0.059640,
		37.016602, 30.521252, 52.060043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945885, 30.112400, 51.380222>,  <37.220688, 29.852966, 52.018295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945885, 30.112400, 51.380222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019775, 30.459848, 51.564125>,  <37.064110, 30.668318, 51.674465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019775, 30.459848, 51.564125>,  <36.945885, 30.112400, 51.380222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019775, 30.459848, 51.564125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273827, 0.403790, -0.872910,
		-0.943872, 0.287143, -0.163262,
		0.184726, 0.868621, 0.459754,
		37.075191, 30.720434, 51.702049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600273, 30.710169, 50.970406>,  <36.945885, 30.112400, 51.380222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600273, 30.710169, 50.970406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890266, 30.861454, 51.200657>,  <37.064262, 30.952225, 51.338806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890266, 30.861454, 51.200657>,  <36.600273, 30.710169, 50.970406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890266, 30.861454, 51.200657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373944, 0.485702, -0.790101,
		-0.578411, 0.788066, 0.210697,
		0.724987, 0.378214, 0.575628,
		37.107761, 30.974918, 51.373344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595139, 31.447411, 50.815823>,  <36.600273, 30.710169, 50.970406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595139, 31.447411, 50.815823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956402, 31.346731, 50.954937>,  <37.173161, 31.286324, 51.038406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956402, 31.346731, 50.954937>,  <36.595139, 31.447411, 50.815823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956402, 31.346731, 50.954937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428460, 0.579446, -0.693299,
		-0.027023, 0.775171, 0.631173,
		0.903156, -0.251698, 0.347788,
		37.227348, 31.271221, 51.059273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845913, 31.726717, 50.312374>,  <36.595139, 31.447411, 50.815823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845913, 31.726717, 50.312374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168846, 31.592913, 50.506824>,  <37.362606, 31.512630, 50.623493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168846, 31.592913, 50.506824>,  <36.845913, 31.726717, 50.312374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168846, 31.592913, 50.506824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585822, 0.553337, -0.592141,
		-0.070915, 0.762838, 0.642689,
		0.807331, -0.334509, 0.486127,
		37.411045, 31.492559, 50.652664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133976, 32.275806, 50.577763>,  <36.845913, 31.726717, 50.312374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133976, 32.275806, 50.577763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416885, 31.997175, 50.529522>,  <37.586632, 31.829996, 50.500576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416885, 31.997175, 50.529522>,  <37.133976, 32.275806, 50.577763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416885, 31.997175, 50.529522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525288, 0.632000, -0.569779,
		0.473120, 0.339635, 0.812900,
		0.707269, -0.696580, -0.120606,
		37.629066, 31.788200, 50.493340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760689, 32.590397, 50.589447>,  <37.133976, 32.275806, 50.577763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760689, 32.590397, 50.589447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797623, 32.260490, 50.366295>,  <37.819782, 32.062546, 50.232403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797623, 32.260490, 50.366295>,  <37.760689, 32.590397, 50.589447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797623, 32.260490, 50.366295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557568, 0.507022, -0.657303,
		0.824981, -0.250364, 0.506680,
		0.092333, -0.824770, -0.557878,
		37.825321, 32.013058, 50.198933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409000, 32.674175, 50.247028>,  <37.760689, 32.590397, 50.589447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409000, 32.674175, 50.247028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210712, 32.407490, 50.024410>,  <38.091740, 32.247478, 49.890839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210712, 32.407490, 50.024410>,  <38.409000, 32.674175, 50.247028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210712, 32.407490, 50.024410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418189, 0.378399, -0.825792,
		0.761167, -0.642107, 0.091232,
		-0.495724, -0.666718, -0.556547,
		38.061996, 32.207474, 49.857445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907795, 32.439053, 49.755692>,  <38.409000, 32.674175, 50.247028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907795, 32.439053, 49.755692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536312, 32.383392, 49.618198>,  <38.313423, 32.349998, 49.535702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536312, 32.383392, 49.618198>,  <38.907795, 32.439053, 49.755692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536312, 32.383392, 49.618198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313240, 0.201739, -0.927999,
		0.198460, -0.969506, -0.143774,
		-0.928706, -0.139135, -0.343726,
		38.257702, 32.341648, 49.515079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090847, 32.131218, 49.118572>,  <38.907795, 32.439053, 49.755692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090847, 32.131218, 49.118572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711777, 32.257839, 49.102013>,  <38.484337, 32.333813, 49.092075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711777, 32.257839, 49.102013>,  <39.090847, 32.131218, 49.118572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711777, 32.257839, 49.102013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166354, 0.378954, -0.910341,
		-0.272480, -0.869591, -0.411783,
		-0.947671, 0.316551, -0.041403,
		38.427475, 32.352806, 49.089592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878456, 31.790915, 48.480572>,  <39.090847, 32.131218, 49.118572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878456, 31.790915, 48.480572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597515, 32.066978, 48.550285>,  <38.428951, 32.232616, 48.592113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597515, 32.066978, 48.550285>,  <38.878456, 31.790915, 48.480572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597515, 32.066978, 48.550285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075890, 0.170849, -0.982370,
		-0.707769, -0.703200, -0.067621,
		-0.702356, 0.690160, 0.174287,
		38.386806, 32.274025, 48.602573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434612, 31.697556, 48.047634>,  <38.878456, 31.790915, 48.480572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434612, 31.697556, 48.047634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330509, 32.071152, 48.145554>,  <38.268047, 32.295311, 48.204304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330509, 32.071152, 48.145554>,  <38.434612, 31.697556, 48.047634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330509, 32.071152, 48.145554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008289, 0.255686, -0.966724,
		-0.965503, -0.249571, -0.074286,
		-0.260260, 0.933991, 0.244797,
		38.252430, 32.351349, 48.218994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796249, 31.906311, 47.653198>,  <38.434612, 31.697556, 48.047634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796249, 31.906311, 47.653198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975048, 32.244202, 47.770931>,  <38.082329, 32.446934, 47.841572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975048, 32.244202, 47.770931>,  <37.796249, 31.906311, 47.653198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975048, 32.244202, 47.770931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041481, 0.309105, -0.950123,
		-0.893571, 0.436915, 0.103130,
		0.447001, 0.844724, 0.294332,
		38.109150, 32.497620, 47.859230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596413, 32.498005, 47.276901>,  <37.796249, 31.906311, 47.653198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596413, 32.498005, 47.276901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962540, 32.583984, 47.413128>,  <38.182217, 32.635571, 47.494865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962540, 32.583984, 47.413128>,  <37.596413, 32.498005, 47.276901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962540, 32.583984, 47.413128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266355, 0.311186, -0.912260,
		-0.302067, 0.925722, 0.227583,
		0.915320, 0.214946, 0.340570,
		38.237137, 32.648468, 47.515301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780384, 33.228436, 47.026955>,  <37.596413, 32.498005, 47.276901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780384, 33.228436, 47.026955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111050, 33.017887, 47.106510>,  <38.309448, 32.891556, 47.154243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111050, 33.017887, 47.106510>,  <37.780384, 33.228436, 47.026955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111050, 33.017887, 47.106510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434045, 0.371566, -0.820697,
		0.358095, 0.764766, 0.535630,
		0.826664, -0.526376, 0.198887,
		38.359047, 32.859974, 47.166176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247841, 33.716820, 46.909611>,  <37.780384, 33.228436, 47.026955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247841, 33.716820, 46.909611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425095, 33.358990, 46.886375>,  <38.531448, 33.144291, 46.872437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425095, 33.358990, 46.886375>,  <38.247841, 33.716820, 46.909611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425095, 33.358990, 46.886375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448448, 0.277316, -0.849700,
		0.776225, 0.350484, 0.524058,
		0.443135, -0.894571, -0.058086,
		38.558037, 33.090618, 46.868950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990490, 33.846191, 46.887394>,  <38.247841, 33.716820, 46.909611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990490, 33.846191, 46.887394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933617, 33.478104, 46.741528>,  <38.899494, 33.257252, 46.654007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933617, 33.478104, 46.741528>,  <38.990490, 33.846191, 46.887394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933617, 33.478104, 46.741528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416854, 0.278481, -0.865264,
		0.897784, -0.275039, 0.344001,
		-0.142184, -0.920218, -0.364667,
		38.890961, 33.202038, 46.632126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660130, 33.697685, 46.529385>,  <38.990490, 33.846191, 46.887394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660130, 33.697685, 46.529385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380280, 33.449306, 46.387989>,  <39.212372, 33.300278, 46.303150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380280, 33.449306, 46.387989>,  <39.660130, 33.697685, 46.529385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380280, 33.449306, 46.387989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443250, 0.010856, -0.896333,
		0.560411, -0.783779, 0.267639,
		-0.699621, -0.620946, -0.353493,
		39.170395, 33.263023, 46.281940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023788, 33.168926, 46.213718>,  <39.660130, 33.697685, 46.529385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023788, 33.168926, 46.213718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665890, 33.107517, 46.045979>,  <39.451149, 33.070671, 45.945335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665890, 33.107517, 46.045979>,  <40.023788, 33.168926, 46.213718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665890, 33.107517, 46.045979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441152, -0.158052, -0.883405,
		0.069341, -0.975424, 0.209143,
		-0.894750, -0.153520, -0.419350,
		39.397465, 33.061462, 45.920174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064323, 32.554321, 45.811390>,  <40.023788, 33.168926, 46.213718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064323, 32.554321, 45.811390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757080, 32.759750, 45.658417>,  <39.572735, 32.883007, 45.566631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757080, 32.759750, 45.658417>,  <40.064323, 32.554321, 45.811390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757080, 32.759750, 45.658417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419510, -0.047610, -0.906501,
		-0.483758, -0.856727, -0.178877,
		-0.768108, 0.513568, -0.382437,
		39.526649, 32.913822, 45.543686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909817, 32.146946, 45.296131>,  <40.064323, 32.554321, 45.811390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909817, 32.146946, 45.296131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708870, 32.480816, 45.205845>,  <39.588303, 32.681137, 45.151672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708870, 32.480816, 45.205845>,  <39.909817, 32.146946, 45.296131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708870, 32.480816, 45.205845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278491, -0.090946, -0.956123,
		-0.818578, -0.543186, -0.186761,
		-0.502367, 0.834673, -0.225718,
		39.558159, 32.731216, 45.138130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733967, 32.051395, 44.589764>,  <39.909817, 32.146946, 45.296131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733967, 32.051395, 44.589764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638252, 32.434345, 44.654491>,  <39.580822, 32.664116, 44.693329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638252, 32.434345, 44.654491>,  <39.733967, 32.051395, 44.589764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638252, 32.434345, 44.654491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160893, 0.203450, -0.965775,
		-0.957526, -0.205061, -0.202717,
		-0.239285, 0.957370, 0.161816,
		39.566467, 32.721558, 44.703037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121864, 32.247749, 44.151054>,  <39.733967, 32.051395, 44.589764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121864, 32.247749, 44.151054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357609, 32.560440, 44.232597>,  <39.499054, 32.748055, 44.281521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357609, 32.560440, 44.232597>,  <39.121864, 32.247749, 44.151054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357609, 32.560440, 44.232597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121098, 0.163998, -0.979000,
		-0.798743, 0.601670, 0.001989,
		0.589360, 0.781728, 0.203853,
		39.534416, 32.794960, 44.293755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998665, 32.770298, 43.655769>,  <39.121864, 32.247749, 44.151054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998665, 32.770298, 43.655769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360664, 32.879967, 43.785881>,  <39.577866, 32.945770, 43.863949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360664, 32.879967, 43.785881>,  <38.998665, 32.770298, 43.655769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360664, 32.879967, 43.785881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274226, 0.208593, -0.938770,
		-0.325238, 0.938785, 0.113590,
		0.904998, 0.274174, 0.325282,
		39.632164, 32.962219, 43.883465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168289, 33.354176, 43.286514>,  <38.998665, 32.770298, 43.655769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168289, 33.354176, 43.286514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515594, 33.202957, 43.415012>,  <39.723980, 33.112228, 43.492111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515594, 33.202957, 43.415012>,  <39.168289, 33.354176, 43.286514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515594, 33.202957, 43.415012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394438, 0.133325, -0.909199,
		0.300887, 0.916137, 0.264877,
		0.868266, -0.378044, 0.321244,
		39.776073, 33.089542, 43.511387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582790, 33.805431, 43.094936>,  <39.168289, 33.354176, 43.286514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582790, 33.805431, 43.094936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808754, 33.477692, 43.134022>,  <39.944332, 33.281048, 43.157475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808754, 33.477692, 43.134022>,  <39.582790, 33.805431, 43.094936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808754, 33.477692, 43.134022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549446, 0.285158, -0.785362,
		0.615620, 0.497347, 0.611275,
		0.564907, -0.819348, 0.097717,
		39.978226, 33.231888, 43.163338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305279, 33.970947, 42.979923>,  <39.582790, 33.805431, 43.094936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305279, 33.970947, 42.979923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331661, 33.574574, 42.933098>,  <40.347492, 33.336750, 42.905003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331661, 33.574574, 42.933098>,  <40.305279, 33.970947, 42.979923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331661, 33.574574, 42.933098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585759, 0.133427, -0.799427,
		0.807797, -0.015845, 0.589248,
		0.065955, -0.990932, -0.117063,
		40.351448, 33.277294, 42.897980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955879, 33.940083, 43.010632>,  <40.305279, 33.970947, 42.979923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955879, 33.940083, 43.010632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819786, 33.623695, 42.807213>,  <40.738132, 33.433865, 42.685162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819786, 33.623695, 42.807213>,  <40.955879, 33.940083, 43.010632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819786, 33.623695, 42.807213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644219, 0.197895, -0.738796,
		0.685001, -0.578973, 0.442225,
		-0.340229, -0.790966, -0.508544,
		40.717716, 33.386406, 42.654648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547253, 33.715923, 42.587368>,  <40.955879, 33.940083, 43.010632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547253, 33.715923, 42.587368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224415, 33.550301, 42.419006>,  <41.030712, 33.450928, 42.317989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224415, 33.550301, 42.419006>,  <41.547253, 33.715923, 42.587368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224415, 33.550301, 42.419006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402822, 0.135035, -0.905262,
		0.431663, -0.900181, 0.057804,
		-0.807094, -0.414053, -0.420902,
		40.982288, 33.426086, 42.292736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882973, 33.320450, 42.074963>,  <41.547253, 33.715923, 42.587368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882973, 33.320450, 42.074963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498585, 33.336575, 41.965485>,  <41.267952, 33.346249, 41.899799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498585, 33.336575, 41.965485>,  <41.882973, 33.320450, 42.074963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498585, 33.336575, 41.965485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271347, 0.330026, -0.904132,
		0.053881, -0.943111, -0.328083,
		-0.960972, 0.040308, -0.273693,
		41.210293, 33.348667, 41.883377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877571, 32.957623, 41.408985>,  <41.882973, 33.320450, 42.074963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877571, 32.957623, 41.408985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551796, 33.188793, 41.429749>,  <41.356331, 33.327496, 41.442207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551796, 33.188793, 41.429749>,  <41.877571, 32.957623, 41.408985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551796, 33.188793, 41.429749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178996, 0.335324, -0.924942,
		-0.551950, -0.744018, -0.376547,
		-0.814439, 0.577922, 0.051905,
		41.307465, 33.362171, 41.445320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473362, 32.875755, 40.780659>,  <41.877571, 32.957623, 41.408985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473362, 32.875755, 40.780659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333782, 33.212299, 40.945747>,  <41.250034, 33.414227, 41.044800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333782, 33.212299, 40.945747>,  <41.473362, 32.875755, 40.780659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333782, 33.212299, 40.945747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203093, 0.497833, -0.843158,
		-0.914870, -0.210398, -0.344594,
		-0.348949, 0.841365, 0.412722,
		41.229099, 33.464710, 41.069565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077587, 33.209770, 40.256901>,  <41.473362, 32.875755, 40.780659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077587, 33.209770, 40.256901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133480, 33.516941, 40.506947>,  <41.167015, 33.701244, 40.656975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133480, 33.516941, 40.506947>,  <41.077587, 33.209770, 40.256901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133480, 33.516941, 40.506947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112370, 0.614932, -0.780533,
		-0.983793, 0.179310, -0.000365,
		0.139733, 0.767923, 0.625115,
		41.175400, 33.747318, 40.694481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631092, 33.863594, 40.005447>,  <41.077587, 33.209770, 40.256901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631092, 33.863594, 40.005447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911968, 34.008396, 40.250683>,  <41.080494, 34.095280, 40.397823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911968, 34.008396, 40.250683>,  <40.631092, 33.863594, 40.005447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911968, 34.008396, 40.250683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255085, 0.676020, -0.691324,
		-0.664725, 0.641831, 0.382352,
		0.702191, 0.362009, 0.613089,
		41.122627, 34.117001, 40.434608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584465, 34.616951, 40.053345>,  <40.631092, 33.863594, 40.005447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584465, 34.616951, 40.053345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962437, 34.541836, 40.160553>,  <41.189220, 34.496765, 40.224880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962437, 34.541836, 40.160553>,  <40.584465, 34.616951, 40.053345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962437, 34.541836, 40.160553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312255, 0.762524, -0.566616,
		-0.097972, 0.619106, 0.779172,
		0.944933, -0.187788, 0.268025,
		41.245918, 34.485500, 40.240959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941879, 35.191593, 40.257736>,  <40.584465, 34.616951, 40.053345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941879, 35.191593, 40.257736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275265, 34.976929, 40.205070>,  <41.475296, 34.848129, 40.173470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275265, 34.976929, 40.205070>,  <40.941879, 35.191593, 40.257736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275265, 34.976929, 40.205070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439799, 0.788507, -0.429923,
		0.334539, 0.300419, 0.893214,
		0.833462, -0.536661, -0.131663,
		41.525303, 34.815929, 40.165573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318661, 35.579342, 40.546558>,  <40.941879, 35.191593, 40.257736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318661, 35.579342, 40.546558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569340, 35.354950, 40.330204>,  <41.719746, 35.220314, 40.200394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569340, 35.354950, 40.330204>,  <41.318661, 35.579342, 40.546558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569340, 35.354950, 40.330204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460815, 0.826516, -0.323296,
		0.628410, -0.046638, 0.776483,
		0.626698, -0.560978, -0.540882,
		41.757351, 35.186657, 40.167938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965736, 35.753838, 40.726913>,  <41.318661, 35.579342, 40.546558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965736, 35.753838, 40.726913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999992, 35.601162, 40.358788>,  <42.020546, 35.509556, 40.137913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999992, 35.601162, 40.358788>,  <41.965736, 35.753838, 40.726913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999992, 35.601162, 40.358788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363892, 0.871878, -0.327737,
		0.927496, -0.306830, 0.213556,
		0.085636, -0.381687, -0.920316,
		42.025684, 35.486656, 40.082691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564960, 36.034458, 40.487640>,  <41.965736, 35.753838, 40.726913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564960, 36.034458, 40.487640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363159, 35.950863, 40.152546>,  <42.242077, 35.900707, 39.951488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363159, 35.950863, 40.152546>,  <42.564960, 36.034458, 40.487640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363159, 35.950863, 40.152546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143900, 0.936341, -0.320247,
		0.851333, -0.282115, -0.442315,
		-0.504504, -0.208988, -0.837735,
		42.211807, 35.888168, 39.901226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.920547, 36.396961, 39.984612>,  <42.564960, 36.034458, 40.487640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.920547, 36.396961, 39.984612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569611, 36.329296, 39.804993>,  <42.359047, 36.288696, 39.697220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569611, 36.329296, 39.804993>,  <42.920547, 36.396961, 39.984612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569611, 36.329296, 39.804993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065574, 0.969286, -0.237034,
		0.475356, -0.178515, -0.861493,
		-0.877347, -0.169166, -0.449050,
		42.306408, 36.278545, 39.670277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974953, 36.735500, 39.313885>,  <42.920547, 36.396961, 39.984612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974953, 36.735500, 39.313885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589016, 36.687923, 39.407631>,  <42.357452, 36.659378, 39.463879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589016, 36.687923, 39.407631>,  <42.974953, 36.735500, 39.313885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589016, 36.687923, 39.407631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186884, 0.937480, -0.293608,
		-0.184796, -0.327086, -0.926750,
		-0.964844, -0.118938, 0.234370,
		42.299564, 36.652241, 39.477943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516872, 37.053764, 38.782101>,  <42.974953, 36.735500, 39.313885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516872, 37.053764, 38.782101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306370, 37.043011, 39.122063>,  <42.180069, 37.036560, 39.326038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306370, 37.043011, 39.122063>,  <42.516872, 37.053764, 38.782101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306370, 37.043011, 39.122063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412462, 0.882112, -0.227494,
		-0.743596, -0.470272, -0.475300,
		-0.526252, -0.026880, 0.849904,
		42.148495, 37.034946, 39.377033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111366, 36.824512, 38.136726>,  <42.516872, 37.053764, 38.782101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111366, 36.824512, 38.136726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453682, 36.679974, 37.988644>,  <42.659073, 36.593250, 37.899796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453682, 36.679974, 37.988644>,  <42.111366, 36.824512, 38.136726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453682, 36.679974, 37.988644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145764, -0.855052, 0.497634,
		-0.496366, -0.371906, -0.784414,
		0.855788, -0.361348, -0.370208,
		42.710419, 36.571568, 37.877583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035999, 36.063515, 37.841202>,  <42.111366, 36.824512, 38.136726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035999, 36.063515, 37.841202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402557, 36.176540, 37.954597>,  <42.622494, 36.244358, 38.022636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402557, 36.176540, 37.954597>,  <42.035999, 36.063515, 37.841202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402557, 36.176540, 37.954597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044319, -0.632271, 0.773478,
		0.397804, -0.721379, -0.566890,
		0.916399, 0.282569, 0.283491,
		42.677479, 36.261311, 38.039646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822170, 35.575741, 37.193798>,  <42.035999, 36.063515, 37.841202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822170, 35.575741, 37.193798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797279, 35.213238, 37.026550>,  <41.782345, 34.995735, 36.926201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797279, 35.213238, 37.026550>,  <41.822170, 35.575741, 37.193798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797279, 35.213238, 37.026550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342531, 0.412884, -0.843919,
		0.937443, 0.090702, -0.336115,
		-0.062231, -0.906256, -0.418124,
		41.778610, 34.941360, 36.901112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158436, 35.510181, 36.557384>,  <41.822170, 35.575741, 37.193798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158436, 35.510181, 36.557384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863415, 35.240273, 36.546844>,  <41.686401, 35.078327, 36.540520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863415, 35.240273, 36.546844>,  <42.158436, 35.510181, 36.557384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863415, 35.240273, 36.546844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241533, 0.300040, -0.922842,
		0.630615, -0.674283, -0.384276,
		-0.737555, -0.674773, -0.026348,
		41.642147, 35.037842, 36.538940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.482956, 34.958786, 36.883377>,  <42.158436, 35.510181, 36.557384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.482956, 34.958786, 36.883377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765057, 34.739140, 37.062752>,  <42.934315, 34.607353, 37.170376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765057, 34.739140, 37.062752>,  <42.482956, 34.958786, 36.883377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.765057, 34.739140, 37.062752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542005, -0.009863, 0.840318,
		-0.457009, -0.835688, -0.304579,
		0.705247, -0.549116, 0.448440,
		42.976631, 34.574406, 37.197285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229542, 35.221249, 36.992111>,  <42.482956, 34.958786, 36.883377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229542, 35.221249, 36.992111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.583660, 35.115910, 36.838799>,  <43.796131, 35.052708, 36.746811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.583660, 35.115910, 36.838799>,  <43.229542, 35.221249, 36.992111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583660, 35.115910, 36.838799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367061, 0.110331, -0.923631,
		0.285523, 0.958371, 0.001010,
		0.885293, -0.263347, -0.383282,
		43.849247, 35.036907, 36.723812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185883, 35.686417, 36.463207>,  <43.229542, 35.221249, 36.992111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185883, 35.686417, 36.463207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439049, 35.380672, 36.413937>,  <43.590946, 35.197224, 36.384373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439049, 35.380672, 36.413937>,  <43.185883, 35.686417, 36.463207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439049, 35.380672, 36.413937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250990, -0.052056, -0.966589,
		0.732412, 0.642682, -0.224794,
		0.632911, -0.764363, -0.123180,
		43.628922, 35.151363, 36.376984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672890, 35.834438, 35.832439>,  <43.185883, 35.686417, 36.463207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672890, 35.834438, 35.832439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665947, 35.439068, 35.892712>,  <43.661781, 35.201843, 35.928875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665947, 35.439068, 35.892712>,  <43.672890, 35.834438, 35.832439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665947, 35.439068, 35.892712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100785, -0.148203, -0.983808,
		0.994757, -0.032262, -0.097047,
		-0.017357, -0.988431, 0.150678,
		43.660740, 35.142540, 35.937916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.798306, 35.582214, 35.145992>,  <43.672890, 35.834438, 35.832439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.798306, 35.582214, 35.145992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696686, 35.241821, 35.329853>,  <43.635715, 35.037586, 35.440170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696686, 35.241821, 35.329853>,  <43.798306, 35.582214, 35.145992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696686, 35.241821, 35.329853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267615, -0.394841, -0.878910,
		0.929430, -0.346297, -0.127428,
		-0.254050, -0.850987, 0.459652,
		43.620472, 34.986526, 35.467747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998348, 35.029282, 34.619896>,  <43.798306, 35.582214, 35.145992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998348, 35.029282, 34.619896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721169, 34.903572, 34.879452>,  <43.554859, 34.828148, 35.035187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721169, 34.903572, 34.879452>,  <43.998348, 35.029282, 34.619896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721169, 34.903572, 34.879452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527043, -0.393339, -0.753333,
		0.491982, -0.864013, 0.106930,
		-0.692950, -0.314269, 0.648888,
		43.513283, 34.809292, 35.074120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964767, 34.333786, 34.457191>,  <43.998348, 35.029282, 34.619896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964767, 34.333786, 34.457191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628387, 34.443737, 34.643635>,  <43.426559, 34.509708, 34.755501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628387, 34.443737, 34.643635>,  <43.964767, 34.333786, 34.457191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.628387, 34.443737, 34.643635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540473, -0.468777, -0.698668,
		0.026455, -0.839459, 0.542778,
		-0.840945, 0.274874, 0.466106,
		43.376102, 34.526199, 34.783466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531166, 33.703373, 34.559593>,  <43.964767, 34.333786, 34.457191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531166, 33.703373, 34.559593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277042, 34.006805, 34.617477>,  <43.124569, 34.188866, 34.652206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277042, 34.006805, 34.617477>,  <43.531166, 33.703373, 34.559593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277042, 34.006805, 34.617477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734956, -0.536376, -0.414899,
		-0.237116, -0.369944, 0.898286,
		-0.635308, 0.758579, 0.144709,
		43.086449, 34.234379, 34.660889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861427, 33.411022, 34.872509>,  <43.531166, 33.703373, 34.559593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861427, 33.411022, 34.872509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.771770, 33.747990, 34.676510>,  <42.717976, 33.950169, 34.558910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.771770, 33.747990, 34.676510>,  <42.861427, 33.411022, 34.872509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.771770, 33.747990, 34.676510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788081, -0.452461, -0.417382,
		-0.573314, 0.292605, 0.765306,
		-0.224143, 0.842414, -0.489999,
		42.704529, 34.000713, 34.529510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097130, 33.448353, 34.822899>,  <42.861427, 33.411022, 34.872509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097130, 33.448353, 34.822899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232033, 33.687916, 34.532364>,  <42.312977, 33.831654, 34.358044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232033, 33.687916, 34.532364>,  <42.097130, 33.448353, 34.822899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232033, 33.687916, 34.532364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768426, -0.270584, -0.579918,
		-0.543853, 0.753720, 0.368959,
		0.337261, 0.598908, -0.726337,
		42.333210, 33.867588, 34.314465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474316, 33.693699, 34.522186>,  <42.097130, 33.448353, 34.822899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474316, 33.693699, 34.522186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743927, 33.765224, 34.235489>,  <41.905693, 33.808140, 34.063473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743927, 33.765224, 34.235489>,  <41.474316, 33.693699, 34.522186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743927, 33.765224, 34.235489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706523, -0.127232, -0.696159,
		-0.215672, 0.975622, 0.040575,
		0.674026, 0.178809, -0.716740,
		41.946136, 33.818867, 34.020466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206455, 34.080971, 33.991474>,  <41.474316, 33.693699, 34.522186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206455, 34.080971, 33.991474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520332, 33.925396, 33.798397>,  <41.708656, 33.832050, 33.682552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520332, 33.925396, 33.798397>,  <41.206455, 34.080971, 33.991474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520332, 33.925396, 33.798397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593797, -0.248080, -0.765416,
		0.177957, 0.887232, -0.425617,
		0.784689, -0.388941, -0.482688,
		41.755737, 33.808712, 33.653591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066944, 34.279694, 33.310928>,  <41.206455, 34.080971, 33.991474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066944, 34.279694, 33.310928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336178, 33.986286, 33.273163>,  <41.497719, 33.810242, 33.250504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336178, 33.986286, 33.273163>,  <41.066944, 34.279694, 33.310928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336178, 33.986286, 33.273163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500864, -0.358184, -0.787934,
		0.544143, 0.577634, -0.608479,
		0.673085, -0.733514, -0.094413,
		41.538105, 33.766232, 33.244839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208725, 34.180470, 32.657078>,  <41.066944, 34.279694, 33.310928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208725, 34.180470, 32.657078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344002, 33.823475, 32.776466>,  <41.425167, 33.609276, 32.848099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344002, 33.823475, 32.776466>,  <41.208725, 34.180470, 32.657078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344002, 33.823475, 32.776466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220457, -0.383469, -0.896856,
		0.914890, 0.237510, -0.326443,
		0.338193, -0.892491, 0.298471,
		41.445461, 33.555729, 32.866009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448280, 33.942787, 32.091877>,  <41.208725, 34.180470, 32.657078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448280, 33.942787, 32.091877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445839, 33.599892, 32.297829>,  <41.444374, 33.394154, 32.421398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445839, 33.599892, 32.297829>,  <41.448280, 33.942787, 32.091877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445839, 33.599892, 32.297829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107081, -0.511365, -0.852666,
		0.994232, -0.060334, -0.088676,
		-0.006099, -0.857243, 0.514876,
		41.444008, 33.342720, 32.452293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977596, 33.418911, 31.785587>,  <41.448280, 33.942787, 32.091877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977596, 33.418911, 31.785587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704109, 33.210926, 31.990402>,  <41.540016, 33.086136, 32.113289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704109, 33.210926, 31.990402>,  <41.977596, 33.418911, 31.785587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704109, 33.210926, 31.990402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059040, -0.659944, -0.748991,
		0.727359, -0.542326, 0.420514,
		-0.683713, -0.519958, 0.512035,
		41.498997, 33.054939, 32.144012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096947, 32.783710, 31.725410>,  <41.977596, 33.418911, 31.785587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096947, 32.783710, 31.725410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719265, 32.719166, 31.840258>,  <41.492657, 32.680439, 31.909166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719265, 32.719166, 31.840258>,  <42.096947, 32.783710, 31.725410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719265, 32.719166, 31.840258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071732, -0.750087, -0.657438,
		0.321447, -0.641353, 0.696662,
		-0.944207, -0.161359, 0.287119,
		41.436005, 32.670757, 31.926394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975746, 32.101986, 31.542398>,  <42.096947, 32.783710, 31.725410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975746, 32.101986, 31.542398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596794, 32.216019, 31.600636>,  <41.369423, 32.284439, 31.635578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596794, 32.216019, 31.600636>,  <41.975746, 32.101986, 31.542398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596794, 32.216019, 31.600636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293998, -0.594967, -0.748050,
		-0.126635, -0.751492, 0.647475,
		-0.947380, 0.285086, 0.145594,
		41.312580, 32.301544, 31.644314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592007, 31.415024, 31.607204>,  <41.975746, 32.101986, 31.542398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592007, 31.415024, 31.607204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323227, 31.699741, 31.525389>,  <41.161961, 31.870573, 31.476299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323227, 31.699741, 31.525389>,  <41.592007, 31.415024, 31.607204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323227, 31.699741, 31.525389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426012, -0.597396, -0.679435,
		-0.605816, -0.369401, 0.704649,
		-0.671939, 0.711801, -0.204542,
		41.121643, 31.913280, 31.464027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906998, 31.216223, 31.692339>,  <41.592007, 31.415024, 31.607204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906998, 31.216223, 31.692339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877907, 31.526434, 31.441494>,  <40.860451, 31.712561, 31.290987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877907, 31.526434, 31.441494>,  <40.906998, 31.216223, 31.692339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877907, 31.526434, 31.441494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366517, -0.605563, -0.706370,
		-0.927564, 0.178472, 0.328287,
		-0.072731, 0.775526, -0.627112,
		40.856087, 31.759092, 31.253361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285828, 31.110998, 31.420528>,  <40.906998, 31.216223, 31.692339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285828, 31.110998, 31.420528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445244, 31.364735, 31.155565>,  <40.540894, 31.516975, 30.996588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445244, 31.364735, 31.155565>,  <40.285828, 31.110998, 31.420528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445244, 31.364735, 31.155565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355054, -0.559218, -0.749141,
		-0.845639, 0.533750, 0.002356,
		0.398537, 0.634339, -0.662407,
		40.564804, 31.555037, 30.956842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650623, 31.470041, 31.030645>,  <40.285828, 31.110998, 31.420528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650623, 31.470041, 31.030645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986736, 31.507198, 30.816990>,  <40.188404, 31.529493, 30.688797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986736, 31.507198, 30.816990>,  <39.650623, 31.470041, 31.030645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986736, 31.507198, 30.816990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422729, -0.504610, -0.752774,
		-0.339458, 0.858335, -0.384745,
		0.840279, 0.092892, -0.534137,
		40.238819, 31.535067, 30.656750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463730, 31.609449, 30.243420>,  <39.650623, 31.470041, 31.030645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463730, 31.609449, 30.243420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832767, 31.455185, 30.247187>,  <40.054192, 31.362627, 30.249447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832767, 31.455185, 30.247187>,  <39.463730, 31.609449, 30.243420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832767, 31.455185, 30.247187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277047, -0.679362, -0.679494,
		0.268452, 0.624288, -0.733621,
		0.922594, -0.385659, 0.009419,
		40.109547, 31.339487, 30.250011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408287, 31.189341, 29.682682>,  <39.463730, 31.609449, 30.243420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408287, 31.189341, 29.682682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787632, 31.126583, 29.792944>,  <40.015240, 31.088928, 29.859100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787632, 31.126583, 29.792944>,  <39.408287, 31.189341, 29.682682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787632, 31.126583, 29.792944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066208, -0.752012, -0.655815,
		0.310189, 0.640204, -0.702796,
		0.948366, -0.156896, 0.275653,
		40.072144, 31.079514, 29.875639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735260, 30.958965, 28.994234>,  <39.408287, 31.189341, 29.682682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735260, 30.958965, 28.994234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942909, 30.845491, 29.316734>,  <40.067497, 30.777407, 29.510235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942909, 30.845491, 29.316734>,  <39.735260, 30.958965, 28.994234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942909, 30.845491, 29.316734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262312, -0.844908, -0.466179,
		0.813455, 0.453491, -0.364194,
		0.519118, -0.283683, 0.806251,
		40.098644, 30.760387, 29.558609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363590, 30.635557, 28.791653>,  <39.735260, 30.958965, 28.994234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363590, 30.635557, 28.791653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278263, 30.504574, 29.159842>,  <40.227066, 30.425983, 29.380754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278263, 30.504574, 29.159842>,  <40.363590, 30.635557, 28.791653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278263, 30.504574, 29.159842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515428, -0.838093, -0.178702,
		0.829957, 0.436316, 0.347563,
		-0.213319, -0.327459, 0.920470,
		40.214268, 30.406336, 29.435982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609501, 29.990942, 28.732464>,  <40.363590, 30.635557, 28.791653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609501, 29.990942, 28.732464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550091, 29.985689, 29.127993>,  <40.514446, 29.982538, 29.365311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550091, 29.985689, 29.127993>,  <40.609501, 29.990942, 28.732464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550091, 29.985689, 29.127993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250251, -0.967865, 0.024736,
		0.956720, 0.251128, 0.147040,
		-0.148527, -0.013131, 0.988821,
		40.505531, 29.981750, 29.424639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198883, 29.520508, 29.053463>,  <40.609501, 29.990942, 28.732464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198883, 29.520508, 29.053463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906994, 29.341951, 28.846298>,  <40.731861, 29.234818, 28.722000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906994, 29.341951, 28.846298>,  <41.198883, 29.520508, 29.053463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906994, 29.341951, 28.846298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379574, -0.894508, 0.236175,
		-0.568704, -0.024243, 0.822185,
		-0.729726, -0.446393, -0.517912,
		40.688076, 29.208033, 28.690924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055313, 28.909443, 28.742313>,  <41.198883, 29.520508, 29.053463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055313, 28.909443, 28.742313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393410, 28.939949, 28.530745>,  <41.596268, 28.958254, 28.403803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393410, 28.939949, 28.530745>,  <41.055313, 28.909443, 28.742313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393410, 28.939949, 28.530745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515947, 0.141314, 0.844884,
		0.139184, -0.987022, 0.080092,
		0.845238, 0.076271, -0.528920,
		41.646980, 28.962830, 28.372068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578373, 28.515308, 29.129961>,  <41.055313, 28.909443, 28.742313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578373, 28.515308, 29.129961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764980, 28.747459, 28.862970>,  <41.876945, 28.886749, 28.702776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764980, 28.747459, 28.862970>,  <41.578373, 28.515308, 29.129961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764980, 28.747459, 28.862970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645149, 0.292972, 0.705656,
		0.605098, -0.759822, -0.237752,
		0.466518, 0.580377, -0.667475,
		41.904938, 28.921572, 28.662727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371662, 28.466694, 29.184525>,  <41.578373, 28.515308, 29.129961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371662, 28.466694, 29.184525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267769, 28.824614, 29.039268>,  <42.205433, 29.039366, 28.952116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267769, 28.824614, 29.039268>,  <42.371662, 28.466694, 29.184525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267769, 28.824614, 29.039268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653593, 0.439714, 0.616009,
		0.710883, -0.077347, -0.699044,
		-0.259733, 0.894801, -0.363139,
		42.189850, 29.093054, 28.930326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957878, 28.676044, 28.952816>,  <42.371662, 28.466694, 29.184525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957878, 28.676044, 28.952816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716938, 28.985664, 29.030817>,  <42.572376, 29.171436, 29.077618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716938, 28.985664, 29.030817>,  <42.957878, 28.676044, 28.952816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716938, 28.985664, 29.030817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654198, 0.338724, 0.676234,
		0.457386, 0.534897, -0.710410,
		-0.602348, 0.774049, 0.195001,
		42.536232, 29.217878, 29.089317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446823, 29.104095, 29.106319>,  <42.957878, 28.676044, 28.952816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446823, 29.104095, 29.106319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089119, 29.208540, 29.251711>,  <42.874496, 29.271208, 29.338945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089119, 29.208540, 29.251711>,  <43.446823, 29.104095, 29.106319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089119, 29.208540, 29.251711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446315, 0.460096, 0.767538,
		0.033178, 0.848606, -0.527984,
		-0.894260, 0.261113, 0.363481,
		42.820839, 29.286873, 29.360756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.574715, 29.806974, 29.279716>,  <43.446823, 29.104095, 29.106319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.574715, 29.806974, 29.279716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288834, 29.622009, 29.489620>,  <43.117306, 29.511030, 29.615562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288834, 29.622009, 29.489620>,  <43.574715, 29.806974, 29.279716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288834, 29.622009, 29.489620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314738, 0.457388, 0.831707,
		-0.624612, 0.759585, -0.181357,
		-0.714702, -0.462414, 0.524760,
		43.074425, 29.483284, 29.647049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.255974, 30.316641, 29.724392>,  <43.574715, 29.806974, 29.279716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.255974, 30.316641, 29.724392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139954, 29.984175, 29.914146>,  <43.070343, 29.784695, 30.027998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139954, 29.984175, 29.914146>,  <43.255974, 30.316641, 29.724392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139954, 29.984175, 29.914146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235436, 0.418487, 0.877176,
		-0.927600, 0.366109, 0.074305,
		-0.290047, -0.831163, 0.474385,
		43.052940, 29.734825, 30.056461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836273, 30.517269, 30.201942>,  <43.255974, 30.316641, 29.724392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836273, 30.517269, 30.201942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973888, 30.159948, 30.317627>,  <43.056458, 29.945555, 30.387037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973888, 30.159948, 30.317627>,  <42.836273, 30.517269, 30.201942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973888, 30.159948, 30.317627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314273, 0.399802, 0.861041,
		-0.884799, -0.205342, 0.418290,
		0.344041, -0.893305, 0.289211,
		43.077099, 29.891956, 30.404390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518948, 30.467066, 30.799364>,  <42.836273, 30.517269, 30.201942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518948, 30.467066, 30.799364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.813900, 30.197044, 30.808908>,  <42.990871, 30.035032, 30.814636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.813900, 30.197044, 30.808908>,  <42.518948, 30.467066, 30.799364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.813900, 30.197044, 30.808908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225260, 0.279057, 0.933480,
		-0.636809, -0.682956, 0.357834,
		0.737382, -0.675054, 0.023863,
		43.035114, 29.994528, 30.816067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467381, 30.265223, 31.490503>,  <42.518948, 30.467066, 30.799364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467381, 30.265223, 31.490503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832874, 30.154465, 31.371561>,  <43.052170, 30.088009, 31.300196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832874, 30.154465, 31.371561>,  <42.467381, 30.265223, 31.490503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832874, 30.154465, 31.371561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378668, 0.314989, 0.870283,
		-0.147316, -0.907805, 0.392668,
		0.913733, -0.276897, -0.297354,
		43.106995, 30.071396, 31.282354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783409, 29.628170, 31.923775>,  <42.467381, 30.265223, 31.490503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.783409, 29.628170, 31.923775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079544, 29.844120, 31.763557>,  <43.257225, 29.973690, 31.667427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079544, 29.844120, 31.763557>,  <42.783409, 29.628170, 31.923775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079544, 29.844120, 31.763557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274605, 0.300978, 0.913238,
		0.613587, -0.786098, 0.074574,
		0.740340, 0.539873, -0.400543,
		43.301647, 30.006083, 31.643394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329872, 29.712790, 32.463688>,  <42.783409, 29.628170, 31.923775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329872, 29.712790, 32.463688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466465, 29.968899, 32.188461>,  <43.548420, 30.122564, 32.023323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466465, 29.968899, 32.188461>,  <43.329872, 29.712790, 32.463688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466465, 29.968899, 32.188461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438917, 0.538715, 0.719123,
		0.831109, -0.547573, -0.097065,
		0.341482, 0.640273, -0.688070,
		43.568909, 30.160980, 31.982040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020451, 29.942450, 32.651024>,  <43.329872, 29.712790, 32.463688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020451, 29.942450, 32.651024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886864, 30.226162, 32.402706>,  <43.806713, 30.396389, 32.253716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886864, 30.226162, 32.402706>,  <44.020451, 29.942450, 32.651024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886864, 30.226162, 32.402706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469420, 0.696279, 0.542992,
		0.817380, -0.110071, -0.565486,
		-0.333968, 0.709281, -0.620794,
		43.786674, 30.438946, 32.216469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566856, 30.479961, 32.549881>,  <44.020451, 29.942450, 32.651024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566856, 30.479961, 32.549881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229149, 30.673092, 32.456860>,  <44.026524, 30.788971, 32.401047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229149, 30.673092, 32.456860>,  <44.566856, 30.479961, 32.549881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.229149, 30.673092, 32.456860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317101, 0.799899, 0.509518,
		0.432030, 0.356428, -0.828438,
		-0.844273, 0.482826, -0.232557,
		43.975868, 30.817940, 32.387093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853943, 31.071472, 32.244320>,  <44.566856, 30.479961, 32.549881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853943, 31.071472, 32.244320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481052, 31.140745, 32.371422>,  <44.257320, 31.182308, 32.447681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481052, 31.140745, 32.371422>,  <44.853943, 31.071472, 32.244320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.481052, 31.140745, 32.371422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300505, 0.859691, 0.413073,
		-0.201632, 0.480562, -0.853466,
		-0.932224, 0.173182, 0.317753,
		44.201385, 31.192699, 32.466747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.863022, 31.793209, 32.273785>,  <44.853943, 31.071472, 32.244320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.863022, 31.793209, 32.273785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.537224, 31.680639, 32.476723>,  <44.341743, 31.613098, 32.598488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.537224, 31.680639, 32.476723>,  <44.863022, 31.793209, 32.273785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.537224, 31.680639, 32.476723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106889, 0.786718, 0.607988,
		-0.570241, 0.549432, -0.610696,
		-0.814494, -0.281423, 0.507347,
		44.292877, 31.596212, 32.628925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.450748, 32.400970, 32.250893>,  <44.863022, 31.793209, 32.273785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.450748, 32.400970, 32.250893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324650, 32.178268, 32.558304>,  <44.248989, 32.044647, 32.742752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324650, 32.178268, 32.558304>,  <44.450748, 32.400970, 32.250893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324650, 32.178268, 32.558304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126007, 0.778096, 0.615377,
		-0.940606, 0.290838, -0.175140,
		-0.315251, -0.556758, 0.768530,
		44.230076, 32.011242, 32.788864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.889290, 32.810738, 32.598389>,  <44.450748, 32.400970, 32.250893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.889290, 32.810738, 32.598389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007851, 32.550007, 32.877605>,  <44.078987, 32.393566, 33.045135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007851, 32.550007, 32.877605>,  <43.889290, 32.810738, 32.598389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007851, 32.550007, 32.877605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059982, 0.742149, 0.667546,
		-0.953179, -0.155989, 0.259069,
		0.296397, -0.651830, 0.698044,
		44.096771, 32.354458, 33.087017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631847, 33.011353, 33.263390>,  <43.889290, 32.810738, 32.598389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631847, 33.011353, 33.263390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.937092, 32.776646, 33.371727>,  <44.120239, 32.635822, 33.436729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.937092, 32.776646, 33.371727>,  <43.631847, 33.011353, 33.263390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.937092, 32.776646, 33.371727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234448, 0.641896, 0.730071,
		-0.602238, -0.493629, 0.627407,
		0.763114, -0.586771, 0.270844,
		44.166027, 32.600613, 33.452980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705475, 33.177582, 33.866283>,  <43.631847, 33.011353, 33.263390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705475, 33.177582, 33.866283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051743, 32.980278, 33.832073>,  <44.259502, 32.861897, 33.811546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051743, 32.980278, 33.832073>,  <43.705475, 33.177582, 33.866283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.051743, 32.980278, 33.832073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426003, 0.636081, 0.643368,
		-0.262944, -0.593378, 0.760765,
		0.865668, -0.493258, -0.085528,
		44.311443, 32.832302, 33.806416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886009, 32.955990, 34.504868>,  <43.705475, 33.177582, 33.866283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886009, 32.955990, 34.504868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.227814, 32.972248, 34.297733>,  <44.432896, 32.982002, 34.173454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.227814, 32.972248, 34.297733>,  <43.886009, 32.955990, 34.504868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227814, 32.972248, 34.297733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430857, 0.501357, 0.750335,
		0.290114, -0.864285, 0.410907,
		0.854515, 0.040641, -0.517834,
		44.484169, 32.984440, 34.142384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392365, 32.893307, 35.021832>,  <43.886009, 32.955990, 34.504868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392365, 32.893307, 35.021832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.607601, 33.034115, 34.715488>,  <44.736744, 33.118599, 34.531681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.607601, 33.034115, 34.715488>,  <44.392365, 32.893307, 35.021832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.607601, 33.034115, 34.715488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603286, 0.473700, 0.641603,
		0.588646, -0.807271, 0.042523,
		0.538091, 0.352023, -0.765857,
		44.769028, 33.139721, 34.485733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.159462, 32.707825, 35.214191>,  <44.392365, 32.893307, 35.021832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.159462, 32.707825, 35.214191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.152149, 33.014854, 34.957912>,  <45.147762, 33.199074, 34.804146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.152149, 33.014854, 34.957912>,  <45.159462, 32.707825, 35.214191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.152149, 33.014854, 34.957912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642614, 0.499942, 0.580607,
		0.765972, -0.401110, -0.502393,
		-0.018280, 0.767573, -0.640700,
		45.146664, 33.245125, 34.765701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.805962, 32.862823, 35.136841>,  <45.159462, 32.707825, 35.214191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.805962, 32.862823, 35.136841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618992, 33.202900, 35.039932>,  <45.506809, 33.406944, 34.981789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618992, 33.202900, 35.039932>,  <45.805962, 32.862823, 35.136841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.618992, 33.202900, 35.039932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627721, 0.512162, 0.586222,
		0.622480, 0.121938, -0.773078,
		-0.467424, 0.850189, -0.242267,
		45.478764, 33.457958, 34.967251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.290535, 33.198101, 34.784405>,  <45.805962, 32.862823, 35.136841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.290535, 33.198101, 34.784405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.010506, 33.427162, 34.955036>,  <45.842487, 33.564598, 35.057415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.010506, 33.427162, 34.955036>,  <46.290535, 33.198101, 34.784405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.010506, 33.427162, 34.955036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683095, 0.363019, 0.633719,
		0.208042, 0.735044, -0.645313,
		-0.700072, 0.572650, 0.426581,
		45.800484, 33.598957, 35.083012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.479839, 33.906445, 34.810814>,  <46.290535, 33.198101, 34.784405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.479839, 33.906445, 34.810814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.250847, 33.795898, 35.119591>,  <46.113453, 33.729568, 35.304855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.250847, 33.795898, 35.119591>,  <46.479839, 33.906445, 34.810814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.250847, 33.795898, 35.119591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807422, -0.026269, 0.589389,
		-0.142610, 0.960693, 0.238184,
		-0.572479, -0.276368, 0.771938,
		46.079102, 33.712990, 35.351173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.401573, 34.308815, 35.322815>,  <46.479839, 33.906445, 34.810814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.401573, 34.308815, 35.322815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.580517, 34.658058, 35.400333>,  <46.687881, 34.867603, 35.446842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.580517, 34.658058, 35.400333>,  <46.401573, 34.308815, 35.322815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.580517, 34.658058, 35.400333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891133, -0.416781, -0.179373,
		-0.075842, 0.252940, -0.964505,
		0.447358, 0.873107, 0.193793,
		46.714725, 34.919991, 35.458473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.811905, 34.569111, 34.729309>,  <46.401573, 34.308815, 35.322815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.811905, 34.569111, 34.729309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.991119, 34.706039, 35.059662>,  <47.098648, 34.788197, 35.257874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.991119, 34.706039, 35.059662>,  <46.811905, 34.569111, 34.729309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.991119, 34.706039, 35.059662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848720, -0.453177, -0.272589,
		0.280956, 0.823071, -0.493577,
		0.448038, 0.342323, 0.825880,
		47.125530, 34.808735, 35.307426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.409859, 35.048351, 34.573437>,  <46.811905, 34.569111, 34.729309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.409859, 35.048351, 34.573437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.450783, 34.831242, 34.906887>,  <47.475338, 34.700977, 35.106956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.450783, 34.831242, 34.906887>,  <47.409859, 35.048351, 34.573437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.450783, 34.831242, 34.906887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927376, -0.251123, -0.277327,
		0.359868, 0.801457, 0.477662,
		0.102314, -0.542774, 0.833624,
		47.481476, 34.668411, 35.156975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.837391, 35.334305, 34.932659>,  <47.409859, 35.048351, 34.573437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.837391, 35.334305, 34.932659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.843567, 34.938553, 34.990475>,  <47.847271, 34.701103, 35.025166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.843567, 34.938553, 34.990475>,  <47.837391, 35.334305, 34.932659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.843567, 34.938553, 34.990475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900637, -0.049031, -0.431798,
		0.434299, 0.136844, 0.890314,
		0.015436, -0.989378, 0.144541,
		47.848198, 34.641739, 35.033836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.480968, 34.870441, 46.127228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144882, 34.659843, 46.075329>,  <34.943230, 34.533485, 46.044189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144882, 34.659843, 46.075329>,  <35.480968, 34.870441, 46.127228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144882, 34.659843, 46.075329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087100, 0.367218, -0.926048,
		0.535207, -0.766781, -0.354401,
		-0.840218, -0.526496, -0.129751,
		34.892818, 34.501896, 46.036404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580559, 34.348061, 45.565907>,  <35.480968, 34.870441, 46.127228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580559, 34.348061, 45.565907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181553, 34.366673, 45.587036>,  <34.942150, 34.377842, 45.599716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181553, 34.366673, 45.587036>,  <35.580559, 34.348061, 45.565907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181553, 34.366673, 45.587036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051909, 0.020742, -0.998436,
		-0.047559, -0.998701, -0.018275,
		-0.997519, 0.046536, 0.052828,
		34.882298, 34.380634, 45.602886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307110, 33.775517, 45.152248>,  <35.580559, 34.348061, 45.565907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307110, 33.775517, 45.152248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.029804, 34.062370, 45.180805>,  <34.863419, 34.234482, 45.197941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.029804, 34.062370, 45.180805>,  <35.307110, 33.775517, 45.152248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029804, 34.062370, 45.180805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126698, -0.023757, -0.991657,
		-0.709457, -0.696528, 0.107329,
		-0.693267, 0.717136, 0.071394,
		34.821823, 34.277512, 45.202225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700455, 33.485226, 44.757408>,  <35.307110, 33.775517, 45.152248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700455, 33.485226, 44.757408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.685974, 33.884533, 44.775944>,  <34.677288, 34.124119, 44.787064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.685974, 33.884533, 44.775944>,  <34.700455, 33.485226, 44.757408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685974, 33.884533, 44.775944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049292, 0.044528, -0.997791,
		-0.998128, -0.038402, 0.047595,
		-0.036198, 0.998270, 0.046337,
		34.675114, 34.184013, 44.789845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321297, 33.645733, 44.193497>,  <34.700455, 33.485226, 44.757408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321297, 33.645733, 44.193497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.452545, 34.008236, 44.300102>,  <34.531296, 34.225739, 44.364067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.452545, 34.008236, 44.300102>,  <34.321297, 33.645733, 44.193497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452545, 34.008236, 44.300102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132407, 0.235229, -0.962879,
		-0.935310, 0.351229, -0.042812,
		0.328120, 0.906259, 0.266518,
		34.550980, 34.280113, 44.380058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853664, 34.181206, 43.932934>,  <34.321297, 33.645733, 44.193497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853664, 34.181206, 43.932934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.213333, 34.352425, 43.969280>,  <34.429134, 34.455154, 43.991089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.213333, 34.352425, 43.969280>,  <33.853664, 34.181206, 43.932934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213333, 34.352425, 43.969280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000568, 0.206512, -0.978444,
		-0.437586, 0.879845, 0.185447,
		0.899176, 0.428048, 0.090866,
		34.483086, 34.480839, 43.996540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775986, 34.728760, 43.478977>,  <33.853664, 34.181206, 43.932934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775986, 34.728760, 43.478977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.166058, 34.686287, 43.556698>,  <34.400101, 34.660805, 43.603329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.166058, 34.686287, 43.556698>,  <33.775986, 34.728760, 43.478977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166058, 34.686287, 43.556698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217780, 0.301440, -0.928281,
		0.039998, 0.947554, 0.317082,
		0.975178, -0.106183, 0.194301,
		34.458611, 34.654430, 43.614986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118999, 35.373314, 43.398605>,  <33.775986, 34.728760, 43.478977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118999, 35.373314, 43.398605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.384144, 35.082302, 43.327812>,  <34.543228, 34.907696, 43.285336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.384144, 35.082302, 43.327812>,  <34.118999, 35.373314, 43.398605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384144, 35.082302, 43.327812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389231, 0.536738, -0.748606,
		0.639623, 0.427335, 0.638958,
		0.662859, -0.727528, -0.176978,
		34.583000, 34.864044, 43.274719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811565, 35.687733, 43.289959>,  <34.118999, 35.373314, 43.398605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811565, 35.687733, 43.289959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.844585, 35.327122, 43.120045>,  <34.864395, 35.110756, 43.018097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.844585, 35.327122, 43.120045>,  <34.811565, 35.687733, 43.289959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844585, 35.327122, 43.120045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504022, 0.405475, -0.762595,
		0.859737, -0.151152, 0.487858,
		0.082546, -0.901523, -0.424786,
		34.869350, 35.056664, 42.992607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507164, 35.649792, 43.022755>,  <34.811565, 35.687733, 43.289959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507164, 35.649792, 43.022755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.344463, 35.347458, 42.817520>,  <35.246841, 35.166058, 42.694378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.344463, 35.347458, 42.817520>,  <35.507164, 35.649792, 43.022755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344463, 35.347458, 42.817520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449602, 0.323289, -0.832672,
		0.795241, -0.569378, 0.208327,
		-0.406755, -0.755839, -0.513086,
		35.222435, 35.120705, 42.663593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000156, 35.340294, 42.698677>,  <35.507164, 35.649792, 43.022755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000156, 35.340294, 42.698677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.680218, 35.217834, 42.492176>,  <35.488255, 35.144360, 42.368275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.680218, 35.217834, 42.492176>,  <36.000156, 35.340294, 42.698677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680218, 35.217834, 42.492176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451814, 0.259092, -0.853660,
		0.395101, -0.916049, -0.068914,
		-0.799850, -0.306146, -0.516251,
		35.440262, 35.125992, 42.337299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268913, 34.918488, 42.171741>,  <36.000156, 35.340294, 42.698677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268913, 34.918488, 42.171741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.907364, 35.027470, 42.039818>,  <35.690434, 35.092857, 41.960663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.907364, 35.027470, 42.039818>,  <36.268913, 34.918488, 42.171741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907364, 35.027470, 42.039818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392733, 0.222806, -0.892254,
		-0.169616, -0.936015, -0.308392,
		-0.903876, 0.272456, -0.329813,
		35.636200, 35.109207, 41.940872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208981, 34.585541, 41.505280>,  <36.268913, 34.918488, 42.171741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208981, 34.585541, 41.505280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.940170, 34.881721, 41.500980>,  <35.778885, 35.059429, 41.498402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.940170, 34.881721, 41.500980>,  <36.208981, 34.585541, 41.505280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940170, 34.881721, 41.500980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326253, 0.283012, -0.901922,
		-0.664791, -0.609617, -0.431765,
		-0.672021, 0.740454, -0.010746,
		35.738564, 35.103859, 41.497757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963058, 34.689793, 40.790947>,  <36.208981, 34.585541, 41.505280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963058, 34.689793, 40.790947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.874691, 35.038994, 40.964870>,  <35.821671, 35.248516, 41.069225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.874691, 35.038994, 40.964870>,  <35.963058, 34.689793, 40.790947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874691, 35.038994, 40.964870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297260, 0.484882, -0.822512,
		-0.928888, -0.052456, -0.366628,
		-0.220917, 0.873005, 0.434808,
		35.808414, 35.300896, 41.095314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838711, 35.103241, 40.205307>,  <35.963058, 34.689793, 40.790947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838711, 35.103241, 40.205307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.822021, 35.381134, 40.492531>,  <35.812008, 35.547871, 40.664864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.822021, 35.381134, 40.492531>,  <35.838711, 35.103241, 40.205307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822021, 35.381134, 40.492531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433006, 0.660258, -0.613649,
		-0.900425, 0.285318, -0.328373,
		-0.041726, 0.694732, 0.718057,
		35.809505, 35.589554, 40.707947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690536, 35.697105, 39.897987>,  <35.838711, 35.103241, 40.205307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690536, 35.697105, 39.897987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868179, 35.824528, 40.232960>,  <35.974766, 35.900982, 40.433945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868179, 35.824528, 40.232960>,  <35.690536, 35.697105, 39.897987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868179, 35.824528, 40.232960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533921, 0.656484, -0.532876,
		-0.719510, 0.683777, 0.121468,
		0.444110, 0.318555, 0.837430,
		36.001411, 35.920094, 40.484188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523102, 36.472427, 39.936092>,  <35.690536, 35.697105, 39.897987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523102, 36.472427, 39.936092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853359, 36.388874, 40.145729>,  <36.051514, 36.338741, 40.271511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853359, 36.388874, 40.145729>,  <35.523102, 36.472427, 39.936092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853359, 36.388874, 40.145729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441230, 0.817977, -0.369094,
		-0.351600, 0.535988, 0.767525,
		0.825647, -0.208881, 0.524095,
		36.101055, 36.326210, 40.302956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867443, 37.066631, 40.008789>,  <35.523102, 36.472427, 39.936092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867443, 37.066631, 40.008789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.174110, 36.819302, 40.077953>,  <36.358112, 36.670906, 40.119450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.174110, 36.819302, 40.077953>,  <35.867443, 37.066631, 40.008789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174110, 36.819302, 40.077953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632187, 0.680008, -0.371388,
		0.112059, 0.394041, 0.912236,
		0.766670, -0.618321, 0.172907,
		36.404110, 36.633804, 40.129826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459171, 37.523769, 40.325321>,  <35.867443, 37.066631, 40.008789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459171, 37.523769, 40.325321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.607265, 37.187195, 40.167889>,  <36.696121, 36.985249, 40.073429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.607265, 37.187195, 40.167889>,  <36.459171, 37.523769, 40.325321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607265, 37.187195, 40.167889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671292, 0.535214, -0.512750,
		0.642098, -0.074370, 0.763006,
		0.370239, -0.841436, -0.393584,
		36.718338, 36.934765, 40.049812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193539, 37.527237, 40.399532>,  <36.459171, 37.523769, 40.325321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193539, 37.527237, 40.399532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138992, 37.268169, 40.099686>,  <37.106262, 37.112728, 39.919777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138992, 37.268169, 40.099686>,  <37.193539, 37.527237, 40.399532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138992, 37.268169, 40.099686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704211, 0.468830, -0.533183,
		0.696771, -0.600597, 0.392165,
		-0.136370, -0.647674, -0.749615,
		37.098080, 37.073868, 39.874802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840137, 37.399269, 40.256538>,  <37.193539, 37.527237, 40.399532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840137, 37.399269, 40.256538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.605286, 37.308846, 39.945625>,  <37.464375, 37.254593, 39.759075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.605286, 37.308846, 39.945625>,  <37.840137, 37.399269, 40.256538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605286, 37.308846, 39.945625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678775, 0.385709, -0.624895,
		0.441069, -0.894498, -0.073020,
		-0.587132, -0.226058, -0.777287,
		37.429146, 37.241028, 39.712440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487019, 37.234558, 40.401592>,  <37.840137, 37.399269, 40.256538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487019, 37.234558, 40.401592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.237263, 37.121277, 40.692780>,  <38.087410, 37.053307, 40.867493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.237263, 37.121277, 40.692780>,  <38.487019, 37.234558, 40.401592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237263, 37.121277, 40.692780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771917, 0.366298, -0.519587,
		-0.119503, -0.886353, -0.447322,
		-0.624390, -0.283203, 0.727965,
		38.049946, 37.036316, 40.911167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152889, 37.200153, 40.072830>,  <38.487019, 37.234558, 40.401592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152889, 37.200153, 40.072830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.489880, 37.404037, 40.003052>,  <39.692074, 37.526367, 39.961185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.489880, 37.404037, 40.003052>,  <39.152889, 37.200153, 40.072830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489880, 37.404037, 40.003052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284277, -0.145539, 0.947631,
		0.457626, -0.847948, -0.267512,
		0.842475, 0.509708, -0.174449,
		39.742622, 37.556950, 39.950718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714481, 36.760487, 40.323250>,  <39.152889, 37.200153, 40.072830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714481, 36.760487, 40.323250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.835186, 37.141842, 40.323677>,  <39.907608, 37.370655, 40.323933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.835186, 37.141842, 40.323677>,  <39.714481, 36.760487, 40.323250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835186, 37.141842, 40.323677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231924, -0.074497, 0.969877,
		0.924745, -0.292420, -0.243593,
		0.301759, 0.953384, 0.001071,
		39.925713, 37.427856, 40.323997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280861, 36.695217, 40.613628>,  <39.714481, 36.760487, 40.323250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280861, 36.695217, 40.613628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.121021, 37.059822, 40.652538>,  <40.025116, 37.278587, 40.675884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.121021, 37.059822, 40.652538>,  <40.280861, 36.695217, 40.613628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121021, 37.059822, 40.652538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187116, -0.022771, 0.982074,
		0.897390, 0.410636, -0.161460,
		-0.399598, 0.911515, 0.097271,
		40.001141, 37.333275, 40.681721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616848, 36.885746, 41.183327>,  <40.280861, 36.695217, 40.613628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616848, 36.885746, 41.183327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.328251, 37.153355, 41.111927>,  <40.155094, 37.313919, 41.069088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.328251, 37.153355, 41.111927>,  <40.616848, 36.885746, 41.183327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328251, 37.153355, 41.111927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132522, 0.119601, 0.983938,
		0.679624, 0.733557, 0.002369,
		-0.721491, 0.669021, -0.178496,
		40.111805, 37.354061, 41.058376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781090, 37.449211, 41.647545>,  <40.616848, 36.885746, 41.183327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781090, 37.449211, 41.647545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.391560, 37.460083, 41.557278>,  <40.157841, 37.466606, 41.503117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.391560, 37.460083, 41.557278>,  <40.781090, 37.449211, 41.647545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391560, 37.460083, 41.557278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220928, 0.120215, 0.967853,
		0.053436, 0.992376, -0.111063,
		-0.973825, 0.027181, -0.225668,
		40.099411, 37.468239, 41.489578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408173, 37.811413, 42.332439>,  <40.781090, 37.449211, 41.647545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408173, 37.811413, 42.332439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.106659, 37.674953, 42.107788>,  <39.925751, 37.593079, 41.972996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.106659, 37.674953, 42.107788>,  <40.408173, 37.811413, 42.332439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106659, 37.674953, 42.107788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579791, -0.056986, 0.812770,
		-0.309282, 0.938280, -0.154841,
		-0.753781, -0.341151, -0.561631,
		39.880524, 37.572609, 41.939301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909748, 38.203465, 42.390079>,  <40.408173, 37.811413, 42.332439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909748, 38.203465, 42.390079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.737312, 37.855751, 42.293331>,  <39.633850, 37.647121, 42.235283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.737312, 37.855751, 42.293331>,  <39.909748, 38.203465, 42.390079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737312, 37.855751, 42.293331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503476, 0.009293, 0.863959,
		-0.748780, 0.494222, -0.441671,
		-0.431092, -0.869286, -0.241871,
		39.607986, 37.594967, 42.220772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234711, 38.287930, 42.436237>,  <39.909748, 38.203465, 42.390079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234711, 38.287930, 42.436237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.273350, 37.891411, 42.472027>,  <39.296532, 37.653500, 42.493500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.273350, 37.891411, 42.472027>,  <39.234711, 38.287930, 42.436237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273350, 37.891411, 42.472027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666242, 0.002389, 0.745731,
		-0.739453, -0.131643, -0.660212,
		0.096593, -0.991294, 0.089473,
		39.302326, 37.594021, 42.498867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480118, 38.064331, 42.464874>,  <39.234711, 38.287930, 42.436237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480118, 38.064331, 42.464874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.714409, 37.772026, 42.605103>,  <38.854984, 37.596642, 42.689240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.714409, 37.772026, 42.605103>,  <38.480118, 38.064331, 42.464874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714409, 37.772026, 42.605103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633295, -0.142697, 0.760641,
		-0.505824, -0.667548, -0.546371,
		0.585730, -0.730765, 0.350575,
		38.890129, 37.552795, 42.710274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019352, 37.681477, 42.745026>,  <38.480118, 38.064331, 42.464874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019352, 37.681477, 42.745026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350163, 37.532223, 42.913219>,  <38.548649, 37.442669, 43.014133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350163, 37.532223, 42.913219>,  <38.019352, 37.681477, 42.745026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350163, 37.532223, 42.913219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497368, -0.137021, 0.856651,
		-0.262035, -0.917602, -0.298907,
		0.827020, -0.373139, 0.420481,
		38.598270, 37.420280, 43.039364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913296, 37.019512, 43.003082>,  <38.019352, 37.681477, 42.745026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913296, 37.019512, 43.003082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.237232, 37.122177, 43.214096>,  <38.431595, 37.183777, 43.340702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.237232, 37.122177, 43.214096>,  <37.913296, 37.019512, 43.003082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237232, 37.122177, 43.214096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452634, -0.298694, 0.840181,
		0.373210, -0.919189, -0.125721,
		0.809838, 0.256658, 0.527532,
		38.480183, 37.199173, 43.372356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077408, 36.450630, 43.352131>,  <37.913296, 37.019512, 43.003082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077408, 36.450630, 43.352131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.213154, 36.772682, 43.546692>,  <38.294601, 36.965912, 43.663429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.213154, 36.772682, 43.546692>,  <38.077408, 36.450630, 43.352131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213154, 36.772682, 43.546692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402623, -0.343003, 0.848672,
		0.850132, -0.483851, 0.207760,
		0.339369, 0.805132, 0.486407,
		38.314964, 37.014221, 43.692616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385548, 36.237766, 44.077282>,  <38.077408, 36.450630, 43.352131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385548, 36.237766, 44.077282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294571, 36.626564, 44.100952>,  <38.239986, 36.859840, 44.115154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294571, 36.626564, 44.100952>,  <38.385548, 36.237766, 44.077282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294571, 36.626564, 44.100952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274480, -0.122296, 0.953784,
		0.934308, 0.200686, 0.294607,
		-0.227440, 0.971992, 0.059178,
		38.226337, 36.918163, 44.118706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756313, 36.639126, 44.616913>,  <38.385548, 36.237766, 44.077282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756313, 36.639126, 44.616913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.404957, 36.818291, 44.550217>,  <38.194141, 36.925789, 44.510197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.404957, 36.818291, 44.550217>,  <38.756313, 36.639126, 44.616913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404957, 36.818291, 44.550217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310058, -0.268544, 0.912002,
		0.363717, 0.852796, 0.374764,
		-0.878393, 0.447909, -0.166742,
		38.141438, 36.952663, 44.500195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661930, 37.072350, 45.211784>,  <38.756313, 36.639126, 44.616913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661930, 37.072350, 45.211784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303593, 37.009872, 45.045380>,  <38.088589, 36.972385, 44.945538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303593, 37.009872, 45.045380>,  <38.661930, 37.072350, 45.211784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303593, 37.009872, 45.045380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381105, -0.211371, 0.900045,
		-0.228509, 0.964846, 0.129832,
		-0.895847, -0.156189, -0.416008,
		38.034840, 36.963017, 44.920578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220722, 37.273403, 45.705662>,  <38.661930, 37.072350, 45.211784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220722, 37.273403, 45.705662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.965847, 37.079628, 45.465889>,  <37.812923, 36.963364, 45.322025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.965847, 37.079628, 45.465889>,  <38.220722, 37.273403, 45.705662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965847, 37.079628, 45.465889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527240, -0.293305, 0.797490,
		-0.562148, 0.824193, -0.068523,
		-0.637187, -0.484435, -0.599429,
		37.774693, 36.934296, 45.286060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537083, 37.468288, 45.832603>,  <38.220722, 37.273403, 45.705662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537083, 37.468288, 45.832603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.470364, 37.118408, 45.650578>,  <37.430332, 36.908482, 45.541363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.470364, 37.118408, 45.650578>,  <37.537083, 37.468288, 45.832603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470364, 37.118408, 45.650578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569124, -0.291471, 0.768857,
		-0.805157, 0.387227, -0.449197,
		-0.166794, -0.874700, -0.455060,
		37.420326, 36.855999, 45.514061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692585, 37.210022, 45.837059>,  <37.537083, 37.468288, 45.832603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692585, 37.210022, 45.837059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.919094, 36.883739, 45.789806>,  <37.055000, 36.687969, 45.761456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.919094, 36.883739, 45.789806>,  <36.692585, 37.210022, 45.837059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919094, 36.883739, 45.789806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483310, -0.444724, 0.754077,
		-0.667643, -0.369919, -0.646075,
		0.566272, -0.815709, -0.118131,
		37.088978, 36.639027, 45.754368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.213055, 36.646381, 46.017696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.560329, 36.447910, 46.020664>,  <36.768696, 36.328827, 46.022446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.560329, 36.447910, 46.020664>,  <36.213055, 36.646381, 46.017696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560329, 36.447910, 46.020664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270559, -0.460783, 0.845267,
		-0.415983, -0.735860, -0.534292,
		0.868191, -0.496175, 0.007416,
		36.820786, 36.299057, 46.022888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055496, 35.978012, 46.172188>,  <36.213055, 36.646381, 46.017696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055496, 35.978012, 46.172188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.443134, 35.978653, 46.270859>,  <36.675716, 35.979038, 46.330063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.443134, 35.978653, 46.270859>,  <36.055496, 35.978012, 46.172188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443134, 35.978653, 46.270859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204221, -0.555718, 0.805898,
		0.138377, -0.831369, -0.538217,
		0.969096, 0.001602, 0.246682,
		36.733864, 35.979134, 46.344864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304050, 35.338810, 46.101376>,  <36.055496, 35.978012, 46.172188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304050, 35.338810, 46.101376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.529781, 35.525101, 46.374035>,  <36.665218, 35.636875, 46.537628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.529781, 35.525101, 46.374035>,  <36.304050, 35.338810, 46.101376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529781, 35.525101, 46.374035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243434, -0.695093, 0.676451,
		0.788846, -0.547673, -0.278883,
		0.564324, 0.465726, 0.681644,
		36.699078, 35.664818, 46.578529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640533, 34.818600, 46.559460>,  <36.304050, 35.338810, 46.101376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640533, 34.818600, 46.559460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.657951, 35.152298, 46.779327>,  <36.668404, 35.352516, 46.911247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.657951, 35.152298, 46.779327>,  <36.640533, 34.818600, 46.559460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657951, 35.152298, 46.779327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153384, -0.538087, 0.828816,
		0.987207, -0.120400, 0.104530,
		0.043543, 0.834246, 0.549671,
		36.671013, 35.402573, 46.944229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894436, 34.560623, 47.172146>,  <36.640533, 34.818600, 46.559460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894436, 34.560623, 47.172146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.771790, 34.921288, 47.294125>,  <36.698204, 35.137688, 47.367313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.771790, 34.921288, 47.294125>,  <36.894436, 34.560623, 47.172146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771790, 34.921288, 47.294125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158844, -0.364360, 0.917611,
		0.938487, 0.232911, 0.254940,
		-0.306612, 0.901662, 0.304950,
		36.679806, 35.191788, 47.385609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301182, 34.754147, 47.743427>,  <36.894436, 34.560623, 47.172146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301182, 34.754147, 47.743427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986671, 34.992218, 47.809799>,  <36.797966, 35.135059, 47.849621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986671, 34.992218, 47.809799>,  <37.301182, 34.754147, 47.743427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986671, 34.992218, 47.809799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138506, -0.431496, 0.891419,
		0.602150, 0.677920, 0.421711,
		-0.786277, 0.595178, 0.165929,
		36.750790, 35.170773, 47.859577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403229, 35.127823, 48.397362>,  <37.301182, 34.754147, 47.743427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403229, 35.127823, 48.397362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.007908, 35.152351, 48.341511>,  <36.770714, 35.167068, 48.308002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.007908, 35.152351, 48.341511>,  <37.403229, 35.127823, 48.397362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007908, 35.152351, 48.341511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149188, -0.199133, 0.968550,
		0.031588, 0.978052, 0.205952,
		-0.988304, 0.061320, -0.139624,
		36.711418, 35.170746, 48.299625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152008, 35.287403, 49.083931>,  <37.403229, 35.127823, 48.397362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152008, 35.287403, 49.083931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.813721, 35.156208, 48.915558>,  <36.610748, 35.077492, 48.814533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.813721, 35.156208, 48.915558>,  <37.152008, 35.287403, 49.083931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813721, 35.156208, 48.915558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303324, -0.353511, 0.884887,
		-0.439035, 0.876045, 0.199485,
		-0.845720, -0.327988, -0.420929,
		36.560005, 35.057812, 48.789280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563278, 35.444035, 49.536045>,  <37.152008, 35.287403, 49.083931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563278, 35.444035, 49.536045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.430622, 35.139786, 49.312809>,  <36.351028, 34.957237, 49.178867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.430622, 35.139786, 49.312809>,  <36.563278, 35.444035, 49.536045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430622, 35.139786, 49.312809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258864, -0.495499, 0.829138,
		-0.907197, 0.419443, -0.032572,
		-0.331637, -0.760623, -0.558094,
		36.331131, 34.911598, 49.145382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949802, 35.262337, 49.846401>,  <36.563278, 35.444035, 49.536045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949802, 35.262337, 49.846401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.069763, 34.947067, 49.631428>,  <36.141739, 34.757904, 49.502445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.069763, 34.947067, 49.631428>,  <35.949802, 35.262337, 49.846401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069763, 34.947067, 49.631428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150055, -0.595328, 0.789347,
		-0.942095, -0.156080, -0.296809,
		0.299900, -0.788177, -0.537435,
		36.159733, 34.710613, 49.470196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396164, 34.852417, 49.988918>,  <35.949802, 35.262337, 49.846401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396164, 34.852417, 49.988918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.666073, 34.595974, 49.842682>,  <35.828018, 34.442108, 49.754940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.666073, 34.595974, 49.842682>,  <35.396164, 34.852417, 49.988918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666073, 34.595974, 49.842682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249681, -0.664463, 0.704378,
		-0.694508, -0.384013, -0.608434,
		0.674772, -0.641111, -0.365594,
		35.868507, 34.403641, 49.733006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068768, 34.300285, 50.010765>,  <35.396164, 34.852417, 49.988918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068768, 34.300285, 50.010765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.452465, 34.187439, 50.004398>,  <35.682686, 34.119732, 50.000576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.452465, 34.187439, 50.004398>,  <35.068768, 34.300285, 50.010765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452465, 34.187439, 50.004398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170372, -0.622412, 0.763922,
		-0.225423, -0.730079, -0.645112,
		0.959249, -0.282115, -0.015920,
		35.740238, 34.102806, 49.999622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057163, 33.559917, 49.852654>,  <35.068768, 34.300285, 50.010765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057163, 33.559917, 49.852654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.413467, 33.638264, 50.016697>,  <35.627251, 33.685272, 50.115124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.413467, 33.638264, 50.016697>,  <35.057163, 33.559917, 49.852654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413467, 33.638264, 50.016697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180895, -0.675013, 0.715287,
		0.416924, -0.711334, -0.565843,
		0.890759, 0.195862, 0.410105,
		35.680695, 33.697021, 50.139729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232094, 32.916668, 50.248398>,  <35.057163, 33.559917, 49.852654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232094, 32.916668, 50.248398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.526409, 33.147331, 50.390427>,  <35.702999, 33.285728, 50.475643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.526409, 33.147331, 50.390427>,  <35.232094, 32.916668, 50.248398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526409, 33.147331, 50.390427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135829, -0.639324, 0.756845,
		0.663446, -0.508652, -0.548737,
		0.735792, 0.576661, 0.355067,
		35.747147, 33.320328, 50.496948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806713, 32.394714, 50.443455>,  <35.232094, 32.916668, 50.248398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806713, 32.394714, 50.443455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.820148, 32.730976, 50.659664>,  <35.828209, 32.932735, 50.789391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.820148, 32.730976, 50.659664>,  <35.806713, 32.394714, 50.443455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820148, 32.730976, 50.659664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043621, -0.539082, 0.841123,
		0.998483, -0.051829, 0.018564,
		0.033587, 0.840657, 0.540525,
		35.830223, 32.983173, 50.821823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141613, 32.179310, 51.029709>,  <35.806713, 32.394714, 50.443455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141613, 32.179310, 51.029709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.031685, 32.542892, 51.155098>,  <35.965729, 32.761044, 51.230331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.031685, 32.542892, 51.155098>,  <36.141613, 32.179310, 51.029709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031685, 32.542892, 51.155098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175846, -0.368046, 0.913028,
		0.945279, 0.195794, 0.260983,
		-0.274820, 0.908959, 0.313477,
		35.949238, 32.815578, 51.249142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483612, 32.262550, 51.686012>,  <36.141613, 32.179310, 51.029709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483612, 32.262550, 51.686012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163540, 32.501762, 51.667828>,  <35.971497, 32.645290, 51.656918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163540, 32.501762, 51.667828>,  <36.483612, 32.262550, 51.686012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163540, 32.501762, 51.667828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272517, -0.295025, 0.915803,
		0.534264, 0.745200, 0.399047,
		-0.800185, 0.598028, -0.045458,
		35.923485, 32.681171, 51.654190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530815, 32.576374, 52.211094>,  <36.483612, 32.262550, 51.686012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530815, 32.576374, 52.211094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.144299, 32.547646, 52.112209>,  <35.912388, 32.530407, 52.052879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.144299, 32.547646, 52.112209>,  <36.530815, 32.576374, 52.211094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144299, 32.547646, 52.112209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176885, -0.512473, 0.840288,
		-0.187042, 0.855695, 0.482496,
		-0.966296, -0.071823, -0.247213,
		35.854408, 32.526100, 52.038044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211784, 32.782707, 52.777603>,  <36.530815, 32.576374, 52.211094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211784, 32.782707, 52.777603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927715, 32.578197, 52.584003>,  <35.757275, 32.455490, 52.467842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927715, 32.578197, 52.584003>,  <36.211784, 32.782707, 52.777603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927715, 32.578197, 52.584003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312741, -0.386824, 0.867503,
		-0.630753, 0.767442, 0.114815,
		-0.710171, -0.511273, -0.484001,
		35.714664, 32.424816, 52.438805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828247, 32.430447, 53.340019>,  <36.211784, 32.782707, 52.777603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828247, 32.430447, 53.340019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631584, 32.292107, 53.020355>,  <35.513588, 32.209103, 52.828556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631584, 32.292107, 53.020355>,  <35.828247, 32.430447, 53.340019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631584, 32.292107, 53.020355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636233, -0.483933, 0.600846,
		-0.594544, 0.803864, 0.017888,
		-0.491655, -0.345849, -0.799165,
		35.484089, 32.188351, 52.780605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159046, 32.613968, 53.477215>,  <35.828247, 32.430447, 53.340019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159046, 32.613968, 53.477215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.179115, 32.280876, 53.256653>,  <35.191154, 32.081020, 53.124317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.179115, 32.280876, 53.256653>,  <35.159046, 32.613968, 53.477215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179115, 32.280876, 53.256653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506724, -0.496984, 0.704441,
		-0.860647, 0.244069, -0.446897,
		0.050169, -0.832729, -0.551404,
		35.194164, 32.031059, 53.091232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447929, 32.383690, 53.444386>,  <35.159046, 32.613968, 53.477215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447929, 32.383690, 53.444386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.708580, 32.082153, 53.410664>,  <34.864971, 31.901232, 53.390430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.708580, 32.082153, 53.410664>,  <34.447929, 32.383690, 53.444386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708580, 32.082153, 53.410664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426868, -0.456305, 0.780749,
		-0.627030, -0.472769, -0.619131,
		0.651626, -0.753840, -0.084307,
		34.904068, 31.856001, 53.385372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126106, 31.785603, 53.281673>,  <34.447929, 32.383690, 53.444386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126106, 31.785603, 53.281673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.466873, 31.680668, 53.462963>,  <34.671333, 31.617706, 53.571735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.466873, 31.680668, 53.462963>,  <34.126106, 31.785603, 53.281673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466873, 31.680668, 53.462963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520967, -0.512448, 0.682635,
		0.053174, -0.817665, -0.573233,
		0.851919, -0.262337, 0.453225,
		34.722450, 31.601967, 53.598930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078388, 30.980433, 53.399345>,  <34.126106, 31.785603, 53.281673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078388, 30.980433, 53.399345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255848, 31.240940, 53.645607>,  <34.362324, 31.397243, 53.793362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255848, 31.240940, 53.645607>,  <34.078388, 30.980433, 53.399345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255848, 31.240940, 53.645607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688999, -0.191443, 0.699021,
		0.573112, -0.734303, 0.363789,
		0.443648, 0.651267, 0.615652,
		34.388943, 31.436319, 53.830303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414391, 31.217321, 53.607464>,  <34.078388, 30.980433, 53.399345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414391, 31.217321, 53.607464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.032726, 31.271938, 53.500938>,  <32.803726, 31.304708, 53.437023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.032726, 31.271938, 53.500938>,  <33.414391, 31.217321, 53.607464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032726, 31.271938, 53.500938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296290, 0.305483, -0.904927,
		-0.042207, -0.942356, -0.331939,
		-0.954165, 0.136545, -0.266317,
		32.746475, 31.312902, 53.421043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302322, 30.797966, 52.948273>,  <33.414391, 31.217321, 53.607464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302322, 30.797966, 52.948273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.995770, 31.054863, 52.953762>,  <32.811840, 31.209002, 52.957058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.995770, 31.054863, 52.953762>,  <33.302322, 30.797966, 52.948273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995770, 31.054863, 52.953762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221857, 0.284670, -0.932600,
		-0.602862, -0.711680, -0.360651,
		-0.766379, 0.642242, 0.013725,
		32.765854, 31.247536, 52.957878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956985, 30.577749, 52.409927>,  <33.302322, 30.797966, 52.948273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956985, 30.577749, 52.409927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.844955, 30.955862, 52.476856>,  <32.777737, 31.182730, 52.517014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.844955, 30.955862, 52.476856>,  <32.956985, 30.577749, 52.409927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844955, 30.955862, 52.476856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104710, 0.203342, -0.973493,
		-0.954250, -0.255133, -0.155932,
		-0.280077, 0.945283, 0.167324,
		32.760933, 31.239447, 52.527054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514481, 30.705202, 51.891186>,  <32.956985, 30.577749, 52.409927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514481, 30.705202, 51.891186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.621925, 31.071398, 52.011005>,  <32.686394, 31.291115, 52.082897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.621925, 31.071398, 52.011005>,  <32.514481, 30.705202, 51.891186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621925, 31.071398, 52.011005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190435, 0.254364, -0.948174,
		-0.944236, 0.311737, -0.106015,
		0.268615, 0.915488, 0.299546,
		32.702511, 31.346045, 52.100868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130238, 31.120628, 51.406033>,  <32.514481, 30.705202, 51.891186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130238, 31.120628, 51.406033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.409725, 31.361893, 51.559910>,  <32.577419, 31.506651, 51.652237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.409725, 31.361893, 51.559910>,  <32.130238, 31.120628, 51.406033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409725, 31.361893, 51.559910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102932, 0.447375, -0.888403,
		-0.707952, 0.660342, 0.250505,
		0.698720, 0.603162, 0.384690,
		32.619343, 31.542841, 51.675316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966803, 31.872211, 51.140919>,  <32.130238, 31.120628, 51.406033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966803, 31.872211, 51.140919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.346748, 31.886286, 51.265186>,  <32.574715, 31.894730, 51.339748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.346748, 31.886286, 51.265186>,  <31.966803, 31.872211, 51.140919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346748, 31.886286, 51.265186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241908, 0.546799, -0.801556,
		-0.198077, 0.836524, 0.510874,
		0.949866, 0.035185, 0.310670,
		32.631710, 31.896841, 51.358387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149353, 32.431900, 50.930134>,  <31.966803, 31.872211, 51.140919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149353, 32.431900, 50.930134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.498722, 32.246529, 50.989971>,  <32.708344, 32.135307, 51.025871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.498722, 32.246529, 50.989971>,  <32.149353, 32.431900, 50.930134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498722, 32.246529, 50.989971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370691, 0.433508, -0.821376,
		0.315796, 0.772858, 0.550421,
		0.873419, -0.463424, 0.149591,
		32.760746, 32.107502, 51.034847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656998, 32.959682, 50.762417>,  <32.149353, 32.431900, 50.930134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656998, 32.959682, 50.762417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.871445, 32.623894, 50.726929>,  <33.000114, 32.422421, 50.705635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.871445, 32.623894, 50.726929>,  <32.656998, 32.959682, 50.762417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871445, 32.623894, 50.726929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295271, 0.284947, -0.911932,
		0.790819, 0.462706, 0.400636,
		0.536116, -0.839469, -0.088718,
		33.032280, 32.372051, 50.700314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267040, 33.250740, 50.546539>,  <32.656998, 32.959682, 50.762417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267040, 33.250740, 50.546539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.270733, 32.868412, 50.429012>,  <33.272949, 32.639015, 50.358498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.270733, 32.868412, 50.429012>,  <33.267040, 33.250740, 50.546539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270733, 32.868412, 50.429012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535787, 0.252818, -0.805615,
		0.844303, -0.149982, 0.514450,
		0.009235, -0.955818, -0.293813,
		33.273502, 32.581665, 50.340870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879852, 33.204594, 50.464649>,  <33.267040, 33.250740, 50.546539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879852, 33.204594, 50.464649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.701141, 32.916878, 50.251850>,  <33.593914, 32.744247, 50.124172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.701141, 32.916878, 50.251850>,  <33.879852, 33.204594, 50.464649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701141, 32.916878, 50.251850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515605, 0.278939, -0.810151,
		0.731125, -0.636254, 0.246245,
		-0.446775, -0.719287, -0.531995,
		33.567108, 32.701092, 50.092251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459496, 32.862976, 50.127357>,  <33.879852, 33.204594, 50.464649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459496, 32.862976, 50.127357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121391, 32.789474, 49.926651>,  <33.918530, 32.745373, 49.806229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121391, 32.789474, 49.926651>,  <34.459496, 32.862976, 50.127357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121391, 32.789474, 49.926651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460212, 0.226853, -0.858338,
		0.271547, -0.956438, -0.107186,
		-0.845262, -0.183751, -0.501765,
		33.867813, 32.734348, 49.776123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719845, 32.634102, 49.602364>,  <34.459496, 32.862976, 50.127357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719845, 32.634102, 49.602364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.354294, 32.735050, 49.475159>,  <34.134964, 32.795620, 49.398834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.354294, 32.735050, 49.475159>,  <34.719845, 32.634102, 49.602364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354294, 32.735050, 49.475159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370850, 0.200158, -0.906867,
		-0.165214, -0.946702, -0.276513,
		-0.913879, 0.252372, -0.318015,
		34.080132, 32.810760, 49.379753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802586, 32.606678, 48.815117>,  <34.719845, 32.634102, 49.602364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802586, 32.606678, 48.815117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.458382, 32.803982, 48.866062>,  <34.251862, 32.922363, 48.896629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.458382, 32.803982, 48.866062>,  <34.802586, 32.606678, 48.815117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458382, 32.803982, 48.866062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139963, 0.469297, -0.871878,
		-0.489834, -0.732431, -0.472871,
		-0.860508, 0.493260, 0.127365,
		34.200230, 32.951962, 48.904270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418224, 32.573669, 48.113049>,  <34.802586, 32.606678, 48.815117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418224, 32.573669, 48.113049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.289360, 32.883350, 48.330975>,  <34.212040, 33.069157, 48.461731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.289360, 32.883350, 48.330975>,  <34.418224, 32.573669, 48.113049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289360, 32.883350, 48.330975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032002, 0.584077, -0.811067,
		-0.946143, -0.243860, -0.212944,
		-0.322163, 0.774200, 0.544817,
		34.192711, 33.115612, 48.494419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797878, 32.797562, 47.818977>,  <34.418224, 32.573669, 48.113049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797878, 32.797562, 47.818977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.938026, 33.101582, 48.037907>,  <34.022114, 33.283993, 48.169266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.938026, 33.101582, 48.037907>,  <33.797878, 32.797562, 47.818977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938026, 33.101582, 48.037907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109493, 0.613600, -0.781989,
		-0.930190, 0.214055, 0.298206,
		0.350368, 0.760050, 0.547327,
		34.043137, 33.329597, 48.202106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336197, 33.343029, 47.633362>,  <33.797878, 32.797562, 47.818977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336197, 33.343029, 47.633362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.667320, 33.499420, 47.794292>,  <33.865993, 33.593254, 47.890850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.667320, 33.499420, 47.794292>,  <33.336197, 33.343029, 47.633362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667320, 33.499420, 47.794292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123591, 0.572435, -0.810582,
		-0.547225, 0.720733, 0.425546,
		0.827811, 0.390977, 0.402326,
		33.915665, 33.616714, 47.914989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263737, 34.007492, 47.514481>,  <33.336197, 33.343029, 47.633362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263737, 34.007492, 47.514481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.658718, 33.984203, 47.573193>,  <33.895706, 33.970230, 47.608418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.658718, 33.984203, 47.573193>,  <33.263737, 34.007492, 47.514481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658718, 33.984203, 47.573193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147484, 0.672105, -0.725619,
		-0.056406, 0.738163, 0.672260,
		0.987455, -0.058219, 0.146778,
		33.954956, 33.966736, 47.617226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450626, 34.741566, 47.417133>,  <33.263737, 34.007492, 47.514481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450626, 34.741566, 47.417133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.773880, 34.509884, 47.374336>,  <33.967831, 34.370876, 47.348660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.773880, 34.509884, 47.374336>,  <33.450626, 34.741566, 47.417133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773880, 34.509884, 47.374336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169347, 0.402461, -0.899637,
		0.564128, 0.708909, 0.423328,
		0.808134, -0.579200, -0.106988,
		34.016319, 34.336124, 47.342239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023212, 35.162758, 47.256489>,  <33.450626, 34.741566, 47.417133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023212, 35.162758, 47.256489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.108337, 34.805672, 47.097607>,  <34.159412, 34.591419, 47.002277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.108337, 34.805672, 47.097607>,  <34.023212, 35.162758, 47.256489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108337, 34.805672, 47.097607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338443, 0.448702, -0.827117,
		0.916606, 0.041589, 0.397622,
		0.212813, -0.892713, -0.397208,
		34.172180, 34.537857, 46.978443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606339, 35.341831, 46.844624>,  <34.023212, 35.162758, 47.256489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606339, 35.341831, 46.844624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.517769, 34.976887, 46.706890>,  <34.464626, 34.757919, 46.624249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.517769, 34.976887, 46.706890>,  <34.606339, 35.341831, 46.844624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517769, 34.976887, 46.706890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283828, 0.277518, -0.917837,
		0.932958, -0.300966, 0.197504,
		-0.221427, -0.912361, -0.344335,
		34.451340, 34.703178, 46.603588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.297771, 30.962666, 30.223789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.926571, 31.106531, 30.184908>,  <40.703850, 31.192850, 30.161579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.926571, 31.106531, 30.184908>,  <41.297771, 30.962666, 30.223789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926571, 31.106531, 30.184908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256307, 0.805658, 0.534062,
		0.270397, 0.470698, -0.839839,
		-0.928004, 0.359666, -0.097204,
		40.648170, 31.214432, 30.155746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272987, 31.669611, 29.868029>,  <41.297771, 30.962666, 30.223789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272987, 31.669611, 29.868029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.955376, 31.627748, 30.107550>,  <40.764809, 31.602631, 30.251263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.955376, 31.627748, 30.107550>,  <41.272987, 31.669611, 29.868029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955376, 31.627748, 30.107550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317677, 0.768405, 0.555550,
		-0.518263, 0.631349, -0.576890,
		-0.794031, -0.104656, 0.598800,
		40.717167, 31.596352, 30.287189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129692, 32.329018, 30.070885>,  <41.272987, 31.669611, 29.868029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129692, 32.329018, 30.070885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.930347, 32.106373, 30.336765>,  <40.810741, 31.972788, 30.496294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.930347, 32.106373, 30.336765>,  <41.129692, 32.329018, 30.070885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930347, 32.106373, 30.336765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268070, 0.630190, 0.728697,
		-0.824485, 0.541339, -0.164852,
		-0.498360, -0.556608, 0.664699,
		40.780838, 31.939390, 30.536175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860001, 32.777843, 30.435965>,  <41.129692, 32.329018, 30.070885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860001, 32.777843, 30.435965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.838078, 32.456558, 30.673231>,  <40.824924, 32.263786, 30.815592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.838078, 32.456558, 30.673231>,  <40.860001, 32.777843, 30.435965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838078, 32.456558, 30.673231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362150, 0.537619, 0.761454,
		-0.930507, 0.256550, 0.261417,
		-0.054808, -0.803211, 0.593168,
		40.821636, 32.215595, 30.851181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425549, 32.938984, 31.041710>,  <40.860001, 32.777843, 30.435965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425549, 32.938984, 31.041710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.607273, 32.610783, 31.180490>,  <40.716309, 32.413860, 31.263760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.607273, 32.610783, 31.180490>,  <40.425549, 32.938984, 31.041710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607273, 32.610783, 31.180490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202076, 0.474231, 0.856896,
		-0.867620, -0.319189, 0.381253,
		0.454314, -0.820502, 0.346952,
		40.743568, 32.364632, 31.284576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073975, 32.700375, 31.622587>,  <40.425549, 32.938984, 31.041710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073975, 32.700375, 31.622587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.461517, 32.603085, 31.641190>,  <40.694042, 32.544708, 31.652351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.461517, 32.603085, 31.641190>,  <40.073975, 32.700375, 31.622587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461517, 32.603085, 31.641190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069339, 0.446748, 0.891969,
		-0.237728, -0.860962, 0.449699,
		0.968854, -0.243228, 0.046507,
		40.752174, 32.530117, 31.655142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239052, 32.508598, 32.263863>,  <40.073975, 32.700375, 31.622587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239052, 32.508598, 32.263863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.631199, 32.541836, 32.192337>,  <40.866486, 32.561779, 32.149422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.631199, 32.541836, 32.192337>,  <40.239052, 32.508598, 32.263863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631199, 32.541836, 32.192337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089327, 0.621321, 0.778448,
		0.175783, -0.779138, 0.601701,
		0.980368, 0.083090, -0.178816,
		40.925308, 32.566761, 32.138691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578243, 32.472446, 32.862095>,  <40.239052, 32.508598, 32.263863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578243, 32.472446, 32.862095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.863285, 32.647041, 32.642395>,  <41.034309, 32.751801, 32.510574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.863285, 32.647041, 32.642395>,  <40.578243, 32.472446, 32.862095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863285, 32.647041, 32.642395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420825, 0.360469, 0.832447,
		0.561342, -0.824342, 0.073186,
		0.712602, 0.436489, -0.549250,
		41.077065, 32.777988, 32.477619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198666, 32.320839, 33.240593>,  <40.578243, 32.472446, 32.862095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198666, 32.320839, 33.240593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.296787, 32.621136, 32.995247>,  <41.355659, 32.801315, 32.848038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.296787, 32.621136, 32.995247>,  <41.198666, 32.320839, 33.240593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296787, 32.621136, 32.995247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458323, 0.467715, 0.755766,
		0.854264, -0.466508, -0.229352,
		0.245300, 0.750741, -0.613364,
		41.370377, 32.846359, 32.811237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875977, 32.447948, 33.366894>,  <41.198666, 32.320839, 33.240593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875977, 32.447948, 33.366894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.733471, 32.787872, 33.211514>,  <41.647968, 32.991829, 33.118286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.733471, 32.787872, 33.211514>,  <41.875977, 32.447948, 33.366894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733471, 32.787872, 33.211514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538267, 0.526475, 0.658098,
		0.763770, 0.025365, -0.644989,
		-0.356263, 0.849812, -0.388453,
		41.626591, 33.042816, 33.094978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438812, 32.801659, 33.399689>,  <41.875977, 32.447948, 33.366894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438812, 32.801659, 33.399689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.151249, 33.075939, 33.354107>,  <41.978710, 33.240509, 33.326759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.151249, 33.075939, 33.354107>,  <42.438812, 32.801659, 33.399689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151249, 33.075939, 33.354107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468528, 0.599118, 0.649260,
		0.513470, 0.413368, -0.751981,
		-0.718909, 0.685700, -0.113955,
		41.935577, 33.281651, 33.319920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824768, 33.327446, 33.072807>,  <42.438812, 32.801659, 33.399689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824768, 33.327446, 33.072807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.493935, 33.484669, 33.233524>,  <42.295433, 33.579002, 33.329956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.493935, 33.484669, 33.233524>,  <42.824768, 33.327446, 33.072807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493935, 33.484669, 33.233524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561988, 0.591261, 0.578429,
		-0.010206, 0.704211, -0.709917,
		-0.827083, 0.393061, 0.401792,
		42.245811, 33.602589, 33.354061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838783, 34.101688, 33.084145>,  <42.824768, 33.327446, 33.072807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838783, 34.101688, 33.084145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.575813, 34.014812, 33.372761>,  <42.418034, 33.962688, 33.545933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.575813, 34.014812, 33.372761>,  <42.838783, 34.101688, 33.084145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575813, 34.014812, 33.372761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433790, 0.673888, 0.598081,
		-0.616136, 0.706191, -0.348815,
		-0.657421, -0.217187, 0.721545,
		42.378586, 33.949657, 33.589226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742798, 34.764919, 33.444248>,  <42.838783, 34.101688, 33.084145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742798, 34.764919, 33.444248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.600822, 34.495243, 33.703320>,  <42.515636, 34.333439, 33.858761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.600822, 34.495243, 33.703320>,  <42.742798, 34.764919, 33.444248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600822, 34.495243, 33.703320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487163, 0.457914, 0.743631,
		-0.797928, 0.579470, 0.165907,
		-0.354941, -0.674188, 0.647679,
		42.494339, 34.292988, 33.897625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369503, 35.100136, 33.920738>,  <42.742798, 34.764919, 33.444248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369503, 35.100136, 33.920738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.488529, 34.761139, 34.096565>,  <42.559944, 34.557743, 34.202061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.488529, 34.761139, 34.096565>,  <42.369503, 35.100136, 33.920738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488529, 34.761139, 34.096565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428421, 0.529995, 0.731820,
		-0.853176, -0.029446, 0.520791,
		0.297565, -0.847489, 0.439564,
		42.577797, 34.506893, 34.228436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228546, 35.190315, 34.680408>,  <42.369503, 35.100136, 33.920738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228546, 35.190315, 34.680408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.486645, 34.885681, 34.656246>,  <42.641502, 34.702900, 34.641750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.486645, 34.885681, 34.656246>,  <42.228546, 35.190315, 34.680408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486645, 34.885681, 34.656246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472239, 0.335448, 0.815147,
		-0.600539, -0.554497, 0.576096,
		0.645246, -0.761583, -0.060406,
		42.680218, 34.657207, 34.638123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230904, 34.899574, 35.356419>,  <42.228546, 35.190315, 34.680408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230904, 34.899574, 35.356419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.565823, 34.761490, 35.186829>,  <42.766777, 34.678638, 35.085075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.565823, 34.761490, 35.186829>,  <42.230904, 34.899574, 35.356419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565823, 34.761490, 35.186829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498012, 0.161532, 0.851993,
		-0.225631, -0.924520, 0.307170,
		0.837302, -0.345210, -0.423975,
		42.817013, 34.657928, 35.059635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540451, 34.451447, 35.890404>,  <42.230904, 34.899574, 35.356419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540451, 34.451447, 35.890404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.836952, 34.535259, 35.635330>,  <43.014854, 34.585548, 35.482285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.836952, 34.535259, 35.635330>,  <42.540451, 34.451447, 35.890404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836952, 34.535259, 35.635330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627980, 0.119010, 0.769076,
		0.237037, -0.970532, -0.043366,
		0.741252, 0.209533, -0.637684,
		43.059326, 34.598118, 35.444023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049423, 33.983715, 36.016476>,  <42.540451, 34.451447, 35.890404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049423, 33.983715, 36.016476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.237091, 34.292561, 35.845024>,  <43.349693, 34.477867, 35.742153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.237091, 34.292561, 35.845024>,  <43.049423, 33.983715, 36.016476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.237091, 34.292561, 35.845024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670449, 0.004483, 0.741942,
		0.574785, -0.635468, -0.515560,
		0.469169, 0.772114, -0.428626,
		43.377842, 34.524197, 35.716434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744328, 33.885509, 36.129597>,  <43.049423, 33.983715, 36.016476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744328, 33.885509, 36.129597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.716736, 34.277664, 36.055752>,  <43.700180, 34.512959, 36.011444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.716736, 34.277664, 36.055752>,  <43.744328, 33.885509, 36.129597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716736, 34.277664, 36.055752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614577, 0.187531, 0.766242,
		0.785835, -0.060607, -0.615459,
		-0.068978, 0.980387, -0.184616,
		43.696041, 34.571781, 36.000366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361607, 34.077778, 36.340328>,  <43.744328, 33.885509, 36.129597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361607, 34.077778, 36.340328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.145779, 34.414501, 36.334328>,  <44.016281, 34.616535, 36.330727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.145779, 34.414501, 36.334328>,  <44.361607, 34.077778, 36.340328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145779, 34.414501, 36.334328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411883, 0.279459, 0.867326,
		0.734317, 0.461799, -0.497514,
		-0.539566, 0.841810, -0.015004,
		43.983910, 34.667046, 36.329826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.980618, 33.860516, 35.825336>,  <44.361607, 34.077778, 36.340328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.980618, 33.860516, 35.825336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.335068, 33.955685, 35.666252>,  <45.547737, 34.012787, 35.570801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.335068, 33.955685, 35.666252>,  <44.980618, 33.860516, 35.825336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.335068, 33.955685, 35.666252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413488, 0.018297, -0.910326,
		-0.209313, 0.971111, 0.114593,
		0.886124, 0.237925, -0.397713,
		45.600906, 34.027061, 35.546940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.909687, 34.408619, 35.368374>,  <44.980618, 33.860516, 35.825336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.909687, 34.408619, 35.368374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.212242, 34.163715, 35.276268>,  <45.393776, 34.016773, 35.221004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.212242, 34.163715, 35.276268>,  <44.909687, 34.408619, 35.368374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212242, 34.163715, 35.276268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478233, -0.277432, -0.833261,
		0.446287, 0.740388, -0.502647,
		0.756387, -0.612256, -0.230264,
		45.439159, 33.980038, 35.207188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.925819, 34.566036, 34.573025>,  <44.909687, 34.408619, 35.368374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.925819, 34.566036, 34.573025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.093712, 34.223827, 34.694294>,  <45.194447, 34.018501, 34.767056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.093712, 34.223827, 34.694294>,  <44.925819, 34.566036, 34.573025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.093712, 34.223827, 34.694294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540104, -0.503864, -0.674098,
		0.729460, 0.119198, -0.673558,
		0.419733, -0.855519, 0.303169,
		45.219631, 33.967171, 34.785244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.135818, 34.242123, 33.883778>,  <44.925819, 34.566036, 34.573025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.135818, 34.242123, 33.883778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.099056, 33.958973, 34.163910>,  <45.077000, 33.789082, 34.331989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.099056, 33.958973, 34.163910>,  <45.135818, 34.242123, 33.883778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.099056, 33.958973, 34.163910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519028, -0.566158, -0.640371,
		0.849802, -0.422346, -0.315375,
		-0.091906, -0.707877, 0.700331,
		45.071484, 33.746609, 34.374008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336510, 33.655647, 33.493080>,  <45.135818, 34.242123, 33.883778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.336510, 33.655647, 33.493080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.168362, 33.478901, 33.810078>,  <45.067474, 33.372852, 34.000275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.168362, 33.478901, 33.810078>,  <45.336510, 33.655647, 33.493080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.168362, 33.478901, 33.810078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304040, -0.754322, -0.581858,
		0.854898, -0.485543, 0.182746,
		-0.420367, -0.441867, 0.792493,
		45.042252, 33.346340, 34.047825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.560764, 32.937141, 33.474388>,  <45.336510, 33.655647, 33.493080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.560764, 32.937141, 33.474388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.222664, 32.977451, 33.684303>,  <45.019806, 33.001637, 33.810253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.222664, 32.977451, 33.684303>,  <45.560764, 32.937141, 33.474388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.222664, 32.977451, 33.684303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433560, -0.703412, -0.563238,
		0.312378, -0.703602, 0.638251,
		-0.845249, 0.100777, 0.524784,
		44.969090, 33.007683, 33.841740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.445915, 32.314964, 33.606464>,  <45.560764, 32.937141, 33.474388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.445915, 32.314964, 33.606464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.088577, 32.486000, 33.661739>,  <44.874172, 32.588623, 33.694904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.088577, 32.486000, 33.661739>,  <45.445915, 32.314964, 33.606464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088577, 32.486000, 33.661739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437408, -0.756962, -0.485471,
		-0.102978, -0.494140, 0.863262,
		-0.893347, 0.427590, 0.138191,
		44.820572, 32.614277, 33.703197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.081081, 31.754076, 33.813805>,  <45.445915, 32.314964, 33.606464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.081081, 31.754076, 33.813805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.801277, 32.016781, 33.701130>,  <44.633396, 32.174404, 33.633526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.801277, 32.016781, 33.701130>,  <45.081081, 31.754076, 33.813805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801277, 32.016781, 33.701130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465481, -0.717831, -0.517731,
		-0.542231, -0.231038, 0.807841,
		-0.699509, 0.656765, -0.281687,
		44.591423, 32.213810, 33.616623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.398647, 31.506750, 34.036533>,  <45.081081, 31.754076, 33.813805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.398647, 31.506750, 34.036533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.311165, 31.755749, 33.735958>,  <44.258675, 31.905148, 33.555611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.311165, 31.755749, 33.735958>,  <44.398647, 31.506750, 34.036533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.311165, 31.755749, 33.735958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450330, -0.747562, -0.488215,
		-0.865662, 0.231620, 0.443826,
		-0.218707, 0.622497, -0.751441,
		44.245552, 31.942497, 33.510525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914703, 31.185059, 33.747833>,  <44.398647, 31.506750, 34.036533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914703, 31.185059, 33.747833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.988537, 31.451979, 33.459213>,  <44.032837, 31.612131, 33.286041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.988537, 31.451979, 33.459213>,  <43.914703, 31.185059, 33.747833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.988537, 31.451979, 33.459213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474750, -0.582294, -0.659959,
		-0.860547, 0.464375, 0.209319,
		0.184583, 0.667300, -0.721553,
		44.043911, 31.652168, 33.242748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279617, 31.368658, 33.384056>,  <43.914703, 31.185059, 33.747833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279617, 31.368658, 33.384056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.574474, 31.458481, 33.129120>,  <43.751389, 31.512375, 32.976158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.574474, 31.458481, 33.129120>,  <43.279617, 31.368658, 33.384056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574474, 31.458481, 33.129120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388778, -0.630497, -0.671807,
		-0.552699, 0.742999, -0.377461,
		0.737140, 0.224559, -0.637337,
		43.795616, 31.525848, 32.937920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957829, 31.273785, 32.814960>,  <43.279617, 31.368658, 33.384056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957829, 31.273785, 32.814960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.340397, 31.279778, 32.698318>,  <43.569939, 31.283373, 32.628334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.340397, 31.279778, 32.698318>,  <42.957829, 31.273785, 32.814960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340397, 31.279778, 32.698318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180809, -0.753793, -0.631747,
		-0.229277, 0.656942, -0.718234,
		0.956420, 0.014982, -0.291609,
		43.627323, 31.284271, 32.610836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790298, 31.261774, 32.081264>,  <42.957829, 31.273785, 32.814960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790298, 31.261774, 32.081264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.155144, 31.130877, 32.180031>,  <43.374050, 31.052338, 32.239288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.155144, 31.130877, 32.180031>,  <42.790298, 31.261774, 32.081264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155144, 31.130877, 32.180031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115083, -0.782486, -0.611940,
		0.393458, 0.529742, -0.751375,
		0.912111, -0.327243, 0.246912,
		43.428776, 31.032703, 32.254105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109421, 31.260218, 31.543621>,  <42.790298, 31.261774, 32.081264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109421, 31.260218, 31.543621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.351723, 31.013884, 31.745138>,  <43.497105, 30.866083, 31.866049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.351723, 31.013884, 31.745138>,  <43.109421, 31.260218, 31.543621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351723, 31.013884, 31.745138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074869, -0.586253, -0.806661,
		0.792120, 0.526359, -0.309020,
		0.605757, -0.615836, 0.503791,
		43.533451, 30.829132, 31.896275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.906845, 31.139763, 31.146830>,  <43.109421, 31.260218, 31.543621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.906845, 31.139763, 31.146830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.786266, 30.840763, 31.383598>,  <43.713921, 30.661364, 31.525660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.786266, 30.840763, 31.383598>,  <43.906845, 31.139763, 31.146830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.786266, 30.840763, 31.383598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111591, -0.644193, -0.756679,
		0.946931, -0.162042, 0.277602,
		-0.301443, -0.747501, 0.591924,
		43.695835, 30.616512, 31.561176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202362, 30.483328, 30.920151>,  <43.906845, 31.139763, 31.146830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202362, 30.483328, 30.920151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.942009, 30.311222, 31.170343>,  <43.785797, 30.207958, 31.320459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.942009, 30.311222, 31.170343>,  <44.202362, 30.483328, 30.920151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942009, 30.311222, 31.170343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175965, -0.715950, -0.675612,
		0.738505, -0.549806, 0.390287,
		-0.650881, -0.430266, 0.625479,
		43.746746, 30.182142, 31.357986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278080, 29.678394, 30.864897>,  <44.202362, 30.483328, 30.920151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278080, 29.678394, 30.864897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.915344, 29.804665, 30.976608>,  <43.697704, 29.880426, 31.043636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.915344, 29.804665, 30.976608>,  <44.278080, 29.678394, 30.864897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915344, 29.804665, 30.976608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416998, -0.575545, -0.703463,
		-0.061327, -0.754385, 0.653561,
		-0.906836, 0.315675, 0.279281,
		43.643295, 29.899366, 31.060392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988022, 29.106518, 30.782608>,  <44.278080, 29.678394, 30.864897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988022, 29.106518, 30.782608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.698860, 29.380552, 30.818527>,  <43.525364, 29.544973, 30.840078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.698860, 29.380552, 30.818527>,  <43.988022, 29.106518, 30.782608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698860, 29.380552, 30.818527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623394, -0.590647, -0.512363,
		-0.297973, -0.426371, 0.854061,
		-0.722905, 0.685087, 0.089800,
		43.481987, 29.586079, 30.845467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374157, 28.679577, 30.829704>,  <43.988022, 29.106518, 30.782608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374157, 28.679577, 30.829704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.277710, 29.046600, 30.703249>,  <43.219841, 29.266815, 30.627377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.277710, 29.046600, 30.703249>,  <43.374157, 28.679577, 30.829704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277710, 29.046600, 30.703249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672845, -0.392802, -0.626886,
		-0.699385, 0.061556, 0.712090,
		-0.241122, 0.917561, -0.316137,
		43.205372, 29.321869, 30.608408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741108, 28.604595, 30.623989>,  <43.374157, 28.679577, 30.829704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741108, 28.604595, 30.623989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.843964, 28.945875, 30.442471>,  <42.905678, 29.150642, 30.333559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.843964, 28.945875, 30.442471>,  <42.741108, 28.604595, 30.623989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843964, 28.945875, 30.442471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617649, -0.216051, -0.756195,
		-0.743228, 0.474734, 0.471422,
		0.257140, 0.853199, -0.453795,
		42.921104, 29.201836, 30.306332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184891, 28.922283, 30.392439>,  <42.741108, 28.604595, 30.623989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184891, 28.922283, 30.392439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.457970, 29.089212, 30.152515>,  <42.621815, 29.189369, 30.008562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.457970, 29.089212, 30.152515>,  <42.184891, 28.922283, 30.392439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457970, 29.089212, 30.152515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597576, -0.153534, -0.786976,
		-0.420514, 0.895695, 0.144565,
		0.682694, 0.417323, -0.599809,
		42.662777, 29.214409, 29.972572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.972431, 37.911629, 44.321331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770405, 37.638409, 44.110298>,  <38.649189, 37.474476, 43.983677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770405, 37.638409, 44.110298>,  <38.972431, 37.911629, 44.321331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770405, 37.638409, 44.110298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688555, 0.049676, -0.723481,
		0.520382, -0.728680, 0.445227,
		-0.505069, -0.683050, -0.527587,
		38.618885, 37.433495, 43.952023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503880, 37.583542, 44.070904>,  <38.972431, 37.911629, 44.321331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503880, 37.583542, 44.070904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188202, 37.457703, 43.859924>,  <38.998795, 37.382198, 43.733337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188202, 37.457703, 43.859924>,  <39.503880, 37.583542, 44.070904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188202, 37.457703, 43.859924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524246, 0.102286, -0.845402,
		0.319916, -0.943697, 0.084206,
		-0.789190, -0.314602, -0.527452,
		38.951447, 37.363323, 43.701687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683487, 36.952679, 43.588799>,  <39.503880, 37.583542, 44.070904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683487, 36.952679, 43.588799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360626, 37.117062, 43.419273>,  <39.166908, 37.215691, 43.317558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360626, 37.117062, 43.419273>,  <39.683487, 36.952679, 43.588799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360626, 37.117062, 43.419273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453758, -0.027354, -0.890705,
		-0.377639, -0.911242, -0.164399,
		-0.807151, 0.410962, -0.423814,
		39.118481, 37.240349, 43.292130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495232, 36.481903, 43.121471>,  <39.683487, 36.952679, 43.588799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495232, 36.481903, 43.121471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305496, 36.808807, 42.990578>,  <39.191654, 37.004951, 42.912041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305496, 36.808807, 42.990578>,  <39.495232, 36.481903, 43.121471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305496, 36.808807, 42.990578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381695, -0.144035, -0.912997,
		-0.793294, -0.557971, -0.243625,
		-0.474335, 0.817265, -0.327237,
		39.163197, 37.053986, 42.892406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279140, 36.331051, 42.460075>,  <39.495232, 36.481903, 43.121471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279140, 36.331051, 42.460075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294292, 36.730408, 42.476952>,  <39.303383, 36.970020, 42.487076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294292, 36.730408, 42.476952>,  <39.279140, 36.331051, 42.460075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294292, 36.730408, 42.476952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436141, 0.021471, -0.899623,
		-0.899081, 0.052477, -0.434626,
		0.037878, 0.998391, 0.042191,
		39.305656, 37.029926, 42.489609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124222, 36.453423, 41.841423>,  <39.279140, 36.331051, 42.460075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124222, 36.453423, 41.841423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277721, 36.802071, 41.963417>,  <39.369823, 37.011257, 42.036613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277721, 36.802071, 41.963417>,  <39.124222, 36.453423, 41.841423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277721, 36.802071, 41.963417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360425, 0.162703, -0.918489,
		-0.850192, 0.462399, -0.251715,
		0.383753, 0.871616, 0.304989,
		39.392849, 37.063557, 42.054913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933392, 36.911297, 41.390301>,  <39.124222, 36.453423, 41.841423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933392, 36.911297, 41.390301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239483, 37.116901, 41.545334>,  <39.423138, 37.240265, 41.638355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239483, 37.116901, 41.545334>,  <38.933392, 36.911297, 41.390301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239483, 37.116901, 41.545334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302156, 0.244851, -0.921276,
		-0.568448, 0.822094, 0.032054,
		0.765224, 0.514012, 0.387586,
		39.469051, 37.271107, 41.661610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835747, 37.539005, 41.124699>,  <38.933392, 36.911297, 41.390301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835747, 37.539005, 41.124699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218601, 37.521698, 41.239254>,  <39.448315, 37.511314, 41.307987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218601, 37.521698, 41.239254>,  <38.835747, 37.539005, 41.124699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218601, 37.521698, 41.239254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279626, 0.395810, -0.874725,
		-0.075508, 0.917313, 0.390943,
		0.957135, -0.043269, 0.286391,
		39.505741, 37.508717, 41.325172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174347, 38.208656, 41.003757>,  <38.835747, 37.539005, 41.124699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174347, 38.208656, 41.003757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491589, 37.965874, 41.024124>,  <39.681934, 37.820206, 41.036343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491589, 37.965874, 41.024124>,  <39.174347, 38.208656, 41.003757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491589, 37.965874, 41.024124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333190, 0.362354, -0.870450,
		0.509877, 0.707320, 0.489616,
		0.793101, -0.606958, 0.050917,
		39.729519, 37.783787, 41.039398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756779, 38.575737, 40.666149>,  <39.174347, 38.208656, 41.003757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756779, 38.575737, 40.666149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865120, 38.192608, 40.704559>,  <39.930122, 37.962730, 40.727608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865120, 38.192608, 40.704559>,  <39.756779, 38.575737, 40.666149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865120, 38.192608, 40.704559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415506, 0.026341, -0.909209,
		0.868329, 0.286158, 0.405114,
		0.270848, -0.957820, 0.096028,
		39.946373, 37.905262, 40.733368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506378, 38.574158, 40.406780>,  <39.756779, 38.575737, 40.666149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506378, 38.574158, 40.406780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310661, 38.226749, 40.375095>,  <40.193233, 38.018307, 40.356083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310661, 38.226749, 40.375095>,  <40.506378, 38.574158, 40.406780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310661, 38.226749, 40.375095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355770, -0.115849, -0.927366,
		0.796257, -0.481930, 0.365676,
		-0.489288, -0.868518, -0.079211,
		40.163876, 37.966194, 40.351334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817982, 38.374496, 39.773785>,  <40.506378, 38.574158, 40.406780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817982, 38.374496, 39.773785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503136, 38.132641, 39.822552>,  <40.314228, 37.987526, 39.851810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503136, 38.132641, 39.822552>,  <40.817982, 38.374496, 39.773785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503136, 38.132641, 39.822552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081661, -0.093769, -0.992239,
		0.611381, -0.790959, 0.024431,
		-0.787112, -0.604641, 0.121918,
		40.267002, 37.951248, 39.859127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867588, 37.598137, 39.414379>,  <40.817982, 38.374496, 39.773785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867588, 37.598137, 39.414379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476265, 37.661163, 39.468163>,  <40.241470, 37.698978, 39.500431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476265, 37.661163, 39.468163>,  <40.867588, 37.598137, 39.414379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476265, 37.661163, 39.468163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168947, -0.231410, -0.958074,
		-0.119844, -0.960012, 0.253011,
		-0.978312, 0.157565, 0.134458,
		40.182770, 37.708431, 39.508499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584618, 36.977776, 39.241405>,  <40.867588, 37.598137, 39.414379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584618, 36.977776, 39.241405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329617, 37.276299, 39.164856>,  <40.176617, 37.455410, 39.118927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329617, 37.276299, 39.164856>,  <40.584618, 36.977776, 39.241405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329617, 37.276299, 39.164856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227924, -0.419960, -0.878455,
		-0.735964, -0.516396, 0.437825,
		-0.637501, 0.746303, -0.191377,
		40.138367, 37.500191, 39.107445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979622, 36.498505, 39.671696>,  <40.584618, 36.977776, 39.241405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979622, 36.498505, 39.671696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371975, 36.544342, 39.608780>,  <41.607388, 36.571842, 39.571030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371975, 36.544342, 39.608780>,  <40.979622, 36.498505, 39.671696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371975, 36.544342, 39.608780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122072, -0.991765, 0.038727,
		-0.151561, -0.057188, -0.986792,
		0.980881, 0.114590, -0.157294,
		41.666241, 36.578720, 39.561592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115471, 36.040062, 39.234573>,  <40.979622, 36.498505, 39.671696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115471, 36.040062, 39.234573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489883, 36.122894, 39.348385>,  <41.714531, 36.172596, 39.416672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489883, 36.122894, 39.348385>,  <41.115471, 36.040062, 39.234573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489883, 36.122894, 39.348385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189058, -0.977856, 0.089745,
		0.296813, -0.030212, -0.954458,
		0.936034, 0.207085, 0.284529,
		41.770695, 36.185020, 39.433743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492481, 35.596088, 38.829094>,  <41.115471, 36.040062, 39.234573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492481, 35.596088, 38.829094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727497, 35.659615, 39.146477>,  <41.868507, 35.697731, 39.336906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727497, 35.659615, 39.146477>,  <41.492481, 35.596088, 38.829094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727497, 35.659615, 39.146477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040546, -0.973543, 0.224879,
		0.808177, -0.164297, -0.565559,
		0.587543, 0.158811, 0.793456,
		41.903759, 35.707256, 39.384514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864288, 34.951424, 38.924839>,  <41.492481, 35.596088, 38.829094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864288, 34.951424, 38.924839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930050, 35.123604, 39.279846>,  <41.969505, 35.226913, 39.492851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930050, 35.123604, 39.279846>,  <41.864288, 34.951424, 38.924839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930050, 35.123604, 39.279846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055374, -0.894313, 0.444003,
		0.984837, -0.122142, -0.123193,
		0.164405, 0.430449, 0.887516,
		41.979370, 35.252739, 39.546101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441376, 34.483875, 39.365978>,  <41.864288, 34.951424, 38.924839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441376, 34.483875, 39.365978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249641, 34.709511, 39.634914>,  <42.134602, 34.844891, 39.796276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249641, 34.709511, 39.634914>,  <42.441376, 34.483875, 39.365978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249641, 34.709511, 39.634914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265736, -0.823408, 0.501383,
		0.836436, 0.061663, 0.544584,
		-0.479332, 0.564090, 0.672342,
		42.105843, 34.878738, 39.836617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427399, 34.000511, 39.861687>,  <42.441376, 34.483875, 39.365978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427399, 34.000511, 39.861687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173172, 34.276466, 40.000317>,  <42.020638, 34.442039, 40.083496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173172, 34.276466, 40.000317>,  <42.427399, 34.000511, 39.861687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173172, 34.276466, 40.000317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336024, -0.651339, 0.680327,
		0.695086, 0.315936, 0.645787,
		-0.635566, 0.689886, 0.346575,
		41.982502, 34.483433, 40.104290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434063, 34.051277, 40.659962>,  <42.427399, 34.000511, 39.861687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434063, 34.051277, 40.659962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072910, 34.165070, 40.531044>,  <41.856220, 34.233345, 40.453693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072910, 34.165070, 40.531044>,  <42.434063, 34.051277, 40.659962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072910, 34.165070, 40.531044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426804, -0.503501, 0.751215,
		0.051433, 0.815815, 0.576021,
		-0.902880, 0.284485, -0.322297,
		41.802048, 34.250416, 40.434357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161259, 34.443115, 41.189083>,  <42.434063, 34.051277, 40.659962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161259, 34.443115, 41.189083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839764, 34.349499, 40.970276>,  <41.646866, 34.293327, 40.838993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839764, 34.349499, 40.970276>,  <42.161259, 34.443115, 41.189083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839764, 34.349499, 40.970276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485275, -0.274094, 0.830290,
		-0.344260, 0.932789, 0.106723,
		-0.803737, -0.234046, -0.547018,
		41.598644, 34.279285, 40.806171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617294, 34.686356, 41.532494>,  <42.161259, 34.443115, 41.189083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617294, 34.686356, 41.532494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474026, 34.396725, 41.296722>,  <41.388065, 34.222946, 41.155262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474026, 34.396725, 41.296722>,  <41.617294, 34.686356, 41.532494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474026, 34.396725, 41.296722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429329, -0.432874, 0.792651,
		-0.829091, 0.536959, -0.155828,
		-0.358167, -0.724082, -0.589425,
		41.366577, 34.179501, 41.119896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835789, 34.527515, 41.697285>,  <41.617294, 34.686356, 41.532494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835789, 34.527515, 41.697285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964443, 34.208069, 41.493809>,  <41.041637, 34.016403, 41.371723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964443, 34.208069, 41.493809>,  <40.835789, 34.527515, 41.697285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964443, 34.208069, 41.493809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522629, -0.597722, 0.607938,
		-0.789563, 0.070323, -0.609627,
		0.321635, -0.798614, -0.508692,
		41.060932, 33.968483, 41.341202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257641, 34.105526, 41.522793>,  <40.835789, 34.527515, 41.697285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257641, 34.105526, 41.522793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575966, 33.864628, 41.497547>,  <40.766960, 33.720089, 41.482399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575966, 33.864628, 41.497547>,  <40.257641, 34.105526, 41.522793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575966, 33.864628, 41.497547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432825, -0.638607, 0.636273,
		-0.423497, -0.479037, -0.768878,
		0.795810, -0.602249, -0.063109,
		40.814709, 33.683952, 41.478615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952999, 33.378597, 41.450611>,  <40.257641, 34.105526, 41.522793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952999, 33.378597, 41.450611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326450, 33.370506, 41.593681>,  <40.550522, 33.365650, 41.679523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326450, 33.370506, 41.593681>,  <39.952999, 33.378597, 41.450611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326450, 33.370506, 41.593681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284749, -0.647746, 0.706642,
		0.217386, -0.761588, -0.610514,
		0.933628, -0.020229, 0.357672,
		40.606537, 33.364437, 41.700981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109077, 32.736790, 41.689850>,  <39.952999, 33.378597, 41.450611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109077, 32.736790, 41.689850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371914, 32.957912, 41.894844>,  <40.529613, 33.090584, 42.017841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371914, 32.957912, 41.894844>,  <40.109077, 32.736790, 41.689850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371914, 32.957912, 41.894844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327197, -0.403318, 0.854563,
		0.679101, -0.729207, -0.084140,
		0.657088, 0.552804, 0.512488,
		40.569038, 33.123753, 42.048592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413265, 32.276905, 42.105385>,  <40.109077, 32.736790, 41.689850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413265, 32.276905, 42.105385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498390, 32.628750, 42.275558>,  <40.549465, 32.839855, 42.377663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498390, 32.628750, 42.275558>,  <40.413265, 32.276905, 42.105385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498390, 32.628750, 42.275558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318161, -0.349292, 0.881345,
		0.923841, -0.322920, 0.205523,
		0.212816, 0.879612, 0.425431,
		40.562237, 32.892635, 42.403187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326992, 31.572666, 42.221684>,  <40.413265, 32.276905, 42.105385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326992, 31.572666, 42.221684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013077, 31.381805, 42.063477>,  <39.824726, 31.267290, 41.968552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013077, 31.381805, 42.063477>,  <40.326992, 31.572666, 42.221684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013077, 31.381805, 42.063477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227209, 0.372241, -0.899896,
		0.576614, -0.796093, -0.183718,
		-0.784788, -0.477150, -0.395519,
		39.777641, 31.238661, 41.944820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578407, 31.219685, 41.577305>,  <40.326992, 31.572666, 42.221684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578407, 31.219685, 41.577305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191448, 31.313793, 41.539814>,  <39.959270, 31.370258, 41.517319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191448, 31.313793, 41.539814>,  <40.578407, 31.219685, 41.577305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191448, 31.313793, 41.539814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168628, 0.322291, -0.931501,
		-0.188948, -0.916939, -0.351457,
		-0.967400, 0.235271, -0.093725,
		39.901230, 31.384375, 41.511696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440105, 30.966661, 40.896652>,  <40.578407, 31.219685, 41.577305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440105, 30.966661, 40.896652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129566, 31.210617, 40.960300>,  <39.943241, 31.356991, 40.998489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129566, 31.210617, 40.960300>,  <40.440105, 30.966661, 40.896652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129566, 31.210617, 40.960300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027539, 0.219387, -0.975249,
		-0.629703, -0.761515, -0.153525,
		-0.776348, 0.609889, 0.159120,
		39.896664, 31.393583, 41.008038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103275, 30.862360, 40.319130>,  <40.440105, 30.966661, 40.896652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103275, 30.862360, 40.319130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919456, 31.184580, 40.468750>,  <39.809166, 31.377911, 40.558521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919456, 31.184580, 40.468750>,  <40.103275, 30.862360, 40.319130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919456, 31.184580, 40.468750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309860, 0.249275, -0.917523,
		-0.832349, -0.537545, 0.135054,
		-0.459545, 0.805548, 0.374048,
		39.781593, 31.426245, 40.580963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483879, 30.894415, 40.024170>,  <40.103275, 30.862360, 40.319130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483879, 30.894415, 40.024170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519989, 31.274986, 40.141903>,  <39.541653, 31.503330, 40.212543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519989, 31.274986, 40.141903>,  <39.483879, 30.894415, 40.024170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519989, 31.274986, 40.141903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324278, 0.307514, -0.894583,
		-0.941645, -0.014688, 0.336288,
		0.090273, 0.951430, 0.294332,
		39.547070, 31.560415, 40.230202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879742, 31.250418, 39.764297>,  <39.483879, 30.894415, 40.024170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879742, 31.250418, 39.764297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164589, 31.527336, 39.810978>,  <39.335495, 31.693487, 39.838985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164589, 31.527336, 39.810978>,  <38.879742, 31.250418, 39.764297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164589, 31.527336, 39.810978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165563, 0.327133, -0.930362,
		-0.682262, 0.643203, 0.347575,
		0.712115, 0.692296, 0.116700,
		39.378223, 31.735025, 39.845989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563705, 31.847227, 39.440590>,  <38.879742, 31.250418, 39.764297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563705, 31.847227, 39.440590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951900, 31.943680, 39.439827>,  <39.184818, 32.001553, 39.439369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951900, 31.943680, 39.439827>,  <38.563705, 31.847227, 39.440590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951900, 31.943680, 39.439827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123056, 0.488432, -0.863882,
		-0.207380, 0.838623, 0.503691,
		0.970490, 0.241134, -0.001907,
		39.243046, 32.016022, 39.439255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656990, 32.494141, 39.057461>,  <38.563705, 31.847227, 39.440590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656990, 32.494141, 39.057461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015133, 32.316628, 39.072372>,  <39.230019, 32.210121, 39.081318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015133, 32.316628, 39.072372>,  <38.656990, 32.494141, 39.057461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015133, 32.316628, 39.072372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178609, 0.281148, -0.942897,
		0.407957, 0.850891, 0.330992,
		0.895360, -0.443779, 0.037280,
		39.283741, 32.183495, 39.083557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010166, 33.092335, 38.894100>,  <38.656990, 32.494141, 39.057461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010166, 33.092335, 38.894100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211418, 32.753452, 38.825871>,  <39.332169, 32.550121, 38.784935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211418, 32.753452, 38.825871>,  <39.010166, 33.092335, 38.894100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211418, 32.753452, 38.825871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267257, 0.340232, -0.901563,
		0.821845, 0.408021, 0.397605,
		0.503134, -0.847208, -0.170572,
		39.362358, 32.499290, 38.774700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708553, 33.295853, 38.607643>,  <39.010166, 33.092335, 38.894100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708553, 33.295853, 38.607643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650452, 32.912960, 38.507561>,  <39.615589, 32.683224, 38.447510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650452, 32.912960, 38.507561>,  <39.708553, 33.295853, 38.607643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650452, 32.912960, 38.507561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185990, 0.221962, -0.957152,
		0.971755, -0.185568, 0.145794,
		-0.145256, -0.957234, -0.250207,
		39.606876, 32.625790, 38.432499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321285, 33.089939, 38.282539>,  <39.708553, 33.295853, 38.607643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321285, 33.089939, 38.282539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054836, 32.827202, 38.141209>,  <39.894966, 32.669559, 38.056408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054836, 32.827202, 38.141209>,  <40.321285, 33.089939, 38.282539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054836, 32.827202, 38.141209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267148, 0.232178, -0.935268,
		0.696356, -0.717395, 0.020815,
		-0.666123, -0.656839, -0.353329,
		39.855000, 32.630150, 38.035210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625015, 32.634254, 37.742226>,  <40.321285, 33.089939, 38.282539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625015, 32.634254, 37.742226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231552, 32.632401, 37.670223>,  <39.995476, 32.631290, 37.627022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231552, 32.632401, 37.670223>,  <40.625015, 32.634254, 37.742226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231552, 32.632401, 37.670223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179190, 0.073413, -0.981072,
		0.017754, -0.997291, -0.071383,
		-0.983654, -0.004627, -0.180008,
		39.936455, 32.631012, 37.616222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.784210, 29.634851, 45.306499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.396999, 29.729633, 45.273567>,  <39.164673, 29.786503, 45.253807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.396999, 29.729633, 45.273567>,  <39.784210, 29.634851, 45.306499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396999, 29.729633, 45.273567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108617, 0.100067, -0.989034,
		-0.226119, -0.966353, -0.122605,
		-0.968025, 0.236956, -0.082335,
		39.106590, 29.800720, 45.248867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546352, 29.278172, 44.716511>,  <39.784210, 29.634851, 45.306499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546352, 29.278172, 44.716511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.265961, 29.557104, 44.776325>,  <39.097725, 29.724464, 44.812214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.265961, 29.557104, 44.776325>,  <39.546352, 29.278172, 44.716511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265961, 29.557104, 44.776325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111342, 0.314102, -0.942838,
		-0.704440, -0.644257, -0.297820,
		-0.700976, 0.697332, 0.149533,
		39.055668, 29.766304, 44.821186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112823, 29.214321, 44.078972>,  <39.546352, 29.278172, 44.716511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112823, 29.214321, 44.078972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.074512, 29.574856, 44.247932>,  <39.051525, 29.791176, 44.349308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.074512, 29.574856, 44.247932>,  <39.112823, 29.214321, 44.078972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074512, 29.574856, 44.247932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019069, 0.422610, -0.906111,
		-0.995220, -0.094843, -0.023290,
		-0.095782, 0.901335, 0.422398,
		39.045776, 29.845257, 44.374653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610229, 29.539970, 43.668297>,  <39.112823, 29.214321, 44.078972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610229, 29.539970, 43.668297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.817757, 29.838427, 43.835197>,  <38.942272, 30.017500, 43.935337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.817757, 29.838427, 43.835197>,  <38.610229, 29.539970, 43.668297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817757, 29.838427, 43.835197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084522, 0.440920, -0.893558,
		-0.850695, 0.498863, 0.165693,
		0.518821, 0.746140, 0.417254,
		38.973404, 30.062269, 43.960373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321003, 30.115299, 43.314575>,  <38.610229, 29.539970, 43.668297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321003, 30.115299, 43.314575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.662022, 30.241289, 43.481403>,  <38.866634, 30.316883, 43.581501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.662022, 30.241289, 43.481403>,  <38.321003, 30.115299, 43.314575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662022, 30.241289, 43.481403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163242, 0.597597, -0.785003,
		-0.496498, 0.737338, 0.458064,
		0.852550, 0.314977, 0.417070,
		38.917786, 30.335783, 43.606525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301266, 30.838963, 43.325191>,  <38.321003, 30.115299, 43.314575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301266, 30.838963, 43.325191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.688553, 30.740770, 43.344357>,  <38.920925, 30.681854, 43.355854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.688553, 30.740770, 43.344357>,  <38.301266, 30.838963, 43.325191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688553, 30.740770, 43.344357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195939, 0.625397, -0.755306,
		0.155449, 0.740687, 0.653619,
		0.968217, -0.245481, 0.047913,
		38.979019, 30.667126, 43.358730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594097, 31.412441, 43.156139>,  <38.301266, 30.838963, 43.325191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594097, 31.412441, 43.156139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.873253, 31.137672, 43.075066>,  <39.040749, 30.972811, 43.026421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.873253, 31.137672, 43.075066>,  <38.594097, 31.412441, 43.156139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873253, 31.137672, 43.075066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389129, 0.601267, -0.697894,
		0.601267, 0.408185, 0.686923,
		0.697894, -0.686923, -0.202685,
		39.082623, 30.931595, 43.014259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097336, 31.793440, 42.875256>,  <38.594097, 31.412441, 43.156139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097336, 31.793440, 42.875256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.219025, 31.432133, 42.754227>,  <39.292038, 31.215347, 42.681610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.219025, 31.432133, 42.754227>,  <39.097336, 31.793440, 42.875256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219025, 31.432133, 42.754227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475774, 0.419252, -0.773219,
		0.825281, 0.091273, 0.557298,
		0.304222, -0.903270, -0.302576,
		39.310291, 31.161152, 42.663452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792175, 31.861612, 42.641411>,  <39.097336, 31.793440, 42.875256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792175, 31.861612, 42.641411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.680264, 31.528187, 42.450878>,  <39.613117, 31.328131, 42.336559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.680264, 31.528187, 42.450878>,  <39.792175, 31.861612, 42.641411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680264, 31.528187, 42.450878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438884, 0.330227, -0.835662,
		0.853876, -0.442857, 0.273448,
		-0.279779, -0.833564, -0.476336,
		39.596329, 31.278118, 42.307976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452682, 32.012016, 42.844654>,  <39.792175, 31.861612, 42.641411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452682, 32.012016, 42.844654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.434605, 32.411228, 42.862072>,  <40.423759, 32.650757, 42.872520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.434605, 32.411228, 42.862072>,  <40.452682, 32.012016, 42.844654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434605, 32.411228, 42.862072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482416, -0.059970, 0.873887,
		0.874776, 0.018487, 0.484176,
		-0.045191, 0.998029, 0.043542,
		40.421047, 32.710636, 42.875134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727253, 32.248394, 43.432110>,  <40.452682, 32.012016, 42.844654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727253, 32.248394, 43.432110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.497566, 32.562675, 43.340069>,  <40.359753, 32.751244, 43.284843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.497566, 32.562675, 43.340069>,  <40.727253, 32.248394, 43.432110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497566, 32.562675, 43.340069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334453, 0.031419, 0.941889,
		0.747273, 0.617807, 0.244739,
		-0.574215, 0.785702, -0.230106,
		40.325302, 32.798386, 43.271038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920410, 32.802921, 43.937199>,  <40.727253, 32.248394, 43.432110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920410, 32.802921, 43.937199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.550499, 32.890888, 43.812992>,  <40.328552, 32.943668, 43.738468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.550499, 32.890888, 43.812992>,  <40.920410, 32.802921, 43.937199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550499, 32.890888, 43.812992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308098, 0.046097, 0.950237,
		0.223284, 0.974430, 0.025125,
		-0.924781, 0.219914, -0.310512,
		40.273064, 32.956863, 43.719837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742382, 33.360733, 44.368999>,  <40.920410, 32.802921, 43.937199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742382, 33.360733, 44.368999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.394638, 33.241333, 44.211464>,  <40.185989, 33.169693, 44.116943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.394638, 33.241333, 44.211464>,  <40.742382, 33.360733, 44.368999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394638, 33.241333, 44.211464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434024, 0.080147, 0.897329,
		-0.236290, 0.951038, -0.199233,
		-0.869362, -0.298502, -0.393835,
		40.133831, 33.151783, 44.093315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256752, 33.828461, 44.633759>,  <40.742382, 33.360733, 44.368999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256752, 33.828461, 44.633759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.005173, 33.536213, 44.527462>,  <39.854225, 33.360863, 44.463684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.005173, 33.536213, 44.527462>,  <40.256752, 33.828461, 44.633759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005173, 33.536213, 44.527462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530819, 0.153830, 0.833407,
		-0.568026, 0.665229, -0.484579,
		-0.628949, -0.730621, -0.265737,
		39.816486, 33.317028, 44.447742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569012, 34.007465, 44.769108>,  <40.256752, 33.828461, 44.633759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569012, 34.007465, 44.769108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.524277, 33.610283, 44.753498>,  <39.497437, 33.371971, 44.744133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.524277, 33.610283, 44.753498>,  <39.569012, 34.007465, 44.769108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524277, 33.610283, 44.753498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536169, 0.027229, 0.843671,
		-0.836669, 0.115281, -0.535440,
		-0.111839, -0.992960, -0.039028,
		39.490726, 33.312393, 44.741791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914440, 33.787643, 44.765678>,  <39.569012, 34.007465, 44.769108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914440, 33.787643, 44.765678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.115517, 33.467419, 44.896156>,  <39.236164, 33.275284, 44.974442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.115517, 33.467419, 44.896156>,  <38.914440, 33.787643, 44.765678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115517, 33.467419, 44.896156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563276, -0.017097, 0.826092,
		-0.655761, -0.599006, -0.459532,
		0.502691, -0.800562, 0.326194,
		39.266323, 33.227249, 44.994015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421188, 33.479366, 45.211006>,  <38.914440, 33.787643, 44.765678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421188, 33.479366, 45.211006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.770020, 33.310101, 45.309315>,  <38.979321, 33.208542, 45.368301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.770020, 33.310101, 45.309315>,  <38.421188, 33.479366, 45.211006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770020, 33.310101, 45.309315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354486, -0.200041, 0.913413,
		-0.337367, -0.883691, -0.324460,
		0.872080, -0.423172, 0.245769,
		39.031643, 33.183151, 45.383045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206768, 32.738079, 45.401337>,  <38.421188, 33.479366, 45.211006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206768, 32.738079, 45.401337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.558456, 32.861183, 45.546806>,  <38.769470, 32.935043, 45.634087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.558456, 32.861183, 45.546806>,  <38.206768, 32.738079, 45.401337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558456, 32.861183, 45.546806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290340, -0.259090, 0.921181,
		0.377724, -0.915510, -0.138443,
		0.879220, 0.307757, 0.363673,
		38.822224, 32.953510, 45.655907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427120, 32.250938, 45.835011>,  <38.206768, 32.738079, 45.401337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427120, 32.250938, 45.835011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651386, 32.558552, 45.957802>,  <38.785946, 32.743122, 46.031475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651386, 32.558552, 45.957802>,  <38.427120, 32.250938, 45.835011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651386, 32.558552, 45.957802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107641, -0.299893, 0.947881,
		0.821017, -0.564486, -0.085359,
		0.560664, 0.769038, 0.306979,
		38.819584, 32.789265, 46.049896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915112, 31.935375, 46.368946>,  <38.427120, 32.250938, 45.835011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915112, 31.935375, 46.368946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.891575, 32.329865, 46.430786>,  <38.877453, 32.566559, 46.467888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.891575, 32.329865, 46.430786>,  <38.915112, 31.935375, 46.368946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891575, 32.329865, 46.430786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021812, -0.156100, 0.987500,
		0.998029, 0.054733, 0.030696,
		-0.058841, 0.986223, 0.154598,
		38.873924, 32.625732, 46.477165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108875, 31.863647, 47.090515>,  <38.915112, 31.935375, 46.368946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108875, 31.863647, 47.090515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.976852, 32.235348, 47.024120>,  <38.897640, 32.458370, 46.984283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.976852, 32.235348, 47.024120>,  <39.108875, 31.863647, 47.090515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976852, 32.235348, 47.024120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219444, 0.095493, 0.970940,
		0.918100, 0.356889, 0.172401,
		-0.330055, 0.929253, -0.165989,
		38.877834, 32.514122, 46.974323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464077, 32.275501, 47.611824>,  <39.108875, 31.863647, 47.090515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464077, 32.275501, 47.611824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.139423, 32.461304, 47.470127>,  <38.944633, 32.572784, 47.385109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.139423, 32.461304, 47.470127>,  <39.464077, 32.275501, 47.611824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139423, 32.461304, 47.470127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253624, 0.266076, 0.929989,
		0.526240, 0.844653, -0.098146,
		-0.811632, 0.464505, -0.354244,
		38.895935, 32.600655, 47.363853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430664, 32.966873, 47.897823>,  <39.464077, 32.275501, 47.611824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430664, 32.966873, 47.897823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.057312, 32.871006, 47.790966>,  <38.833302, 32.813484, 47.726852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.057312, 32.871006, 47.790966>,  <39.430664, 32.966873, 47.897823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057312, 32.871006, 47.790966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286845, 0.050807, 0.956629,
		-0.215702, 0.969524, -0.116170,
		-0.933377, -0.239670, -0.267144,
		38.777298, 32.799107, 47.710823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.369406, 32.472912, 46.309010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.663822, 32.202751, 46.327229>,  <31.840473, 32.040653, 46.338161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.663822, 32.202751, 46.327229>,  <31.369406, 32.472912, 46.309010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663822, 32.202751, 46.327229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279767, 0.242233, -0.929007,
		0.616418, 0.696532, 0.367249,
		0.736043, -0.675401, 0.045550,
		31.884636, 32.000130, 46.340893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015594, 32.783409, 46.349518>,  <31.369406, 32.472912, 46.309010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015594, 32.783409, 46.349518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.095020, 32.418369, 46.206562>,  <32.142677, 32.199345, 46.120789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.095020, 32.418369, 46.206562>,  <32.015594, 32.783409, 46.349518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095020, 32.418369, 46.206562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660264, 0.394045, -0.639359,
		0.724309, -0.109019, 0.680802,
		0.198564, -0.912602, -0.357392,
		32.154591, 32.144588, 46.099346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751545, 32.774693, 46.132771>,  <32.015594, 32.783409, 46.349518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751545, 32.774693, 46.132771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.570423, 32.455963, 45.972752>,  <32.461750, 32.264725, 45.876740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.570423, 32.455963, 45.972752>,  <32.751545, 32.774693, 46.132771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570423, 32.455963, 45.972752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658763, 0.003372, -0.752343,
		0.600834, -0.604202, 0.523392,
		-0.452802, -0.796824, -0.400052,
		32.434582, 32.216915, 45.852737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228394, 32.500805, 45.658432>,  <32.751545, 32.774693, 46.132771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228394, 32.500805, 45.658432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.930935, 32.270283, 45.522869>,  <32.752460, 32.131969, 45.441532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.930935, 32.270283, 45.522869>,  <33.228394, 32.500805, 45.658432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930935, 32.270283, 45.522869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509892, -0.161008, -0.845036,
		0.432432, -0.801216, 0.413587,
		-0.743648, -0.576306, -0.338908,
		32.707840, 32.097389, 45.421196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482960, 31.843412, 45.267654>,  <33.228394, 32.500805, 45.658432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482960, 31.843412, 45.267654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.117687, 31.955151, 45.148952>,  <32.898521, 32.022194, 45.077732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.117687, 31.955151, 45.148952>,  <33.482960, 31.843412, 45.267654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117687, 31.955151, 45.148952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351351, 0.170639, -0.920562,
		-0.206515, -0.944907, -0.253972,
		-0.913183, 0.279343, -0.296755,
		32.843731, 32.038952, 45.059925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295536, 31.376719, 44.798454>,  <33.482960, 31.843412, 45.267654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295536, 31.376719, 44.798454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.081043, 31.708580, 44.736328>,  <32.952347, 31.907698, 44.699051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.081043, 31.708580, 44.736328>,  <33.295536, 31.376719, 44.798454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081043, 31.708580, 44.736328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297112, 0.013294, -0.954750,
		-0.790049, -0.558117, -0.253629,
		-0.536234, 0.829656, -0.155320,
		32.920174, 31.957478, 44.689732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104679, 31.356071, 44.123199>,  <33.295536, 31.376719, 44.798454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104679, 31.356071, 44.123199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.009258, 31.741608, 44.170704>,  <32.952007, 31.972929, 44.199207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.009258, 31.741608, 44.170704>,  <33.104679, 31.356071, 44.123199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009258, 31.741608, 44.170704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118352, 0.150230, -0.981542,
		-0.963891, -0.220092, -0.149910,
		-0.238551, 0.963841, 0.118757,
		32.937695, 32.030762, 44.206329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549191, 31.516222, 43.577572>,  <33.104679, 31.356071, 44.123199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549191, 31.516222, 43.577572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.705730, 31.863441, 43.699772>,  <32.799656, 32.071774, 43.773094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.705730, 31.863441, 43.699772>,  <32.549191, 31.516222, 43.577572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705730, 31.863441, 43.699772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002549, 0.330959, -0.943642,
		-0.920238, 0.370073, 0.127309,
		0.391350, 0.868051, 0.305504,
		32.823135, 32.123856, 43.791424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237301, 32.040012, 43.237770>,  <32.549191, 31.516222, 43.577572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237301, 32.040012, 43.237770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.554688, 32.250786, 43.359585>,  <32.745121, 32.377251, 43.432674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.554688, 32.250786, 43.359585>,  <32.237301, 32.040012, 43.237770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554688, 32.250786, 43.359585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006329, 0.493213, -0.869885,
		-0.608578, 0.692154, 0.388014,
		0.793468, 0.526938, 0.304540,
		32.792728, 32.408867, 43.450947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090717, 32.769760, 43.139099>,  <32.237301, 32.040012, 43.237770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090717, 32.769760, 43.139099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.487595, 32.719967, 43.136196>,  <32.725723, 32.690090, 43.134453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.487595, 32.719967, 43.136196>,  <32.090717, 32.769760, 43.139099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487595, 32.719967, 43.136196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064813, 0.564557, -0.822845,
		0.106529, 0.815953, 0.568219,
		0.992195, -0.124485, -0.007257,
		32.785252, 32.682621, 43.134018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276814, 33.426823, 42.903683>,  <32.090717, 32.769760, 43.139099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276814, 33.426823, 42.903683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.603184, 33.199291, 42.862316>,  <32.799007, 33.062771, 42.837498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.603184, 33.199291, 42.862316>,  <32.276814, 33.426823, 42.903683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603184, 33.199291, 42.862316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296834, 0.565655, -0.769365,
		0.496136, 0.597049, 0.630382,
		0.815928, -0.568829, -0.103418,
		32.847961, 33.028641, 42.831291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829708, 33.912071, 42.892288>,  <32.276814, 33.426823, 42.903683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829708, 33.912071, 42.892288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.957150, 33.573048, 42.722515>,  <33.033615, 33.369633, 42.620651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.957150, 33.573048, 42.722515>,  <32.829708, 33.912071, 42.892288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957150, 33.573048, 42.722515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423810, 0.527890, -0.736014,
		0.847867, 0.054614, 0.527388,
		0.318599, -0.847555, -0.424435,
		33.052731, 33.318783, 42.595184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519363, 34.116184, 42.731754>,  <32.829708, 33.912071, 42.892288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519363, 34.116184, 42.731754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.375637, 33.820984, 42.503284>,  <33.289402, 33.643864, 42.366203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.375637, 33.820984, 42.503284>,  <33.519363, 34.116184, 42.731754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375637, 33.820984, 42.503284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039562, 0.623545, -0.780786,
		0.932376, -0.257954, -0.253248,
		-0.359318, -0.738005, -0.571173,
		33.267841, 33.599583, 42.331932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999763, 34.159470, 42.192196>,  <33.519363, 34.116184, 42.731754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999763, 34.159470, 42.192196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.705353, 33.921814, 42.062420>,  <33.528706, 33.779221, 41.984554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.705353, 33.921814, 42.062420>,  <33.999763, 34.159470, 42.192196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705353, 33.921814, 42.062420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019964, 0.498111, -0.866883,
		0.676654, -0.631575, -0.378487,
		-0.736031, -0.594136, -0.324440,
		33.484543, 33.743572, 41.965088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810028, 34.038902, 42.078117>,  <33.999763, 34.159470, 42.192196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810028, 34.038902, 42.078117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.939529, 34.370941, 42.259720>,  <35.017231, 34.570164, 42.368679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.939529, 34.370941, 42.259720>,  <34.810028, 34.038902, 42.078117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939529, 34.370941, 42.259720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011636, -0.483302, 0.875376,
		0.946071, -0.278120, -0.166128,
		0.323749, 0.830102, 0.454002,
		35.036655, 34.619972, 42.395920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075924, 33.807701, 42.662537>,  <34.810028, 34.038902, 42.078117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075924, 33.807701, 42.662537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.034119, 34.191490, 42.767216>,  <35.009033, 34.421764, 42.830025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.034119, 34.191490, 42.767216>,  <35.075924, 33.807701, 42.662537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034119, 34.191490, 42.767216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026019, -0.265687, 0.963708,
		0.994183, 0.093914, 0.052733,
		-0.104516, 0.959474, 0.261698,
		35.002766, 34.479332, 42.845726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508995, 33.977112, 43.282547>,  <35.075924, 33.807701, 42.662537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508995, 33.977112, 43.282547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.221565, 34.255291, 43.282169>,  <35.049107, 34.422199, 43.281944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.221565, 34.255291, 43.282169>,  <35.508995, 33.977112, 43.282547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221565, 34.255291, 43.282169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100902, -0.102913, 0.989560,
		0.688094, 0.711165, 0.144123,
		-0.718572, 0.695452, -0.000944,
		35.005993, 34.463928, 43.281887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741123, 34.479851, 43.726593>,  <35.508995, 33.977112, 43.282547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741123, 34.479851, 43.726593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.343445, 34.509365, 43.695259>,  <35.104839, 34.527073, 43.676460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.343445, 34.509365, 43.695259>,  <35.741123, 34.479851, 43.726593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343445, 34.509365, 43.695259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080813, -0.031211, 0.996240,
		0.071064, 0.996786, 0.036992,
		-0.994193, 0.073786, -0.078335,
		35.045189, 34.531502, 43.671757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571411, 35.122124, 44.139660>,  <35.741123, 34.479851, 43.726593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571411, 35.122124, 44.139660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.254494, 34.879601, 44.112366>,  <35.064342, 34.734085, 44.095989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.254494, 34.879601, 44.112366>,  <35.571411, 35.122124, 44.139660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254494, 34.879601, 44.112366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161604, 0.100696, 0.981705,
		-0.588348, 0.788826, -0.177764,
		-0.792295, -0.606311, -0.068233,
		35.016804, 34.697708, 44.091896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182476, 35.420616, 44.620808>,  <35.571411, 35.122124, 44.139660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182476, 35.420616, 44.620808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.997929, 35.071114, 44.559254>,  <34.887199, 34.861412, 44.522324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.997929, 35.071114, 44.559254>,  <35.182476, 35.420616, 44.620808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997929, 35.071114, 44.559254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342127, 0.015188, 0.939531,
		-0.818588, 0.486120, -0.305944,
		-0.461371, -0.873760, -0.153882,
		34.859516, 34.808987, 44.513088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515244, 35.490234, 44.857422>,  <35.182476, 35.420616, 44.620808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515244, 35.490234, 44.857422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.587101, 35.096760, 44.853794>,  <34.630215, 34.860676, 44.851616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.587101, 35.096760, 44.853794>,  <34.515244, 35.490234, 44.857422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587101, 35.096760, 44.853794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171923, -0.040475, 0.984279,
		-0.968593, -0.175256, -0.176389,
		0.179640, -0.983691, -0.009074,
		34.640991, 34.801651, 44.851070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961967, 35.248898, 45.349403>,  <34.515244, 35.490234, 44.857422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961967, 35.248898, 45.349403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.222496, 34.949627, 45.298775>,  <34.378811, 34.770065, 45.268398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.222496, 34.949627, 45.298775>,  <33.961967, 35.248898, 45.349403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222496, 34.949627, 45.298775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214658, -0.341661, 0.914981,
		-0.727808, -0.568775, -0.383132,
		0.651319, -0.748173, -0.126572,
		34.417892, 34.725174, 45.260803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631737, 34.683758, 45.592918>,  <33.961967, 35.248898, 45.349403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631737, 34.683758, 45.592918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.025894, 34.618164, 45.611252>,  <34.262390, 34.578808, 45.622253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.025894, 34.618164, 45.611252>,  <33.631737, 34.683758, 45.592918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025894, 34.618164, 45.611252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100643, -0.343802, 0.933634,
		-0.137338, -0.924614, -0.355285,
		0.985398, -0.163980, 0.045838,
		34.321514, 34.568970, 45.625004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666500, 34.068584, 45.951992>,  <33.631737, 34.683758, 45.592918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666500, 34.068584, 45.951992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.040482, 34.203159, 45.997021>,  <34.264870, 34.283905, 46.024036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.040482, 34.203159, 45.997021>,  <33.666500, 34.068584, 45.951992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040482, 34.203159, 45.997021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031488, -0.394745, 0.918251,
		0.353372, -0.854977, -0.379661,
		0.934953, 0.336439, 0.112571,
		34.320969, 34.304092, 46.030792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151306, 33.551228, 46.107445>,  <33.666500, 34.068584, 45.951992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151306, 33.551228, 46.107445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.270180, 33.900677, 46.261566>,  <34.341503, 34.110348, 46.354038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.270180, 33.900677, 46.261566>,  <34.151306, 33.551228, 46.107445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270180, 33.900677, 46.261566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062004, -0.385031, 0.920818,
		0.952804, -0.297546, -0.060258,
		0.297187, 0.873623, 0.385308,
		34.359337, 34.162766, 46.377159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801655, 33.549171, 46.596146>,  <34.151306, 33.551228, 46.107445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801655, 33.549171, 46.596146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.598263, 33.871403, 46.717796>,  <34.476227, 34.064739, 46.790787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.598263, 33.871403, 46.717796>,  <34.801655, 33.549171, 46.596146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598263, 33.871403, 46.717796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099483, -0.405793, 0.908534,
		0.855306, 0.431719, 0.286480,
		-0.508483, 0.805575, 0.304129,
		34.445717, 34.113075, 46.809036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038326, 33.544872, 47.160816>,  <34.801655, 33.549171, 46.596146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038326, 33.544872, 47.160816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.737793, 33.799351, 47.230965>,  <34.557472, 33.952038, 47.273052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.737793, 33.799351, 47.230965>,  <35.038326, 33.544872, 47.160816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737793, 33.799351, 47.230965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101466, -0.373947, 0.921883,
		0.652081, 0.674844, 0.345509,
		-0.751329, 0.636199, 0.175370,
		34.512394, 33.990211, 47.283577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267200, 33.995201, 47.725868>,  <35.038326, 33.544872, 47.160816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267200, 33.995201, 47.725868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.867580, 33.981361, 47.715309>,  <34.627808, 33.973057, 47.708973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.867580, 33.981361, 47.715309>,  <35.267200, 33.995201, 47.725868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867580, 33.981361, 47.715309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013994, -0.319018, 0.947645,
		-0.041207, 0.947117, 0.318232,
		-0.999053, -0.034596, -0.026400,
		34.567863, 33.970982, 47.707390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541805, 34.620579, 48.127205>,  <35.267200, 33.995201, 47.725868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541805, 34.620579, 48.127205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869007, 34.722504, 48.333481>,  <36.065327, 34.783661, 48.457245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869007, 34.722504, 48.333481>,  <35.541805, 34.620579, 48.127205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869007, 34.722504, 48.333481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343558, 0.502611, -0.793316,
		-0.461340, 0.826106, 0.323595,
		0.818006, 0.254814, 0.515690,
		36.114410, 34.798946, 48.488190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496639, 35.305630, 47.974503>,  <35.541805, 34.620579, 48.127205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496639, 35.305630, 47.974503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.875431, 35.249920, 48.090324>,  <36.102707, 35.216496, 48.159817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.875431, 35.249920, 48.090324>,  <35.496639, 35.305630, 47.974503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875431, 35.249920, 48.090324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315354, 0.575533, -0.754529,
		-0.061562, 0.805832, 0.588936,
		0.946975, -0.139273, 0.289554,
		36.159523, 35.208138, 48.177189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762875, 35.957924, 48.000271>,  <35.496639, 35.305630, 47.974503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762875, 35.957924, 48.000271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.066235, 35.702881, 47.946194>,  <36.248253, 35.549854, 47.913746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.066235, 35.702881, 47.946194>,  <35.762875, 35.957924, 48.000271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066235, 35.702881, 47.946194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362417, 0.584932, -0.725609,
		0.541736, 0.501307, 0.674695,
		0.758404, -0.637609, -0.135196,
		36.293755, 35.511597, 47.905636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268845, 36.360523, 47.699539>,  <35.762875, 35.957924, 48.000271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268845, 36.360523, 47.699539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.397274, 35.995037, 47.599918>,  <36.474331, 35.775745, 47.540146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.397274, 35.995037, 47.599918>,  <36.268845, 36.360523, 47.699539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397274, 35.995037, 47.599918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495858, 0.386241, -0.777780,
		0.806868, 0.126229, 0.577087,
		0.321073, -0.913720, -0.249055,
		36.493595, 35.720921, 47.525204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033722, 36.411308, 47.746296>,  <36.268845, 36.360523, 47.699539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033722, 36.411308, 47.746296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.903034, 36.126675, 47.497494>,  <36.824619, 35.955894, 47.348213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.903034, 36.126675, 47.497494>,  <37.033722, 36.411308, 47.746296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903034, 36.126675, 47.497494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434281, 0.471501, -0.767519,
		0.839435, -0.520893, 0.154979,
		-0.326723, -0.711587, -0.622009,
		36.805016, 35.913197, 47.310890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542557, 36.385700, 47.226448>,  <37.033722, 36.411308, 47.746296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542557, 36.385700, 47.226448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.282158, 36.143932, 47.042763>,  <37.125919, 35.998871, 46.932552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.282158, 36.143932, 47.042763>,  <37.542557, 36.385700, 47.226448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282158, 36.143932, 47.042763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362579, 0.283882, -0.887664,
		0.666885, -0.744369, 0.034344,
		-0.651000, -0.604422, -0.459209,
		37.086857, 35.962605, 46.904999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940441, 35.925655, 46.834198>,  <37.542557, 36.385700, 47.226448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940441, 35.925655, 46.834198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.576096, 35.954151, 46.671593>,  <37.357487, 35.971249, 46.574028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.576096, 35.954151, 46.671593>,  <37.940441, 35.925655, 46.834198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576096, 35.954151, 46.671593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408883, 0.289575, -0.865425,
		0.056059, -0.954500, -0.292894,
		-0.910863, 0.071244, -0.406513,
		37.302837, 35.975525, 46.549641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021358, 35.924351, 46.174145>,  <37.940441, 35.925655, 46.834198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021358, 35.924351, 46.174145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.634491, 35.990921, 46.097328>,  <37.402370, 36.030865, 46.051239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.634491, 35.990921, 46.097328>,  <38.021358, 35.924351, 46.174145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634491, 35.990921, 46.097328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235380, 0.301883, -0.923831,
		-0.095779, -0.938705, -0.331147,
		-0.967172, 0.166429, -0.192038,
		37.344337, 36.040848, 46.039715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747139, 35.541489, 45.511604>,  <38.021358, 35.924351, 46.174145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747139, 35.541489, 45.511604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.538765, 35.875832, 45.580845>,  <37.413738, 36.076439, 45.622391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.538765, 35.875832, 45.580845>,  <37.747139, 35.541489, 45.511604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538765, 35.875832, 45.580845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235531, 0.335677, -0.912056,
		-0.820456, -0.434353, -0.371738,
		-0.520938, 0.835858, 0.173105,
		37.382484, 36.126591, 45.632774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447208, 35.702976, 44.943634>,  <37.747139, 35.541489, 45.511604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447208, 35.702976, 44.943634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.412781, 36.057671, 45.125309>,  <37.392124, 36.270489, 45.234314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.412781, 36.057671, 45.125309>,  <37.447208, 35.702976, 44.943634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412781, 36.057671, 45.125309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153996, 0.462238, -0.873282,
		-0.984316, -0.005220, -0.176339,
		-0.086069, 0.886740, 0.454185,
		37.386959, 36.323692, 45.261566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016052, 36.210827, 44.512474>,  <37.447208, 35.702976, 44.943634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016052, 36.210827, 44.512474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.244015, 36.442677, 44.745453>,  <37.380791, 36.581787, 44.885239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.244015, 36.442677, 44.745453>,  <37.016052, 36.210827, 44.512474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244015, 36.442677, 44.745453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120323, 0.642315, -0.756937,
		-0.812853, 0.501464, 0.296317,
		0.569906, 0.579625, 0.582445,
		37.414986, 36.616566, 44.920185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824997, 36.996922, 44.453369>,  <37.016052, 36.210827, 44.512474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824997, 36.996922, 44.453369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.203671, 36.975834, 44.580490>,  <37.430874, 36.963181, 44.656765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.203671, 36.975834, 44.580490>,  <36.824997, 36.996922, 44.453369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203671, 36.975834, 44.580490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248685, 0.746713, -0.616909,
		-0.204784, 0.663054, 0.720016,
		0.946689, -0.052724, 0.317807,
		37.487679, 36.960018, 44.675831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040371, 37.619869, 44.376968>,  <36.824997, 36.996922, 44.453369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040371, 37.619869, 44.376968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.387039, 37.424194, 44.416126>,  <37.595039, 37.306789, 44.439621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.387039, 37.424194, 44.416126>,  <37.040371, 37.619869, 44.376968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387039, 37.424194, 44.416126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362225, 0.482094, -0.797733,
		0.343044, 0.726831, 0.595011,
		0.866669, -0.489185, 0.097897,
		37.647041, 37.277439, 44.445496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499813, 38.217587, 44.334000>,  <37.040371, 37.619869, 44.376968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499813, 38.217587, 44.334000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.705395, 37.892323, 44.224735>,  <37.828743, 37.697163, 44.159176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.705395, 37.892323, 44.224735>,  <37.499813, 38.217587, 44.334000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705395, 37.892323, 44.224735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574013, 0.562655, -0.594919,
		0.637460, 0.148965, 0.755946,
		0.513959, -0.813160, -0.273163,
		37.859581, 37.648376, 44.142788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.838120, 36.397152, 34.506687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.891102, 36.383949, 34.902943>,  <33.922894, 36.376026, 35.140697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.891102, 36.383949, 34.902943>,  <33.838120, 36.397152, 34.506687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891102, 36.383949, 34.902943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687153, -0.723344, 0.067780,
		0.714335, -0.689699, -0.118493,
		0.132459, -0.033005, 0.990639,
		33.930840, 36.374046, 35.200134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919655, 35.605675, 34.743885>,  <33.838120, 36.397152, 34.506687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919655, 35.605675, 34.743885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.792767, 35.823181, 35.054672>,  <33.716633, 35.953686, 35.241146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.792767, 35.823181, 35.054672>,  <33.919655, 35.605675, 34.743885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792767, 35.823181, 35.054672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823150, -0.564733, 0.059160,
		0.470951, -0.620798, 0.626750,
		-0.317220, 0.543771, 0.776972,
		33.697601, 35.986313, 35.287766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749180, 35.084953, 35.195625>,  <33.919655, 35.605675, 34.743885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749180, 35.084953, 35.195625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.542179, 35.399727, 35.330048>,  <33.417980, 35.588589, 35.410702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.542179, 35.399727, 35.330048>,  <33.749180, 35.084953, 35.195625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542179, 35.399727, 35.330048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782724, -0.594026, 0.185679,
		0.345745, -0.166954, 0.923356,
		-0.517498, 0.786930, 0.336060,
		33.386929, 35.635807, 35.430866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307659, 34.902184, 35.805485>,  <33.749180, 35.084953, 35.195625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307659, 34.902184, 35.805485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.102623, 35.232037, 35.709793>,  <32.979603, 35.429951, 35.652378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.102623, 35.232037, 35.709793>,  <33.307659, 34.902184, 35.805485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102623, 35.232037, 35.709793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845290, -0.533570, -0.028078,
		-0.150801, 0.187828, 0.970556,
		-0.512586, 0.824636, -0.239232,
		32.948849, 35.479427, 35.638023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591133, 34.851849, 36.121651>,  <33.307659, 34.902184, 35.805485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591133, 34.851849, 36.121651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.556828, 35.132801, 35.839005>,  <32.536243, 35.301373, 35.669415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.556828, 35.132801, 35.839005>,  <32.591133, 34.851849, 36.121651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556828, 35.132801, 35.839005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973301, -0.210624, -0.091228,
		-0.212906, 0.679923, 0.701694,
		-0.085766, 0.702383, -0.706613,
		32.531097, 35.343513, 35.627018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007954, 35.174816, 36.358307>,  <32.591133, 34.851849, 36.121651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007954, 35.174816, 36.358307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062603, 35.269680, 35.973579>,  <32.095394, 35.326599, 35.742744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062603, 35.269680, 35.973579>,  <32.007954, 35.174816, 36.358307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062603, 35.269680, 35.973579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977341, -0.126190, -0.169943,
		-0.161675, 0.963240, 0.214546,
		0.136622, 0.237160, -0.961816,
		32.103588, 35.340828, 35.685036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645330, 35.789822, 36.212612>,  <32.007954, 35.174816, 36.358307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645330, 35.789822, 36.212612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.684685, 35.579784, 35.874477>,  <31.708298, 35.453762, 35.671597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.684685, 35.579784, 35.874477>,  <31.645330, 35.789822, 36.212612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684685, 35.579784, 35.874477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994080, -0.091198, -0.059047,
		-0.046088, 0.846142, -0.530960,
		0.098384, -0.525096, -0.845337,
		31.714199, 35.422256, 35.620876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035786, 35.975975, 35.771347>,  <31.645330, 35.789822, 36.212612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035786, 35.975975, 35.771347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.156128, 35.656834, 35.562382>,  <31.228334, 35.465347, 35.437004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.156128, 35.656834, 35.562382>,  <31.035786, 35.975975, 35.771347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156128, 35.656834, 35.562382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940128, -0.156143, -0.302952,
		0.160141, 0.582278, -0.797062,
		0.300857, -0.797855, -0.522411,
		31.246386, 35.417477, 35.405659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773796, 36.070648, 35.129013>,  <31.035786, 35.975975, 35.771347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773796, 36.070648, 35.129013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.847654, 35.678524, 35.157017>,  <30.891970, 35.443249, 35.173817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.847654, 35.678524, 35.157017>,  <30.773796, 36.070648, 35.129013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847654, 35.678524, 35.157017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972948, -0.192393, -0.127894,
		0.138845, -0.044498, -0.989314,
		0.184646, -0.980309, 0.070007,
		30.903048, 35.384430, 35.178020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366434, 35.756832, 34.599159>,  <30.773796, 36.070648, 35.129013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366434, 35.756832, 34.599159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.435020, 35.442612, 34.836987>,  <30.476171, 35.254082, 34.979683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.435020, 35.442612, 34.836987>,  <30.366434, 35.756832, 34.599159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435020, 35.442612, 34.836987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950287, -0.291092, -0.110546,
		0.259914, -0.546057, -0.796408,
		0.171464, -0.785549, 0.594570,
		30.486460, 35.206947, 35.015358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977720, 35.174000, 34.204113>,  <30.366434, 35.756832, 34.599159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977720, 35.174000, 34.204113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.039724, 35.067883, 34.584763>,  <30.076927, 35.004211, 34.813152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.039724, 35.067883, 34.584763>,  <29.977720, 35.174000, 34.204113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039724, 35.067883, 34.584763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904076, -0.426428, 0.028382,
		0.398270, -0.864741, -0.305948,
		0.155008, -0.265297, 0.951625,
		30.086227, 34.988293, 34.870251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760963, 34.528408, 34.197628>,  <29.977720, 35.174000, 34.204113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760963, 34.528408, 34.197628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.741203, 34.647942, 34.578838>,  <29.729347, 34.719662, 34.807564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.741203, 34.647942, 34.578838>,  <29.760963, 34.528408, 34.197628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741203, 34.647942, 34.578838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898543, -0.429925, 0.088233,
		0.436096, -0.851977, 0.289750,
		-0.049398, 0.298831, 0.953027,
		29.726383, 34.737591, 34.864746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627291, 33.948601, 34.586590>,  <29.760963, 34.528408, 34.197628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627291, 33.948601, 34.586590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498615, 34.260742, 34.801090>,  <29.421410, 34.448029, 34.929790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498615, 34.260742, 34.801090>,  <29.627291, 33.948601, 34.586590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498615, 34.260742, 34.801090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897251, -0.432128, 0.090589,
		0.302419, -0.452006, 0.839186,
		-0.321689, 0.780357, 0.536247,
		29.402109, 34.494850, 34.961964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124043, 33.630417, 34.983624>,  <29.627291, 33.948601, 34.586590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124043, 33.630417, 34.983624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.037394, 34.014824, 35.052357>,  <28.985405, 34.245468, 35.093597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.037394, 34.014824, 35.052357>,  <29.124043, 33.630417, 34.983624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037394, 34.014824, 35.052357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952052, -0.246901, 0.180657,
		0.216040, -0.124458, 0.968420,
		-0.216620, 0.961015, 0.171831,
		28.972408, 34.303127, 35.103905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647663, 33.634243, 35.636074>,  <29.124043, 33.630417, 34.983624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647663, 33.634243, 35.636074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.597843, 33.983841, 35.448193>,  <28.567951, 34.193600, 35.335464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.597843, 33.983841, 35.448193>,  <28.647663, 33.634243, 35.636074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597843, 33.983841, 35.448193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990467, -0.081437, 0.111101,
		0.058851, 0.479061, 0.875806,
		-0.124547, 0.873996, -0.469702,
		28.560478, 34.246040, 35.307281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382540, 34.105804, 36.152306>,  <28.647663, 33.634243, 35.636074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382540, 34.105804, 36.152306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.239370, 34.243359, 35.805058>,  <28.153469, 34.325890, 35.596710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.239370, 34.243359, 35.805058>,  <28.382540, 34.105804, 36.152306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239370, 34.243359, 35.805058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932701, -0.087590, 0.349852,
		0.044270, 0.934917, 0.352093,
		-0.357922, 0.343886, -0.868121,
		28.131994, 34.346523, 35.544621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687759, 34.465603, 36.303192>,  <28.382540, 34.105804, 36.152306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.687759, 34.465603, 36.303192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.665533, 34.446178, 35.904282>,  <27.652197, 34.434525, 35.664936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.665533, 34.446178, 35.904282>,  <27.687759, 34.465603, 36.303192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665533, 34.446178, 35.904282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993117, -0.100458, 0.060226,
		-0.103108, 0.993756, -0.042644,
		-0.055566, -0.048560, -0.997273,
		27.648863, 34.431610, 35.605099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168129, 34.918140, 36.122616>,  <27.687759, 34.465603, 36.303192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168129, 34.918140, 36.122616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186794, 34.682613, 35.799850>,  <27.197992, 34.541298, 35.606190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186794, 34.682613, 35.799850>,  <27.168129, 34.918140, 36.122616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186794, 34.682613, 35.799850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984865, -0.162108, 0.061340,
		-0.166926, 0.791841, -0.587472,
		0.046662, -0.588820, -0.806916,
		27.200792, 34.505966, 35.557774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187157, 34.527443, 36.861412>,  <27.168129, 34.918140, 36.122616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187157, 34.527443, 36.861412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.389849, 34.602135, 37.198067>,  <27.511465, 34.646950, 37.400059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.389849, 34.602135, 37.198067>,  <27.187157, 34.527443, 36.861412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389849, 34.602135, 37.198067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148440, 0.942781, -0.298544,
		-0.849228, 0.276215, 0.450018,
		0.506731, 0.186731, 0.841638,
		27.541868, 34.658154, 37.450558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906033, 35.070679, 37.171040>,  <27.187157, 34.527443, 36.861412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906033, 35.070679, 37.171040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.285830, 35.046734, 37.294250>,  <27.513708, 35.032368, 37.368179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.285830, 35.046734, 37.294250>,  <26.906033, 35.070679, 37.171040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285830, 35.046734, 37.294250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205821, 0.859787, -0.467337,
		-0.236865, 0.507132, 0.828681,
		0.949491, -0.059864, 0.308032,
		27.570677, 35.028774, 37.386662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.104763, 35.788086, 37.343201>,  <26.906033, 35.070679, 37.171040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.104763, 35.788086, 37.343201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.456558, 35.597862, 37.335850>,  <27.667635, 35.483727, 37.331440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.456558, 35.597862, 37.335850>,  <27.104763, 35.788086, 37.343201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456558, 35.597862, 37.335850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432200, 0.814269, -0.387516,
		0.199252, 0.332874, 0.921680,
		0.879490, -0.475563, -0.018376,
		27.720406, 35.455193, 37.330338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634565, 36.254360, 37.629341>,  <27.104763, 35.788086, 37.343201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634565, 36.254360, 37.629341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.822992, 35.991722, 37.393723>,  <27.936049, 35.834137, 37.252354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.822992, 35.991722, 37.393723>,  <27.634565, 36.254360, 37.629341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822992, 35.991722, 37.393723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508683, 0.747765, -0.426718,
		0.720649, -0.098624, 0.686249,
		0.471069, -0.656598, -0.589045,
		27.964314, 35.794743, 37.217010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303560, 36.519203, 37.636055>,  <27.634565, 36.254360, 37.629341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303560, 36.519203, 37.636055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.305635, 36.276482, 37.318119>,  <28.306881, 36.130848, 37.127357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.305635, 36.276482, 37.318119>,  <28.303560, 36.519203, 37.636055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305635, 36.276482, 37.318119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492200, 0.693448, -0.526183,
		0.870466, -0.388490, 0.302265,
		0.005188, -0.606800, -0.794838,
		28.307192, 36.094440, 37.079666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895023, 36.694530, 37.330437>,  <28.303560, 36.519203, 37.636055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895023, 36.694530, 37.330437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.729473, 36.512829, 37.014877>,  <28.630142, 36.403809, 36.825542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.729473, 36.512829, 37.014877>,  <28.895023, 36.694530, 37.330437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729473, 36.512829, 37.014877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488908, 0.620099, -0.613552,
		0.767904, -0.639633, -0.034555,
		-0.413875, -0.454255, -0.788898,
		28.605310, 36.376553, 36.778210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452993, 36.477169, 36.924324>,  <28.895023, 36.694530, 37.330437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452993, 36.477169, 36.924324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.157787, 36.463341, 36.654766>,  <28.980663, 36.455044, 36.493031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.157787, 36.463341, 36.654766>,  <29.452993, 36.477169, 36.924324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157787, 36.463341, 36.654766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603899, 0.411735, -0.682481,
		0.301059, -0.910648, -0.282991,
		-0.738017, -0.034569, -0.673896,
		28.936382, 36.452969, 36.452599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805567, 36.275501, 36.339619>,  <29.452993, 36.477169, 36.924324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805567, 36.275501, 36.339619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.463602, 36.424637, 36.195328>,  <29.258423, 36.514118, 36.108753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.463602, 36.424637, 36.195328>,  <29.805567, 36.275501, 36.339619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463602, 36.424637, 36.195328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509123, 0.469454, -0.721392,
		-0.099616, -0.800379, -0.591159,
		-0.854910, 0.372835, -0.360726,
		29.207129, 36.536488, 36.087109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786964, 36.122444, 35.647957>,  <29.805567, 36.275501, 36.339619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786964, 36.122444, 35.647957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.563292, 36.445877, 35.721184>,  <29.429087, 36.639935, 35.765121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.563292, 36.445877, 35.721184>,  <29.786964, 36.122444, 35.647957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563292, 36.445877, 35.721184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519435, 0.513808, -0.682780,
		-0.646144, -0.286707, -0.707317,
		-0.559183, 0.808579, 0.183068,
		29.395536, 36.688450, 35.776104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762838, 36.399822, 34.978531>,  <29.786964, 36.122444, 35.647957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762838, 36.399822, 34.978531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.628143, 36.693497, 35.214352>,  <29.547327, 36.869701, 35.355843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.628143, 36.693497, 35.214352>,  <29.762838, 36.399822, 34.978531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628143, 36.693497, 35.214352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318902, 0.678041, -0.662240,
		-0.885951, -0.034991, -0.462457,
		-0.336737, 0.734191, 0.589552,
		29.527122, 36.913754, 35.391216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336493, 36.834415, 34.522499>,  <29.762838, 36.399822, 34.978531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336493, 36.834415, 34.522499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.475697, 37.025906, 34.844917>,  <29.559219, 37.140800, 35.038368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.475697, 37.025906, 34.844917>,  <29.336493, 36.834415, 34.522499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475697, 37.025906, 34.844917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502949, 0.630244, -0.591468,
		-0.791158, 0.611236, -0.021444,
		0.348012, 0.478730, 0.806043,
		29.580101, 37.169525, 35.086731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177845, 37.507732, 34.403217>,  <29.336493, 36.834415, 34.522499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177845, 37.507732, 34.403217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.463404, 37.520721, 34.683018>,  <29.634739, 37.528515, 34.850899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.463404, 37.520721, 34.683018>,  <29.177845, 37.507732, 34.403217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463404, 37.520721, 34.683018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585296, 0.520723, -0.621511,
		-0.384425, 0.853108, 0.352738,
		0.713895, 0.032469, 0.699500,
		29.677572, 37.530460, 34.892868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540562, 38.114941, 34.240700>,  <29.177845, 37.507732, 34.403217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540562, 38.114941, 34.240700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.816002, 37.936401, 34.469296>,  <29.981266, 37.829277, 34.606453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.816002, 37.936401, 34.469296>,  <29.540562, 38.114941, 34.240700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816002, 37.936401, 34.469296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724440, 0.388770, -0.569249,
		0.031904, 0.805997, 0.591059,
		0.688599, -0.446348, 0.571493,
		30.022581, 37.802498, 34.640743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060480, 38.559086, 34.375214>,  <29.540562, 38.114941, 34.240700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060480, 38.559086, 34.375214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.232943, 38.205795, 34.448982>,  <30.336420, 37.993820, 34.493244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.232943, 38.205795, 34.448982>,  <30.060480, 38.559086, 34.375214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232943, 38.205795, 34.448982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803399, 0.282766, -0.524017,
		0.410678, 0.374099, 0.831501,
		0.431155, -0.883229, 0.184425,
		30.362289, 37.940826, 34.504311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787838, 38.765079, 34.540325>,  <30.060480, 38.559086, 34.375214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787838, 38.765079, 34.540325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.786585, 38.380390, 34.430729>,  <30.785833, 38.149574, 34.364971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.786585, 38.380390, 34.430729>,  <30.787838, 38.765079, 34.540325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786585, 38.380390, 34.430729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727427, 0.185814, -0.660547,
		0.686178, -0.201379, 0.699004,
		-0.003135, -0.961727, -0.273990,
		30.785645, 38.091873, 34.348534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440441, 38.525093, 34.543587>,  <30.787838, 38.765079, 34.540325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440441, 38.525093, 34.543587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.265188, 38.255302, 34.305889>,  <31.160036, 38.093430, 34.163273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.265188, 38.255302, 34.305889>,  <31.440441, 38.525093, 34.543587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265188, 38.255302, 34.305889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734449, 0.112561, -0.669265,
		0.518291, -0.729665, 0.446052,
		-0.438132, -0.674477, -0.594241,
		31.133749, 38.052959, 34.127617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978678, 38.103912, 34.210472>,  <31.440441, 38.525093, 34.543587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978678, 38.103912, 34.210472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.669184, 38.032074, 33.967464>,  <31.483488, 37.988972, 33.821659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.669184, 38.032074, 33.967464>,  <31.978678, 38.103912, 34.210472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669184, 38.032074, 33.967464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619330, -0.012679, -0.785028,
		0.133288, -0.983658, 0.121042,
		-0.773734, -0.179600, -0.607519,
		31.437063, 37.978195, 33.785210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125813, 37.538860, 33.825180>,  <31.978678, 38.103912, 34.210472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125813, 37.538860, 33.825180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.843222, 37.739227, 33.625191>,  <31.673668, 37.859447, 33.505196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.843222, 37.739227, 33.625191>,  <32.125813, 37.538860, 33.825180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843222, 37.739227, 33.625191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616946, 0.089721, -0.781875,
		-0.346796, -0.860833, -0.372424,
		-0.706477, 0.500917, -0.499972,
		31.631279, 37.889503, 33.475201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166794, 37.287266, 33.249374>,  <32.125813, 37.538860, 33.825180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166794, 37.287266, 33.249374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.962502, 37.615856, 33.147915>,  <31.839928, 37.813011, 33.087040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.962502, 37.615856, 33.147915>,  <32.166794, 37.287266, 33.249374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962502, 37.615856, 33.147915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397098, -0.036280, -0.917059,
		-0.762543, -0.569090, -0.307676,
		-0.510726, 0.821475, -0.253650,
		31.809284, 37.862297, 33.071819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903702, 37.223507, 32.615826>,  <32.166794, 37.287266, 33.249374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903702, 37.223507, 32.615826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.898905, 37.619381, 32.672932>,  <31.896027, 37.856907, 32.707195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.898905, 37.619381, 32.672932>,  <31.903702, 37.223507, 32.615826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898905, 37.619381, 32.672932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491552, 0.130166, -0.861066,
		-0.870766, 0.059852, -0.488042,
		-0.011990, 0.989684, 0.142764,
		31.895308, 37.916286, 32.715759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858904, 37.422573, 31.908524>,  <31.903702, 37.223507, 32.615826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858904, 37.422573, 31.908524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.968971, 37.746590, 32.115643>,  <32.035011, 37.940998, 32.239914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.968971, 37.746590, 32.115643>,  <31.858904, 37.422573, 31.908524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968971, 37.746590, 32.115643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669086, 0.225400, -0.708180,
		-0.690366, 0.541322, -0.479963,
		0.275171, 0.810040, 0.517799,
		32.051521, 37.989601, 32.270981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965963, 38.036877, 31.291994>,  <31.858904, 37.422573, 31.908524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965963, 38.036877, 31.291994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.149563, 38.129436, 31.635103>,  <32.259724, 38.184971, 31.840969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.149563, 38.129436, 31.635103>,  <31.965963, 38.036877, 31.291994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149563, 38.129436, 31.635103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880841, 0.007447, -0.473354,
		-0.115919, 0.972831, -0.200404,
		0.459001, 0.231395, 0.857773,
		32.287262, 38.198856, 31.892435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322395, 38.635929, 31.199194>,  <31.965963, 38.036877, 31.291994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322395, 38.635929, 31.199194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.519218, 38.422920, 31.474670>,  <32.637314, 38.295116, 31.639956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.519218, 38.422920, 31.474670>,  <32.322395, 38.635929, 31.199194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519218, 38.422920, 31.474670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790746, -0.057499, -0.609438,
		0.364138, 0.844461, 0.392796,
		0.492061, -0.532522, 0.688691,
		32.666836, 38.263165, 31.681278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914139, 38.957489, 31.169802>,  <32.322395, 38.635929, 31.199194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914139, 38.957489, 31.169802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.970356, 38.612766, 31.364750>,  <33.004086, 38.405933, 31.481718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.970356, 38.612766, 31.364750>,  <32.914139, 38.957489, 31.169802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970356, 38.612766, 31.364750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939247, -0.039639, -0.340946,
		0.313150, 0.505680, 0.803882,
		0.140545, -0.861810, 0.487371,
		33.012520, 38.354221, 31.510962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.825386, 33.508942, 48.211754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.603600, 33.191410, 48.111832>,  <38.470528, 33.000893, 48.051880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.603600, 33.191410, 48.111832>,  <38.825386, 33.508942, 48.211754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603600, 33.191410, 48.111832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344912, -0.053969, 0.937082,
		-0.757364, 0.605742, -0.243877,
		-0.554469, -0.793829, -0.249802,
		38.437260, 32.953262, 48.036892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184471, 33.560341, 48.581177>,  <38.825386, 33.508942, 48.211754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184471, 33.560341, 48.581177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.210789, 33.178745, 48.464161>,  <38.226578, 32.949787, 48.393951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.210789, 33.178745, 48.464161>,  <38.184471, 33.560341, 48.581177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210789, 33.178745, 48.464161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470874, -0.288160, 0.833811,
		-0.879744, 0.082893, -0.468166,
		0.065789, -0.953988, -0.292540,
		38.230526, 32.892548, 48.376400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575439, 33.227749, 48.832172>,  <38.184471, 33.560341, 48.581177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575439, 33.227749, 48.832172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.830570, 32.927628, 48.762642>,  <37.983650, 32.747555, 48.720924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.830570, 32.927628, 48.762642>,  <37.575439, 33.227749, 48.832172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830570, 32.927628, 48.762642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305523, -0.453667, 0.837164,
		-0.706988, -0.480859, -0.518597,
		0.637828, -0.750308, -0.173824,
		38.021919, 32.702534, 48.710495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181923, 32.667984, 48.785675>,  <37.575439, 33.227749, 48.832172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181923, 32.667984, 48.785675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.558723, 32.592209, 48.896481>,  <37.784805, 32.546745, 48.962963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.558723, 32.592209, 48.896481>,  <37.181923, 32.667984, 48.785675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558723, 32.592209, 48.896481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333774, -0.442954, 0.832098,
		-0.034922, -0.876303, -0.480493,
		0.942006, -0.189434, 0.277018,
		37.841324, 32.535378, 48.979588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109612, 31.959230, 48.996761>,  <37.181923, 32.667984, 48.785675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109612, 31.959230, 48.996761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.467495, 32.064663, 49.140999>,  <37.682224, 32.127922, 49.227543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.467495, 32.064663, 49.140999>,  <37.109612, 31.959230, 48.996761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467495, 32.064663, 49.140999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216077, -0.451145, 0.865898,
		0.390916, -0.852639, -0.346687,
		0.894704, 0.263582, 0.360595,
		37.735905, 32.143738, 49.249176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358192, 31.230713, 49.274147>,  <37.109612, 31.959230, 48.996761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358192, 31.230713, 49.274147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.619534, 31.492872, 49.425716>,  <37.776337, 31.650167, 49.516659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.619534, 31.492872, 49.425716>,  <37.358192, 31.230713, 49.274147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619534, 31.492872, 49.425716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024763, -0.518759, 0.854562,
		0.756650, -0.548946, -0.355162,
		0.653352, 0.655399, 0.378925,
		37.815540, 31.689491, 49.539394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955791, 30.863964, 49.634388>,  <37.358192, 31.230713, 49.274147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955791, 30.863964, 49.634388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.892525, 31.225519, 49.793369>,  <37.854565, 31.442451, 49.888760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.892525, 31.225519, 49.793369>,  <37.955791, 30.863964, 49.634388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892525, 31.225519, 49.793369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328836, -0.331327, 0.884358,
		0.931047, 0.270578, -0.244825,
		-0.158171, 0.903886, 0.397456,
		37.845074, 31.496685, 49.912605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250999, 30.688911, 50.230976>,  <37.955791, 30.863964, 49.634388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250999, 30.688911, 50.230976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.066765, 31.036442, 50.303638>,  <37.956223, 31.244959, 50.347237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.066765, 31.036442, 50.303638>,  <38.250999, 30.688911, 50.230976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066765, 31.036442, 50.303638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047702, -0.228594, 0.972352,
		0.886330, 0.439190, 0.146733,
		-0.460590, 0.868825, 0.181660,
		37.928589, 31.297089, 50.358135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449665, 30.830421, 50.917747>,  <38.250999, 30.688911, 50.230976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449665, 30.830421, 50.917747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.112598, 31.037369, 50.858089>,  <37.910358, 31.161537, 50.822296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.112598, 31.037369, 50.858089>,  <38.449665, 30.830421, 50.917747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112598, 31.037369, 50.858089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291369, -0.205228, 0.934337,
		0.452789, 0.830789, 0.323684,
		-0.842666, 0.517369, -0.149141,
		37.859798, 31.192579, 50.813347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373196, 31.220411, 51.585796>,  <38.449665, 30.830421, 50.917747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373196, 31.220411, 51.585796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.006680, 31.212362, 51.425793>,  <37.786770, 31.207533, 51.329792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.006680, 31.212362, 51.425793>,  <38.373196, 31.220411, 51.585796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006680, 31.212362, 51.425793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395397, -0.113725, 0.911443,
		-0.063830, 0.993308, 0.096249,
		-0.916290, -0.020121, -0.400010,
		37.731792, 31.206326, 51.305790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049564, 31.490154, 52.130802>,  <38.373196, 31.220411, 51.585796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049564, 31.490154, 52.130802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.763348, 31.330015, 51.901814>,  <37.591618, 31.233932, 51.764420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.763348, 31.330015, 51.901814>,  <38.049564, 31.490154, 52.130802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763348, 31.330015, 51.901814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550920, -0.180476, 0.814810,
		-0.429524, 0.898416, -0.091420,
		-0.715539, -0.400345, -0.572475,
		37.548687, 31.209911, 51.730072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426258, 31.736326, 52.375340>,  <38.049564, 31.490154, 52.130802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426258, 31.736326, 52.375340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.321598, 31.409134, 52.170422>,  <37.258801, 31.212818, 52.047470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.321598, 31.409134, 52.170422>,  <37.426258, 31.736326, 52.375340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321598, 31.409134, 52.170422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546998, -0.311633, 0.776968,
		-0.795192, 0.483520, -0.365894,
		-0.261655, -0.817981, -0.512292,
		37.243103, 31.163740, 52.016735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785187, 31.620789, 52.541740>,  <37.426258, 31.736326, 52.375340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785187, 31.620789, 52.541740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.422462, 31.764637, 52.453770>,  <36.204826, 31.850946, 52.400990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.422462, 31.764637, 52.453770>,  <36.785187, 31.620789, 52.541740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422462, 31.764637, 52.453770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159642, 0.189882, 0.968741,
		0.390139, 0.913574, -0.114776,
		-0.906811, 0.359621, -0.219925,
		36.150417, 31.872522, 52.387791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198421, 31.561480, 53.014889>,  <36.785187, 31.620789, 52.541740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198421, 31.561480, 53.014889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.501244, 31.818439, 53.062546>,  <36.682938, 31.972614, 53.091141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.501244, 31.818439, 53.062546>,  <36.198421, 31.561480, 53.014889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501244, 31.818439, 53.062546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505346, -0.691323, 0.516428,
		0.414121, -0.330753, -0.848001,
		0.757053, 0.642398, 0.119147,
		36.728359, 32.011158, 53.098289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711052, 30.915352, 53.087452>,  <36.198421, 31.561480, 53.014889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711052, 30.915352, 53.087452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.456062, 31.210958, 53.174606>,  <35.303066, 31.388323, 53.226898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.456062, 31.210958, 53.174606>,  <35.711052, 30.915352, 53.087452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456062, 31.210958, 53.174606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063918, 0.332547, -0.940918,
		-0.767813, -0.585887, -0.259228,
		-0.637478, 0.739018, 0.217885,
		35.264820, 31.432665, 53.239971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365932, 30.918919, 52.495419>,  <35.711052, 30.915352, 53.087452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365932, 30.918919, 52.495419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333820, 31.276802, 52.671169>,  <35.314552, 31.491531, 52.776619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333820, 31.276802, 52.671169>,  <35.365932, 30.918919, 52.495419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333820, 31.276802, 52.671169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162097, 0.446649, -0.879903,
		-0.983504, 0.000582, -0.180887,
		-0.080281, 0.894709, 0.439375,
		35.309734, 31.545216, 52.802982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850460, 31.290426, 52.136204>,  <35.365932, 30.918919, 52.495419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850460, 31.290426, 52.136204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.100025, 31.550459, 52.309696>,  <35.249763, 31.706478, 52.413792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.100025, 31.550459, 52.309696>,  <34.850460, 31.290426, 52.136204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100025, 31.550459, 52.309696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213018, 0.392519, -0.894736,
		-0.751899, 0.650633, 0.106419,
		0.623916, 0.650082, 0.433731,
		35.287201, 31.745483, 52.439816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704166, 31.884359, 51.824688>,  <34.850460, 31.290426, 52.136204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704166, 31.884359, 51.824688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.029037, 32.027924, 52.008663>,  <35.223961, 32.114063, 52.119049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.029037, 32.027924, 52.008663>,  <34.704166, 31.884359, 51.824688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029037, 32.027924, 52.008663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233244, 0.522865, -0.819884,
		-0.534754, 0.773171, 0.340946,
		0.812179, 0.358913, 0.459942,
		35.272690, 32.135597, 52.146645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586395, 32.649456, 51.778858>,  <34.704166, 31.884359, 51.824688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586395, 32.649456, 51.778858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.975872, 32.582989, 51.841221>,  <35.209560, 32.543110, 51.878639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.975872, 32.582989, 51.841221>,  <34.586395, 32.649456, 51.778858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975872, 32.582989, 51.841221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222959, 0.553774, -0.802261,
		0.046972, 0.815919, 0.576256,
		0.973696, -0.166165, 0.155905,
		35.267982, 32.533138, 51.887993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816132, 33.311520, 51.490490>,  <34.586395, 32.649456, 51.778858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816132, 33.311520, 51.490490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.163200, 33.129459, 51.570465>,  <35.371441, 33.020222, 51.618450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.163200, 33.129459, 51.570465>,  <34.816132, 33.311520, 51.490490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163200, 33.129459, 51.570465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470309, 0.621220, -0.626814,
		0.161091, 0.637904, 0.753080,
		0.867675, -0.455154, 0.199939,
		35.423504, 32.992912, 51.630447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234070, 33.819386, 51.618584>,  <34.816132, 33.311520, 51.490490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234070, 33.819386, 51.618584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.455074, 33.505703, 51.505627>,  <35.587677, 33.317493, 51.437851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.455074, 33.505703, 51.505627>,  <35.234070, 33.819386, 51.618584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455074, 33.505703, 51.505627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450332, 0.565958, -0.690574,
		0.701375, 0.254382, 0.665855,
		0.552516, -0.784207, -0.282392,
		35.620831, 33.270439, 51.420910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922924, 34.051243, 51.608700>,  <35.234070, 33.819386, 51.618584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922924, 34.051243, 51.608700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.911484, 33.733932, 51.365425>,  <35.904617, 33.543545, 51.219460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.911484, 33.733932, 51.365425>,  <35.922924, 34.051243, 51.608700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911484, 33.733932, 51.365425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468079, 0.526973, -0.709367,
		0.883224, -0.304969, 0.356244,
		-0.028603, -0.793280, -0.608185,
		35.902905, 33.495949, 51.182968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501442, 34.070995, 51.203537>,  <35.922924, 34.051243, 51.608700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501442, 34.070995, 51.203537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.291721, 33.823765, 50.969242>,  <36.165890, 33.675426, 50.828667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.291721, 33.823765, 50.969242>,  <36.501442, 34.070995, 51.203537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291721, 33.823765, 50.969242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307523, 0.504000, -0.807102,
		0.794064, -0.603291, -0.074174,
		-0.524301, -0.618081, -0.585734,
		36.134430, 33.638340, 50.793522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921181, 33.862648, 50.622375>,  <36.501442, 34.070995, 51.203537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921181, 33.862648, 50.622375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.544468, 33.830948, 50.491680>,  <36.318439, 33.811928, 50.413261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.544468, 33.830948, 50.491680>,  <36.921181, 33.862648, 50.622375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544468, 33.830948, 50.491680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247539, 0.494200, -0.833361,
		0.227521, -0.865729, -0.445812,
		-0.941785, -0.079251, -0.326743,
		36.261932, 33.807171, 50.393658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983856, 33.673676, 49.943386>,  <36.921181, 33.862648, 50.622375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983856, 33.673676, 49.943386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.606426, 33.804916, 49.961361>,  <36.379971, 33.883659, 49.972145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.606426, 33.804916, 49.961361>,  <36.983856, 33.673676, 49.943386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606426, 33.804916, 49.961361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077922, 0.351848, -0.932808,
		-0.321867, -0.876671, -0.357561,
		-0.943573, 0.328102, 0.044937,
		36.323353, 33.903347, 49.974842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707436, 33.534756, 49.301220>,  <36.983856, 33.673676, 49.943386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707436, 33.534756, 49.301220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.458427, 33.815975, 49.438732>,  <36.309021, 33.984707, 49.521240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.458427, 33.815975, 49.438732>,  <36.707436, 33.534756, 49.301220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458427, 33.815975, 49.438732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033161, 0.415191, -0.909130,
		-0.781900, -0.577353, -0.235152,
		-0.622522, 0.703050, 0.343783,
		36.271671, 34.026890, 49.541866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144302, 33.604420, 48.857807>,  <36.707436, 33.534756, 49.301220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144302, 33.604420, 48.857807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.149521, 33.959648, 49.041615>,  <36.152653, 34.172787, 49.151897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.149521, 33.959648, 49.041615>,  <36.144302, 33.604420, 48.857807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149521, 33.959648, 49.041615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137439, 0.456786, -0.878895,
		-0.990424, -0.051688, 0.128016,
		0.013048, 0.888074, 0.459516,
		36.153435, 34.226070, 49.179470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722332, 33.972996, 48.455708>,  <36.144302, 33.604420, 48.857807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722332, 33.972996, 48.455708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.914532, 34.252460, 48.667744>,  <36.029854, 34.420139, 48.794964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.914532, 34.252460, 48.667744>,  <35.722332, 33.972996, 48.455708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914532, 34.252460, 48.667744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195370, 0.503974, -0.841333,
		-0.854954, 0.507827, 0.105665,
		0.480503, 0.698657, 0.530089,
		36.058681, 34.462059, 48.826771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950256, 34.276821, 48.382458>,  <35.722332, 33.972996, 48.455708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950256, 34.276821, 48.382458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.648891, 34.058857, 48.235249>,  <34.468071, 33.928078, 48.146923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.648891, 34.058857, 48.235249>,  <34.950256, 34.276821, 48.382458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648891, 34.058857, 48.235249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111522, -0.445688, 0.888214,
		-0.648018, 0.710238, 0.275019,
		-0.753416, -0.544908, -0.368021,
		34.422867, 33.895386, 48.124844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471638, 34.315304, 48.912132>,  <34.950256, 34.276821, 48.382458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471638, 34.315304, 48.912132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.346909, 34.006805, 48.690159>,  <34.272072, 33.821709, 48.556976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.346909, 34.006805, 48.690159>,  <34.471638, 34.315304, 48.912132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346909, 34.006805, 48.690159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300326, -0.474104, 0.827665,
		-0.901427, 0.424746, -0.083788,
		-0.311823, -0.771243, -0.554932,
		34.253361, 33.775433, 48.523678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875637, 34.163891, 49.195896>,  <34.471638, 34.315304, 48.912132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875637, 34.163891, 49.195896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950508, 33.836109, 48.979206>,  <33.995430, 33.639442, 48.849194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950508, 33.836109, 48.979206>,  <33.875637, 34.163891, 49.195896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950508, 33.836109, 48.979206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391052, -0.568047, 0.724155,
		-0.901134, 0.076296, -0.426774,
		0.187178, -0.819452, -0.541723,
		34.006660, 33.590275, 48.816689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258102, 33.853733, 49.085651>,  <33.875637, 34.163891, 49.195896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258102, 33.853733, 49.085651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.552464, 33.584435, 49.056831>,  <33.729080, 33.422855, 49.039539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.552464, 33.584435, 49.056831>,  <33.258102, 33.853733, 49.085651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552464, 33.584435, 49.056831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430188, -0.547077, 0.718084,
		-0.522859, -0.497448, -0.692217,
		0.735905, -0.673240, -0.072048,
		33.773235, 33.382462, 49.035213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900265, 33.177311, 48.958176>,  <33.258102, 33.853733, 49.085651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900265, 33.177311, 48.958176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.250027, 33.045265, 49.100410>,  <33.459885, 32.966038, 49.185749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.250027, 33.045265, 49.100410>,  <32.900265, 33.177311, 48.958176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250027, 33.045265, 49.100410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483182, -0.659169, 0.576221,
		0.044171, -0.675662, -0.735887,
		0.874404, -0.330115, 0.355584,
		33.512348, 32.946232, 49.207085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814754, 32.491074, 49.054192>,  <32.900265, 33.177311, 48.958176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814754, 32.491074, 49.054192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.156395, 32.527935, 49.258942>,  <33.361378, 32.550053, 49.381790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.156395, 32.527935, 49.258942>,  <32.814754, 32.491074, 49.054192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156395, 32.527935, 49.258942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396090, -0.522591, 0.754991,
		0.337080, -0.847588, -0.409843,
		0.854102, 0.092158, 0.511876,
		33.412624, 32.555584, 49.412506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976795, 31.808460, 49.331783>,  <32.814754, 32.491074, 49.054192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976795, 31.808460, 49.331783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.159359, 32.079643, 49.562283>,  <33.268898, 32.242355, 49.700581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.159359, 32.079643, 49.562283>,  <32.976795, 31.808460, 49.331783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159359, 32.079643, 49.562283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424308, -0.403411, 0.810692,
		0.782080, -0.614516, 0.103541,
		0.456414, 0.677959, 0.576244,
		33.296284, 32.283031, 49.735157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003544, 31.185755, 49.002197>,  <32.976795, 31.808460, 49.331783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003544, 31.185755, 49.002197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664398, 30.979418, 48.953148>,  <32.460911, 30.855616, 48.923717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664398, 30.979418, 48.953148>,  <33.003544, 31.185755, 49.002197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664398, 30.979418, 48.953148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042957, 0.297340, -0.953805,
		0.528476, -0.803426, -0.274262,
		-0.847861, -0.515845, -0.122624,
		32.410038, 30.824665, 48.916359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043945, 30.770689, 48.328609>,  <33.003544, 31.185755, 49.002197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043945, 30.770689, 48.328609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.671612, 30.862013, 48.442749>,  <32.448212, 30.916807, 48.511230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.671612, 30.862013, 48.442749>,  <33.043945, 30.770689, 48.328609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671612, 30.862013, 48.442749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198057, 0.341030, -0.918952,
		-0.307118, -0.911906, -0.272224,
		-0.930834, 0.228310, 0.285346,
		32.392361, 30.930506, 48.528355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726189, 30.612585, 47.778790>,  <33.043945, 30.770689, 48.328609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726189, 30.612585, 47.778790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.451870, 30.836338, 47.965027>,  <32.287281, 30.970589, 48.076771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.451870, 30.836338, 47.965027>,  <32.726189, 30.612585, 47.778790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451870, 30.836338, 47.965027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321200, 0.341433, -0.883320,
		-0.653082, -0.755325, -0.054480,
		-0.685795, 0.559381, 0.465595,
		32.246132, 31.004152, 48.104706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170269, 30.492367, 47.332798>,  <32.726189, 30.612585, 47.778790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170269, 30.492367, 47.332798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.110809, 30.824095, 47.548252>,  <32.075134, 31.023132, 47.677525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.110809, 30.824095, 47.548252>,  <32.170269, 30.492367, 47.332798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110809, 30.824095, 47.548252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264772, 0.491423, -0.829698,
		-0.952784, -0.265953, 0.146529,
		-0.148653, 0.829320, 0.538637,
		32.066212, 31.072891, 47.709843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439388, 30.757912, 47.247829>,  <32.170269, 30.492367, 47.332798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439388, 30.757912, 47.247829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.693197, 31.046581, 47.358509>,  <31.845484, 31.219784, 47.424919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.693197, 31.046581, 47.358509>,  <31.439388, 30.757912, 47.247829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693197, 31.046581, 47.358509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124962, 0.449083, -0.884708,
		-0.762734, 0.526792, 0.375136,
		0.634525, 0.721675, 0.276702,
		31.883554, 31.263084, 47.441521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111034, 31.393553, 47.030315>,  <31.439388, 30.757912, 47.247829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111034, 31.393553, 47.030315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.503012, 31.467657, 47.059696>,  <31.738197, 31.512119, 47.077324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.503012, 31.467657, 47.059696>,  <31.111034, 31.393553, 47.030315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503012, 31.467657, 47.059696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037989, 0.535444, -0.843716,
		-0.195634, 0.824001, 0.531742,
		0.979941, 0.185260, 0.073448,
		31.796993, 31.523235, 47.081730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280947, 32.104961, 47.033180>,  <31.111034, 31.393553, 47.030315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280947, 32.104961, 47.033180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.587418, 31.915434, 46.859528>,  <31.771299, 31.801718, 46.755337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.587418, 31.915434, 46.859528>,  <31.280947, 32.104961, 47.033180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587418, 31.915434, 46.859528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064210, 0.615734, -0.785334,
		0.639415, 0.629580, 0.441337,
		0.766176, -0.473816, -0.434135,
		31.817270, 31.773289, 46.729286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.721928, 28.628170, 50.887871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.816166, 28.990543, 51.028603>,  <35.872707, 29.207968, 51.113041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.816166, 28.990543, 51.028603>,  <35.721928, 28.628170, 50.887871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816166, 28.990543, 51.028603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546602, 0.175812, -0.818728,
		-0.803568, 0.385195, -0.453765,
		0.235592, 0.905933, 0.351826,
		35.886845, 29.262323, 51.134151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571381, 29.188004, 50.415051>,  <35.721928, 28.628170, 50.887871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571381, 29.188004, 50.415051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.903820, 29.233982, 50.632694>,  <36.103283, 29.261570, 50.763279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.903820, 29.233982, 50.632694>,  <35.571381, 29.188004, 50.415051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903820, 29.233982, 50.632694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531716, 0.122401, -0.838031,
		-0.162929, 0.985802, 0.040608,
		0.831103, 0.114947, 0.544109,
		36.153152, 29.268467, 50.795925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863476, 29.789463, 50.239738>,  <35.571381, 29.188004, 50.415051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863476, 29.789463, 50.239738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.160450, 29.574640, 50.399918>,  <36.338634, 29.445745, 50.496025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.160450, 29.574640, 50.399918>,  <35.863476, 29.789463, 50.239738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160450, 29.574640, 50.399918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579117, 0.214029, -0.786648,
		0.336768, 0.815941, 0.469922,
		0.742435, -0.537058, 0.400447,
		36.383179, 29.413523, 50.520050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475266, 30.149527, 50.059258>,  <35.863476, 29.789463, 50.239738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475266, 30.149527, 50.059258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.587711, 29.771507, 50.126015>,  <36.655178, 29.544695, 50.166069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.587711, 29.771507, 50.126015>,  <36.475266, 30.149527, 50.059258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587711, 29.771507, 50.126015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682039, 0.074406, -0.727521,
		0.675126, 0.318344, 0.665478,
		0.281118, -0.945051, 0.166889,
		36.672047, 29.487991, 50.176083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189667, 30.234711, 50.000885>,  <36.475266, 30.149527, 50.059258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189667, 30.234711, 50.000885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.111195, 29.843958, 49.966919>,  <37.064110, 29.609507, 49.946537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.111195, 29.843958, 49.966919>,  <37.189667, 30.234711, 50.000885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111195, 29.843958, 49.966919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586940, -0.047616, -0.808229,
		0.785502, -0.208403, 0.582713,
		-0.196184, -0.976883, -0.084917,
		37.052338, 29.550894, 49.941444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735718, 30.035872, 49.703876>,  <37.189667, 30.234711, 50.000885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735718, 30.035872, 49.703876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.498497, 29.720961, 49.636364>,  <37.356167, 29.532013, 49.595856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.498497, 29.720961, 49.636364>,  <37.735718, 30.035872, 49.703876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498497, 29.720961, 49.636364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437956, -0.139513, -0.888105,
		0.675639, -0.600607, 0.427531,
		-0.593048, -0.787278, -0.168779,
		37.320583, 29.484777, 49.585732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166794, 29.545231, 49.488483>,  <37.735718, 30.035872, 49.703876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166794, 29.545231, 49.488483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.807198, 29.441433, 49.347359>,  <37.591438, 29.379154, 49.262684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.807198, 29.441433, 49.347359>,  <38.166794, 29.545231, 49.488483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807198, 29.441433, 49.347359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395708, -0.136016, -0.908248,
		0.187698, -0.956118, 0.224961,
		-0.898991, -0.259495, -0.352814,
		37.537498, 29.363585, 49.241516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372059, 28.912010, 49.109905>,  <38.166794, 29.545231, 49.488483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372059, 28.912010, 49.109905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.017433, 29.038649, 48.974987>,  <37.804657, 29.114632, 48.894035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.017433, 29.038649, 48.974987>,  <38.372059, 28.912010, 49.109905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017433, 29.038649, 48.974987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272396, -0.232035, -0.933788,
		-0.373896, -0.919743, 0.119476,
		-0.886568, 0.316595, -0.337291,
		37.751461, 29.133627, 48.873798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201939, 28.387623, 48.635441>,  <38.372059, 28.912010, 49.109905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201939, 28.387623, 48.635441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.995277, 28.713911, 48.531384>,  <37.871281, 28.909683, 48.468948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.995277, 28.713911, 48.531384>,  <38.201939, 28.387623, 48.635441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995277, 28.713911, 48.531384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231266, -0.159586, -0.959713,
		-0.824371, -0.555999, -0.106198,
		-0.516652, 0.815719, -0.260142,
		37.840282, 28.958626, 48.453342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890625, 28.195314, 47.955124>,  <38.201939, 28.387623, 48.635441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890625, 28.195314, 47.955124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.885410, 28.588049, 48.030838>,  <37.882282, 28.823689, 48.076267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.885410, 28.588049, 48.030838>,  <37.890625, 28.195314, 47.955124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885410, 28.588049, 48.030838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177331, 0.188573, -0.965916,
		-0.984065, 0.020970, -0.176569,
		-0.013041, 0.981835, 0.189287,
		37.881496, 28.882599, 48.087624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478092, 28.482603, 47.392521>,  <37.890625, 28.195314, 47.955124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478092, 28.482603, 47.392521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.716152, 28.756491, 47.560787>,  <37.858990, 28.920822, 47.661747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.716152, 28.756491, 47.560787>,  <37.478092, 28.482603, 47.392521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716152, 28.756491, 47.560787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290937, 0.304369, -0.907036,
		-0.749101, 0.662210, -0.018064,
		0.595150, 0.684717, 0.420665,
		37.894699, 28.961906, 47.686985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206486, 28.900738, 46.986481>,  <37.478092, 28.482603, 47.392521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206486, 28.900738, 46.986481> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.537094, 29.041731, 47.162037>,  <37.735458, 29.126326, 47.267372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.537094, 29.041731, 47.162037>,  <37.206486, 28.900738, 46.986481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537094, 29.041731, 47.162037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344648, 0.299585, -0.889644,
		-0.445067, 0.886570, 0.126130,
		0.826518, 0.352481, 0.438890,
		37.785049, 29.147476, 47.293705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669731, 29.308212, 46.872200>,  <37.206486, 28.900738, 46.986481>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669731, 29.308212, 46.872200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.316311, 29.400284, 46.709057>,  <36.104259, 29.455526, 46.611172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.316311, 29.400284, 46.709057>,  <36.669731, 29.308212, 46.872200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316311, 29.400284, 46.709057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446496, -0.676806, 0.585298,
		-0.141319, 0.699251, 0.700769,
		-0.883555, 0.230177, -0.407859,
		36.051243, 29.469337, 46.586700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214390, 29.437140, 47.493137>,  <36.669731, 29.308212, 46.872200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214390, 29.437140, 47.493137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.001499, 29.348803, 47.166222>,  <35.873764, 29.295799, 46.970074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.001499, 29.348803, 47.166222>,  <36.214390, 29.437140, 47.493137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001499, 29.348803, 47.166222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639030, -0.528426, 0.558933,
		-0.555314, 0.819752, 0.140117,
		-0.532228, -0.220845, -0.817289,
		35.841831, 29.282549, 46.921036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416229, 29.608410, 47.641720>,  <36.214390, 29.437140, 47.493137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416229, 29.608410, 47.641720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.435642, 29.341066, 47.344818>,  <35.447289, 29.180660, 47.166679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.435642, 29.341066, 47.344818>,  <35.416229, 29.608410, 47.641720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435642, 29.341066, 47.344818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698573, -0.553850, 0.453041,
		-0.713892, 0.496532, -0.493776,
		0.048529, -0.668361, -0.742253,
		35.450199, 29.140558, 47.122143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754971, 29.392838, 47.565014>,  <35.416229, 29.608410, 47.641720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754971, 29.392838, 47.565014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.950443, 29.085819, 47.399094>,  <35.067726, 28.901608, 47.299541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.950443, 29.085819, 47.399094>,  <34.754971, 29.392838, 47.565014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950443, 29.085819, 47.399094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700486, -0.628600, 0.337908,
		-0.520101, 0.125428, -0.844845,
		0.488686, -0.767548, -0.414796,
		35.097050, 28.855555, 47.274654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277527, 28.889101, 47.352348>,  <34.754971, 29.392838, 47.565014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277527, 28.889101, 47.352348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.610683, 28.667734, 47.350681>,  <34.810577, 28.534914, 47.349682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.610683, 28.667734, 47.350681>,  <34.277527, 28.889101, 47.352348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610683, 28.667734, 47.350681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529831, -0.799529, 0.282898,
		-0.159895, -0.233415, -0.959141,
		0.832894, -0.553417, -0.004170,
		34.860550, 28.501709, 47.349430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163055, 28.320562, 46.956230>,  <34.277527, 28.889101, 47.352348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163055, 28.320562, 46.956230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.467911, 28.232101, 47.199619>,  <34.650822, 28.179024, 47.345654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.467911, 28.232101, 47.199619>,  <34.163055, 28.320562, 46.956230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467911, 28.232101, 47.199619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438129, -0.868124, 0.233246,
		0.476650, -0.444355, -0.758521,
		0.762134, -0.221154, 0.608476,
		34.696552, 28.165756, 47.382160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357834, 27.592590, 46.907871>,  <34.163055, 28.320562, 46.956230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357834, 27.592590, 46.907871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.479622, 27.696810, 47.274349>,  <34.552696, 27.759342, 47.494236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.479622, 27.696810, 47.274349>,  <34.357834, 27.592590, 46.907871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479622, 27.696810, 47.274349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217572, -0.917410, 0.333199,
		0.927341, -0.300787, -0.222634,
		0.304469, 0.260550, 0.916195,
		34.570961, 27.774975, 47.549206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394753, 26.948507, 47.280876>,  <34.357834, 27.592590, 46.907871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394753, 26.948507, 47.280876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.465282, 27.212402, 47.573086>,  <34.507599, 27.370739, 47.748409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.465282, 27.212402, 47.573086>,  <34.394753, 26.948507, 47.280876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465282, 27.212402, 47.573086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310084, -0.667132, 0.677335,
		0.934215, -0.345952, 0.086943,
		0.176323, 0.659736, 0.730519,
		34.518181, 27.410324, 47.792240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570221, 26.502972, 47.966789>,  <34.394753, 26.948507, 47.280876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570221, 26.502972, 47.966789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.435791, 26.860346, 48.086002>,  <34.355133, 27.074770, 48.157532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.435791, 26.860346, 48.086002>,  <34.570221, 26.502972, 47.966789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435791, 26.860346, 48.086002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540311, -0.442083, 0.715979,
		0.771439, 0.079589, 0.631306,
		-0.336074, 0.893436, 0.298037,
		34.334969, 27.128376, 48.175415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419842, 26.349831, 48.763107>,  <34.570221, 26.502972, 47.966789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419842, 26.349831, 48.763107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.219860, 26.669331, 48.629211>,  <34.099873, 26.861031, 48.548874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.219860, 26.669331, 48.629211>,  <34.419842, 26.349831, 48.763107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219860, 26.669331, 48.629211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668349, -0.110031, 0.735665,
		0.550780, 0.591518, 0.588854,
		-0.499951, 0.798749, -0.334737,
		34.069874, 26.908955, 48.528790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252464, 26.703997, 49.418011>,  <34.419842, 26.349831, 48.763107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252464, 26.703997, 49.418011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.007450, 26.851549, 49.138374>,  <33.860443, 26.940081, 48.970592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.007450, 26.851549, 49.138374>,  <34.252464, 26.703997, 49.418011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007450, 26.851549, 49.138374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776157, -0.113288, 0.620279,
		0.149610, 0.922547, 0.355702,
		-0.612533, 0.368881, -0.699092,
		33.823689, 26.962214, 48.928646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898342, 27.193169, 49.840691>,  <34.252464, 26.703997, 49.418011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898342, 27.193169, 49.840691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.671917, 27.122303, 49.518650>,  <33.536064, 27.079784, 49.325424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.671917, 27.122303, 49.518650>,  <33.898342, 27.193169, 49.840691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671917, 27.122303, 49.518650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818160, 0.001142, 0.574989,
		-0.100947, 0.984181, -0.145594,
		-0.566060, -0.177163, -0.805102,
		33.502098, 27.069155, 49.277119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324940, 27.630985, 49.780735>,  <33.898342, 27.193169, 49.840691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324940, 27.630985, 49.780735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.190678, 27.319435, 49.568813>,  <33.110119, 27.132505, 49.441662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.190678, 27.319435, 49.568813>,  <33.324940, 27.630985, 49.780735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190678, 27.319435, 49.568813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770614, -0.096411, 0.629967,
		-0.541744, 0.619726, -0.567850,
		-0.335660, -0.778874, -0.529800,
		33.089981, 27.085773, 49.409874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521149, 27.631382, 49.645706>,  <33.324940, 27.630985, 49.780735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521149, 27.631382, 49.645706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.716331, 27.282665, 49.663048>,  <32.833443, 27.073435, 49.673450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.716331, 27.282665, 49.663048>,  <32.521149, 27.631382, 49.645706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716331, 27.282665, 49.663048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459063, -0.214070, 0.862227,
		-0.742401, -0.440630, -0.504664,
		0.487956, -0.871791, 0.043351,
		32.862717, 27.021128, 49.676052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143162, 28.294239, 49.891079>,  <32.521149, 27.631382, 49.645706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143162, 28.294239, 49.891079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.091434, 28.467516, 50.247868>,  <32.060398, 28.571482, 50.461941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.091434, 28.467516, 50.247868>,  <32.143162, 28.294239, 49.891079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091434, 28.467516, 50.247868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066672, 0.893695, -0.443694,
		-0.989359, -0.116849, -0.086690,
		-0.129320, 0.433192, 0.891976,
		32.052639, 28.597473, 50.515461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528067, 28.661770, 50.121437>,  <32.143162, 28.294239, 49.891079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528067, 28.661770, 50.121437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.728891, 28.931469, 50.338074>,  <31.849386, 29.093288, 50.468056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.728891, 28.931469, 50.338074>,  <31.528067, 28.661770, 50.121437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728891, 28.931469, 50.338074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107770, 0.670138, -0.734371,
		-0.858089, 0.310334, 0.409116,
		0.502064, 0.674246, 0.541594,
		31.879511, 29.133743, 50.500553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102396, 29.312300, 50.132381>,  <31.528067, 28.661770, 50.121437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102396, 29.312300, 50.132381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.484268, 29.394621, 50.218388>,  <31.713392, 29.444014, 50.269989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.484268, 29.394621, 50.218388>,  <31.102396, 29.312300, 50.132381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484268, 29.394621, 50.218388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014772, 0.688751, -0.724848,
		-0.297266, 0.695174, 0.654497,
		0.954680, 0.205804, 0.215012,
		31.770672, 29.456362, 50.282890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145462, 30.001596, 50.096165>,  <31.102396, 29.312300, 50.132381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145462, 30.001596, 50.096165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.533075, 29.903086, 50.103302>,  <31.765644, 29.843979, 50.107586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.533075, 29.903086, 50.103302>,  <31.145462, 30.001596, 50.096165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533075, 29.903086, 50.103302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201880, 0.748593, -0.631548,
		0.142178, 0.615594, 0.775132,
		0.969036, -0.246276, 0.017843,
		31.823786, 29.829203, 50.108654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478004, 30.627916, 50.083710>,  <31.145462, 30.001596, 50.096165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478004, 30.627916, 50.083710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.773678, 30.380121, 49.977997>,  <31.951082, 30.231445, 49.914570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.773678, 30.380121, 49.977997>,  <31.478004, 30.627916, 50.083710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773678, 30.380121, 49.977997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333347, 0.677474, -0.655674,
		0.585222, 0.396568, 0.707283,
		0.739185, -0.619486, -0.264278,
		31.995434, 30.194275, 49.898712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017845, 31.067980, 50.041416>,  <31.478004, 30.627916, 50.083710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017845, 31.067980, 50.041416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.115303, 30.748129, 49.821877>,  <32.173779, 30.556219, 49.690151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.115303, 30.748129, 49.821877>,  <32.017845, 31.067980, 50.041416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115303, 30.748129, 49.821877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238531, 0.597925, -0.765238,
		0.940075, 0.055528, 0.336416,
		0.243643, -0.799627, -0.548849,
		32.188396, 30.508242, 49.657223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644573, 31.237503, 49.668514>,  <32.017845, 31.067980, 50.041416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644573, 31.237503, 49.668514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.467060, 30.939104, 49.469902>,  <32.360550, 30.760065, 49.350735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.467060, 30.939104, 49.469902>,  <32.644573, 31.237503, 49.668514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467060, 30.939104, 49.469902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004328, 0.555861, -0.831264,
		0.896123, -0.366753, -0.249912,
		-0.443785, -0.745996, -0.496533,
		32.333923, 30.715305, 49.320942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330402, 31.373592, 49.917946>,  <32.644573, 31.237503, 49.668514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330402, 31.373592, 49.917946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.340591, 31.751238, 50.049397>,  <33.346706, 31.977825, 50.128265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.340591, 31.751238, 50.049397>,  <33.330402, 31.373592, 49.917946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340591, 31.751238, 50.049397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211724, -0.316181, 0.924772,
		0.976997, -0.093136, 0.191837,
		0.025475, 0.944116, 0.328627,
		33.348232, 32.034473, 50.147984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725468, 31.315578, 50.503529>,  <33.330402, 31.373592, 49.917946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725468, 31.315578, 50.503529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.519737, 31.651253, 50.574219>,  <33.396297, 31.852657, 50.616631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.519737, 31.651253, 50.574219>,  <33.725468, 31.315578, 50.503529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519737, 31.651253, 50.574219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046740, -0.233192, 0.971307,
		0.856319, 0.491309, 0.159161,
		-0.514327, 0.839188, 0.176723,
		33.365440, 31.903009, 50.627235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847332, 31.455231, 51.170322>,  <33.725468, 31.315578, 50.503529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847332, 31.455231, 51.170322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.520687, 31.681414, 51.124001>,  <33.324699, 31.817123, 51.096207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.520687, 31.681414, 51.124001>,  <33.847332, 31.455231, 51.170322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520687, 31.681414, 51.124001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239352, -0.149181, 0.959404,
		0.525226, 0.811174, 0.257165,
		-0.816608, 0.565457, -0.115802,
		33.275703, 31.851051, 51.089260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862827, 31.904423, 51.705887>,  <33.847332, 31.455231, 51.170322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862827, 31.904423, 51.705887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.479240, 31.913074, 51.592812>,  <33.249088, 31.918266, 51.524967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.479240, 31.913074, 51.592812>,  <33.862827, 31.904423, 51.705887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479240, 31.913074, 51.592812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283174, -0.121733, 0.951312,
		-0.013834, 0.992327, 0.122863,
		-0.958969, 0.021631, -0.282685,
		33.191551, 31.919563, 51.508007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480663, 32.420692, 52.074047>,  <33.862827, 31.904423, 51.705887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480663, 32.420692, 52.074047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.217842, 32.136936, 51.972031>,  <33.060150, 31.966682, 51.910820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.217842, 32.136936, 51.972031>,  <33.480663, 32.420692, 52.074047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217842, 32.136936, 51.972031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316280, -0.047688, 0.947467,
		-0.684287, 0.703200, -0.193032,
		-0.657053, -0.709391, -0.255040,
		33.020725, 31.924118, 51.895519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931797, 32.584476, 52.414532>,  <33.480663, 32.420692, 52.074047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931797, 32.584476, 52.414532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.856083, 32.200260, 52.333012>,  <32.810654, 31.969730, 52.284100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.856083, 32.200260, 52.333012>,  <32.931797, 32.584476, 52.414532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856083, 32.200260, 52.333012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507494, -0.081982, 0.857746,
		-0.840607, 0.265788, -0.471950,
		-0.189288, -0.960539, -0.203800,
		32.799297, 31.912098, 52.271870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250587, 32.455524, 52.660885>,  <32.931797, 32.584476, 52.414532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250587, 32.455524, 52.660885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.418045, 32.093155, 52.635494>,  <32.518520, 31.875732, 52.620258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.418045, 32.093155, 52.635494>,  <32.250587, 32.455524, 52.660885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418045, 32.093155, 52.635494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518870, -0.295971, 0.801982,
		-0.745325, -0.302811, -0.593966,
		0.418646, -0.905929, -0.063475,
		32.543640, 31.821377, 52.616451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774940, 32.083496, 52.939789>,  <32.250587, 32.455524, 52.660885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774940, 32.083496, 52.939789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.087212, 31.834051, 52.956066>,  <32.274574, 31.684385, 52.965832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.087212, 31.834051, 52.956066>,  <31.774940, 32.083496, 52.939789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087212, 31.834051, 52.956066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398374, -0.446431, 0.801247,
		-0.481500, -0.641725, -0.596948,
		0.780677, -0.623609, 0.040690,
		32.321415, 31.646969, 52.968273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493979, 31.661613, 53.266151>,  <31.774940, 32.083496, 52.939789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493979, 31.661613, 53.266151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.876427, 31.546539, 53.288334>,  <32.105896, 31.477495, 53.301643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.876427, 31.546539, 53.288334>,  <31.493979, 31.661613, 53.266151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876427, 31.546539, 53.288334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218382, -0.573615, 0.789477,
		-0.195312, -0.766944, -0.611269,
		0.956118, -0.287685, 0.055453,
		32.163261, 31.460234, 53.304970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.727261, 37.455475, 38.813225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092495, 37.321026, 38.905567>,  <37.311634, 37.240356, 38.960972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092495, 37.321026, 38.905567>,  <36.727261, 37.455475, 38.813225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092495, 37.321026, 38.905567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362969, -0.411965, 0.835787,
		-0.185822, -0.846939, -0.498161,
		0.913085, -0.336125, 0.230860,
		37.366421, 37.220188, 38.974827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714939, 36.831017, 38.636887>,  <36.727261, 37.455475, 38.813225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714939, 36.831017, 38.636887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954044, 36.936497, 38.939713>,  <37.097507, 36.999783, 39.121407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954044, 36.936497, 38.939713>,  <36.714939, 36.831017, 38.636887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954044, 36.936497, 38.939713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590100, -0.494486, 0.638174,
		0.542640, -0.828219, -0.139979,
		0.597766, 0.263697, 0.757060,
		37.133373, 37.015606, 39.166832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958767, 36.194302, 38.942669>,  <36.714939, 36.831017, 38.636887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958767, 36.194302, 38.942669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000168, 36.470543, 39.228985>,  <37.025009, 36.636288, 39.400776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000168, 36.470543, 39.228985>,  <36.958767, 36.194302, 38.942669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000168, 36.470543, 39.228985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559565, -0.554540, 0.615932,
		0.822298, -0.464283, 0.329040,
		0.103501, 0.690599, 0.715793,
		37.031219, 36.677723, 39.443722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341881, 35.890064, 39.573231>,  <36.958767, 36.194302, 38.942669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341881, 35.890064, 39.573231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151077, 36.212986, 39.712215>,  <37.036594, 36.406738, 39.795609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151077, 36.212986, 39.712215>,  <37.341881, 35.890064, 39.573231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151077, 36.212986, 39.712215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518956, -0.577774, 0.629970,
		0.709332, 0.120179, 0.694554,
		-0.477005, 0.807301, 0.347466,
		37.007977, 36.455177, 39.816456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419395, 35.851723, 40.295460>,  <37.341881, 35.890064, 39.573231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419395, 35.851723, 40.295460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095337, 36.071587, 40.213932>,  <36.900902, 36.203503, 40.165016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095337, 36.071587, 40.213932>,  <37.419395, 35.851723, 40.295460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095337, 36.071587, 40.213932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482456, -0.427624, 0.764443,
		0.333023, 0.717644, 0.611623,
		-0.810143, 0.549658, -0.203823,
		36.852295, 36.236485, 40.152786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187244, 36.016190, 40.974144>,  <37.419395, 35.851723, 40.295460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187244, 36.016190, 40.974144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853325, 36.132378, 40.787071>,  <36.652973, 36.202091, 40.674828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853325, 36.132378, 40.787071>,  <37.187244, 36.016190, 40.974144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853325, 36.132378, 40.787071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548964, -0.503576, 0.667120,
		-0.041737, 0.813657, 0.579845,
		-0.834803, 0.290470, -0.467686,
		36.602882, 36.219521, 40.646767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741730, 36.291779, 41.442543>,  <37.187244, 36.016190, 40.974144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741730, 36.291779, 41.442543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509884, 36.161488, 41.143761>,  <36.370777, 36.083313, 40.964489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509884, 36.161488, 41.143761>,  <36.741730, 36.291779, 41.442543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509884, 36.161488, 41.143761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595850, -0.455884, 0.661160,
		-0.555883, 0.828295, 0.070154,
		-0.579618, -0.325726, -0.746958,
		36.335999, 36.063770, 40.919674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092552, 36.459419, 41.707283>,  <36.741730, 36.291779, 41.442543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092552, 36.459419, 41.707283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029346, 36.202465, 41.407318>,  <35.991421, 36.048294, 41.227341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029346, 36.202465, 41.407318>,  <36.092552, 36.459419, 41.707283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029346, 36.202465, 41.407318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606439, -0.536215, 0.587116,
		-0.779270, 0.547552, -0.304835,
		-0.158019, -0.642386, -0.749914,
		35.981941, 36.009750, 41.182343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435783, 36.450932, 41.654976>,  <36.092552, 36.459419, 41.707283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435783, 36.450932, 41.654976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526016, 36.103500, 41.478489>,  <35.580158, 35.895042, 41.372597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526016, 36.103500, 41.478489>,  <35.435783, 36.450932, 41.654976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526016, 36.103500, 41.478489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473061, -0.493580, 0.729789,
		-0.851660, 0.044096, -0.522236,
		0.225584, -0.868582, -0.441222,
		35.593693, 35.842926, 41.346123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869648, 36.047508, 41.633198>,  <35.435783, 36.450932, 41.654976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869648, 36.047508, 41.633198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143997, 35.759350, 41.591980>,  <35.308605, 35.586456, 41.567249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143997, 35.759350, 41.591980>,  <34.869648, 36.047508, 41.633198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143997, 35.759350, 41.591980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475540, -0.550857, 0.685870,
		-0.550857, -0.421417, -0.720392,
		-0.685870, 0.720392, 0.103043,
		35.349758, 35.543232, 41.561066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424110, 35.404491, 41.599194>,  <34.869648, 36.047508, 41.633198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424110, 35.404491, 41.599194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798599, 35.306198, 41.699677>,  <35.023293, 35.247223, 41.759968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798599, 35.306198, 41.699677>,  <34.424110, 35.404491, 41.599194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798599, 35.306198, 41.699677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344252, -0.497777, 0.796058,
		-0.070575, -0.831765, -0.550624,
		0.936221, -0.245735, 0.251207,
		35.079464, 35.232479, 41.775040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464420, 34.606354, 41.689762>,  <34.424110, 35.404491, 41.599194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464420, 34.606354, 41.689762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746258, 34.802238, 41.895180>,  <34.915359, 34.919769, 42.018433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746258, 34.802238, 41.895180>,  <34.464420, 34.606354, 41.689762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746258, 34.802238, 41.895180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285105, -0.467359, 0.836834,
		0.649818, -0.736043, -0.189679,
		0.704594, 0.489711, 0.513547,
		34.957638, 34.949150, 42.049244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244411, 33.793839, 41.583134>,  <34.464420, 34.606354, 41.689762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244411, 33.793839, 41.583134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847904, 33.744267, 41.565132>,  <33.610001, 33.714523, 41.554333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847904, 33.744267, 41.565132>,  <34.244411, 33.793839, 41.583134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847904, 33.744267, 41.565132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016218, 0.224113, -0.974428,
		0.130846, -0.966651, -0.220146,
		-0.991270, -0.123930, -0.045001,
		33.550522, 33.707088, 41.551632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151936, 33.497189, 40.864403>,  <34.244411, 33.793839, 41.583134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151936, 33.497189, 40.864403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790447, 33.623493, 40.980049>,  <33.573555, 33.699276, 41.049438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790447, 33.623493, 40.980049>,  <34.151936, 33.497189, 40.864403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790447, 33.623493, 40.980049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133354, 0.434093, -0.890943,
		-0.406832, -0.843715, -0.350189,
		-0.903717, 0.315765, 0.289116,
		33.519333, 33.718224, 41.066784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741081, 33.330212, 40.260147>,  <34.151936, 33.497189, 40.864403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741081, 33.330212, 40.260147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538757, 33.617630, 40.451080>,  <33.417362, 33.790081, 40.565639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538757, 33.617630, 40.451080>,  <33.741081, 33.330212, 40.260147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538757, 33.617630, 40.451080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093475, 0.504426, -0.858380,
		-0.857566, -0.478796, -0.187978,
		-0.505810, 0.718546, 0.477334,
		33.387016, 33.833195, 40.594280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037441, 33.470478, 39.959824>,  <33.741081, 33.330212, 40.260147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037441, 33.470478, 39.959824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133926, 33.803062, 40.160019>,  <33.191818, 34.002613, 40.280136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133926, 33.803062, 40.160019>,  <33.037441, 33.470478, 39.959824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133926, 33.803062, 40.160019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278231, 0.553320, -0.785127,
		-0.929733, 0.050133, 0.364807,
		0.241216, 0.831459, 0.500491,
		33.206291, 34.052502, 40.310165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403774, 33.840523, 39.959747>,  <33.037441, 33.470478, 39.959824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403774, 33.840523, 39.959747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693974, 34.105053, 40.035957>,  <32.868095, 34.263771, 40.081684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693974, 34.105053, 40.035957>,  <32.403774, 33.840523, 39.959747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693974, 34.105053, 40.035957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257882, 0.517891, -0.815651,
		-0.638079, 0.542623, 0.546274,
		0.725501, 0.661324, 0.190523,
		32.911625, 34.303452, 40.093113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138119, 34.565460, 39.972618>,  <32.403774, 33.840523, 39.959747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138119, 34.565460, 39.972618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524197, 34.574295, 39.868385>,  <32.755844, 34.579594, 39.805847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524197, 34.574295, 39.868385>,  <32.138119, 34.565460, 39.972618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524197, 34.574295, 39.868385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237750, 0.489152, -0.839170,
		0.108932, 0.871919, 0.477379,
		0.965199, 0.022085, -0.260583,
		32.813755, 34.580921, 39.790211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157227, 35.268585, 39.723316>,  <32.138119, 34.565460, 39.972618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157227, 35.268585, 39.723316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494099, 35.087383, 39.606342>,  <32.696220, 34.978661, 39.536160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494099, 35.087383, 39.606342>,  <32.157227, 35.268585, 39.723316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494099, 35.087383, 39.606342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202034, 0.237717, -0.950091,
		0.499915, 0.859229, 0.108677,
		0.842180, -0.453008, -0.292432,
		32.746754, 34.951481, 39.518612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466061, 35.731152, 39.195934>,  <32.157227, 35.268585, 39.723316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466061, 35.731152, 39.195934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662586, 35.388851, 39.131077>,  <32.780502, 35.183472, 39.092163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662586, 35.388851, 39.131077>,  <32.466061, 35.731152, 39.195934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662586, 35.388851, 39.131077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082497, 0.139598, -0.986766,
		0.867064, 0.498192, -0.002010,
		0.491318, -0.855755, -0.162139,
		32.809982, 35.132126, 39.082436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096409, 35.797661, 38.610981>,  <32.466061, 35.731152, 39.195934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096409, 35.797661, 38.610981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979504, 35.416294, 38.640854>,  <32.909359, 35.187473, 38.658775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979504, 35.416294, 38.640854>,  <33.096409, 35.797661, 38.610981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979504, 35.416294, 38.640854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009083, -0.075318, -0.997118,
		0.956295, -0.292098, 0.013353,
		-0.292262, -0.953418, 0.074679,
		32.891827, 35.130268, 38.663258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516293, 35.362141, 38.057823>,  <33.096409, 35.797661, 38.610981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516293, 35.362141, 38.057823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172195, 35.179943, 38.149475>,  <32.965736, 35.070625, 38.204468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172195, 35.179943, 38.149475>,  <33.516293, 35.362141, 38.057823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172195, 35.179943, 38.149475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133628, -0.232272, -0.963428,
		0.492059, -0.859402, 0.138944,
		-0.860245, -0.455497, 0.229131,
		32.914124, 35.043293, 38.218216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492229, 34.820286, 37.610416>,  <33.516293, 35.362141, 38.057823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492229, 34.820286, 37.610416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121967, 34.869301, 37.753605>,  <32.899811, 34.898708, 37.839520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121967, 34.869301, 37.753605>,  <33.492229, 34.820286, 37.610416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121967, 34.869301, 37.753605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377905, -0.252713, -0.890687,
		-0.018677, -0.959751, 0.280232,
		-0.925656, 0.122537, 0.357975,
		32.844269, 34.906063, 37.860996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711811, 34.156860, 37.880886>,  <33.492229, 34.820286, 37.610416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711811, 34.156860, 37.880886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851105, 33.783245, 37.912651>,  <33.934681, 33.559078, 37.931709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851105, 33.783245, 37.912651>,  <33.711811, 34.156860, 37.880886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851105, 33.783245, 37.912651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815532, 0.260102, -0.516966,
		0.462209, 0.244793, 0.852314,
		0.348238, -0.934036, 0.079415,
		33.955578, 33.503033, 37.936474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342617, 34.178406, 38.116657>,  <33.711811, 34.156860, 37.880886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342617, 34.178406, 38.116657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352657, 33.849453, 37.889301>,  <34.358681, 33.652081, 37.752888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352657, 33.849453, 37.889301>,  <34.342617, 34.178406, 38.116657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352657, 33.849453, 37.889301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818174, 0.343597, -0.461011,
		0.574422, -0.453469, 0.681473,
		0.025098, -0.822379, -0.568386,
		34.360188, 33.602737, 37.718784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906712, 33.588104, 38.234535>,  <34.342617, 34.178406, 38.116657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906712, 33.588104, 38.234535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736984, 33.738987, 37.905254>,  <34.635147, 33.829517, 37.707687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736984, 33.738987, 37.905254>,  <34.906712, 33.588104, 38.234535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736984, 33.738987, 37.905254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863063, 0.443556, -0.241620,
		0.273995, -0.813001, -0.513766,
		-0.424321, 0.377210, -0.823204,
		34.609688, 33.852150, 37.658295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248707, 33.209183, 37.626877>,  <34.906712, 33.588104, 38.234535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248707, 33.209183, 37.626877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142570, 33.594795, 37.620605>,  <35.078888, 33.826160, 37.616840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142570, 33.594795, 37.620605>,  <35.248707, 33.209183, 37.626877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142570, 33.594795, 37.620605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950223, 0.258720, -0.173611,
		-0.163309, -0.060966, -0.984690,
		-0.265343, 0.964027, -0.015680,
		35.062969, 33.884003, 37.615902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652439, 32.615520, 37.864849>,  <35.248707, 33.209183, 37.626877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652439, 32.615520, 37.864849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656452, 32.525032, 38.254459>,  <35.658859, 32.470741, 38.488224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656452, 32.525032, 38.254459>,  <35.652439, 32.615520, 37.864849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656452, 32.525032, 38.254459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278782, 0.936085, 0.214536,
		-0.960302, 0.269389, 0.072456,
		0.010031, -0.226219, 0.974025,
		35.659462, 32.457165, 38.546665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026154, 32.911388, 37.290443>,  <35.652439, 32.615520, 37.864849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026154, 32.911388, 37.290443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417999, 32.989262, 37.270638>,  <36.653107, 33.035988, 37.258755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417999, 32.989262, 37.270638>,  <36.026154, 32.911388, 37.290443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417999, 32.989262, 37.270638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094971, -0.231649, 0.968152,
		0.177018, -0.953119, -0.245416,
		0.979615, 0.194688, -0.049513,
		36.711884, 33.047668, 37.255783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425007, 32.372040, 37.627247>,  <36.026154, 32.911388, 37.290443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425007, 32.372040, 37.627247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632553, 32.713379, 37.647537>,  <36.757080, 32.918182, 37.659710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632553, 32.713379, 37.647537>,  <36.425007, 32.372040, 37.627247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632553, 32.713379, 37.647537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102513, -0.121017, 0.987343,
		0.848687, -0.507098, -0.150271,
		0.518865, 0.853350, 0.050722,
		36.788212, 32.969383, 37.662754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878899, 32.186535, 38.067730>,  <36.425007, 32.372040, 37.627247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878899, 32.186535, 38.067730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916271, 32.584778, 38.070000>,  <36.938694, 32.823723, 38.071362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916271, 32.584778, 38.070000>,  <36.878899, 32.186535, 38.067730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916271, 32.584778, 38.070000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213217, -0.025573, 0.976670,
		0.972527, -0.090041, -0.214670,
		0.093430, 0.995610, 0.005672,
		36.944302, 32.883461, 38.071701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457855, 32.290359, 38.580173>,  <36.878899, 32.186535, 38.067730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457855, 32.290359, 38.580173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274837, 32.644367, 38.545788>,  <37.165028, 32.856773, 38.525154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274837, 32.644367, 38.545788>,  <37.457855, 32.290359, 38.580173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274837, 32.644367, 38.545788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071386, 0.132928, 0.988551,
		0.886317, 0.446168, -0.123998,
		-0.457543, 0.885022, -0.085967,
		37.137573, 32.909874, 38.519997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845020, 32.792526, 38.969692>,  <37.457855, 32.290359, 38.580173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845020, 32.792526, 38.969692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485790, 32.962425, 38.923988>,  <37.270252, 33.064365, 38.896564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485790, 32.962425, 38.923988>,  <37.845020, 32.792526, 38.969692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485790, 32.962425, 38.923988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052214, 0.154990, 0.986535,
		0.436737, 0.891947, -0.117014,
		-0.898073, 0.424746, -0.114262,
		37.216370, 33.089848, 38.889709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890484, 33.362701, 39.417091>,  <37.845020, 32.792526, 38.969692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890484, 33.362701, 39.417091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506615, 33.270863, 39.352207>,  <37.276295, 33.215759, 39.313278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506615, 33.270863, 39.352207>,  <37.890484, 33.362701, 39.417091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506615, 33.270863, 39.352207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227915, 0.297693, 0.927057,
		-0.164561, 0.926641, -0.338016,
		-0.959674, -0.229596, -0.162207,
		37.218712, 33.201984, 39.303547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489742, 33.900043, 39.751667>,  <37.890484, 33.362701, 39.417091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489742, 33.900043, 39.751667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226837, 33.601555, 39.709412>,  <37.069096, 33.422462, 39.684059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226837, 33.601555, 39.709412>,  <37.489742, 33.900043, 39.751667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226837, 33.601555, 39.709412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332123, 0.160964, 0.929400,
		-0.676535, 0.645944, -0.353633,
		-0.657262, -0.746222, -0.105635,
		37.029659, 33.377689, 39.677719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751110, 34.060120, 40.071121>,  <37.489742, 33.900043, 39.751667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751110, 34.060120, 40.071121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782337, 33.662636, 40.038990>,  <36.801071, 33.424145, 40.019711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782337, 33.662636, 40.038990>,  <36.751110, 34.060120, 40.071121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782337, 33.662636, 40.038990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391405, -0.104656, 0.914248,
		-0.916901, -0.039929, -0.397112,
		0.078065, -0.993707, -0.080331,
		36.805756, 33.364525, 40.014893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045963, 33.807087, 40.305515>,  <36.751110, 34.060120, 40.071121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045963, 33.807087, 40.305515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333691, 33.534172, 40.357765>,  <36.506329, 33.370422, 40.389114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333691, 33.534172, 40.357765>,  <36.045963, 33.807087, 40.305515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333691, 33.534172, 40.357765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266989, -0.097933, 0.958711,
		-0.641324, -0.724495, -0.252608,
		0.719319, -0.682288, 0.130626,
		36.549488, 33.329487, 40.396954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646538, 33.313999, 40.648987>,  <36.045963, 33.807087, 40.305515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646538, 33.313999, 40.648987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024220, 33.201035, 40.716782>,  <36.250828, 33.133255, 40.757458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024220, 33.201035, 40.716782>,  <35.646538, 33.313999, 40.648987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024220, 33.201035, 40.716782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257272, -0.311096, 0.914893,
		-0.205649, -0.907449, -0.366394,
		0.944203, -0.282410, 0.169484,
		36.307480, 33.116310, 40.767628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579948, 32.677528, 41.025475>,  <35.646538, 33.313999, 40.648987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579948, 32.677528, 41.025475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975521, 32.717518, 41.069321>,  <36.212864, 32.741512, 41.095627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975521, 32.717518, 41.069321>,  <35.579948, 32.677528, 41.025475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975521, 32.717518, 41.069321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055154, -0.438149, 0.897209,
		0.137729, -0.893325, -0.427786,
		0.988933, 0.099977, 0.109616,
		36.272202, 32.747513, 41.102207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823181, 32.054577, 41.202793>,  <35.579948, 32.677528, 41.025475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823181, 32.054577, 41.202793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089218, 32.324661, 41.330383>,  <36.248840, 32.486710, 41.406937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089218, 32.324661, 41.330383>,  <35.823181, 32.054577, 41.202793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089218, 32.324661, 41.330383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055274, -0.470489, 0.880673,
		0.744714, -0.568096, -0.350240,
		0.665091, 0.675209, 0.318979,
		36.288746, 32.527225, 41.426079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386551, 31.684471, 41.560978>,  <35.823181, 32.054577, 41.202793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386551, 31.684471, 41.560978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420124, 32.059193, 41.696835>,  <36.440266, 32.284027, 41.778347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420124, 32.059193, 41.696835>,  <36.386551, 31.684471, 41.560978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420124, 32.059193, 41.696835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052502, -0.344524, 0.937309,
		0.995088, -0.060837, -0.078100,
		0.083930, 0.936805, 0.339637,
		36.445305, 32.340233, 41.798725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915783, 31.631628, 42.031578>,  <36.386551, 31.684471, 41.560978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915783, 31.631628, 42.031578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707653, 31.953552, 42.145798>,  <36.582775, 32.146706, 42.214329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707653, 31.953552, 42.145798>,  <36.915783, 31.631628, 42.031578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707653, 31.953552, 42.145798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002254, -0.333085, 0.942894,
		0.853963, 0.491259, 0.171500,
		-0.520329, 0.804810, 0.285550,
		36.551556, 32.194996, 42.231464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235706, 32.007431, 42.664566>,  <36.915783, 31.631628, 42.031578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235706, 32.007431, 42.664566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860577, 32.146049, 42.656662>,  <36.635498, 32.229221, 42.651920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860577, 32.146049, 42.656662>,  <37.235706, 32.007431, 42.664566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860577, 32.146049, 42.656662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079526, -0.159104, 0.984053,
		0.337875, 0.924442, 0.176771,
		-0.937825, 0.346545, -0.019760,
		36.579227, 32.250011, 42.650734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121544, 32.438629, 43.237877>,  <37.235706, 32.007431, 42.664566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121544, 32.438629, 43.237877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737198, 32.354099, 43.166229>,  <36.506592, 32.303383, 43.123241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737198, 32.354099, 43.166229>,  <37.121544, 32.438629, 43.237877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737198, 32.354099, 43.166229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124720, -0.247358, 0.960864,
		-0.247358, 0.945599, 0.211321,
		-0.960864, -0.211321, -0.179121,
		36.448940, 32.290703, 43.112492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869606, 32.471592, 43.929707>,  <37.121544, 32.438629, 43.237877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869606, 32.471592, 43.929707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579601, 32.286552, 43.725605>,  <36.405598, 32.175529, 43.603146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579601, 32.286552, 43.725605>,  <36.869606, 32.471592, 43.929707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579601, 32.286552, 43.725605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236882, -0.528169, 0.815429,
		-0.646720, 0.712064, 0.273346,
		-0.725011, -0.462603, -0.510253,
		36.362099, 32.147770, 43.572529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316998, 32.644608, 44.197819>,  <36.869606, 32.471592, 43.929707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316998, 32.644608, 44.197819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197815, 32.295231, 44.043766>,  <36.126305, 32.085606, 43.951336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197815, 32.295231, 44.043766>,  <36.316998, 32.644608, 44.197819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197815, 32.295231, 44.043766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234083, -0.324284, 0.916540,
		-0.925435, 0.363237, -0.107836,
		-0.297952, -0.873441, -0.385132,
		36.108429, 32.033199, 43.928226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677010, 32.471119, 44.540386>,  <36.316998, 32.644608, 44.197819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677010, 32.471119, 44.540386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840832, 32.133804, 44.401173>,  <35.939125, 31.931416, 44.317646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840832, 32.133804, 44.401173>,  <35.677010, 32.471119, 44.540386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840832, 32.133804, 44.401173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313538, -0.488373, 0.814363,
		-0.856712, -0.224408, -0.464420,
		0.409560, -0.843287, -0.348034,
		35.963699, 31.880817, 44.296761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173271, 31.987169, 44.676373>,  <35.677010, 32.471119, 44.540386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173271, 31.987169, 44.676373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519947, 31.789497, 44.649147>,  <35.727955, 31.670895, 44.632812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519947, 31.789497, 44.649147>,  <35.173271, 31.987169, 44.676373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519947, 31.789497, 44.649147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258967, -0.562333, 0.785313,
		-0.426358, -0.663000, -0.615346,
		0.866692, -0.494179, -0.068060,
		35.779953, 31.641243, 44.628731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005241, 31.381548, 45.012230>,  <35.173271, 31.987169, 44.676373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005241, 31.381548, 45.012230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401051, 31.325745, 44.997356>,  <35.638535, 31.292263, 44.988430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401051, 31.325745, 44.997356>,  <35.005241, 31.381548, 45.012230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401051, 31.325745, 44.997356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058987, -0.625722, 0.777813,
		-0.131779, -0.767470, -0.627395,
		0.989523, -0.139507, -0.037186,
		35.697906, 31.283892, 44.986202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115826, 30.722155, 45.164806>,  <35.005241, 31.381548, 45.012230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115826, 30.722155, 45.164806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492752, 30.854378, 45.185833>,  <35.718910, 30.933712, 45.198448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492752, 30.854378, 45.185833>,  <35.115826, 30.722155, 45.164806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492752, 30.854378, 45.185833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239998, -0.776760, 0.582275,
		0.233311, -0.536073, -0.811291,
		0.942320, 0.330559, 0.052570,
		35.775448, 30.953545, 45.201603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397671, 30.198675, 45.067818>,  <35.115826, 30.722155, 45.164806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397671, 30.198675, 45.067818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689159, 30.419453, 45.229961>,  <35.864052, 30.551920, 45.327248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689159, 30.419453, 45.229961>,  <35.397671, 30.198675, 45.067818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689159, 30.419453, 45.229961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212980, -0.745245, 0.631862,
		0.650846, -0.374120, -0.660632,
		0.728724, 0.551946, 0.405359,
		35.907776, 30.585037, 45.351570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031433, 29.727497, 45.126938>,  <35.397671, 30.198675, 45.067818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031433, 29.727497, 45.126938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014835, 30.015575, 45.403950>,  <36.004879, 30.188423, 45.570156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014835, 30.015575, 45.403950>,  <36.031433, 29.727497, 45.126938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014835, 30.015575, 45.403950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045870, -0.691022, 0.721377,
		0.998085, 0.061697, -0.004364,
		-0.041492, 0.720196, 0.692529,
		36.002388, 30.231634, 45.611710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574272, 29.569504, 45.514713>,  <36.031433, 29.727497, 45.126938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574272, 29.569504, 45.514713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346512, 29.800066, 45.749161>,  <36.209854, 29.938404, 45.889828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346512, 29.800066, 45.749161>,  <36.574272, 29.569504, 45.514713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346512, 29.800066, 45.749161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151567, -0.627155, 0.764005,
		0.807965, 0.523863, 0.269739,
		-0.569403, 0.576406, 0.586120,
		36.175690, 29.972988, 45.924995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820465, 29.633379, 46.221645>,  <36.574272, 29.569504, 45.514713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820465, 29.633379, 46.221645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435059, 29.733503, 46.259560>,  <36.203815, 29.793579, 46.282310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435059, 29.733503, 46.259560>,  <36.820465, 29.633379, 46.221645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435059, 29.733503, 46.259560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085918, -0.624644, 0.776168,
		0.253494, 0.739705, 0.623360,
		-0.963514, 0.250312, 0.094790,
		36.146004, 29.808598, 46.287998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372143, 29.633793, 46.765232>,  <36.820465, 29.633379, 46.221645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372143, 29.633793, 46.765232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733952, 29.510473, 46.883080>,  <37.951035, 29.436481, 46.953789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733952, 29.510473, 46.883080>,  <37.372143, 29.633793, 46.765232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733952, 29.510473, 46.883080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403259, 0.393735, -0.826048,
		0.138668, 0.865982, 0.480465,
		0.904518, -0.308298, 0.294617,
		38.005306, 29.417984, 46.971466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810059, 30.214577, 46.744133>,  <37.372143, 29.633793, 46.765232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810059, 30.214577, 46.744133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060814, 29.903288, 46.729252>,  <38.211266, 29.716515, 46.720322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060814, 29.903288, 46.729252>,  <37.810059, 30.214577, 46.744133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060814, 29.903288, 46.729252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416349, 0.374980, -0.828278,
		0.658535, 0.503745, 0.559082,
		0.626885, -0.778223, -0.037204,
		38.248878, 29.669821, 46.718090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598072, 30.435820, 46.752701>,  <37.810059, 30.214577, 46.744133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598072, 30.435820, 46.752701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570930, 30.079174, 46.573627>,  <38.554646, 29.865187, 46.466183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570930, 30.079174, 46.573627>,  <38.598072, 30.435820, 46.752701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570930, 30.079174, 46.573627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406646, 0.385037, -0.828483,
		0.911063, -0.238260, 0.336448,
		-0.067850, -0.891616, -0.447681,
		38.550575, 29.811689, 46.439323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194954, 30.418034, 46.406681>,  <38.598072, 30.435820, 46.752701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194954, 30.418034, 46.406681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999947, 30.138798, 46.196918>,  <38.882942, 29.971256, 46.071060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999947, 30.138798, 46.196918>,  <39.194954, 30.418034, 46.406681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999947, 30.138798, 46.196918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390309, 0.363011, -0.846099,
		0.781014, -0.617169, 0.095495,
		-0.487520, -0.698088, -0.524403,
		38.853691, 29.929371, 46.039597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634949, 30.138525, 45.923206>,  <39.194954, 30.418034, 46.406681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634949, 30.138525, 45.923206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268055, 30.062090, 45.783401>,  <39.047916, 30.016230, 45.699520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268055, 30.062090, 45.783401>,  <39.634949, 30.138525, 45.923206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268055, 30.062090, 45.783401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327360, 0.138318, -0.934721,
		0.226959, -0.971778, -0.064316,
		-0.917238, -0.191089, -0.349514,
		38.992882, 30.004765, 45.678547>
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
