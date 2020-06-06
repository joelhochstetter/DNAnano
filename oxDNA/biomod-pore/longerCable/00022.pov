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
	<23.904257, 34.767799, 34.972099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.265263, 34.930573, 34.915707>,  <24.481865, 35.028236, 34.881870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.265263, 34.930573, 34.915707>,  <23.904257, 34.767799, 34.972099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.265263, 34.930573, 34.915707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430225, -0.837158, 0.337747,
		0.019416, -0.365475, -0.930619,
		0.902513, 0.406933, -0.140982,
		24.536016, 35.052654, 34.873413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.963682, 34.415775, 35.621418>,  <23.904257, 34.767799, 34.972099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.963682, 34.415775, 35.621418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334038, 34.542198, 35.704205>,  <24.556252, 34.618053, 35.753876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334038, 34.542198, 35.704205>,  <23.963682, 34.415775, 35.621418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.334038, 34.542198, 35.704205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188504, -0.088277, 0.978097,
		0.327406, -0.944624, -0.022157,
		0.925890, 0.316058, 0.206967,
		24.611805, 34.637016, 35.766296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.477659, 33.986561, 35.962044>,  <23.963682, 34.415775, 35.621418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.477659, 33.986561, 35.962044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.596895, 34.336239, 36.115364>,  <24.668438, 34.546047, 36.207355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.596895, 34.336239, 36.115364>,  <24.477659, 33.986561, 35.962044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.596895, 34.336239, 36.115364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210225, -0.331567, 0.919711,
		0.931100, -0.354737, 0.084941,
		0.298092, 0.874200, 0.383297,
		24.686323, 34.598499, 36.230354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.120213, 34.174351, 36.310417>,  <24.477659, 33.986561, 35.962044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.120213, 34.174351, 36.310417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009380, 34.053173, 35.945683>,  <24.942881, 33.980465, 35.726841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009380, 34.053173, 35.945683>,  <25.120213, 34.174351, 36.310417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009380, 34.053173, 35.945683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233660, -0.941752, 0.241880,
		-0.932003, -0.146040, 0.331728,
		-0.277081, -0.302945, -0.911839,
		24.926256, 33.962288, 35.672131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.705460, 34.237076, 35.833054>,  <25.120213, 34.174351, 36.310417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.705460, 34.237076, 35.833054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097319, 34.296604, 35.886936>,  <26.332434, 34.332321, 35.919266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097319, 34.296604, 35.886936>,  <25.705460, 34.237076, 35.833054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097319, 34.296604, 35.886936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074014, -0.355996, 0.931552,
		0.186586, -0.922562, -0.337736,
		0.979647, 0.148818, 0.134706,
		26.391212, 34.341248, 35.927349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.036100, 33.624924, 36.004478>,  <25.705460, 34.237076, 35.833054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.036100, 33.624924, 36.004478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270157, 33.919273, 36.140774>,  <26.410591, 34.095882, 36.222549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270157, 33.919273, 36.140774>,  <26.036100, 33.624924, 36.004478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270157, 33.919273, 36.140774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059992, -0.379748, 0.923143,
		0.808711, -0.560608, -0.178059,
		0.585139, 0.735873, 0.340739,
		26.445698, 34.140034, 36.242996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667379, 33.269493, 36.318836>,  <26.036100, 33.624924, 36.004478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667379, 33.269493, 36.318836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606758, 33.619114, 36.503471>,  <26.570385, 33.828888, 36.614250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606758, 33.619114, 36.503471>,  <26.667379, 33.269493, 36.318836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606758, 33.619114, 36.503471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000955, -0.467107, 0.884200,
		0.988449, 0.133563, 0.071627,
		-0.151554, 0.874055, 0.461584,
		26.561293, 33.881329, 36.641945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201578, 33.320225, 36.923927>,  <26.667379, 33.269493, 36.318836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201578, 33.320225, 36.923927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850397, 33.505299, 36.973118>,  <26.639688, 33.616341, 37.002632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850397, 33.505299, 36.973118>,  <27.201578, 33.320225, 36.923927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850397, 33.505299, 36.973118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102572, -0.432707, 0.895681,
		0.467628, 0.773752, 0.427355,
		-0.877954, 0.462680, 0.122980,
		26.587011, 33.644104, 37.010014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110126, 33.508846, 37.712051>,  <27.201578, 33.320225, 36.923927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110126, 33.508846, 37.712051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746117, 33.532749, 37.547962>,  <26.527710, 33.547089, 37.449509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746117, 33.532749, 37.547962>,  <27.110126, 33.508846, 37.712051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746117, 33.532749, 37.547962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389800, -0.460142, 0.797700,
		-0.141093, 0.885832, 0.442034,
		-0.910027, 0.059755, -0.410220,
		26.473108, 33.550674, 37.424896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724627, 33.884701, 38.164196>,  <27.110126, 33.508846, 37.712051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.724627, 33.884701, 38.164196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465832, 33.657684, 37.960510>,  <26.310555, 33.521473, 37.838299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465832, 33.657684, 37.960510>,  <26.724627, 33.884701, 38.164196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465832, 33.657684, 37.960510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203166, -0.515367, 0.832539,
		-0.734935, 0.642098, 0.218130,
		-0.646988, -0.567545, -0.509214,
		26.271736, 33.487419, 37.807747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.162075, 33.775188, 38.560333>,  <26.724627, 33.884701, 38.164196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.162075, 33.775188, 38.560333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154741, 33.462868, 38.310528>,  <26.150341, 33.275475, 38.160645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154741, 33.462868, 38.310528>,  <26.162075, 33.775188, 38.560333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154741, 33.462868, 38.310528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215918, -0.606785, 0.764978,
		-0.976239, 0.148868, -0.157464,
		-0.018334, -0.780801, -0.624511,
		26.149240, 33.228626, 38.123173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.516479, 33.457817, 38.744518>,  <26.162075, 33.775188, 38.560333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.516479, 33.457817, 38.744518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781916, 33.211193, 38.575050>,  <25.941177, 33.063217, 38.473370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781916, 33.211193, 38.575050>,  <25.516479, 33.457817, 38.744518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781916, 33.211193, 38.575050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208199, -0.696169, 0.687024,
		-0.718547, -0.367689, -0.590335,
		0.663584, -0.616566, -0.423678,
		25.980993, 33.026222, 38.447948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.171280, 32.817295, 38.720570>,  <25.516479, 33.457817, 38.744518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.171280, 32.817295, 38.720570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568090, 32.767750, 38.711277>,  <25.806177, 32.738022, 38.705700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568090, 32.767750, 38.711277>,  <25.171280, 32.817295, 38.720570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.568090, 32.767750, 38.711277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094581, -0.853605, 0.512263,
		-0.083282, -0.505982, -0.858514,
		0.992028, -0.123861, -0.023234,
		25.865698, 32.730591, 38.704308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.265751, 32.062794, 38.559479>,  <25.171280, 32.817295, 38.720570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.265751, 32.062794, 38.559479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593288, 32.228130, 38.718800>,  <25.789810, 32.327332, 38.814392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593288, 32.228130, 38.718800>,  <25.265751, 32.062794, 38.559479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.593288, 32.228130, 38.718800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166296, -0.834948, 0.524602,
		0.549401, -0.363331, -0.752429,
		0.818843, 0.413343, 0.398301,
		25.838942, 32.352135, 38.838291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941275, 31.679623, 38.402550>,  <25.265751, 32.062794, 38.559479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941275, 31.679623, 38.402550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951017, 31.852390, 38.763184>,  <25.956863, 31.956051, 38.979565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951017, 31.852390, 38.763184>,  <25.941275, 31.679623, 38.402550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.951017, 31.852390, 38.763184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148646, -0.893392, 0.423976,
		0.988590, 0.123691, -0.085963,
		0.024356, 0.431917, 0.901584,
		25.958324, 31.981966, 39.033657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494078, 32.086384, 37.903553>,  <25.941275, 31.679623, 38.402550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494078, 32.086384, 37.903553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256880, 32.375126, 38.046261>,  <26.114561, 32.548370, 38.131886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256880, 32.375126, 38.046261>,  <26.494078, 32.086384, 37.903553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256880, 32.375126, 38.046261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010855, 0.435875, -0.899942,
		-0.805132, -0.537535, -0.250636,
		-0.592996, 0.721851, 0.356772,
		26.078981, 32.591682, 38.153294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.953562, 32.242966, 37.328476>,  <26.494078, 32.086384, 37.903553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.953562, 32.242966, 37.328476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993902, 32.558540, 37.570930>,  <26.018106, 32.747887, 37.716404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993902, 32.558540, 37.570930>,  <25.953562, 32.242966, 37.328476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993902, 32.558540, 37.570930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016505, 0.607834, -0.793893,
		-0.994765, 0.090070, 0.048280,
		0.100852, 0.788940, 0.606138,
		26.024158, 32.795223, 37.752773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418207, 32.826221, 37.171803>,  <25.953562, 32.242966, 37.328476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418207, 32.826221, 37.171803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704165, 33.020294, 37.373207>,  <25.875738, 33.136738, 37.494049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704165, 33.020294, 37.373207>,  <25.418207, 32.826221, 37.171803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.704165, 33.020294, 37.373207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028043, 0.699617, -0.713967,
		-0.698673, 0.524529, 0.486544,
		0.714891, 0.485186, 0.503513,
		25.918633, 33.165852, 37.524261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.224672, 33.451763, 37.055523>,  <25.418207, 32.826221, 37.171803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.224672, 33.451763, 37.055523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611944, 33.475819, 37.152695>,  <25.844307, 33.490253, 37.210999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611944, 33.475819, 37.152695>,  <25.224672, 33.451763, 37.055523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.611944, 33.475819, 37.152695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120486, 0.738778, -0.663091,
		-0.219347, 0.671260, 0.708023,
		0.968179, 0.060140, 0.242926,
		25.902397, 33.493862, 37.225571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.323883, 34.087498, 37.084347>,  <25.224672, 33.451763, 37.055523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.323883, 34.087498, 37.084347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705114, 33.968693, 37.060936>,  <25.933853, 33.897411, 37.046890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705114, 33.968693, 37.060936>,  <25.323883, 34.087498, 37.084347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.705114, 33.968693, 37.060936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154095, 0.642413, -0.750707,
		0.260565, 0.706465, 0.658038,
		0.953079, -0.297009, -0.058528,
		25.991037, 33.879589, 37.043377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849117, 34.614212, 37.223770>,  <25.323883, 34.087498, 37.084347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849117, 34.614212, 37.223770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025173, 34.351192, 36.979179>,  <26.130806, 34.193378, 36.832424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025173, 34.351192, 36.979179>,  <25.849117, 34.614212, 37.223770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025173, 34.351192, 36.979179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266668, 0.745982, -0.610245,
		0.857418, 0.105532, 0.503684,
		0.440139, -0.657552, -0.611476,
		26.157215, 34.153927, 36.795738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379957, 35.052475, 37.642075>,  <25.849117, 34.614212, 37.223770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379957, 35.052475, 37.642075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461159, 34.681171, 37.766727>,  <26.509880, 34.458389, 37.841518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461159, 34.681171, 37.766727>,  <26.379957, 35.052475, 37.642075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461159, 34.681171, 37.766727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821150, -0.011977, -0.570587,
		0.533387, 0.371733, 0.759811,
		0.203005, -0.928263, 0.311637,
		26.522060, 34.402691, 37.860218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941893, 35.119228, 37.967056>,  <26.379957, 35.052475, 37.642075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941893, 35.119228, 37.967056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930622, 34.757648, 37.796375>,  <26.923859, 34.540699, 37.693966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930622, 34.757648, 37.796375>,  <26.941893, 35.119228, 37.967056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930622, 34.757648, 37.796375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912929, 0.150595, -0.379318,
		0.407145, -0.400237, 0.821001,
		-0.028178, -0.903953, -0.426702,
		26.922169, 34.486462, 37.668365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683683, 34.793728, 37.994125>,  <26.941893, 35.119228, 37.967056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683683, 34.793728, 37.994125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891865, 34.544949, 37.760094>,  <28.016773, 34.395683, 37.619675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891865, 34.544949, 37.760094>,  <27.683683, 34.793728, 37.994125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891865, 34.544949, 37.760094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530084, 0.301844, -0.792402,
		0.669432, 0.722547, -0.172587,
		0.520453, -0.621944, -0.585075,
		28.048000, 34.358364, 37.584572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688101, 35.087730, 37.295517>,  <27.683683, 34.793728, 37.994125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688101, 35.087730, 37.295517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760689, 34.694870, 37.275742>,  <27.804241, 34.459152, 37.263878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760689, 34.694870, 37.275742>,  <27.688101, 35.087730, 37.295517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760689, 34.694870, 37.275742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401256, -0.028052, -0.915536,
		0.897810, 0.185980, -0.399186,
		0.181469, -0.982153, -0.049440,
		27.815130, 34.400223, 37.260910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705505, 35.009861, 36.594154>,  <27.688101, 35.087730, 37.295517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705505, 35.009861, 36.594154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648825, 34.639732, 36.734840>,  <27.614817, 34.417656, 36.819252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648825, 34.639732, 36.734840>,  <27.705505, 35.009861, 36.594154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648825, 34.639732, 36.734840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592501, -0.205350, -0.778957,
		0.793008, -0.318774, -0.519154,
		-0.141703, -0.925319, 0.351718,
		27.606314, 34.362137, 36.840355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526915, 34.656116, 35.993042>,  <27.705505, 35.009861, 36.594154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526915, 34.656116, 35.993042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412123, 34.432201, 36.303986>,  <27.343248, 34.297852, 36.490551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412123, 34.432201, 36.303986>,  <27.526915, 34.656116, 35.993042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412123, 34.432201, 36.303986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661743, -0.470895, -0.583398,
		0.692632, -0.681833, -0.235298,
		-0.286980, -0.559787, 0.777355,
		27.326029, 34.264267, 36.537193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924433, 34.579567, 35.292183>,  <27.526915, 34.656116, 35.993042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924433, 34.579567, 35.292183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102734, 34.665569, 34.944603>,  <28.209715, 34.717171, 34.736053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102734, 34.665569, 34.944603>,  <27.924433, 34.579567, 35.292183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102734, 34.665569, 34.944603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874814, 0.101135, 0.473785,
		0.189747, -0.971363, -0.143006,
		0.445754, 0.215002, -0.868952,
		28.236460, 34.730068, 34.683918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670732, 34.383354, 35.375370>,  <27.924433, 34.579567, 35.292183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670732, 34.383354, 35.375370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976625, 34.488110, 35.139881>,  <29.160162, 34.550964, 34.998589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976625, 34.488110, 35.139881>,  <28.670732, 34.383354, 35.375370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976625, 34.488110, 35.139881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274086, 0.959108, 0.070630,
		0.583149, 0.107348, 0.805242,
		0.764732, 0.261893, -0.588725,
		29.206045, 34.566677, 34.963264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183186, 34.911980, 35.777294>,  <28.670732, 34.383354, 35.375370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183186, 34.911980, 35.777294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153095, 34.912155, 35.378429>,  <29.135042, 34.912258, 35.139111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153095, 34.912155, 35.378429>,  <29.183186, 34.911980, 35.777294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153095, 34.912155, 35.378429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280105, 0.959728, 0.021549,
		0.957018, 0.280932, -0.072074,
		-0.075225, 0.000434, -0.997167,
		29.130527, 34.912285, 35.079281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632524, 35.366222, 35.383202>,  <29.183186, 34.911980, 35.777294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632524, 35.366222, 35.383202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273071, 35.318203, 35.214420>,  <29.057400, 35.289391, 35.113152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273071, 35.318203, 35.214420>,  <29.632524, 35.366222, 35.383202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273071, 35.318203, 35.214420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237769, 0.941588, 0.238491,
		0.368675, 0.314643, -0.874688,
		-0.898635, -0.120048, -0.421952,
		29.003481, 35.282188, 35.087833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932878, 35.684471, 35.566433>,  <29.632524, 35.366222, 35.383202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932878, 35.684471, 35.566433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071602, 35.782249, 35.204224>,  <29.154837, 35.840916, 34.986897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071602, 35.782249, 35.204224>,  <28.932878, 35.684471, 35.566433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071602, 35.782249, 35.204224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714752, 0.694021, -0.086397,
		0.607332, 0.677187, 0.415410,
		0.346810, 0.244444, -0.905522,
		29.175646, 35.855583, 34.932568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053333, 36.386925, 35.516712>,  <28.932878, 35.684471, 35.566433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053333, 36.386925, 35.516712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967529, 36.241074, 35.154266>,  <28.916048, 36.153564, 34.936798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967529, 36.241074, 35.154266>,  <29.053333, 36.386925, 35.516712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967529, 36.241074, 35.154266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664315, 0.734543, -0.138318,
		0.716011, 0.572272, -0.399791,
		-0.214508, -0.364624, -0.906110,
		28.903177, 36.131687, 34.882435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990240, 36.301510, 36.236652>,  <29.053333, 36.386925, 35.516712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990240, 36.301510, 36.236652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866814, 36.297440, 36.617111>,  <28.792757, 36.294998, 36.845387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866814, 36.297440, 36.617111>,  <28.990240, 36.301510, 36.236652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866814, 36.297440, 36.617111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262690, 0.960143, 0.095493,
		-0.914211, 0.279323, -0.293594,
		-0.308566, -0.010177, 0.951149,
		28.774244, 36.294388, 36.902454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767319, 37.058247, 36.363441>,  <28.990240, 36.301510, 36.236652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767319, 37.058247, 36.363441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803118, 36.851002, 36.703690>,  <28.824596, 36.726654, 36.907837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803118, 36.851002, 36.703690>,  <28.767319, 37.058247, 36.363441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803118, 36.851002, 36.703690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344958, 0.817312, 0.461525,
		-0.934342, 0.252122, 0.251873,
		0.089498, -0.518108, 0.850620,
		28.829967, 36.695568, 36.958874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382015, 37.191685, 37.003899>,  <28.767319, 37.058247, 36.363441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382015, 37.191685, 37.003899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766699, 37.094360, 37.054363>,  <28.997509, 37.035965, 37.084644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766699, 37.094360, 37.054363>,  <28.382015, 37.191685, 37.003899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766699, 37.094360, 37.054363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240533, 0.969933, 0.037055,
		-0.131387, -0.005290, 0.991317,
		0.961707, -0.243313, 0.126164,
		29.055212, 37.021366, 37.092213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756720, 37.633495, 37.463165>,  <28.382015, 37.191685, 37.003899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756720, 37.633495, 37.463165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023794, 37.491295, 37.201534>,  <29.184038, 37.405975, 37.044556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023794, 37.491295, 37.201534>,  <28.756720, 37.633495, 37.463165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023794, 37.491295, 37.201534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385355, 0.916785, -0.104911,
		0.636945, -0.182005, 0.749116,
		0.667684, -0.355499, -0.654078,
		29.224100, 37.384644, 37.005310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407207, 37.886364, 37.007782>,  <28.756720, 37.633495, 37.463165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407207, 37.886364, 37.007782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446228, 38.258381, 37.149483>,  <29.469641, 38.481590, 37.234505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446228, 38.258381, 37.149483>,  <29.407207, 37.886364, 37.007782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446228, 38.258381, 37.149483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907940, 0.062610, -0.414397,
		-0.407588, 0.362068, -0.838319,
		0.097553, 0.930047, 0.354255,
		29.475494, 38.537395, 37.255760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483219, 38.496143, 36.462391>,  <29.407207, 37.886364, 37.007782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483219, 38.496143, 36.462391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667877, 38.550056, 36.813099>,  <29.778671, 38.582405, 37.023521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667877, 38.550056, 36.813099>,  <29.483219, 38.496143, 36.462391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667877, 38.550056, 36.813099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886629, -0.039114, -0.460825,
		-0.027817, 0.990103, -0.137558,
		0.461644, 0.134782, 0.876766,
		29.806370, 38.590492, 37.076130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858572, 39.175392, 36.666466>,  <29.483219, 38.496143, 36.462391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858572, 39.175392, 36.666466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042944, 38.836704, 36.772758>,  <30.153566, 38.633492, 36.836533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042944, 38.836704, 36.772758>,  <29.858572, 39.175392, 36.666466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042944, 38.836704, 36.772758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634829, 0.105364, -0.765434,
		0.620109, 0.521504, 0.586087,
		0.460929, -0.846719, 0.265729,
		30.181223, 38.582687, 36.852478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507517, 39.460991, 36.745399>,  <29.858572, 39.175392, 36.666466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507517, 39.460991, 36.745399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486588, 39.064915, 36.693577>,  <30.474030, 38.827271, 36.662483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486588, 39.064915, 36.693577>,  <30.507517, 39.460991, 36.745399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486588, 39.064915, 36.693577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536698, 0.081519, -0.839827,
		0.842150, -0.113474, 0.527168,
		-0.052324, -0.990191, -0.129552,
		30.470890, 38.767857, 36.654713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131987, 39.180748, 36.613132>,  <30.507517, 39.460991, 36.745399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131987, 39.180748, 36.613132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894257, 38.898682, 36.458458>,  <30.751619, 38.729443, 36.365654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894257, 38.898682, 36.458458>,  <31.131987, 39.180748, 36.613132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894257, 38.898682, 36.458458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549831, -0.005381, -0.835258,
		0.586912, -0.709025, 0.390919,
		-0.594323, -0.705163, -0.386686,
		30.715960, 38.687134, 36.342453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611492, 38.663605, 36.466202>,  <31.131987, 39.180748, 36.613132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611492, 38.663605, 36.466202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279808, 38.638630, 36.244026>,  <31.080797, 38.623646, 36.110722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279808, 38.638630, 36.244026>,  <31.611492, 38.663605, 36.466202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279808, 38.638630, 36.244026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543036, -0.325341, -0.774122,
		-0.132369, -0.943533, 0.303685,
		-0.829211, -0.062442, -0.555437,
		31.031044, 38.619896, 36.077396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669420, 37.993103, 36.202705>,  <31.611492, 38.663605, 36.466202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669420, 37.993103, 36.202705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436647, 38.220772, 35.970360>,  <31.296984, 38.357372, 35.830952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436647, 38.220772, 35.970360>,  <31.669420, 37.993103, 36.202705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436647, 38.220772, 35.970360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548948, -0.252063, -0.796944,
		-0.600011, -0.782630, -0.165762,
		-0.581930, 0.569170, -0.580864,
		31.262068, 38.391521, 35.796101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483334, 37.618538, 35.594147>,  <31.669420, 37.993103, 36.202705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483334, 37.618538, 35.594147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464943, 38.005962, 35.496349>,  <31.453909, 38.238419, 35.437672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464943, 38.005962, 35.496349>,  <31.483334, 37.618538, 35.594147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464943, 38.005962, 35.496349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313259, -0.218430, -0.924206,
		-0.948554, -0.119081, -0.293368,
		-0.045975, 0.968560, -0.244496,
		31.451151, 38.296532, 35.423000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276222, 37.591049, 34.874805>,  <31.483334, 37.618538, 35.594147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276222, 37.591049, 34.874805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439037, 37.952236, 34.929897>,  <31.536726, 38.168949, 34.962952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439037, 37.952236, 34.929897>,  <31.276222, 37.591049, 34.874805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439037, 37.952236, 34.929897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449562, -0.066786, -0.890749,
		-0.795119, 0.424487, -0.433124,
		0.407038, 0.902968, 0.137730,
		31.561150, 38.223125, 34.971218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864168, 38.071915, 34.579433>,  <31.276222, 37.591049, 34.874805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864168, 38.071915, 34.579433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259890, 38.127625, 34.596790>,  <31.497322, 38.161049, 34.607204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259890, 38.127625, 34.596790>,  <30.864168, 38.071915, 34.579433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259890, 38.127625, 34.596790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098547, -0.418725, -0.902750,
		-0.107558, 0.897370, -0.427970,
		0.989303, 0.139273, 0.043396,
		31.556681, 38.169407, 34.609810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123899, 38.002808, 33.909016>,  <30.864168, 38.071915, 34.579433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123899, 38.002808, 33.909016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464268, 37.959843, 34.114693>,  <31.668489, 37.934063, 34.238098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464268, 37.959843, 34.114693>,  <31.123899, 38.002808, 33.909016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464268, 37.959843, 34.114693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372390, -0.567040, -0.734705,
		0.370483, 0.816657, -0.442508,
		0.850922, -0.107410, 0.514194,
		31.719543, 37.927620, 34.268951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589058, 38.271885, 33.467697>,  <31.123899, 38.002808, 33.909016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589058, 38.271885, 33.467697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687553, 37.979218, 33.721951>,  <31.746651, 37.803616, 33.874504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687553, 37.979218, 33.721951>,  <31.589058, 38.271885, 33.467697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687553, 37.979218, 33.721951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200987, -0.603022, -0.771990,
		0.948141, 0.317846, -0.001431,
		0.246237, -0.731668, 0.635633,
		31.761425, 37.759716, 33.912640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211529, 37.916515, 33.058434>,  <31.589058, 38.271885, 33.467697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211529, 37.916515, 33.058434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032539, 37.689663, 33.335022>,  <31.925146, 37.553551, 33.500973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032539, 37.689663, 33.335022>,  <32.211529, 37.916515, 33.058434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032539, 37.689663, 33.335022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175465, -0.813845, -0.553957,
		0.876915, -0.126552, 0.463685,
		-0.447472, -0.567134, 0.691467,
		31.898298, 37.519524, 33.542461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703690, 37.391460, 33.405487>,  <32.211529, 37.916515, 33.058434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703690, 37.391460, 33.405487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324306, 37.264721, 33.407997>,  <32.096676, 37.188675, 33.409504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324306, 37.264721, 33.407997>,  <32.703690, 37.391460, 33.405487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324306, 37.264721, 33.407997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289524, -0.874367, -0.389433,
		0.128881, -0.367542, 0.921034,
		-0.948454, -0.316852, 0.006277,
		32.039772, 37.169666, 33.409882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624191, 36.695171, 33.661057>,  <32.703690, 37.391460, 33.405487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624191, 36.695171, 33.661057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323990, 36.782944, 33.411709>,  <32.143867, 36.835609, 33.262100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323990, 36.782944, 33.411709>,  <32.624191, 36.695171, 33.661057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323990, 36.782944, 33.411709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225019, -0.802050, -0.553247,
		-0.621375, -0.555485, 0.552567,
		-0.750507, 0.219436, -0.623368,
		32.098839, 36.848774, 33.224697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159000, 35.961971, 33.568329>,  <32.624191, 36.695171, 33.661057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159000, 35.961971, 33.568329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166485, 36.259338, 33.300903>,  <32.170975, 36.437759, 33.140446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166485, 36.259338, 33.300903>,  <32.159000, 35.961971, 33.568329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166485, 36.259338, 33.300903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096373, -0.666912, -0.738878,
		-0.995170, -0.050610, -0.084121,
		0.018707, 0.743416, -0.668568,
		32.172096, 36.482365, 33.100334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855169, 35.744457, 32.991264>,  <32.159000, 35.961971, 33.568329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855169, 35.744457, 32.991264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069653, 36.044235, 32.835926>,  <32.198341, 36.224102, 32.742722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069653, 36.044235, 32.835926>,  <31.855169, 35.744457, 32.991264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069653, 36.044235, 32.835926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240215, -0.576542, -0.780958,
		-0.809185, 0.325468, -0.489174,
		0.536206, 0.749446, -0.388347,
		32.230515, 36.269070, 32.719421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929726, 35.523220, 32.275459>,  <31.855169, 35.744457, 32.991264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929726, 35.523220, 32.275459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172657, 35.830360, 32.357010>,  <32.318417, 36.014645, 32.405941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172657, 35.830360, 32.357010>,  <31.929726, 35.523220, 32.275459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172657, 35.830360, 32.357010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536997, -0.207640, -0.817631,
		-0.585481, 0.606051, -0.538437,
		0.607327, 0.767846, 0.203878,
		32.354855, 36.060715, 32.418175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820471, 36.018051, 31.806501>,  <31.929726, 35.523220, 32.275459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820471, 36.018051, 31.806501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195541, 36.059464, 31.939194>,  <32.420582, 36.084312, 32.018810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195541, 36.059464, 31.939194>,  <31.820471, 36.018051, 31.806501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195541, 36.059464, 31.939194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344555, -0.152754, -0.926255,
		-0.045223, 0.982826, -0.178906,
		0.937676, 0.103531, 0.331730,
		32.476845, 36.090523, 32.038712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173523, 36.586216, 31.417763>,  <31.820471, 36.018051, 31.806501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173523, 36.586216, 31.417763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431416, 36.303288, 31.533707>,  <32.586151, 36.133530, 31.603273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431416, 36.303288, 31.533707>,  <32.173523, 36.586216, 31.417763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431416, 36.303288, 31.533707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290355, -0.124165, -0.948829,
		0.707114, 0.695905, 0.125320,
		0.644735, -0.707318, 0.289859,
		32.624836, 36.091091, 31.620665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961887, 36.873714, 31.405519>,  <32.173523, 36.586216, 31.417763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961887, 36.873714, 31.405519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911507, 36.491909, 31.297409>,  <32.881279, 36.262825, 31.232544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911507, 36.491909, 31.297409>,  <32.961887, 36.873714, 31.405519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911507, 36.491909, 31.297409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467606, 0.183158, -0.864753,
		0.874918, -0.235296, 0.423266,
		-0.125948, -0.954510, -0.270274,
		32.873722, 36.205555, 31.216328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677956, 36.718540, 31.308447>,  <32.961887, 36.873714, 31.405519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677956, 36.718540, 31.308447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988785, 36.501186, 31.181389>,  <34.175282, 36.370773, 31.105154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988785, 36.501186, 31.181389>,  <33.677956, 36.718540, 31.308447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988785, 36.501186, 31.181389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629347, 0.678214, 0.379405,
		0.009269, -0.494734, 0.868995,
		0.777069, -0.543383, -0.317646,
		34.221905, 36.338173, 31.086096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047367, 36.599869, 31.807003>,  <33.677956, 36.718540, 31.308447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047367, 36.599869, 31.807003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311371, 36.577408, 31.507341>,  <34.469772, 36.563931, 31.327545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311371, 36.577408, 31.507341>,  <34.047367, 36.599869, 31.807003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311371, 36.577408, 31.507341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380075, 0.885126, 0.268504,
		0.648018, -0.461951, 0.605536,
		0.660012, -0.056153, -0.749154,
		34.509373, 36.560562, 31.282595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622765, 36.938866, 31.969469>,  <34.047367, 36.599869, 31.807003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622765, 36.938866, 31.969469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690289, 36.918079, 31.575758>,  <34.730804, 36.905609, 31.339531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690289, 36.918079, 31.575758>,  <34.622765, 36.938866, 31.969469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690289, 36.918079, 31.575758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442836, 0.896145, 0.028637,
		0.880568, -0.440708, 0.174291,
		0.168810, -0.051966, -0.984278,
		34.740932, 36.902489, 31.280476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246532, 37.041183, 31.881901>,  <34.622765, 36.938866, 31.969469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246532, 37.041183, 31.881901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079334, 37.145226, 31.533733>,  <34.979015, 37.207649, 31.324833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079334, 37.145226, 31.533733>,  <35.246532, 37.041183, 31.881901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079334, 37.145226, 31.533733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485112, 0.873997, 0.028210,
		0.768081, -0.410459, -0.491502,
		-0.417992, 0.260101, -0.870419,
		34.953938, 37.223255, 31.272608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782997, 37.461704, 31.533154>,  <35.246532, 37.041183, 31.881901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782997, 37.461704, 31.533154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081837, 37.666149, 31.703148>,  <36.261139, 37.788815, 31.805145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081837, 37.666149, 31.703148>,  <35.782997, 37.461704, 31.533154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081837, 37.666149, 31.703148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646919, 0.706030, 0.288127,
		-0.152787, -0.490190, 0.858120,
		0.747095, 0.511112, 0.424986,
		36.305965, 37.819481, 31.830643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678947, 37.594803, 32.244404>,  <35.782997, 37.461704, 31.533154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678947, 37.594803, 32.244404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913078, 37.898479, 32.130543>,  <36.053555, 38.080685, 32.062225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913078, 37.898479, 32.130543>,  <35.678947, 37.594803, 32.244404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913078, 37.898479, 32.130543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739520, 0.643825, 0.196468,
		0.332422, 0.095508, 0.938282,
		0.585325, 0.759189, -0.284652,
		36.088676, 38.126236, 32.045147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162014, 37.606495, 32.628250>,  <35.678947, 37.594803, 32.244404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162014, 37.606495, 32.628250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877159, 37.488583, 32.883114>,  <34.706245, 37.417835, 33.036030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877159, 37.488583, 32.883114>,  <35.162014, 37.606495, 32.628250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877159, 37.488583, 32.883114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673971, -0.541143, 0.502919,
		0.196540, 0.787571, 0.584042,
		-0.712134, -0.294783, 0.637156,
		34.663517, 37.400146, 33.074261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604321, 37.688145, 33.299534>,  <35.162014, 37.606495, 32.628250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604321, 37.688145, 33.299534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280746, 37.459389, 33.354038>,  <35.086601, 37.322136, 33.386742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280746, 37.459389, 33.354038>,  <35.604321, 37.688145, 33.299534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280746, 37.459389, 33.354038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498714, -0.544813, 0.674139,
		-0.311294, 0.613292, 0.725927,
		-0.808938, -0.571885, 0.136260,
		35.038067, 37.287823, 33.394917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352581, 37.471481, 33.991756>,  <35.604321, 37.688145, 33.299534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352581, 37.471481, 33.991756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204662, 37.161026, 33.787457>,  <35.115910, 36.974754, 33.664879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204662, 37.161026, 33.787457>,  <35.352581, 37.471481, 33.991756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204662, 37.161026, 33.787457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501910, -0.629477, 0.593165,
		-0.781881, -0.036999, 0.622329,
		-0.369795, -0.776138, -0.510746,
		35.093723, 36.928185, 33.634232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831146, 36.922707, 34.220001>,  <35.352581, 37.471481, 33.991756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831146, 36.922707, 34.220001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155800, 37.072857, 34.040966>,  <36.350594, 37.162949, 33.933544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155800, 37.072857, 34.040966>,  <35.831146, 36.922707, 34.220001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155800, 37.072857, 34.040966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105355, -0.659581, -0.744213,
		-0.574583, 0.651187, -0.495792,
		0.811637, 0.375378, -0.447589,
		36.399292, 37.185471, 33.906689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682285, 36.937637, 33.512543>,  <35.831146, 36.922707, 34.220001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682285, 36.937637, 33.512543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079910, 36.980289, 33.521221>,  <36.318485, 37.005878, 33.526428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079910, 36.980289, 33.521221>,  <35.682285, 36.937637, 33.512543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079910, 36.980289, 33.521221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088693, -0.678518, -0.729210,
		-0.063033, 0.726804, -0.683946,
		0.994063, 0.106626, 0.021694,
		36.378128, 37.012276, 33.527729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807331, 37.012554, 32.823196>,  <35.682285, 36.937637, 33.512543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807331, 37.012554, 32.823196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168758, 36.914650, 32.963860>,  <36.385612, 36.855907, 33.048256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168758, 36.914650, 32.963860>,  <35.807331, 37.012554, 32.823196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168758, 36.914650, 32.963860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163217, -0.562231, -0.810714,
		0.396142, 0.789929, -0.468063,
		0.903566, -0.244762, 0.351654,
		36.439827, 36.841221, 33.069355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346657, 37.012024, 32.216766>,  <35.807331, 37.012554, 32.823196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346657, 37.012024, 32.216766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523506, 36.807598, 32.511612>,  <36.629616, 36.684940, 32.688519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523506, 36.807598, 32.511612>,  <36.346657, 37.012024, 32.216766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523506, 36.807598, 32.511612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285731, -0.698734, -0.655842,
		0.850225, 0.500580, -0.162900,
		0.442125, -0.511068, 0.737112,
		36.656143, 36.654278, 32.732746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931957, 36.703224, 31.892591>,  <36.346657, 37.012024, 32.216766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931957, 36.703224, 31.892591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902695, 36.469982, 32.216228>,  <36.885139, 36.330036, 32.410412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902695, 36.469982, 32.216228>,  <36.931957, 36.703224, 31.892591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902695, 36.469982, 32.216228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293744, -0.787878, -0.541260,
		0.953081, 0.198071, 0.228921,
		-0.073154, -0.583108, 0.809094,
		36.880749, 36.295052, 32.458958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415668, 36.315125, 31.757500>,  <36.931957, 36.703224, 31.892591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415668, 36.315125, 31.757500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196785, 36.107922, 32.020477>,  <37.065456, 35.983601, 32.178265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196785, 36.107922, 32.020477>,  <37.415668, 36.315125, 31.757500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196785, 36.107922, 32.020477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136635, -0.830228, -0.540418,
		0.825769, -0.205891, 0.525085,
		-0.547208, -0.518005, 0.657445,
		37.032623, 35.952518, 32.217712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690701, 35.665554, 31.781994>,  <37.415668, 36.315125, 31.757500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690701, 35.665554, 31.781994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328083, 35.592602, 31.934267>,  <37.110512, 35.548832, 32.025631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328083, 35.592602, 31.934267>,  <37.690701, 35.665554, 31.781994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328083, 35.592602, 31.934267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131645, -0.734714, -0.665481,
		0.401065, -0.653401, 0.642039,
		-0.906541, -0.182379, 0.380685,
		37.056122, 35.537888, 32.048473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552086, 34.893757, 31.931503>,  <37.690701, 35.665554, 31.781994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552086, 34.893757, 31.931503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201668, 35.081482, 31.887159>,  <36.991417, 35.194118, 31.860554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201668, 35.081482, 31.887159>,  <37.552086, 34.893757, 31.931503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201668, 35.081482, 31.887159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233574, -0.614082, -0.753887,
		-0.421886, -0.634545, 0.647583,
		-0.876045, 0.469313, -0.110860,
		36.938854, 35.222275, 31.853901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111862, 34.330334, 31.940628>,  <37.552086, 34.893757, 31.931503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111862, 34.330334, 31.940628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898560, 34.617287, 31.761297>,  <36.770576, 34.789459, 31.653698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898560, 34.617287, 31.761297>,  <37.111862, 34.330334, 31.940628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898560, 34.617287, 31.761297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146565, -0.600299, -0.786231,
		-0.833161, -0.353553, 0.425256,
		-0.533256, 0.717385, -0.448328,
		36.738583, 34.832500, 31.626799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549328, 34.028236, 31.511436>,  <37.111862, 34.330334, 31.940628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549328, 34.028236, 31.511436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541451, 34.383831, 31.328430>,  <36.536724, 34.597187, 31.218626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541451, 34.383831, 31.328430>,  <36.549328, 34.028236, 31.511436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541451, 34.383831, 31.328430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077427, -0.457588, -0.885787,
		-0.996804, 0.017984, 0.077841,
		-0.019689, 0.888982, -0.457518,
		36.535545, 34.650524, 31.191175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955524, 34.012768, 31.153181>,  <36.549328, 34.028236, 31.511436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955524, 34.012768, 31.153181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221111, 34.256626, 30.979986>,  <36.380463, 34.402943, 30.876070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221111, 34.256626, 30.979986>,  <35.955524, 34.012768, 31.153181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221111, 34.256626, 30.979986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134828, -0.471946, -0.871257,
		-0.735505, 0.636866, -0.231160,
		0.663969, 0.609646, -0.432986,
		36.420303, 34.439522, 30.850090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871609, 33.953156, 30.402285>,  <35.955524, 34.012768, 31.153181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871609, 33.953156, 30.402285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218479, 34.152313, 30.398233>,  <36.426601, 34.271809, 30.395803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218479, 34.152313, 30.398233>,  <35.871609, 33.953156, 30.402285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218479, 34.152313, 30.398233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123458, -0.234637, -0.964211,
		-0.482454, 0.834892, -0.264942,
		0.867177, 0.497897, -0.010127,
		36.478634, 34.301682, 30.395195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923176, 34.223217, 29.788425>,  <35.871609, 33.953156, 30.402285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923176, 34.223217, 29.788425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303318, 34.253803, 29.909081>,  <36.531403, 34.272156, 29.981474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303318, 34.253803, 29.909081>,  <35.923176, 34.223217, 29.788425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303318, 34.253803, 29.909081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310967, -0.269239, -0.911488,
		0.011520, 0.960033, -0.279649,
		0.950351, 0.076461, 0.301640,
		36.588425, 34.276741, 29.999573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261528, 34.513004, 29.228926>,  <35.923176, 34.223217, 29.788425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261528, 34.513004, 29.228926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555370, 34.350597, 29.446367>,  <36.731674, 34.253155, 29.576832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555370, 34.350597, 29.446367>,  <36.261528, 34.513004, 29.228926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555370, 34.350597, 29.446367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351589, -0.457439, -0.816783,
		0.580294, 0.791138, -0.193285,
		0.734605, -0.406017, 0.543604,
		36.775753, 34.228794, 29.609449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945171, 34.702736, 28.829479>,  <36.261528, 34.513004, 29.228926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945171, 34.702736, 28.829479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983772, 34.390766, 29.076838>,  <37.006931, 34.203587, 29.225252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983772, 34.390766, 29.076838>,  <36.945171, 34.702736, 28.829479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983772, 34.390766, 29.076838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421461, -0.530828, -0.735250,
		0.901697, 0.331581, 0.277481,
		0.096501, -0.779920, 0.618395,
		37.012722, 34.156792, 29.262356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694454, 34.471279, 28.783535>,  <36.945171, 34.702736, 28.829479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694454, 34.471279, 28.783535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457539, 34.176403, 28.913610>,  <37.315388, 33.999477, 28.991655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457539, 34.176403, 28.913610>,  <37.694454, 34.471279, 28.783535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457539, 34.176403, 28.913610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433445, -0.631742, -0.642673,
		0.679206, -0.239696, 0.693704,
		-0.592288, -0.737190, 0.325187,
		37.279854, 33.955246, 29.011166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000591, 33.972771, 28.485447>,  <37.694454, 34.471279, 28.783535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000591, 33.972771, 28.485447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668282, 33.797615, 28.622889>,  <37.468895, 33.692520, 28.705353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668282, 33.797615, 28.622889>,  <38.000591, 33.972771, 28.485447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668282, 33.797615, 28.622889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099896, -0.724591, -0.681900,
		0.547571, -0.532181, 0.645716,
		-0.830775, -0.437893, 0.343602,
		37.419048, 33.666248, 28.725969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202065, 33.315201, 28.649414>,  <38.000591, 33.972771, 28.485447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202065, 33.315201, 28.649414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810013, 33.318668, 28.570152>,  <37.574780, 33.320751, 28.522596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810013, 33.318668, 28.570152>,  <38.202065, 33.315201, 28.649414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810013, 33.318668, 28.570152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149139, -0.626387, -0.765112,
		-0.130756, -0.779464, 0.612649,
		-0.980133, 0.008673, -0.198153,
		37.515972, 33.321270, 28.510706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148819, 32.660328, 28.391644>,  <38.202065, 33.315201, 28.649414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148819, 32.660328, 28.391644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822575, 32.868015, 28.289515>,  <37.626827, 32.992630, 28.228237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822575, 32.868015, 28.289515>,  <38.148819, 32.660328, 28.391644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822575, 32.868015, 28.289515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081596, -0.540081, -0.837649,
		-0.572827, -0.662357, 0.482859,
		-0.815605, 0.519227, -0.255327,
		37.577892, 33.023781, 28.212917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659122, 32.159801, 28.122793>,  <38.148819, 32.660328, 28.391644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659122, 32.159801, 28.122793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539062, 32.505821, 27.962000>,  <37.467026, 32.713432, 27.865524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539062, 32.505821, 27.962000>,  <37.659122, 32.159801, 28.122793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539062, 32.505821, 27.962000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126176, -0.453718, -0.882168,
		-0.945511, -0.214061, 0.245332,
		-0.300149, 0.865054, -0.401986,
		37.449017, 32.765339, 27.841404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267250, 32.057194, 27.573137>,  <37.659122, 32.159801, 28.122793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267250, 32.057194, 27.573137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338913, 32.440250, 27.482967>,  <37.381912, 32.670086, 27.428865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338913, 32.440250, 27.482967>,  <37.267250, 32.057194, 27.573137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338913, 32.440250, 27.482967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060258, -0.218021, -0.974082,
		-0.981973, 0.188101, 0.018645,
		0.179161, 0.957645, -0.225426,
		37.392662, 32.727543, 27.415340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729122, 32.321842, 26.939102>,  <37.267250, 32.057194, 27.573137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729122, 32.321842, 26.939102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063133, 32.541119, 26.957907>,  <37.263542, 32.672684, 26.969189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063133, 32.541119, 26.957907>,  <36.729122, 32.321842, 26.939102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063133, 32.541119, 26.957907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150421, -0.145269, -0.977891,
		-0.529242, 0.823640, -0.203763,
		0.835031, 0.548191, 0.047010,
		37.313644, 32.705574, 26.972010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657280, 32.735294, 26.369682>,  <36.729122, 32.321842, 26.939102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657280, 32.735294, 26.369682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041077, 32.779503, 26.473343>,  <37.271355, 32.806026, 26.535540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041077, 32.779503, 26.473343>,  <36.657280, 32.735294, 26.369682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041077, 32.779503, 26.473343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262872, -0.020277, -0.964618,
		-0.101351, 0.993667, -0.048507,
		0.959493, 0.110517, 0.259153,
		37.328926, 32.812656, 26.551088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892296, 33.254017, 25.910965>,  <36.657280, 32.735294, 26.369682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892296, 33.254017, 25.910965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198742, 33.031334, 26.039425>,  <37.382610, 32.897724, 26.116501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198742, 33.031334, 26.039425>,  <36.892296, 33.254017, 25.910965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198742, 33.031334, 26.039425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305256, -0.124538, -0.944092,
		0.565580, 0.821319, 0.074528,
		0.766119, -0.556709, 0.321149,
		37.428577, 32.864323, 26.135769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341896, 33.501297, 25.452087>,  <36.892296, 33.254017, 25.910965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341896, 33.501297, 25.452087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535591, 33.185959, 25.603893>,  <37.651810, 32.996758, 25.694977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535591, 33.185959, 25.603893>,  <37.341896, 33.501297, 25.452087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535591, 33.185959, 25.603893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358254, -0.217078, -0.908037,
		0.798228, 0.575667, 0.177310,
		0.484237, -0.788343, 0.379513,
		37.680862, 32.949455, 25.717747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056038, 33.539215, 25.334137>,  <37.341896, 33.501297, 25.452087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056038, 33.539215, 25.334137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963593, 33.151630, 25.369225>,  <37.908123, 32.919079, 25.390278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963593, 33.151630, 25.369225>,  <38.056038, 33.539215, 25.334137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963593, 33.151630, 25.369225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377015, -0.172311, -0.910038,
		0.896909, -0.177252, 0.405137,
		-0.231115, -0.968964, 0.087721,
		37.894257, 32.860943, 25.395540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652981, 33.217621, 25.097578>,  <38.056038, 33.539215, 25.334137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652981, 33.217621, 25.097578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396473, 32.912350, 25.065725>,  <38.242569, 32.729187, 25.046614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396473, 32.912350, 25.065725>,  <38.652981, 33.217621, 25.097578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396473, 32.912350, 25.065725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603365, -0.437410, -0.666801,
		0.474052, -0.475646, 0.740969,
		-0.641268, -0.763173, -0.079633,
		38.204094, 32.683399, 25.041836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105415, 32.663208, 25.241606>,  <38.652981, 33.217621, 25.097578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105415, 32.663208, 25.241606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789505, 32.511921, 25.048439>,  <38.599960, 32.421150, 24.932539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789505, 32.511921, 25.048439>,  <39.105415, 32.663208, 25.241606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789505, 32.511921, 25.048439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599845, -0.640801, -0.479125,
		-0.128240, -0.668076, 0.732959,
		-0.789773, -0.378218, -0.482918,
		38.552574, 32.398457, 24.903564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094685, 31.931870, 25.202158>,  <39.105415, 32.663208, 25.241606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094685, 31.931870, 25.202158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826656, 31.949615, 24.905771>,  <38.665840, 31.960262, 24.727940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826656, 31.949615, 24.905771>,  <39.094685, 31.931870, 25.202158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826656, 31.949615, 24.905771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547077, -0.645159, -0.533363,
		-0.501704, -0.762759, 0.408033,
		-0.670074, 0.044365, -0.740968,
		38.625633, 31.962925, 24.683481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955811, 31.235765, 25.015125>,  <39.094685, 31.931870, 25.202158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955811, 31.235765, 25.015125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848804, 31.482664, 24.719170>,  <38.784599, 31.630804, 24.541595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848804, 31.482664, 24.719170>,  <38.955811, 31.235765, 25.015125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848804, 31.482664, 24.719170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460626, -0.592528, -0.660859,
		-0.846320, -0.517605, -0.125808,
		-0.267519, 0.617248, -0.739891,
		38.768547, 31.667839, 24.497202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672886, 30.794809, 24.511650>,  <38.955811, 31.235765, 25.015125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672886, 30.794809, 24.511650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791550, 31.118670, 24.309084>,  <38.862747, 31.312986, 24.187544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791550, 31.118670, 24.309084>,  <38.672886, 30.794809, 24.511650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791550, 31.118670, 24.309084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454938, -0.586065, -0.670491,
		-0.839656, -0.031479, -0.542205,
		0.296661, 0.809652, -0.506414,
		38.880547, 31.361565, 24.157160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632790, 30.564373, 23.790842>,  <38.672886, 30.794809, 24.511650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632790, 30.564373, 23.790842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826042, 30.910551, 23.737799>,  <38.941994, 31.118258, 23.705973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826042, 30.910551, 23.737799>,  <38.632790, 30.564373, 23.790842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826042, 30.910551, 23.737799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436948, -0.369576, -0.820055,
		-0.758723, 0.338252, -0.556710,
		0.483132, 0.865447, -0.132607,
		38.970982, 31.170185, 23.698017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496101, 30.760479, 23.070091>,  <38.632790, 30.564373, 23.790842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496101, 30.760479, 23.070091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819389, 30.967869, 23.181774>,  <39.013363, 31.092302, 23.248785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819389, 30.967869, 23.181774>,  <38.496101, 30.760479, 23.070091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819389, 30.967869, 23.181774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505730, -0.368227, -0.780158,
		-0.301679, 0.771747, -0.559818,
		0.808224, 0.518474, 0.279209,
		39.061855, 31.123411, 23.265537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707169, 31.143013, 22.508595>,  <38.496101, 30.760479, 23.070091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707169, 31.143013, 22.508595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032520, 31.071108, 22.729900>,  <39.227730, 31.027964, 22.862684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032520, 31.071108, 22.729900>,  <38.707169, 31.143013, 22.508595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032520, 31.071108, 22.729900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508770, -0.241350, -0.826379,
		0.282085, 0.953643, -0.104849,
		0.813376, -0.179765, 0.553267,
		39.276535, 31.017178, 22.895880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316250, 31.396572, 22.191189>,  <38.707169, 31.143013, 22.508595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316250, 31.396572, 22.191189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489548, 31.117163, 22.419001>,  <39.593525, 30.949516, 22.555687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489548, 31.117163, 22.419001>,  <39.316250, 31.396572, 22.191189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489548, 31.117163, 22.419001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634162, -0.212757, -0.743353,
		0.640421, 0.683226, 0.350802,
		0.433243, -0.698524, 0.569530,
		39.619522, 30.907606, 22.589859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090328, 31.502068, 22.126173>,  <39.316250, 31.396572, 22.191189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090328, 31.502068, 22.126173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073174, 31.135448, 22.285223>,  <40.062881, 30.915478, 22.380653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073174, 31.135448, 22.285223>,  <40.090328, 31.502068, 22.126173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073174, 31.135448, 22.285223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704573, -0.309915, -0.638381,
		0.708335, 0.252777, 0.659064,
		-0.042886, -0.916546, 0.397623,
		40.060307, 30.860485, 22.404510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814407, 31.394890, 22.340431>,  <40.090328, 31.502068, 22.126173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814407, 31.394890, 22.340431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619347, 31.045790, 22.349356>,  <40.502308, 30.836329, 22.354710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619347, 31.045790, 22.349356>,  <40.814407, 31.394890, 22.340431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619347, 31.045790, 22.349356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809650, -0.461661, -0.362403,
		0.326588, -0.158663, 0.931754,
		-0.487655, -0.872751, 0.022311,
		40.473049, 30.783964, 22.356049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292145, 30.856609, 22.597258>,  <40.814407, 31.394890, 22.340431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292145, 30.856609, 22.597258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010742, 30.624479, 22.433161>,  <40.841900, 30.485201, 22.334703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010742, 30.624479, 22.433161>,  <41.292145, 30.856609, 22.597258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010742, 30.624479, 22.433161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710480, -0.560447, -0.425578,
		0.017055, -0.590867, 0.806589,
		-0.703511, -0.580323, -0.410241,
		40.799690, 30.450382, 22.310089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518505, 30.141216, 22.686840>,  <41.292145, 30.856609, 22.597258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518505, 30.141216, 22.686840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249573, 30.123278, 22.391285>,  <41.088211, 30.112514, 22.213951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249573, 30.123278, 22.391285>,  <41.518505, 30.141216, 22.686840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249573, 30.123278, 22.391285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536948, -0.716649, -0.445084,
		-0.509564, -0.695990, 0.505907,
		-0.672332, -0.044847, -0.738890,
		41.047874, 30.109823, 22.169619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317104, 29.420130, 22.620953>,  <41.518505, 30.141216, 22.686840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317104, 29.420130, 22.620953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239712, 29.585752, 22.265173>,  <41.193275, 29.685127, 22.051704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239712, 29.585752, 22.265173>,  <41.317104, 29.420130, 22.620953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239712, 29.585752, 22.265173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453651, -0.766088, -0.455313,
		-0.869923, -0.491594, -0.039615,
		-0.193481, 0.414059, -0.889449,
		41.181667, 29.709970, 21.998339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214569, 28.857168, 22.143318>,  <41.317104, 29.420130, 22.620953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214569, 28.857168, 22.143318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294601, 29.166536, 21.902723>,  <41.342621, 29.352158, 21.758366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294601, 29.166536, 21.902723>,  <41.214569, 28.857168, 22.143318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294601, 29.166536, 21.902723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670399, -0.555764, -0.491621,
		-0.714515, -0.304873, -0.629699,
		0.200082, 0.773420, -0.601488,
		41.354626, 29.398563, 21.722277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118919, 28.546648, 21.434549>,  <41.214569, 28.857168, 22.143318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118919, 28.546648, 21.434549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336220, 28.874693, 21.362669>,  <41.466599, 29.071520, 21.319540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336220, 28.874693, 21.362669>,  <41.118919, 28.546648, 21.434549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336220, 28.874693, 21.362669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664958, -0.550963, -0.504253,
		-0.512554, 0.154442, -0.844651,
		0.543249, 0.820114, -0.179701,
		41.499195, 29.120728, 21.308758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395443, 28.438745, 20.701315>,  <41.118919, 28.546648, 21.434549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395443, 28.438745, 20.701315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603127, 28.736557, 20.869169>,  <41.727737, 28.915243, 20.969883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603127, 28.736557, 20.869169>,  <41.395443, 28.438745, 20.701315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603127, 28.736557, 20.869169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749630, -0.160925, -0.641995,
		-0.410453, 0.647905, -0.641675,
		0.519214, 0.744528, 0.419637,
		41.758892, 28.959915, 20.995060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660633, 28.944334, 20.227180>,  <41.395443, 28.438745, 20.701315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660633, 28.944334, 20.227180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910442, 28.949537, 20.539539>,  <42.060329, 28.952660, 20.726955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910442, 28.949537, 20.539539>,  <41.660633, 28.944334, 20.227180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910442, 28.949537, 20.539539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780848, -0.030448, -0.623979,
		0.015661, 0.999452, -0.029171,
		0.624525, 0.013006, 0.780896,
		42.097801, 28.953440, 20.773808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172222, 29.522200, 20.236982>,  <41.660633, 28.944334, 20.227180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172222, 29.522200, 20.236982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292912, 29.180113, 20.405539>,  <42.365326, 28.974861, 20.506672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292912, 29.180113, 20.405539>,  <42.172222, 29.522200, 20.236982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292912, 29.180113, 20.405539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671746, -0.122949, -0.730508,
		0.676552, 0.503476, 0.537391,
		0.301721, -0.855217, 0.421389,
		42.383427, 28.923548, 20.531956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788559, 29.457266, 20.608789>,  <42.172222, 29.522200, 20.236982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788559, 29.457266, 20.608789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179626, 29.454483, 20.524771>,  <43.414265, 29.452814, 20.474360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179626, 29.454483, 20.524771>,  <42.788559, 29.457266, 20.608789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179626, 29.454483, 20.524771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169074, -0.619662, -0.766442,
		-0.124827, 0.784838, -0.606998,
		0.977667, -0.006955, -0.210046,
		43.472927, 29.452396, 20.461758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810497, 29.542240, 19.917707>,  <42.788559, 29.457266, 20.608789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810497, 29.542240, 19.917707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185997, 29.416960, 19.975197>,  <43.411297, 29.341791, 20.009689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185997, 29.416960, 19.975197>,  <42.810497, 29.542240, 19.917707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185997, 29.416960, 19.975197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096601, -0.639517, -0.762684,
		0.330787, 0.702084, -0.630601,
		0.938748, -0.313203, 0.143722,
		43.467621, 29.322998, 20.018312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312531, 29.541788, 19.255693>,  <42.810497, 29.542240, 19.917707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312531, 29.541788, 19.255693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436844, 29.264191, 19.515474>,  <43.511433, 29.097633, 19.671343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436844, 29.264191, 19.515474>,  <43.312531, 29.541788, 19.255693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436844, 29.264191, 19.515474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007861, -0.681388, -0.731880,
		0.950449, 0.232561, -0.206308,
		0.310783, -0.693992, 0.649453,
		43.530079, 29.055992, 19.710310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901642, 29.345188, 18.974594>,  <43.312531, 29.541788, 19.255693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901642, 29.345188, 18.974594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723721, 29.081142, 19.216719>,  <43.616970, 28.922714, 19.361994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723721, 29.081142, 19.216719>,  <43.901642, 29.345188, 18.974594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723721, 29.081142, 19.216719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046131, -0.691839, -0.720577,
		0.894442, -0.292588, 0.338181,
		-0.444799, -0.660115, 0.605312,
		43.590282, 28.883108, 19.398312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415043, 28.938850, 19.397676>,  <43.901642, 29.345188, 18.974594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415043, 28.938850, 19.397676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.188580, 28.609200, 19.390919>,  <44.052704, 28.411409, 19.386864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.188580, 28.609200, 19.390919>,  <44.415043, 28.938850, 19.397676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.188580, 28.609200, 19.390919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824282, -0.565895, -0.017962,
		0.005241, -0.024096, 0.999696,
		-0.566156, -0.824125, -0.016896,
		44.018734, 28.361961, 19.385849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537460, 28.339607, 19.895021>,  <44.415043, 28.938850, 19.397676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537460, 28.339607, 19.895021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.373253, 28.204082, 19.556395>,  <44.274727, 28.122766, 19.353218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.373253, 28.204082, 19.556395>,  <44.537460, 28.339607, 19.895021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373253, 28.204082, 19.556395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702400, -0.709525, -0.056645,
		-0.581469, -0.617883, 0.529258,
		-0.410523, -0.338813, -0.846568,
		44.250095, 28.102438, 19.302423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613552, 28.756908, 20.456940>,  <44.537460, 28.339607, 19.895021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613552, 28.756908, 20.456940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277824, 28.925047, 20.319044>,  <44.076385, 29.025930, 20.236307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277824, 28.925047, 20.319044>,  <44.613552, 28.756908, 20.456940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277824, 28.925047, 20.319044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162889, 0.799463, 0.578210,
		0.518655, 0.429150, -0.739477,
		-0.839324, 0.420344, -0.344741,
		44.026028, 29.051149, 20.215622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784199, 29.455009, 20.239643>,  <44.613552, 28.756908, 20.456940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784199, 29.455009, 20.239643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387367, 29.449486, 20.289587>,  <44.149269, 29.446171, 20.319553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387367, 29.449486, 20.289587>,  <44.784199, 29.455009, 20.239643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.387367, 29.449486, 20.289587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063433, 0.802831, 0.592822,
		-0.108427, 0.596046, -0.795596,
		-0.992079, -0.013811, 0.124858,
		44.089745, 29.445343, 20.327044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.569786, 30.134054, 20.255018>,  <44.784199, 29.455009, 20.239643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.569786, 30.134054, 20.255018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266136, 29.946058, 20.435165>,  <44.083946, 29.833260, 20.543255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266136, 29.946058, 20.435165>,  <44.569786, 30.134054, 20.255018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266136, 29.946058, 20.435165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058024, 0.737978, 0.672325,
		-0.648350, 0.484248, -0.587491,
		-0.759128, -0.469991, 0.450370,
		44.038399, 29.805061, 20.570276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.183319, 30.742048, 20.489571>,  <44.569786, 30.134054, 20.255018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.183319, 30.742048, 20.489571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022587, 30.433161, 20.686430>,  <43.926147, 30.247829, 20.804546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022587, 30.433161, 20.686430>,  <44.183319, 30.742048, 20.489571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022587, 30.433161, 20.686430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084789, 0.566518, 0.819676,
		-0.911780, 0.287643, -0.293120,
		-0.401831, -0.772217, 0.492151,
		43.902039, 30.201496, 20.834076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449543, 30.932037, 20.786264>,  <44.183319, 30.742048, 20.489571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449543, 30.932037, 20.786264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615540, 30.637787, 21.000420>,  <43.715137, 30.461237, 21.128914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615540, 30.637787, 21.000420>,  <43.449543, 30.932037, 20.786264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615540, 30.637787, 21.000420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042165, 0.603370, 0.796346,
		-0.908849, -0.307898, 0.281409,
		0.414987, -0.735624, 0.535390,
		43.740036, 30.417099, 21.161037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031013, 30.878714, 21.349247>,  <43.449543, 30.932037, 20.786264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031013, 30.878714, 21.349247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.387890, 30.724033, 21.442593>,  <43.602016, 30.631226, 21.498600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.387890, 30.724033, 21.442593>,  <43.031013, 30.878714, 21.349247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387890, 30.724033, 21.442593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032057, 0.569596, 0.821300,
		-0.450519, -0.725275, 0.520585,
		0.892191, -0.386699, 0.233364,
		43.655548, 30.608023, 21.512602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683380, 30.539446, 21.939056>,  <43.031013, 30.878714, 21.349247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683380, 30.539446, 21.939056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081863, 30.563005, 21.964647>,  <43.320953, 30.577141, 21.980001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081863, 30.563005, 21.964647>,  <42.683380, 30.539446, 21.939056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081863, 30.563005, 21.964647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086725, 0.618745, 0.780790,
		0.006399, -0.783381, 0.621509,
		0.996212, 0.058897, 0.063979,
		43.380726, 30.580675, 21.983841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898090, 30.399918, 22.637562>,  <42.683380, 30.539446, 21.939056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898090, 30.399918, 22.637562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213394, 30.598289, 22.491852>,  <43.402576, 30.717314, 22.404427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213394, 30.598289, 22.491852>,  <42.898090, 30.399918, 22.637562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213394, 30.598289, 22.491852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072250, 0.513302, 0.855162,
		0.611086, -0.700409, 0.368784,
		0.788260, 0.495933, -0.364276,
		43.449871, 30.747068, 22.382568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.441456, 30.328667, 23.150776>,  <42.898090, 30.399918, 22.637562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.441456, 30.328667, 23.150776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538681, 30.651724, 22.935877>,  <43.597015, 30.845558, 22.806936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538681, 30.651724, 22.935877>,  <43.441456, 30.328667, 23.150776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538681, 30.651724, 22.935877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059592, 0.540380, 0.839309,
		0.968179, -0.236018, 0.083215,
		0.243060, 0.807642, -0.537249,
		43.611599, 30.894016, 22.774702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117508, 30.559980, 23.469553>,  <43.441456, 30.328667, 23.150776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117508, 30.559980, 23.469553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946571, 30.860926, 23.269022>,  <43.844009, 31.041492, 23.148703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946571, 30.860926, 23.269022>,  <44.117508, 30.559980, 23.469553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946571, 30.860926, 23.269022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081973, 0.584471, 0.807263,
		0.900368, 0.303878, -0.311440,
		-0.427337, 0.752364, -0.501329,
		43.818371, 31.086636, 23.118624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507767, 31.209364, 23.610016>,  <44.117508, 30.559980, 23.469553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507767, 31.209364, 23.610016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.164345, 31.362539, 23.473644>,  <43.958290, 31.454445, 23.391821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.164345, 31.362539, 23.473644>,  <44.507767, 31.209364, 23.610016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164345, 31.362539, 23.473644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064014, 0.579687, 0.812321,
		0.508703, 0.719250, -0.473182,
		-0.858559, 0.382939, -0.340931,
		43.906776, 31.477421, 23.371365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.558849, 32.056355, 23.709665>,  <44.507767, 31.209364, 23.610016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.558849, 32.056355, 23.709665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170410, 31.967972, 23.673544>,  <43.937347, 31.914942, 23.651871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170410, 31.967972, 23.673544>,  <44.558849, 32.056355, 23.709665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170410, 31.967972, 23.673544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215857, 0.651409, 0.727374,
		-0.101892, 0.725841, -0.680274,
		-0.971094, -0.220956, -0.090305,
		43.879082, 31.901686, 23.646452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194530, 32.662525, 23.808416>,  <44.558849, 32.056355, 23.709665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194530, 32.662525, 23.808416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.927826, 32.370369, 23.867685>,  <43.767803, 32.195076, 23.903246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.927826, 32.370369, 23.867685>,  <44.194530, 32.662525, 23.808416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.927826, 32.370369, 23.867685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359480, 0.489347, 0.794552,
		-0.652843, 0.476512, -0.588840,
		-0.666761, -0.730394, 0.148170,
		43.727798, 32.151253, 23.912136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650555, 32.993507, 23.875576>,  <44.194530, 32.662525, 23.808416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650555, 32.993507, 23.875576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579247, 32.634735, 24.037437>,  <43.536461, 32.419472, 24.134554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579247, 32.634735, 24.037437>,  <43.650555, 32.993507, 23.875576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579247, 32.634735, 24.037437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450225, 0.440017, 0.776970,
		-0.874939, -0.043677, -0.482259,
		-0.178266, -0.896927, 0.404653,
		43.525768, 32.365658, 24.158833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981293, 33.021198, 24.177694>,  <43.650555, 32.993507, 23.875576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981293, 33.021198, 24.177694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125187, 32.698605, 24.365385>,  <43.211525, 32.505047, 24.477999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125187, 32.698605, 24.365385>,  <42.981293, 33.021198, 24.177694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125187, 32.698605, 24.365385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501018, 0.257282, 0.826309,
		-0.787130, -0.532343, -0.311510,
		0.359734, -0.806484, 0.469227,
		43.233109, 32.456657, 24.506153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408871, 32.837624, 24.492357>,  <42.981293, 33.021198, 24.177694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408871, 32.837624, 24.492357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713387, 32.676830, 24.695866>,  <42.896095, 32.580353, 24.817970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713387, 32.676830, 24.695866>,  <42.408871, 32.837624, 24.492357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713387, 32.676830, 24.695866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372232, 0.371533, 0.850533,
		-0.530926, -0.836883, 0.133213,
		0.761289, -0.401984, 0.508770,
		42.941772, 32.556236, 24.848497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053829, 32.669147, 25.094530>,  <42.408871, 32.837624, 24.492357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053829, 32.669147, 25.094530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441528, 32.675194, 25.192781>,  <42.674149, 32.678822, 25.251732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441528, 32.675194, 25.192781>,  <42.053829, 32.669147, 25.094530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441528, 32.675194, 25.192781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234388, 0.360880, 0.902678,
		-0.074994, -0.932490, 0.353325,
		0.969246, 0.015120, 0.245628,
		42.732304, 32.679729, 25.266470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111954, 32.339485, 25.722317>,  <42.053829, 32.669147, 25.094530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111954, 32.339485, 25.722317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418671, 32.594700, 25.694235>,  <42.602703, 32.747829, 25.677385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418671, 32.594700, 25.694235>,  <42.111954, 32.339485, 25.722317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418671, 32.594700, 25.694235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220677, 0.364741, 0.904580,
		0.602766, -0.678135, 0.420483,
		0.766795, 0.638041, -0.070205,
		42.648708, 32.786114, 25.673174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454002, 32.315300, 26.350382>,  <42.111954, 32.339485, 25.722317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454002, 32.315300, 26.350382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594810, 32.666626, 26.220984>,  <42.679295, 32.877422, 26.143345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594810, 32.666626, 26.220984>,  <42.454002, 32.315300, 26.350382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594810, 32.666626, 26.220984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268551, 0.425862, 0.864015,
		0.896639, -0.217277, 0.385784,
		0.352022, 0.878312, -0.323495,
		42.700417, 32.930119, 26.123936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740482, 32.629169, 26.919785>,  <42.454002, 32.315300, 26.350382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740482, 32.629169, 26.919785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706963, 32.937828, 26.667583>,  <42.686852, 33.123024, 26.516264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706963, 32.937828, 26.667583>,  <42.740482, 32.629169, 26.919785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706963, 32.937828, 26.667583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183864, 0.609890, 0.770862,
		0.979373, 0.180526, 0.090769,
		-0.083801, 0.771651, -0.630501,
		42.681824, 33.169323, 26.478434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160847, 33.223705, 27.255251>,  <42.740482, 32.629169, 26.919785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160847, 33.223705, 27.255251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889954, 33.397095, 27.017441>,  <42.727417, 33.501129, 26.874756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889954, 33.397095, 27.017441>,  <43.160847, 33.223705, 27.255251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889954, 33.397095, 27.017441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228059, 0.644563, 0.729745,
		0.699535, 0.629791, -0.337659,
		-0.677229, 0.433476, -0.594524,
		42.686787, 33.527138, 26.839083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289757, 33.952805, 27.377285>,  <43.160847, 33.223705, 27.255251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289757, 33.952805, 27.377285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924923, 33.932629, 27.214533>,  <42.706020, 33.920525, 27.116880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924923, 33.932629, 27.214533>,  <43.289757, 33.952805, 27.377285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924923, 33.932629, 27.214533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312059, 0.729081, 0.609147,
		0.265924, 0.682567, -0.680725,
		-0.912087, -0.050440, -0.406882,
		42.651299, 33.917496, 27.092468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031212, 34.558002, 27.368650>,  <43.289757, 33.952805, 27.377285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031212, 34.558002, 27.368650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672432, 34.388962, 27.316654>,  <42.457165, 34.287537, 27.285458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672432, 34.388962, 27.316654>,  <43.031212, 34.558002, 27.368650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672432, 34.388962, 27.316654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431555, 0.772849, 0.465258,
		-0.096155, 0.473409, -0.875579,
		-0.896947, -0.422597, -0.129989,
		42.403347, 34.262184, 27.277658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667969, 35.080975, 27.296539>,  <43.031212, 34.558002, 27.368650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667969, 35.080975, 27.296539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390953, 34.797867, 27.352314>,  <42.224743, 34.628002, 27.385778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390953, 34.797867, 27.352314>,  <42.667969, 35.080975, 27.296539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390953, 34.797867, 27.352314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502741, 0.612163, 0.610335,
		-0.517335, 0.352584, -0.779775,
		-0.692544, -0.707772, 0.139435,
		42.183189, 34.585537, 27.394144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956287, 35.385063, 27.077311>,  <42.667969, 35.080975, 27.296539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956287, 35.385063, 27.077311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891895, 35.082550, 27.330961>,  <41.853260, 34.901043, 27.483152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891895, 35.082550, 27.330961>,  <41.956287, 35.385063, 27.077311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891895, 35.082550, 27.330961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491073, 0.618708, 0.613227,
		-0.856114, -0.212683, -0.470994,
		-0.160984, -0.756285, 0.634127,
		41.843601, 34.855663, 27.521200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214546, 35.402534, 27.153450>,  <41.956287, 35.385063, 27.077311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214546, 35.402534, 27.153450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380207, 35.218983, 27.467878>,  <41.479603, 35.108852, 27.656534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380207, 35.218983, 27.467878>,  <41.214546, 35.402534, 27.153450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380207, 35.218983, 27.467878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584832, 0.527600, 0.616125,
		-0.697457, -0.714890, -0.049859,
		0.414156, -0.458880, 0.786069,
		41.504456, 35.081318, 27.703699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713894, 35.099815, 27.591885>,  <41.214546, 35.402534, 27.153450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713894, 35.099815, 27.591885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006794, 35.136986, 27.861750>,  <41.182533, 35.159290, 28.023668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006794, 35.136986, 27.861750>,  <40.713894, 35.099815, 27.591885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006794, 35.136986, 27.861750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617633, 0.508002, 0.600385,
		-0.286936, -0.856328, 0.429383,
		0.732254, 0.092929, 0.674661,
		41.226471, 35.164864, 28.064148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429432, 35.019382, 28.231161>,  <40.713894, 35.099815, 27.591885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429432, 35.019382, 28.231161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767654, 35.211224, 28.324987>,  <40.970589, 35.326328, 28.381283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767654, 35.211224, 28.324987>,  <40.429432, 35.019382, 28.231161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767654, 35.211224, 28.324987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477438, 0.482632, 0.734248,
		0.238939, -0.732836, 0.637071,
		0.845554, 0.479602, 0.234564,
		41.021320, 35.355103, 28.395357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509201, 35.037575, 28.985125>,  <40.429432, 35.019382, 28.231161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509201, 35.037575, 28.985125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789131, 35.311092, 28.902494>,  <40.957088, 35.475201, 28.852917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789131, 35.311092, 28.902494>,  <40.509201, 35.037575, 28.985125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789131, 35.311092, 28.902494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239536, 0.497102, 0.833974,
		0.672953, -0.534154, 0.511677,
		0.699826, 0.683790, -0.206577,
		40.999081, 35.516228, 28.840521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853760, 35.220379, 29.632582>,  <40.509201, 35.037575, 28.985125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853760, 35.220379, 29.632582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894779, 35.521385, 29.372366>,  <40.919392, 35.701988, 29.216236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894779, 35.521385, 29.372366>,  <40.853760, 35.220379, 29.632582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894779, 35.521385, 29.372366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351424, 0.639223, 0.684029,
		0.930583, 0.158470, 0.330003,
		0.102547, 0.752517, -0.650540,
		40.925545, 35.747139, 29.177204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273094, 35.639576, 30.031540>,  <40.853760, 35.220379, 29.632582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273094, 35.639576, 30.031540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103325, 35.854870, 29.740288>,  <41.001465, 35.984047, 29.565536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103325, 35.854870, 29.740288>,  <41.273094, 35.639576, 30.031540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103325, 35.854870, 29.740288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351282, 0.643291, 0.680278,
		0.834546, 0.544504, -0.083955,
		-0.424422, 0.538232, -0.728130,
		40.975998, 36.016338, 29.521849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533638, 36.291344, 30.130159>,  <41.273094, 35.639576, 30.031540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533638, 36.291344, 30.130159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208168, 36.361790, 29.908562>,  <41.012886, 36.404057, 29.775602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208168, 36.361790, 29.908562>,  <41.533638, 36.291344, 30.130159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208168, 36.361790, 29.908562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319061, 0.661323, 0.678861,
		0.485929, 0.729132, -0.481912,
		-0.813679, 0.176119, -0.553994,
		40.964066, 36.414627, 29.742363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305649, 37.053875, 30.235693>,  <41.533638, 36.291344, 30.130159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305649, 37.053875, 30.235693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977638, 36.859322, 30.115030>,  <40.780834, 36.742592, 30.042633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977638, 36.859322, 30.115030>,  <41.305649, 37.053875, 30.235693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977638, 36.859322, 30.115030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554248, 0.543410, 0.630488,
		-0.142734, 0.684207, -0.715184,
		-0.820022, -0.486381, -0.301657,
		40.731632, 36.713406, 30.024532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808487, 37.503403, 30.392460>,  <41.305649, 37.053875, 30.235693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808487, 37.503403, 30.392460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580261, 37.179642, 30.336845>,  <40.443325, 36.985386, 30.303476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580261, 37.179642, 30.336845>,  <40.808487, 37.503403, 30.392460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580261, 37.179642, 30.336845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687879, 0.378521, 0.619309,
		-0.448640, 0.448995, -0.772739,
		-0.570565, -0.809398, -0.139035,
		40.409092, 36.936821, 30.295135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144192, 37.730518, 30.027172>,  <40.808487, 37.503403, 30.392460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144192, 37.730518, 30.027172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085644, 37.395069, 30.237043>,  <40.050514, 37.193798, 30.362967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085644, 37.395069, 30.237043>,  <40.144192, 37.730518, 30.027172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085644, 37.395069, 30.237043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677491, 0.471463, 0.564560,
		-0.720819, -0.272829, -0.637169,
		-0.146373, -0.838622, 0.524679,
		40.041733, 37.143482, 30.394447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443600, 37.858849, 30.242056>,  <40.144192, 37.730518, 30.027172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443600, 37.858849, 30.242056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575962, 37.558769, 30.471037>,  <39.655380, 37.378719, 30.608425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575962, 37.558769, 30.471037>,  <39.443600, 37.858849, 30.242056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575962, 37.558769, 30.471037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614656, 0.288948, 0.733967,
		-0.716032, -0.594733, -0.365502,
		0.330903, -0.750202, 0.572452,
		39.675232, 37.333710, 30.642773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905991, 37.531582, 30.461832>,  <39.443600, 37.858849, 30.242056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905991, 37.531582, 30.461832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198269, 37.426041, 30.713696>,  <39.373634, 37.362717, 30.864813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198269, 37.426041, 30.713696>,  <38.905991, 37.531582, 30.461832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198269, 37.426041, 30.713696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581599, 0.242431, 0.776511,
		-0.357534, -0.933600, 0.023685,
		0.730692, -0.263854, 0.629658,
		39.417477, 37.346886, 30.902594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542850, 37.141560, 30.963062>,  <38.905991, 37.531582, 30.461832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542850, 37.141560, 30.963062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881824, 37.285950, 31.118782>,  <39.085209, 37.372585, 31.212214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881824, 37.285950, 31.118782>,  <38.542850, 37.141560, 30.963062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881824, 37.285950, 31.118782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474998, 0.187988, 0.859673,
		0.237141, -0.913430, 0.330771,
		0.847432, 0.360979, 0.389297,
		39.136055, 37.394241, 31.235571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527245, 36.874420, 31.587837>,  <38.542850, 37.141560, 30.963062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527245, 36.874420, 31.587837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763168, 37.197235, 31.599234>,  <38.904724, 37.390926, 31.606071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763168, 37.197235, 31.599234>,  <38.527245, 36.874420, 31.587837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763168, 37.197235, 31.599234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509246, 0.344330, 0.788737,
		0.626732, -0.479712, 0.614071,
		0.589810, 0.807040, 0.028489,
		38.940109, 37.439346, 31.607780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651115, 36.965736, 32.322872>,  <38.527245, 36.874420, 31.587837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651115, 36.965736, 32.322872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726730, 37.332184, 32.181454>,  <38.772099, 37.552052, 32.096603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726730, 37.332184, 32.181454>,  <38.651115, 36.965736, 32.322872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726730, 37.332184, 32.181454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482612, 0.400235, 0.779037,
		0.855190, 0.023356, 0.517789,
		0.189042, 0.916115, -0.353548,
		38.783443, 37.607018, 32.075390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560566, 36.214672, 32.335739>,  <38.651115, 36.965736, 32.322872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560566, 36.214672, 32.335739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694969, 36.269333, 32.708496>,  <38.775612, 36.302128, 32.932152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694969, 36.269333, 32.708496>,  <38.560566, 36.214672, 32.335739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694969, 36.269333, 32.708496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838926, -0.493177, -0.230172,
		0.428134, 0.859129, -0.280355,
		0.336012, 0.136653, 0.931892,
		38.795773, 36.310329, 32.988064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229050, 36.470440, 32.316914>,  <38.560566, 36.214672, 32.335739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229050, 36.470440, 32.316914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185123, 36.266441, 32.658169>,  <39.158768, 36.144043, 32.862923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185123, 36.266441, 32.658169>,  <39.229050, 36.470440, 32.316914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185123, 36.266441, 32.658169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596904, -0.720158, -0.353663,
		0.794761, 0.470403, 0.383504,
		-0.109819, -0.509993, 0.853139,
		39.152176, 36.113441, 32.914112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924076, 36.321606, 32.719669>,  <39.229050, 36.470440, 32.316914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924076, 36.321606, 32.719669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688271, 36.040131, 32.878315>,  <39.546787, 35.871246, 32.973503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688271, 36.040131, 32.878315>,  <39.924076, 36.321606, 32.719669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688271, 36.040131, 32.878315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748363, -0.660595, -0.059716,
		0.304020, 0.261605, 0.916043,
		-0.589512, -0.703688, 0.396610,
		39.511417, 35.829025, 32.997299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326672, 35.794472, 33.168247>,  <39.924076, 36.321606, 32.719669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326672, 35.794472, 33.168247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994663, 35.582676, 33.098167>,  <39.795456, 35.455597, 33.056118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994663, 35.582676, 33.098167>,  <40.326672, 35.794472, 33.168247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994663, 35.582676, 33.098167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557616, -0.794106, -0.241783,
		-0.011106, -0.298381, 0.954382,
		-0.830024, -0.529494, -0.175201,
		39.745655, 35.423828, 33.045609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358906, 35.084656, 33.581402>,  <40.326672, 35.794472, 33.168247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358906, 35.084656, 33.581402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124634, 35.074039, 33.257359>,  <39.984070, 35.067669, 33.062931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124634, 35.074039, 33.257359>,  <40.358906, 35.084656, 33.581402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124634, 35.074039, 33.257359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545980, -0.751620, -0.370099,
		-0.599068, -0.659062, 0.454702,
		-0.585681, -0.026544, -0.810107,
		39.948929, 35.066078, 33.014328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439453, 34.381248, 33.371666>,  <40.358906, 35.084656, 33.581402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439453, 34.381248, 33.371666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269596, 34.560944, 33.057247>,  <40.167683, 34.668758, 32.868595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269596, 34.560944, 33.057247>,  <40.439453, 34.381248, 33.371666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269596, 34.560944, 33.057247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535355, -0.575567, -0.618157,
		-0.730119, -0.683308, 0.003911,
		-0.424643, 0.449234, -0.786045,
		40.142204, 34.695713, 32.821434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387047, 33.810303, 32.894493>,  <40.439453, 34.381248, 33.371666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387047, 33.810303, 32.894493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336193, 34.138630, 32.671749>,  <40.305679, 34.335625, 32.538101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336193, 34.138630, 32.671749>,  <40.387047, 33.810303, 32.894493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336193, 34.138630, 32.671749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601887, -0.382399, -0.701073,
		-0.788396, -0.424298, -0.445424,
		-0.127134, 0.820818, -0.556861,
		40.298054, 34.384876, 32.504692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227097, 33.587379, 32.272499>,  <40.387047, 33.810303, 32.894493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227097, 33.587379, 32.272499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368179, 33.960476, 32.242569>,  <40.452827, 34.184334, 32.224609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368179, 33.960476, 32.242569>,  <40.227097, 33.587379, 32.272499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368179, 33.960476, 32.242569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597312, -0.285975, -0.749291,
		-0.720290, 0.219585, -0.658000,
		0.352705, 0.932738, -0.074824,
		40.473991, 34.240299, 32.220123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192745, 33.797318, 31.479849>,  <40.227097, 33.587379, 32.272499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192745, 33.797318, 31.479849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456924, 34.030331, 31.669363>,  <40.615433, 34.170139, 31.783072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456924, 34.030331, 31.669363>,  <40.192745, 33.797318, 31.479849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456924, 34.030331, 31.669363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654717, -0.137823, -0.743203,
		-0.367642, 0.801038, -0.472418,
		0.660444, 0.582532, 0.473783,
		40.655056, 34.205090, 31.811499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462215, 34.165909, 31.001663>,  <40.192745, 33.797318, 31.479849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462215, 34.165909, 31.001663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735882, 34.168594, 31.293381>,  <40.900082, 34.170204, 31.468410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735882, 34.168594, 31.293381>,  <40.462215, 34.165909, 31.001663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735882, 34.168594, 31.293381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713644, -0.212391, -0.667534,
		0.150413, 0.977162, -0.150103,
		0.684169, 0.006715, 0.729292,
		40.941132, 34.170609, 31.512169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001602, 34.430546, 30.722370>,  <40.462215, 34.165909, 31.001663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001602, 34.430546, 30.722370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177685, 34.269306, 31.043303>,  <41.283333, 34.172562, 31.235861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177685, 34.269306, 31.043303>,  <41.001602, 34.430546, 30.722370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177685, 34.269306, 31.043303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731300, -0.357511, -0.580850,
		0.520981, 0.842435, 0.137409,
		0.440203, -0.403099, 0.802329,
		41.309746, 34.148376, 31.284000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665154, 34.572109, 30.566431>,  <41.001602, 34.430546, 30.722370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665154, 34.572109, 30.566431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745178, 34.308723, 30.856646>,  <41.793194, 34.150692, 31.030775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745178, 34.308723, 30.856646>,  <41.665154, 34.572109, 30.566431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745178, 34.308723, 30.856646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874168, -0.214479, -0.435694,
		0.442500, 0.721407, 0.532696,
		0.200061, -0.658460, 0.725538,
		41.805195, 34.111187, 31.074306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317230, 34.653549, 30.728725>,  <41.665154, 34.572109, 30.566431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317230, 34.653549, 30.728725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246742, 34.282116, 30.859369>,  <42.204449, 34.059254, 30.937756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246742, 34.282116, 30.859369>,  <42.317230, 34.653549, 30.728725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246742, 34.282116, 30.859369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741763, -0.343390, -0.576083,
		0.647097, 0.140748, 0.749304,
		-0.176221, -0.928587, 0.326608,
		42.193874, 34.003540, 30.957352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.884216, 34.433479, 30.662485>,  <42.317230, 34.653549, 30.728725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.884216, 34.433479, 30.662485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663239, 34.101685, 30.695356>,  <42.530651, 33.902607, 30.715078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663239, 34.101685, 30.695356>,  <42.884216, 34.433479, 30.662485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663239, 34.101685, 30.695356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609549, -0.469266, -0.638936,
		0.568551, -0.302889, 0.764858,
		-0.552449, -0.829486, 0.082176,
		42.497505, 33.852840, 30.720009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363026, 33.962860, 30.828829>,  <42.884216, 34.433479, 30.662485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363026, 33.962860, 30.828829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053604, 33.752914, 30.686766>,  <42.867950, 33.626949, 30.601528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053604, 33.752914, 30.686766>,  <43.363026, 33.962860, 30.828829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053604, 33.752914, 30.686766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619531, -0.508332, -0.598147,
		0.133408, -0.682729, 0.718390,
		-0.773553, -0.524862, -0.355156,
		42.821537, 33.595455, 30.580219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589405, 33.374771, 30.824257>,  <43.363026, 33.962860, 30.828829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589405, 33.374771, 30.824257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287983, 33.380775, 30.561373>,  <43.107128, 33.384377, 30.403643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287983, 33.380775, 30.561373>,  <43.589405, 33.374771, 30.824257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287983, 33.380775, 30.561373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550797, -0.531322, -0.643677,
		-0.358852, -0.847037, 0.392113,
		-0.753556, 0.015010, -0.657212,
		43.061916, 33.385277, 30.364210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728489, 32.787891, 30.562281>,  <43.589405, 33.374771, 30.824257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728489, 32.787891, 30.562281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476917, 32.940136, 30.291111>,  <43.325974, 33.031483, 30.128408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476917, 32.940136, 30.291111>,  <43.728489, 32.787891, 30.562281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476917, 32.940136, 30.291111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483934, -0.490801, -0.724515,
		-0.608486, -0.783740, 0.124489,
		-0.628931, 0.380613, -0.677924,
		43.288239, 33.054321, 30.087734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.700691, 32.227833, 30.010927>,  <43.728489, 32.787891, 30.562281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.700691, 32.227833, 30.010927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550293, 32.546909, 29.822323>,  <43.460052, 32.738354, 29.709160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550293, 32.546909, 29.822323>,  <43.700691, 32.227833, 30.010927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550293, 32.546909, 29.822323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444001, -0.291537, -0.847272,
		-0.813320, -0.527922, -0.244557,
		-0.375996, 0.797687, -0.471510,
		43.437492, 32.786217, 29.680870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.439133, 31.983543, 29.412666>,  <43.700691, 32.227833, 30.010927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.439133, 31.983543, 29.412666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502262, 32.371880, 29.340483>,  <43.540138, 32.604881, 29.297173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502262, 32.371880, 29.340483>,  <43.439133, 31.983543, 29.412666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502262, 32.371880, 29.340483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470114, -0.234581, -0.850861,
		-0.868381, 0.049446, -0.493426,
		0.157820, 0.970838, -0.180461,
		43.549606, 32.663132, 29.286345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227913, 32.075672, 28.817987>,  <43.439133, 31.983543, 29.412666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227913, 32.075672, 28.817987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495457, 32.367725, 28.873878>,  <43.655983, 32.542957, 28.907413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495457, 32.367725, 28.873878>,  <43.227913, 32.075672, 28.817987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.495457, 32.367725, 28.873878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488035, -0.289504, -0.823413,
		-0.560752, 0.618942, -0.549971,
		0.668864, 0.730135, 0.139725,
		43.696117, 32.586765, 28.915796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240234, 32.457809, 28.233849>,  <43.227913, 32.075672, 28.817987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240234, 32.457809, 28.233849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591694, 32.540268, 28.406122>,  <43.802570, 32.589741, 28.509487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591694, 32.540268, 28.406122>,  <43.240234, 32.457809, 28.233849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591694, 32.540268, 28.406122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476923, -0.335512, -0.812389,
		-0.022967, 0.919205, -0.393110,
		0.878645, 0.206142, 0.430684,
		43.855286, 32.602112, 28.535328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617279, 32.903610, 27.760841>,  <43.240234, 32.457809, 28.233849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617279, 32.903610, 27.760841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886250, 32.731815, 28.001965>,  <44.047634, 32.628738, 28.146639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886250, 32.731815, 28.001965>,  <43.617279, 32.903610, 27.760841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886250, 32.731815, 28.001965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512634, -0.317225, -0.797857,
		0.533898, 0.845521, 0.006861,
		0.672428, -0.429491, 0.602808,
		44.087978, 32.602966, 28.182808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.299026, 33.082230, 27.476406>,  <43.617279, 32.903610, 27.760841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.299026, 33.082230, 27.476406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341953, 32.744526, 27.686440>,  <44.367710, 32.541904, 27.812460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341953, 32.744526, 27.686440>,  <44.299026, 33.082230, 27.476406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341953, 32.744526, 27.686440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223588, -0.494110, -0.840157,
		0.968758, 0.207562, 0.135741,
		0.107313, -0.844259, 0.525081,
		44.374146, 32.491249, 27.843964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.893845, 32.806183, 27.233778>,  <44.299026, 33.082230, 27.476406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.893845, 32.806183, 27.233778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.679283, 32.507652, 27.391399>,  <44.550549, 32.328533, 27.485971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.679283, 32.507652, 27.391399>,  <44.893845, 32.806183, 27.233778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.679283, 32.507652, 27.391399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219778, -0.574320, -0.788577,
		0.814846, -0.336388, 0.472090,
		-0.536399, -0.746323, 0.394052,
		44.518364, 32.283756, 27.509615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.324600, 32.137024, 27.101336>,  <44.893845, 32.806183, 27.233778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.324600, 32.137024, 27.101336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.958805, 31.997374, 27.183142>,  <44.739326, 31.913584, 27.232225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.958805, 31.997374, 27.183142>,  <45.324600, 32.137024, 27.101336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.958805, 31.997374, 27.183142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107033, -0.696183, -0.709841,
		0.390203, -0.627250, 0.674017,
		-0.914487, -0.349124, 0.204516,
		44.684460, 31.892637, 27.244497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.490189, 31.454397, 27.129272>,  <45.324600, 32.137024, 27.101336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.490189, 31.454397, 27.129272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093456, 31.480303, 27.085306>,  <44.855419, 31.495846, 27.058928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093456, 31.480303, 27.085306>,  <45.490189, 31.454397, 27.129272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.093456, 31.480303, 27.085306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016218, -0.790562, -0.612167,
		-0.126540, -0.608948, 0.783052,
		-0.991829, 0.064764, -0.109914,
		44.795906, 31.499731, 27.052332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.163296, 30.784370, 27.296455>,  <45.490189, 31.454397, 27.129272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.163296, 30.784370, 27.296455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896172, 30.945484, 27.046082>,  <44.735897, 31.042152, 26.895857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896172, 30.945484, 27.046082>,  <45.163296, 30.784370, 27.296455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.896172, 30.945484, 27.046082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002795, -0.839572, -0.543241,
		-0.744326, -0.364532, 0.559550,
		-0.667811, 0.402784, -0.625935,
		44.695827, 31.066320, 26.858301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.703014, 30.322880, 27.124170>,  <45.163296, 30.784370, 27.296455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.703014, 30.322880, 27.124170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625202, 30.551180, 26.805071>,  <44.578514, 30.688160, 26.613611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625202, 30.551180, 26.805071>,  <44.703014, 30.322880, 27.124170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625202, 30.551180, 26.805071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039275, -0.817164, -0.575065,
		-0.980110, -0.080538, 0.181381,
		-0.194533, 0.570751, -0.797747,
		44.566841, 30.722404, 26.565746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151138, 29.997692, 26.782619>,  <44.703014, 30.322880, 27.124170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151138, 29.997692, 26.782619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290405, 30.251795, 26.506872>,  <44.373966, 30.404257, 26.341425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290405, 30.251795, 26.506872>,  <44.151138, 29.997692, 26.782619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290405, 30.251795, 26.506872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193054, -0.671026, -0.715859,
		-0.917337, 0.382327, -0.110994,
		0.348172, 0.635256, -0.689366,
		44.394855, 30.442371, 26.300062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597099, 30.135153, 26.294079>,  <44.151138, 29.997692, 26.782619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597099, 30.135153, 26.294079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950882, 30.178505, 26.112534>,  <44.163151, 30.204515, 26.003607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950882, 30.178505, 26.112534>,  <43.597099, 30.135153, 26.294079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950882, 30.178505, 26.112534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265318, -0.683317, -0.680208,
		-0.383853, 0.722032, -0.575609,
		0.884457, 0.108380, -0.453862,
		44.216217, 30.211020, 25.976376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435444, 30.034809, 25.681442>,  <43.597099, 30.135153, 26.294079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435444, 30.034809, 25.681442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832211, 29.984409, 25.675379>,  <44.070271, 29.954168, 25.671741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832211, 29.984409, 25.675379>,  <43.435444, 30.034809, 25.681442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832211, 29.984409, 25.675379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075687, -0.491442, -0.867615,
		0.101871, 0.861747, -0.497005,
		0.991914, -0.126002, -0.015159,
		44.129784, 29.946609, 25.670832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432682, 30.078773, 25.010460>,  <43.435444, 30.034809, 25.681442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432682, 30.078773, 25.010460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.794773, 29.943867, 25.113859>,  <44.012028, 29.862923, 25.175898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.794773, 29.943867, 25.113859>,  <43.432682, 30.078773, 25.010460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.794773, 29.943867, 25.113859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022131, -0.570076, -0.821294,
		0.424359, 0.749175, -0.508582,
		0.905224, -0.337267, 0.258497,
		44.066341, 29.842686, 25.191408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932339, 30.114090, 24.417734>,  <43.432682, 30.078773, 25.010460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932339, 30.114090, 24.417734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065342, 29.819515, 24.653395>,  <44.145142, 29.642771, 24.794792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065342, 29.819515, 24.653395>,  <43.932339, 30.114090, 24.417734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.065342, 29.819515, 24.653395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131692, -0.582322, -0.802221,
		0.933862, 0.344329, -0.096642,
		0.332504, -0.736436, 0.589154,
		44.165092, 29.598585, 24.830141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.428314, 29.873306, 24.040827>,  <43.932339, 30.114090, 24.417734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.428314, 29.873306, 24.040827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.345154, 29.571945, 24.290358>,  <44.295258, 29.391129, 24.440075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.345154, 29.571945, 24.290358>,  <44.428314, 29.873306, 24.040827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.345154, 29.571945, 24.290358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100264, -0.650815, -0.752586,
		0.972998, -0.093916, 0.210845,
		-0.207901, -0.753405, 0.623825,
		44.282784, 29.345924, 24.477505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.950054, 29.390068, 23.959793>,  <44.428314, 29.873306, 24.040827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.950054, 29.390068, 23.959793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659023, 29.163116, 24.114048>,  <44.484406, 29.026945, 24.206600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659023, 29.163116, 24.114048>,  <44.950054, 29.390068, 23.959793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659023, 29.163116, 24.114048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114358, -0.654571, -0.747301,
		0.676430, -0.499617, 0.541134,
		-0.727575, -0.567380, 0.385636,
		44.440750, 28.992903, 24.229738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164974, 28.636127, 23.867069>,  <44.950054, 29.390068, 23.959793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164974, 28.636127, 23.867069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769241, 28.610897, 23.919603>,  <44.531803, 28.595758, 23.951124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769241, 28.610897, 23.919603>,  <45.164974, 28.636127, 23.867069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769241, 28.610897, 23.919603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047621, -0.711921, -0.700643,
		0.137692, -0.699421, 0.701321,
		-0.989329, -0.063075, 0.131333,
		44.472443, 28.591974, 23.959003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024563, 27.919849, 23.799053>,  <45.164974, 28.636127, 23.867069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024563, 27.919849, 23.799053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.686176, 28.127546, 23.750511>,  <44.483143, 28.252165, 23.721386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.686176, 28.127546, 23.750511>,  <45.024563, 27.919849, 23.799053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.686176, 28.127546, 23.750511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161514, -0.466402, -0.869703,
		-0.508189, -0.716138, 0.478425,
		-0.845965, 0.519246, -0.121354,
		44.432388, 28.283319, 23.714106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689453, 27.428989, 23.308701>,  <45.024563, 27.919849, 23.799053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689453, 27.428989, 23.308701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.470844, 27.763840, 23.299410>,  <44.339680, 27.964750, 23.293835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.470844, 27.763840, 23.299410>,  <44.689453, 27.428989, 23.308701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.470844, 27.763840, 23.299410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292678, -0.216916, -0.931282,
		-0.784639, -0.502163, 0.363557,
		-0.546517, 0.837126, -0.023229,
		44.306889, 28.014977, 23.292440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969707, 27.211933, 23.137392>,  <44.689453, 27.428989, 23.308701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969707, 27.211933, 23.137392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056980, 27.590017, 23.040253>,  <44.109344, 27.816868, 22.981970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056980, 27.590017, 23.040253>,  <43.969707, 27.211933, 23.137392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056980, 27.590017, 23.040253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213017, -0.196716, -0.957041,
		-0.952375, 0.260544, 0.158425,
		0.218186, 0.945209, -0.242848,
		44.122437, 27.873581, 22.967398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376160, 27.087002, 23.529150>,  <43.969707, 27.211933, 23.137392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376160, 27.087002, 23.529150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.325375, 26.690317, 23.521255>,  <43.294903, 26.452307, 23.516520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.325375, 26.690317, 23.521255>,  <43.376160, 27.087002, 23.529150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325375, 26.690317, 23.521255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006988, -0.020790, 0.999759,
		-0.991883, 0.126792, 0.009570,
		-0.126961, -0.991711, -0.019735,
		43.287285, 26.392803, 23.515335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800278, 26.928822, 23.903265>,  <43.376160, 27.087002, 23.529150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800278, 26.928822, 23.903265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035526, 26.605385, 23.896399>,  <43.176674, 26.411324, 23.892279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035526, 26.605385, 23.896399>,  <42.800278, 26.928822, 23.903265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.035526, 26.605385, 23.896399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045790, 0.012097, 0.998878,
		-0.807476, -0.588247, 0.044140,
		0.588121, -0.808591, -0.017168,
		43.211964, 26.362808, 23.891249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541271, 26.579475, 24.442280>,  <42.800278, 26.928822, 23.903265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541271, 26.579475, 24.442280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902855, 26.417736, 24.386627>,  <43.119804, 26.320692, 24.353235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902855, 26.417736, 24.386627>,  <42.541271, 26.579475, 24.442280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902855, 26.417736, 24.386627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060212, -0.201763, 0.977582,
		-0.423358, -0.892072, -0.158039,
		0.903960, -0.404351, -0.139131,
		43.174042, 26.296431, 24.344889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530674, 25.986868, 24.892303>,  <42.541271, 26.579475, 24.442280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530674, 25.986868, 24.892303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920975, 26.049425, 24.831062>,  <43.155155, 26.086960, 24.794317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920975, 26.049425, 24.831062>,  <42.530674, 25.986868, 24.892303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920975, 26.049425, 24.831062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175600, -0.141907, 0.974180,
		0.130630, -0.977447, -0.165929,
		0.975756, 0.156395, -0.153102,
		43.213703, 26.096344, 24.785131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.902103, 25.488190, 25.045603>,  <42.530674, 25.986868, 24.892303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.902103, 25.488190, 25.045603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116150, 25.824207, 25.081329>,  <43.244579, 26.025818, 25.102766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116150, 25.824207, 25.081329>,  <42.902103, 25.488190, 25.045603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116150, 25.824207, 25.081329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178464, -0.215756, 0.960000,
		0.825713, -0.497771, -0.265372,
		0.535116, 0.840043, 0.089318,
		43.276684, 26.076220, 25.108124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.334259, 25.366724, 25.593826>,  <42.902103, 25.488190, 25.045603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.334259, 25.366724, 25.593826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365936, 25.764580, 25.567225>,  <43.384945, 26.003292, 25.551264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365936, 25.764580, 25.567225>,  <43.334259, 25.366724, 25.593826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365936, 25.764580, 25.567225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163190, 0.052877, 0.985177,
		0.983411, -0.088876, -0.158127,
		0.079198, 0.994638, -0.066503,
		43.389694, 26.062971, 25.547274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.781357, 25.569992, 26.168076>,  <43.334259, 25.366724, 25.593826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.781357, 25.569992, 26.168076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630116, 25.927000, 26.069729>,  <43.539371, 26.141205, 26.010721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630116, 25.927000, 26.069729>,  <43.781357, 25.569992, 26.168076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.630116, 25.927000, 26.069729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100101, 0.224610, 0.969294,
		0.920337, 0.391102, 0.004417,
		-0.378101, 0.892518, -0.245867,
		43.516685, 26.194756, 25.995970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054230, 26.114063, 26.725334>,  <43.781357, 25.569992, 26.168076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054230, 26.114063, 26.725334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725895, 26.243946, 26.537378>,  <43.528896, 26.321875, 26.424604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725895, 26.243946, 26.537378>,  <44.054230, 26.114063, 26.725334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725895, 26.243946, 26.537378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277192, 0.492844, 0.824784,
		0.499395, 0.807261, -0.314538,
		-0.820835, 0.324706, -0.469890,
		43.479645, 26.341358, 26.396412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937267, 26.802622, 26.750343>,  <44.054230, 26.114063, 26.725334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937267, 26.802622, 26.750343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550236, 26.713003, 26.703705>,  <43.318016, 26.659231, 26.675722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550236, 26.713003, 26.703705>,  <43.937267, 26.802622, 26.750343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550236, 26.713003, 26.703705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216438, 0.497587, 0.839977,
		-0.130180, 0.837979, -0.529947,
		-0.967578, -0.224048, -0.116595,
		43.259964, 26.645788, 26.668726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631973, 27.495628, 26.906523>,  <43.937267, 26.802622, 26.750343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631973, 27.495628, 26.906523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323769, 27.240713, 26.901217>,  <43.138847, 27.087765, 26.898033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323769, 27.240713, 26.901217>,  <43.631973, 27.495628, 26.906523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323769, 27.240713, 26.901217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455042, 0.535353, 0.711572,
		-0.446374, 0.554311, -0.702488,
		-0.770511, -0.637289, -0.013267,
		43.092617, 27.049526, 26.897236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092625, 27.913393, 26.910353>,  <43.631973, 27.495628, 26.906523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092625, 27.913393, 26.910353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948818, 27.563904, 27.041414>,  <42.862534, 27.354210, 27.120050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948818, 27.563904, 27.041414>,  <43.092625, 27.913393, 26.910353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948818, 27.563904, 27.041414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404562, 0.462356, 0.789022,
		-0.840880, 0.151109, -0.519699,
		-0.359515, -0.873724, 0.327653,
		42.840965, 27.301786, 27.139709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414631, 27.961817, 26.899773>,  <43.092625, 27.913393, 26.910353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414631, 27.961817, 26.899773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528732, 27.698059, 27.178003>,  <42.597195, 27.539804, 27.344942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528732, 27.698059, 27.178003>,  <42.414631, 27.961817, 26.899773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528732, 27.698059, 27.178003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725245, 0.325971, 0.606435,
		-0.626619, -0.677452, -0.385239,
		0.285253, -0.659395, 0.695578,
		42.614307, 27.500240, 27.386677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811638, 27.853306, 27.359470>,  <42.414631, 27.961817, 26.899773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811638, 27.853306, 27.359470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079750, 27.659859, 27.584623>,  <42.240616, 27.543791, 27.719715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079750, 27.659859, 27.584623>,  <41.811638, 27.853306, 27.359470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.079750, 27.659859, 27.584623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357882, 0.453810, 0.816074,
		-0.650110, -0.748444, 0.131102,
		0.670281, -0.483619, 0.562881,
		42.280834, 27.514772, 27.753489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413994, 27.612993, 27.905184>,  <41.811638, 27.853306, 27.359470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413994, 27.612993, 27.905184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794556, 27.623005, 28.027956>,  <42.022892, 27.629011, 28.101620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794556, 27.623005, 28.027956>,  <41.413994, 27.612993, 27.905184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794556, 27.623005, 28.027956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282847, 0.465171, 0.838817,
		-0.121781, -0.884867, 0.449644,
		0.951403, 0.025029, 0.306931,
		42.079975, 27.630514, 28.120035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396915, 27.459576, 28.543217>,  <41.413994, 27.612993, 27.905184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396915, 27.459576, 28.543217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763290, 27.619991, 28.549330>,  <41.983116, 27.716240, 28.552998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763290, 27.619991, 28.549330>,  <41.396915, 27.459576, 28.543217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763290, 27.619991, 28.549330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188405, 0.396052, 0.898691,
		0.354356, -0.826022, 0.438315,
		0.915934, 0.401037, 0.015283,
		42.038071, 27.740303, 28.553915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630116, 27.483486, 29.292582>,  <41.396915, 27.459576, 28.543217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630116, 27.483486, 29.292582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842316, 27.767498, 29.107357>,  <41.969635, 27.937904, 28.996222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842316, 27.767498, 29.107357>,  <41.630116, 27.483486, 29.292582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842316, 27.767498, 29.107357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171368, 0.624819, 0.761731,
		0.830180, -0.324747, 0.453145,
		0.530504, 0.710029, -0.463061,
		42.001469, 27.980507, 28.968439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024464, 27.803345, 29.840324>,  <41.630116, 27.483486, 29.292582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024464, 27.803345, 29.840324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039860, 28.065954, 29.538996>,  <42.049099, 28.223520, 29.358198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039860, 28.065954, 29.538996>,  <42.024464, 27.803345, 29.840324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039860, 28.065954, 29.538996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091506, 0.748398, 0.656907,
		0.995060, -0.094218, -0.031270,
		0.038490, 0.656523, -0.753323,
		42.051407, 28.262911, 29.313000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643665, 28.263693, 29.970291>,  <42.024464, 27.803345, 29.840324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643665, 28.263693, 29.970291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.375595, 28.449980, 29.739130>,  <42.214752, 28.561752, 29.600433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.375595, 28.449980, 29.739130>,  <42.643665, 28.263693, 29.970291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375595, 28.449980, 29.739130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078498, 0.818743, 0.568769,
		0.738039, 0.335812, -0.585260,
		-0.670177, 0.465715, -0.577904,
		42.174541, 28.589695, 29.565760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.884464, 28.810606, 29.783566>,  <42.643665, 28.263693, 29.970291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.884464, 28.810606, 29.783566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493023, 28.887245, 29.753567>,  <42.258160, 28.933228, 29.735567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493023, 28.887245, 29.753567>,  <42.884464, 28.810606, 29.783566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493023, 28.887245, 29.753567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132020, 0.864289, 0.485361,
		0.157811, 0.465075, -0.871092,
		-0.978604, 0.191597, -0.074995,
		42.199440, 28.944725, 29.731068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774677, 29.541578, 29.753666>,  <42.884464, 28.810606, 29.783566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774677, 29.541578, 29.753666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396870, 29.444931, 29.842657>,  <42.170185, 29.386942, 29.896051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396870, 29.444931, 29.842657>,  <42.774677, 29.541578, 29.753666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396870, 29.444931, 29.842657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121595, 0.886476, 0.446515,
		-0.305107, 0.394692, -0.866676,
		-0.944523, -0.241618, 0.222478,
		42.113514, 29.372446, 29.909401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410339, 30.145308, 29.597164>,  <42.774677, 29.541578, 29.753666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410339, 30.145308, 29.597164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146423, 29.953991, 29.828995>,  <41.988071, 29.839201, 29.968094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146423, 29.953991, 29.828995>,  <42.410339, 30.145308, 29.597164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146423, 29.953991, 29.828995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178670, 0.849015, 0.497243,
		-0.729896, 0.224525, -0.645631,
		-0.659794, -0.478290, 0.579577,
		41.948486, 29.810503, 30.002869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768040, 30.421221, 29.513779>,  <42.410339, 30.145308, 29.597164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768040, 30.421221, 29.513779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752831, 30.241943, 29.871029>,  <41.743706, 30.134377, 30.085379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752831, 30.241943, 29.871029>,  <41.768040, 30.421221, 29.513779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752831, 30.241943, 29.871029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167335, 0.884009, 0.436494,
		-0.985167, -0.132853, -0.108613,
		-0.038025, -0.448194, 0.893127,
		41.741425, 30.107485, 30.138968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189816, 30.662828, 29.715557>,  <41.768040, 30.421221, 29.513779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189816, 30.662828, 29.715557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372036, 30.543842, 30.051172>,  <41.481369, 30.472450, 30.252542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372036, 30.543842, 30.051172>,  <41.189816, 30.662828, 29.715557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372036, 30.543842, 30.051172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258313, 0.857795, 0.444366,
		-0.851909, -0.419166, 0.313929,
		0.455550, -0.297468, 0.839040,
		41.508701, 30.454601, 30.302885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643837, 30.638052, 30.258001>,  <41.189816, 30.662828, 29.715557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643837, 30.638052, 30.258001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993000, 30.678642, 30.448887>,  <41.202499, 30.702997, 30.563419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993000, 30.678642, 30.448887>,  <40.643837, 30.638052, 30.258001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993000, 30.678642, 30.448887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427055, 0.631894, 0.646788,
		-0.235915, -0.768383, 0.594921,
		0.872908, 0.101476, 0.477215,
		41.254871, 30.709085, 30.592051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467514, 30.719128, 30.912867>,  <40.643837, 30.638052, 30.258001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467514, 30.719128, 30.912867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851810, 30.827206, 30.938059>,  <41.082390, 30.892054, 30.953175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851810, 30.827206, 30.938059>,  <40.467514, 30.719128, 30.912867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851810, 30.827206, 30.938059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235871, 0.675953, 0.698178,
		0.146074, -0.685625, 0.713149,
		0.960743, 0.270197, 0.062980,
		41.140034, 30.908264, 30.956953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795605, 30.696766, 31.613726>,  <40.467514, 30.719128, 30.912867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795605, 30.696766, 31.613726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021519, 30.985525, 31.453785>,  <41.157066, 31.158781, 31.357821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021519, 30.985525, 31.453785>,  <40.795605, 30.696766, 31.613726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021519, 30.985525, 31.453785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037020, 0.506204, 0.861619,
		0.824409, -0.471825, 0.312621,
		0.564783, 0.721899, -0.399852,
		41.190952, 31.202095, 31.333830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392181, 30.812935, 32.002018>,  <40.795605, 30.696766, 31.613726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392181, 30.812935, 32.002018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334862, 31.158812, 31.809446>,  <41.300472, 31.366337, 31.693903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334862, 31.158812, 31.809446>,  <41.392181, 30.812935, 32.002018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334862, 31.158812, 31.809446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148014, 0.499706, 0.853455,
		0.978549, 0.051039, -0.199593,
		-0.143297, 0.864690, -0.481432,
		41.291874, 31.418219, 31.665016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881458, 31.302633, 32.407436>,  <41.392181, 30.812935, 32.002018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881458, 31.302633, 32.407436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618752, 31.526655, 32.205448>,  <41.461128, 31.661068, 32.084255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618752, 31.526655, 32.205448>,  <41.881458, 31.302633, 32.407436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618752, 31.526655, 32.205448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117286, 0.585629, 0.802049,
		0.744919, 0.585984, -0.318933,
		-0.656764, 0.560056, -0.504974,
		41.421722, 31.694672, 32.053955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230015, 32.006340, 32.605770>,  <41.881458, 31.302633, 32.407436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230015, 32.006340, 32.605770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851566, 32.062237, 32.488926>,  <41.624496, 32.095776, 32.418819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851566, 32.062237, 32.488926>,  <42.230015, 32.006340, 32.605770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851566, 32.062237, 32.488926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141543, 0.632869, 0.761211,
		0.291238, 0.761544, -0.578992,
		-0.946122, 0.139741, -0.292107,
		41.567730, 32.104160, 32.401295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145061, 32.670193, 32.644684>,  <42.230015, 32.006340, 32.605770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145061, 32.670193, 32.644684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788929, 32.489693, 32.668964>,  <41.575249, 32.381393, 32.683533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788929, 32.489693, 32.668964>,  <42.145061, 32.670193, 32.644684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788929, 32.489693, 32.668964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202940, 0.512634, 0.834279,
		-0.407586, 0.730466, -0.547991,
		-0.890331, -0.451249, 0.060702,
		41.521832, 32.354317, 32.687176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694523, 33.157333, 32.764977>,  <42.145061, 32.670193, 32.644684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694523, 33.157333, 32.764977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535622, 32.820660, 32.911270>,  <41.440281, 32.618656, 32.999046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535622, 32.820660, 32.911270>,  <41.694523, 33.157333, 32.764977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535622, 32.820660, 32.911270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146551, 0.451596, 0.880105,
		-0.905933, 0.296024, -0.302746,
		-0.397251, -0.841684, 0.365733,
		41.416447, 32.568153, 33.020988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117744, 33.427643, 33.160500>,  <41.694523, 33.157333, 32.764977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117744, 33.427643, 33.160500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119102, 33.041996, 33.266682>,  <41.119919, 32.810608, 33.330391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119102, 33.041996, 33.266682>,  <41.117744, 33.427643, 33.160500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119102, 33.041996, 33.266682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281855, 0.253776, 0.925287,
		-0.959451, -0.077964, -0.270879,
		0.003397, -0.964116, 0.265460,
		41.120121, 32.752762, 33.346321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441227, 33.170158, 33.371700>,  <41.117744, 33.427643, 33.160500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441227, 33.170158, 33.371700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672726, 32.895390, 33.547512>,  <40.811626, 32.730526, 33.653000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672726, 32.895390, 33.547512>,  <40.441227, 33.170158, 33.371700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672726, 32.895390, 33.547512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423918, 0.207017, 0.881724,
		-0.696668, -0.696620, -0.171389,
		0.578746, -0.686924, 0.439531,
		40.846348, 32.689312, 33.679371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068016, 32.906414, 33.900455>,  <40.441227, 33.170158, 33.371700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068016, 32.906414, 33.900455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436676, 32.823956, 34.031944>,  <40.657871, 32.774479, 34.110836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436676, 32.823956, 34.031944>,  <40.068016, 32.906414, 33.900455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436676, 32.823956, 34.031944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290101, 0.196506, 0.936604,
		-0.257673, -0.958587, 0.121307,
		0.921654, -0.206146, 0.328722,
		40.713173, 32.762112, 34.130562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033573, 32.368851, 34.431530>,  <40.068016, 32.906414, 33.900455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033573, 32.368851, 34.431530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389580, 32.543716, 34.483311>,  <40.603184, 32.648636, 34.514378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389580, 32.543716, 34.483311>,  <40.033573, 32.368851, 34.431530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389580, 32.543716, 34.483311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189545, 0.096560, 0.977113,
		0.414660, -0.894183, 0.168802,
		0.890017, 0.437165, 0.129448,
		40.656586, 32.674866, 34.522144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225231, 32.203800, 35.047688>,  <40.033573, 32.368851, 34.431530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225231, 32.203800, 35.047688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544827, 32.443340, 35.025814>,  <40.736584, 32.587067, 35.012688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544827, 32.443340, 35.025814>,  <40.225231, 32.203800, 35.047688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544827, 32.443340, 35.025814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051414, 0.022577, 0.998422,
		0.599142, -0.800541, -0.012751,
		0.798990, 0.598853, -0.054686,
		40.784523, 32.622997, 35.009407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743622, 32.101849, 35.523388>,  <40.225231, 32.203800, 35.047688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743622, 32.101849, 35.523388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779148, 32.493763, 35.451687>,  <40.800465, 32.728912, 35.408669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779148, 32.493763, 35.451687>,  <40.743622, 32.101849, 35.523388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779148, 32.493763, 35.451687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057215, 0.184683, 0.981131,
		0.994403, -0.076888, 0.072462,
		0.088820, 0.979786, -0.179251,
		40.805794, 32.787697, 35.397911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200375, 32.322361, 36.010464>,  <40.743622, 32.101849, 35.523388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200375, 32.322361, 36.010464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029434, 32.659897, 35.880661>,  <40.926868, 32.862419, 35.802780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029434, 32.659897, 35.880661>,  <41.200375, 32.322361, 36.010464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029434, 32.659897, 35.880661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014650, 0.365349, 0.930755,
		0.903967, 0.393005, -0.168495,
		-0.427351, 0.843841, -0.324506,
		40.901230, 32.913048, 35.783310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514870, 32.894711, 36.360752>,  <41.200375, 32.322361, 36.010464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514870, 32.894711, 36.360752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164120, 33.056038, 36.256123>,  <40.953671, 33.152836, 36.193344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164120, 33.056038, 36.256123>,  <41.514870, 32.894711, 36.360752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164120, 33.056038, 36.256123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236759, 0.111221, 0.965181,
		0.418370, 0.908275, -0.002037,
		-0.876876, 0.403320, -0.261574,
		40.901058, 33.177032, 36.177650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283344, 33.671032, 36.625469>,  <41.514870, 32.894711, 36.360752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283344, 33.671032, 36.625469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980785, 33.415516, 36.569172>,  <40.799248, 33.262207, 36.535393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980785, 33.415516, 36.569172>,  <41.283344, 33.671032, 36.625469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980785, 33.415516, 36.569172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243700, 0.075536, 0.966905,
		-0.607017, 0.765665, -0.212808,
		-0.756400, -0.638789, -0.140741,
		40.753864, 33.223881, 36.526951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933475, 33.351944, 36.807648>,  <41.283344, 33.671032, 36.625469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933475, 33.351944, 36.807648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001995, 33.742302, 36.861744>,  <42.043106, 33.976517, 36.894203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001995, 33.742302, 36.861744>,  <41.933475, 33.351944, 36.807648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001995, 33.742302, 36.861744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567090, -0.014587, 0.823527,
		0.805647, -0.217760, 0.550920,
		0.171294, 0.975894, 0.135241,
		42.053383, 34.035069, 36.902317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071541, 33.467175, 37.608646>,  <41.933475, 33.351944, 36.807648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071541, 33.467175, 37.608646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941425, 33.808014, 37.444645>,  <41.863358, 34.012520, 37.346245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941425, 33.808014, 37.444645>,  <42.071541, 33.467175, 37.608646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941425, 33.808014, 37.444645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508275, 0.208072, 0.835681,
		0.797397, 0.480236, 0.365419,
		-0.325290, 0.852103, -0.410008,
		41.843838, 34.063644, 37.321644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277142, 33.943230, 38.090015>,  <42.071541, 33.467175, 37.608646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277142, 33.943230, 38.090015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974388, 34.101036, 37.881599>,  <41.792736, 34.195721, 37.756550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974388, 34.101036, 37.881599>,  <42.277142, 33.943230, 38.090015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974388, 34.101036, 37.881599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509783, 0.142497, 0.848420,
		0.408963, 0.907773, 0.093264,
		-0.756882, 0.394517, -0.521043,
		41.747322, 34.219391, 37.725288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951332, 34.384884, 38.554028>,  <42.277142, 33.943230, 38.090015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951332, 34.384884, 38.554028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678810, 34.400429, 38.261639>,  <41.515297, 34.409756, 38.086205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678810, 34.400429, 38.261639>,  <41.951332, 34.384884, 38.554028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678810, 34.400429, 38.261639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699649, 0.259025, 0.665881,
		0.215217, 0.965089, -0.149283,
		-0.681302, 0.038863, -0.730970,
		41.474419, 34.412086, 38.042347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536152, 35.015392, 38.665493>,  <41.951332, 34.384884, 38.554028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536152, 35.015392, 38.665493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327316, 34.729408, 38.479481>,  <41.202015, 34.557819, 38.367874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327316, 34.729408, 38.479481>,  <41.536152, 35.015392, 38.665493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327316, 34.729408, 38.479481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777627, 0.175079, 0.603857,
		-0.350315, 0.676890, -0.647379,
		-0.522087, -0.714960, -0.465035,
		41.170689, 34.514919, 38.339970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956799, 35.335571, 38.588310>,  <41.536152, 35.015392, 38.665493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956799, 35.335571, 38.588310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907890, 34.938580, 38.585987>,  <40.878544, 34.700386, 38.584591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907890, 34.938580, 38.585987>,  <40.956799, 35.335571, 38.588310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907890, 34.938580, 38.585987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678220, 0.079277, 0.730571,
		-0.724616, 0.093267, -0.682812,
		-0.122269, -0.992480, -0.005810,
		40.871208, 34.640835, 38.584244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297497, 35.318832, 38.519749>,  <40.956799, 35.335571, 38.588310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297497, 35.318832, 38.519749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373981, 34.946095, 38.643101>,  <40.419872, 34.722450, 38.717113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373981, 34.946095, 38.643101>,  <40.297497, 35.318832, 38.519749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373981, 34.946095, 38.643101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742921, 0.067931, 0.665923,
		-0.641486, -0.356436, -0.679300,
		0.191214, -0.931847, 0.308381,
		40.431347, 34.666542, 38.735615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618538, 35.037296, 38.633121>,  <40.297497, 35.318832, 38.519749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618538, 35.037296, 38.633121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863785, 34.805519, 38.847908>,  <40.010933, 34.666454, 38.976780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863785, 34.805519, 38.847908>,  <39.618538, 35.037296, 38.633121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863785, 34.805519, 38.847908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643431, 0.028081, 0.764989,
		-0.458345, -0.814529, -0.355614,
		0.613120, -0.579442, 0.536964,
		40.047722, 34.631687, 39.008999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331944, 35.088303, 39.350945>,  <39.618538, 35.037296, 38.633121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331944, 35.088303, 39.350945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637875, 34.836319, 39.404877>,  <39.821434, 34.685127, 39.437237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637875, 34.836319, 39.404877>,  <39.331944, 35.088303, 39.350945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637875, 34.836319, 39.404877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447228, -0.368547, 0.814960,
		-0.463700, -0.683609, -0.563613,
		0.764832, -0.629961, 0.134834,
		39.867325, 34.647331, 39.445328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153881, 34.454231, 39.594967>,  <39.331944, 35.088303, 39.350945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153881, 34.454231, 39.594967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526058, 34.430447, 39.739601>,  <39.749363, 34.416176, 39.826382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526058, 34.430447, 39.739601>,  <39.153881, 34.454231, 39.594967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526058, 34.430447, 39.739601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361627, -0.308438, 0.879825,
		0.059209, -0.949384, -0.308487,
		0.930441, -0.059464, 0.361585,
		39.805191, 34.412609, 39.848076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203011, 33.809216, 39.819756>,  <39.153881, 34.454231, 39.594967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203011, 33.809216, 39.819756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500340, 33.985931, 40.020672>,  <39.678738, 34.091961, 40.141220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500340, 33.985931, 40.020672>,  <39.203011, 33.809216, 39.819756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500340, 33.985931, 40.020672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249065, -0.514109, 0.820767,
		0.620840, -0.735196, -0.272112,
		0.743320, 0.441791, 0.502291,
		39.723335, 34.118469, 40.171360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679104, 33.258274, 40.195423>,  <39.203011, 33.809216, 39.819756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679104, 33.258274, 40.195423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712650, 33.613575, 40.376080>,  <39.732777, 33.826756, 40.484474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712650, 33.613575, 40.376080>,  <39.679104, 33.258274, 40.195423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712650, 33.613575, 40.376080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343164, -0.399772, 0.849954,
		0.935524, -0.226266, 0.271289,
		0.083862, 0.888249, 0.451643,
		39.737808, 33.880051, 40.511574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030365, 33.127842, 40.831242>,  <39.679104, 33.258274, 40.195423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030365, 33.127842, 40.831242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817993, 33.463703, 40.877010>,  <39.690571, 33.665222, 40.904472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817993, 33.463703, 40.877010>,  <40.030365, 33.127842, 40.831242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817993, 33.463703, 40.877010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380095, -0.356636, 0.853428,
		0.757393, 0.409617, 0.508498,
		-0.530927, 0.839657, 0.114420,
		39.658714, 33.715599, 40.911335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028114, 33.226665, 41.548279>,  <40.030365, 33.127842, 40.831242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028114, 33.226665, 41.548279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738941, 33.459358, 41.399166>,  <39.565437, 33.598972, 41.309700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738941, 33.459358, 41.399166>,  <40.028114, 33.226665, 41.548279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738941, 33.459358, 41.399166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529237, -0.119393, 0.840032,
		0.444162, 0.804574, 0.394184,
		-0.722930, 0.581727, -0.372780,
		39.522060, 33.633877, 41.287331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793827, 33.750092, 42.124821>,  <40.028114, 33.226665, 41.548279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793827, 33.750092, 42.124821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509899, 33.732098, 41.843643>,  <39.339542, 33.721302, 41.674938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509899, 33.732098, 41.843643>,  <39.793827, 33.750092, 42.124821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509899, 33.732098, 41.843643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696132, -0.107493, 0.709821,
		-0.107493, 0.993188, 0.044985,
		-0.709821, -0.044985, -0.702944,
		39.296951, 33.718601, 41.632759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161972, 34.071156, 42.406044>,  <39.793827, 33.750092, 42.124821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161972, 34.071156, 42.406044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030045, 33.832367, 42.113510>,  <38.950890, 33.689095, 41.937992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030045, 33.832367, 42.113510>,  <39.161972, 34.071156, 42.406044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030045, 33.832367, 42.113510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716102, -0.346592, 0.605865,
		-0.615157, 0.723535, -0.313177,
		-0.329820, -0.596968, -0.731333,
		38.931099, 33.653275, 41.894112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472961, 34.086845, 42.584694>,  <39.161972, 34.071156, 42.406044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472961, 34.086845, 42.584694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534550, 33.749882, 42.378147>,  <38.571503, 33.547703, 42.254219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534550, 33.749882, 42.378147>,  <38.472961, 34.086845, 42.584694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534550, 33.749882, 42.378147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588124, -0.498077, 0.637205,
		-0.793980, 0.205580, -0.572130,
		0.153969, -0.842411, -0.516370,
		38.580742, 33.497158, 42.223236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884716, 33.830975, 42.464424>,  <38.472961, 34.086845, 42.584694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884716, 33.830975, 42.464424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112583, 33.505798, 42.416073>,  <38.249302, 33.310692, 42.387062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112583, 33.505798, 42.416073>,  <37.884716, 33.830975, 42.464424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112583, 33.505798, 42.416073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644349, -0.533061, 0.548325,
		-0.510190, -0.234474, -0.827483,
		0.569667, -0.812938, -0.120879,
		38.283482, 33.261917, 42.379807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413273, 33.304516, 42.321156>,  <37.884716, 33.830975, 42.464424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413273, 33.304516, 42.321156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738483, 33.126526, 42.471344>,  <37.933609, 33.019730, 42.561459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738483, 33.126526, 42.471344>,  <37.413273, 33.304516, 42.321156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738483, 33.126526, 42.471344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581618, -0.591247, 0.558702,
		-0.026612, -0.672623, -0.739507,
		0.813027, -0.444979, 0.375475,
		37.982391, 32.993031, 42.583988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351727, 32.629204, 42.314606>,  <37.413273, 33.304516, 42.321156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351727, 32.629204, 42.314606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570091, 32.734974, 42.632614>,  <37.701111, 32.798435, 42.823418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570091, 32.734974, 42.632614>,  <37.351727, 32.629204, 42.314606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570091, 32.734974, 42.632614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603675, -0.533862, 0.592087,
		0.580997, -0.803161, -0.131812,
		0.545911, 0.264429, 0.795021,
		37.733864, 32.814304, 42.871120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443794, 31.966892, 42.700268>,  <37.351727, 32.629204, 42.314606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443794, 31.966892, 42.700268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449081, 32.309006, 42.907467>,  <37.452251, 32.514275, 43.031784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449081, 32.309006, 42.907467>,  <37.443794, 31.966892, 42.700268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449081, 32.309006, 42.907467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525398, -0.434824, 0.731358,
		0.850754, -0.281817, 0.443618,
		0.013213, 0.855282, 0.517995,
		37.453045, 32.565590, 43.062866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495689, 31.929676, 43.474682>,  <37.443794, 31.966892, 42.700268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495689, 31.929676, 43.474682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301941, 32.274666, 43.416004>,  <37.185692, 32.481659, 43.380798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301941, 32.274666, 43.416004>,  <37.495689, 31.929676, 43.474682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301941, 32.274666, 43.416004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634050, -0.230541, 0.738127,
		0.602796, 0.450543, 0.658520,
		-0.484374, 0.862475, -0.146698,
		37.156628, 32.533409, 43.371994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361183, 32.239437, 44.164101>,  <37.495689, 31.929676, 43.474682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361183, 32.239437, 44.164101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104950, 32.358204, 43.880836>,  <36.951210, 32.429466, 43.710880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104950, 32.358204, 43.880836>,  <37.361183, 32.239437, 44.164101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104950, 32.358204, 43.880836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761218, -0.124290, 0.636473,
		0.100965, 0.946779, 0.305640,
		-0.640588, 0.296921, -0.708156,
		36.912773, 32.447281, 43.668388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384510, 32.964184, 44.272045>,  <37.361183, 32.239437, 44.164101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384510, 32.964184, 44.272045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336227, 33.352070, 44.187107>,  <37.307259, 33.584801, 44.136143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336227, 33.352070, 44.187107>,  <37.384510, 32.964184, 44.272045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336227, 33.352070, 44.187107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955441, 0.055442, -0.289927,
		-0.269373, -0.237881, -0.933194,
		-0.120707, 0.969711, -0.212347,
		37.300014, 33.642982, 44.123402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101879, 32.921043, 43.907318>,  <37.384510, 32.964184, 44.272045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101879, 32.921043, 43.907318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059456, 32.642097, 43.623787>,  <38.034000, 32.474731, 43.453667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059456, 32.642097, 43.623787>,  <38.101879, 32.921043, 43.907318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059456, 32.642097, 43.623787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485963, 0.585569, -0.648806,
		0.867520, -0.413277, 0.276787,
		-0.106059, -0.697361, -0.708830,
		38.027637, 32.432888, 43.411137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726990, 32.872566, 43.572781>,  <38.101879, 32.921043, 43.907318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726990, 32.872566, 43.572781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464134, 32.725636, 43.309498>,  <38.306419, 32.637478, 43.151527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464134, 32.725636, 43.309498>,  <38.726990, 32.872566, 43.572781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464134, 32.725636, 43.309498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538749, 0.381840, -0.750965,
		0.527182, -0.848097, -0.053023,
		-0.657137, -0.367329, -0.658210,
		38.266994, 32.615437, 43.112034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062599, 32.470837, 43.034218>,  <38.726990, 32.872566, 43.572781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062599, 32.470837, 43.034218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717838, 32.586758, 42.867775>,  <38.510983, 32.656311, 42.767910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717838, 32.586758, 42.867775>,  <39.062599, 32.470837, 43.034218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717838, 32.586758, 42.867775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473545, 0.166564, -0.864877,
		-0.181335, -0.942482, -0.280796,
		-0.861901, 0.289801, -0.416103,
		38.459267, 32.673698, 42.742943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979641, 32.204506, 42.267231>,  <39.062599, 32.470837, 43.034218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979641, 32.204506, 42.267231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755936, 32.535652, 42.284492>,  <38.621712, 32.734341, 42.294849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755936, 32.535652, 42.284492>,  <38.979641, 32.204506, 42.267231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755936, 32.535652, 42.284492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423378, 0.329986, -0.843718,
		-0.712728, -0.453587, -0.535049,
		-0.559259, 0.827869, 0.043152,
		38.588158, 32.784012, 42.297440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039314, 31.777922, 41.645473>,  <38.979641, 32.204506, 42.267231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039314, 31.777922, 41.645473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909157, 31.403585, 41.591339>,  <38.831062, 31.178984, 41.558857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909157, 31.403585, 41.591339>,  <39.039314, 31.777922, 41.645473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909157, 31.403585, 41.591339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141521, -0.189714, 0.971587,
		-0.934927, 0.296999, 0.194173,
		-0.325398, -0.935842, -0.135337,
		38.811539, 31.122833, 41.550739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650154, 32.409847, 41.455364>,  <39.039314, 31.777922, 41.645473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650154, 32.409847, 41.455364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632935, 32.744503, 41.673786>,  <38.622601, 32.945297, 41.804840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632935, 32.744503, 41.673786>,  <38.650154, 32.409847, 41.455364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632935, 32.744503, 41.673786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602744, 0.457639, -0.653656,
		-0.796773, 0.300991, -0.523983,
		-0.043050, 0.836643, 0.546054,
		38.620018, 32.995495, 41.837601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371990, 32.919228, 41.080261>,  <38.650154, 32.409847, 41.455364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371990, 32.919228, 41.080261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613312, 33.081131, 41.355129>,  <38.758106, 33.178272, 41.520050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613312, 33.081131, 41.355129>,  <38.371990, 32.919228, 41.080261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613312, 33.081131, 41.355129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540720, 0.425749, -0.725507,
		-0.586212, 0.809266, 0.037998,
		0.603306, 0.404754, 0.687165,
		38.794304, 33.202557, 41.561279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300793, 33.534111, 40.793964>,  <38.371990, 32.919228, 41.080261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300793, 33.534111, 40.793964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589714, 33.567150, 41.068615>,  <38.763069, 33.586971, 41.233406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589714, 33.567150, 41.068615>,  <38.300793, 33.534111, 40.793964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589714, 33.567150, 41.068615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496496, 0.629207, -0.597989,
		-0.481418, 0.772837, 0.413473,
		0.722308, 0.082595, 0.686622,
		38.806408, 33.591930, 41.274601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476429, 34.292740, 40.832275>,  <38.300793, 33.534111, 40.793964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476429, 34.292740, 40.832275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791531, 34.090126, 40.972481>,  <38.980591, 33.968559, 41.056606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791531, 34.090126, 40.972481>,  <38.476429, 34.292740, 40.832275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791531, 34.090126, 40.972481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598313, 0.493881, -0.630954,
		0.146485, 0.706758, 0.692124,
		0.787759, -0.506532, 0.350516,
		39.027859, 33.938168, 41.077637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912251, 34.772129, 40.997704>,  <38.476429, 34.292740, 40.832275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912251, 34.772129, 40.997704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132927, 34.440014, 40.966038>,  <39.265331, 34.240746, 40.947041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132927, 34.440014, 40.966038>,  <38.912251, 34.772129, 40.997704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132927, 34.440014, 40.966038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661075, 0.493172, -0.565475,
		0.508544, 0.259636, 0.820958,
		0.551691, -0.830283, -0.079161,
		39.298435, 34.190929, 40.942291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565353, 35.015671, 41.097557>,  <38.912251, 34.772129, 40.997704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565353, 35.015671, 41.097557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633087, 34.665462, 40.916542>,  <39.673725, 34.455338, 40.807934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633087, 34.665462, 40.916542>,  <39.565353, 35.015671, 41.097557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633087, 34.665462, 40.916542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736079, 0.417683, -0.532662,
		0.655374, -0.242908, 0.715179,
		0.169330, -0.875521, -0.452538,
		39.683887, 34.402805, 40.780781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233391, 35.128494, 40.829895>,  <39.565353, 35.015671, 41.097557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233391, 35.128494, 40.829895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132370, 34.786846, 40.648037>,  <40.071758, 34.581860, 40.538921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132370, 34.786846, 40.648037>,  <40.233391, 35.128494, 40.829895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132370, 34.786846, 40.648037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473953, 0.300441, -0.827710,
		0.843554, -0.424522, 0.328934,
		-0.252556, -0.854117, -0.454642,
		40.056602, 34.530609, 40.511646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652843, 35.092541, 40.226181>,  <40.233391, 35.128494, 40.829895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652843, 35.092541, 40.226181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468555, 34.740795, 40.178089>,  <40.357983, 34.529747, 40.149235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468555, 34.740795, 40.178089>,  <40.652843, 35.092541, 40.226181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468555, 34.740795, 40.178089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402751, -0.086424, -0.911220,
		0.790903, -0.468243, 0.393982,
		-0.460722, -0.879363, -0.120233,
		40.330338, 34.476986, 40.142021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994320, 34.549473, 39.954132>,  <40.652843, 35.092541, 40.226181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994320, 34.549473, 39.954132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645016, 34.414074, 39.813934>,  <40.435432, 34.332836, 39.729816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645016, 34.414074, 39.813934>,  <40.994320, 34.549473, 39.954132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645016, 34.414074, 39.813934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430204, -0.197845, -0.880785,
		0.228798, -0.919934, 0.318391,
		-0.873256, -0.338495, -0.350492,
		40.383038, 34.312527, 39.708786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962891, 33.909039, 39.623772>,  <40.994320, 34.549473, 39.954132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962891, 33.909039, 39.623772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677807, 34.117756, 39.436253>,  <40.506756, 34.242985, 39.323742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677807, 34.117756, 39.436253>,  <40.962891, 33.909039, 39.623772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677807, 34.117756, 39.436253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393567, -0.255758, -0.883002,
		-0.580643, -0.813831, -0.023078,
		-0.712712, 0.521792, -0.468801,
		40.463993, 34.274292, 39.295612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595493, 33.443451, 39.153015>,  <40.962891, 33.909039, 39.623772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595493, 33.443451, 39.153015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536388, 33.814777, 39.016548>,  <40.500923, 34.037575, 38.934669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536388, 33.814777, 39.016548>,  <40.595493, 33.443451, 39.153015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536388, 33.814777, 39.016548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623812, -0.180201, -0.760517,
		-0.767479, -0.325199, -0.552468,
		-0.147764, 0.928318, -0.341163,
		40.492058, 34.093273, 38.914200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544334, 33.439720, 38.465004>,  <40.595493, 33.443451, 39.153015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544334, 33.439720, 38.465004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621017, 33.829891, 38.508419>,  <40.667027, 34.063995, 38.534470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621017, 33.829891, 38.508419>,  <40.544334, 33.439720, 38.465004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621017, 33.829891, 38.508419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452148, 0.010378, -0.891883,
		-0.871097, 0.220057, -0.439050,
		0.191709, 0.975432, 0.108539,
		40.678532, 34.122520, 38.540981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400166, 33.641201, 37.764568>,  <40.544334, 33.439720, 38.465004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400166, 33.641201, 37.764568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645885, 33.905411, 37.937241>,  <40.793316, 34.063934, 38.040844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645885, 33.905411, 37.937241>,  <40.400166, 33.641201, 37.764568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645885, 33.905411, 37.937241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435719, 0.172157, -0.883465,
		-0.657864, 0.730805, -0.182045,
		0.614300, 0.660520, 0.431682,
		40.830177, 34.103565, 38.066746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497002, 34.191116, 37.308113>,  <40.400166, 33.641201, 37.764568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497002, 34.191116, 37.308113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824368, 34.223572, 37.535664>,  <41.020786, 34.243046, 37.672192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824368, 34.223572, 37.535664>,  <40.497002, 34.191116, 37.308113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824368, 34.223572, 37.535664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529439, 0.278354, -0.801382,
		-0.223372, 0.957045, 0.184850,
		0.818413, 0.081139, 0.568874,
		41.069893, 34.247913, 37.706326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793545, 34.909916, 37.179459>,  <40.497002, 34.191116, 37.308113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793545, 34.909916, 37.179459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088142, 34.681206, 37.324043>,  <41.264900, 34.543980, 37.410793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088142, 34.681206, 37.324043>,  <40.793545, 34.909916, 37.179459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088142, 34.681206, 37.324043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588484, 0.278091, -0.759178,
		0.333559, 0.771843, 0.541292,
		0.736494, -0.571773, 0.361457,
		41.309090, 34.509674, 37.432480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438496, 35.226418, 36.909988>,  <40.793545, 34.909916, 37.179459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438496, 35.226418, 36.909988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557243, 34.863117, 37.027939>,  <41.628494, 34.645138, 37.098709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557243, 34.863117, 37.027939>,  <41.438496, 35.226418, 36.909988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557243, 34.863117, 37.027939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728969, 0.016084, -0.684357,
		0.616823, 0.418124, 0.666860,
		0.296872, -0.908247, 0.294879,
		41.646305, 34.590645, 37.116402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107048, 35.215660, 37.063896>,  <41.438496, 35.226418, 36.909988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107048, 35.215660, 37.063896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024891, 34.833855, 36.977448>,  <41.975597, 34.604771, 36.925579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024891, 34.833855, 36.977448>,  <42.107048, 35.215660, 37.063896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024891, 34.833855, 36.977448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775445, -0.023998, -0.630959,
		0.597074, -0.297190, 0.745104,
		-0.205396, -0.954517, -0.216126,
		41.963272, 34.547501, 36.912609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726944, 34.784836, 37.069454>,  <42.107048, 35.215660, 37.063896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726944, 34.784836, 37.069454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439594, 34.648617, 36.826817>,  <42.267185, 34.566887, 36.681232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439594, 34.648617, 36.826817>,  <42.726944, 34.784836, 37.069454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439594, 34.648617, 36.826817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594260, 0.152897, -0.789606,
		0.361646, -0.927712, 0.092537,
		-0.718378, -0.340548, -0.606597,
		42.224079, 34.546452, 36.644836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969673, 34.263119, 36.532001>,  <42.726944, 34.784836, 37.069454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969673, 34.263119, 36.532001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664204, 34.472481, 36.380821>,  <42.480923, 34.598099, 36.290115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664204, 34.472481, 36.380821>,  <42.969673, 34.263119, 36.532001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664204, 34.472481, 36.380821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551831, 0.225365, -0.802928,
		-0.335082, -0.821740, -0.460938,
		-0.763677, 0.523406, -0.377946,
		42.435101, 34.629501, 36.267437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950447, 34.153904, 35.847126>,  <42.969673, 34.263119, 36.532001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950447, 34.153904, 35.847126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716503, 34.478168, 35.858273>,  <42.576138, 34.672726, 35.864960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716503, 34.478168, 35.858273>,  <42.950447, 34.153904, 35.847126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716503, 34.478168, 35.858273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348438, 0.282111, -0.893870,
		-0.732483, -0.513078, -0.447459,
		-0.584858, 0.810657, 0.027866,
		42.541046, 34.721367, 35.866631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683315, 34.168701, 35.221333>,  <42.950447, 34.153904, 35.847126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683315, 34.168701, 35.221333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744453, 34.518883, 35.404728>,  <42.781136, 34.728992, 35.514767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744453, 34.518883, 35.404728>,  <42.683315, 34.168701, 35.221333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744453, 34.518883, 35.404728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552486, 0.308969, -0.774143,
		-0.819388, 0.371635, -0.436452,
		0.152849, 0.875457, 0.458489,
		42.790306, 34.781521, 35.542274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371349, 34.720837, 34.756039>,  <42.683315, 34.168701, 35.221333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371349, 34.720837, 34.756039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688503, 34.784801, 34.991241>,  <42.878796, 34.823181, 35.132362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688503, 34.784801, 34.991241>,  <42.371349, 34.720837, 34.756039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688503, 34.784801, 34.991241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515242, 0.339277, -0.787031,
		-0.325353, 0.926995, 0.186617,
		0.792888, 0.159910, 0.588011,
		42.926369, 34.832775, 35.167645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697239, 35.437847, 34.882252>,  <42.371349, 34.720837, 34.756039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697239, 35.437847, 34.882252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994675, 35.176182, 34.937595>,  <43.173138, 35.019180, 34.970802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994675, 35.176182, 34.937595>,  <42.697239, 35.437847, 34.882252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994675, 35.176182, 34.937595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579317, 0.526988, -0.621832,
		0.333867, 0.542542, 0.770832,
		0.743589, -0.654165, 0.138360,
		43.217751, 34.979931, 34.979103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.283794, 35.584553, 34.695923>,  <42.697239, 35.437847, 34.882252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.283794, 35.584553, 34.695923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516579, 35.262249, 34.739887>,  <43.656250, 35.068867, 34.766266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516579, 35.262249, 34.739887>,  <43.283794, 35.584553, 34.695923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516579, 35.262249, 34.739887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729287, 0.457305, -0.508932,
		0.359811, 0.376337, 0.853760,
		0.581959, -0.805756, 0.109915,
		43.691166, 35.020523, 34.772861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.977665, 35.812805, 34.841770>,  <43.283794, 35.584553, 34.695923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.977665, 35.812805, 34.841770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005737, 35.445316, 34.686321>,  <44.022583, 35.224823, 34.593052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005737, 35.445316, 34.686321>,  <43.977665, 35.812805, 34.841770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005737, 35.445316, 34.686321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699751, 0.322993, -0.637200,
		0.710931, -0.227218, 0.665544,
		0.070183, -0.918720, -0.388622,
		44.026791, 35.169701, 34.569736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678295, 35.557503, 34.753349>,  <43.977665, 35.812805, 34.841770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678295, 35.557503, 34.753349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435974, 35.384453, 34.486267>,  <44.290581, 35.280621, 34.326015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435974, 35.384453, 34.486267>,  <44.678295, 35.557503, 34.753349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435974, 35.384453, 34.486267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714494, 0.073366, -0.695784,
		0.350003, -0.898582, 0.264665,
		-0.605802, -0.432628, -0.667710,
		44.254234, 35.254665, 34.285954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.409176, 35.894157, 35.019318>,  <44.678295, 35.557503, 34.753349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.409176, 35.894157, 35.019318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299988, 36.014400, 34.653778>,  <45.234474, 36.086548, 34.434452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299988, 36.014400, 34.653778>,  <45.409176, 35.894157, 35.019318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.299988, 36.014400, 34.653778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954173, 0.205710, -0.217342,
		0.122653, -0.931298, -0.342986,
		-0.272966, 0.300610, -0.913851,
		45.218098, 36.104584, 34.379623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.817387, 35.451233, 34.579437>,  <45.409176, 35.894157, 35.019318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.817387, 35.451233, 34.579437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709232, 35.812428, 34.445866>,  <45.644341, 36.029144, 34.365723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709232, 35.812428, 34.445866>,  <45.817387, 35.451233, 34.579437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709232, 35.812428, 34.445866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962642, 0.248343, -0.107920,
		-0.014520, -0.350638, -0.936399,
		-0.270389, 0.902983, -0.333933,
		45.628117, 36.083321, 34.345684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107059, 35.567478, 33.869495>,  <45.817387, 35.451233, 34.579437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.107059, 35.567478, 33.869495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.034981, 35.910763, 34.061749>,  <45.991734, 36.116734, 34.177101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.034981, 35.910763, 34.061749>,  <46.107059, 35.567478, 33.869495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.034981, 35.910763, 34.061749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924702, 0.314387, -0.214680,
		-0.335345, 0.405759, -0.850237,
		-0.180195, 0.858208, 0.480634,
		45.980923, 36.168224, 34.205940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222061, 36.112106, 33.259636>,  <46.107059, 35.567478, 33.869495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222061, 36.112106, 33.259636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.302811, 36.222828, 33.635429>,  <46.351261, 36.289261, 33.860905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.302811, 36.222828, 33.635429>,  <46.222061, 36.112106, 33.259636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.302811, 36.222828, 33.635429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943569, 0.202159, -0.262314,
		-0.262534, 0.939421, -0.220372,
		0.201874, 0.276803, 0.939483,
		46.363373, 36.305870, 33.917274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.469505, 36.842018, 33.138206>,  <46.222061, 36.112106, 33.259636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.469505, 36.842018, 33.138206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579456, 36.557865, 33.397377>,  <46.645428, 36.387375, 33.552879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579456, 36.557865, 33.397377>,  <46.469505, 36.842018, 33.138206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.579456, 36.557865, 33.397377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960163, 0.167566, -0.223628,
		0.050291, 0.683581, 0.728140,
		0.274879, -0.710379, 0.647922,
		46.661919, 36.344749, 33.591755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.905743, 37.016739, 33.836906>,  <46.469505, 36.842018, 33.138206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.905743, 37.016739, 33.836906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.984200, 36.645145, 33.711361>,  <47.031273, 36.422188, 33.636032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.984200, 36.645145, 33.711361>,  <46.905743, 37.016739, 33.836906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.984200, 36.645145, 33.711361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979710, 0.199107, 0.022912,
		0.041208, -0.311991, 0.949191,
		0.196139, -0.928988, -0.313866,
		47.043041, 36.366447, 33.617203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.083179, 37.117638, 34.531380>,  <46.905743, 37.016739, 33.836906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.083179, 37.117638, 34.531380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.133713, 37.033348, 34.919121>,  <47.164032, 36.982773, 35.151764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.133713, 37.033348, 34.919121>,  <47.083179, 37.117638, 34.531380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.133713, 37.033348, 34.919121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052860, -0.977219, -0.205546,
		0.990579, -0.025273, -0.134593,
		0.126332, -0.210724, 0.969348,
		47.171612, 36.970131, 35.209927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.673977, 36.642372, 34.617935>,  <47.083179, 37.117638, 34.531380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.673977, 36.642372, 34.617935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.481724, 36.549114, 34.956081>,  <47.366371, 36.493160, 35.158970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.481724, 36.549114, 34.956081>,  <47.673977, 36.642372, 34.617935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.481724, 36.549114, 34.956081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124885, -0.972383, -0.197168,
		0.867983, 0.010807, 0.496477,
		-0.480635, -0.233141, 0.845361,
		47.337532, 36.479172, 35.209690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.059761, 36.169460, 35.111553>,  <47.673977, 36.642372, 34.617935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.059761, 36.169460, 35.111553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.661621, 36.137508, 35.090019>,  <47.422737, 36.118336, 35.077099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.661621, 36.137508, 35.090019>,  <48.059761, 36.169460, 35.111553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.661621, 36.137508, 35.090019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091850, -0.955455, -0.280481,
		-0.029028, -0.284121, 0.958349,
		-0.995350, -0.079883, -0.053831,
		47.363018, 36.113544, 35.073872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.784649, 35.720318, 35.666142>,  <48.059761, 36.169460, 35.111553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.784649, 35.720318, 35.666142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593929, 35.720108, 35.314537>,  <47.479500, 35.719982, 35.103573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593929, 35.720108, 35.314537>,  <47.784649, 35.720318, 35.666142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.593929, 35.720108, 35.314537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236436, -0.963222, -0.127678,
		-0.846619, -0.268707, 0.459383,
		-0.476796, -0.000520, -0.879014,
		47.450890, 35.719952, 35.050835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.214638, 35.238358, 35.355991>,  <47.784649, 35.720318, 35.666142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.214638, 35.238358, 35.355991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.078564, 34.891151, 35.211315>,  <47.996918, 34.682827, 35.124512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.078564, 34.891151, 35.211315>,  <48.214638, 35.238358, 35.355991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.078564, 34.891151, 35.211315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884351, 0.426073, -0.190749,
		0.319679, 0.254967, -0.912577,
		-0.340189, -0.868017, -0.361687,
		47.976505, 34.630745, 35.102810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.788475, 35.376907, 34.706333>,  <48.214638, 35.238358, 35.355991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.788475, 35.376907, 34.706333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656746, 35.061855, 34.914639>,  <47.577709, 34.872826, 35.039619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656746, 35.061855, 34.914639>,  <47.788475, 35.376907, 34.706333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.656746, 35.061855, 34.914639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944111, 0.282912, -0.169159,
		-0.014095, -0.547363, -0.836777,
		-0.329326, -0.787626, 0.520759,
		47.557949, 34.825569, 35.070866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.767204, 29.207212, 28.453588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.815525, 29.576073, 28.306595>,  <37.844517, 29.797390, 28.218399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.815525, 29.576073, 28.306595>,  <37.767204, 29.207212, 28.453588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815525, 29.576073, 28.306595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217896, 0.385797, 0.896483,
		0.968467, -0.028221, 0.247537,
		0.120799, 0.922152, -0.367483,
		37.851765, 29.852718, 28.196350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277786, 29.532434, 28.849171>,  <37.767204, 29.207212, 28.453588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277786, 29.532434, 28.849171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.063999, 29.840113, 28.709064>,  <37.935726, 30.024719, 28.625000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.063999, 29.840113, 28.709064>,  <38.277786, 29.532434, 28.849171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063999, 29.840113, 28.709064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173808, 0.305537, 0.936183,
		0.827128, 0.561234, -0.029605,
		-0.534463, 0.769197, -0.350265,
		37.903660, 30.070871, 28.603985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341331, 30.124651, 29.281050>,  <38.277786, 29.532434, 28.849171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341331, 30.124651, 29.281050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.041039, 30.274780, 29.063597>,  <37.860863, 30.364859, 28.933125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.041039, 30.274780, 29.063597>,  <38.341331, 30.124651, 29.281050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041039, 30.274780, 29.063597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353403, 0.467090, 0.810514,
		0.558129, 0.800600, -0.218019,
		-0.750732, 0.375323, -0.543631,
		37.815819, 30.387377, 28.900507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299732, 30.959938, 29.275143>,  <38.341331, 30.124651, 29.281050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299732, 30.959938, 29.275143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937599, 30.811655, 29.192251>,  <37.720318, 30.722685, 29.142517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937599, 30.811655, 29.192251>,  <38.299732, 30.959938, 29.275143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937599, 30.811655, 29.192251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409564, 0.632987, 0.656951,
		-0.112365, 0.679634, -0.724894,
		-0.905335, -0.370709, -0.207228,
		37.666000, 30.700443, 29.130083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908043, 31.556547, 29.145344>,  <38.299732, 30.959938, 29.275143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908043, 31.556547, 29.145344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.641708, 31.267906, 29.221193>,  <37.481907, 31.094723, 29.266703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.641708, 31.267906, 29.221193>,  <37.908043, 31.556547, 29.145344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641708, 31.267906, 29.221193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468588, 0.602222, 0.646339,
		-0.580595, 0.341498, -0.739113,
		-0.665834, -0.721601, 0.189625,
		37.441959, 31.051426, 29.278080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294857, 31.913528, 29.120075>,  <37.908043, 31.556547, 29.145344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294857, 31.913528, 29.120075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.227085, 31.582014, 29.333393>,  <37.186420, 31.383104, 29.461384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.227085, 31.582014, 29.333393>,  <37.294857, 31.913528, 29.120075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227085, 31.582014, 29.333393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491143, 0.540144, 0.683390,
		-0.854442, -0.146138, -0.498570,
		-0.169430, -0.828787, 0.533297,
		37.176254, 31.333378, 29.493382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675369, 32.092049, 29.284275>,  <37.294857, 31.913528, 29.120075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675369, 32.092049, 29.284275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.820080, 31.795942, 29.510946>,  <36.906906, 31.618279, 29.646950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.820080, 31.795942, 29.510946>,  <36.675369, 32.092049, 29.284275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820080, 31.795942, 29.510946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337313, 0.462726, 0.819820,
		-0.869100, -0.487742, -0.082295,
		0.361781, -0.740264, 0.566677,
		36.928616, 31.573862, 29.680950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160118, 31.925438, 29.725166>,  <36.675369, 32.092049, 29.284275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160118, 31.925438, 29.725166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.498711, 31.796547, 29.894703>,  <36.701866, 31.719212, 29.996426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.498711, 31.796547, 29.894703>,  <36.160118, 31.925438, 29.725166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498711, 31.796547, 29.894703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312455, 0.343922, 0.885488,
		-0.431099, -0.881979, 0.190440,
		0.846478, -0.322229, 0.423843,
		36.752655, 31.699879, 30.021856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980892, 31.980925, 30.390980>,  <36.160118, 31.925438, 29.725166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980892, 31.980925, 30.390980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.367638, 31.879929, 30.406088>,  <36.599686, 31.819332, 30.415154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.367638, 31.879929, 30.406088>,  <35.980892, 31.980925, 30.390980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367638, 31.879929, 30.406088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022990, 0.233452, 0.972097,
		-0.254261, -0.939015, 0.231521,
		0.966862, -0.252489, 0.037770,
		36.657696, 31.804182, 30.417419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137180, 31.624670, 30.971300>,  <35.980892, 31.980925, 30.390980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137180, 31.624670, 30.971300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.480190, 31.802065, 30.867020>,  <36.685997, 31.908503, 30.804451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.480190, 31.802065, 30.867020>,  <36.137180, 31.624670, 30.971300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480190, 31.802065, 30.867020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195603, 0.187625, 0.962568,
		0.475803, -0.876421, 0.074146,
		0.857526, 0.443489, -0.260703,
		36.737450, 31.935112, 30.788809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690006, 31.363667, 31.348469>,  <36.137180, 31.624670, 30.971300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690006, 31.363667, 31.348469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.839931, 31.710999, 31.218533>,  <36.929886, 31.919397, 31.140572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.839931, 31.710999, 31.218533>,  <36.690006, 31.363667, 31.348469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839931, 31.710999, 31.218533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263338, 0.236238, 0.935331,
		0.888916, -0.436114, -0.140120,
		0.374809, 0.868330, -0.324841,
		36.952374, 31.971497, 31.121080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199451, 31.530649, 31.810596>,  <36.690006, 31.363667, 31.348469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199451, 31.530649, 31.810596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.107742, 31.888628, 31.657495>,  <37.052715, 32.103416, 31.565636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.107742, 31.888628, 31.657495>,  <37.199451, 31.530649, 31.810596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107742, 31.888628, 31.657495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325620, 0.441092, 0.836307,
		0.917281, 0.067114, -0.392546,
		-0.229276, 0.894949, -0.382752,
		37.038960, 32.157112, 31.542669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739998, 31.886250, 31.970392>,  <37.199451, 31.530649, 31.810596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739998, 31.886250, 31.970392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468384, 32.172356, 31.904293>,  <37.305416, 32.344017, 31.864634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468384, 32.172356, 31.904293>,  <37.739998, 31.886250, 31.970392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468384, 32.172356, 31.904293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257230, 0.442658, 0.859003,
		0.687562, 0.540788, -0.484569,
		-0.679037, 0.715263, -0.165248,
		37.264671, 32.386936, 31.854719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141209, 32.603573, 31.851124>,  <37.739998, 31.886250, 31.970392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141209, 32.603573, 31.851124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.753025, 32.643959, 31.938776>,  <37.520115, 32.668190, 31.991367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.753025, 32.643959, 31.938776>,  <38.141209, 32.603573, 31.851124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753025, 32.643959, 31.938776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226022, 0.698203, 0.679284,
		-0.084415, 0.708745, -0.700396,
		-0.970458, 0.100964, 0.219131,
		37.461887, 32.674248, 32.004517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183094, 33.238995, 32.177124>,  <38.141209, 32.603573, 31.851124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183094, 33.238995, 32.177124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.812080, 33.121536, 32.269596>,  <37.589470, 33.051060, 32.325081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.812080, 33.121536, 32.269596>,  <38.183094, 33.238995, 32.177124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812080, 33.121536, 32.269596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025382, 0.666649, 0.744939,
		-0.372867, 0.685092, -0.625795,
		-0.927538, -0.293647, 0.231182,
		37.533817, 33.033443, 32.338951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697632, 33.886658, 32.359974>,  <38.183094, 33.238995, 32.177124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697632, 33.886658, 32.359974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.585537, 33.556114, 32.555363>,  <37.518280, 33.357788, 32.672596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.585537, 33.556114, 32.555363>,  <37.697632, 33.886658, 32.359974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585537, 33.556114, 32.555363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118740, 0.475109, 0.871878,
		-0.952558, 0.302335, -0.035022,
		-0.280239, -0.826356, 0.488468,
		37.501465, 33.308208, 32.701904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274765, 34.108582, 32.932442>,  <37.697632, 33.886658, 32.359974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274765, 34.108582, 32.932442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.363533, 33.734680, 33.043430>,  <37.416794, 33.510342, 33.110023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.363533, 33.734680, 33.043430>,  <37.274765, 34.108582, 32.932442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363533, 33.734680, 33.043430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010854, 0.282186, 0.959298,
		-0.975004, -0.215900, 0.052477,
		0.221920, -0.934750, 0.277476,
		37.430111, 33.454254, 33.126675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970238, 34.069077, 33.559399>,  <37.274765, 34.108582, 32.932442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970238, 34.069077, 33.559399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.193775, 33.738338, 33.584759>,  <37.327900, 33.539898, 33.599976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.193775, 33.738338, 33.584759>,  <36.970238, 34.069077, 33.559399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193775, 33.738338, 33.584759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197839, 0.207184, 0.958089,
		-0.805326, -0.522882, 0.279366,
		0.558847, -0.826843, 0.063404,
		37.361431, 33.490284, 33.603779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791492, 33.747124, 34.169479>,  <36.970238, 34.069077, 33.559399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791492, 33.747124, 34.169479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164104, 33.629192, 34.084320>,  <37.387672, 33.558434, 34.033226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164104, 33.629192, 34.084320>,  <36.791492, 33.747124, 34.169479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164104, 33.629192, 34.084320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267086, 0.157338, 0.950742,
		-0.246813, -0.942506, 0.225310,
		0.931530, -0.294833, -0.212898,
		37.443565, 33.540741, 34.020451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961697, 33.393562, 34.711967>,  <36.791492, 33.747124, 34.169479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961697, 33.393562, 34.711967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.326096, 33.445965, 34.555546>,  <37.544735, 33.477406, 34.461693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.326096, 33.445965, 34.555546>,  <36.961697, 33.393562, 34.711967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326096, 33.445965, 34.555546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337685, 0.307376, 0.889656,
		0.236748, -0.942527, 0.235781,
		0.910998, 0.131004, -0.391048,
		37.599396, 33.485268, 34.438232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528728, 33.027573, 35.163124>,  <36.961697, 33.393562, 34.711967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528728, 33.027573, 35.163124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.678520, 33.326317, 34.943317>,  <37.768394, 33.505562, 34.811436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.678520, 33.326317, 34.943317>,  <37.528728, 33.027573, 35.163124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678520, 33.326317, 34.943317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494227, 0.340663, 0.799805,
		0.784543, -0.571093, -0.241550,
		0.374476, 0.746862, -0.549514,
		37.790863, 33.550377, 34.778461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610569, 32.346115, 35.323284>,  <37.528728, 33.027573, 35.163124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610569, 32.346115, 35.323284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.923397, 32.400982, 35.566448>,  <38.111092, 32.433903, 35.712345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.923397, 32.400982, 35.566448>,  <37.610569, 32.346115, 35.323284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923397, 32.400982, 35.566448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541218, -0.633092, -0.553423,
		0.308955, 0.761827, -0.569357,
		0.782068, 0.137163, 0.607911,
		38.158016, 32.442131, 35.748821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221691, 32.376476, 34.932316>,  <37.610569, 32.346115, 35.323284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221691, 32.376476, 34.932316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383335, 32.274750, 35.283775>,  <38.480324, 32.213715, 35.494652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383335, 32.274750, 35.283775>,  <38.221691, 32.376476, 34.932316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383335, 32.274750, 35.283775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535997, -0.712542, -0.452759,
		0.741216, 0.653916, -0.151634,
		0.404112, -0.254317, 0.878645,
		38.504570, 32.198456, 35.547367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888084, 32.414730, 34.819035>,  <38.221691, 32.376476, 34.932316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888084, 32.414730, 34.819035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.843037, 32.175579, 35.136490>,  <38.816006, 32.032089, 35.326962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.843037, 32.175579, 35.136490>,  <38.888084, 32.414730, 34.819035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843037, 32.175579, 35.136490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502299, -0.723406, -0.473688,
		0.857328, 0.345296, 0.381784,
		-0.112622, -0.597875, 0.793638,
		38.809250, 31.996216, 35.374580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488071, 32.121510, 34.899361>,  <38.888084, 32.414730, 34.819035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488071, 32.121510, 34.899361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.244083, 31.889179, 35.114983>,  <39.097691, 31.749783, 35.244354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.244083, 31.889179, 35.114983>,  <39.488071, 32.121510, 34.899361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244083, 31.889179, 35.114983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469341, -0.812912, -0.344810,
		0.638478, 0.042677, 0.768456,
		-0.609971, -0.580821, 0.539057,
		39.061092, 31.714933, 35.276699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895542, 31.486536, 34.948071>,  <39.488071, 32.121510, 34.899361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895542, 31.486536, 34.948071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.528709, 31.366888, 35.053516>,  <39.308609, 31.295099, 35.116783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.528709, 31.366888, 35.053516>,  <39.895542, 31.486536, 34.948071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528709, 31.366888, 35.053516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176197, -0.897162, -0.405036,
		0.357656, -0.325003, 0.875474,
		-0.917081, -0.299119, 0.263611,
		39.253586, 31.277153, 35.132599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957191, 30.827141, 35.217209>,  <39.895542, 31.486536, 34.948071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957191, 30.827141, 35.217209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.572041, 30.847216, 35.111118>,  <39.340950, 30.859261, 35.047466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.572041, 30.847216, 35.111118>,  <39.957191, 30.827141, 35.217209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572041, 30.847216, 35.111118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141845, -0.741884, -0.655354,
		-0.229655, -0.668648, 0.707226,
		-0.962881, 0.050188, -0.265222,
		39.283176, 30.862272, 35.031551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731197, 30.169107, 35.093998>,  <39.957191, 30.827141, 35.217209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731197, 30.169107, 35.093998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.451778, 30.369661, 34.889786>,  <39.284126, 30.489994, 34.767258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.451778, 30.369661, 34.889786>,  <39.731197, 30.169107, 35.093998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451778, 30.369661, 34.889786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077550, -0.656220, -0.750574,
		-0.711346, -0.563905, 0.419521,
		-0.698551, 0.501384, -0.510531,
		39.242214, 30.520077, 34.736626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193676, 29.787722, 34.948071>,  <39.731197, 30.169107, 35.093998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193676, 29.787722, 34.948071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.216988, 30.067863, 34.663506>,  <39.230976, 30.235949, 34.492767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.216988, 30.067863, 34.663506>,  <39.193676, 29.787722, 34.948071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216988, 30.067863, 34.663506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014483, -0.711956, -0.702075,
		-0.998195, 0.051222, -0.031352,
		0.058283, 0.700354, -0.711413,
		39.234474, 30.277969, 34.450081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706478, 29.608519, 34.344151>,  <39.193676, 29.787722, 34.948071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706478, 29.608519, 34.344151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.980610, 29.868643, 34.213047>,  <39.145088, 30.024717, 34.134384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.980610, 29.868643, 34.213047>,  <38.706478, 29.608519, 34.344151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980610, 29.868643, 34.213047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205565, -0.604521, -0.769609,
		-0.698621, 0.460057, -0.547975,
		0.685326, 0.650309, -0.327759,
		39.186207, 30.063736, 34.114719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494007, 29.713177, 33.644039>,  <38.706478, 29.608519, 34.344151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494007, 29.713177, 33.644039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.871155, 29.845844, 33.656628>,  <39.097443, 29.925446, 33.664181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.871155, 29.845844, 33.656628>,  <38.494007, 29.713177, 33.644039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871155, 29.845844, 33.656628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225343, -0.565320, -0.793495,
		-0.245388, 0.755254, -0.607763,
		0.942871, 0.331670, 0.031468,
		39.154015, 29.945345, 33.666069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567932, 29.962944, 33.035912>,  <38.494007, 29.713177, 33.644039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567932, 29.962944, 33.035912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.929733, 29.869514, 33.178635>,  <39.146816, 29.813457, 33.264271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.929733, 29.869514, 33.178635>,  <38.567932, 29.962944, 33.035912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929733, 29.869514, 33.178635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194264, -0.519164, -0.832304,
		0.379647, 0.822139, -0.424212,
		0.904505, -0.233573, 0.356811,
		39.201084, 29.799442, 33.285679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043003, 30.106846, 32.453430>,  <38.567932, 29.962944, 33.035912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043003, 30.106846, 32.453430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.242226, 29.844872, 32.680759>,  <39.361759, 29.687687, 32.817158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.242226, 29.844872, 32.680759>,  <39.043003, 30.106846, 32.453430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242226, 29.844872, 32.680759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253721, -0.516652, -0.817739,
		0.829194, 0.551478, -0.091152,
		0.498059, -0.654937, 0.568326,
		39.391644, 29.648390, 32.851257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604351, 30.040117, 32.130917>,  <39.043003, 30.106846, 32.453430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604351, 30.040117, 32.130917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.587250, 29.715162, 32.363537>,  <39.576988, 29.520189, 32.503109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.587250, 29.715162, 32.363537>,  <39.604351, 30.040117, 32.130917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587250, 29.715162, 32.363537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207034, -0.576646, -0.790326,
		0.977399, 0.086615, 0.192843,
		-0.042749, -0.812390, 0.581546,
		39.574425, 29.471445, 32.538002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270374, 29.606573, 32.050350>,  <39.604351, 30.040117, 32.130917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270374, 29.606573, 32.050350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.953190, 29.388632, 32.159420>,  <39.762878, 29.257866, 32.224861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.953190, 29.388632, 32.159420>,  <40.270374, 29.606573, 32.050350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953190, 29.388632, 32.159420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151987, -0.610278, -0.777471,
		0.590014, -0.575060, 0.566736,
		-0.792958, -0.544855, 0.272672,
		39.715302, 29.225176, 32.241222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478786, 28.860132, 31.941948>,  <40.270374, 29.606573, 32.050350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478786, 28.860132, 31.941948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.079899, 28.884541, 31.924801>,  <39.840569, 28.899185, 31.914513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.079899, 28.884541, 31.924801>,  <40.478786, 28.860132, 31.941948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079899, 28.884541, 31.924801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002524, -0.602129, -0.798395,
		-0.074529, -0.796064, 0.600606,
		-0.997216, 0.061019, -0.042867,
		39.780735, 28.902847, 31.911942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313671, 28.193693, 31.737345>,  <40.478786, 28.860132, 31.941948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313671, 28.193693, 31.737345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.986492, 28.415567, 31.676315>,  <39.790184, 28.548693, 31.639698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.986492, 28.415567, 31.676315>,  <40.313671, 28.193693, 31.737345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986492, 28.415567, 31.676315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173379, -0.490566, -0.853982,
		-0.548541, -0.672061, 0.497430,
		-0.817950, 0.554688, -0.152574,
		39.741108, 28.581974, 31.630543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843578, 27.663754, 31.588570>,  <40.313671, 28.193693, 31.737345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843578, 27.663754, 31.588570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.705624, 28.015137, 31.456287>,  <39.622852, 28.225967, 31.376919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.705624, 28.015137, 31.456287>,  <39.843578, 27.663754, 31.588570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705624, 28.015137, 31.456287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222383, -0.418762, -0.880445,
		-0.911920, -0.230111, 0.339779,
		-0.344887, 0.878458, -0.330705,
		39.602158, 28.278673, 31.357077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218704, 27.576807, 31.359573>,  <39.843578, 27.663754, 31.588570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218704, 27.576807, 31.359573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.351151, 27.903893, 31.171230>,  <39.430618, 28.100143, 31.058226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.351151, 27.903893, 31.171230>,  <39.218704, 27.576807, 31.359573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351151, 27.903893, 31.171230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377460, -0.342554, -0.860337,
		-0.864804, 0.462601, 0.195229,
		0.331117, 0.817714, -0.470855,
		39.450485, 28.149206, 31.029974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656818, 27.704895, 30.923521>,  <39.218704, 27.576807, 31.359573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656818, 27.704895, 30.923521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.967422, 27.909340, 30.776117>,  <39.153786, 28.032007, 30.687675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.967422, 27.909340, 30.776117>,  <38.656818, 27.704895, 30.923521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967422, 27.909340, 30.776117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178100, -0.382953, -0.906437,
		-0.604412, 0.769487, -0.206338,
		0.776509, 0.511112, -0.368507,
		39.200375, 28.062674, 30.665565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.425606, 27.967600, 30.070408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.820728, 28.012672, 30.113371>,  <39.057804, 28.039715, 30.139149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.820728, 28.012672, 30.113371>,  <38.425606, 27.967600, 30.070408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820728, 28.012672, 30.113371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120126, -0.112940, -0.986313,
		-0.099006, 0.987192, -0.125099,
		0.987809, 0.112679, 0.107406,
		39.117073, 28.046476, 30.145592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635712, 28.466312, 29.549749>,  <38.425606, 27.967600, 30.070408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635712, 28.466312, 29.549749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.951088, 28.238930, 29.643747>,  <39.140312, 28.102501, 29.700146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.951088, 28.238930, 29.643747>,  <38.635712, 28.466312, 29.549749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951088, 28.238930, 29.643747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120679, -0.231663, -0.965282,
		0.603159, 0.789424, -0.114051,
		0.788438, -0.568455, 0.234997,
		39.187618, 28.068394, 29.714247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024967, 28.638952, 28.996204>,  <38.635712, 28.466312, 29.549749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024967, 28.638952, 28.996204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.198864, 28.310925, 29.145061>,  <39.303200, 28.114107, 29.234375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.198864, 28.310925, 29.145061>,  <39.024967, 28.638952, 28.996204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198864, 28.310925, 29.145061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343207, -0.231176, -0.910366,
		0.832593, 0.523493, 0.180952,
		0.434739, -0.820069, 0.372142,
		39.329285, 28.064903, 29.256704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648788, 28.637474, 28.651014>,  <39.024967, 28.638952, 28.996204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648788, 28.637474, 28.651014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.557850, 28.269787, 28.779610>,  <39.503288, 28.049175, 28.856768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.557850, 28.269787, 28.779610>,  <39.648788, 28.637474, 28.651014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557850, 28.269787, 28.779610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230025, -0.371481, -0.899494,
		0.946258, -0.130543, 0.295896,
		-0.227343, -0.919217, 0.321489,
		39.489647, 27.994022, 28.876057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186409, 28.210634, 28.292173>,  <39.648788, 28.637474, 28.651014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186409, 28.210634, 28.292173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.883991, 27.964594, 28.381655>,  <39.702541, 27.816969, 28.435343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.883991, 27.964594, 28.381655>,  <40.186409, 28.210634, 28.292173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883991, 27.964594, 28.381655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129915, -0.476011, -0.869791,
		0.641494, -0.628540, 0.439798,
		-0.756047, -0.615102, 0.223701,
		39.657177, 27.780064, 28.448765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393543, 27.699123, 27.925140>,  <40.186409, 28.210634, 28.292173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393543, 27.699123, 27.925140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.005993, 27.636782, 28.002068>,  <39.773464, 27.599377, 28.048223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.005993, 27.636782, 28.002068>,  <40.393543, 27.699123, 27.925140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005993, 27.636782, 28.002068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113181, -0.412044, -0.904107,
		0.220154, -0.897735, 0.381580,
		-0.968877, -0.155855, 0.192320,
		39.715328, 27.590025, 28.059763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262421, 26.949057, 27.925776>,  <40.393543, 27.699123, 27.925140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262421, 26.949057, 27.925776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.906921, 27.115911, 27.849756>,  <39.693623, 27.216024, 27.804146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.906921, 27.115911, 27.849756>,  <40.262421, 26.949057, 27.925776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906921, 27.115911, 27.849756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088888, -0.563558, -0.821280,
		-0.449687, -0.713022, 0.537942,
		-0.888752, 0.417135, -0.190046,
		39.640297, 27.241053, 27.792742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792603, 26.453344, 27.557589>,  <40.262421, 26.949057, 27.925776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792603, 26.453344, 27.557589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.587330, 26.787985, 27.480919>,  <39.464165, 26.988770, 27.434917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.587330, 26.787985, 27.480919>,  <39.792603, 26.453344, 27.557589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587330, 26.787985, 27.480919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140154, -0.302011, -0.942946,
		-0.846760, -0.457038, 0.272240,
		-0.513182, 0.836604, -0.191675,
		39.433376, 27.038965, 27.423416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172356, 26.219957, 27.239187>,  <39.792603, 26.453344, 27.557589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172356, 26.219957, 27.239187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.212437, 26.603771, 27.133921>,  <39.236485, 26.834059, 27.070761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.212437, 26.603771, 27.133921>,  <39.172356, 26.219957, 27.239187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212437, 26.603771, 27.133921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112066, -0.273697, -0.955265,
		-0.988636, 0.066231, -0.134957,
		0.100206, 0.959533, -0.263165,
		39.242496, 26.891630, 27.054972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693279, 26.280281, 26.755917>,  <39.172356, 26.219957, 27.239187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693279, 26.280281, 26.755917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.934048, 26.594454, 26.698250>,  <39.078510, 26.782957, 26.663651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.934048, 26.594454, 26.698250>,  <38.693279, 26.280281, 26.755917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934048, 26.594454, 26.698250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053329, -0.219666, -0.974117,
		-0.796772, 0.578655, -0.174108,
		0.601923, 0.785433, -0.144165,
		39.114624, 26.830084, 26.655001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498211, 26.396875, 26.099457>,  <38.693279, 26.280281, 26.755917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498211, 26.396875, 26.099457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.837601, 26.602409, 26.150160>,  <39.041233, 26.725731, 26.180582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.837601, 26.602409, 26.150160>,  <38.498211, 26.396875, 26.099457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837601, 26.602409, 26.150160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250772, -0.179413, -0.951275,
		-0.466058, 0.838917, -0.281083,
		0.848471, 0.513837, 0.126760,
		39.092144, 26.756561, 26.188189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434750, 26.891439, 25.583384>,  <38.498211, 26.396875, 26.099457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434750, 26.891439, 25.583384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.825047, 26.824482, 25.639832>,  <39.059223, 26.784307, 25.673700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.825047, 26.824482, 25.639832>,  <38.434750, 26.891439, 25.583384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825047, 26.824482, 25.639832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093245, -0.265470, -0.959600,
		0.198094, 0.949476, -0.243420,
		0.975738, -0.167393, 0.141122,
		39.117767, 26.774263, 25.682169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695690, 26.836315, 25.000677>,  <38.434750, 26.891439, 25.583384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695690, 26.836315, 25.000677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.040432, 26.702229, 25.152908>,  <39.247276, 26.621777, 25.244247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.040432, 26.702229, 25.152908>,  <38.695690, 26.836315, 25.000677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040432, 26.702229, 25.152908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324459, -0.212307, -0.921766,
		0.389791, 0.917908, -0.074213,
		0.861852, -0.335217, 0.380579,
		39.298988, 26.601664, 25.267082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175991, 27.025726, 24.496111>,  <38.695690, 26.836315, 25.000677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175991, 27.025726, 24.496111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.384705, 26.753801, 24.702253>,  <39.509933, 26.590647, 24.825939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.384705, 26.753801, 24.702253>,  <39.175991, 27.025726, 24.496111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384705, 26.753801, 24.702253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470230, -0.274848, -0.838655,
		0.711774, 0.679935, 0.176257,
		0.521787, -0.679814, 0.515355,
		39.541241, 26.549856, 24.856859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807285, 27.056314, 24.197729>,  <39.175991, 27.025726, 24.496111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807285, 27.056314, 24.197729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.833767, 26.715202, 24.404951>,  <39.849655, 26.510534, 24.529284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.833767, 26.715202, 24.404951>,  <39.807285, 27.056314, 24.197729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833767, 26.715202, 24.404951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676159, -0.343466, -0.651798,
		0.733775, 0.393437, 0.553878,
		0.066203, -0.852783, 0.518053,
		39.853626, 26.459368, 24.560368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509674, 27.042635, 24.391071>,  <39.807285, 27.056314, 24.197729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509674, 27.042635, 24.391071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364479, 26.669941, 24.386925>,  <40.277363, 26.446325, 24.384436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364479, 26.669941, 24.386925>,  <40.509674, 27.042635, 24.391071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364479, 26.669941, 24.386925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638111, -0.240459, -0.731433,
		0.679009, -0.272119, 0.681835,
		-0.362990, -0.931735, -0.010368,
		40.255581, 26.390421, 24.383814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110779, 26.567524, 24.539022>,  <40.509674, 27.042635, 24.391071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110779, 26.567524, 24.539022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.813740, 26.406370, 24.325022>,  <40.635517, 26.309679, 24.196621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.813740, 26.406370, 24.325022>,  <41.110779, 26.567524, 24.539022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813740, 26.406370, 24.325022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655653, -0.274380, -0.703445,
		0.136612, -0.873156, 0.467906,
		-0.742601, -0.402883, -0.535003,
		40.590958, 26.285505, 24.164520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440231, 25.938395, 24.241791>,  <41.110779, 26.567524, 24.539022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440231, 25.938395, 24.241791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.122757, 26.014860, 24.010786>,  <40.932274, 26.060740, 23.872183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.122757, 26.014860, 24.010786>,  <41.440231, 25.938395, 24.241791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122757, 26.014860, 24.010786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547376, -0.189779, -0.815085,
		-0.265418, -0.963036, 0.045983,
		-0.793683, 0.191168, -0.577514,
		40.884651, 26.072210, 23.837532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542477, 25.514494, 23.698610>,  <41.440231, 25.938395, 24.241791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542477, 25.514494, 23.698610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.263084, 25.755404, 23.544004>,  <41.095451, 25.899950, 23.451241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.263084, 25.755404, 23.544004>,  <41.542477, 25.514494, 23.698610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263084, 25.755404, 23.544004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430413, -0.077944, -0.899260,
		-0.571728, -0.794475, -0.204784,
		-0.698478, 0.602274, -0.386515,
		41.053539, 25.936087, 23.428049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227131, 25.112093, 23.217100>,  <41.542477, 25.514494, 23.698610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227131, 25.112093, 23.217100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.176529, 25.499973, 23.133507>,  <41.146168, 25.732702, 23.083351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.176529, 25.499973, 23.133507>,  <41.227131, 25.112093, 23.217100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176529, 25.499973, 23.133507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233518, -0.175645, -0.956357,
		-0.964089, -0.169782, -0.204223,
		-0.126502, 0.969702, -0.208985,
		41.138577, 25.790884, 23.070812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085995, 25.064600, 22.537024>,  <41.227131, 25.112093, 23.217100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085995, 25.064600, 22.537024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.151524, 25.457150, 22.577166>,  <41.190842, 25.692678, 22.601252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.151524, 25.457150, 22.577166>,  <41.085995, 25.064600, 22.537024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151524, 25.457150, 22.577166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343356, 0.038646, -0.938410,
		-0.924808, 0.188186, -0.330630,
		0.163818, 0.981373, 0.100355,
		41.200668, 25.751562, 22.607271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618294, 24.998600, 21.981998>,  <41.085995, 25.064600, 22.537024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618294, 24.998600, 21.981998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.723721, 25.310295, 21.754553>,  <40.786976, 25.497313, 21.618086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.723721, 25.310295, 21.754553>,  <40.618294, 24.998600, 21.981998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723721, 25.310295, 21.754553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271867, -0.505555, -0.818842,
		-0.925538, 0.370406, 0.078602,
		0.263567, 0.779239, -0.568612,
		40.802792, 25.544067, 21.583969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024254, 25.244427, 21.556179>,  <40.618294, 24.998600, 21.981998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024254, 25.244427, 21.556179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.372337, 25.313131, 21.371469>,  <40.581188, 25.354355, 21.260643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.372337, 25.313131, 21.371469>,  <40.024254, 25.244427, 21.556179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372337, 25.313131, 21.371469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408565, -0.272223, -0.871189,
		-0.275344, 0.946780, -0.166714,
		0.870207, 0.171763, -0.461776,
		40.633400, 25.364660, 21.232937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029350, 25.758282, 20.995577>,  <40.024254, 25.244427, 21.556179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029350, 25.758282, 20.995577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.287617, 25.458740, 20.935802>,  <40.442577, 25.279015, 20.899937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.287617, 25.458740, 20.935802>,  <40.029350, 25.758282, 20.995577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287617, 25.458740, 20.935802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570064, -0.342481, -0.746816,
		0.508076, 0.567384, -0.648023,
		0.645667, -0.748854, -0.149438,
		40.481316, 25.234083, 20.890970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182251, 26.463095, 21.258001>,  <40.029350, 25.758282, 20.995577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182251, 26.463095, 21.258001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.119423, 26.813915, 21.076403>,  <40.081726, 27.024406, 20.967443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.119423, 26.813915, 21.076403>,  <40.182251, 26.463095, 21.258001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119423, 26.813915, 21.076403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207398, 0.420156, 0.883434,
		0.965564, 0.232921, 0.115904,
		-0.157073, 0.877050, -0.453995,
		40.072300, 27.077030, 20.940205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598660, 27.030460, 21.592751>,  <40.182251, 26.463095, 21.258001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598660, 27.030460, 21.592751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.269310, 27.166935, 21.411360>,  <40.071701, 27.248819, 21.302525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.269310, 27.166935, 21.411360>,  <40.598660, 27.030460, 21.592751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269310, 27.166935, 21.411360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202758, 0.569479, 0.796607,
		0.530037, 0.747855, -0.399718,
		-0.823377, 0.341185, -0.453478,
		40.022297, 27.269291, 21.275316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610863, 27.699656, 21.567577>,  <40.598660, 27.030460, 21.592751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610863, 27.699656, 21.567577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.213615, 27.677505, 21.526308>,  <39.975266, 27.664215, 21.501547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.213615, 27.677505, 21.526308>,  <40.610863, 27.699656, 21.567577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213615, 27.677505, 21.526308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116789, 0.531830, 0.838760,
		0.008425, 0.845039, -0.534638,
		-0.993121, -0.055373, -0.103172,
		39.915680, 27.660894, 21.495356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382969, 28.379009, 21.851238>,  <40.610863, 27.699656, 21.567577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382969, 28.379009, 21.851238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.065655, 28.135878, 21.865374>,  <39.875267, 27.989998, 21.873856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.065655, 28.135878, 21.865374>,  <40.382969, 28.379009, 21.851238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065655, 28.135878, 21.865374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369394, 0.526613, 0.765655,
		-0.483997, 0.594326, -0.642280,
		-0.793281, -0.607829, 0.035339,
		39.827671, 27.953529, 21.875975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703251, 28.887234, 21.752932>,  <40.382969, 28.379009, 21.851238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703251, 28.887234, 21.752932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.635983, 28.538229, 21.936426>,  <39.595619, 28.328825, 22.046522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.635983, 28.538229, 21.936426>,  <39.703251, 28.887234, 21.752932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635983, 28.538229, 21.936426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308547, 0.488571, 0.816148,
		-0.936224, -0.004285, -0.351377,
		-0.168175, -0.872514, 0.458734,
		39.585529, 28.276474, 22.074047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298294, 29.085176, 22.266151>,  <39.703251, 28.887234, 21.752932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298294, 29.085176, 22.266151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.350613, 28.705784, 22.381580>,  <39.382004, 28.478148, 22.450838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.350613, 28.705784, 22.381580>,  <39.298294, 29.085176, 22.266151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350613, 28.705784, 22.381580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323001, 0.234423, 0.916906,
		-0.937317, -0.213138, -0.275699,
		0.130797, -0.948482, 0.288572,
		39.389851, 28.421240, 22.468151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718357, 28.971378, 22.718382>,  <39.298294, 29.085176, 22.266151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718357, 28.971378, 22.718382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.002705, 28.708195, 22.817787>,  <39.173313, 28.550285, 22.877430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.002705, 28.708195, 22.817787>,  <38.718357, 28.971378, 22.718382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002705, 28.708195, 22.817787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114133, 0.240742, 0.963855,
		-0.694005, -0.713536, 0.096041,
		0.710866, -0.657958, 0.248515,
		39.215965, 28.510807, 22.892342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343689, 28.472874, 23.235188>,  <38.718357, 28.971378, 22.718382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343689, 28.472874, 23.235188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.740814, 28.504343, 23.271278>,  <38.979088, 28.523224, 23.292933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.740814, 28.504343, 23.271278>,  <38.343689, 28.472874, 23.235188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740814, 28.504343, 23.271278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110168, 0.305575, 0.945773,
		0.046834, -0.948912, 0.312045,
		0.992809, 0.078671, 0.090228,
		39.038658, 28.527945, 23.298347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416279, 28.150831, 23.861984>,  <38.343689, 28.472874, 23.235188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416279, 28.150831, 23.861984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.754936, 28.354643, 23.800558>,  <38.958130, 28.476929, 23.763702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.754936, 28.354643, 23.800558>,  <38.416279, 28.150831, 23.861984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754936, 28.354643, 23.800558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005539, 0.296990, 0.954865,
		0.532138, -0.807576, 0.254265,
		0.846640, 0.509528, -0.153567,
		39.008926, 28.507502, 23.754488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807087, 27.989330, 24.480659>,  <38.416279, 28.150831, 23.861984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807087, 27.989330, 24.480659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.943066, 28.324413, 24.309694>,  <39.024654, 28.525463, 24.207115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.943066, 28.324413, 24.309694>,  <38.807087, 27.989330, 24.480659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943066, 28.324413, 24.309694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320654, 0.323999, 0.890059,
		0.884090, -0.439628, -0.158470,
		0.339951, 0.837706, -0.427413,
		39.045052, 28.575726, 24.181471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419052, 28.090034, 24.865046>,  <38.807087, 27.989330, 24.480659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419052, 28.090034, 24.865046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.349865, 28.451622, 24.708626>,  <39.308353, 28.668575, 24.614775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.349865, 28.451622, 24.708626>,  <39.419052, 28.090034, 24.865046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349865, 28.451622, 24.708626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145763, 0.416156, 0.897534,
		0.974082, 0.098245, -0.203748,
		-0.172969, 0.903970, -0.391049,
		39.297974, 28.722813, 24.591311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858173, 28.519321, 25.200235>,  <39.419052, 28.090034, 24.865046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858173, 28.519321, 25.200235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.574177, 28.757624, 25.050039>,  <39.403778, 28.900604, 24.959921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.574177, 28.757624, 25.050039>,  <39.858173, 28.519321, 25.200235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574177, 28.757624, 25.050039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040243, 0.498011, 0.866236,
		0.703063, 0.630128, -0.329607,
		-0.709988, 0.595754, -0.375491,
		39.361179, 28.936350, 24.937391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934902, 29.123486, 25.653320>,  <39.858173, 28.519321, 25.200235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934902, 29.123486, 25.653320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.561832, 29.160482, 25.513853>,  <39.337990, 29.182680, 25.430172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.561832, 29.160482, 25.513853>,  <39.934902, 29.123486, 25.653320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561832, 29.160482, 25.513853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252820, 0.521852, 0.814710,
		0.257306, 0.848007, -0.463333,
		-0.932671, 0.092490, -0.348668,
		39.282032, 29.188229, 25.409252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762077, 29.823980, 25.605713>,  <39.934902, 29.123486, 25.653320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762077, 29.823980, 25.605713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.424183, 29.612600, 25.639545>,  <39.221447, 29.485773, 25.659845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.424183, 29.612600, 25.639545>,  <39.762077, 29.823980, 25.605713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424183, 29.612600, 25.639545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279940, 0.571013, 0.771737,
		-0.456121, 0.628240, -0.630293,
		-0.844741, -0.528450, 0.084582,
		39.170761, 29.454065, 25.664921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382511, 30.216965, 26.019722>,  <39.762077, 29.823980, 25.605713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382511, 30.216965, 26.019722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.137611, 29.900700, 26.020996>,  <38.990673, 29.710941, 26.021761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.137611, 29.900700, 26.020996>,  <39.382511, 30.216965, 26.019722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137611, 29.900700, 26.020996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384324, 0.301118, 0.872710,
		-0.690978, 0.533087, -0.488228,
		-0.612245, -0.790662, 0.003187,
		38.953938, 29.663502, 26.021952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778336, 30.471800, 26.108429>,  <39.382511, 30.216965, 26.019722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778336, 30.471800, 26.108429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.750538, 30.088409, 26.219063>,  <38.733860, 29.858376, 26.285442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.750538, 30.088409, 26.219063>,  <38.778336, 30.471800, 26.108429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750538, 30.088409, 26.219063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430244, 0.278940, 0.858535,
		-0.900033, -0.059332, -0.431763,
		-0.069497, -0.958474, 0.276582,
		38.729691, 29.800867, 26.302038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069809, 30.364151, 26.267321>,  <38.778336, 30.471800, 26.108429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069809, 30.364151, 26.267321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.244057, 30.060745, 26.461184>,  <38.348606, 29.878702, 26.577501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.244057, 30.060745, 26.461184>,  <38.069809, 30.364151, 26.267321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244057, 30.060745, 26.461184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446270, 0.285604, 0.848100,
		-0.781717, -0.585735, -0.214088,
		0.435617, -0.758515, 0.484657,
		38.374741, 29.833191, 26.606581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487797, 30.032179, 26.542143>,  <38.069809, 30.364151, 26.267321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487797, 30.032179, 26.542143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.800808, 29.910387, 26.759378>,  <37.988613, 29.837311, 26.889721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.800808, 29.910387, 26.759378>,  <37.487797, 30.032179, 26.542143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800808, 29.910387, 26.759378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472008, 0.278729, 0.836372,
		-0.406035, -0.910824, 0.074395,
		0.782524, -0.304481, 0.543090,
		38.035564, 29.819042, 26.922306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249874, 29.629705, 27.089479>,  <37.487797, 30.032179, 26.542143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249874, 29.629705, 27.089479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.608067, 29.772518, 27.195797>,  <37.822983, 29.858206, 27.259586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.608067, 29.772518, 27.195797>,  <37.249874, 29.629705, 27.089479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608067, 29.772518, 27.195797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364216, 0.244503, 0.898646,
		0.255882, -0.901515, 0.348991,
		0.895473, 0.357055, 0.265782,
		37.876709, 29.879627, 27.275536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386578, 29.190481, 27.782448>,  <37.249874, 29.629705, 27.089479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386578, 29.190481, 27.782448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.638077, 29.500139, 27.753122>,  <37.788975, 29.685934, 27.735527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.638077, 29.500139, 27.753122>,  <37.386578, 29.190481, 27.782448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638077, 29.500139, 27.753122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180359, 0.236891, 0.954648,
		0.756405, -0.587009, 0.288569,
		0.628746, 0.774147, -0.073313,
		37.826702, 29.732384, 27.731129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.671623, 28.446840, 33.369659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.683914, 28.748608, 33.107391>,  <39.691288, 28.929668, 32.950031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.683914, 28.748608, 33.107391>,  <39.671623, 28.446840, 33.369659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683914, 28.748608, 33.107391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143369, 0.652525, 0.744081,
		0.989192, 0.071138, 0.128212,
		0.030729, 0.754420, -0.655672,
		39.693134, 28.974934, 32.910690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092926, 28.924713, 33.639076>,  <39.671623, 28.446840, 33.369659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092926, 28.924713, 33.639076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.878754, 29.156200, 33.393017>,  <39.750252, 29.295092, 33.245380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.878754, 29.156200, 33.393017>,  <40.092926, 28.924713, 33.639076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878754, 29.156200, 33.393017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077998, 0.691350, 0.718298,
		0.840971, 0.432577, -0.325030,
		-0.535428, 0.578716, -0.615146,
		39.718124, 29.329815, 33.208473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394012, 29.600851, 33.672501>,  <40.092926, 28.924713, 33.639076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394012, 29.600851, 33.672501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.020985, 29.683882, 33.554371>,  <39.797169, 29.733700, 33.483494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.020985, 29.683882, 33.554371>,  <40.394012, 29.600851, 33.672501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020985, 29.683882, 33.554371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002822, 0.822292, 0.569059,
		0.360970, 0.529856, -0.767433,
		-0.932573, 0.207579, -0.295327,
		39.741211, 29.746155, 33.465775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354763, 30.363001, 33.717281>,  <40.394012, 29.600851, 33.672501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354763, 30.363001, 33.717281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973869, 30.241457, 33.705112>,  <39.745335, 30.168530, 33.697811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973869, 30.241457, 33.705112>,  <40.354763, 30.363001, 33.717281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973869, 30.241457, 33.705112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274191, 0.806866, 0.523246,
		-0.134448, 0.506592, -0.851638,
		-0.952231, -0.303861, -0.030421,
		39.688202, 30.150299, 33.695988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941868, 30.995543, 33.605446>,  <40.354763, 30.363001, 33.717281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941868, 30.995543, 33.605446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.717598, 30.715467, 33.782257>,  <39.583038, 30.547422, 33.888344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.717598, 30.715467, 33.782257>,  <39.941868, 30.995543, 33.605446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717598, 30.715467, 33.782257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405073, 0.697514, 0.591092,
		-0.722193, 0.152356, -0.674703,
		-0.560671, -0.700187, 0.442025,
		39.549397, 30.505411, 33.914864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232830, 31.347395, 33.645065>,  <39.941868, 30.995543, 33.605446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232830, 31.347395, 33.645065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.225174, 31.030539, 33.889080>,  <39.220581, 30.840425, 34.035488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.225174, 31.030539, 33.889080>,  <39.232830, 31.347395, 33.645065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225174, 31.030539, 33.889080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492503, 0.538462, 0.683740,
		-0.870100, -0.287357, -0.400439,
		-0.019143, -0.792140, 0.610040,
		39.219433, 30.792896, 34.072090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506264, 31.355148, 34.079998>,  <39.232830, 31.347395, 33.645065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506264, 31.355148, 34.079998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.723228, 31.079653, 34.272427>,  <38.853409, 30.914356, 34.387882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.723228, 31.079653, 34.272427>,  <38.506264, 31.355148, 34.079998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723228, 31.079653, 34.272427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284038, 0.388558, 0.876553,
		-0.790639, -0.612096, 0.015131,
		0.542414, -0.688739, 0.481068,
		38.885952, 30.873032, 34.416748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078094, 31.133162, 34.690563>,  <38.506264, 31.355148, 34.079998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078094, 31.133162, 34.690563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.452652, 31.042332, 34.797596>,  <38.677387, 30.987835, 34.861816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.452652, 31.042332, 34.797596>,  <38.078094, 31.133162, 34.690563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452652, 31.042332, 34.797596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170202, 0.372938, 0.912112,
		-0.306906, -0.899642, 0.310569,
		0.936397, -0.227073, 0.267578,
		38.733570, 30.974211, 34.877869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993156, 30.932301, 35.351135>,  <38.078094, 31.133162, 34.690563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993156, 30.932301, 35.351135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.368340, 31.048021, 35.274681>,  <38.593449, 31.117455, 35.228809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.368340, 31.048021, 35.274681>,  <37.993156, 30.932301, 35.351135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368340, 31.048021, 35.274681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003475, 0.543366, 0.839488,
		0.346722, -0.788072, 0.508651,
		0.937961, 0.289301, -0.191136,
		38.649727, 31.134811, 35.217339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315571, 30.959450, 35.937275>,  <37.993156, 30.932301, 35.351135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315571, 30.959450, 35.937275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.556683, 31.188656, 35.715172>,  <38.701351, 31.326180, 35.581909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.556683, 31.188656, 35.715172>,  <38.315571, 30.959450, 35.937275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556683, 31.188656, 35.715172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142636, 0.762067, 0.631592,
		0.785060, -0.301507, 0.541087,
		0.602774, 0.573016, -0.555262,
		38.737518, 31.360559, 35.548595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871311, 31.272717, 36.423401>,  <38.315571, 30.959450, 35.937275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871311, 31.272717, 36.423401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.831577, 31.507660, 36.102119>,  <38.807735, 31.648626, 35.909348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.831577, 31.507660, 36.102119>,  <38.871311, 31.272717, 36.423401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831577, 31.507660, 36.102119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119101, 0.794380, 0.595631,
		0.987900, 0.154832, -0.008956,
		-0.099337, 0.587357, -0.803208,
		38.801777, 31.683867, 35.861156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324482, 31.931696, 36.480312>,  <38.871311, 31.272717, 36.423401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324482, 31.931696, 36.480312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.011272, 32.001194, 36.241421>,  <38.823345, 32.042892, 36.098087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.011272, 32.001194, 36.241421>,  <39.324482, 31.931696, 36.480312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011272, 32.001194, 36.241421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215242, 0.825174, 0.522264,
		0.583558, 0.537495, -0.608735,
		-0.783027, 0.173746, -0.597228,
		38.776363, 32.053318, 36.062252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012257, 32.425014, 36.804646>,  <39.324482, 31.931696, 36.480312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012257, 32.425014, 36.804646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.759415, 32.430595, 36.494743>,  <38.607708, 32.433945, 36.308804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.759415, 32.430595, 36.494743>,  <39.012257, 32.425014, 36.804646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759415, 32.430595, 36.494743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612676, 0.603146, 0.510729,
		0.474417, 0.797509, -0.372704,
		-0.632106, 0.013952, -0.774757,
		38.569782, 32.434780, 36.262318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890419, 33.156029, 36.488205>,  <39.012257, 32.425014, 36.804646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890419, 33.156029, 36.488205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.588341, 32.896530, 36.450672>,  <38.407093, 32.740829, 36.428150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.588341, 32.896530, 36.450672>,  <38.890419, 33.156029, 36.488205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588341, 32.896530, 36.450672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580943, 0.596104, 0.554225,
		-0.303617, 0.473062, -0.827061,
		-0.755197, -0.648747, -0.093834,
		38.361782, 32.701904, 36.422523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061146, 33.611294, 35.946194>,  <38.890419, 33.156029, 36.488205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061146, 33.611294, 35.946194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.413273, 33.498241, 36.098591>,  <39.624550, 33.430412, 36.190029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.413273, 33.498241, 36.098591>,  <39.061146, 33.611294, 35.946194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413273, 33.498241, 36.098591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382611, -0.051775, -0.922458,
		0.280439, 0.957831, 0.062559,
		0.880320, -0.282629, 0.380996,
		39.677368, 33.413452, 36.212891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736820, 33.670223, 35.817665>,  <39.061146, 33.611294, 35.946194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736820, 33.670223, 35.817665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.098633, 33.537224, 35.924454>,  <40.315720, 33.457424, 35.988525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.098633, 33.537224, 35.924454>,  <39.736820, 33.670223, 35.817665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098633, 33.537224, 35.924454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302187, 0.058115, -0.951475,
		0.300850, 0.941311, 0.153044,
		0.904528, -0.332500, 0.266969,
		40.369991, 33.437473, 36.004543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247169, 34.021458, 35.468750>,  <39.736820, 33.670223, 35.817665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247169, 34.021458, 35.468750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.448837, 33.689854, 35.565544>,  <40.569839, 33.490891, 35.623619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.448837, 33.689854, 35.565544>,  <40.247169, 34.021458, 35.468750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448837, 33.689854, 35.565544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346162, -0.062710, -0.936077,
		0.791190, 0.555710, 0.255354,
		0.504174, -0.829008, 0.241981,
		40.600090, 33.441151, 35.638138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998917, 34.072811, 35.221436>,  <40.247169, 34.021458, 35.468750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998917, 34.072811, 35.221436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.920471, 33.683559, 35.269711>,  <40.873402, 33.450008, 35.298676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.920471, 33.683559, 35.269711>,  <40.998917, 34.072811, 35.221436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920471, 33.683559, 35.269711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258959, -0.170103, -0.950792,
		0.945769, -0.155213, 0.285360,
		-0.196116, -0.973126, 0.120684,
		40.861637, 33.391621, 35.305916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591431, 33.707428, 34.857071>,  <40.998917, 34.072811, 35.221436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591431, 33.707428, 34.857071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.338261, 33.405396, 34.925480>,  <41.186359, 33.224174, 34.966526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.338261, 33.405396, 34.925480>,  <41.591431, 33.707428, 34.857071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338261, 33.405396, 34.925480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257966, -0.413955, -0.872981,
		0.729970, -0.508416, 0.456790,
		-0.632928, -0.755086, 0.171021,
		41.148384, 33.178871, 34.976788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915375, 33.126472, 34.603786>,  <41.591431, 33.707428, 34.857071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915375, 33.126472, 34.603786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.536491, 32.998421, 34.596691>,  <41.309162, 32.921589, 34.592434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.536491, 32.998421, 34.596691>,  <41.915375, 33.126472, 34.603786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536491, 32.998421, 34.596691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194525, -0.529841, -0.825487,
		0.254863, -0.785359, 0.564142,
		-0.947209, -0.320126, -0.017735,
		41.252327, 32.902382, 34.591370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855553, 32.396233, 34.576794>,  <41.915375, 33.126472, 34.603786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855553, 32.396233, 34.576794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.505329, 32.503685, 34.416180>,  <41.295193, 32.568157, 34.319813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.505329, 32.503685, 34.416180>,  <41.855553, 32.396233, 34.576794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505329, 32.503685, 34.416180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186316, -0.579084, -0.793692,
		-0.445731, -0.769739, 0.456974,
		-0.875563, 0.268632, -0.401531,
		41.242661, 32.584274, 34.295719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619171, 31.792437, 34.210911>,  <41.855553, 32.396233, 34.576794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619171, 31.792437, 34.210911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.391808, 32.081425, 34.053459>,  <41.255390, 32.254818, 33.958988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.391808, 32.081425, 34.053459>,  <41.619171, 31.792437, 34.210911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391808, 32.081425, 34.053459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019105, -0.466719, -0.884199,
		-0.822525, -0.510106, 0.251484,
		-0.568408, 0.722472, -0.393634,
		41.221287, 32.298164, 33.935368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257812, 31.460281, 33.748573>,  <41.619171, 31.792437, 34.210911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257812, 31.460281, 33.748573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.216614, 31.838606, 33.625393>,  <41.191895, 32.065601, 33.551483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.216614, 31.838606, 33.625393>,  <41.257812, 31.460281, 33.748573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216614, 31.838606, 33.625393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019107, -0.307663, -0.951303,
		-0.994498, -0.103865, 0.013617,
		-0.102996, 0.945809, -0.307955,
		41.185715, 32.122349, 33.533005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749535, 31.512470, 33.330212>,  <41.257812, 31.460281, 33.748573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749535, 31.512470, 33.330212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.945930, 31.840061, 33.211418>,  <41.063770, 32.036617, 33.140141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.945930, 31.840061, 33.211418>,  <40.749535, 31.512470, 33.330212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945930, 31.840061, 33.211418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033438, -0.358374, -0.932979,
		-0.870522, 0.448155, -0.203344,
		0.490992, 0.818978, -0.296987,
		41.093227, 32.085754, 33.122322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288025, 31.832354, 32.735779>,  <40.749535, 31.512470, 33.330212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288025, 31.832354, 32.735779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.659687, 31.980223, 32.736843>,  <40.882687, 32.068943, 32.737484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.659687, 31.980223, 32.736843>,  <40.288025, 31.832354, 32.735779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659687, 31.980223, 32.736843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149217, -0.368441, -0.917598,
		-0.338229, 0.852991, -0.397502,
		0.929159, 0.369672, 0.002663,
		40.938435, 32.091125, 32.737640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305573, 32.153717, 32.100239>,  <40.288025, 31.832354, 32.735779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305573, 32.153717, 32.100239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.697262, 32.141117, 32.180374>,  <40.932274, 32.133556, 32.228455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.697262, 32.141117, 32.180374>,  <40.305573, 32.153717, 32.100239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697262, 32.141117, 32.180374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174165, -0.375486, -0.910317,
		0.103897, 0.926293, -0.362197,
		0.979220, -0.031497, 0.200340,
		40.991028, 32.131668, 32.240475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550777, 32.466713, 31.477928>,  <40.305573, 32.153717, 32.100239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550777, 32.466713, 31.477928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.810646, 32.216312, 31.650463>,  <40.966568, 32.066074, 31.753984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.810646, 32.216312, 31.650463>,  <40.550777, 32.466713, 31.477928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810646, 32.216312, 31.650463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218211, -0.389956, -0.894605,
		0.728225, 0.675322, -0.116744,
		0.649672, -0.625998, 0.431338,
		41.005547, 32.028511, 31.779865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160137, 32.498524, 31.011753>,  <40.550777, 32.466713, 31.477928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160137, 32.498524, 31.011753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.185974, 32.155197, 31.215370>,  <41.201477, 31.949202, 31.337542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.185974, 32.155197, 31.215370>,  <41.160137, 32.498524, 31.011753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185974, 32.155197, 31.215370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160788, -0.494493, -0.854180,
		0.984873, 0.137021, 0.106066,
		0.064592, -0.858313, 0.509044,
		41.205353, 31.897703, 31.368084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698952, 32.896290, 31.487448>,  <41.160137, 32.498524, 31.011753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698952, 32.896290, 31.487448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.880196, 33.215511, 31.328548>,  <41.988941, 33.407043, 31.233210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.880196, 33.215511, 31.328548>,  <41.698952, 32.896290, 31.487448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880196, 33.215511, 31.328548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436199, 0.587108, 0.681934,
		0.777446, -0.135711, 0.614133,
		0.453109, 0.798052, -0.397248,
		42.016129, 33.454926, 31.209373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900841, 33.187576, 32.025429>,  <41.698952, 32.896290, 31.487448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900841, 33.187576, 32.025429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.874958, 33.471706, 31.745071>,  <41.859428, 33.642185, 31.576857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.874958, 33.471706, 31.745071>,  <41.900841, 33.187576, 32.025429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874958, 33.471706, 31.745071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529098, 0.571092, 0.627622,
		0.846090, 0.411450, 0.338880,
		-0.064704, 0.710326, -0.700893,
		41.855545, 33.684803, 31.534803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980122, 33.808182, 32.357925>,  <41.900841, 33.187576, 32.025429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980122, 33.808182, 32.357925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.775433, 33.909477, 32.029533>,  <41.652618, 33.970257, 31.832499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.775433, 33.909477, 32.029533>,  <41.980122, 33.808182, 32.357925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775433, 33.909477, 32.029533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615459, 0.558680, 0.555955,
		0.599455, 0.789776, -0.130032,
		-0.511726, 0.253241, -0.820978,
		41.621914, 33.985451, 31.783239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874710, 34.450886, 32.481937>,  <41.980122, 33.808182, 32.357925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874710, 34.450886, 32.481937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.592976, 34.342266, 32.219589>,  <41.423935, 34.277096, 32.062180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.592976, 34.342266, 32.219589>,  <41.874710, 34.450886, 32.481937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592976, 34.342266, 32.219589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665981, 0.572593, 0.478129,
		0.245711, 0.773562, -0.584147,
		-0.704341, -0.271549, -0.655870,
		41.381672, 34.260803, 32.022827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524235, 35.079952, 32.283096>,  <41.874710, 34.450886, 32.481937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524235, 35.079952, 32.283096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.269730, 34.798199, 32.157234>,  <41.117027, 34.629147, 32.081718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.269730, 34.798199, 32.157234>,  <41.524235, 35.079952, 32.283096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269730, 34.798199, 32.157234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740444, 0.443070, 0.505402,
		-0.216585, 0.554553, -0.803469,
		-0.636265, -0.704387, -0.314653,
		41.078850, 34.586884, 32.062840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939781, 35.398552, 31.969297>,  <41.524235, 35.079952, 32.283096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939781, 35.398552, 31.969297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.805477, 35.033226, 32.061497>,  <40.724895, 34.814030, 32.116817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.805477, 35.033226, 32.061497>,  <40.939781, 35.398552, 31.969297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805477, 35.033226, 32.061497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757528, 0.407250, 0.510194,
		-0.559836, -0.003306, -0.828597,
		-0.335759, -0.913311, 0.230497,
		40.704750, 34.759232, 32.130646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256065, 35.543541, 31.892996>,  <40.939781, 35.398552, 31.969297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256065, 35.543541, 31.892996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.278790, 35.195419, 32.088684>,  <40.292423, 34.986546, 32.206097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.278790, 35.195419, 32.088684>,  <40.256065, 35.543541, 31.892996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278790, 35.195419, 32.088684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816965, 0.241143, 0.523850,
		-0.573883, -0.429435, -0.697312,
		0.056808, -0.870308, 0.489222,
		40.295834, 34.934326, 32.235451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659023, 35.311604, 31.770277>,  <40.256065, 35.543541, 31.892996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659023, 35.311604, 31.770277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.792599, 35.118855, 32.094322>,  <39.872746, 35.003204, 32.288750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.792599, 35.118855, 32.094322>,  <39.659023, 35.311604, 31.770277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792599, 35.118855, 32.094322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765383, 0.363008, 0.531426,
		-0.550157, -0.797512, -0.247593,
		0.333940, -0.481871, 0.810113,
		39.892780, 34.974293, 32.337357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111988, 34.988029, 32.081867>,  <39.659023, 35.311604, 31.770277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111988, 34.988029, 32.081867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.367916, 35.002357, 32.388943>,  <39.521473, 35.010952, 32.573189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.367916, 35.002357, 32.388943>,  <39.111988, 34.988029, 32.081867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367916, 35.002357, 32.388943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719055, 0.380502, 0.581531,
		-0.271280, -0.924086, 0.269207,
		0.639818, 0.035817, 0.767691,
		39.559860, 35.013103, 32.619251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633484, 34.826668, 32.690720>,  <39.111988, 34.988029, 32.081867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633484, 34.826668, 32.690720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.967949, 35.016537, 32.800648>,  <39.168629, 35.130459, 32.866604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.967949, 35.016537, 32.800648>,  <38.633484, 34.826668, 32.690720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967949, 35.016537, 32.800648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548239, 0.708242, 0.444778,
		0.016480, -0.522574, 0.852434,
		0.836159, 0.474668, 0.274823,
		39.218796, 35.158936, 32.883095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690987, 34.880173, 33.476418>,  <38.633484, 34.826668, 32.690720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690987, 34.880173, 33.476418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.900394, 35.176308, 33.307739>,  <39.026039, 35.353989, 33.206532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.900394, 35.176308, 33.307739>,  <38.690987, 34.880173, 33.476418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900394, 35.176308, 33.307739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522977, 0.669957, 0.526928,
		0.672673, -0.055248, 0.737874,
		0.523456, 0.740341, -0.421769,
		39.057449, 35.398407, 33.181229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878117, 35.405140, 33.960030>,  <38.690987, 34.880173, 33.476418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878117, 35.405140, 33.960030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.936951, 35.618603, 33.626907>,  <38.972252, 35.746681, 33.427032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.936951, 35.618603, 33.626907>,  <38.878117, 35.405140, 33.960030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936951, 35.618603, 33.626907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577349, 0.729974, 0.365795,
		0.803139, 0.427017, 0.415480,
		0.147088, 0.533661, -0.832809,
		38.981079, 35.778702, 33.377064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<44.949741, 32.017452, 28.927481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659218, 32.187683, 28.711573>,  <44.484905, 32.289822, 28.582027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659218, 32.187683, 28.711573>,  <44.949741, 32.017452, 28.927481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659218, 32.187683, 28.711573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291327, 0.520663, 0.802520,
		0.622577, 0.740129, -0.254180,
		-0.726310, 0.425581, -0.539772,
		44.441326, 32.315357, 28.549641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.954197, 32.734722, 29.221912>,  <44.949741, 32.017452, 28.927481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.954197, 32.734722, 29.221912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621937, 32.678177, 29.006495>,  <44.422581, 32.644249, 28.877243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621937, 32.678177, 29.006495>,  <44.954197, 32.734722, 29.221912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621937, 32.678177, 29.006495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518591, 0.548512, 0.655895,
		0.202680, 0.824106, -0.528932,
		-0.830653, -0.141363, -0.538547,
		44.372742, 32.635769, 28.844931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644352, 33.410149, 29.162086>,  <44.954197, 32.734722, 29.221912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644352, 33.410149, 29.162086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.365376, 33.130005, 29.101334>,  <44.197990, 32.961918, 29.064882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.365376, 33.130005, 29.101334>,  <44.644352, 33.410149, 29.162086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365376, 33.130005, 29.101334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604521, 0.461143, 0.649539,
		-0.384870, 0.544834, -0.745003,
		-0.697444, -0.700359, -0.151884,
		44.156143, 32.919899, 29.055769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884491, 33.882420, 29.002407>,  <44.644352, 33.410149, 29.162086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884491, 33.882420, 29.002407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769127, 33.510498, 29.093874>,  <43.699909, 33.287346, 29.148754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769127, 33.510498, 29.093874>,  <43.884491, 33.882420, 29.002407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.769127, 33.510498, 29.093874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641904, 0.364954, 0.674364,
		-0.710478, 0.047709, -0.702100,
		-0.288408, -0.929802, 0.228668,
		43.682606, 33.231556, 29.162474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219227, 33.984642, 29.244267>,  <43.884491, 33.882420, 29.002407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.219227, 33.984642, 29.244267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300339, 33.613590, 29.369736>,  <43.349007, 33.390961, 29.445017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300339, 33.613590, 29.369736>,  <43.219227, 33.984642, 29.244267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300339, 33.613590, 29.369736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590062, 0.139890, 0.795146,
		-0.781478, -0.346325, -0.518990,
		0.202777, -0.927626, 0.313675,
		43.361172, 33.335304, 29.463839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585918, 33.678734, 29.219511>,  <43.219227, 33.984642, 29.244267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585918, 33.678734, 29.219511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812382, 33.485748, 29.486851>,  <42.948261, 33.369957, 29.647255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812382, 33.485748, 29.486851>,  <42.585918, 33.678734, 29.219511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812382, 33.485748, 29.486851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724050, 0.096456, 0.682970,
		-0.393975, -0.870589, -0.294718,
		0.566159, -0.482463, 0.668351,
		42.982231, 33.341011, 29.687357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031200, 33.293262, 29.609013>,  <42.585918, 33.678734, 29.219511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031200, 33.293262, 29.609013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361694, 33.307457, 29.833893>,  <42.559990, 33.315975, 29.968821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361694, 33.307457, 29.833893>,  <42.031200, 33.293262, 29.609013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361694, 33.307457, 29.833893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561641, 0.128916, 0.817276,
		-0.043475, -0.991020, 0.126446,
		0.826239, 0.035486, 0.562202,
		42.609566, 33.318104, 30.002554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824749, 32.978996, 30.110893>,  <42.031200, 33.293262, 29.609013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824749, 32.978996, 30.110893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148407, 33.164619, 30.255077>,  <42.342602, 33.275993, 30.341589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148407, 33.164619, 30.255077>,  <41.824749, 32.978996, 30.110893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148407, 33.164619, 30.255077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483490, 0.177161, 0.857235,
		0.333946, -0.867908, 0.367717,
		0.809146, 0.464058, 0.360463,
		42.391151, 33.303837, 30.363216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870201, 32.681973, 30.800745>,  <41.824749, 32.978996, 30.110893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870201, 32.681973, 30.800745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048046, 33.039539, 30.777971>,  <42.154751, 33.254078, 30.764307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048046, 33.039539, 30.777971>,  <41.870201, 32.681973, 30.800745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048046, 33.039539, 30.777971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428257, 0.267970, 0.863011,
		0.786713, -0.359321, 0.501967,
		0.444609, 0.893913, -0.056934,
		42.181431, 33.307713, 30.760891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047874, 31.971272, 30.850992>,  <41.870201, 32.681973, 30.800745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047874, 31.971272, 30.850992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769901, 31.727678, 31.003942>,  <41.603119, 31.581522, 31.095713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769901, 31.727678, 31.003942>,  <42.047874, 31.971272, 30.850992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769901, 31.727678, 31.003942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224774, -0.689082, -0.688943,
		0.683042, -0.392820, 0.615748,
		-0.694932, -0.608981, 0.382376,
		41.561420, 31.544985, 31.118656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447918, 31.289989, 30.918898>,  <42.047874, 31.971272, 30.850992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447918, 31.289989, 30.918898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057755, 31.202269, 30.927721>,  <41.823658, 31.149635, 30.933016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057755, 31.202269, 30.927721>,  <42.447918, 31.289989, 30.918898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057755, 31.202269, 30.927721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201470, -0.927702, -0.314291,
		0.089389, -0.302118, 0.949070,
		-0.975407, -0.219304, 0.022059,
		41.765133, 31.136478, 30.934340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474262, 30.734932, 31.205193>,  <42.447918, 31.289989, 30.918898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474262, 30.734932, 31.205193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105244, 30.710400, 31.052797>,  <41.883835, 30.695681, 30.961361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105244, 30.710400, 31.052797>,  <42.474262, 30.734932, 31.205193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105244, 30.710400, 31.052797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210225, -0.907798, -0.362916,
		-0.323600, -0.414899, 0.850378,
		-0.922544, -0.061331, -0.380986,
		41.828480, 30.691999, 30.938501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183228, 30.113857, 31.366718>,  <42.474262, 30.734932, 31.205193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183228, 30.113857, 31.366718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957047, 30.219387, 31.054140>,  <41.821339, 30.282705, 30.866594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957047, 30.219387, 31.054140>,  <42.183228, 30.113857, 31.366718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957047, 30.219387, 31.054140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171632, -0.889081, -0.424356,
		-0.806722, -0.374076, 0.457457,
		-0.565458, 0.263823, -0.781445,
		41.787411, 30.298534, 30.819706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657673, 29.532120, 31.283234>,  <42.183228, 30.113857, 31.366718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657673, 29.532120, 31.283234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655918, 29.717606, 30.928844>,  <41.654865, 29.828897, 30.716211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655918, 29.717606, 30.928844>,  <41.657673, 29.532120, 31.283234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655918, 29.717606, 30.928844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104307, -0.880937, -0.461595,
		-0.994536, -0.094438, -0.044505,
		-0.004386, 0.463715, -0.885974,
		41.654602, 29.856720, 30.663052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120209, 29.229950, 30.825148>,  <41.657673, 29.532120, 31.283234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120209, 29.229950, 30.825148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378624, 29.403679, 30.574072>,  <41.533672, 29.507915, 30.423426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378624, 29.403679, 30.574072>,  <41.120209, 29.229950, 30.825148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378624, 29.403679, 30.574072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062049, -0.789731, -0.610307,
		-0.760776, 0.433231, -0.483250,
		0.646041, 0.434322, -0.627690,
		41.572437, 29.533976, 30.385765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912865, 29.023399, 30.159307>,  <41.120209, 29.229950, 30.825148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912865, 29.023399, 30.159307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286083, 29.143372, 30.079838>,  <41.510014, 29.215355, 30.032156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286083, 29.143372, 30.079838>,  <40.912865, 29.023399, 30.159307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286083, 29.143372, 30.079838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111525, -0.766170, -0.632886,
		-0.342041, 0.568353, -0.748320,
		0.933043, 0.299929, -0.198676,
		41.565998, 29.233351, 30.020235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925644, 29.025568, 29.504154>,  <40.912865, 29.023399, 30.159307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925644, 29.025568, 29.504154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316772, 29.054373, 29.582821>,  <41.551449, 29.071655, 29.630020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316772, 29.054373, 29.582821>,  <40.925644, 29.025568, 29.504154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316772, 29.054373, 29.582821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202318, -0.567489, -0.798138,
		0.054130, 0.820226, -0.569473,
		0.977823, 0.072011, 0.196664,
		41.610119, 29.075975, 29.641821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341225, 29.240570, 28.842983>,  <40.925644, 29.025568, 29.504154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341225, 29.240570, 28.842983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619743, 29.050783, 29.058409>,  <41.786854, 28.936911, 29.187664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619743, 29.050783, 29.058409>,  <41.341225, 29.240570, 28.842983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619743, 29.050783, 29.058409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297640, -0.491916, -0.818187,
		0.653129, 0.730000, -0.201300,
		0.696299, -0.474467, 0.538562,
		41.828632, 28.908443, 29.219976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130703, 29.205526, 28.496492>,  <41.341225, 29.240570, 28.842983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130703, 29.205526, 28.496492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080482, 28.893593, 28.741798>,  <42.050350, 28.706432, 28.888983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080482, 28.893593, 28.741798>,  <42.130703, 29.205526, 28.496492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080482, 28.893593, 28.741798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282143, -0.620698, -0.731525,
		0.951122, 0.081186, 0.297953,
		-0.125549, -0.779835, 0.613266,
		42.042816, 28.659643, 28.925777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687943, 28.829401, 28.239845>,  <42.130703, 29.205526, 28.496492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687943, 28.829401, 28.239845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450054, 28.595114, 28.460114>,  <42.307320, 28.454542, 28.592276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450054, 28.595114, 28.460114>,  <42.687943, 28.829401, 28.239845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450054, 28.595114, 28.460114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296358, -0.796463, -0.527085,
		0.747313, -0.150273, 0.647256,
		-0.594722, -0.585717, 0.550673,
		42.271637, 28.419399, 28.625315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184807, 28.325682, 28.438707>,  <42.687943, 28.829401, 28.239845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184807, 28.325682, 28.438707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819225, 28.166061, 28.468212>,  <42.599876, 28.070290, 28.485914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819225, 28.166061, 28.468212>,  <43.184807, 28.325682, 28.438707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819225, 28.166061, 28.468212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284895, -0.760386, -0.583650,
		0.288994, -0.512416, 0.808648,
		-0.913957, -0.399052, 0.073762,
		42.545040, 28.046347, 28.490341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308743, 27.664049, 28.490883>,  <43.184807, 28.325682, 28.438707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308743, 27.664049, 28.490883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930290, 27.647839, 28.362385>,  <42.703220, 27.638113, 28.285286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930290, 27.647839, 28.362385>,  <43.308743, 27.664049, 28.490883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930290, 27.647839, 28.362385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227091, -0.790266, -0.569130,
		-0.230806, -0.611423, 0.756896,
		-0.946128, -0.040526, -0.321247,
		42.646450, 27.635681, 28.266010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201664, 26.975685, 28.453434>,  <43.308743, 27.664049, 28.490883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201664, 26.975685, 28.453434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906643, 27.140701, 28.239584>,  <42.729630, 27.239712, 28.111275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906643, 27.140701, 28.239584>,  <43.201664, 26.975685, 28.453434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906643, 27.140701, 28.239584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111785, -0.706188, -0.699144,
		-0.665963, -0.575424, 0.474742,
		-0.737562, 0.412535, -0.534619,
		42.685375, 27.264463, 28.079197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.460270, 31.963552, 24.381968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.803528, 32.071892, 24.556431>,  <38.009483, 32.136894, 24.661108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.803528, 32.071892, 24.556431>,  <37.460270, 31.963552, 24.381968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803528, 32.071892, 24.556431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512961, 0.416761, 0.750454,
		0.021485, -0.867729, 0.496574,
		0.858143, 0.270847, 0.436156,
		38.060970, 32.153145, 24.687279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431477, 31.663992, 25.125515>,  <37.460270, 31.963552, 24.381968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431477, 31.663992, 25.125515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.670265, 31.984001, 25.101557>,  <37.813538, 32.176006, 25.087181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.670265, 31.984001, 25.101557>,  <37.431477, 31.663992, 25.125515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670265, 31.984001, 25.101557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253092, 0.258650, 0.932226,
		0.761296, -0.541351, 0.356886,
		0.596970, 0.800025, -0.059897,
		37.849358, 32.224010, 25.083588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903522, 31.506660, 25.616346>,  <37.431477, 31.663992, 25.125515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903522, 31.506660, 25.616346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.868835, 31.899603, 25.550072>,  <37.848022, 32.135368, 25.510307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.868835, 31.899603, 25.550072>,  <37.903522, 31.506660, 25.616346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868835, 31.899603, 25.550072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058049, 0.171016, 0.983557,
		0.994540, 0.075678, -0.071856,
		-0.086722, 0.982358, -0.165689,
		37.842819, 32.194309, 25.500364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152027, 31.821260, 26.166885>,  <37.903522, 31.506660, 25.616346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152027, 31.821260, 26.166885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.999924, 32.162594, 26.024212>,  <37.908661, 32.367393, 25.938608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.999924, 32.162594, 26.024212>,  <38.152027, 31.821260, 26.166885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999924, 32.162594, 26.024212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141095, 0.327618, 0.934215,
		0.914054, 0.405571, -0.004179,
		-0.380260, 0.853333, -0.356685,
		37.885845, 32.418594, 25.917206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410217, 32.193058, 26.708632>,  <38.152027, 31.821260, 26.166885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410217, 32.193058, 26.708632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.139442, 32.411068, 26.510757>,  <37.976978, 32.541874, 26.392033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.139442, 32.411068, 26.510757>,  <38.410217, 32.193058, 26.708632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139442, 32.411068, 26.510757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228020, 0.483737, 0.844988,
		0.699834, 0.684799, -0.203183,
		-0.676934, 0.545021, -0.494684,
		37.936363, 32.574574, 26.362352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547779, 32.857697, 26.880474>,  <38.410217, 32.193058, 26.708632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547779, 32.857697, 26.880474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.166046, 32.867043, 26.761343>,  <37.937008, 32.872650, 26.689865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.166046, 32.867043, 26.761343>,  <38.547779, 32.857697, 26.880474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166046, 32.867043, 26.761343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251350, 0.476023, 0.842748,
		0.161463, 0.879122, -0.448413,
		-0.954334, 0.023364, -0.297828,
		37.879745, 32.874050, 26.671995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272591, 33.535110, 26.922010>,  <38.547779, 32.857697, 26.880474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272591, 33.535110, 26.922010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.958248, 33.287941, 26.931820>,  <37.769642, 33.139641, 26.937706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.958248, 33.287941, 26.931820>,  <38.272591, 33.535110, 26.922010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958248, 33.287941, 26.931820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380700, 0.514654, 0.768244,
		-0.487337, 0.594393, -0.639687,
		-0.785856, -0.617923, 0.024524,
		37.722492, 33.102566, 26.939177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741207, 33.949158, 27.082396>,  <38.272591, 33.535110, 26.922010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741207, 33.949158, 27.082396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.623875, 33.585358, 27.200216>,  <37.553474, 33.367077, 27.270908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.623875, 33.585358, 27.200216>,  <37.741207, 33.949158, 27.082396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623875, 33.585358, 27.200216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308224, 0.381623, 0.871414,
		-0.904962, 0.164824, -0.392272,
		-0.293330, -0.909504, 0.294551,
		37.535877, 33.312508, 27.288582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134766, 33.940357, 27.373238>,  <37.741207, 33.949158, 27.082396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134766, 33.940357, 27.373238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.238361, 33.578739, 27.509254>,  <37.300518, 33.361767, 27.590864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.238361, 33.578739, 27.509254>,  <37.134766, 33.940357, 27.373238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238361, 33.578739, 27.509254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338644, 0.244717, 0.908534,
		-0.904570, -0.350450, -0.242772,
		0.258985, -0.904046, 0.340041,
		37.316055, 33.307526, 27.611267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587460, 33.784908, 27.833729>,  <37.134766, 33.940357, 27.373238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587460, 33.784908, 27.833729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902935, 33.563480, 27.940708>,  <37.092220, 33.430622, 28.004896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902935, 33.563480, 27.940708>,  <36.587460, 33.784908, 27.833729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902935, 33.563480, 27.940708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220551, 0.151310, 0.963568,
		-0.573872, -0.818940, -0.002755,
		0.788687, -0.553573, 0.267450,
		37.139542, 33.397408, 28.020943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269783, 33.362694, 28.274725>,  <36.587460, 33.784908, 27.833729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269783, 33.362694, 28.274725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.657471, 33.353756, 28.372805>,  <36.890083, 33.348392, 28.431652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.657471, 33.353756, 28.372805>,  <36.269783, 33.362694, 28.274725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657471, 33.353756, 28.372805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235358, 0.208364, 0.949311,
		-0.072306, -0.977796, 0.196689,
		0.969216, -0.022349, 0.245198,
		36.948235, 33.347050, 28.446363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251186, 33.197948, 29.071442>,  <36.269783, 33.362694, 28.274725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251186, 33.197948, 29.071442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.630108, 33.282391, 28.975069>,  <36.857460, 33.333057, 28.917246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.630108, 33.282391, 28.975069>,  <36.251186, 33.197948, 29.071442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630108, 33.282391, 28.975069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180018, 0.271291, 0.945513,
		0.264935, -0.939068, 0.219001,
		0.947314, 0.211075, -0.240924,
		36.914299, 33.345722, 28.902790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655762, 32.974205, 29.569321>,  <36.251186, 33.197948, 29.071442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655762, 32.974205, 29.569321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.868031, 33.268509, 29.401014>,  <36.995392, 33.445091, 29.300032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.868031, 33.268509, 29.401014>,  <36.655762, 32.974205, 29.569321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868031, 33.268509, 29.401014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011163, 0.490322, 0.871469,
		0.847501, -0.467165, 0.251990,
		0.530676, 0.735758, -0.420764,
		37.027233, 33.489235, 29.274786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257614, 33.105194, 30.008419>,  <36.655762, 32.974205, 29.569321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257614, 33.105194, 30.008419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.158035, 33.436962, 29.808382>,  <37.098289, 33.636021, 29.688360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.158035, 33.436962, 29.808382>,  <37.257614, 33.105194, 30.008419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158035, 33.436962, 29.808382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087724, 0.533538, 0.841215,
		0.964537, 0.165546, -0.205581,
		-0.248945, 0.829417, -0.500095,
		37.083351, 33.685787, 29.658354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680614, 32.553825, 30.208790>,  <37.257614, 33.105194, 30.008419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680614, 32.553825, 30.208790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.444508, 32.318874, 30.430267>,  <37.302845, 32.177902, 30.563154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.444508, 32.318874, 30.430267>,  <37.680614, 32.553825, 30.208790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444508, 32.318874, 30.430267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016036, -0.694331, -0.719477,
		0.807051, -0.415802, 0.419258,
		-0.590264, -0.587378, 0.553693,
		37.267429, 32.142662, 30.596375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966267, 31.855911, 30.281967>,  <37.680614, 32.553825, 30.208790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966267, 31.855911, 30.281967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.572353, 31.826075, 30.344748>,  <37.336006, 31.808172, 30.382416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.572353, 31.826075, 30.344748>,  <37.966267, 31.855911, 30.281967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572353, 31.826075, 30.344748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025138, -0.832544, -0.553388,
		0.171946, -0.548914, 0.818002,
		-0.984786, -0.074590, 0.156951,
		37.276917, 31.803698, 30.391832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767586, 31.223652, 30.598848>,  <37.966267, 31.855911, 30.281967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767586, 31.223652, 30.598848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.450581, 31.367668, 30.401957>,  <37.260376, 31.454079, 30.283821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.450581, 31.367668, 30.401957>,  <37.767586, 31.223652, 30.598848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450581, 31.367668, 30.401957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035189, -0.778787, -0.626300,
		-0.608834, -0.513674, 0.604532,
		-0.792517, 0.360040, -0.492228,
		37.212826, 31.475681, 30.254288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345032, 30.591988, 30.485100>,  <37.767586, 31.223652, 30.598848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345032, 30.591988, 30.485100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.236752, 30.884689, 30.234898>,  <37.171783, 31.060310, 30.084776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.236752, 30.884689, 30.234898>,  <37.345032, 30.591988, 30.485100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236752, 30.884689, 30.234898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044996, -0.639437, -0.767526,
		-0.961612, -0.235914, 0.140170,
		-0.270700, 0.731755, -0.625505,
		37.155540, 31.104216, 30.047247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976425, 30.194454, 30.080236>,  <37.345032, 30.591988, 30.485100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976425, 30.194454, 30.080236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.024036, 30.550024, 29.903311>,  <37.052601, 30.763367, 29.797155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.024036, 30.550024, 29.903311>,  <36.976425, 30.194454, 30.080236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024036, 30.550024, 29.903311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038018, -0.449236, -0.892604,
		-0.992163, 0.089425, -0.087265,
		0.119023, 0.888927, -0.442315,
		37.059742, 30.816702, 29.770617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493156, 30.173975, 29.537907>,  <36.976425, 30.194454, 30.080236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493156, 30.173975, 29.537907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.799671, 30.423086, 29.474720>,  <36.983578, 30.572554, 29.436808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.799671, 30.423086, 29.474720>,  <36.493156, 30.173975, 29.537907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799671, 30.423086, 29.474720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186543, -0.450926, -0.872850,
		-0.614824, 0.639384, -0.461713,
		0.766285, 0.622779, -0.157968,
		37.029556, 30.609921, 29.427330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464684, 30.203621, 28.763659>,  <36.493156, 30.173975, 29.537907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464684, 30.203621, 28.763659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.813702, 30.376131, 28.855455>,  <37.023113, 30.479637, 28.910534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.813702, 30.376131, 28.855455>,  <36.464684, 30.203621, 28.763659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813702, 30.376131, 28.855455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433081, -0.465477, -0.771863,
		-0.226062, 0.772874, -0.592926,
		0.872546, 0.431274, 0.229491,
		37.075466, 30.505514, 28.924303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834404, 30.518150, 28.123295>,  <36.464684, 30.203621, 28.763659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834404, 30.518150, 28.123295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.140366, 30.490255, 28.379438>,  <37.323944, 30.473518, 28.533125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.140366, 30.490255, 28.379438>,  <36.834404, 30.518150, 28.123295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140366, 30.490255, 28.379438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630549, -0.122103, -0.766485,
		0.131644, 0.990064, -0.049423,
		0.764904, -0.069740, 0.640358,
		37.369839, 30.469334, 28.571547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347855, 31.105206, 28.081743>,  <36.834404, 30.518150, 28.123295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347855, 31.105206, 28.081743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.543388, 30.777512, 28.201674>,  <37.660709, 30.580894, 28.273632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.543388, 30.777512, 28.201674>,  <37.347855, 31.105206, 28.081743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543388, 30.777512, 28.201674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547050, 0.020147, -0.836858,
		0.679542, 0.573104, 0.458011,
		0.488835, -0.819235, 0.299825,
		37.690041, 30.531742, 28.291620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977280, 31.040169, 27.736176>,  <37.347855, 31.105206, 28.081743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977280, 31.040169, 27.736176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.959255, 30.673479, 27.894962>,  <37.948441, 30.453465, 27.990234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.959255, 30.673479, 27.894962>,  <37.977280, 31.040169, 27.736176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959255, 30.673479, 27.894962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398740, -0.380849, -0.834242,
		0.915956, 0.120698, 0.382696,
		-0.045058, -0.916725, 0.396968,
		37.945736, 30.398462, 28.014053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628242, 30.817577, 27.807276>,  <37.977280, 31.040169, 27.736176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628242, 30.817577, 27.807276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391102, 30.496523, 27.781040>,  <38.248817, 30.303890, 27.765299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391102, 30.496523, 27.781040>,  <38.628242, 30.817577, 27.807276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391102, 30.496523, 27.781040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516987, -0.316882, -0.795179,
		0.617455, -0.505333, 0.602817,
		-0.592852, -0.802636, -0.065590,
		38.213245, 30.255732, 27.761364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062710, 30.211607, 27.754841>,  <38.628242, 30.817577, 27.807276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062710, 30.211607, 27.754841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.706436, 30.118559, 27.598604>,  <38.492672, 30.062729, 27.504862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.706436, 30.118559, 27.598604>,  <39.062710, 30.211607, 27.754841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706436, 30.118559, 27.598604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453797, -0.403447, -0.794544,
		0.027247, -0.884939, 0.464909,
		-0.890689, -0.232623, -0.390590,
		38.439228, 30.048773, 27.481426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097450, 29.496706, 27.568741>,  <39.062710, 30.211607, 27.754841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097450, 29.496706, 27.568741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.759941, 29.579090, 27.370499>,  <38.557434, 29.628521, 27.251553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.759941, 29.579090, 27.370499>,  <39.097450, 29.496706, 27.568741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759941, 29.579090, 27.370499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368957, -0.448023, -0.814338,
		-0.389766, -0.869974, 0.302039,
		-0.843773, 0.205962, -0.495607,
		38.506809, 29.640879, 27.221817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879295, 28.848835, 27.245396>,  <39.097450, 29.496706, 27.568741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879295, 28.848835, 27.245396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.748665, 29.172018, 27.049212>,  <38.670284, 29.365927, 26.931501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.748665, 29.172018, 27.049212>,  <38.879295, 28.848835, 27.245396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748665, 29.172018, 27.049212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266786, -0.419014, -0.867901,
		-0.906736, -0.414287, -0.078710,
		-0.326579, 0.807956, -0.490462,
		38.650692, 29.414406, 26.902073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832890, 28.131836, 27.234697>,  <38.879295, 28.848835, 27.245396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832890, 28.131836, 27.234697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.984436, 27.765820, 27.290075>,  <39.075363, 27.546209, 27.323301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.984436, 27.765820, 27.290075>,  <38.832890, 28.131836, 27.234697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984436, 27.765820, 27.290075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162244, 0.081607, 0.983370,
		-0.911121, -0.395023, -0.117542,
		0.378862, -0.915039, 0.138444,
		39.098095, 27.491308, 27.331608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468727, 27.829172, 27.714418>,  <38.832890, 28.131836, 27.234697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468727, 27.829172, 27.714418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.814903, 27.630156, 27.737967>,  <39.022610, 27.510746, 27.752096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.814903, 27.630156, 27.737967>,  <38.468727, 27.829172, 27.714418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814903, 27.630156, 27.737967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007909, 0.103923, 0.994554,
		-0.500949, -0.861193, 0.086004,
		0.865441, -0.497541, 0.058871,
		39.074535, 27.480894, 27.755629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451645, 27.278332, 28.246548>,  <38.468727, 27.829172, 27.714418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451645, 27.278332, 28.246548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.839043, 27.371218, 28.210545>,  <39.071480, 27.426949, 28.188942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.839043, 27.371218, 28.210545>,  <38.451645, 27.278332, 28.246548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839043, 27.371218, 28.210545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050807, 0.169587, 0.984205,
		0.243809, -0.957767, 0.152445,
		0.968492, 0.232212, -0.090008,
		39.129589, 27.440882, 28.183542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677067, 27.015642, 28.824606>,  <38.451645, 27.278332, 28.246548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677067, 27.015642, 28.824606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.977493, 27.255621, 28.714357>,  <39.157749, 27.399609, 28.648209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.977493, 27.255621, 28.714357>,  <38.677067, 27.015642, 28.824606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977493, 27.255621, 28.714357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279249, 0.089621, 0.956027,
		0.598265, -0.795006, -0.100223,
		0.751065, 0.599945, -0.275621,
		39.202812, 27.435604, 28.631670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220974, 26.808044, 29.245190>,  <38.677067, 27.015642, 28.824606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220974, 26.808044, 29.245190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.302734, 27.181091, 29.126230>,  <39.351791, 27.404919, 29.054855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.302734, 27.181091, 29.126230>,  <39.220974, 26.808044, 29.245190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302734, 27.181091, 29.126230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245495, 0.245264, 0.937858,
		0.947603, -0.264709, -0.178820,
		0.204402, 0.932617, -0.297398,
		39.364056, 27.460876, 29.037010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835590, 26.927233, 29.641506>,  <39.220974, 26.808044, 29.245190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835590, 26.927233, 29.641506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.676994, 27.278637, 29.534912>,  <39.581837, 27.489479, 29.470957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.676994, 27.278637, 29.534912>,  <39.835590, 26.927233, 29.641506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676994, 27.278637, 29.534912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205923, 0.367986, 0.906742,
		0.894645, 0.304642, -0.326810,
		-0.396493, 0.878510, -0.266484,
		39.558048, 27.542191, 29.454967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204742, 27.438406, 30.021278>,  <39.835590, 26.927233, 29.641506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204742, 27.438406, 30.021278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.891918, 27.663864, 29.914932>,  <39.704224, 27.799139, 29.851124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.891918, 27.663864, 29.914932>,  <40.204742, 27.438406, 30.021278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891918, 27.663864, 29.914932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086678, 0.520845, 0.849239,
		0.617146, 0.641111, -0.456187,
		-0.782060, 0.563646, -0.265867,
		39.657299, 27.832958, 29.835173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385986, 28.151653, 30.030424>,  <40.204742, 27.438406, 30.021278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385986, 28.151653, 30.030424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.991077, 28.150925, 30.094038>,  <39.754131, 28.150488, 30.132206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.991077, 28.150925, 30.094038>,  <40.385986, 28.151653, 30.030424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991077, 28.150925, 30.094038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118307, 0.659879, 0.741999,
		-0.106298, 0.751370, -0.651264,
		-0.987271, -0.001824, 0.159036,
		39.694897, 28.150377, 30.141748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084251, 28.877714, 30.121674>,  <40.385986, 28.151653, 30.030424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084251, 28.877714, 30.121674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.824200, 28.626896, 30.293322>,  <39.668167, 28.476404, 30.396311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.824200, 28.626896, 30.293322>,  <40.084251, 28.877714, 30.121674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824200, 28.626896, 30.293322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088723, 0.498250, 0.862482,
		-0.754626, 0.598797, -0.268293,
		-0.650129, -0.627047, 0.429120,
		39.629162, 28.438782, 30.422058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656216, 29.238226, 30.444338>,  <40.084251, 28.877714, 30.121674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656216, 29.238226, 30.444338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.602001, 28.893364, 30.639608>,  <39.569473, 28.686447, 30.756771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.602001, 28.893364, 30.639608>,  <39.656216, 29.238226, 30.444338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602001, 28.893364, 30.639608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096466, 0.501867, 0.859549,
		-0.986065, 0.069409, -0.151191,
		-0.135539, -0.862156, 0.488177,
		39.561340, 28.634718, 30.786062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088829, 29.404236, 30.927349>,  <39.656216, 29.238226, 30.444338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088829, 29.404236, 30.927349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.226757, 29.049084, 31.049181>,  <39.309513, 28.835993, 31.122280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.226757, 29.049084, 31.049181>,  <39.088829, 29.404236, 30.927349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226757, 29.049084, 31.049181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012112, 0.320243, 0.947258,
		-0.938590, -0.330324, 0.099673,
		0.344822, -0.887880, 0.304578,
		39.330204, 28.782721, 31.140554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646965, 29.259052, 31.480906>,  <39.088829, 29.404236, 30.927349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646965, 29.259052, 31.480906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.975796, 29.034021, 31.516003>,  <39.173092, 28.899002, 31.537062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.975796, 29.034021, 31.516003>,  <38.646965, 29.259052, 31.480906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975796, 29.034021, 31.516003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145199, 0.356143, 0.923082,
		-0.550556, -0.746101, 0.374462,
		0.822074, -0.562580, 0.087744,
		39.222420, 28.865248, 31.542326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457066, 28.829782, 32.001778>,  <38.646965, 29.259052, 31.480906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457066, 28.829782, 32.001778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.852695, 28.872778, 31.961424>,  <39.090073, 28.898575, 31.937212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.852695, 28.872778, 31.961424>,  <38.457066, 28.829782, 32.001778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852695, 28.872778, 31.961424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052140, 0.385015, 0.921436,
		0.137881, -0.916630, 0.375204,
		0.989075, 0.107486, -0.100879,
		39.149418, 28.905024, 31.931160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715878, 28.468616, 32.653477>,  <38.457066, 28.829782, 32.001778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715878, 28.468616, 32.653477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.004795, 28.710110, 32.518543>,  <39.178146, 28.855005, 32.437584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.004795, 28.710110, 32.518543>,  <38.715878, 28.468616, 32.653477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004795, 28.710110, 32.518543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001750, 0.489365, 0.872077,
		0.691581, -0.629309, 0.354523,
		0.722298, 0.603732, -0.337334,
		39.221485, 28.891230, 32.417343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.661991, 26.503372, 28.202635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.665760, 26.820602, 27.959015>,  <42.668022, 27.010941, 27.812843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.665760, 26.820602, 27.959015>,  <42.661991, 26.503372, 28.202635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.665760, 26.820602, 27.959015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168592, -0.601617, -0.780791,
		-0.985641, -0.095321, -0.139377,
		0.009426, 0.793077, -0.609048,
		42.668587, 27.058525, 27.776300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561768, 26.137081, 27.650421>,  <42.661991, 26.503372, 28.202635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.561768, 26.137081, 27.650421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.624458, 26.496708, 27.486900>,  <42.662075, 26.712484, 27.388788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.624458, 26.496708, 27.486900>,  <42.561768, 26.137081, 27.650421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624458, 26.496708, 27.486900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144222, -0.430313, -0.891084,
		-0.977054, 0.080703, -0.197109,
		0.156732, 0.899065, -0.408800,
		42.671478, 26.766428, 27.364260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135197, 26.139513, 27.103537>,  <42.561768, 26.137081, 27.650421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135197, 26.139513, 27.103537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.409863, 26.419846, 27.026255>,  <42.574661, 26.588045, 26.979885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.409863, 26.419846, 27.026255>,  <42.135197, 26.139513, 27.103537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409863, 26.419846, 27.026255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136324, -0.385185, -0.912715,
		-0.714081, 0.600387, -0.360032,
		0.686661, 0.700833, -0.193206,
		42.615860, 26.630096, 26.968292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032780, 26.529840, 26.378687>,  <42.135197, 26.139513, 27.103537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032780, 26.529840, 26.378687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.422775, 26.552320, 26.464703>,  <42.656773, 26.565809, 26.516312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.422775, 26.552320, 26.464703>,  <42.032780, 26.529840, 26.378687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422775, 26.552320, 26.464703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222079, -0.285573, -0.932271,
		0.009014, 0.956708, -0.290911,
		0.974987, 0.056202, 0.215039,
		42.715271, 26.569181, 26.529215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432865, 26.772503, 25.779959>,  <42.032780, 26.529840, 26.378687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432865, 26.772503, 25.779959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.758224, 26.643148, 25.973372>,  <42.953442, 26.565535, 26.089418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.758224, 26.643148, 25.973372>,  <42.432865, 26.772503, 25.779959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758224, 26.643148, 25.973372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471456, -0.120424, -0.873629,
		0.340750, 0.938572, 0.054511,
		0.813400, -0.323388, 0.483530,
		43.002243, 26.546131, 26.118431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975498, 27.254467, 25.674026>,  <42.432865, 26.772503, 25.779959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975498, 27.254467, 25.674026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.117893, 26.890467, 25.759043>,  <43.203331, 26.672066, 25.810053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.117893, 26.890467, 25.759043>,  <42.975498, 27.254467, 25.674026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117893, 26.890467, 25.759043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497531, -0.007963, -0.867410,
		0.791037, 0.414529, 0.449919,
		0.355983, -0.910001, 0.212540,
		43.224689, 26.617466, 25.822805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561935, 27.315573, 25.417072>,  <42.975498, 27.254467, 25.674026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561935, 27.315573, 25.417072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.515129, 26.919140, 25.442575>,  <43.487045, 26.681280, 25.457876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.515129, 26.919140, 25.442575>,  <43.561935, 27.315573, 25.417072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515129, 26.919140, 25.442575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372266, -0.103289, -0.922360,
		0.920720, -0.084198, 0.381033,
		-0.117018, -0.991081, 0.063756,
		43.480022, 26.621815, 25.461702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202480, 27.021582, 25.033499>,  <43.561935, 27.315573, 25.417072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202480, 27.021582, 25.033499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.897099, 26.763599, 25.047174>,  <43.713867, 26.608810, 25.055380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.897099, 26.763599, 25.047174>,  <44.202480, 27.021582, 25.033499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897099, 26.763599, 25.047174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178501, -0.261582, -0.948532,
		0.620702, -0.718060, 0.314832,
		-0.763457, -0.644953, 0.034190,
		43.668060, 26.570114, 25.057432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.407974, 26.467785, 24.521261>,  <44.202480, 27.021582, 25.033499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.407974, 26.467785, 24.521261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.043396, 26.325335, 24.603670>,  <43.824650, 26.239864, 24.653116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.043396, 26.325335, 24.603670>,  <44.407974, 26.467785, 24.521261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.043396, 26.325335, 24.603670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164057, -0.144633, -0.975790,
		0.377303, -0.923177, 0.073399,
		-0.911443, -0.356127, 0.206024,
		43.769962, 26.218496, 24.665478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354023, 25.833509, 24.239798>,  <44.407974, 26.467785, 24.521261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354023, 25.833509, 24.239798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.977638, 25.967751, 24.257528>,  <43.751808, 26.048294, 24.268167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.977638, 25.967751, 24.257528>,  <44.354023, 25.833509, 24.239798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.977638, 25.967751, 24.257528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109106, -0.176704, -0.978198,
		-0.320454, -0.925282, 0.202888,
		-0.940960, 0.335603, 0.044329,
		43.695351, 26.068430, 24.270826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935875, 25.299839, 23.826998>,  <44.354023, 25.833509, 24.239798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935875, 25.299839, 23.826998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.710705, 25.628792, 23.859987>,  <43.575603, 25.826162, 23.879782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.710705, 25.628792, 23.859987>,  <43.935875, 25.299839, 23.826998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710705, 25.628792, 23.859987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404572, -0.187163, -0.895149,
		-0.720716, -0.537272, 0.438071,
		-0.562929, 0.822380, 0.082474,
		43.541824, 25.875505, 23.884729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.278164, 25.122639, 23.466970>,  <43.935875, 25.299839, 23.826998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.278164, 25.122639, 23.466970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.285072, 25.522488, 23.475554>,  <43.289219, 25.762396, 23.480703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.285072, 25.522488, 23.475554>,  <43.278164, 25.122639, 23.466970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285072, 25.522488, 23.475554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491189, 0.027175, -0.870629,
		-0.870882, 0.004500, 0.491472,
		0.017273, 0.999621, 0.021456,
		43.290253, 25.822374, 23.481991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693798, 25.259344, 23.183052>,  <43.278164, 25.122639, 23.466970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693798, 25.259344, 23.183052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.912552, 25.593315, 23.158333>,  <43.043804, 25.793697, 23.143501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.912552, 25.593315, 23.158333>,  <42.693798, 25.259344, 23.183052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912552, 25.593315, 23.158333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403149, 0.197931, -0.893473,
		-0.733752, 0.513538, 0.444845,
		0.546881, 0.834926, -0.061800,
		43.076614, 25.843794, 23.139793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328388, 25.786575, 22.999773>,  <42.693798, 25.259344, 23.183052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328388, 25.786575, 22.999773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.684872, 25.912874, 22.869507>,  <42.898762, 25.988653, 22.791348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.684872, 25.912874, 22.869507>,  <42.328388, 25.786575, 22.999773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684872, 25.912874, 22.869507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355302, 0.039599, -0.933912,
		-0.281983, 0.948017, 0.147476,
		0.891205, 0.315746, -0.325666,
		42.952232, 26.007599, 22.771807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267784, 26.430796, 22.679878>,  <42.328388, 25.786575, 22.999773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267784, 26.430796, 22.679878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.550762, 26.200230, 22.516283>,  <42.720547, 26.061890, 22.418125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.550762, 26.200230, 22.516283>,  <42.267784, 26.430796, 22.679878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550762, 26.200230, 22.516283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425636, 0.114509, -0.897620,
		0.564235, 0.809094, -0.164334,
		0.707441, -0.576415, -0.408989,
		42.762993, 26.027306, 22.393587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629837, 26.914980, 22.654367>,  <42.267784, 26.430796, 22.679878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629837, 26.914980, 22.654367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.462185, 26.552797, 22.627611>,  <41.361591, 26.335487, 22.611557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.462185, 26.552797, 22.627611>,  <41.629837, 26.914980, 22.654367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462185, 26.552797, 22.627611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573994, 0.207175, 0.792218,
		-0.703460, 0.370442, -0.606561,
		-0.419135, -0.905456, -0.066892,
		41.336445, 26.281160, 22.607544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855835, 26.995169, 22.670145>,  <41.629837, 26.914980, 22.654367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855835, 26.995169, 22.670145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.923199, 26.619106, 22.788633>,  <40.963615, 26.393469, 22.859726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.923199, 26.619106, 22.788633>,  <40.855835, 26.995169, 22.670145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923199, 26.619106, 22.788633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576642, 0.149761, 0.803154,
		-0.799451, -0.306071, -0.516912,
		0.168409, -0.940155, 0.296220,
		40.973721, 26.337059, 22.877499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181114, 26.770720, 23.008911>,  <40.855835, 26.995169, 22.670145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181114, 26.770720, 23.008911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.448948, 26.495182, 23.120014>,  <40.609650, 26.329861, 23.186676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.448948, 26.495182, 23.120014>,  <40.181114, 26.770720, 23.008911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448948, 26.495182, 23.120014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550317, -0.208973, 0.808382,
		-0.498805, -0.694136, -0.519008,
		0.669586, -0.688844, 0.277758,
		40.649822, 26.288528, 23.203342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871780, 26.097393, 23.024107>,  <40.181114, 26.770720, 23.008911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871780, 26.097393, 23.024107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.172390, 26.112581, 23.287552>,  <40.352757, 26.121695, 23.445620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.172390, 26.112581, 23.287552>,  <39.871780, 26.097393, 23.024107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172390, 26.112581, 23.287552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636455, -0.220978, 0.738982,
		0.173600, -0.974539, -0.141902,
		0.751524, 0.037973, 0.658612,
		40.397846, 26.123972, 23.485136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732971, 25.585575, 23.525003>,  <39.871780, 26.097393, 23.024107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732971, 25.585575, 23.525003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.983669, 25.811909, 23.739300>,  <40.134090, 25.947710, 23.867878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.983669, 25.811909, 23.739300>,  <39.732971, 25.585575, 23.525003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983669, 25.811909, 23.739300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629418, -0.037696, 0.776152,
		0.459371, -0.823655, 0.332522,
		0.626747, 0.565837, 0.535740,
		40.171692, 25.981659, 23.900023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752628, 25.212656, 24.239983>,  <39.732971, 25.585575, 23.525003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752628, 25.212656, 24.239983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.907528, 25.578516, 24.286367>,  <40.000469, 25.798033, 24.314199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.907528, 25.578516, 24.286367>,  <39.752628, 25.212656, 24.239983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907528, 25.578516, 24.286367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632277, 0.171922, 0.755426,
		0.671015, -0.365861, 0.644891,
		0.387252, 0.914652, 0.115964,
		40.023705, 25.852911, 24.321157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820248, 25.210455, 25.015387>,  <39.752628, 25.212656, 24.239983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820248, 25.210455, 25.015387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.859756, 25.593050, 24.905567>,  <39.883461, 25.822607, 24.839676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.859756, 25.593050, 24.905567>,  <39.820248, 25.210455, 25.015387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859756, 25.593050, 24.905567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504350, 0.285956, 0.814777,
		0.857832, 0.057988, 0.510649,
		0.098776, 0.956487, -0.274548,
		39.889389, 25.879995, 24.823202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093365, 25.543724, 25.511250>,  <39.820248, 25.210455, 25.015387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093365, 25.543724, 25.511250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.919956, 25.833191, 25.296453>,  <39.815910, 26.006872, 25.167576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.919956, 25.833191, 25.296453>,  <40.093365, 25.543724, 25.511250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919956, 25.833191, 25.296453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174738, 0.517084, 0.837909,
		0.884038, 0.457086, -0.097715,
		-0.433523, 0.723669, -0.536992,
		39.789898, 26.050291, 25.135355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378857, 26.148712, 25.834482>,  <40.093365, 25.543724, 25.511250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378857, 26.148712, 25.834482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.065498, 26.286772, 25.627731>,  <39.877483, 26.369608, 25.503681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.065498, 26.286772, 25.627731>,  <40.378857, 26.148712, 25.834482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065498, 26.286772, 25.627731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166788, 0.684383, 0.709790,
		0.598727, 0.642255, -0.478576,
		-0.783395, 0.345149, -0.516879,
		39.830479, 26.390316, 25.472668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423763, 26.749077, 25.815926>,  <40.378857, 26.148712, 25.834482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423763, 26.749077, 25.815926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.025162, 26.731749, 25.787325>,  <39.786003, 26.721352, 25.770164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.025162, 26.731749, 25.787325>,  <40.423763, 26.749077, 25.815926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025162, 26.731749, 25.787325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083163, 0.601004, 0.794908,
		0.008536, 0.798071, -0.602502,
		-0.996499, -0.043321, -0.071500,
		39.726212, 26.718752, 25.765875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238827, 27.287428, 26.261372>,  <40.423763, 26.749077, 25.815926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238827, 27.287428, 26.261372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.863564, 27.151655, 26.234083>,  <39.638405, 27.070192, 26.217710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.863564, 27.151655, 26.234083>,  <40.238827, 27.287428, 26.261372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863564, 27.151655, 26.234083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221833, 0.438036, 0.871157,
		-0.265816, 0.832412, -0.486243,
		-0.938154, -0.339432, -0.068219,
		39.582119, 27.049826, 26.213617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885384, 27.872322, 26.430822>,  <40.238827, 27.287428, 26.261372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885384, 27.872322, 26.430822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.654812, 27.552755, 26.499481>,  <39.516468, 27.361015, 26.540676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.654812, 27.552755, 26.499481>,  <39.885384, 27.872322, 26.430822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654812, 27.552755, 26.499481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328567, 0.418936, 0.846485,
		-0.748179, 0.431542, -0.503985,
		-0.576431, -0.798915, 0.171648,
		39.481884, 27.313082, 26.550976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303001, 28.152048, 26.688982>,  <39.885384, 27.872322, 26.430822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303001, 28.152048, 26.688982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.273190, 27.769510, 26.802015>,  <39.255302, 27.539988, 26.869835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.273190, 27.769510, 26.802015>,  <39.303001, 28.152048, 26.688982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273190, 27.769510, 26.802015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344685, 0.290613, 0.892601,
		-0.935755, -0.030877, -0.351297,
		-0.074530, -0.956342, 0.282585,
		39.250832, 27.482607, 26.886791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576820, 28.504559, 26.693012>,  <39.303001, 28.152048, 26.688982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576820, 28.504559, 26.693012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.625530, 28.882450, 26.571253>,  <38.654758, 29.109184, 26.498198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.625530, 28.882450, 26.571253>,  <38.576820, 28.504559, 26.693012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625530, 28.882450, 26.571253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007225, -0.307517, -0.951515,
		-0.992531, 0.113676, -0.044275,
		0.121779, 0.944728, -0.304399,
		38.662064, 29.165869, 26.479933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210613, 28.568295, 26.151873>,  <38.576820, 28.504559, 26.693012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210613, 28.568295, 26.151873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.432652, 28.897821, 26.105923>,  <38.565876, 29.095537, 26.078354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.432652, 28.897821, 26.105923>,  <38.210613, 28.568295, 26.151873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432652, 28.897821, 26.105923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060105, -0.177470, -0.982289,
		-0.829612, 0.538360, -0.148028,
		0.555095, 0.823816, -0.114873,
		38.599178, 29.144966, 26.071461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012115, 28.827597, 25.534330>,  <38.210613, 28.568295, 26.151873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012115, 28.827597, 25.534330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.369072, 28.998745, 25.591702>,  <38.583244, 29.101435, 25.626123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.369072, 28.998745, 25.591702>,  <38.012115, 28.827597, 25.534330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369072, 28.998745, 25.591702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126939, 0.066988, -0.989646,
		-0.433048, 0.901354, 0.005466,
		0.892388, 0.427870, 0.143426,
		38.636787, 29.127106, 25.634729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025433, 29.312454, 25.056652>,  <38.012115, 28.827597, 25.534330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025433, 29.312454, 25.056652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.409527, 29.260941, 25.155735>,  <38.639984, 29.230032, 25.215185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.409527, 29.260941, 25.155735>,  <38.025433, 29.312454, 25.056652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409527, 29.260941, 25.155735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252236, 0.019876, -0.967462,
		0.119670, 0.991473, 0.051569,
		0.960238, -0.128784, 0.247706,
		38.697598, 29.222305, 25.230047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468777, 29.748806, 24.541716>,  <38.025433, 29.312454, 25.056652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468777, 29.748806, 24.541716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.739861, 29.487846, 24.677408>,  <38.902512, 29.331270, 24.758823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.739861, 29.487846, 24.677408>,  <38.468777, 29.748806, 24.541716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739861, 29.487846, 24.677408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305594, -0.169719, -0.936914,
		0.668817, 0.738627, 0.084348,
		0.677714, -0.652400, 0.339231,
		38.943176, 29.292126, 24.779177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086124, 29.860474, 24.074669>,  <38.468777, 29.748806, 24.541716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086124, 29.860474, 24.074669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.134605, 29.492847, 24.224670>,  <39.163692, 29.272272, 24.314672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.134605, 29.492847, 24.224670>,  <39.086124, 29.860474, 24.074669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134605, 29.492847, 24.224670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435401, -0.290286, -0.852150,
		0.892041, 0.266557, 0.364980,
		0.121198, -0.919066, 0.375006,
		39.170963, 29.217127, 24.337172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817181, 29.650415, 23.849758>,  <39.086124, 29.860474, 24.074669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817181, 29.650415, 23.849758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.573830, 29.338648, 23.909611>,  <39.427818, 29.151588, 23.945522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.573830, 29.338648, 23.909611>,  <39.817181, 29.650415, 23.849758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573830, 29.338648, 23.909611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293385, -0.396042, -0.870101,
		0.737432, -0.485448, 0.469611,
		-0.608375, -0.779417, 0.149631,
		39.391315, 29.104822, 23.954500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251240, 30.282013, 23.505999>,  <39.817181, 29.650415, 23.849758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251240, 30.282013, 23.505999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.066540, 30.480070, 23.211618>,  <39.955719, 30.598904, 23.034990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.066540, 30.480070, 23.211618>,  <40.251240, 30.282013, 23.505999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066540, 30.480070, 23.211618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345695, 0.663638, 0.663386,
		0.816873, 0.560733, -0.135267,
		-0.461750, 0.495141, -0.735950,
		39.928013, 30.628613, 22.990833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393967, 30.990490, 23.554083>,  <40.251240, 30.282013, 23.505999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393967, 30.990490, 23.554083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.037296, 30.973955, 23.373774>,  <39.823292, 30.964035, 23.265587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.037296, 30.973955, 23.373774>,  <40.393967, 30.990490, 23.554083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037296, 30.973955, 23.373774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310500, 0.780475, 0.542631,
		0.329387, 0.623819, -0.708769,
		-0.891680, -0.041337, -0.450774,
		39.769791, 30.961554, 23.238541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190498, 31.702274, 23.579424>,  <40.393967, 30.990490, 23.554083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190498, 31.702274, 23.579424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.842728, 31.522673, 23.496965>,  <39.634068, 31.414911, 23.447491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.842728, 31.522673, 23.496965>,  <40.190498, 31.702274, 23.579424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842728, 31.522673, 23.496965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475142, 0.645497, 0.597975,
		-0.135428, 0.617842, -0.774551,
		-0.869425, -0.449004, -0.206145,
		39.581902, 31.387972, 23.435122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764717, 32.237316, 23.593338>,  <40.190498, 31.702274, 23.579424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764717, 32.237316, 23.593338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.511356, 31.928255, 23.610359>,  <39.359341, 31.742819, 23.620571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.511356, 31.928255, 23.610359>,  <39.764717, 32.237316, 23.593338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511356, 31.928255, 23.610359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570632, 0.503514, 0.648731,
		-0.522670, 0.386625, -0.759827,
		-0.633400, -0.772654, 0.042551,
		39.321335, 31.696459, 23.623125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160480, 32.526344, 23.526691>,  <39.764717, 32.237316, 23.593338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160480, 32.526344, 23.526691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.100327, 32.182842, 23.722620>,  <39.064236, 31.976742, 23.840178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.100327, 32.182842, 23.722620>,  <39.160480, 32.526344, 23.526691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100327, 32.182842, 23.722620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726180, 0.432153, 0.534702,
		-0.670855, -0.275287, -0.688600,
		-0.150385, -0.858756, 0.489820,
		39.055210, 31.925215, 23.869566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435204, 32.551472, 23.598171>,  <39.160480, 32.526344, 23.526691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435204, 32.551472, 23.598171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.545013, 32.262062, 23.851515>,  <38.610901, 32.088417, 24.003521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.545013, 32.262062, 23.851515>,  <38.435204, 32.551472, 23.598171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545013, 32.262062, 23.851515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802701, 0.190226, 0.565230,
		-0.529441, -0.663569, -0.528553,
		0.274525, -0.723526, 0.633361,
		38.627373, 32.045006, 24.041523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743267, 32.175148, 23.772684>,  <38.435204, 32.551472, 23.598171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743267, 32.175148, 23.772684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.016079, 32.094421, 24.053852>,  <38.179768, 32.045986, 24.222553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.016079, 32.094421, 24.053852>,  <37.743267, 32.175148, 23.772684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016079, 32.094421, 24.053852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667792, 0.219966, 0.711103,
		-0.298134, -0.954402, 0.015251,
		0.682033, -0.201820, 0.702922,
		38.220688, 32.033875, 24.264729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.245502, 29.143105, 22.570597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.219711, 28.760836, 22.685511>,  <44.204235, 28.531475, 22.754459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.219711, 28.760836, 22.685511>,  <44.245502, 29.143105, 22.570597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219711, 28.760836, 22.685511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010727, 0.287202, 0.957810,
		-0.997861, 0.064842, -0.008267,
		-0.064481, -0.955673, 0.287284,
		44.200367, 28.474134, 22.771696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634693, 28.923197, 22.905195>,  <44.245502, 29.143105, 22.570597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634693, 28.923197, 22.905195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.915401, 28.685314, 23.062086>,  <44.083824, 28.542583, 23.156221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.915401, 28.685314, 23.062086>,  <43.634693, 28.923197, 22.905195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915401, 28.685314, 23.062086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214636, 0.348487, 0.912408,
		-0.679303, -0.724486, 0.116912,
		0.701769, -0.594708, 0.392229,
		44.125931, 28.506903, 23.179754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296188, 28.902319, 23.496395>,  <43.634693, 28.923197, 22.905195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296188, 28.902319, 23.496395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.625885, 28.695206, 23.588072>,  <43.823704, 28.570938, 23.643078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.625885, 28.695206, 23.588072>,  <43.296188, 28.902319, 23.496395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.625885, 28.695206, 23.588072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193748, 0.122442, 0.973381,
		-0.532063, -0.846704, 0.000603,
		0.824239, -0.517783, 0.229194,
		43.873158, 28.539871, 23.656830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155323, 28.565489, 24.227951>,  <43.296188, 28.902319, 23.496395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155323, 28.565489, 24.227951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.547703, 28.565029, 24.150244>,  <43.783131, 28.564753, 24.103619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.547703, 28.565029, 24.150244>,  <43.155323, 28.565489, 24.227951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547703, 28.565029, 24.150244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188468, 0.248220, 0.950193,
		0.047129, -0.968703, 0.243708,
		0.980948, -0.001150, -0.194268,
		43.841988, 28.564684, 24.091963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522972, 28.261717, 24.769127>,  <43.155323, 28.565489, 24.227951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522972, 28.261717, 24.769127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.815716, 28.481735, 24.608212>,  <43.991360, 28.613747, 24.511662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.815716, 28.481735, 24.608212>,  <43.522972, 28.261717, 24.769127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815716, 28.481735, 24.608212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135211, 0.461392, 0.876832,
		0.667911, -0.696109, 0.263300,
		0.731856, 0.550045, -0.402291,
		44.035275, 28.646748, 24.487524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102188, 28.351871, 25.306990>,  <43.522972, 28.261717, 24.769127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102188, 28.351871, 25.306990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.146889, 28.662619, 25.059122>,  <44.173710, 28.849068, 24.910402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.146889, 28.662619, 25.059122>,  <44.102188, 28.351871, 25.306990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146889, 28.662619, 25.059122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269797, 0.576433, 0.771320,
		0.956411, -0.253381, -0.145179,
		0.111752, 0.776867, -0.619668,
		44.180416, 28.895679, 24.873222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.682816, 28.716141, 25.587568>,  <44.102188, 28.351871, 25.306990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.682816, 28.716141, 25.587568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.531414, 28.991903, 25.340521>,  <44.440575, 29.157362, 25.192293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.531414, 28.991903, 25.340521>,  <44.682816, 28.716141, 25.587568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531414, 28.991903, 25.340521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111360, 0.696333, 0.709027,
		0.918876, 0.199593, -0.340338,
		-0.378505, 0.689408, -0.617617,
		44.417862, 29.198725, 25.155235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148708, 29.248911, 25.686350>,  <44.682816, 28.716141, 25.587568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.148708, 29.248911, 25.686350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.829418, 29.432150, 25.529898>,  <44.637844, 29.542093, 25.436026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.829418, 29.432150, 25.529898>,  <45.148708, 29.248911, 25.686350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.829418, 29.432150, 25.529898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144401, 0.775926, 0.614075,
		0.584794, 0.433691, -0.685513,
		-0.798226, 0.458096, -0.391132,
		44.589951, 29.569578, 25.412558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.373814, 29.884230, 25.528137>,  <45.148708, 29.248911, 25.686350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.373814, 29.884230, 25.528137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.976391, 29.915585, 25.560863>,  <44.737938, 29.934397, 25.580500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.976391, 29.915585, 25.560863>,  <45.373814, 29.884230, 25.528137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.976391, 29.915585, 25.560863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110786, 0.823530, 0.556350,
		-0.023766, 0.561831, -0.826911,
		-0.993560, 0.078388, 0.081815,
		44.678322, 29.939100, 25.585407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.327061, 30.588072, 25.342394>,  <45.373814, 29.884230, 25.528137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.327061, 30.588072, 25.342394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.997662, 30.470804, 25.536673>,  <44.800022, 30.400444, 25.653240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.997662, 30.470804, 25.536673>,  <45.327061, 30.588072, 25.342394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.997662, 30.470804, 25.536673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045741, 0.887651, 0.458239,
		-0.565469, 0.355144, -0.744391,
		-0.823500, -0.293169, 0.485695,
		44.750610, 30.382853, 25.682381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.995903, 31.258249, 25.442207>,  <45.327061, 30.588072, 25.342394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.995903, 31.258249, 25.442207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.809891, 31.006294, 25.691042>,  <44.698284, 30.855122, 25.840343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.809891, 31.006294, 25.691042>,  <44.995903, 31.258249, 25.442207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.809891, 31.006294, 25.691042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072034, 0.727280, 0.682550,
		-0.882361, 0.272593, -0.383578,
		-0.465027, -0.629886, 0.622088,
		44.670383, 30.817327, 25.877668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.432247, 31.607300, 25.622126>,  <44.995903, 31.258249, 25.442207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.432247, 31.607300, 25.622126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.459095, 31.329128, 25.908308>,  <44.475204, 31.162226, 26.080017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.459095, 31.329128, 25.908308>,  <44.432247, 31.607300, 25.622126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.459095, 31.329128, 25.908308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250751, 0.682298, 0.686726,
		-0.965722, -0.225496, -0.128582,
		0.067122, -0.695428, 0.715454,
		44.479233, 31.120501, 26.122944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868912, 31.606379, 25.160587>,  <44.432247, 31.607300, 25.622126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868912, 31.606379, 25.160587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.651798, 31.883142, 24.970160>,  <43.521530, 32.049202, 24.855904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.651798, 31.883142, 24.970160>,  <43.868912, 31.606379, 25.160587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.651798, 31.883142, 24.970160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230260, -0.422521, -0.876616,
		-0.807690, -0.585435, 0.070019,
		-0.542787, 0.691911, -0.476068,
		43.488960, 32.090717, 24.827339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284130, 31.262617, 24.760357>,  <43.868912, 31.606379, 25.160587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284130, 31.262617, 24.760357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.362614, 31.615877, 24.589924>,  <43.409702, 31.827833, 24.487663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.362614, 31.615877, 24.589924>,  <43.284130, 31.262617, 24.760357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362614, 31.615877, 24.589924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148057, -0.456229, -0.877459,
		-0.969320, 0.109081, -0.220273,
		0.196209, 0.883151, -0.426082,
		43.421474, 31.880823, 24.462099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931061, 31.186771, 24.153017>,  <43.284130, 31.262617, 24.760357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931061, 31.186771, 24.153017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.159306, 31.505878, 24.075081>,  <43.296253, 31.697344, 24.028320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.159306, 31.505878, 24.075081>,  <42.931061, 31.186771, 24.153017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159306, 31.505878, 24.075081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102014, -0.304277, -0.947106,
		-0.814857, 0.520557, -0.255009,
		0.570615, 0.797769, -0.194838,
		43.330490, 31.745209, 24.016630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639866, 31.503510, 23.495998>,  <42.931061, 31.186771, 24.153017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639866, 31.503510, 23.495998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.014729, 31.638115, 23.532869>,  <43.239647, 31.718878, 23.554993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.014729, 31.638115, 23.532869>,  <42.639866, 31.503510, 23.495998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014729, 31.638115, 23.532869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155307, -0.165754, -0.973861,
		-0.312439, 0.926976, -0.207601,
		0.937156, 0.336514, 0.092178,
		43.295876, 31.739069, 23.560522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834785, 31.901663, 22.877275>,  <42.639866, 31.503510, 23.495998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834785, 31.901663, 22.877275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.175892, 31.791883, 23.055023>,  <43.380558, 31.726015, 23.161673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.175892, 31.791883, 23.055023>,  <42.834785, 31.901663, 22.877275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175892, 31.791883, 23.055023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303612, -0.431800, -0.849334,
		0.424978, 0.859201, -0.284899,
		0.852768, -0.274449, 0.444369,
		43.431721, 31.709549, 23.188334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.307148, 32.121124, 22.490721>,  <42.834785, 31.901663, 22.877275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.307148, 32.121124, 22.490721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.430061, 31.793766, 22.684961>,  <43.503811, 31.597351, 22.801506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.430061, 31.793766, 22.684961>,  <43.307148, 32.121124, 22.490721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.430061, 31.793766, 22.684961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136364, -0.467156, -0.873596,
		0.941796, 0.334662, -0.031951,
		0.307285, -0.818393, 0.485602,
		43.522247, 31.548248, 22.830643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065826, 31.899038, 22.147123>,  <43.307148, 32.121124, 22.490721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065826, 31.899038, 22.147123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.907166, 31.593832, 22.351269>,  <43.811970, 31.410707, 22.473757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.907166, 31.593832, 22.351269>,  <44.065826, 31.899038, 22.147123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907166, 31.593832, 22.351269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322577, -0.636371, -0.700697,
		0.859425, -0.113302, 0.498550,
		-0.396653, -0.763017, 0.510365,
		43.788170, 31.364927, 22.504377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.492577, 31.358419, 21.989422>,  <44.065826, 31.899038, 22.147123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.492577, 31.358419, 21.989422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.164776, 31.162382, 22.108231>,  <43.968094, 31.044760, 22.179516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.164776, 31.162382, 22.108231>,  <44.492577, 31.358419, 21.989422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164776, 31.162382, 22.108231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144874, -0.678635, -0.720046,
		0.554460, -0.547049, 0.627146,
		-0.819503, -0.490094, 0.297023,
		43.918926, 31.015354, 22.197338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.699734, 30.689753, 22.113363>,  <44.492577, 31.358419, 21.989422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.699734, 30.689753, 22.113363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.302834, 30.651632, 22.081491>,  <44.064693, 30.628759, 22.062368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.302834, 30.651632, 22.081491>,  <44.699734, 30.689753, 22.113363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302834, 30.651632, 22.081491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124211, -0.752723, -0.646514,
		0.001638, -0.651403, 0.758730,
		-0.992255, -0.095302, -0.079679,
		44.005157, 30.623041, 22.057589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.726978, 30.052631, 21.822083>,  <44.699734, 30.689753, 22.113363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.726978, 30.052631, 21.822083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.359749, 30.193258, 21.748831>,  <44.139412, 30.277636, 21.704880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.359749, 30.193258, 21.748831>,  <44.726978, 30.052631, 21.822083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359749, 30.193258, 21.748831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158452, -0.748929, -0.643426,
		-0.363359, -0.561697, 0.743281,
		-0.918076, 0.351569, -0.183128,
		44.084328, 30.298729, 21.693892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267197, 29.477270, 21.836628>,  <44.726978, 30.052631, 21.822083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267197, 29.477270, 21.836628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.098164, 29.769569, 21.622177>,  <43.996742, 29.944948, 21.493507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.098164, 29.769569, 21.622177>,  <44.267197, 29.477270, 21.836628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098164, 29.769569, 21.622177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147256, -0.639038, -0.754948,
		-0.894282, -0.240080, 0.377653,
		-0.422582, 0.730748, -0.536127,
		43.971390, 29.988794, 21.461338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623089, 29.241169, 21.665430>,  <44.267197, 29.477270, 21.836628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623089, 29.241169, 21.665430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.707413, 29.529228, 21.401022>,  <43.758007, 29.702063, 21.242378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.707413, 29.529228, 21.401022>,  <43.623089, 29.241169, 21.665430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707413, 29.529228, 21.401022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360282, -0.571371, -0.737383,
		-0.908710, 0.393604, 0.139003,
		0.210814, 0.720147, -0.661018,
		43.770657, 29.745272, 21.202717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.070644, 29.279650, 21.261599>,  <43.623089, 29.241169, 21.665430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.070644, 29.279650, 21.261599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.352501, 29.469736, 21.050827>,  <43.521614, 29.583788, 20.924364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.352501, 29.469736, 21.050827>,  <43.070644, 29.279650, 21.261599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352501, 29.469736, 21.050827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261845, -0.516048, -0.815556,
		-0.659487, 0.712646, -0.239193,
		0.704638, 0.475217, -0.526929,
		43.563892, 29.612301, 20.892748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626991, 29.697451, 21.593868>,  <43.070644, 29.279650, 21.261599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626991, 29.697451, 21.593868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.360382, 29.487917, 21.381699>,  <42.200417, 29.362198, 21.254396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.360382, 29.487917, 21.381699>,  <42.626991, 29.697451, 21.593868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360382, 29.487917, 21.381699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710947, 0.660712, 0.240862,
		0.224285, 0.537642, -0.812796,
		-0.666522, -0.523833, -0.530422,
		42.160427, 29.330767, 21.222572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313519, 30.193115, 21.207300>,  <42.626991, 29.697451, 21.593868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313519, 30.193115, 21.207300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.080074, 29.870974, 21.248878>,  <41.940010, 29.677689, 21.273825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.080074, 29.870974, 21.248878>,  <42.313519, 30.193115, 21.207300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080074, 29.870974, 21.248878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766713, 0.588668, 0.256168,
		-0.267495, 0.069806, -0.961028,
		-0.583608, -0.805356, 0.103944,
		41.904991, 29.629368, 21.280062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554268, 30.422918, 20.896194>,  <42.313519, 30.193115, 21.207300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554268, 30.422918, 20.896194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.513138, 30.119083, 21.153084>,  <41.488461, 29.936783, 21.307219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.513138, 30.119083, 21.153084>,  <41.554268, 30.422918, 20.896194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513138, 30.119083, 21.153084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716140, 0.504626, 0.482180,
		-0.690341, -0.410341, -0.595861,
		-0.102829, -0.759588, 0.642225,
		41.482288, 29.891207, 21.345751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924854, 30.200459, 20.815292>,  <41.554268, 30.422918, 20.896194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924854, 30.200459, 20.815292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.008949, 30.065716, 21.182405>,  <41.059406, 29.984869, 21.402674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.008949, 30.065716, 21.182405>,  <40.924854, 30.200459, 20.815292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008949, 30.065716, 21.182405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763024, 0.530378, 0.369451,
		-0.611225, -0.777963, -0.145527,
		0.210235, -0.336858, 0.917784,
		41.072021, 29.964659, 21.457741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287106, 30.091049, 21.128397>,  <40.924854, 30.200459, 20.815292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287106, 30.091049, 21.128397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.532711, 30.118549, 21.442913>,  <40.680077, 30.135050, 21.631622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.532711, 30.118549, 21.442913>,  <40.287106, 30.091049, 21.128397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532711, 30.118549, 21.442913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741959, 0.390067, 0.545292,
		-0.269218, -0.918216, 0.290518,
		0.614018, 0.068749, 0.786293,
		40.716915, 30.139175, 21.678801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884384, 29.833630, 21.728941>,  <40.287106, 30.091049, 21.128397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884384, 29.833630, 21.728941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.191578, 30.023521, 21.900906>,  <40.375896, 30.137457, 22.004086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.191578, 30.023521, 21.900906>,  <39.884384, 29.833630, 21.728941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191578, 30.023521, 21.900906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621435, 0.389933, 0.679537,
		0.154959, -0.789040, 0.594477,
		0.767988, 0.474729, 0.429914,
		40.421974, 30.165941, 22.029881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866703, 29.616621, 22.411449>,  <39.884384, 29.833630, 21.728941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866703, 29.616621, 22.411449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.061264, 29.965696, 22.394325>,  <40.178001, 30.175142, 22.384050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.061264, 29.965696, 22.394325>,  <39.866703, 29.616621, 22.411449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061264, 29.965696, 22.394325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533865, 0.335624, 0.776109,
		0.691669, -0.354644, 0.629144,
		0.486398, 0.872688, -0.042809,
		40.207184, 30.227503, 22.381483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077568, 29.708336, 23.080070>,  <39.866703, 29.616621, 22.411449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077568, 29.708336, 23.080070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.078121, 30.064152, 22.897327>,  <40.078453, 30.277641, 22.787682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.078121, 30.064152, 22.897327>,  <40.077568, 29.708336, 23.080070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078121, 30.064152, 22.897327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496101, 0.397288, 0.772040,
		0.868264, 0.225577, 0.441851,
		0.001388, 0.889538, -0.456860,
		40.078537, 30.331013, 22.760269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198971, 29.108295, 23.510187>,  <40.077568, 29.708336, 23.080070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198971, 29.108295, 23.510187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.841957, 28.941452, 23.578773>,  <39.627750, 28.841347, 23.619925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.841957, 28.941452, 23.578773>,  <40.198971, 29.108295, 23.510187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841957, 28.941452, 23.578773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226438, -0.743299, -0.629471,
		0.390009, -0.522998, 0.757869,
		-0.892535, -0.417109, 0.171466,
		39.574196, 28.816319, 23.630213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260937, 28.395746, 23.441254>,  <40.198971, 29.108295, 23.510187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260937, 28.395746, 23.441254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.862442, 28.417248, 23.414051>,  <39.623344, 28.430149, 23.397730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.862442, 28.417248, 23.414051>,  <40.260937, 28.395746, 23.441254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862442, 28.417248, 23.414051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022002, -0.602006, -0.798188,
		-0.083846, -0.796680, 0.598558,
		-0.996236, 0.053756, -0.068004,
		39.563572, 28.433374, 23.393650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062408, 27.693834, 23.320095>,  <40.260937, 28.395746, 23.441254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062408, 27.693834, 23.320095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.788563, 27.947750, 23.176794>,  <39.624256, 28.100100, 23.090813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.788563, 27.947750, 23.176794>,  <40.062408, 27.693834, 23.320095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788563, 27.947750, 23.176794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012234, -0.481420, -0.876405,
		-0.728803, -0.604382, 0.321821,
		-0.684614, 0.634789, -0.358254,
		39.583179, 28.138187, 23.069319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609394, 27.278925, 22.963705>,  <40.062408, 27.693834, 23.320095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609394, 27.278925, 22.963705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.531723, 27.640419, 22.811100>,  <39.485119, 27.857315, 22.719536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.531723, 27.640419, 22.811100>,  <39.609394, 27.278925, 22.963705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531723, 27.640419, 22.811100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051734, -0.378942, -0.923973,
		-0.979601, -0.199155, 0.026830,
		-0.194181, 0.903737, -0.381515,
		39.473469, 27.911541, 22.696646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065220, 27.182001, 22.506697>,  <39.609394, 27.278925, 22.963705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065220, 27.182001, 22.506697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.258507, 27.514709, 22.397404>,  <39.374481, 27.714334, 22.331829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.258507, 27.514709, 22.397404>,  <39.065220, 27.182001, 22.506697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258507, 27.514709, 22.397404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105260, -0.365016, -0.925032,
		-0.869148, 0.418234, -0.263935,
		0.483220, 0.831771, -0.273230,
		39.403473, 27.764240, 22.315435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711521, 27.287466, 21.906815>,  <39.065220, 27.182001, 22.506697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711521, 27.287466, 21.906815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.051949, 27.495815, 21.880350>,  <39.256207, 27.620825, 21.864471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.051949, 27.495815, 21.880350>,  <38.711521, 27.287466, 21.906815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051949, 27.495815, 21.880350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144142, -0.352946, -0.924474,
		-0.504884, 0.777252, -0.375461,
		0.851067, 0.520872, -0.066162,
		39.307270, 27.652077, 21.860502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637035, 27.694788, 21.316994>,  <38.711521, 27.287466, 21.906815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637035, 27.694788, 21.316994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.033413, 27.671778, 21.365522>,  <39.271240, 27.657972, 21.394640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.033413, 27.671778, 21.365522>,  <38.637035, 27.694788, 21.316994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033413, 27.671778, 21.365522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095666, -0.331537, -0.938579,
		0.094214, 0.941687, -0.323032,
		0.990945, -0.057524, 0.121323,
		39.330696, 27.654520, 21.401918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963116, 27.879553, 20.722157>,  <38.637035, 27.694788, 21.316994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963116, 27.879553, 20.722157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.267155, 27.676687, 20.884653>,  <39.449577, 27.554968, 20.982151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.267155, 27.676687, 20.884653>,  <38.963116, 27.879553, 20.722157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267155, 27.676687, 20.884653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101611, -0.524719, -0.845190,
		0.641812, 0.683708, -0.347306,
		0.760101, -0.507162, 0.406243,
		39.495186, 27.524538, 21.006527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562687, 27.254772, 20.626532>,  <38.963116, 27.879553, 20.722157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562687, 27.254772, 20.626532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.725845, 27.361572, 20.277287>,  <38.823742, 27.425653, 20.067739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.725845, 27.361572, 20.277287>,  <38.562687, 27.254772, 20.626532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725845, 27.361572, 20.277287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912895, 0.135478, -0.385056,
		0.015477, 0.954126, 0.299006,
		0.407900, 0.267002, -0.873114,
		38.848217, 27.441673, 20.015352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.125919, 34.646217, 34.816139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.166710, 34.253860, 34.882420>,  <38.191185, 34.018448, 34.922188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.166710, 34.253860, 34.882420>,  <38.125919, 34.646217, 34.816139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166710, 34.253860, 34.882420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168500, -0.181191, -0.968905,
		0.980412, 0.070890, -0.183758,
		0.101981, -0.980889, 0.165697,
		38.197304, 33.959595, 34.932129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628357, 34.362320, 34.259640>,  <38.125919, 34.646217, 34.816139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628357, 34.362320, 34.259640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.369499, 34.092552, 34.401825>,  <38.214184, 33.930691, 34.487137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.369499, 34.092552, 34.401825>,  <38.628357, 34.362320, 34.259640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369499, 34.092552, 34.401825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211873, -0.288796, -0.933652,
		0.732333, -0.679523, 0.044001,
		-0.647146, -0.674422, 0.355467,
		38.175354, 33.890224, 34.508465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705311, 33.763161, 33.852558>,  <38.628357, 34.362320, 34.259640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705311, 33.763161, 33.852558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.373112, 33.662197, 34.051178>,  <38.173794, 33.601620, 34.170349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.373112, 33.662197, 34.051178>,  <38.705311, 33.763161, 33.852558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373112, 33.662197, 34.051178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309035, -0.532880, -0.787741,
		0.463435, -0.807669, 0.364552,
		-0.830497, -0.252408, 0.496553,
		38.123962, 33.586475, 34.200146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597427, 33.002007, 33.791870>,  <38.705311, 33.763161, 33.852558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597427, 33.002007, 33.791870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.238071, 33.162560, 33.863197>,  <38.022457, 33.258892, 33.905994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.238071, 33.162560, 33.863197>,  <38.597427, 33.002007, 33.791870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238071, 33.162560, 33.863197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369828, -0.472319, -0.800089,
		-0.236916, -0.784735, 0.572766,
		-0.898386, 0.401379, 0.178317,
		37.968555, 33.282974, 33.916691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164402, 32.495617, 33.562687>,  <38.597427, 33.002007, 33.791870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164402, 32.495617, 33.562687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.915932, 32.808064, 33.587971>,  <37.766850, 32.995533, 33.603142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.915932, 32.808064, 33.587971>,  <38.164402, 32.495617, 33.562687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915932, 32.808064, 33.587971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475804, -0.311820, -0.822423,
		-0.622699, -0.540944, 0.565354,
		-0.621173, 0.781120, 0.063214,
		37.729580, 33.042400, 33.606934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627907, 32.170734, 33.379501>,  <38.164402, 32.495617, 33.562687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627907, 32.170734, 33.379501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569344, 32.562771, 33.325848>,  <37.534206, 32.797993, 33.293655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569344, 32.562771, 33.325848>,  <37.627907, 32.170734, 33.379501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569344, 32.562771, 33.325848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589301, -0.195322, -0.783948,
		-0.794538, -0.035727, 0.606163,
		-0.146405, 0.980088, -0.134136,
		37.525421, 32.856796, 33.285606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969547, 32.258785, 33.258663>,  <37.627907, 32.170734, 33.379501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969547, 32.258785, 33.258663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.132942, 32.580662, 33.086330>,  <37.230980, 32.773788, 32.982933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.132942, 32.580662, 33.086330>,  <36.969547, 32.258785, 33.258663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132942, 32.580662, 33.086330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383450, -0.277047, -0.881028,
		-0.828313, 0.525091, 0.195388,
		0.408489, 0.804689, -0.430828,
		37.255489, 32.822067, 32.957081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394112, 32.674389, 32.838417>,  <36.969547, 32.258785, 33.258663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394112, 32.674389, 32.838417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.748070, 32.764885, 32.675552>,  <36.960445, 32.819183, 32.577831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.748070, 32.764885, 32.675552>,  <36.394112, 32.674389, 32.838417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748070, 32.764885, 32.675552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376948, -0.165700, -0.911292,
		-0.273638, 0.959874, -0.061346,
		0.884891, 0.226240, -0.407165,
		37.013538, 32.832756, 32.553402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185997, 33.021145, 32.298534>,  <36.394112, 32.674389, 32.838417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185997, 33.021145, 32.298534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.556862, 32.890427, 32.225246>,  <36.779381, 32.811996, 32.181274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.556862, 32.890427, 32.225246>,  <36.185997, 33.021145, 32.298534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556862, 32.890427, 32.225246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279735, -0.278521, -0.918790,
		0.249227, 0.903122, -0.349651,
		0.927165, -0.326797, -0.183221,
		36.835011, 32.792389, 32.170280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302795, 33.134495, 31.535820>,  <36.185997, 33.021145, 32.298534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302795, 33.134495, 31.535820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625126, 32.915497, 31.626062>,  <36.818523, 32.784100, 31.680208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625126, 32.915497, 31.626062>,  <36.302795, 33.134495, 31.535820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625126, 32.915497, 31.626062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115144, -0.228846, -0.966629,
		0.580855, 0.804908, -0.121369,
		0.805822, -0.547496, 0.225606,
		36.866871, 32.751247, 31.693745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849335, 33.410191, 31.143023>,  <36.302795, 33.134495, 31.535820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849335, 33.410191, 31.143023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.900253, 33.024529, 31.236149>,  <36.930805, 32.793133, 31.292025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.900253, 33.024529, 31.236149>,  <36.849335, 33.410191, 31.143023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900253, 33.024529, 31.236149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006174, -0.233949, -0.972229,
		0.991845, 0.125200, -0.023829,
		0.127298, -0.964154, 0.232815,
		36.938442, 32.735283, 31.305994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322044, 33.185154, 30.708477>,  <36.849335, 33.410191, 31.143023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322044, 33.185154, 30.708477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202518, 32.823551, 30.830776>,  <37.130802, 32.606590, 30.904156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202518, 32.823551, 30.830776>,  <37.322044, 33.185154, 30.708477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202518, 32.823551, 30.830776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033991, -0.330264, -0.943276,
		0.953705, -0.271473, 0.129416,
		-0.298816, -0.904007, 0.305747,
		37.112873, 32.552349, 30.922501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752232, 33.636700, 30.223831>,  <37.322044, 33.185154, 30.708477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752232, 33.636700, 30.223831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.455616, 33.829838, 30.037510>,  <37.277645, 33.945721, 29.925716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.455616, 33.829838, 30.037510>,  <37.752232, 33.636700, 30.223831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455616, 33.829838, 30.037510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103792, 0.603371, 0.790677,
		0.662828, 0.634668, -0.397310,
		-0.741543, 0.482845, -0.465805,
		37.233154, 33.974693, 29.897768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858639, 34.352989, 30.337589>,  <37.752232, 33.636700, 30.223831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858639, 34.352989, 30.337589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.470901, 34.299530, 30.255117>,  <37.238258, 34.267456, 30.205633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.470901, 34.299530, 30.255117>,  <37.858639, 34.352989, 30.337589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470901, 34.299530, 30.255117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242964, 0.646409, 0.723274,
		0.036616, 0.751195, -0.659063,
		-0.969344, -0.133645, -0.206182,
		37.180099, 34.259438, 30.193262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614948, 34.896927, 30.603539>,  <37.858639, 34.352989, 30.337589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614948, 34.896927, 30.603539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.265202, 34.732822, 30.499876>,  <37.055351, 34.634357, 30.437677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.265202, 34.732822, 30.499876>,  <37.614948, 34.896927, 30.603539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265202, 34.732822, 30.499876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471579, 0.592463, 0.653147,
		-0.114421, 0.693305, -0.711503,
		-0.874369, -0.410264, -0.259158,
		37.002892, 34.609745, 30.422129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264809, 35.363197, 30.350973>,  <37.614948, 34.896927, 30.603539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264809, 35.363197, 30.350973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.027164, 35.083183, 30.509457>,  <36.884579, 34.915176, 30.604548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.027164, 35.083183, 30.509457>,  <37.264809, 35.363197, 30.350973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027164, 35.083183, 30.509457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057793, 0.528440, 0.847001,
		-0.802302, 0.480317, -0.354410,
		-0.594113, -0.700033, 0.396210,
		36.848930, 34.873173, 30.628319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747482, 35.707043, 30.623507>,  <37.264809, 35.363197, 30.350973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747482, 35.707043, 30.623507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.705349, 35.363091, 30.823307>,  <36.680069, 35.156719, 30.943188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.705349, 35.363091, 30.823307>,  <36.747482, 35.707043, 30.623507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705349, 35.363091, 30.823307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242698, 0.509336, 0.825636,
		-0.964367, -0.034264, -0.262341,
		-0.105330, -0.859885, 0.499503,
		36.673748, 35.105125, 30.973158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208038, 35.903553, 31.070501>,  <36.747482, 35.707043, 30.623507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208038, 35.903553, 31.070501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.370365, 35.573158, 31.226992>,  <36.467762, 35.374920, 31.320887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.370365, 35.573158, 31.226992>,  <36.208038, 35.903553, 31.070501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370365, 35.573158, 31.226992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122777, 0.374911, 0.918895,
		-0.905670, -0.420937, 0.050733,
		0.405818, -0.825986, 0.391227,
		36.492111, 35.325363, 31.344360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733192, 35.674194, 31.612995>,  <36.208038, 35.903553, 31.070501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733192, 35.674194, 31.612995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.104084, 35.542477, 31.684341>,  <36.326618, 35.463444, 31.727150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.104084, 35.542477, 31.684341>,  <35.733192, 35.674194, 31.612995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104084, 35.542477, 31.684341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075797, 0.301406, 0.950478,
		-0.366752, -0.894828, 0.254512,
		0.927226, -0.329298, 0.178367,
		36.382252, 35.443687, 31.737852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821087, 35.382790, 32.339146>,  <35.733192, 35.674194, 31.612995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821087, 35.382790, 32.339146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.210979, 35.426937, 32.261452>,  <36.444916, 35.453426, 32.214836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.210979, 35.426937, 32.261452>,  <35.821087, 35.382790, 32.339146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210979, 35.426937, 32.261452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129465, 0.429499, 0.893739,
		0.182060, -0.896298, 0.404356,
		0.974727, 0.110364, -0.194234,
		36.503399, 35.460045, 32.203182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258705, 35.197521, 32.990925>,  <35.821087, 35.382790, 32.339146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258705, 35.197521, 32.990925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499664, 35.426590, 32.768513>,  <36.644238, 35.564030, 32.635063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499664, 35.426590, 32.768513>,  <36.258705, 35.197521, 32.990925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499664, 35.426590, 32.768513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210283, 0.558141, 0.802658,
		0.770002, -0.600440, 0.215797,
		0.602393, 0.572670, -0.556032,
		36.680382, 35.598392, 32.601704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631470, 35.471451, 33.378143>,  <36.258705, 35.197521, 32.990925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631470, 35.471451, 33.378143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.720078, 35.737980, 33.093342>,  <36.773243, 35.897896, 32.922462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.720078, 35.737980, 33.093342>,  <36.631470, 35.471451, 33.378143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720078, 35.737980, 33.093342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169568, 0.692697, 0.701012,
		0.960301, -0.276018, 0.040457,
		0.221516, 0.666322, -0.712001,
		36.786533, 35.937878, 32.879742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223339, 35.806751, 33.509506>,  <36.631470, 35.471451, 33.378143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223339, 35.806751, 33.509506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.060146, 36.069702, 33.256081>,  <36.962231, 36.227474, 33.104027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.060146, 36.069702, 33.256081>,  <37.223339, 35.806751, 33.509506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060146, 36.069702, 33.256081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216905, 0.743863, 0.632155,
		0.886850, 0.120486, -0.446073,
		-0.407983, 0.657382, -0.633560,
		36.937752, 36.266918, 33.066013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529575, 36.453270, 33.607567>,  <37.223339, 35.806751, 33.509506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529575, 36.453270, 33.607567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.182507, 36.555882, 33.437233>,  <36.974266, 36.617447, 33.335033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.182507, 36.555882, 33.437233>,  <37.529575, 36.453270, 33.607567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182507, 36.555882, 33.437233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024988, 0.832991, 0.552722,
		0.496507, 0.490222, -0.716354,
		-0.867673, 0.256530, -0.425836,
		36.922203, 36.632839, 33.309483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654633, 37.130421, 33.517944>,  <37.529575, 36.453270, 33.607567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654633, 37.130421, 33.517944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.257427, 37.090431, 33.492859>,  <37.019104, 37.066437, 33.477810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.257427, 37.090431, 33.492859>,  <37.654633, 37.130421, 33.517944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257427, 37.090431, 33.492859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117899, 0.863760, 0.489917,
		0.005190, 0.493887, -0.869511,
		-0.993012, -0.099972, -0.062711,
		36.959522, 37.060440, 33.474045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412731, 37.707710, 33.292488>,  <37.654633, 37.130421, 33.517944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412731, 37.707710, 33.292488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113567, 37.531364, 33.490990>,  <36.934067, 37.425556, 33.610088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113567, 37.531364, 33.490990>,  <37.412731, 37.707710, 33.292488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113567, 37.531364, 33.490990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199419, 0.862288, 0.465501,
		-0.633136, 0.249191, -0.732832,
		-0.747911, -0.440866, 0.496252,
		36.889194, 37.399105, 33.639866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997955, 37.634079, 32.920212>,  <37.412731, 37.707710, 33.292488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997955, 37.634079, 32.920212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.221432, 37.965088, 32.942383>,  <38.355518, 38.163692, 32.955685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.221432, 37.965088, 32.942383>,  <37.997955, 37.634079, 32.920212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221432, 37.965088, 32.942383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394019, -0.206014, -0.895716,
		-0.729807, 0.522265, -0.441158,
		0.558686, 0.827525, 0.055431,
		38.389038, 38.213345, 32.959011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897247, 38.192444, 32.351665>,  <37.997955, 37.634079, 32.920212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897247, 38.192444, 32.351665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.260448, 38.170055, 32.517746>,  <38.478371, 38.156620, 32.617393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.260448, 38.170055, 32.517746>,  <37.897247, 38.192444, 32.351665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260448, 38.170055, 32.517746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402513, -0.158359, -0.901613,
		0.116219, 0.985794, -0.121260,
		0.908007, -0.055976, 0.415199,
		38.532852, 38.153263, 32.642307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360966, 38.591480, 31.981834>,  <37.897247, 38.192444, 32.351665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360966, 38.591480, 31.981834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.573193, 38.302979, 32.159954>,  <38.700531, 38.129879, 32.266827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.573193, 38.302979, 32.159954>,  <38.360966, 38.591480, 31.981834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573193, 38.302979, 32.159954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449390, -0.206085, -0.869240,
		0.718710, 0.661306, 0.214781,
		0.530570, -0.721251, 0.445300,
		38.732365, 38.086601, 32.293545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083324, 38.715321, 31.686131>,  <38.360966, 38.591480, 31.981834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083324, 38.715321, 31.686131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.035328, 38.348240, 31.837622>,  <39.006531, 38.127991, 31.928516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.035328, 38.348240, 31.837622>,  <39.083324, 38.715321, 31.686131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035328, 38.348240, 31.837622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488037, -0.386731, -0.782470,
		0.864536, 0.090945, 0.494274,
		-0.119989, -0.917697, 0.378727,
		38.999332, 38.072929, 31.951241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751854, 38.401371, 31.763668>,  <39.083324, 38.715321, 31.686131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751854, 38.401371, 31.763668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.475948, 38.117920, 31.704233>,  <39.310406, 37.947849, 31.668571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.475948, 38.117920, 31.704233>,  <39.751854, 38.401371, 31.763668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475948, 38.117920, 31.704233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583793, -0.422933, -0.693047,
		0.428266, -0.564784, 0.705413,
		-0.689764, -0.708624, -0.148589,
		39.269020, 37.905334, 31.659657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216911, 37.829193, 31.758121>,  <39.751854, 38.401371, 31.763668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216911, 37.829193, 31.758121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.880314, 37.690426, 31.592457>,  <39.678356, 37.607166, 31.493059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.880314, 37.690426, 31.592457>,  <40.216911, 37.829193, 31.758121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880314, 37.690426, 31.592457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539564, -0.500693, -0.676888,
		0.027461, -0.793064, 0.608519,
		-0.841497, -0.346923, -0.414159,
		39.627865, 37.586349, 31.468208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348137, 37.014767, 31.710032>,  <40.216911, 37.829193, 31.758121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348137, 37.014767, 31.710032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.038788, 37.115715, 31.477413>,  <39.853176, 37.176285, 31.337841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.038788, 37.115715, 31.477413>,  <40.348137, 37.014767, 31.710032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038788, 37.115715, 31.477413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279631, -0.687476, -0.670212,
		-0.568942, -0.680945, 0.461107,
		-0.773376, 0.252372, -0.581547,
		39.806774, 37.191425, 31.302950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264210, 36.425343, 31.367313>,  <40.348137, 37.014767, 31.710032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264210, 36.425343, 31.367313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.078671, 36.713337, 31.160833>,  <39.967346, 36.886135, 31.036945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.078671, 36.713337, 31.160833>,  <40.264210, 36.425343, 31.367313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078671, 36.713337, 31.160833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106689, -0.533035, -0.839340,
		-0.879466, -0.444401, 0.170434,
		-0.463851, 0.719987, -0.516199,
		39.939514, 36.929333, 31.005974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798203, 36.080795, 31.027603>,  <40.264210, 36.425343, 31.367313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798203, 36.080795, 31.027603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.871052, 36.419102, 30.827000>,  <39.914761, 36.622086, 30.706636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.871052, 36.419102, 30.827000>,  <39.798203, 36.080795, 31.027603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871052, 36.419102, 30.827000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290408, -0.533554, -0.794345,
		-0.939412, -0.000974, -0.342790,
		0.182123, 0.845766, -0.501510,
		39.925690, 36.672832, 30.676546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762894, 35.847084, 30.351376>,  <39.798203, 36.080795, 31.027603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762894, 35.847084, 30.351376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.969563, 36.188885, 30.329912>,  <40.093563, 36.393967, 30.317034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.969563, 36.188885, 30.329912>,  <39.762894, 35.847084, 30.351376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969563, 36.188885, 30.329912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545401, -0.376791, -0.748709,
		-0.659991, 0.357570, -0.660723,
		0.516671, 0.854501, -0.053660,
		40.124565, 36.445236, 30.313814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667164, 36.081635, 29.666649>,  <39.762894, 35.847084, 30.351376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667164, 36.081635, 29.666649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.004753, 36.270885, 29.767731>,  <40.207306, 36.384438, 29.828381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.004753, 36.270885, 29.767731>,  <39.667164, 36.081635, 29.666649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004753, 36.270885, 29.767731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384428, -0.204984, -0.900109,
		-0.374066, 0.856815, -0.354885,
		0.843973, 0.473128, 0.252706,
		40.257946, 36.412823, 29.843542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854755, 36.574982, 29.070951>,  <39.667164, 36.081635, 29.666649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854755, 36.574982, 29.070951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.188053, 36.515125, 29.283861>,  <40.388031, 36.479214, 29.411608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.188053, 36.515125, 29.283861>,  <39.854755, 36.574982, 29.070951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188053, 36.515125, 29.283861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468774, -0.319286, -0.823594,
		0.293189, 0.935770, -0.195896,
		0.833241, -0.149638, 0.532276,
		40.438026, 36.470234, 29.443544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316677, 36.661358, 28.558121>,  <39.854755, 36.574982, 29.070951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316677, 36.661358, 28.558121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.508858, 36.481731, 28.859451>,  <40.624168, 36.373955, 29.040251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.508858, 36.481731, 28.859451>,  <40.316677, 36.661358, 28.558121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508858, 36.481731, 28.859451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655440, -0.386868, -0.648638,
		0.582720, 0.805402, 0.108464,
		0.480454, -0.449066, 0.753328,
		40.652992, 36.347012, 29.085449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936302, 36.685879, 28.290495>,  <40.316677, 36.661358, 28.558121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936302, 36.685879, 28.290495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.960377, 36.399250, 28.568460>,  <40.974823, 36.227272, 28.735241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.960377, 36.399250, 28.568460>,  <40.936302, 36.685879, 28.290495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960377, 36.399250, 28.568460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508725, -0.576958, -0.638998,
		0.858823, 0.391980, 0.329811,
		0.060187, -0.716569, 0.694915,
		40.978432, 36.184280, 28.776936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766956, 36.452839, 28.428230>,  <40.936302, 36.685879, 28.290495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766956, 36.452839, 28.428230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.520462, 36.171051, 28.569075>,  <41.372566, 36.001980, 28.653582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.520462, 36.171051, 28.569075>,  <41.766956, 36.452839, 28.428230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520462, 36.171051, 28.569075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541894, -0.703700, -0.459519,
		0.571498, -0.092362, 0.815389,
		-0.616231, -0.704469, 0.352112,
		41.335594, 35.959709, 28.674709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133671, 35.954304, 28.776897>,  <41.766956, 36.452839, 28.428230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133671, 35.954304, 28.776897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.788601, 35.781372, 28.671906>,  <41.581558, 35.677612, 28.608912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.788601, 35.781372, 28.671906>,  <42.133671, 35.954304, 28.776897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788601, 35.781372, 28.671906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499735, -0.808518, -0.310747,
		-0.077874, -0.399241, 0.913533,
		-0.862671, -0.432325, -0.262477,
		41.529800, 35.651676, 28.593163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245335, 35.202858, 28.821196>,  <42.133671, 35.954304, 28.776897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245335, 35.202858, 28.821196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.916176, 35.187836, 28.594418>,  <41.718681, 35.178822, 28.458351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.916176, 35.187836, 28.594418>,  <42.245335, 35.202858, 28.821196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916176, 35.187836, 28.594418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359551, -0.807038, -0.468415,
		-0.439957, -0.589304, 0.677613,
		-0.822898, -0.037554, -0.566946,
		41.669308, 35.176571, 28.424334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118771, 34.498783, 28.716593>,  <42.245335, 35.202858, 28.821196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118771, 34.498783, 28.716593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.933823, 34.675362, 28.408998>,  <41.822853, 34.781311, 28.224442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.933823, 34.675362, 28.408998>,  <42.118771, 34.498783, 28.716593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933823, 34.675362, 28.408998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267393, -0.757462, -0.595612,
		-0.845409, -0.481013, 0.232186,
		-0.462369, 0.441451, -0.768984,
		41.795113, 34.807796, 28.178303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744656, 33.932053, 28.441065>,  <42.118771, 34.498783, 28.716593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744656, 33.932053, 28.441065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.773354, 34.215599, 28.160389>,  <41.790573, 34.385727, 27.991983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.773354, 34.215599, 28.160389>,  <41.744656, 33.932053, 28.441065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773354, 34.215599, 28.160389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352316, -0.676163, -0.647053,
		-0.933127, -0.200790, -0.298258,
		0.071749, 0.708863, -0.701687,
		41.794880, 34.428257, 27.949883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438568, 33.639355, 27.827209>,  <41.744656, 33.932053, 28.441065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438568, 33.639355, 27.827209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.676361, 33.937763, 27.707176>,  <41.819035, 34.116810, 27.635157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.676361, 33.937763, 27.707176>,  <41.438568, 33.639355, 27.827209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676361, 33.937763, 27.707176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239621, -0.520583, -0.819497,
		-0.767578, 0.415268, -0.488238,
		0.594479, 0.746020, -0.300081,
		41.854706, 34.161568, 27.617151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244617, 33.717312, 27.106167>,  <41.438568, 33.639355, 27.827209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244617, 33.717312, 27.106167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.609486, 33.873352, 27.156404>,  <41.828407, 33.966976, 27.186546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.609486, 33.873352, 27.156404>,  <41.244617, 33.717312, 27.106167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609486, 33.873352, 27.156404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307847, -0.449940, -0.838322,
		-0.270517, 0.803355, -0.530511,
		0.912168, 0.390096, 0.125594,
		41.883137, 33.990379, 27.194082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459427, 34.005451, 26.489265>,  <41.244617, 33.717312, 27.106167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459427, 34.005451, 26.489265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.807205, 33.961063, 26.681824>,  <42.015873, 33.934433, 26.797359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.807205, 33.961063, 26.681824>,  <41.459427, 34.005451, 26.489265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807205, 33.961063, 26.681824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390276, -0.443157, -0.807030,
		0.302888, 0.889550, -0.341995,
		0.869450, -0.110967, 0.481396,
		42.068039, 33.927773, 26.826242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880516, 34.007637, 25.943764>,  <41.459427, 34.005451, 26.489265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880516, 34.007637, 25.943764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.138557, 33.871780, 26.217546>,  <42.293381, 33.790268, 26.381817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.138557, 33.871780, 26.217546>,  <41.880516, 34.007637, 25.943764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138557, 33.871780, 26.217546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496398, -0.494706, -0.713341,
		0.580887, 0.799943, -0.150538,
		0.645104, -0.339643, 0.684458,
		42.332088, 33.769886, 26.422884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556568, 34.130081, 25.615791>,  <41.880516, 34.007637, 25.943764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556568, 34.130081, 25.615791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.623482, 33.849918, 25.893337>,  <42.663631, 33.681820, 26.059864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.623482, 33.849918, 25.893337>,  <42.556568, 34.130081, 25.615791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623482, 33.849918, 25.893337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443658, -0.575018, -0.687403,
		0.880445, 0.422832, 0.214547,
		0.167287, -0.700406, 0.693864,
		42.673668, 33.639797, 26.101496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229439, 34.047722, 25.621307>,  <42.556568, 34.130081, 25.615791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229439, 34.047722, 25.621307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.023216, 33.722248, 25.728733>,  <42.899483, 33.526966, 25.793188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.023216, 33.722248, 25.728733>,  <43.229439, 34.047722, 25.621307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023216, 33.722248, 25.728733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461211, -0.527669, -0.713337,
		0.722142, -0.243899, 0.647321,
		-0.515553, -0.813682, 0.268563,
		42.868549, 33.478142, 25.809301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695869, 33.554424, 25.528826>,  <43.229439, 34.047722, 25.621307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695869, 33.554424, 25.528826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.371124, 33.322659, 25.557528>,  <43.176277, 33.183598, 25.574749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.371124, 33.322659, 25.557528>,  <43.695869, 33.554424, 25.528826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371124, 33.322659, 25.557528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403827, -0.646046, -0.647726,
		0.421660, -0.496891, 0.758487,
		-0.811867, -0.579417, 0.071754,
		43.127563, 33.148834, 25.579054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928085, 32.909409, 25.717182>,  <43.695869, 33.554424, 25.528826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928085, 32.909409, 25.717182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.569118, 32.839550, 25.555122>,  <43.353741, 32.797634, 25.457888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.569118, 32.839550, 25.555122>,  <43.928085, 32.909409, 25.717182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.569118, 32.839550, 25.555122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413445, -0.653404, -0.634135,
		-0.153977, -0.736588, 0.658581,
		-0.897416, -0.174644, -0.405148,
		43.299892, 32.787155, 25.433578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903267, 32.161167, 25.655964>,  <43.928085, 32.909409, 25.717182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903267, 32.161167, 25.655964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.634647, 32.290989, 25.389524>,  <43.473476, 32.368881, 25.229660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.634647, 32.290989, 25.389524>,  <43.903267, 32.161167, 25.655964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634647, 32.290989, 25.389524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370971, -0.630916, -0.681414,
		-0.641419, -0.704700, 0.303281,
		-0.671538, 0.324564, -0.666105,
		43.433182, 32.388355, 25.189695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805122, 31.620552, 26.123896>,  <43.903267, 32.161167, 25.655964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805122, 31.620552, 26.123896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.103825, 31.493546, 26.357662>,  <44.283047, 31.417341, 26.497923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.103825, 31.493546, 26.357662>,  <43.805122, 31.620552, 26.123896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103825, 31.493546, 26.357662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206363, 0.724713, 0.657423,
		-0.632276, -0.611535, 0.475658,
		0.746753, -0.317515, 0.584418,
		44.327850, 31.398291, 26.532988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518559, 31.598532, 26.751286>,  <43.805122, 31.620552, 26.123896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518559, 31.598532, 26.751286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.902920, 31.537764, 26.843882>,  <44.133537, 31.501303, 26.899439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.902920, 31.537764, 26.843882>,  <43.518559, 31.598532, 26.751286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902920, 31.537764, 26.843882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127809, 0.498281, 0.857544,
		-0.245627, -0.853602, 0.459382,
		0.960902, -0.151923, 0.231489,
		44.191189, 31.492188, 26.913328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504147, 31.396429, 27.426668>,  <43.518559, 31.598532, 26.751286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.504147, 31.396429, 27.426668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.867985, 31.552395, 27.369249>,  <44.086288, 31.645973, 27.334797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.867985, 31.552395, 27.369249>,  <43.504147, 31.396429, 27.426668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867985, 31.552395, 27.369249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023863, 0.393938, 0.918827,
		0.414813, -0.832334, 0.367628,
		0.909594, 0.389914, -0.143548,
		44.140862, 31.669369, 27.326185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865070, 31.301228, 28.039680>,  <43.504147, 31.396429, 27.426668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865070, 31.301228, 28.039680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.062233, 31.596121, 27.854841>,  <44.180531, 31.773056, 27.743938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.062233, 31.596121, 27.854841>,  <43.865070, 31.301228, 28.039680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062233, 31.596121, 27.854841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128730, 0.463458, 0.876718,
		0.860507, -0.491625, 0.133537,
		0.492905, 0.737232, -0.462096,
		44.210106, 31.817291, 27.716213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439297, 31.406179, 28.521210>,  <43.865070, 31.301228, 28.039680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.439297, 31.406179, 28.521210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.402893, 31.736200, 28.298136>,  <44.381050, 31.934212, 28.164291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.402893, 31.736200, 28.298136>,  <44.439297, 31.406179, 28.521210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402893, 31.736200, 28.298136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047349, 0.562958, 0.825128,
		0.994724, 0.048686, -0.090298,
		-0.091007, 0.825050, -0.557683,
		44.375591, 31.983715, 28.130831>
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
