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
	<0.502270, 4.797581, 5.348417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.264406, 4.507942, 5.208668>,  <0.121688, 4.334159, 5.124818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.264406, 4.507942, 5.208668>,  <0.502270, 4.797581, 5.348417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.264406, 4.507942, 5.208668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612185, -0.126121, -0.780592,
		0.521162, -0.678068, 0.518280,
		-0.594660, -0.724098, -0.349373,
		0.086008, 4.290713, 5.103856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.943755, 4.163851, 5.230647>,  <0.502270, 4.797581, 5.348417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.943755, 4.163851, 5.230647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.640051, 4.178117, 4.970723>,  <0.457828, 4.186676, 4.814769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.640051, 4.178117, 4.970723>,  <0.943755, 4.163851, 5.230647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.640051, 4.178117, 4.970723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642034, -0.122174, -0.756880,
		-0.106383, -0.991868, 0.069864,
		-0.759260, 0.035664, -0.649810,
		0.412273, 4.188816, 4.775780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.915685, 3.581881, 4.615064>,  <0.943755, 4.163851, 5.230647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.915685, 3.581881, 4.615064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.733263, 3.913932, 4.486750>,  <0.623810, 4.113163, 4.409761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.733263, 3.913932, 4.486750>,  <0.915685, 3.581881, 4.615064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.733263, 3.913932, 4.486750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567930, -0.006043, -0.823054,
		-0.685178, -0.557542, -0.468699,
		-0.456055, 0.830127, -0.320785,
		0.596447, 4.162970, 4.390514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.658606, 3.600745, 3.836600>,  <0.915685, 3.581881, 4.615064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.658606, 3.600745, 3.836600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.775248, 3.957015, 3.976123>,  <0.845232, 4.170776, 4.059836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.775248, 3.957015, 3.976123>,  <0.658606, 3.600745, 3.836600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.775248, 3.957015, 3.976123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414393, 0.211028, -0.885294,
		-0.862117, 0.402698, -0.307553,
		0.291604, 0.890675, 0.348806,
		0.862729, 4.224217, 4.080765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.396834, 4.095455, 3.373291>,  <0.658606, 3.600745, 3.836600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.396834, 4.095455, 3.373291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.715969, 4.267907, 3.541854>,  <0.907450, 4.371378, 3.642991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.715969, 4.267907, 3.541854>,  <0.396834, 4.095455, 3.373291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.715969, 4.267907, 3.541854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331684, 0.269796, -0.903989,
		-0.503431, 0.861009, 0.072254,
		0.797837, 0.431131, 0.421406,
		0.955320, 4.397246, 3.668276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.535649, 4.719094, 2.964604>,  <0.396834, 4.095455, 3.373291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.535649, 4.719094, 2.964604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.876488, 4.678748, 3.170033>,  <1.080991, 4.654541, 3.293291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.876488, 4.678748, 3.170033>,  <0.535649, 4.719094, 2.964604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.876488, 4.678748, 3.170033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523049, 0.199216, -0.828694,
		-0.018727, 0.974751, 0.222508,
		0.852097, -0.100864, 0.513573,
		1.132117, 4.648489, 3.324105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.901956, 5.321105, 2.804257>,  <0.535649, 4.719094, 2.964604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.901956, 5.321105, 2.804257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.169424, 5.047250, 2.920291>,  <1.329905, 4.882936, 2.989911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.169424, 5.047250, 2.920291>,  <0.901956, 5.321105, 2.804257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.169424, 5.047250, 2.920291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662522, 0.371475, -0.650438,
		0.337556, 0.627117, 0.701983,
		0.668670, -0.684639, 0.290085,
		1.370025, 4.841858, 3.007317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.534110, 5.715631, 2.776399>,  <0.901956, 5.321105, 2.804257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.534110, 5.715631, 2.776399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.640303, 5.330910, 2.749699>,  <1.704018, 5.100077, 2.733679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.640303, 5.330910, 2.749699>,  <1.534110, 5.715631, 2.776399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.640303, 5.330910, 2.749699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660150, 0.231803, -0.714471,
		0.702653, 0.145614, 0.696473,
		0.265482, -0.961802, -0.066750,
		1.719947, 5.042369, 2.729674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.217536, 5.081997, 1.776765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.334938, 4.700790, 1.746796>,  <2.405380, 4.472066, 1.728815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.334938, 4.700790, 1.746796>,  <2.217536, 5.081997, 1.776765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.334938, 4.700790, 1.746796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371125, -0.185822, 0.909800,
		-0.880977, -0.239226, -0.408228,
		0.293505, -0.953017, -0.074923,
		2.422990, 4.414886, 1.724319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.604741, 4.594235, 1.976234>,  <2.217536, 5.081997, 1.776765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.604741, 4.594235, 1.976234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.988087, 4.497429, 2.036854>,  <2.218094, 4.439345, 2.073226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.988087, 4.497429, 2.036854>,  <1.604741, 4.594235, 1.976234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.988087, 4.497429, 2.036854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180980, -0.104280, 0.977943,
		-0.220876, -0.964652, -0.143739,
		0.958363, -0.242018, 0.151550,
		2.275596, 4.424825, 2.082319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.686974, 3.946832, 2.287417>,  <1.604741, 4.594235, 1.976234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.686974, 3.946832, 2.287417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.955605, 4.216782, 2.409748>,  <2.116783, 4.378752, 2.483146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.955605, 4.216782, 2.409748>,  <1.686974, 3.946832, 2.287417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.955605, 4.216782, 2.409748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357988, -0.065836, 0.931402,
		0.648714, -0.734990, 0.197383,
		0.671576, 0.674875, 0.305827,
		2.157077, 4.419244, 2.501496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.134026, 3.766224, 2.881102>,  <1.686974, 3.946832, 2.287417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.134026, 3.766224, 2.881102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.063972, 4.158062, 2.841666>,  <2.021940, 4.393165, 2.818004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.063972, 4.158062, 2.841666>,  <2.134026, 3.766224, 2.881102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.063972, 4.158062, 2.841666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406605, 0.019235, 0.913402,
		0.896661, 0.200055, 0.394939,
		-0.175134, 0.979596, -0.098591,
		2.011432, 4.451941, 2.812088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.340523, 4.145556, 3.381913>,  <2.134026, 3.766224, 2.881102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.340523, 4.145556, 3.381913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.026268, 4.371775, 3.281568>,  <1.837715, 4.507506, 3.221360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.026268, 4.371775, 3.281568>,  <2.340523, 4.145556, 3.381913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.026268, 4.371775, 3.281568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248668, 0.082637, 0.965057,
		0.566516, 0.820566, 0.075711,
		-0.785636, 0.565547, -0.250864,
		1.790577, 4.541439, 3.206309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.229708, 4.575931, 4.013855>,  <2.340523, 4.145556, 3.381913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.229708, 4.575931, 4.013855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.888500, 4.605064, 3.807146>,  <1.683776, 4.622545, 3.683121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.888500, 4.605064, 3.807146>,  <2.229708, 4.575931, 4.013855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.888500, 4.605064, 3.807146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521677, -0.091440, 0.848228,
		0.014527, 0.993143, 0.115996,
		-0.853019, 0.072835, -0.516772,
		1.632594, 4.626915, 3.652114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.784224, 5.109299, 4.344659>,  <2.229708, 4.575931, 4.013855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.784224, 5.109299, 4.344659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.537632, 4.886335, 4.122219>,  <1.389677, 4.752557, 3.988755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.537632, 4.886335, 4.122219>,  <1.784224, 5.109299, 4.344659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.537632, 4.886335, 4.122219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591651, -0.138068, 0.794284,
		-0.519521, 0.818677, -0.244675,
		-0.616480, -0.557409, -0.556100,
		1.352688, 4.719112, 3.955389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.129928, 5.428164, 4.323443>,  <1.784224, 5.109299, 4.344659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.129928, 5.428164, 4.323443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.062344, 5.037745, 4.268624>,  <1.021793, 4.803493, 4.235733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.062344, 5.037745, 4.268624>,  <1.129928, 5.428164, 4.323443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.062344, 5.037745, 4.268624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599966, -0.008466, 0.799980,
		-0.781980, 0.217389, -0.584165,
		-0.168961, -0.976048, -0.137047,
		1.011655, 4.744930, 4.227510>
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
