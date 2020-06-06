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
	<24.536139, 35.443581, 35.053791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.192633, 35.261539, 34.959637>,  <23.986528, 35.152317, 34.903145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.192633, 35.261539, 34.959637>,  <24.536139, 35.443581, 35.053791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.192633, 35.261539, 34.959637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510184, -0.801917, -0.310871,
		-0.047284, -0.387056, 0.920843,
		-0.858764, -0.455100, -0.235387,
		23.935003, 35.125008, 34.889019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.448774, 34.784985, 35.341991>,  <24.536139, 35.443581, 35.053791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.448774, 34.784985, 35.341991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.274511, 34.834740, 34.985401>,  <24.169952, 34.864594, 34.771446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.274511, 34.834740, 34.985401>,  <24.448774, 34.784985, 35.341991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.274511, 34.834740, 34.985401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638777, -0.655055, -0.403567,
		-0.634164, -0.745272, 0.205925,
		-0.435660, 0.124388, -0.891476,
		24.143814, 34.872055, 34.717960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.065758, 34.141647, 35.113503>,  <24.448774, 34.784985, 35.341991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.065758, 34.141647, 35.113503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.226923, 34.343231, 34.807907>,  <24.323622, 34.464180, 34.624550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.226923, 34.343231, 34.807907>,  <24.065758, 34.141647, 35.113503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.226923, 34.343231, 34.807907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522149, -0.812144, -0.260353,
		-0.751678, -0.294017, -0.590368,
		0.402915, 0.503961, -0.763991,
		24.347797, 34.494419, 34.578709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.938887, 33.919674, 34.302868>,  <24.065758, 34.141647, 35.113503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.938887, 33.919674, 34.302868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.294231, 34.103115, 34.311802>,  <24.507439, 34.213181, 34.317162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.294231, 34.103115, 34.311802>,  <23.938887, 33.919674, 34.302868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.294231, 34.103115, 34.311802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436826, -0.829200, -0.348726,
		-0.141403, 0.319552, -0.936959,
		0.888362, 0.458599, 0.022337,
		24.560740, 34.240696, 34.318504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.269653, 33.627525, 33.732704>,  <23.938887, 33.919674, 34.302868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.269653, 33.627525, 33.732704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.513578, 33.744602, 34.027313>,  <24.659933, 33.814850, 34.204079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.513578, 33.744602, 34.027313>,  <24.269653, 33.627525, 33.732704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.513578, 33.744602, 34.027313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561727, -0.815196, -0.141132,
		0.559098, 0.499786, -0.661531,
		0.609813, 0.292693, 0.736518,
		24.696522, 33.832409, 34.248268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.924307, 33.463638, 33.473713>,  <24.269653, 33.627525, 33.732704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.924307, 33.463638, 33.473713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.961557, 33.509533, 33.869320>,  <24.983908, 33.537071, 34.106686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.961557, 33.509533, 33.869320>,  <24.924307, 33.463638, 33.473713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.961557, 33.509533, 33.869320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522161, -0.851403, 0.049604,
		0.847747, 0.511808, -0.139201,
		0.093129, 0.114737, 0.989021,
		24.989496, 33.543953, 34.166027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623226, 33.320469, 33.614059>,  <24.924307, 33.463638, 33.473713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.623226, 33.320469, 33.614059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384874, 33.254139, 33.928368>,  <25.241863, 33.214340, 34.116951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384874, 33.254139, 33.928368>,  <25.623226, 33.320469, 33.614059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.384874, 33.254139, 33.928368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437147, -0.887761, 0.144161,
		0.673668, 0.429398, 0.601489,
		-0.595881, -0.165822, 0.785766,
		25.206110, 33.204391, 34.164097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.091898, 32.992428, 34.079777>,  <25.623226, 33.320469, 33.614059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.091898, 32.992428, 34.079777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726910, 32.894093, 34.210594>,  <25.507915, 32.835091, 34.289085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726910, 32.894093, 34.210594>,  <26.091898, 32.992428, 34.079777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726910, 32.894093, 34.210594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321294, -0.925450, 0.200780,
		0.253307, 0.288285, 0.923433,
		-0.912472, -0.245835, 0.327047,
		25.453169, 32.820343, 34.308708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353935, 32.559303, 34.634212>,  <26.091898, 32.992428, 34.079777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353935, 32.559303, 34.634212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.968077, 32.475784, 34.569889>,  <25.736561, 32.425671, 34.531296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.968077, 32.475784, 34.569889>,  <26.353935, 32.559303, 34.634212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.968077, 32.475784, 34.569889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172704, -0.961724, 0.212745,
		-0.199077, 0.177452, 0.963784,
		-0.964646, -0.208802, -0.160811,
		25.678682, 32.413143, 34.521645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192244, 32.078556, 35.068218>,  <26.353935, 32.559303, 34.634212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192244, 32.078556, 35.068218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869036, 31.997763, 34.846840>,  <25.675110, 31.949287, 34.714012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869036, 31.997763, 34.846840>,  <26.192244, 32.078556, 35.068218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.869036, 31.997763, 34.846840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192974, -0.978310, 0.075299,
		-0.556654, -0.045958, 0.829472,
		-0.808021, -0.201982, -0.553449,
		25.626629, 31.937168, 34.680805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065090, 31.395302, 35.230473>,  <26.192244, 32.078556, 35.068218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065090, 31.395302, 35.230473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851851, 31.437628, 34.894711>,  <25.723907, 31.463024, 34.693253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851851, 31.437628, 34.894711>,  <26.065090, 31.395302, 35.230473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851851, 31.437628, 34.894711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069742, -0.983275, -0.168244,
		-0.843173, -0.148233, 0.516804,
		-0.533100, 0.105816, -0.839409,
		25.691921, 31.469372, 34.642887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.519299, 30.878750, 35.271435>,  <26.065090, 31.395302, 35.230473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.519299, 30.878750, 35.271435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638578, 30.964018, 34.899277>,  <25.710146, 31.015179, 34.675983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638578, 30.964018, 34.899277>,  <25.519299, 30.878750, 35.271435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.638578, 30.964018, 34.899277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107704, -0.976032, -0.189107,
		-0.948407, -0.043815, -0.314014,
		0.298202, 0.213171, -0.930395,
		25.728039, 31.027969, 34.620159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.157675, 30.365973, 34.850563>,  <25.519299, 30.878750, 35.271435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.157675, 30.365973, 34.850563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456419, 30.501444, 34.621655>,  <25.635666, 30.582727, 34.484310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456419, 30.501444, 34.621655>,  <25.157675, 30.365973, 34.850563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.456419, 30.501444, 34.621655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146933, -0.923362, -0.354703,
		-0.648543, 0.180829, -0.739387,
		0.746862, 0.338680, -0.572270,
		25.680477, 30.603048, 34.449974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.008362, 30.070705, 34.139366>,  <25.157675, 30.365973, 34.850563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.008362, 30.070705, 34.139366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398214, 30.149628, 34.181637>,  <25.632126, 30.196981, 34.207001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398214, 30.149628, 34.181637>,  <25.008362, 30.070705, 34.139366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.398214, 30.149628, 34.181637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222475, -0.905748, -0.360730,
		0.024546, 0.375089, -0.926664,
		0.974629, 0.197305, 0.105681,
		25.690603, 30.208818, 34.213341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307272, 29.747395, 33.599472>,  <25.008362, 30.070705, 34.139366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.307272, 29.747395, 33.599472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646420, 29.829105, 33.795181>,  <25.849909, 29.878132, 33.912605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646420, 29.829105, 33.795181>,  <25.307272, 29.747395, 33.599472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646420, 29.829105, 33.795181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434461, -0.796620, -0.420286,
		0.303910, 0.568917, -0.764180,
		0.847869, 0.204278, 0.489273,
		25.900780, 29.890388, 33.941963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863869, 29.714455, 33.134010>,  <25.307272, 29.747395, 33.599472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863869, 29.714455, 33.134010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012220, 29.665552, 33.502251>,  <26.101231, 29.636211, 33.723194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012220, 29.665552, 33.502251>,  <25.863869, 29.714455, 33.134010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012220, 29.665552, 33.502251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559224, -0.762019, -0.326488,
		0.741429, 0.635909, -0.214249,
		0.370878, -0.122255, 0.920599,
		26.123484, 29.628876, 33.778431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557402, 29.672022, 33.047569>,  <25.863869, 29.714455, 33.134010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557402, 29.672022, 33.047569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484892, 29.500002, 33.401337>,  <26.441387, 29.396790, 33.613598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484892, 29.500002, 33.401337>,  <26.557402, 29.672022, 33.047569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484892, 29.500002, 33.401337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494977, -0.817000, -0.295818,
		0.849787, 0.384143, 0.360966,
		-0.181273, -0.430052, 0.884418,
		26.430510, 29.370987, 33.666660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.115961, 29.404615, 33.188431>,  <26.557402, 29.672022, 33.047569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.115961, 29.404615, 33.188431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.912241, 29.186882, 33.455059>,  <26.790009, 29.056242, 33.615036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.912241, 29.186882, 33.455059>,  <27.115961, 29.404615, 33.188431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912241, 29.186882, 33.455059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390654, -0.836380, -0.384523,
		0.766814, 0.064561, 0.638614,
		-0.509299, -0.544334, 0.666569,
		26.759451, 29.023582, 33.655029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574360, 28.953238, 33.504829>,  <27.115961, 29.404615, 33.188431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574360, 28.953238, 33.504829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219364, 28.775442, 33.553474>,  <27.006367, 28.668764, 33.582661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219364, 28.775442, 33.553474>,  <27.574360, 28.953238, 33.504829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219364, 28.775442, 33.553474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401888, -0.875678, -0.267718,
		0.225491, -0.188723, 0.955791,
		-0.887491, -0.444490, 0.121612,
		26.953117, 28.642096, 33.589958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713699, 28.383661, 33.935432>,  <27.574360, 28.953238, 33.504829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713699, 28.383661, 33.935432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372072, 28.300451, 33.744732>,  <27.167095, 28.250525, 33.630310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372072, 28.300451, 33.744732>,  <27.713699, 28.383661, 33.935432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372072, 28.300451, 33.744732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308314, -0.940645, -0.141882,
		-0.418939, -0.268166, 0.867512,
		-0.854068, -0.208026, -0.476752,
		27.115852, 28.238043, 33.601707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511553, 27.704807, 34.180714>,  <27.713699, 28.383661, 33.935432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.511553, 27.704807, 34.180714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359100, 27.764044, 33.815681>,  <27.267630, 27.799585, 33.596661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359100, 27.764044, 33.815681>,  <27.511553, 27.704807, 34.180714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359100, 27.764044, 33.815681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254208, -0.932255, -0.257448,
		-0.888886, -0.330108, 0.317665,
		-0.381130, 0.148089, -0.912584,
		27.244762, 27.808472, 33.541904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089222, 27.172070, 34.073467>,  <27.511553, 27.704807, 34.180714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089222, 27.172070, 34.073467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124424, 27.301807, 33.696732>,  <27.145546, 27.379650, 33.470692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124424, 27.301807, 33.696732>,  <27.089222, 27.172070, 34.073467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124424, 27.301807, 33.696732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199210, -0.932135, -0.302388,
		-0.975997, -0.161012, -0.146647,
		0.088006, 0.324343, -0.941837,
		27.150826, 27.399111, 33.414181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796095, 26.567083, 33.694427>,  <27.089222, 27.172070, 34.073467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796095, 26.567083, 33.694427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985237, 26.795294, 33.425831>,  <27.098722, 26.932220, 33.264671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985237, 26.795294, 33.425831>,  <26.796095, 26.567083, 33.694427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985237, 26.795294, 33.425831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329632, -0.821278, -0.465667,
		-0.817160, -0.001153, -0.576409,
		0.472855, 0.570527, -0.671496,
		27.127094, 26.966452, 33.224380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.392679, 26.439472, 33.036800>,  <26.796095, 26.567083, 33.694427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.392679, 26.439472, 33.036800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751244, 26.583158, 32.932941>,  <26.966381, 26.669371, 32.870628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751244, 26.583158, 32.932941>,  <26.392679, 26.439472, 33.036800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.751244, 26.583158, 32.932941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131642, -0.775145, -0.617916,
		-0.423227, 0.519725, -0.742135,
		0.896409, 0.359215, -0.259645,
		27.020166, 26.690924, 32.855049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439800, 26.408047, 32.231319>,  <26.392679, 26.439472, 33.036800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439800, 26.408047, 32.231319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807922, 26.406305, 32.387791>,  <27.028795, 26.405260, 32.481674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807922, 26.406305, 32.387791>,  <26.439800, 26.408047, 32.231319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807922, 26.406305, 32.387791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233611, -0.795951, -0.558470,
		0.313790, 0.605346, -0.731500,
		0.920305, -0.004356, 0.391177,
		27.084015, 26.404999, 32.505142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993155, 26.329834, 31.697233>,  <26.439800, 26.408047, 32.231319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.993155, 26.329834, 31.697233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172234, 26.205570, 32.032627>,  <27.279680, 26.131012, 32.233864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172234, 26.205570, 32.032627>,  <26.993155, 26.329834, 31.697233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172234, 26.205570, 32.032627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512612, -0.679158, -0.525332,
		0.732664, 0.665006, -0.144809,
		0.447697, -0.310661, 0.838485,
		27.306543, 26.112371, 32.284172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542601, 25.883165, 31.380629>,  <26.993155, 26.329834, 31.697233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542601, 25.883165, 31.380629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896914, 25.853907, 31.563948>,  <28.109501, 25.836351, 31.673939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896914, 25.853907, 31.563948>,  <27.542601, 25.883165, 31.380629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896914, 25.853907, 31.563948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165360, -0.872949, -0.458929,
		0.433641, 0.482296, -0.761148,
		0.885783, -0.073148, 0.458299,
		28.162649, 25.831963, 31.701437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873592, 26.306498, 30.828785>,  <27.542601, 25.883165, 31.380629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873592, 26.306498, 30.828785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195215, 26.540861, 30.869181>,  <28.388189, 26.681479, 30.893417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195215, 26.540861, 30.869181>,  <27.873592, 26.306498, 30.828785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195215, 26.540861, 30.869181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585895, 0.809717, -0.032934,
		-0.101068, -0.032688, 0.994342,
		0.804059, 0.585909, 0.100988,
		28.436434, 26.716635, 30.899477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.060860, 26.761816, 31.471134>,  <27.873592, 26.306498, 30.828785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.060860, 26.761816, 31.471134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162645, 26.925730, 31.120747>,  <28.223717, 27.024078, 30.910513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162645, 26.925730, 31.120747>,  <28.060860, 26.761816, 31.471134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162645, 26.925730, 31.120747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700282, 0.702777, 0.125339,
		0.666974, 0.581532, 0.465796,
		0.254463, 0.409786, -0.875970,
		28.238985, 27.048666, 30.857956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190300, 27.504755, 31.555248>,  <28.060860, 26.761816, 31.471134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190300, 27.504755, 31.555248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034861, 27.444134, 31.191706>,  <27.941597, 27.407761, 30.973579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034861, 27.444134, 31.191706>,  <28.190300, 27.504755, 31.555248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034861, 27.444134, 31.191706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844475, 0.453153, 0.285508,
		0.368582, 0.878456, -0.304077,
		-0.388600, -0.151552, -0.908858,
		27.918282, 27.398668, 30.919048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803009, 27.586166, 31.313845>,  <28.190300, 27.504755, 31.555248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803009, 27.586166, 31.313845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061731, 27.293859, 31.401131>,  <29.216965, 27.118475, 31.453503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061731, 27.293859, 31.401131>,  <28.803009, 27.586166, 31.313845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061731, 27.293859, 31.401131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494528, -0.184054, 0.849450,
		-0.580588, -0.657344, -0.480433,
		0.646806, -0.730769, 0.218215,
		29.255774, 27.074629, 31.466595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866934, 28.065485, 30.692486>,  <28.803009, 27.586166, 31.313845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866934, 28.065485, 30.692486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700954, 28.087181, 30.329195>,  <28.601366, 28.100199, 30.111221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700954, 28.087181, 30.329195>,  <28.866934, 28.065485, 30.692486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700954, 28.087181, 30.329195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719157, 0.631031, -0.290883,
		0.557342, -0.773859, -0.300853,
		-0.414950, 0.054239, -0.908226,
		28.576469, 28.103453, 30.056726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315702, 27.762642, 30.160469>,  <28.866934, 28.065485, 30.692486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315702, 27.762642, 30.160469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075550, 28.055149, 30.030983>,  <28.931459, 28.230654, 29.953291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075550, 28.055149, 30.030983>,  <29.315702, 27.762642, 30.160469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075550, 28.055149, 30.030983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797643, 0.576689, -0.176624,
		0.057524, -0.364251, -0.929523,
		-0.600381, 0.731267, -0.323716,
		28.895435, 28.274529, 29.933868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487137, 27.919689, 29.399275>,  <29.315702, 27.762642, 30.160469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487137, 27.919689, 29.399275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382441, 28.202133, 29.662457>,  <29.319622, 28.371599, 29.820366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382441, 28.202133, 29.662457>,  <29.487137, 27.919689, 29.399275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382441, 28.202133, 29.662457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808550, 0.532674, -0.250010,
		-0.527009, 0.466550, -0.710347,
		-0.261741, 0.706109, 0.657953,
		29.303919, 28.413965, 29.859842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674936, 28.600092, 29.291439>,  <29.487137, 27.919689, 29.399275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674936, 28.600092, 29.291439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412374, 28.851223, 29.124125>,  <29.254837, 29.001902, 29.023737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412374, 28.851223, 29.124125>,  <29.674936, 28.600092, 29.291439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412374, 28.851223, 29.124125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148022, 0.650859, 0.744628,
		0.739744, 0.426863, -0.520161,
		-0.656406, 0.627829, -0.418284,
		29.215452, 29.039572, 28.998640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996548, 29.322510, 29.182007>,  <29.674936, 28.600092, 29.291439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996548, 29.322510, 29.182007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602524, 29.300726, 29.247353>,  <29.366110, 29.287655, 29.286560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602524, 29.300726, 29.247353>,  <29.996548, 29.322510, 29.182007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602524, 29.300726, 29.247353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099627, 0.593565, 0.798596,
		-0.140460, 0.802941, -0.579272,
		-0.985061, -0.054460, 0.163367,
		29.307005, 29.284388, 29.296362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716650, 30.053694, 29.181658>,  <29.996548, 29.322510, 29.182007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716650, 30.053694, 29.181658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457457, 29.837206, 29.396021>,  <29.301941, 29.707314, 29.524639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457457, 29.837206, 29.396021>,  <29.716650, 30.053694, 29.181658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457457, 29.837206, 29.396021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212143, 0.547516, 0.809458,
		-0.731512, 0.638205, -0.239966,
		-0.647985, -0.541221, 0.535906,
		29.263062, 29.674839, 29.556793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094864, 30.483736, 29.396093>,  <29.716650, 30.053694, 29.181658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094864, 30.483736, 29.396093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074066, 30.176519, 29.651407>,  <29.061588, 29.992189, 29.804596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074066, 30.176519, 29.651407>,  <29.094864, 30.483736, 29.396093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074066, 30.176519, 29.651407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262329, 0.627209, 0.733343,
		-0.963577, -0.129313, -0.234089,
		-0.051992, -0.768041, 0.638286,
		29.058468, 29.946108, 29.842894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505257, 30.640644, 29.848688>,  <29.094864, 30.483736, 29.396093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505257, 30.640644, 29.848688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688889, 30.355923, 30.061321>,  <28.799068, 30.185089, 30.188900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688889, 30.355923, 30.061321>,  <28.505257, 30.640644, 29.848688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688889, 30.355923, 30.061321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369551, 0.391128, 0.842882,
		-0.807883, -0.583399, -0.083489,
		0.459082, -0.711804, 0.531581,
		28.826612, 30.142382, 30.220797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017210, 30.378096, 30.341940>,  <28.505257, 30.640644, 29.848688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017210, 30.378096, 30.341940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359943, 30.258718, 30.510115>,  <28.565584, 30.187092, 30.611019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359943, 30.258718, 30.510115>,  <28.017210, 30.378096, 30.341940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359943, 30.258718, 30.510115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328981, 0.311424, 0.891508,
		-0.396997, -0.902191, 0.168658,
		0.856834, -0.298440, 0.420438,
		28.616993, 30.169186, 30.636246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847969, 30.090572, 31.042299>,  <28.017210, 30.378096, 30.341940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847969, 30.090572, 31.042299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244015, 30.146626, 31.044865>,  <28.481642, 30.180258, 31.046404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244015, 30.146626, 31.044865>,  <27.847969, 30.090572, 31.042299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244015, 30.146626, 31.044865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060954, 0.388598, 0.919389,
		0.126343, -0.910689, 0.393297,
		0.990112, 0.140132, 0.006413,
		28.541048, 30.188665, 31.046789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070564, 29.789215, 31.655912>,  <27.847969, 30.090572, 31.042299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070564, 29.789215, 31.655912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328552, 30.075954, 31.549978>,  <28.483345, 30.247999, 31.486418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328552, 30.075954, 31.549978>,  <28.070564, 29.789215, 31.655912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328552, 30.075954, 31.549978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271548, 0.538911, 0.797394,
		0.714334, -0.442381, 0.542242,
		0.644972, 0.716850, -0.264834,
		28.522043, 30.291010, 31.470528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531748, 29.945553, 32.182735>,  <28.070564, 29.789215, 31.655912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531748, 29.945553, 32.182735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607233, 30.271864, 31.964050>,  <28.652523, 30.467651, 31.832840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607233, 30.271864, 31.964050>,  <28.531748, 29.945553, 32.182735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607233, 30.271864, 31.964050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037065, 0.562232, 0.826148,
		0.981333, -0.135640, 0.136336,
		0.188711, 0.815780, -0.546710,
		28.663847, 30.516598, 31.800037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938644, 30.399460, 32.564270>,  <28.531748, 29.945553, 32.182735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938644, 30.399460, 32.564270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.787226, 30.639591, 32.282475>,  <28.696375, 30.783670, 32.113396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.787226, 30.639591, 32.282475>,  <28.938644, 30.399460, 32.564270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787226, 30.639591, 32.282475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263233, 0.659877, 0.703755,
		0.887362, 0.451848, -0.091767,
		-0.378545, 0.600329, -0.704492,
		28.673662, 30.819691, 32.071129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282593, 31.040779, 32.661060>,  <28.938644, 30.399460, 32.564270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282593, 31.040779, 32.661060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924013, 31.102982, 32.495075>,  <28.708866, 31.140303, 32.395485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924013, 31.102982, 32.495075>,  <29.282593, 31.040779, 32.661060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924013, 31.102982, 32.495075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130692, 0.801983, 0.582874,
		0.423436, 0.576750, -0.698614,
		-0.896450, 0.155507, -0.414965,
		28.655079, 31.149633, 32.370586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224733, 31.774323, 32.329723>,  <29.282593, 31.040779, 32.661060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224733, 31.774323, 32.329723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847172, 31.656918, 32.390255>,  <28.620636, 31.586475, 32.426575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847172, 31.656918, 32.390255>,  <29.224733, 31.774323, 32.329723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847172, 31.656918, 32.390255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112714, 0.717095, 0.687801,
		-0.310395, 0.632159, -0.709951,
		-0.943902, -0.293511, 0.151330,
		28.564001, 31.568865, 32.435654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785238, 32.331253, 32.206856>,  <29.224733, 31.774323, 32.329723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785238, 32.331253, 32.206856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552427, 32.093494, 32.428825>,  <28.412741, 31.950840, 32.562008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552427, 32.093494, 32.428825>,  <28.785238, 32.331253, 32.206856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552427, 32.093494, 32.428825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261171, 0.782907, 0.564665,
		-0.770086, 0.183722, -0.610913,
		-0.582029, -0.594393, 0.554922,
		28.377819, 31.915176, 32.595303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215248, 32.796509, 32.380432>,  <28.785238, 32.331253, 32.206856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215248, 32.796509, 32.380432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182791, 32.499710, 32.646622>,  <28.163317, 32.321632, 32.806335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182791, 32.499710, 32.646622>,  <28.215248, 32.796509, 32.380432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182791, 32.499710, 32.646622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382181, 0.639808, 0.666771,
		-0.920518, -0.200228, -0.335493,
		-0.081145, -0.741994, 0.665478,
		28.158447, 32.277111, 32.846264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568235, 32.835354, 32.755047>,  <28.215248, 32.796509, 32.380432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568235, 32.835354, 32.755047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782272, 32.615383, 33.011566>,  <27.910694, 32.483402, 33.165478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782272, 32.615383, 33.011566>,  <27.568235, 32.835354, 32.755047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782272, 32.615383, 33.011566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373520, 0.526875, 0.763469,
		-0.757732, -0.648064, 0.076520,
		0.535093, -0.549924, 0.641295,
		27.942801, 32.450405, 33.203953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155039, 32.776333, 33.365562>,  <27.568235, 32.835354, 32.755047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155039, 32.776333, 33.365562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496965, 32.640255, 33.522308>,  <27.702122, 32.558609, 33.616356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496965, 32.640255, 33.522308>,  <27.155039, 32.776333, 33.365562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496965, 32.640255, 33.522308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277630, 0.338165, 0.899203,
		-0.438420, -0.877446, 0.194620,
		0.854815, -0.340196, 0.391863,
		27.753410, 32.538197, 33.639866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043264, 32.307327, 33.954540>,  <27.155039, 32.776333, 33.365562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043264, 32.307327, 33.954540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405230, 32.467720, 34.011597>,  <27.622408, 32.563957, 34.045830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405230, 32.467720, 34.011597>,  <27.043264, 32.307327, 33.954540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405230, 32.467720, 34.011597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317142, 0.411809, 0.854303,
		0.283819, -0.818308, 0.499820,
		0.904913, 0.400981, 0.142641,
		27.676702, 32.588017, 34.054390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224964, 32.122807, 34.650013>,  <27.043264, 32.307327, 33.954540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.224964, 32.122807, 34.650013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418829, 32.450600, 34.527668>,  <27.535149, 32.647274, 34.454262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418829, 32.450600, 34.527668>,  <27.224964, 32.122807, 34.650013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418829, 32.450600, 34.527668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318766, 0.491102, 0.810683,
		0.814550, -0.295409, 0.499241,
		0.484661, 0.819483, -0.305861,
		27.564228, 32.696445, 34.435909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308491, 32.603046, 35.279114>,  <27.224964, 32.122807, 34.650013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308491, 32.603046, 35.279114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416086, 32.885094, 35.016678>,  <27.480644, 33.054321, 34.859215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416086, 32.885094, 35.016678>,  <27.308491, 32.603046, 35.279114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416086, 32.885094, 35.016678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298202, 0.708696, 0.639395,
		0.915817, 0.023658, 0.400897,
		0.268987, 0.705118, -0.656091,
		27.496782, 33.096630, 34.819851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578316, 33.179283, 35.681339>,  <27.308491, 32.603046, 35.279114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578316, 33.179283, 35.681339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523081, 33.347401, 35.322613>,  <27.489941, 33.448273, 35.107376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523081, 33.347401, 35.322613>,  <27.578316, 33.179283, 35.681339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523081, 33.347401, 35.322613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228843, 0.867452, 0.441767,
		0.963620, 0.266233, -0.023601,
		-0.138086, 0.420294, -0.896820,
		27.481655, 33.473488, 35.053566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048710, 33.673149, 35.687916>,  <27.578316, 33.179283, 35.681339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048710, 33.673149, 35.687916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765413, 33.781616, 35.427193>,  <27.595434, 33.846699, 35.270760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765413, 33.781616, 35.427193>,  <28.048710, 33.673149, 35.687916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765413, 33.781616, 35.427193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067977, 0.892801, 0.445292,
		0.702688, 0.359683, -0.613887,
		-0.708243, 0.271171, -0.651811,
		27.552940, 33.862968, 35.231647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296328, 34.244774, 35.389950>,  <28.048710, 33.673149, 35.687916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296328, 34.244774, 35.389950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898237, 34.257336, 35.352982>,  <27.659384, 34.264874, 35.330799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898237, 34.257336, 35.352982>,  <28.296328, 34.244774, 35.389950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898237, 34.257336, 35.352982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017460, 0.874287, 0.485095,
		0.096037, 0.484393, -0.869564,
		-0.995225, 0.031404, -0.092421,
		27.599670, 34.266758, 35.325256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041164, 34.680817, 34.861889>,  <28.296328, 34.244774, 35.389950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041164, 34.680817, 34.861889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832497, 34.645409, 35.201305>,  <27.707296, 34.624165, 35.404957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832497, 34.645409, 35.201305>,  <28.041164, 34.680817, 34.861889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832497, 34.645409, 35.201305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241724, 0.938510, 0.246513,
		-0.818189, 0.333711, -0.468192,
		-0.521667, -0.088521, 0.848544,
		27.675997, 34.618851, 35.455868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769966, 35.426849, 35.057400>,  <28.041164, 34.680817, 34.861889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769966, 35.426849, 35.057400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714245, 35.225807, 35.398689>,  <27.680811, 35.105183, 35.603462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714245, 35.225807, 35.398689>,  <27.769966, 35.426849, 35.057400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714245, 35.225807, 35.398689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189897, 0.832071, 0.521149,
		-0.971871, 0.234623, -0.020469,
		-0.139305, -0.502603, 0.853220,
		27.672453, 35.075027, 35.654655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221792, 35.227425, 35.668701>,  <27.769966, 35.426849, 35.057400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221792, 35.227425, 35.668701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434498, 35.552109, 35.572079>,  <28.562120, 35.746922, 35.514107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434498, 35.552109, 35.572079>,  <28.221792, 35.227425, 35.668701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434498, 35.552109, 35.572079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807662, -0.400259, 0.432983,
		0.254774, -0.425338, -0.868434,
		0.531763, 0.811714, -0.241554,
		28.594027, 35.795624, 35.499611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850990, 34.855629, 35.454067>,  <28.221792, 35.227425, 35.668701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850990, 34.855629, 35.454067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945082, 35.231110, 35.554871>,  <29.001537, 35.456398, 35.615353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945082, 35.231110, 35.554871>,  <28.850990, 34.855629, 35.454067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.945082, 35.231110, 35.554871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934853, -0.289457, 0.205581,
		0.265925, 0.187235, -0.945636,
		0.235229, 0.938700, 0.252011,
		29.015650, 35.512718, 35.630474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486526, 35.133678, 35.087925>,  <28.850990, 34.855629, 35.454067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486526, 35.133678, 35.087925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435692, 35.320992, 35.437683>,  <29.405191, 35.433380, 35.647537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435692, 35.320992, 35.437683>,  <29.486526, 35.133678, 35.087925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435692, 35.320992, 35.437683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969141, -0.129101, 0.209997,
		0.211222, 0.874096, -0.437425,
		-0.127085, 0.468283, 0.874392,
		29.397566, 35.461475, 35.700001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887848, 35.838398, 35.253979>,  <29.486526, 35.133678, 35.087925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887848, 35.838398, 35.253979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814096, 35.585270, 35.554790>,  <29.769846, 35.433392, 35.735275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814096, 35.585270, 35.554790>,  <29.887848, 35.838398, 35.253979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814096, 35.585270, 35.554790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980106, -0.175579, 0.092549,
		0.073472, 0.754128, 0.652605,
		-0.184377, -0.632821, 0.752025,
		29.758783, 35.395424, 35.780399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447123, 35.975021, 35.622791>,  <29.887848, 35.838398, 35.253979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447123, 35.975021, 35.622791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303680, 35.620579, 35.740242>,  <30.217615, 35.407913, 35.810711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303680, 35.620579, 35.740242>,  <30.447123, 35.975021, 35.622791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303680, 35.620579, 35.740242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928716, -0.306893, 0.208094,
		-0.094283, 0.347317, 0.932996,
		-0.358604, -0.886108, 0.293624,
		30.196098, 35.354748, 35.828331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194855, 36.083805, 35.357872>,  <30.447123, 35.975021, 35.622791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194855, 36.083805, 35.357872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957863, 35.761864, 35.344124>,  <30.815668, 35.568699, 35.335876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957863, 35.761864, 35.344124>,  <31.194855, 36.083805, 35.357872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957863, 35.761864, 35.344124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800020, -0.592858, 0.092124,
		-0.094522, 0.027087, 0.995154,
		-0.592480, -0.804851, -0.034368,
		30.780119, 35.520409, 35.333813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597857, 36.110718, 35.999191>,  <31.194855, 36.083805, 35.357872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597857, 36.110718, 35.999191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548519, 35.727600, 35.895336>,  <31.518917, 35.497730, 35.833023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548519, 35.727600, 35.895336>,  <31.597857, 36.110718, 35.999191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548519, 35.727600, 35.895336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964437, 0.177331, -0.195995,
		0.233766, 0.226232, -0.945607,
		-0.123345, -0.957796, -0.259640,
		31.511515, 35.440262, 35.817444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951458, 36.775612, 35.794388>,  <31.597857, 36.110718, 35.999191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951458, 36.775612, 35.794388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305962, 36.877659, 35.639748>,  <32.518665, 36.938885, 35.546963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305962, 36.877659, 35.639748>,  <31.951458, 36.775612, 35.794388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305962, 36.877659, 35.639748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452472, -0.298308, 0.840405,
		0.099073, -0.919744, -0.379810,
		0.886258, 0.255116, -0.386604,
		32.571838, 36.954193, 35.523766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426517, 36.152679, 35.910130>,  <31.951458, 36.775612, 35.794388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426517, 36.152679, 35.910130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657986, 36.471581, 35.841408>,  <32.796867, 36.662922, 35.800175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657986, 36.471581, 35.841408>,  <32.426517, 36.152679, 35.910130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657986, 36.471581, 35.841408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531894, -0.209238, 0.820554,
		0.618244, -0.566216, -0.545137,
		0.578674, 0.797257, -0.171807,
		32.831589, 36.710758, 35.789867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067520, 36.027813, 36.167839>,  <32.426517, 36.152679, 35.910130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067520, 36.027813, 36.167839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142849, 36.417973, 36.122002>,  <33.188046, 36.652069, 36.094501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142849, 36.417973, 36.122002>,  <33.067520, 36.027813, 36.167839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142849, 36.417973, 36.122002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702457, -0.052234, 0.709806,
		0.686360, -0.214164, -0.695014,
		0.188319, 0.975400, -0.114590,
		33.199345, 36.710594, 36.087624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760437, 36.057938, 36.214844>,  <33.067520, 36.027813, 36.167839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760437, 36.057938, 36.214844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655502, 36.439434, 36.273575>,  <33.592541, 36.668331, 36.308815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655502, 36.439434, 36.273575>,  <33.760437, 36.057938, 36.214844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655502, 36.439434, 36.273575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696046, 0.081637, 0.713341,
		0.668355, 0.289336, -0.685264,
		-0.262338, 0.953740, 0.146828,
		33.576801, 36.725555, 36.317623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410721, 36.382900, 36.311363>,  <33.760437, 36.057938, 36.214844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410721, 36.382900, 36.311363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117252, 36.608330, 36.463207>,  <33.941170, 36.743587, 36.554314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117252, 36.608330, 36.463207>,  <34.410721, 36.382900, 36.311363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117252, 36.608330, 36.463207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521821, 0.109471, 0.846002,
		0.435227, 0.818781, -0.374400,
		-0.733676, 0.563573, 0.379612,
		33.897148, 36.777401, 36.577091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716728, 36.922283, 36.546654>,  <34.410721, 36.382900, 36.311363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716728, 36.922283, 36.546654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364498, 36.919132, 36.736195>,  <34.153160, 36.917240, 36.849918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364498, 36.919132, 36.736195>,  <34.716728, 36.922283, 36.546654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364498, 36.919132, 36.736195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459087, 0.233975, 0.857027,
		-0.117620, 0.972211, -0.202415,
		-0.880570, -0.007877, 0.473850,
		34.100327, 36.916771, 36.878349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656643, 37.498859, 37.066166>,  <34.716728, 36.922283, 36.546654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656643, 37.498859, 37.066166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398880, 37.224049, 37.200474>,  <34.244225, 37.059162, 37.281059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398880, 37.224049, 37.200474>,  <34.656643, 37.498859, 37.066166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398880, 37.224049, 37.200474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200300, 0.272111, 0.941188,
		-0.737986, 0.673760, -0.037739,
		-0.644404, -0.687025, 0.335768,
		34.205559, 37.017941, 37.301205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300365, 37.880241, 37.557339>,  <34.656643, 37.498859, 37.066166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300365, 37.880241, 37.557339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261398, 37.489571, 37.633877>,  <34.238018, 37.255169, 37.679798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261398, 37.489571, 37.633877>,  <34.300365, 37.880241, 37.557339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261398, 37.489571, 37.633877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248863, 0.162248, 0.954852,
		-0.963627, 0.140636, 0.227253,
		-0.097415, -0.976676, 0.191346,
		34.232174, 37.196568, 37.691280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846111, 37.866909, 38.110786>,  <34.300365, 37.880241, 37.557339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846111, 37.866909, 38.110786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034859, 37.514500, 38.124218>,  <34.148109, 37.303055, 38.132275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034859, 37.514500, 38.124218>,  <33.846111, 37.866909, 38.110786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034859, 37.514500, 38.124218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204566, 0.146449, 0.967835,
		-0.857608, -0.449825, 0.249333,
		0.471871, -0.881028, 0.033577,
		34.176418, 37.250191, 38.134293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600555, 37.493233, 38.738350>,  <33.846111, 37.866909, 38.110786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600555, 37.493233, 38.738350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934242, 37.297207, 38.637218>,  <34.134453, 37.179592, 38.576538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934242, 37.297207, 38.637218>,  <33.600555, 37.493233, 38.738350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934242, 37.297207, 38.637218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270811, -0.035314, 0.961985,
		-0.480363, -0.870971, 0.103255,
		0.834214, -0.490065, -0.252832,
		34.184505, 37.150188, 38.561371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603546, 36.885921, 39.056961>,  <33.600555, 37.493233, 38.738350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603546, 36.885921, 39.056961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985146, 36.964138, 38.966061>,  <34.214108, 37.011066, 38.911518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985146, 36.964138, 38.966061>,  <33.603546, 36.885921, 39.056961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985146, 36.964138, 38.966061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234910, -0.016573, 0.971876,
		0.186272, -0.980556, -0.061744,
		0.954002, 0.195538, -0.227256,
		34.271347, 37.022800, 38.897884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940250, 36.340649, 39.273132>,  <33.603546, 36.885921, 39.056961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940250, 36.340649, 39.273132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211758, 36.632343, 39.238514>,  <34.374660, 36.807362, 39.217743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211758, 36.632343, 39.238514>,  <33.940250, 36.340649, 39.273132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211758, 36.632343, 39.238514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318328, -0.185979, 0.929559,
		0.661773, -0.658502, -0.358373,
		0.678767, 0.729237, -0.086544,
		34.415386, 36.851116, 39.212551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481068, 36.062035, 39.569798>,  <33.940250, 36.340649, 39.273132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481068, 36.062035, 39.569798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594391, 36.444298, 39.537643>,  <34.662384, 36.673656, 39.518353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594391, 36.444298, 39.537643>,  <34.481068, 36.062035, 39.569798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594391, 36.444298, 39.537643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401711, -0.042141, 0.914796,
		0.870841, -0.291462, -0.395835,
		0.283310, 0.955654, -0.080385,
		34.679382, 36.730995, 39.513527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157322, 35.968590, 39.709702>,  <34.481068, 36.062035, 39.569798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157322, 35.968590, 39.709702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017258, 36.336529, 39.780426>,  <34.933220, 36.557293, 39.822861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017258, 36.336529, 39.780426>,  <35.157322, 35.968590, 39.709702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017258, 36.336529, 39.780426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088604, -0.155385, 0.983872,
		0.932490, 0.360177, -0.027093,
		-0.350158, 0.919852, 0.176808,
		34.912209, 36.612484, 39.833469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371376, 36.067612, 40.454330>,  <35.157322, 35.968590, 39.709702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371376, 36.067612, 40.454330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102276, 36.341095, 40.341232>,  <34.940815, 36.505184, 40.273373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102276, 36.341095, 40.341232>,  <35.371376, 36.067612, 40.454330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102276, 36.341095, 40.341232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350487, 0.042049, 0.935623,
		0.651586, 0.728539, 0.211344,
		-0.672751, 0.683712, -0.282742,
		34.900452, 36.546207, 40.256409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342281, 36.636486, 40.952774>,  <35.371376, 36.067612, 40.454330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342281, 36.636486, 40.952774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989883, 36.636227, 40.763527>,  <34.778442, 36.636070, 40.649979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989883, 36.636227, 40.763527>,  <35.342281, 36.636486, 40.952774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989883, 36.636227, 40.763527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466027, 0.173723, 0.867548,
		0.081626, 0.984794, -0.153353,
		-0.880997, -0.000652, -0.473121,
		34.725586, 36.636032, 40.621590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031273, 37.115665, 41.292000>,  <35.342281, 36.636486, 40.952774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031273, 37.115665, 41.292000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739861, 36.900227, 41.122692>,  <34.565014, 36.770966, 41.021107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739861, 36.900227, 41.122692>,  <35.031273, 37.115665, 41.292000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739861, 36.900227, 41.122692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543570, 0.078523, 0.835683,
		-0.416859, 0.838898, -0.349971,
		-0.728533, -0.538595, -0.423267,
		34.521301, 36.738647, 40.995712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466183, 37.458950, 41.658875>,  <35.031273, 37.115665, 41.292000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466183, 37.458950, 41.658875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349106, 37.117039, 41.487442>,  <34.278858, 36.911892, 41.384583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349106, 37.117039, 41.487442>,  <34.466183, 37.458950, 41.658875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349106, 37.117039, 41.487442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638985, -0.158591, 0.752693,
		-0.711357, 0.494163, -0.499774,
		-0.292693, -0.854782, -0.428578,
		34.261299, 36.860603, 41.358868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833786, 37.610905, 41.693966>,  <34.466183, 37.458950, 41.658875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833786, 37.610905, 41.693966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908058, 37.218956, 41.664650>,  <33.952621, 36.983788, 41.647060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908058, 37.218956, 41.664650>,  <33.833786, 37.610905, 41.693966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908058, 37.218956, 41.664650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489971, -0.156986, 0.857487,
		-0.851734, -0.123308, -0.509259,
		0.185682, -0.979873, -0.073293,
		33.963764, 36.924995, 41.642662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186329, 37.293285, 41.968632>,  <33.833786, 37.610905, 41.693966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186329, 37.293285, 41.968632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466721, 37.008026, 41.971310>,  <33.634956, 36.836872, 41.972916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466721, 37.008026, 41.971310>,  <33.186329, 37.293285, 41.968632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466721, 37.008026, 41.971310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444002, -0.429040, 0.786630,
		-0.558110, -0.554386, -0.617389,
		0.700981, -0.713148, 0.006697,
		33.677013, 36.794083, 41.973320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772655, 36.846741, 42.281548>,  <33.186329, 37.293285, 41.968632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772655, 36.846741, 42.281548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154724, 36.728329, 42.279709>,  <33.383965, 36.657280, 42.278606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154724, 36.728329, 42.279709>,  <32.772655, 36.846741, 42.281548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154724, 36.728329, 42.279709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133771, -0.445357, 0.885304,
		-0.264120, -0.845000, -0.464991,
		0.955168, -0.296029, -0.004592,
		33.441273, 36.639519, 42.278332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772896, 36.169384, 42.513073>,  <32.772655, 36.846741, 42.281548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772896, 36.169384, 42.513073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134506, 36.307678, 42.613628>,  <33.351475, 36.390656, 42.673962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134506, 36.307678, 42.613628>,  <32.772896, 36.169384, 42.513073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134506, 36.307678, 42.613628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129663, -0.338604, 0.931952,
		0.407330, -0.875109, -0.261279,
		0.904030, 0.345734, 0.251393,
		33.405716, 36.411400, 42.689045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958187, 35.699833, 43.023033>,  <32.772896, 36.169384, 42.513073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958187, 35.699833, 43.023033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224125, 35.995834, 43.063774>,  <33.383686, 36.173435, 43.088219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224125, 35.995834, 43.063774>,  <32.958187, 35.699833, 43.023033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224125, 35.995834, 43.063774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037626, -0.103009, 0.993969,
		0.746036, -0.664664, -0.040641,
		0.664842, 0.740007, 0.101857,
		33.423576, 36.217838, 43.094330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552456, 35.407696, 43.211758>,  <32.958187, 35.699833, 43.023033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552456, 35.407696, 43.211758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573254, 35.793198, 43.316425>,  <33.585732, 36.024498, 43.379227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573254, 35.793198, 43.316425>,  <33.552456, 35.407696, 43.211758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573254, 35.793198, 43.316425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235217, -0.242836, 0.941118,
		0.970551, -0.110480, 0.214066,
		0.051992, 0.963756, 0.261672,
		33.588852, 36.082325, 43.394928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047165, 35.507603, 43.753136>,  <33.552456, 35.407696, 43.211758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047165, 35.507603, 43.753136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785351, 35.808949, 43.778500>,  <33.628262, 35.989758, 43.793716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785351, 35.808949, 43.778500>,  <34.047165, 35.507603, 43.753136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785351, 35.808949, 43.778500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055852, -0.131821, 0.989699,
		0.753966, 0.644251, 0.128359,
		-0.654535, 0.753368, 0.063406,
		33.588989, 36.034958, 43.797520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258205, 35.832172, 44.388966>,  <34.047165, 35.507603, 43.753136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258205, 35.832172, 44.388966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888950, 35.940483, 44.279793>,  <33.667397, 36.005470, 44.214291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888950, 35.940483, 44.279793>,  <34.258205, 35.832172, 44.388966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888950, 35.940483, 44.279793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301255, -0.068394, 0.951088,
		0.238864, 0.960210, 0.144709,
		-0.923141, 0.270775, -0.272931,
		33.612007, 36.021717, 44.197914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023048, 36.263577, 44.851757>,  <34.258205, 35.832172, 44.388966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023048, 36.263577, 44.851757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699909, 36.091454, 44.690647>,  <33.506027, 35.988178, 44.593983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699909, 36.091454, 44.690647>,  <34.023048, 36.263577, 44.851757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699909, 36.091454, 44.690647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377925, -0.146214, 0.914218,
		-0.452285, 0.890762, -0.044506,
		-0.807843, -0.430307, -0.402772,
		33.457558, 35.962360, 44.569817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419998, 36.540115, 45.205715>,  <34.023048, 36.263577, 44.851757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419998, 36.540115, 45.205715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345764, 36.173355, 45.064381>,  <33.301224, 35.953297, 44.979580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345764, 36.173355, 45.064381>,  <33.419998, 36.540115, 45.205715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345764, 36.173355, 45.064381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165055, -0.325390, 0.931063,
		-0.968668, 0.231108, -0.090953,
		-0.185581, -0.916903, -0.353341,
		33.290089, 35.898285, 44.958378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843544, 36.401218, 45.498215>,  <33.419998, 36.540115, 45.205715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843544, 36.401218, 45.498215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012535, 36.052303, 45.399719>,  <33.113930, 35.842957, 45.340622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012535, 36.052303, 45.399719>,  <32.843544, 36.401218, 45.498215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012535, 36.052303, 45.399719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123731, -0.324636, 0.937711,
		-0.897890, -0.365692, -0.245079,
		0.422474, -0.872285, -0.246240,
		33.139278, 35.790619, 45.325848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355179, 35.899090, 45.551651>,  <32.843544, 36.401218, 45.498215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355179, 35.899090, 45.551651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687702, 35.677254, 45.566410>,  <32.887215, 35.544151, 45.575264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687702, 35.677254, 45.566410>,  <32.355179, 35.899090, 45.551651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687702, 35.677254, 45.566410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247280, -0.309584, 0.918156,
		-0.497775, -0.772394, -0.394498,
		0.831308, -0.554586, 0.036895,
		32.937096, 35.510880, 45.577480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150543, 35.219028, 45.756691>,  <32.355179, 35.899090, 45.551651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150543, 35.219028, 45.756691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538391, 35.252884, 45.848488>,  <32.771099, 35.273197, 45.903564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538391, 35.252884, 45.848488>,  <32.150543, 35.219028, 45.756691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538391, 35.252884, 45.848488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182590, -0.373832, 0.909346,
		0.162757, -0.923626, -0.347022,
		0.969624, 0.084639, 0.229489,
		32.829277, 35.278275, 45.917336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043777, 34.999748, 46.378471>,  <32.150543, 35.219028, 45.756691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043777, 34.999748, 46.378471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432648, 35.091873, 46.361393>,  <32.665970, 35.147148, 46.351147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432648, 35.091873, 46.361393>,  <32.043777, 34.999748, 46.378471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432648, 35.091873, 46.361393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099180, -0.239616, 0.965789,
		0.212201, -0.943155, -0.255792,
		0.972180, 0.230311, -0.042695,
		32.724300, 35.160965, 46.348583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423786, 34.345036, 46.580063>,  <32.043777, 34.999748, 46.378471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423786, 34.345036, 46.580063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657181, 34.655243, 46.676491>,  <32.797218, 34.841366, 46.734348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657181, 34.655243, 46.676491>,  <32.423786, 34.345036, 46.580063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657181, 34.655243, 46.676491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141154, -0.195478, 0.970497,
		0.799759, -0.600303, -0.004592,
		0.583490, 0.775515, 0.241071,
		32.832230, 34.887897, 46.748814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977295, 34.078899, 47.020531>,  <32.423786, 34.345036, 46.580063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977295, 34.078899, 47.020531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957115, 34.473076, 47.085480>,  <32.945007, 34.709579, 47.124451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957115, 34.473076, 47.085480>,  <32.977295, 34.078899, 47.020531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957115, 34.473076, 47.085480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207022, -0.169370, 0.963564,
		0.977035, 0.014997, 0.212552,
		-0.050451, 0.985439, 0.162376,
		32.941978, 34.768707, 47.134193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336220, 34.231041, 47.614288>,  <32.977295, 34.078899, 47.020531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336220, 34.231041, 47.614288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092175, 34.546562, 47.584461>,  <32.945747, 34.735874, 47.566566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092175, 34.546562, 47.584461>,  <33.336220, 34.231041, 47.614288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092175, 34.546562, 47.584461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224055, -0.081492, 0.971163,
		0.759978, 0.609223, 0.226454,
		-0.610109, 0.788800, -0.074567,
		32.909142, 34.783203, 47.562092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440487, 34.637337, 48.210007>,  <33.336220, 34.231041, 47.614288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440487, 34.637337, 48.210007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086773, 34.749729, 48.060833>,  <32.874542, 34.817165, 47.971329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086773, 34.749729, 48.060833>,  <33.440487, 34.637337, 48.210007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086773, 34.749729, 48.060833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401580, -0.050121, 0.914451,
		0.238254, 0.958403, 0.157159,
		-0.884290, 0.280984, -0.372934,
		32.821487, 34.834023, 47.948952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240730, 35.038223, 48.701363>,  <33.440487, 34.637337, 48.210007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240730, 35.038223, 48.701363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889591, 34.967846, 48.523186>,  <32.678905, 34.925617, 48.416279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889591, 34.967846, 48.523186>,  <33.240730, 35.038223, 48.701363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889591, 34.967846, 48.523186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450912, -0.009832, 0.892514,
		-0.161414, 0.984350, -0.070705,
		-0.877852, -0.175947, -0.445443,
		32.626236, 34.915062, 48.389553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756138, 35.593052, 48.939983>,  <33.240730, 35.038223, 48.701363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756138, 35.593052, 48.939983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517166, 35.296703, 48.817223>,  <32.373783, 35.118896, 48.743565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517166, 35.296703, 48.817223>,  <32.756138, 35.593052, 48.939983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517166, 35.296703, 48.817223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471027, 0.014467, 0.882000,
		-0.649007, 0.671493, -0.357613,
		-0.597430, -0.740870, -0.306902,
		32.337936, 35.074444, 48.725151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013252, 35.780754, 49.058548>,  <32.756138, 35.593052, 48.939983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013252, 35.780754, 49.058548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037682, 35.381516, 49.054932>,  <32.052338, 35.141972, 49.052761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037682, 35.381516, 49.054932>,  <32.013252, 35.780754, 49.058548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037682, 35.381516, 49.054932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432264, -0.034607, 0.901083,
		-0.899677, -0.051122, -0.433553,
		0.061069, -0.998093, -0.009037,
		32.056004, 35.082088, 49.052219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421614, 35.564228, 49.382687>,  <32.013252, 35.780754, 49.058548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421614, 35.564228, 49.382687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641838, 35.230350, 49.387844>,  <31.773972, 35.030022, 49.390938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641838, 35.230350, 49.387844>,  <31.421614, 35.564228, 49.382687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641838, 35.230350, 49.387844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233828, -0.139363, 0.962238,
		-0.801379, -0.532785, -0.271903,
		0.550559, -0.834696, 0.012897,
		31.807007, 34.979942, 49.391712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088379, 34.860981, 49.578815>,  <31.421614, 35.564228, 49.382687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088379, 34.860981, 49.578815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469276, 34.947731, 49.664787>,  <31.697815, 34.999779, 49.716370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469276, 34.947731, 49.664787>,  <31.088379, 34.860981, 49.578815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469276, 34.947731, 49.664787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202791, -0.077015, 0.976189,
		0.228262, -0.973157, -0.029357,
		0.952246, 0.216874, 0.214927,
		31.754950, 35.012794, 49.729267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338680, 34.304646, 49.963486>,  <31.088379, 34.860981, 49.578815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338680, 34.304646, 49.963486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536272, 34.641964, 50.048191>,  <31.654827, 34.844353, 50.099014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536272, 34.641964, 50.048191>,  <31.338680, 34.304646, 49.963486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536272, 34.641964, 50.048191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168511, -0.146076, 0.974816,
		0.852988, -0.517223, 0.069946,
		0.493979, 0.843292, 0.211759,
		31.684465, 34.894951, 50.111717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809464, 34.111233, 50.598728>,  <31.338680, 34.304646, 49.963486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809464, 34.111233, 50.598728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731319, 34.500519, 50.550240>,  <31.684433, 34.734089, 50.521145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731319, 34.500519, 50.550240>,  <31.809464, 34.111233, 50.598728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731319, 34.500519, 50.550240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161710, 0.153876, 0.974768,
		0.967308, 0.170829, -0.187439,
		-0.195361, 0.973211, -0.121221,
		31.672710, 34.792480, 50.513874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515507, 33.834019, 50.759968>,  <31.809464, 34.111233, 50.598728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515507, 33.834019, 50.759968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901592, 33.752522, 50.825516>,  <33.133244, 33.703625, 50.864845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901592, 33.752522, 50.825516>,  <32.515507, 33.834019, 50.759968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901592, 33.752522, 50.825516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237147, -0.418257, 0.876825,
		-0.110108, -0.885184, -0.452024,
		0.965214, -0.203741, 0.163866,
		33.191154, 33.691399, 50.874676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658550, 33.090309, 50.959400>,  <32.515507, 33.834019, 50.759968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658550, 33.090309, 50.959400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942020, 33.330959, 51.106823>,  <33.112103, 33.475349, 51.195274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942020, 33.330959, 51.106823>,  <32.658550, 33.090309, 50.959400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942020, 33.330959, 51.106823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190557, -0.339747, 0.921010,
		0.679316, -0.722926, -0.126126,
		0.708673, 0.601623, 0.368555,
		33.154621, 33.511448, 51.217388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958134, 32.663433, 51.409790>,  <32.658550, 33.090309, 50.959400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958134, 32.663433, 51.409790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124634, 33.010689, 51.517918>,  <33.224533, 33.219040, 51.582794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124634, 33.010689, 51.517918>,  <32.958134, 32.663433, 51.409790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124634, 33.010689, 51.517918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059070, -0.322492, 0.944727,
		0.907328, -0.377278, -0.185520,
		0.416253, 0.868136, 0.270320,
		33.249512, 33.271130, 51.599014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283375, 32.412086, 50.996223>,  <32.958134, 32.663433, 51.409790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283375, 32.412086, 50.996223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095066, 32.151123, 51.233791>,  <31.982080, 31.994545, 51.376331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095066, 32.151123, 51.233791>,  <32.283375, 32.412086, 50.996223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095066, 32.151123, 51.233791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371412, 0.464074, 0.804170,
		-0.800268, 0.599169, 0.023839,
		-0.470770, -0.652405, 0.593922,
		31.953835, 31.955402, 51.411968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333672, 32.500214, 50.261253>,  <32.283375, 32.412086, 50.996223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333672, 32.500214, 50.261253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142258, 32.172234, 50.135590>,  <32.027409, 31.975447, 50.060192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142258, 32.172234, 50.135590>,  <32.333672, 32.500214, 50.261253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142258, 32.172234, 50.135590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340314, 0.156630, -0.927175,
		0.809442, -0.550593, 0.204088,
		-0.478530, -0.819948, -0.314157,
		31.998699, 31.926249, 50.041344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646709, 31.911091, 50.064732>,  <32.333672, 32.500214, 50.261253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646709, 31.911091, 50.064732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326012, 31.892750, 49.826370>,  <32.133595, 31.881744, 49.683353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326012, 31.892750, 49.826370>,  <32.646709, 31.911091, 50.064732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326012, 31.892750, 49.826370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575309, 0.210959, -0.790263,
		0.161944, -0.976419, -0.142758,
		-0.801744, -0.045849, -0.595906,
		32.085487, 31.878994, 49.647598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640903, 31.490717, 49.346664>,  <32.646709, 31.911091, 50.064732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640903, 31.490717, 49.346664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411671, 31.816708, 49.312279>,  <32.274132, 32.012302, 49.291649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411671, 31.816708, 49.312279>,  <32.640903, 31.490717, 49.346664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411671, 31.816708, 49.312279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550718, 0.305317, -0.776847,
		-0.606866, -0.492539, -0.623794,
		-0.573082, 0.814977, -0.085964,
		32.239746, 32.061199, 49.286488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227413, 31.451433, 48.689133>,  <32.640903, 31.490717, 49.346664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227413, 31.451433, 48.689133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324291, 31.814280, 48.826817>,  <32.382420, 32.031986, 48.909428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324291, 31.814280, 48.826817>,  <32.227413, 31.451433, 48.689133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324291, 31.814280, 48.826817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535220, 0.170988, -0.827226,
		-0.809246, 0.384579, -0.444094,
		0.242199, 0.907118, 0.344205,
		32.396950, 32.086414, 48.930077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193432, 31.874002, 48.161831>,  <32.227413, 31.451433, 48.689133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193432, 31.874002, 48.161831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418629, 32.095161, 48.407547>,  <32.553745, 32.227856, 48.554977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418629, 32.095161, 48.407547>,  <32.193432, 31.874002, 48.161831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418629, 32.095161, 48.407547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615373, 0.215718, -0.758144,
		-0.551689, 0.804841, -0.218792,
		0.562988, 0.552898, 0.614287,
		32.587524, 32.261032, 48.591831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360943, 32.540890, 47.767639>,  <32.193432, 31.874002, 48.161831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360943, 32.540890, 47.767639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632954, 32.498028, 48.057766>,  <32.796162, 32.472313, 48.231842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632954, 32.498028, 48.057766>,  <32.360943, 32.540890, 47.767639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632954, 32.498028, 48.057766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729940, 0.191940, -0.656008,
		-0.068925, 0.975540, 0.208738,
		0.680027, -0.107151, 0.725316,
		32.836960, 32.465881, 48.275360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742386, 33.099728, 47.681915>,  <32.360943, 32.540890, 47.767639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742386, 33.099728, 47.681915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977249, 32.847530, 47.884983>,  <33.118168, 32.696213, 48.006824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977249, 32.847530, 47.884983>,  <32.742386, 33.099728, 47.681915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977249, 32.847530, 47.884983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746865, 0.180111, -0.640119,
		0.312151, 0.755011, 0.576645,
		0.587158, -0.630490, 0.507670,
		33.153397, 32.658382, 48.037285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460709, 33.236408, 47.473503>,  <32.742386, 33.099728, 47.681915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460709, 33.236408, 47.473503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498505, 32.895344, 47.679047>,  <33.521183, 32.690704, 47.802372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498505, 32.895344, 47.679047>,  <33.460709, 33.236408, 47.473503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498505, 32.895344, 47.679047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724191, -0.295304, -0.623172,
		0.683096, 0.431010, 0.589585,
		0.094486, -0.852658, 0.513854,
		33.526852, 32.639545, 47.833202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191578, 33.168552, 47.586132>,  <33.460709, 33.236408, 47.473503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191578, 33.168552, 47.586132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061020, 32.793461, 47.633686>,  <33.982685, 32.568405, 47.662220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061020, 32.793461, 47.633686>,  <34.191578, 33.168552, 47.586132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061020, 32.793461, 47.633686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595956, -0.301782, -0.744154,
		0.733689, -0.172041, 0.657344,
		-0.326399, -0.937726, 0.118885,
		33.963100, 32.512142, 47.669353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804226, 32.574570, 47.692039>,  <34.191578, 33.168552, 47.586132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804226, 32.574570, 47.692039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478031, 32.409462, 47.529755>,  <34.282314, 32.310398, 47.432384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478031, 32.409462, 47.529755>,  <34.804226, 32.574570, 47.692039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478031, 32.409462, 47.529755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540936, -0.294264, -0.787906,
		0.205838, -0.861991, 0.463251,
		-0.815487, -0.412771, -0.405711,
		34.233387, 32.285629, 47.408043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102859, 32.011551, 47.279766>,  <34.804226, 32.574570, 47.692039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102859, 32.011551, 47.279766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724644, 32.049664, 47.155262>,  <34.497715, 32.072529, 47.080559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724644, 32.049664, 47.155262>,  <35.102859, 32.011551, 47.279766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724644, 32.049664, 47.155262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254005, -0.382033, -0.888556,
		-0.203570, -0.919224, 0.337026,
		-0.945538, 0.095277, -0.311258,
		34.440983, 32.078247, 47.061886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987404, 31.512114, 46.849113>,  <35.102859, 32.011551, 47.279766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987404, 31.512114, 46.849113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688404, 31.749916, 46.730587>,  <34.509003, 31.892597, 46.659470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688404, 31.749916, 46.730587>,  <34.987404, 31.512114, 46.849113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688404, 31.749916, 46.730587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103779, -0.336089, -0.936095,
		-0.656103, -0.730485, 0.189530,
		-0.747502, 0.594506, -0.296318,
		34.464153, 31.928268, 46.641693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458115, 31.067795, 46.412331>,  <34.987404, 31.512114, 46.849113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458115, 31.067795, 46.412331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412441, 31.450491, 46.305294>,  <34.385036, 31.680109, 46.241074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412441, 31.450491, 46.305294>,  <34.458115, 31.067795, 46.412331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412441, 31.450491, 46.305294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028734, -0.266062, -0.963528,
		-0.993044, -0.117706, 0.002889,
		-0.114182, 0.956743, -0.267593,
		34.378185, 31.737514, 46.225018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010860, 31.077286, 45.893246>,  <34.458115, 31.067795, 46.412331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010860, 31.077286, 45.893246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200344, 31.426641, 45.848007>,  <34.314034, 31.636255, 45.820866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200344, 31.426641, 45.848007>,  <34.010860, 31.077286, 45.893246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200344, 31.426641, 45.848007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127544, -0.195098, -0.972455,
		-0.871395, 0.446239, -0.203816,
		0.473711, 0.873389, -0.113092,
		34.342457, 31.688658, 45.814079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746422, 31.345108, 45.342724>,  <34.010860, 31.077286, 45.893246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746422, 31.345108, 45.342724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073071, 31.571993, 45.385422>,  <34.269062, 31.708124, 45.411041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073071, 31.571993, 45.385422>,  <33.746422, 31.345108, 45.342724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073071, 31.571993, 45.385422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280444, -0.228313, -0.932322,
		-0.504454, 0.791293, -0.345517,
		0.816626, 0.567212, 0.106740,
		34.318058, 31.742157, 45.417442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861279, 31.719694, 44.756542>,  <33.746422, 31.345108, 45.342724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861279, 31.719694, 44.756542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236759, 31.759323, 44.888615>,  <34.462048, 31.783100, 44.967857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236759, 31.759323, 44.888615>,  <33.861279, 31.719694, 44.756542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236759, 31.759323, 44.888615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337556, -0.069915, -0.938705,
		-0.069915, 0.992621, -0.099071,
		0.938705, 0.099071, 0.330177,
		34.518372, 31.789045, 44.987667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206074, 32.086433, 44.351974>,  <33.861279, 31.719694, 44.756542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206074, 32.086433, 44.351974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532040, 31.908939, 44.501114>,  <34.727619, 31.802444, 44.590599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532040, 31.908939, 44.501114>,  <34.206074, 32.086433, 44.351974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532040, 31.908939, 44.501114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370469, -0.095933, -0.923877,
		0.445722, 0.891010, 0.086212,
		0.814914, -0.443731, 0.372851,
		34.776512, 31.775820, 44.612968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789864, 32.534203, 44.233322>,  <34.206074, 32.086433, 44.351974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789864, 32.534203, 44.233322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875111, 32.143879, 44.252819>,  <34.926258, 31.909685, 44.264519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875111, 32.143879, 44.252819>,  <34.789864, 32.534203, 44.233322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875111, 32.143879, 44.252819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102539, -0.027278, -0.994355,
		0.971631, 0.216914, 0.094245,
		0.213118, -0.975810, 0.048746,
		34.939045, 31.851135, 44.267445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380600, 32.434734, 43.751545>,  <34.789864, 32.534203, 44.233322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380600, 32.434734, 43.751545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236057, 32.065487, 43.804104>,  <35.149330, 31.843937, 43.835640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236057, 32.065487, 43.804104>,  <35.380600, 32.434734, 43.751545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236057, 32.065487, 43.804104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009598, -0.137226, -0.990493,
		0.932378, -0.359184, 0.040727,
		-0.361358, -0.923123, 0.131394,
		35.127651, 31.788549, 43.843521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729633, 32.061295, 43.291153>,  <35.380600, 32.434734, 43.751545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729633, 32.061295, 43.291153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412727, 31.842295, 43.398895>,  <35.222584, 31.710896, 43.463543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412727, 31.842295, 43.398895>,  <35.729633, 32.061295, 43.291153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412727, 31.842295, 43.398895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258614, -0.098531, -0.960942,
		0.552656, -0.830984, -0.063529,
		-0.792269, -0.547500, 0.269358,
		35.175045, 31.678045, 43.479702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814377, 31.384171, 43.037086>,  <35.729633, 32.061295, 43.291153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814377, 31.384171, 43.037086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422310, 31.402815, 43.114124>,  <35.187069, 31.414001, 43.160347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422310, 31.402815, 43.114124>,  <35.814377, 31.384171, 43.037086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422310, 31.402815, 43.114124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196714, -0.111778, -0.974069,
		-0.023871, -0.992640, 0.118730,
		-0.980170, 0.046608, 0.192598,
		35.128258, 31.416800, 43.171902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596306, 30.927855, 42.599075>,  <35.814377, 31.384171, 43.037086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596306, 30.927855, 42.599075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250610, 31.114079, 42.675339>,  <35.043194, 31.225813, 42.721096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250610, 31.114079, 42.675339>,  <35.596306, 30.927855, 42.599075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250610, 31.114079, 42.675339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223599, -0.015965, -0.974550,
		-0.450669, -0.884872, 0.117896,
		-0.864235, 0.465561, 0.190661,
		34.991341, 31.253746, 42.732536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019234, 30.651489, 42.080048>,  <35.596306, 30.927855, 42.599075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019234, 30.651489, 42.080048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931038, 31.020296, 42.207336>,  <34.878120, 31.241581, 42.283710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931038, 31.020296, 42.207336>,  <35.019234, 30.651489, 42.080048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931038, 31.020296, 42.207336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148888, 0.290615, -0.945185,
		-0.963960, -0.255780, 0.073201,
		-0.220486, 0.922019, 0.318224,
		34.864891, 31.296902, 42.302803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419437, 30.749849, 41.805492>,  <35.019234, 30.651489, 42.080048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419437, 30.749849, 41.805492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566677, 31.115847, 41.871571>,  <34.655022, 31.335445, 41.911217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566677, 31.115847, 41.871571>,  <34.419437, 30.749849, 41.805492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566677, 31.115847, 41.871571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243411, 0.266311, -0.932647,
		-0.897358, 0.303100, 0.320749,
		0.368104, 0.914991, 0.165198,
		34.677109, 31.390345, 41.921131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888256, 31.270426, 41.577644>,  <34.419437, 30.749849, 41.805492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888256, 31.270426, 41.577644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251453, 31.437128, 41.560387>,  <34.469372, 31.537149, 41.550034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251453, 31.437128, 41.560387>,  <33.888256, 31.270426, 41.577644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251453, 31.437128, 41.560387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160848, 0.251649, -0.954359,
		-0.386877, 0.873492, 0.295530,
		0.907995, 0.416755, -0.043143,
		34.523853, 31.562155, 41.547443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748154, 31.960062, 41.296215>,  <33.888256, 31.270426, 41.577644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748154, 31.960062, 41.296215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136101, 31.881378, 41.238720>,  <34.368870, 31.834167, 41.204224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136101, 31.881378, 41.238720>,  <33.748154, 31.960062, 41.296215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136101, 31.881378, 41.238720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079562, 0.301918, -0.950008,
		0.230274, 0.932819, 0.277170,
		0.969868, -0.196710, -0.143741,
		34.427063, 31.822365, 41.195599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957870, 32.496387, 40.947708>,  <33.748154, 31.960062, 41.296215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957870, 32.496387, 40.947708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249622, 32.234825, 40.867287>,  <34.424671, 32.077888, 40.819035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249622, 32.234825, 40.867287>,  <33.957870, 32.496387, 40.947708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249622, 32.234825, 40.867287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080712, 0.374087, -0.923875,
		0.679336, 0.657624, 0.325628,
		0.729375, -0.653903, -0.201053,
		34.468433, 32.038654, 40.806973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504215, 32.904007, 40.691334>,  <33.957870, 32.496387, 40.947708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504215, 32.904007, 40.691334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604424, 32.530514, 40.589050>,  <34.664547, 32.306419, 40.527679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604424, 32.530514, 40.589050>,  <34.504215, 32.904007, 40.691334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604424, 32.530514, 40.589050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309125, 0.327458, -0.892868,
		0.917433, 0.144632, 0.370674,
		0.250517, -0.933731, -0.255711,
		34.679577, 32.250393, 40.512337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116142, 33.059235, 40.266457>,  <34.504215, 32.904007, 40.691334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116142, 33.059235, 40.266457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994305, 32.687096, 40.184799>,  <34.921204, 32.463810, 40.135807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994305, 32.687096, 40.184799>,  <35.116142, 33.059235, 40.266457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994305, 32.687096, 40.184799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112841, 0.177568, -0.977618,
		0.945775, -0.320810, 0.050896,
		-0.304593, -0.930350, -0.204140,
		34.902927, 32.407990, 40.123558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550652, 32.798126, 39.723171>,  <35.116142, 33.059235, 40.266457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550652, 32.798126, 39.723171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212425, 32.584675, 39.716663>,  <35.009491, 32.456604, 39.712757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212425, 32.584675, 39.716663>,  <35.550652, 32.798126, 39.723171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212425, 32.584675, 39.716663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038570, 0.091462, -0.995061,
		0.532483, -0.840758, -0.097919,
		-0.845562, -0.533630, -0.016274,
		34.958755, 32.424587, 39.711781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594902, 32.295738, 39.179684>,  <35.550652, 32.798126, 39.723171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594902, 32.295738, 39.179684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206020, 32.337234, 39.263645>,  <34.972691, 32.362133, 39.314022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206020, 32.337234, 39.263645>,  <35.594902, 32.295738, 39.179684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206020, 32.337234, 39.263645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214551, -0.035797, -0.976057,
		-0.093742, -0.993960, 0.057060,
		-0.972204, 0.103740, 0.209900,
		34.914360, 32.368355, 39.326614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289822, 31.695890, 38.906445>,  <35.594902, 32.295738, 39.179684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289822, 31.695890, 38.906445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009785, 31.980831, 38.926155>,  <34.841763, 32.151794, 38.937981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009785, 31.980831, 38.926155>,  <35.289822, 31.695890, 38.906445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009785, 31.980831, 38.926155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127795, -0.057107, -0.990155,
		-0.702524, -0.699496, 0.131015,
		-0.700092, 0.712351, 0.049273,
		34.799759, 32.194538, 38.940937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937134, 31.593925, 38.268040>,  <35.289822, 31.695890, 38.906445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937134, 31.593925, 38.268040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775948, 31.940363, 38.386356>,  <34.679234, 32.148228, 38.457348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775948, 31.940363, 38.386356>,  <34.937134, 31.593925, 38.268040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775948, 31.940363, 38.386356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143268, 0.259514, -0.955053,
		-0.903930, -0.427235, 0.019507,
		-0.402970, 0.866096, 0.295792,
		34.655056, 32.200191, 38.475094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282085, 31.665180, 37.781586>,  <34.937134, 31.593925, 38.268040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282085, 31.665180, 37.781586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399197, 32.017799, 37.929726>,  <34.469463, 32.229370, 38.018608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399197, 32.017799, 37.929726>,  <34.282085, 31.665180, 37.781586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399197, 32.017799, 37.929726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081452, 0.362921, -0.928253,
		-0.952706, 0.301935, 0.034450,
		0.292775, 0.881546, 0.370350,
		34.487030, 32.282265, 38.040833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786480, 32.069588, 37.608234>,  <34.282085, 31.665180, 37.781586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786480, 32.069588, 37.608234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097828, 32.302090, 37.703133>,  <34.284637, 32.441589, 37.760071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097828, 32.302090, 37.703133>,  <33.786480, 32.069588, 37.608234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097828, 32.302090, 37.703133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038992, 0.421924, -0.905793,
		-0.626593, 0.695792, 0.351077,
		0.778371, 0.581252, 0.237244,
		34.331341, 32.476467, 37.774307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555279, 32.700142, 37.400410>,  <33.786480, 32.069588, 37.608234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555279, 32.700142, 37.400410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955070, 32.706799, 37.389374>,  <34.194946, 32.710793, 37.382751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955070, 32.706799, 37.389374>,  <33.555279, 32.700142, 37.400410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955070, 32.706799, 37.389374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032151, 0.570986, -0.820330,
		0.002105, 0.820791, 0.571225,
		0.999481, 0.016638, -0.027591,
		34.254913, 32.711792, 37.381096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569290, 33.325081, 37.013126>,  <33.555279, 32.700142, 37.400410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569290, 33.325081, 37.013126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942062, 33.180443, 37.002216>,  <34.165726, 33.093658, 36.995670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942062, 33.180443, 37.002216>,  <33.569290, 33.325081, 37.013126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942062, 33.180443, 37.002216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126932, 0.395741, -0.909548,
		0.339684, 0.844178, 0.414703,
		0.931935, -0.361598, -0.027274,
		34.221642, 33.071964, 36.994034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132492, 33.905029, 36.813362>,  <33.569290, 33.325081, 37.013126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132492, 33.905029, 36.813362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259232, 33.537960, 36.717457>,  <34.335274, 33.317719, 36.659916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259232, 33.537960, 36.717457>,  <34.132492, 33.905029, 36.813362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259232, 33.537960, 36.717457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168698, 0.303280, -0.937850,
		0.933354, 0.256707, 0.250903,
		0.316846, -0.917673, -0.239761,
		34.354286, 33.262657, 36.645527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722939, 34.046890, 36.531563>,  <34.132492, 33.905029, 36.813362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722939, 34.046890, 36.531563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620491, 33.678638, 36.413689>,  <34.559021, 33.457687, 36.342964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620491, 33.678638, 36.413689>,  <34.722939, 34.046890, 36.531563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620491, 33.678638, 36.413689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256973, 0.229039, -0.938885,
		0.931862, -0.316193, 0.177916,
		-0.256120, -0.920632, -0.294686,
		34.543655, 33.402451, 36.325283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327030, 33.828457, 36.201164>,  <34.722939, 34.046890, 36.531563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327030, 33.828457, 36.201164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048019, 33.578121, 36.061577>,  <34.880615, 33.427917, 35.977825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048019, 33.578121, 36.061577>,  <35.327030, 33.828457, 36.201164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048019, 33.578121, 36.061577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237177, 0.257907, -0.936606,
		0.676171, -0.736073, -0.031461,
		-0.697524, -0.625844, -0.348969,
		34.838760, 33.390369, 35.956886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699383, 33.559498, 35.687153>,  <35.327030, 33.828457, 36.201164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699383, 33.559498, 35.687153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312531, 33.502182, 35.603123>,  <35.080421, 33.467793, 35.552704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312531, 33.502182, 35.603123>,  <35.699383, 33.559498, 35.687153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312531, 33.502182, 35.603123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183140, 0.180632, -0.966350,
		0.176378, -0.973062, -0.148460,
		-0.967135, -0.143254, -0.210066,
		35.022392, 33.459194, 35.540100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772266, 33.251137, 35.082085>,  <35.699383, 33.559498, 35.687153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772266, 33.251137, 35.082085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397320, 33.389465, 35.098812>,  <35.172352, 33.472462, 35.108849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397320, 33.389465, 35.098812>,  <35.772266, 33.251137, 35.082085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397320, 33.389465, 35.098812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000091, 0.120301, -0.992737,
		-0.348341, -0.930556, -0.112798,
		-0.937368, 0.345822, 0.041821,
		35.116108, 33.493210, 35.111359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366562, 33.096909, 34.613079>,  <35.772266, 33.251137, 35.082085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366562, 33.096909, 34.613079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761826, 33.035736, 34.617882>,  <36.998985, 32.999031, 34.620766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761826, 33.035736, 34.617882>,  <36.366562, 33.096909, 34.613079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761826, 33.035736, 34.617882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089529, -0.511373, 0.854682,
		-0.124567, -0.845641, -0.519012,
		0.988163, -0.152932, 0.012009,
		37.058273, 32.989857, 34.621483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514095, 32.457176, 35.040260>,  <36.366562, 33.096909, 34.613079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514095, 32.457176, 35.040260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867874, 32.642708, 35.019840>,  <37.080143, 32.754028, 35.007587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867874, 32.642708, 35.019840>,  <36.514095, 32.457176, 35.040260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867874, 32.642708, 35.019840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234501, -0.347220, 0.907991,
		0.403432, -0.815044, -0.415869,
		0.884450, 0.463834, -0.051049,
		37.133209, 32.781857, 35.004524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078979, 31.949125, 35.071243>,  <36.514095, 32.457176, 35.040260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078979, 31.949125, 35.071243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233837, 32.299419, 35.186626>,  <37.326752, 32.509594, 35.255856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233837, 32.299419, 35.186626>,  <37.078979, 31.949125, 35.071243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233837, 32.299419, 35.186626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180780, -0.378877, 0.907618,
		0.904122, -0.299234, -0.304996,
		0.387146, 0.875735, 0.288456,
		37.349979, 32.562141, 35.273163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782970, 31.819052, 35.241009>,  <37.078979, 31.949125, 35.071243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782970, 31.819052, 35.241009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668098, 32.145344, 35.441853>,  <37.599174, 32.341118, 35.562359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668098, 32.145344, 35.441853>,  <37.782970, 31.819052, 35.241009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668098, 32.145344, 35.441853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253130, -0.440925, 0.861110,
		0.923824, 0.374395, -0.079859,
		-0.287183, 0.815729, 0.502107,
		37.581944, 32.390064, 35.592484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414429, 32.005650, 35.745106>,  <37.782970, 31.819052, 35.241009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414429, 32.005650, 35.745106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095699, 32.205639, 35.880810>,  <37.904461, 32.325634, 35.962231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095699, 32.205639, 35.880810>,  <38.414429, 32.005650, 35.745106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095699, 32.205639, 35.880810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117190, -0.422943, 0.898546,
		0.592736, 0.755742, 0.278420,
		-0.796825, 0.499973, 0.339259,
		37.856651, 32.355629, 35.982586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668648, 32.270287, 36.414429>,  <38.414429, 32.005650, 35.745106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668648, 32.270287, 36.414429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269070, 32.285828, 36.424187>,  <38.029324, 32.295155, 36.430042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269070, 32.285828, 36.424187>,  <38.668648, 32.270287, 36.414429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269070, 32.285828, 36.424187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011497, -0.302675, 0.953025,
		0.044414, 0.952302, 0.301909,
		-0.998947, 0.038857, 0.024391,
		37.969387, 32.297485, 36.431503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512493, 32.452660, 37.123676>,  <38.668648, 32.270287, 36.414429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512493, 32.452660, 37.123676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147190, 32.332420, 37.013691>,  <37.928009, 32.260277, 36.947701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147190, 32.332420, 37.013691>,  <38.512493, 32.452660, 37.123676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147190, 32.332420, 37.013691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193000, -0.275156, 0.941828,
		-0.358768, 0.913198, 0.193273,
		-0.913256, -0.300596, -0.274965,
		37.873215, 32.242241, 36.931202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200943, 32.711826, 37.641258>,  <38.512493, 32.452660, 37.123676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200943, 32.711826, 37.641258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978668, 32.429062, 37.466221>,  <37.845303, 32.259403, 37.361198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978668, 32.429062, 37.466221>,  <38.200943, 32.711826, 37.641258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978668, 32.429062, 37.466221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242597, -0.365557, 0.898618,
		-0.795208, 0.605510, 0.031640,
		-0.555689, -0.706913, -0.437589,
		37.811962, 32.216988, 37.334946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592793, 32.806618, 37.964188>,  <38.200943, 32.711826, 37.641258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592793, 32.806618, 37.964188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646698, 32.429413, 37.842495>,  <37.679043, 32.203091, 37.769478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646698, 32.429413, 37.842495>,  <37.592793, 32.806618, 37.964188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646698, 32.429413, 37.842495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346120, -0.332494, 0.877296,
		-0.928461, -0.012926, -0.371205,
		0.134763, -0.943017, -0.304234,
		37.687126, 32.146507, 37.751225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973030, 32.521282, 38.284634>,  <37.592793, 32.806618, 37.964188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973030, 32.521282, 38.284634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229733, 32.232815, 38.180267>,  <37.383751, 32.059734, 38.117649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229733, 32.232815, 38.180267>,  <36.973030, 32.521282, 38.284634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229733, 32.232815, 38.180267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245998, -0.515807, 0.820627,
		-0.726389, -0.462454, -0.508425,
		0.641751, -0.721165, -0.260913,
		37.422256, 32.016464, 38.101994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604252, 31.932976, 38.411842>,  <36.973030, 32.521282, 38.284634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604252, 31.932976, 38.411842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998341, 31.876587, 38.450737>,  <37.234795, 31.842754, 38.474075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998341, 31.876587, 38.450737>,  <36.604252, 31.932976, 38.411842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998341, 31.876587, 38.450737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151714, -0.455062, 0.877440,
		-0.079445, -0.879230, -0.469727,
		0.985227, -0.140972, 0.097239,
		37.293907, 31.834295, 38.479908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668331, 31.260666, 38.912907>,  <36.604252, 31.932976, 38.411842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668331, 31.260666, 38.912907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042004, 31.402576, 38.897743>,  <37.266209, 31.487722, 38.888645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042004, 31.402576, 38.897743>,  <36.668331, 31.260666, 38.912907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042004, 31.402576, 38.897743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161635, -0.326079, 0.931422,
		0.318083, -0.876246, -0.361961,
		0.934183, 0.354775, -0.037912,
		37.322258, 31.509008, 38.886368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062607, 30.707169, 39.247696>,  <36.668331, 31.260666, 38.912907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062607, 30.707169, 39.247696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303219, 31.025625, 39.221428>,  <37.447586, 31.216700, 39.205666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303219, 31.025625, 39.221428>,  <37.062607, 30.707169, 39.247696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303219, 31.025625, 39.221428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319102, -0.164110, 0.933404,
		0.732346, -0.582429, -0.352768,
		0.601534, 0.796143, -0.065669,
		37.483681, 31.264469, 39.201729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643299, 30.435005, 39.388760>,  <37.062607, 30.707169, 39.247696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643299, 30.435005, 39.388760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693989, 30.825375, 39.459766>,  <37.724403, 31.059597, 39.502369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693989, 30.825375, 39.459766>,  <37.643299, 30.435005, 39.388760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693989, 30.825375, 39.459766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470600, -0.216682, 0.855327,
		0.873200, -0.024850, -0.486728,
		0.126720, 0.975926, 0.177512,
		37.732006, 31.118153, 39.513020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309570, 30.459499, 39.647285>,  <37.643299, 30.435005, 39.388760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309570, 30.459499, 39.647285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120319, 30.788013, 39.774807>,  <38.006767, 30.985123, 39.851318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120319, 30.788013, 39.774807>,  <38.309570, 30.459499, 39.647285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120319, 30.788013, 39.774807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357826, -0.151533, 0.921411,
		0.805051, 0.550025, -0.222183,
		-0.473131, 0.821286, 0.318805,
		37.978378, 31.034399, 39.870449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721943, 30.677584, 40.174820>,  <38.309570, 30.459499, 39.647285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721943, 30.677584, 40.174820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375435, 30.863091, 40.249104>,  <38.167530, 30.974396, 40.293674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375435, 30.863091, 40.249104>,  <38.721943, 30.677584, 40.174820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375435, 30.863091, 40.249104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103770, -0.196583, 0.974980,
		0.488672, 0.863871, 0.122169,
		-0.866274, 0.463769, 0.185708,
		38.115551, 31.002222, 40.304817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816250, 31.029818, 40.863354>,  <38.721943, 30.677584, 40.174820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816250, 31.029818, 40.863354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422802, 31.046528, 40.793205>,  <38.186733, 31.056553, 40.751118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422802, 31.046528, 40.793205>,  <38.816250, 31.029818, 40.863354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422802, 31.046528, 40.793205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180246, -0.246437, 0.952250,
		-0.003438, 0.968258, 0.249929,
		-0.983616, 0.041775, -0.175372,
		38.127716, 31.059061, 40.740593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506672, 31.463024, 41.377804>,  <38.816250, 31.029818, 40.863354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506672, 31.463024, 41.377804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183678, 31.264284, 41.250618>,  <37.989880, 31.145041, 41.174305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183678, 31.264284, 41.250618>,  <38.506672, 31.463024, 41.377804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183678, 31.264284, 41.250618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249939, -0.200080, 0.947364,
		-0.534316, 0.844458, 0.037380,
		-0.807488, -0.496850, -0.317968,
		37.941433, 31.115229, 41.155228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908352, 31.802095, 41.635952>,  <38.506672, 31.463024, 41.377804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908352, 31.802095, 41.635952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825565, 31.419262, 41.554806>,  <37.775894, 31.189562, 41.506119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825565, 31.419262, 41.554806>,  <37.908352, 31.802095, 41.635952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825565, 31.419262, 41.554806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397442, -0.107229, 0.911341,
		-0.893983, 0.269243, -0.358193,
		-0.206963, -0.957084, -0.202870,
		37.763477, 31.132137, 41.493946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270748, 31.662319, 41.979034>,  <37.908352, 31.802095, 41.635952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270748, 31.662319, 41.979034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424572, 31.298265, 41.917374>,  <37.516869, 31.079832, 41.880379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424572, 31.298265, 41.917374>,  <37.270748, 31.662319, 41.979034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424572, 31.298265, 41.917374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178626, -0.237208, 0.954895,
		-0.905651, -0.339682, -0.253796,
		0.384564, -0.910136, -0.154152,
		37.539940, 31.025225, 41.871128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869919, 31.351282, 42.460732>,  <37.270748, 31.662319, 41.979034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869919, 31.351282, 42.460732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140495, 31.066916, 42.383770>,  <37.302841, 30.896296, 42.337593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140495, 31.066916, 42.383770>,  <36.869919, 31.351282, 42.460732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140495, 31.066916, 42.383770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149995, -0.388753, 0.909051,
		-0.721059, -0.586061, -0.369603,
		0.676443, -0.710918, -0.192408,
		37.343430, 30.853640, 42.326046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539265, 30.744379, 42.649887>,  <36.869919, 31.351282, 42.460732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539265, 30.744379, 42.649887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935028, 30.688223, 42.664604>,  <37.172485, 30.654530, 42.673435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935028, 30.688223, 42.664604>,  <36.539265, 30.744379, 42.649887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935028, 30.688223, 42.664604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093764, -0.424856, 0.900392,
		-0.110773, -0.894309, -0.433521,
		0.989413, -0.140388, 0.036791,
		37.231853, 30.646107, 42.675640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623997, 30.088957, 42.871265>,  <36.539265, 30.744379, 42.649887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623997, 30.088957, 42.871265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987854, 30.243801, 42.931522>,  <37.206169, 30.336708, 42.967678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987854, 30.243801, 42.931522>,  <36.623997, 30.088957, 42.871265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987854, 30.243801, 42.931522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027675, -0.418333, 0.907872,
		0.414469, -0.821670, -0.391247,
		0.909642, 0.387113, 0.150646,
		37.260746, 30.359936, 42.976715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002251, 29.645214, 43.320004>,  <36.623997, 30.088957, 42.871265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002251, 29.645214, 43.320004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188465, 29.997309, 43.356796>,  <37.300194, 30.208565, 43.378872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188465, 29.997309, 43.356796>,  <37.002251, 29.645214, 43.320004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188465, 29.997309, 43.356796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064101, -0.070120, 0.995477,
		0.882704, -0.469326, 0.023781,
		0.465536, 0.880236, 0.091980,
		37.328125, 30.261379, 43.384392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394386, 29.569693, 43.985470>,  <37.002251, 29.645214, 43.320004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394386, 29.569693, 43.985470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374622, 29.962091, 43.910416>,  <37.362762, 30.197531, 43.865383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374622, 29.962091, 43.910416>,  <37.394386, 29.569693, 43.985470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374622, 29.962091, 43.910416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086915, 0.182928, 0.979277,
		0.994990, 0.064695, 0.076224,
		-0.049410, 0.980995, -0.187635,
		37.359798, 30.256390, 43.854126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810719, 29.862757, 44.480618>,  <37.394386, 29.569693, 43.985470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810719, 29.862757, 44.480618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572598, 30.153631, 44.343906>,  <37.429726, 30.328156, 44.261879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572598, 30.153631, 44.343906>,  <37.810719, 29.862757, 44.480618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572598, 30.153631, 44.343906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050030, 0.390993, 0.919033,
		0.801940, 0.564205, -0.196380,
		-0.595306, 0.727184, -0.341780,
		37.394005, 30.371786, 44.241371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988945, 30.482922, 44.819263>,  <37.810719, 29.862757, 44.480618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988945, 30.482922, 44.819263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624779, 30.584055, 44.688290>,  <37.406277, 30.644735, 44.609707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624779, 30.584055, 44.688290>,  <37.988945, 30.482922, 44.819263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624779, 30.584055, 44.688290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165439, 0.502934, 0.848344,
		0.379167, 0.826519, -0.416052,
		-0.910419, 0.252833, -0.327434,
		37.351654, 30.659904, 44.590061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021294, 31.196600, 44.946930>,  <37.988945, 30.482922, 44.819263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021294, 31.196600, 44.946930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640087, 31.078732, 44.918861>,  <37.411362, 31.008011, 44.902020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640087, 31.078732, 44.918861>,  <38.021294, 31.196600, 44.946930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640087, 31.078732, 44.918861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182766, 0.374649, 0.908975,
		-0.241560, 0.879095, -0.410903,
		-0.953019, -0.294671, -0.070168,
		37.354183, 30.990330, 44.897812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608711, 31.714943, 45.105556>,  <38.021294, 31.196600, 44.946930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608711, 31.714943, 45.105556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363132, 31.414171, 45.201611>,  <37.215786, 31.233707, 45.259243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363132, 31.414171, 45.201611>,  <37.608711, 31.714943, 45.105556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363132, 31.414171, 45.201611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212004, 0.450124, 0.867434,
		-0.760341, 0.481652, -0.435767,
		-0.613951, -0.751930, 0.240136,
		37.178947, 31.188593, 45.273651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015160, 31.999926, 45.387474>,  <37.608711, 31.714943, 45.105556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015160, 31.999926, 45.387474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015774, 31.625780, 45.528950>,  <37.016144, 31.401293, 45.613834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015774, 31.625780, 45.528950>,  <37.015160, 31.999926, 45.387474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015774, 31.625780, 45.528950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080118, 0.352437, 0.932400,
		-0.996784, -0.029772, -0.074397,
		0.001539, -0.935362, 0.353689,
		37.016235, 31.345171, 45.635056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360771, 31.889540, 45.745159>,  <37.015160, 31.999926, 45.387474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360771, 31.889540, 45.745159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618027, 31.621120, 45.892708>,  <36.772381, 31.460070, 45.981239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618027, 31.621120, 45.892708>,  <36.360771, 31.889540, 45.745159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618027, 31.621120, 45.892708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115011, 0.391603, 0.912918,
		-0.757064, -0.629557, 0.174677,
		0.643138, -0.671048, 0.368874,
		36.810966, 31.419806, 46.003368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005852, 31.594402, 46.448036>,  <36.360771, 31.889540, 45.745159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005852, 31.594402, 46.448036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392410, 31.500290, 46.489441>,  <36.624348, 31.443823, 46.514282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392410, 31.500290, 46.489441>,  <36.005852, 31.594402, 46.448036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392410, 31.500290, 46.489441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047486, 0.232359, 0.971470,
		-0.252620, -0.943744, 0.213379,
		0.966400, -0.235280, 0.103513,
		36.682331, 31.429707, 46.520496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102955, 31.128571, 47.197380>,  <36.005852, 31.594402, 46.448036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102955, 31.128571, 47.197380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450081, 31.302876, 47.101875>,  <36.658356, 31.407459, 47.044571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450081, 31.302876, 47.101875>,  <36.102955, 31.128571, 47.197380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450081, 31.302876, 47.101875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098237, 0.320574, 0.942116,
		0.487083, -0.841036, 0.235390,
		0.867813, 0.435765, -0.238767,
		36.710426, 31.433605, 47.030247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387348, 31.078449, 47.801540>,  <36.102955, 31.128571, 47.197380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387348, 31.078449, 47.801540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644295, 31.323734, 47.617657>,  <36.798462, 31.470905, 47.507328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644295, 31.323734, 47.617657>,  <36.387348, 31.078449, 47.801540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644295, 31.323734, 47.617657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253375, 0.396178, 0.882521,
		0.723300, -0.683383, 0.099120,
		0.642369, 0.613213, -0.459708,
		36.837006, 31.507698, 47.479744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086948, 30.946110, 48.097282>,  <36.387348, 31.078449, 47.801540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086948, 30.946110, 48.097282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042740, 31.317282, 47.954884>,  <37.016216, 31.539984, 47.869446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042740, 31.317282, 47.954884>,  <37.086948, 30.946110, 48.097282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042740, 31.317282, 47.954884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290664, 0.372710, 0.881250,
		0.950420, -0.006079, -0.310908,
		-0.110522, 0.927928, -0.355998,
		37.009583, 31.595659, 47.848083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711399, 31.267834, 48.293327>,  <37.086948, 30.946110, 48.097282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711399, 31.267834, 48.293327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454079, 31.563448, 48.213333>,  <37.299686, 31.740816, 48.165337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454079, 31.563448, 48.213333>,  <37.711399, 31.267834, 48.293327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454079, 31.563448, 48.213333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199894, 0.414271, 0.887932,
		0.739059, 0.531231, -0.414228,
		-0.643299, 0.739036, -0.199981,
		37.261089, 31.785158, 48.153339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045372, 31.926096, 48.457535>,  <37.711399, 31.267834, 48.293327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045372, 31.926096, 48.457535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655487, 32.015190, 48.450394>,  <37.421555, 32.068645, 48.446110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655487, 32.015190, 48.450394>,  <38.045372, 31.926096, 48.457535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655487, 32.015190, 48.450394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107461, 0.537320, 0.836504,
		0.195911, 0.813435, -0.547669,
		-0.974716, 0.222733, -0.017854,
		37.363071, 32.082008, 48.445038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972103, 32.732574, 48.634735>,  <38.045372, 31.926096, 48.457535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972103, 32.732574, 48.634735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614307, 32.567711, 48.704037>,  <37.399632, 32.468792, 48.745617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614307, 32.567711, 48.704037>,  <37.972103, 32.732574, 48.634735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614307, 32.567711, 48.704037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091310, 0.547755, 0.831641,
		-0.437673, 0.728071, -0.527593,
		-0.894486, -0.412161, 0.173257,
		37.345963, 32.444061, 48.756012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495716, 33.261700, 48.672470>,  <37.972103, 32.732574, 48.634735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495716, 33.261700, 48.672470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364193, 32.962280, 48.902794>,  <37.285278, 32.782631, 49.040989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364193, 32.962280, 48.902794>,  <37.495716, 33.261700, 48.672470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364193, 32.962280, 48.902794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159669, 0.645002, 0.747314,
		-0.930800, 0.153786, -0.331603,
		-0.328811, -0.748547, 0.575814,
		37.265549, 32.737717, 49.075539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947617, 33.602028, 49.009285>,  <37.495716, 33.261700, 48.672470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947617, 33.602028, 49.009285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190502, 33.898998, 49.122482>,  <37.336235, 34.077183, 49.190399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190502, 33.898998, 49.122482>,  <36.947617, 33.602028, 49.009285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190502, 33.898998, 49.122482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354395, 0.065700, -0.932785,
		-0.711120, 0.666694, -0.223219,
		0.607217, 0.742430, 0.282994,
		37.372665, 34.121727, 49.207382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760273, 34.262516, 48.546669>,  <36.947617, 33.602028, 49.009285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760273, 34.262516, 48.546669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132477, 34.260315, 48.693165>,  <37.355797, 34.258995, 48.781063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132477, 34.260315, 48.693165>,  <36.760273, 34.262516, 48.546669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132477, 34.260315, 48.693165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364773, 0.104420, -0.925223,
		-0.033154, 0.994518, 0.099170,
		0.930506, -0.005500, 0.366235,
		37.411629, 34.258663, 48.803036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057087, 34.919952, 48.342594>,  <36.760273, 34.262516, 48.546669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057087, 34.919952, 48.342594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355244, 34.662128, 48.410629>,  <37.534138, 34.507435, 48.451450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355244, 34.662128, 48.410629>,  <37.057087, 34.919952, 48.342594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355244, 34.662128, 48.410629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444520, 0.290461, -0.847369,
		0.496777, 0.707231, 0.503027,
		0.745396, -0.644559, 0.170084,
		37.578861, 34.468761, 48.461655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721958, 35.303116, 48.272629>,  <37.057087, 34.919952, 48.342594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721958, 35.303116, 48.272629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832264, 34.921303, 48.227329>,  <37.898449, 34.692215, 48.200150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832264, 34.921303, 48.227329>,  <37.721958, 35.303116, 48.272629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832264, 34.921303, 48.227329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379657, 0.216401, -0.899461,
		0.883071, 0.205042, 0.422070,
		0.275764, -0.954530, -0.113252,
		37.914993, 34.634945, 48.193352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455784, 35.308201, 48.188541>,  <37.721958, 35.303116, 48.272629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455784, 35.308201, 48.188541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333012, 34.959457, 48.035881>,  <38.259350, 34.750210, 47.944286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333012, 34.959457, 48.035881>,  <38.455784, 35.308201, 48.188541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333012, 34.959457, 48.035881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646891, 0.103022, -0.755592,
		0.698088, -0.478796, 0.532379,
		-0.306928, -0.871861, -0.381647,
		38.240932, 34.697899, 47.921387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142208, 34.892246, 47.998222>,  <38.455784, 35.308201, 48.188541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142208, 34.892246, 47.998222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844555, 34.735107, 47.782101>,  <38.665962, 34.640823, 47.652428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844555, 34.735107, 47.782101>,  <39.142208, 34.892246, 47.998222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844555, 34.735107, 47.782101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618299, -0.098813, -0.779707,
		0.252919, -0.914278, 0.316429,
		-0.744136, -0.392850, -0.540305,
		38.621315, 34.617252, 47.620010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535000, 34.390800, 47.605846>,  <39.142208, 34.892246, 47.998222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535000, 34.390800, 47.605846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178219, 34.383148, 47.425156>,  <38.964149, 34.378555, 47.316742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178219, 34.383148, 47.425156>,  <39.535000, 34.390800, 47.605846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178219, 34.383148, 47.425156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383699, -0.560527, -0.733883,
		-0.239162, -0.827915, 0.507304,
		-0.891951, -0.019135, -0.451727,
		38.910633, 34.377407, 47.289639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461254, 33.683109, 47.428020>,  <39.535000, 34.390800, 47.605846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461254, 33.683109, 47.428020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211109, 33.899010, 47.202602>,  <39.061024, 34.028549, 47.067352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211109, 33.899010, 47.202602>,  <39.461254, 33.683109, 47.428020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211109, 33.899010, 47.202602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314176, -0.486915, -0.814990,
		-0.714294, -0.686718, 0.134921,
		-0.625363, 0.539753, -0.563550,
		39.023502, 34.060936, 47.033539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024830, 33.249073, 46.969147>,  <39.461254, 33.683109, 47.428020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024830, 33.249073, 46.969147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053413, 33.609051, 46.797104>,  <39.070564, 33.825039, 46.693878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053413, 33.609051, 46.797104>,  <39.024830, 33.249073, 46.969147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053413, 33.609051, 46.797104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386359, -0.422522, -0.819879,
		-0.919576, -0.107590, -0.377894,
		0.071458, 0.899944, -0.430110,
		39.074852, 33.879032, 46.668072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607445, 33.178429, 46.276611>,  <39.024830, 33.249073, 46.969147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607445, 33.178429, 46.276611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830894, 33.505669, 46.221981>,  <38.964966, 33.702011, 46.189201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830894, 33.505669, 46.221981>,  <38.607445, 33.178429, 46.276611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830894, 33.505669, 46.221981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197364, -0.291045, -0.936130,
		-0.805597, 0.495990, -0.324049,
		0.558624, 0.818099, -0.136574,
		38.998482, 33.751099, 46.181007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387089, 33.551426, 45.654095>,  <38.607445, 33.178429, 46.276611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387089, 33.551426, 45.654095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764885, 33.665745, 45.718914>,  <38.991562, 33.734337, 45.757805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764885, 33.665745, 45.718914>,  <38.387089, 33.551426, 45.654095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764885, 33.665745, 45.718914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192069, -0.080143, -0.978104,
		-0.266556, 0.954932, -0.130587,
		0.944488, 0.285801, 0.162050,
		39.048233, 33.751484, 45.767529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518734, 34.191891, 45.316563>,  <38.387089, 33.551426, 45.654095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518734, 34.191891, 45.316563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870895, 34.009762, 45.369583>,  <39.082191, 33.900482, 45.401398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870895, 34.009762, 45.369583>,  <38.518734, 34.191891, 45.316563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870895, 34.009762, 45.369583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066925, -0.157424, -0.985261,
		0.469482, 0.876297, -0.108124,
		0.880402, -0.455326, 0.132554,
		39.135017, 33.873165, 45.409348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860378, 34.366562, 44.822201>,  <38.518734, 34.191891, 45.316563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860378, 34.366562, 44.822201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116817, 34.078114, 44.927258>,  <39.270679, 33.905045, 44.990292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116817, 34.078114, 44.927258>,  <38.860378, 34.366562, 44.822201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116817, 34.078114, 44.927258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317509, -0.062339, -0.946204,
		0.698699, 0.690000, 0.188997,
		0.641099, -0.721120, 0.262638,
		39.309147, 33.861778, 45.006050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453812, 34.583088, 44.496796>,  <38.860378, 34.366562, 44.822201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453812, 34.583088, 44.496796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490936, 34.189243, 44.556023>,  <39.513210, 33.952938, 44.591560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490936, 34.189243, 44.556023>,  <39.453812, 34.583088, 44.496796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490936, 34.189243, 44.556023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121631, -0.136388, -0.983160,
		0.988227, 0.109258, 0.107101,
		0.092811, -0.984612, 0.148072,
		39.518780, 33.893860, 44.600445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974789, 34.434540, 44.086765>,  <39.453812, 34.583088, 44.496796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974789, 34.434540, 44.086765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794353, 34.081680, 44.140934>,  <39.686092, 33.869965, 44.173435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794353, 34.081680, 44.140934>,  <39.974789, 34.434540, 44.086765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794353, 34.081680, 44.140934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156805, -0.227716, -0.961019,
		0.878596, -0.412269, 0.241045,
		-0.451089, -0.882145, 0.135425,
		39.659027, 33.817036, 44.181561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318253, 34.030411, 43.672485>,  <39.974789, 34.434540, 44.086765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318253, 34.030411, 43.672485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980225, 33.824730, 43.731087>,  <39.777409, 33.701321, 43.766247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980225, 33.824730, 43.731087>,  <40.318253, 34.030411, 43.672485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980225, 33.824730, 43.731087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024792, -0.311402, -0.949955,
		0.534088, -0.799142, 0.275903,
		-0.845066, -0.514199, 0.146503,
		39.726704, 33.670471, 43.775036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499874, 33.392654, 43.472454>,  <40.318253, 34.030411, 43.672485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499874, 33.392654, 43.472454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102631, 33.432880, 43.448372>,  <39.864285, 33.457016, 43.433922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102631, 33.432880, 43.448372>,  <40.499874, 33.392654, 43.472454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102631, 33.432880, 43.448372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028680, -0.289572, -0.956726,
		-0.113651, -0.951858, 0.284692,
		-0.993107, 0.100568, -0.060209,
		39.804699, 33.463051, 43.430309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313778, 32.790043, 43.106197>,  <40.499874, 33.392654, 43.472454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313778, 32.790043, 43.106197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002888, 33.036442, 43.054863>,  <39.816353, 33.184280, 43.024063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002888, 33.036442, 43.054863>,  <40.313778, 32.790043, 43.106197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002888, 33.036442, 43.054863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017260, -0.224757, -0.974262,
		-0.628986, -0.755006, 0.185318,
		-0.777225, 0.615996, -0.128338,
		39.769722, 33.221241, 43.016361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769283, 32.413906, 42.748150>,  <40.313778, 32.790043, 43.106197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769283, 32.413906, 42.748150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689667, 32.798470, 42.672173>,  <39.641895, 33.029205, 42.626587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689667, 32.798470, 42.672173>,  <39.769283, 32.413906, 42.748150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689667, 32.798470, 42.672173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121194, -0.216484, -0.968735,
		-0.972468, -0.169800, 0.159607,
		-0.199044, 0.961407, -0.189945,
		39.629955, 33.086891, 42.615189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391373, 32.404522, 42.171062>,  <39.769283, 32.413906, 42.748150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391373, 32.404522, 42.171062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417557, 32.803410, 42.185349>,  <39.433266, 33.042740, 42.193920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417557, 32.803410, 42.185349>,  <39.391373, 32.404522, 42.171062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417557, 32.803410, 42.185349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335731, 0.055717, -0.940309,
		-0.939681, 0.049559, 0.338443,
		0.065458, 0.997216, 0.035718,
		39.437195, 33.102573, 42.196064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730740, 32.669888, 42.011089>,  <39.391373, 32.404522, 42.171062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730740, 32.669888, 42.011089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998798, 32.950481, 41.914078>,  <39.159634, 33.118839, 41.855869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998798, 32.950481, 41.914078>,  <38.730740, 32.669888, 42.011089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998798, 32.950481, 41.914078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444274, 0.117347, -0.888173,
		-0.594582, 0.702954, 0.390292,
		0.670144, 0.701488, -0.242532,
		39.199841, 33.160927, 41.841320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285423, 33.247475, 41.619762>,  <38.730740, 32.669888, 42.011089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285423, 33.247475, 41.619762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677708, 33.268749, 41.544525>,  <38.913078, 33.281513, 41.499382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677708, 33.268749, 41.544525>,  <38.285423, 33.247475, 41.619762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677708, 33.268749, 41.544525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186522, -0.033065, -0.981894,
		-0.058442, 0.998037, -0.022507,
		0.980711, 0.053186, -0.188088,
		38.971920, 33.284706, 41.488098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429256, 33.759769, 41.067497>,  <38.285423, 33.247475, 41.619762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429256, 33.759769, 41.067497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779366, 33.569386, 41.033207>,  <38.989433, 33.455154, 41.012630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779366, 33.569386, 41.033207>,  <38.429256, 33.759769, 41.067497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779366, 33.569386, 41.033207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029060, 0.125184, -0.991708,
		0.482748, 0.870511, 0.095739,
		0.875277, -0.475962, -0.085730,
		39.041950, 33.426598, 41.007488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827816, 34.186100, 40.613529>,  <38.429256, 33.759769, 41.067497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827816, 34.186100, 40.613529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987034, 33.819481, 40.598022>,  <39.082565, 33.599510, 40.588718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987034, 33.819481, 40.598022>,  <38.827816, 34.186100, 40.613529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987034, 33.819481, 40.598022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136425, 0.100931, -0.985496,
		0.907167, 0.386980, 0.165215,
		0.398042, -0.916548, -0.038767,
		39.106445, 33.544518, 40.586391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413937, 34.404228, 40.287010>,  <38.827816, 34.186100, 40.613529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413937, 34.404228, 40.287010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381645, 34.010799, 40.222420>,  <39.362270, 33.774742, 40.183666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381645, 34.010799, 40.222420>,  <39.413937, 34.404228, 40.287010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381645, 34.010799, 40.222420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155742, 0.147568, -0.976713,
		0.984493, -0.104000, 0.141270,
		-0.080732, -0.983569, -0.161476,
		39.357426, 33.715729, 40.173977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930695, 34.206879, 39.840584>,  <39.413937, 34.404228, 40.287010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930695, 34.206879, 39.840584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669743, 33.912125, 39.769711>,  <39.513172, 33.735271, 39.727184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669743, 33.912125, 39.769711>,  <39.930695, 34.206879, 39.840584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669743, 33.912125, 39.769711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153512, 0.100464, -0.983026,
		0.742179, -0.668511, 0.047579,
		-0.652384, -0.736886, -0.177187,
		39.474026, 33.691059, 39.716553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235565, 33.859482, 39.375637>,  <39.930695, 34.206879, 39.840584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235565, 33.859482, 39.375637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869404, 33.701180, 39.346207>,  <39.649708, 33.606197, 39.328548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869404, 33.701180, 39.346207>,  <40.235565, 33.859482, 39.375637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869404, 33.701180, 39.346207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172673, -0.220941, -0.959880,
		0.363619, -0.891383, 0.270586,
		-0.915404, -0.395754, -0.073579,
		39.594784, 33.582455, 39.324131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306278, 33.262608, 39.019569>,  <40.235565, 33.859482, 39.375637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306278, 33.262608, 39.019569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920074, 33.337132, 38.946819>,  <39.688351, 33.381847, 38.903168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920074, 33.337132, 38.946819>,  <40.306278, 33.262608, 39.019569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920074, 33.337132, 38.946819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169283, -0.081535, -0.982189,
		-0.197821, -0.979102, 0.047183,
		-0.965510, 0.186310, -0.181875,
		39.630421, 33.393024, 38.892258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147888, 32.791901, 38.567764>,  <40.306278, 33.262608, 39.019569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147888, 32.791901, 38.567764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850780, 33.057205, 38.531132>,  <39.672516, 33.216389, 38.509151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850780, 33.057205, 38.531132>,  <40.147888, 32.791901, 38.567764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850780, 33.057205, 38.531132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087081, -0.039926, -0.995401,
		-0.663866, -0.747323, -0.028102,
		-0.742765, 0.663260, -0.091583,
		39.627953, 33.256184, 38.503658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603176, 32.574871, 38.095318>,  <40.147888, 32.791901, 38.567764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603176, 32.574871, 38.095318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558678, 32.972111, 38.080513>,  <39.531979, 33.210457, 38.071632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558678, 32.972111, 38.080513>,  <39.603176, 32.574871, 38.095318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558678, 32.972111, 38.080513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011637, -0.035935, -0.999286,
		-0.993725, -0.111594, -0.007559,
		-0.111243, 0.993104, -0.037008,
		39.525303, 33.270042, 38.069412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154617, 32.710892, 37.528332>,  <39.603176, 32.574871, 38.095318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154617, 32.710892, 37.528332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310829, 33.071918, 37.600845>,  <39.404556, 33.288536, 37.644352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310829, 33.071918, 37.600845>,  <39.154617, 32.710892, 37.528332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310829, 33.071918, 37.600845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063811, 0.169906, -0.983392,
		-0.918377, 0.395610, 0.008760,
		0.390528, 0.902565, 0.181282,
		39.427986, 33.342690, 37.655231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031845, 33.075928, 36.880539>,  <39.154617, 32.710892, 37.528332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031845, 33.075928, 36.880539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292034, 33.317230, 37.065132>,  <39.448147, 33.462013, 37.175888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292034, 33.317230, 37.065132>,  <39.031845, 33.075928, 36.880539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292034, 33.317230, 37.065132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312819, 0.340884, -0.886534,
		-0.692123, 0.721024, 0.033023,
		0.650469, 0.603260, 0.461484,
		39.487175, 33.498207, 37.203579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054413, 33.651070, 36.499378>,  <39.031845, 33.075928, 36.880539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054413, 33.651070, 36.499378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390388, 33.703514, 36.710022>,  <39.591972, 33.734982, 36.836407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390388, 33.703514, 36.710022>,  <39.054413, 33.651070, 36.499378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390388, 33.703514, 36.710022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415156, 0.469711, -0.779113,
		-0.349505, 0.873030, 0.340096,
		0.839936, 0.131111, 0.526610,
		39.642368, 33.742847, 36.868004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212231, 34.325909, 36.368534>,  <39.054413, 33.651070, 36.499378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212231, 34.325909, 36.368534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535206, 34.106155, 36.454540>,  <39.728989, 33.974304, 36.506145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535206, 34.106155, 36.454540>,  <39.212231, 34.325909, 36.368534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535206, 34.106155, 36.454540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514835, 0.478180, -0.711540,
		0.288091, 0.685219, 0.668939,
		0.807433, -0.549381, 0.215015,
		39.777435, 33.941341, 36.519043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774673, 34.849567, 36.303123>,  <39.212231, 34.325909, 36.368534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774673, 34.849567, 36.303123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934464, 34.483440, 36.282658>,  <40.030338, 34.263763, 36.270378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934464, 34.483440, 36.282658>,  <39.774673, 34.849567, 36.303123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934464, 34.483440, 36.282658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628992, 0.314259, -0.711062,
		0.666924, 0.251871, 0.701265,
		0.399475, -0.915315, -0.051162,
		40.054306, 34.208847, 36.267307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498928, 35.027508, 36.307728>,  <39.774673, 34.849567, 36.303123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498928, 35.027508, 36.307728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454407, 34.651806, 36.177856>,  <40.427692, 34.426384, 36.099934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454407, 34.651806, 36.177856>,  <40.498928, 35.027508, 36.307728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454407, 34.651806, 36.177856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705479, 0.155427, -0.691478,
		0.699936, -0.306021, 0.645322,
		-0.111306, -0.939252, -0.324680,
		40.421017, 34.370029, 36.080452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205048, 34.747272, 36.256981>,  <40.498928, 35.027508, 36.307728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205048, 34.747272, 36.256981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957367, 34.551643, 36.011250>,  <40.808758, 34.434265, 35.863811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957367, 34.551643, 36.011250>,  <41.205048, 34.747272, 36.256981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957367, 34.551643, 36.011250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622826, 0.170546, -0.763546,
		0.478199, -0.855409, 0.199003,
		-0.619204, -0.489071, -0.614326,
		40.771606, 34.404922, 35.826950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667095, 34.250107, 36.007881>,  <41.205048, 34.747272, 36.256981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667095, 34.250107, 36.007881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361492, 34.286934, 35.752438>,  <41.178131, 34.309029, 35.599171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361492, 34.286934, 35.752438>,  <41.667095, 34.250107, 36.007881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361492, 34.286934, 35.752438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645145, 0.094777, -0.758160,
		-0.009276, -0.991232, -0.131807,
		-0.764005, 0.092068, -0.638609,
		41.132290, 34.314552, 35.560856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842846, 33.728363, 35.462196>,  <41.667095, 34.250107, 36.007881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842846, 33.728363, 35.462196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580200, 33.990967, 35.313675>,  <41.422615, 34.148529, 35.224564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580200, 33.990967, 35.313675>,  <41.842846, 33.728363, 35.462196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580200, 33.990967, 35.313675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641379, 0.226991, -0.732877,
		-0.396856, -0.719359, -0.570113,
		-0.656612, 0.656505, -0.371299,
		41.383217, 34.187920, 35.202286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799114, 33.607441, 34.756176>,  <41.842846, 33.728363, 35.462196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799114, 33.607441, 34.756176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659817, 33.978336, 34.811249>,  <41.576237, 34.200874, 34.844292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659817, 33.978336, 34.811249>,  <41.799114, 33.607441, 34.756176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659817, 33.978336, 34.811249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530802, 0.316114, -0.786334,
		-0.772641, -0.200757, -0.602265,
		-0.348246, 0.927237, 0.137681,
		41.555344, 34.256508, 34.852554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660454, 34.069057, 34.174904>,  <41.799114, 33.607441, 34.756176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660454, 34.069057, 34.174904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.758530, 34.281437, 34.499367>,  <41.817375, 34.408863, 34.694042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.758530, 34.281437, 34.499367>,  <41.660454, 34.069057, 34.174904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758530, 34.281437, 34.499367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817730, 0.336177, -0.467229,
		-0.520766, 0.777868, -0.351744,
		0.245194, 0.530949, 0.811155,
		41.832088, 34.440723, 34.742714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710102, 34.726906, 33.974201>,  <41.660454, 34.069057, 34.174904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710102, 34.726906, 33.974201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952366, 34.627296, 34.276505>,  <42.097725, 34.567532, 34.457886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952366, 34.627296, 34.276505>,  <41.710102, 34.726906, 33.974201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952366, 34.627296, 34.276505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788116, 0.318760, -0.526559,
		-0.109780, 0.914538, 0.389318,
		0.605658, -0.249022, 0.755756,
		42.134064, 34.552589, 34.503231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227879, 35.305717, 34.156075>,  <41.710102, 34.726906, 33.974201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227879, 35.305717, 34.156075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373837, 34.939644, 34.224541>,  <42.461411, 34.720001, 34.265621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373837, 34.939644, 34.224541>,  <42.227879, 35.305717, 34.156075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373837, 34.939644, 34.224541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778271, 0.198919, -0.595588,
		0.511023, 0.350538, 0.784843,
		0.364896, -0.915180, 0.171161,
		42.483307, 34.665089, 34.275890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873173, 35.360519, 34.428452>,  <42.227879, 35.305717, 34.156075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873173, 35.360519, 34.428452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836334, 35.019257, 34.223068>,  <42.814232, 34.814499, 34.099838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836334, 35.019257, 34.223068>,  <42.873173, 35.360519, 34.428452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836334, 35.019257, 34.223068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733644, 0.290508, -0.614305,
		0.673263, -0.433271, 0.599160,
		-0.092099, -0.853160, -0.513455,
		42.808704, 34.763309, 34.069031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479435, 34.784309, 34.443916>,  <42.873173, 35.360519, 34.428452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479435, 34.784309, 34.443916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255455, 34.839630, 34.117157>,  <43.121067, 34.872822, 33.921101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255455, 34.839630, 34.117157>,  <43.479435, 34.784309, 34.443916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255455, 34.839630, 34.117157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823083, 0.205693, -0.529364,
		0.094820, -0.968795, -0.229009,
		-0.559951, 0.138299, -0.816902,
		43.087471, 34.881119, 33.872086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219212, 34.404411, 34.209408>,  <43.479435, 34.784309, 34.443916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219212, 34.404411, 34.209408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104458, 34.046028, 34.345028>,  <44.035606, 33.830997, 34.426399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104458, 34.046028, 34.345028>,  <44.219212, 34.404411, 34.209408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.104458, 34.046028, 34.345028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747738, 0.430672, 0.505380,
		-0.598819, -0.108536, -0.793496,
		-0.286885, -0.895958, 0.339051,
		44.018391, 33.777241, 34.446743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817017, 34.622391, 34.446712>,  <44.219212, 34.404411, 34.209408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817017, 34.622391, 34.446712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.076054, 34.815216, 34.682758>,  <45.231476, 34.930912, 34.824387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.076054, 34.815216, 34.682758>,  <44.817017, 34.622391, 34.446712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.076054, 34.815216, 34.682758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720276, 0.639983, 0.267627,
		-0.248651, -0.598360, 0.761668,
		0.647592, 0.482065, 0.590117,
		45.270332, 34.959835, 34.859795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528889, 34.629219, 35.169361>,  <44.817017, 34.622391, 34.446712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528889, 34.629219, 35.169361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.756844, 34.938602, 35.058372>,  <44.893616, 35.124233, 34.991779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.756844, 34.938602, 35.058372>,  <44.528889, 34.629219, 35.169361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756844, 34.938602, 35.058372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726052, 0.632087, 0.270767,
		0.384814, 0.047152, 0.921789,
		0.569884, 0.773461, -0.277471,
		44.927807, 35.170639, 34.975132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.516647, 35.124249, 35.712627>,  <44.528889, 34.629219, 35.169361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.516647, 35.124249, 35.712627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.644161, 35.347397, 35.406120>,  <44.720669, 35.481285, 35.222218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.644161, 35.347397, 35.406120>,  <44.516647, 35.124249, 35.712627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.644161, 35.347397, 35.406120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377210, 0.816334, 0.437391,
		0.869534, 0.149610, 0.470667,
		0.318784, 0.557867, -0.766265,
		44.739796, 35.514755, 35.176243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951061, 35.790379, 35.891663>,  <44.516647, 35.124249, 35.712627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951061, 35.790379, 35.891663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721069, 35.823681, 35.566093>,  <44.583073, 35.843662, 35.370754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721069, 35.823681, 35.566093>,  <44.951061, 35.790379, 35.891663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.721069, 35.823681, 35.566093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411654, 0.830281, 0.375733,
		0.707064, 0.551092, -0.443122,
		-0.574980, 0.083254, -0.813921,
		44.548576, 35.848656, 35.321918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043507, 36.451496, 35.745766>,  <44.951061, 35.790379, 35.891663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.043507, 36.451496, 35.745766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.732880, 36.403172, 35.498428>,  <44.546505, 36.374176, 35.350025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.732880, 36.403172, 35.498428>,  <45.043507, 36.451496, 35.745766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732880, 36.403172, 35.498428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254583, 0.957922, 0.132567,
		0.576312, 0.260367, -0.774644,
		-0.776564, -0.120811, -0.618347,
		44.499912, 36.366928, 35.312923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.983742, 37.054386, 35.488918>,  <45.043507, 36.451496, 35.745766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.983742, 37.054386, 35.488918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627071, 36.925110, 35.362133>,  <44.413071, 36.847542, 35.286064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627071, 36.925110, 35.362133>,  <44.983742, 37.054386, 35.488918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627071, 36.925110, 35.362133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384939, 0.909795, 0.155228,
		0.238199, 0.260422, -0.935650,
		-0.891675, -0.323193, -0.316959,
		44.359570, 36.828152, 35.267044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574413, 37.599449, 35.069504>,  <44.983742, 37.054386, 35.488918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574413, 37.599449, 35.069504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299786, 37.336372, 35.193485>,  <44.135010, 37.178528, 35.267876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299786, 37.336372, 35.193485>,  <44.574413, 37.599449, 35.069504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299786, 37.336372, 35.193485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658695, 0.743131, 0.117801,
		-0.307815, -0.123289, -0.943425,
		-0.686565, -0.657690, 0.309956,
		44.093815, 37.139065, 35.286472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.972107, 37.751980, 34.596146>,  <44.574413, 37.599449, 35.069504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.972107, 37.751980, 34.596146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.814991, 37.546391, 34.901184>,  <43.720722, 37.423035, 35.084206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.814991, 37.546391, 34.901184>,  <43.972107, 37.751980, 34.596146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.814991, 37.546391, 34.901184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791232, 0.611499, 0.004600,
		-0.468688, -0.601580, -0.646864,
		-0.392789, -0.513976, 0.762591,
		43.697155, 37.392197, 35.129963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298466, 37.899826, 34.481056>,  <43.972107, 37.751980, 34.596146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298466, 37.899826, 34.481056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281040, 37.753750, 34.853020>,  <43.270584, 37.666103, 35.076199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281040, 37.753750, 34.853020>,  <43.298466, 37.899826, 34.481056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281040, 37.753750, 34.853020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681210, 0.691720, 0.239741,
		-0.730790, -0.623022, -0.278907,
		-0.043562, -0.365195, 0.929911,
		43.267971, 37.644192, 35.131992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589340, 37.707439, 34.553482>,  <43.298466, 37.899826, 34.481056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589340, 37.707439, 34.553482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763851, 37.780411, 34.905930>,  <42.868557, 37.824196, 35.117397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763851, 37.780411, 34.905930>,  <42.589340, 37.707439, 34.553482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763851, 37.780411, 34.905930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664999, 0.725038, 0.179154,
		-0.606164, -0.664108, 0.437637,
		0.436281, 0.182431, 0.881123,
		42.894737, 37.835140, 35.170265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997612, 37.881069, 34.960945>,  <42.589340, 37.707439, 34.553482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997612, 37.881069, 34.960945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324207, 38.019958, 35.145458>,  <42.520164, 38.103291, 35.256168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324207, 38.019958, 35.145458>,  <41.997612, 37.881069, 34.960945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324207, 38.019958, 35.145458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516826, 0.795694, 0.315852,
		-0.257370, -0.496293, 0.829128,
		0.816487, 0.347224, 0.461285,
		42.569153, 38.124126, 35.283844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788120, 38.061272, 35.639900>,  <41.997612, 37.881069, 34.960945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788120, 38.061272, 35.639900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123543, 38.267162, 35.568470>,  <42.324795, 38.390697, 35.525612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123543, 38.267162, 35.568470>,  <41.788120, 38.061272, 35.639900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123543, 38.267162, 35.568470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481916, 0.853652, 0.197574,
		0.254136, -0.079618, 0.963886,
		0.838553, 0.514723, -0.178574,
		42.375111, 38.421577, 35.514896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753437, 38.667740, 36.190685>,  <41.788120, 38.061272, 35.639900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753437, 38.667740, 36.190685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037113, 38.792442, 35.937748>,  <42.207317, 38.867264, 35.785984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037113, 38.792442, 35.937748>,  <41.753437, 38.667740, 36.190685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037113, 38.792442, 35.937748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218785, 0.949956, 0.222973,
		0.670212, -0.019782, 0.741906,
		0.709189, 0.311757, -0.632344,
		42.249870, 38.885971, 35.748043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021172, 39.215267, 36.593742>,  <41.753437, 38.667740, 36.190685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021172, 39.215267, 36.593742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137939, 39.244995, 36.212322>,  <42.208000, 39.262833, 35.983471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137939, 39.244995, 36.212322>,  <42.021172, 39.215267, 36.593742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137939, 39.244995, 36.212322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185511, 0.982443, 0.019782,
		0.938278, 0.171119, 0.300587,
		0.291925, 0.074323, -0.953549,
		42.225517, 39.267292, 35.926258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495422, 39.813396, 36.528130>,  <42.021172, 39.215267, 36.593742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495422, 39.813396, 36.528130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337921, 39.751534, 36.165684>,  <42.243420, 39.714417, 35.948215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337921, 39.751534, 36.165684>,  <42.495422, 39.813396, 36.528130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337921, 39.751534, 36.165684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246380, 0.967433, -0.058061,
		0.885580, 0.200386, -0.419039,
		-0.393757, -0.154660, -0.906110,
		42.219795, 39.705135, 35.893852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777782, 40.326870, 36.071720>,  <42.495422, 39.813396, 36.528130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777782, 40.326870, 36.071720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461060, 40.224552, 35.849869>,  <42.271027, 40.163162, 35.716759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461060, 40.224552, 35.849869>,  <42.777782, 40.326870, 36.071720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461060, 40.224552, 35.849869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067002, 0.938973, -0.337402,
		0.607083, -0.229997, -0.760626,
		-0.791809, -0.255794, -0.554624,
		42.223518, 40.147816, 35.683483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889057, 40.570667, 35.314785>,  <42.777782, 40.326870, 36.071720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889057, 40.570667, 35.314785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498272, 40.497574, 35.358864>,  <42.263802, 40.453716, 35.385311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498272, 40.497574, 35.358864>,  <42.889057, 40.570667, 35.314785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498272, 40.497574, 35.358864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213335, 0.848317, -0.484610,
		-0.004931, -0.496958, -0.867761,
		-0.976966, -0.182734, 0.110201,
		42.205181, 40.442753, 35.391926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564465, 40.755516, 34.670792>,  <42.889057, 40.570667, 35.314785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564465, 40.755516, 34.670792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286682, 40.792500, 34.956219>,  <42.120014, 40.814690, 35.127476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286682, 40.792500, 34.956219>,  <42.564465, 40.755516, 34.670792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286682, 40.792500, 34.956219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349756, 0.823288, -0.447065,
		-0.628813, -0.560042, -0.539396,
		-0.694453, 0.092463, 0.713572,
		42.078346, 40.820240, 35.170292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029026, 41.078087, 34.444321>,  <42.564465, 40.755516, 34.670792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029026, 41.078087, 34.444321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882347, 41.137623, 34.811661>,  <41.794338, 41.173344, 35.032066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882347, 41.137623, 34.811661>,  <42.029026, 41.078087, 34.444321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882347, 41.137623, 34.811661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273863, 0.926111, -0.259454,
		-0.889117, -0.346646, -0.298844,
		-0.366701, 0.148843, 0.918355,
		41.772335, 41.182274, 35.087166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354324, 41.356308, 34.354340>,  <42.029026, 41.078087, 34.444321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354324, 41.356308, 34.354340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448936, 41.449715, 34.731598>,  <41.505703, 41.505760, 34.957954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448936, 41.449715, 34.731598>,  <41.354324, 41.356308, 34.354340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448936, 41.449715, 34.731598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287553, 0.944029, -0.161622,
		-0.928098, -0.232976, 0.290441,
		0.236531, 0.233518, 0.943145,
		41.519897, 41.519772, 35.014542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752708, 41.560730, 34.686470>,  <41.354324, 41.356308, 34.354340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752708, 41.560730, 34.686470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066872, 41.741177, 34.855999>,  <41.255371, 41.849445, 34.957718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066872, 41.741177, 34.855999>,  <40.752708, 41.560730, 34.686470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066872, 41.741177, 34.855999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358341, 0.889688, -0.282925,
		-0.504701, 0.070339, 0.860424,
		0.785410, 0.451118, 0.423821,
		41.302494, 41.876511, 34.983147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541359, 42.115623, 34.936550>,  <40.752708, 41.560730, 34.686470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541359, 42.115623, 34.936550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927670, 42.214153, 34.904060>,  <41.159458, 42.273270, 34.884567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927670, 42.214153, 34.904060>,  <40.541359, 42.115623, 34.936550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927670, 42.214153, 34.904060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258204, 0.883461, -0.390932,
		-0.024540, 0.398525, 0.916829,
		0.965779, 0.246323, -0.081220,
		41.217403, 42.288052, 34.879696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560593, 42.774422, 35.138958>,  <40.541359, 42.115623, 34.936550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560593, 42.774422, 35.138958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899353, 42.714859, 34.934769>,  <41.102612, 42.679123, 34.812256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899353, 42.714859, 34.934769>,  <40.560593, 42.774422, 35.138958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899353, 42.714859, 34.934769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196089, 0.804878, -0.560107,
		0.494268, 0.574455, 0.652457,
		0.846905, -0.148903, -0.510470,
		41.153423, 42.670189, 34.781628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497433, 43.148220, 34.532543>,  <40.560593, 42.774422, 35.138958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497433, 43.148220, 34.532543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893257, 43.093834, 34.513451>,  <41.130753, 43.061203, 34.501995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893257, 43.093834, 34.513451>,  <40.497433, 43.148220, 34.532543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893257, 43.093834, 34.513451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076970, 0.778753, -0.622591,
		0.121816, 0.612420, 0.781091,
		0.989564, -0.135962, -0.047727,
		41.190125, 43.053047, 34.499134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596939, 43.847645, 34.351894>,  <40.497433, 43.148220, 34.532543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596939, 43.847645, 34.351894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933266, 43.631214, 34.345387>,  <41.135063, 43.501354, 34.341480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933266, 43.631214, 34.345387>,  <40.596939, 43.847645, 34.351894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933266, 43.631214, 34.345387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442933, 0.704965, -0.553927,
		0.311187, 0.458543, 0.832406,
		0.840817, -0.541075, -0.016272,
		41.185513, 43.468891, 34.340504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143356, 44.114922, 34.708576>,  <40.596939, 43.847645, 34.351894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143356, 44.114922, 34.708576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255787, 43.915112, 34.380802>,  <41.323246, 43.795227, 34.184139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255787, 43.915112, 34.380802>,  <41.143356, 44.114922, 34.708576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255787, 43.915112, 34.380802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311744, 0.855077, -0.414318,
		0.907640, -0.138998, 0.396067,
		0.281078, -0.499523, -0.819434,
		41.340111, 43.765255, 34.134972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862965, 44.329197, 34.638374>,  <41.143356, 44.114922, 34.708576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862965, 44.329197, 34.638374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649349, 44.218029, 34.318985>,  <41.521179, 44.151329, 34.127350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649349, 44.218029, 34.318985>,  <41.862965, 44.329197, 34.638374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649349, 44.218029, 34.318985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275232, 0.835834, -0.475004,
		0.799408, -0.473435, -0.369872,
		-0.534035, -0.277921, -0.798477,
		41.489140, 44.134651, 34.079441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324265, 44.402969, 34.029285>,  <41.862965, 44.329197, 34.638374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324265, 44.402969, 34.029285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933510, 44.431698, 33.948753>,  <41.699059, 44.448936, 33.900436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933510, 44.431698, 33.948753>,  <42.324265, 44.402969, 34.029285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933510, 44.431698, 33.948753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179767, 0.785629, -0.592005,
		0.115650, -0.614515, -0.780382,
		-0.976887, 0.071822, -0.201327,
		41.640442, 44.453243, 33.888355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266140, 44.472027, 33.264942>,  <42.324265, 44.402969, 34.029285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266140, 44.472027, 33.264942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972435, 44.656887, 33.463852>,  <41.796211, 44.767803, 33.583199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972435, 44.656887, 33.463852>,  <42.266140, 44.472027, 33.264942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972435, 44.656887, 33.463852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253864, 0.866281, -0.430244,
		-0.629618, -0.189670, -0.753397,
		-0.734258, 0.462150, 0.497276,
		41.752159, 44.795532, 33.613033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567421, 43.930260, 32.975067>,  <42.266140, 44.472027, 33.264942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567421, 43.930260, 32.975067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842148, 44.156792, 33.157303>,  <43.006985, 44.292709, 33.266644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842148, 44.156792, 33.157303>,  <42.567421, 43.930260, 32.975067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842148, 44.156792, 33.157303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622640, -0.781805, 0.033189,
		0.374976, 0.260872, -0.889572,
		0.686814, 0.566328, 0.455587,
		43.048191, 44.326691, 33.293980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219090, 44.121090, 32.648678>,  <42.567421, 43.930260, 32.975067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.219090, 44.121090, 32.648678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253265, 44.068577, 33.043739>,  <43.273769, 44.037067, 33.280777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253265, 44.068577, 33.043739>,  <43.219090, 44.121090, 32.648678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253265, 44.068577, 33.043739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486841, -0.859384, -0.156347,
		0.869302, 0.494190, -0.009511,
		0.085438, -0.131283, 0.987656,
		43.278896, 44.029190, 33.340034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.979042, 43.928680, 32.933197>,  <43.219090, 44.121090, 32.648678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.979042, 43.928680, 32.933197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700539, 43.751984, 33.159500>,  <43.533436, 43.645966, 33.295284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700539, 43.751984, 33.159500>,  <43.979042, 43.928680, 32.933197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700539, 43.751984, 33.159500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567950, -0.821023, 0.057916,
		0.438919, 0.361649, 0.822533,
		-0.696263, -0.441737, 0.565761,
		43.491661, 43.619461, 33.329227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.331470, 43.529541, 33.436134>,  <43.979042, 43.928680, 32.933197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.331470, 43.529541, 33.436134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968437, 43.377678, 33.364407>,  <43.750618, 43.286560, 33.321369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968437, 43.377678, 33.364407>,  <44.331470, 43.529541, 33.436134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.968437, 43.377678, 33.364407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376849, -0.924879, 0.050841,
		-0.185153, -0.021435, 0.982476,
		-0.907581, -0.379658, -0.179322,
		43.696163, 43.263779, 33.310612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.254414, 42.932339, 33.814888>,  <44.331470, 43.529541, 33.436134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.254414, 42.932339, 33.814888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943901, 42.844421, 33.578556>,  <43.757595, 42.791672, 33.436756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943901, 42.844421, 33.578556>,  <44.254414, 42.932339, 33.814888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943901, 42.844421, 33.578556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261991, -0.964958, 0.014748,
		-0.573364, -0.143343, 0.806664,
		-0.776282, -0.219795, -0.590827,
		43.711018, 42.778484, 33.401310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883251, 42.287228, 34.112541>,  <44.254414, 42.932339, 33.814888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883251, 42.287228, 34.112541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785816, 42.321308, 33.726089>,  <43.727356, 42.341755, 33.494217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785816, 42.321308, 33.726089>,  <43.883251, 42.287228, 34.112541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.785816, 42.321308, 33.726089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269896, -0.950833, -0.151898,
		-0.931570, -0.297755, 0.208613,
		-0.243585, 0.085200, -0.966130,
		43.712742, 42.346867, 33.436249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289902, 41.896698, 33.942566>,  <43.883251, 42.287228, 34.112541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289902, 41.896698, 33.942566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476555, 41.951668, 33.593082>,  <43.588547, 41.984650, 33.383392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476555, 41.951668, 33.593082>,  <43.289902, 41.896698, 33.942566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476555, 41.951668, 33.593082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159884, -0.984687, -0.069486,
		-0.869878, -0.107267, -0.481462,
		0.466636, 0.137423, -0.873708,
		43.616547, 41.992893, 33.330971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026958, 41.325806, 33.630299>,  <43.289902, 41.896698, 33.942566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026958, 41.325806, 33.630299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335541, 41.462791, 33.415794>,  <43.520691, 41.544983, 33.287090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335541, 41.462791, 33.415794>,  <43.026958, 41.325806, 33.630299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335541, 41.462791, 33.415794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236774, -0.936785, -0.257628,
		-0.590588, 0.071776, -0.803774,
		0.771455, 0.342465, -0.536260,
		43.566978, 41.565533, 33.254917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033043, 40.965084, 33.035027>,  <43.026958, 41.325806, 33.630299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033043, 40.965084, 33.035027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400928, 41.113708, 33.085739>,  <43.621658, 41.202885, 33.116169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400928, 41.113708, 33.085739>,  <43.033043, 40.965084, 33.035027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.400928, 41.113708, 33.085739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391271, -0.894021, -0.218250,
		0.032256, 0.250335, -0.967622,
		0.919710, 0.371563, 0.126786,
		43.676842, 41.225178, 33.123775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402214, 40.866974, 32.459404>,  <43.033043, 40.965084, 33.035027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402214, 40.866974, 32.459404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693867, 40.928024, 32.726261>,  <43.868858, 40.964657, 32.886375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693867, 40.928024, 32.726261>,  <43.402214, 40.866974, 32.459404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693867, 40.928024, 32.726261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454349, -0.836954, -0.305084,
		0.511801, 0.525559, -0.679594,
		0.729128, 0.152631, 0.667141,
		43.912605, 40.973812, 32.926403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914467, 40.471191, 32.120510>,  <43.402214, 40.866974, 32.459404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914467, 40.471191, 32.120510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038513, 40.534260, 32.495522>,  <44.112942, 40.572102, 32.720528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038513, 40.534260, 32.495522>,  <43.914467, 40.471191, 32.120510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038513, 40.534260, 32.495522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543716, -0.838369, -0.038856,
		0.779871, 0.521801, -0.345723,
		0.310118, 0.157673, 0.937532,
		44.131550, 40.581562, 32.776783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615528, 40.329136, 32.074680>,  <43.914467, 40.471191, 32.120510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615528, 40.329136, 32.074680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570728, 40.301369, 32.471191>,  <44.543846, 40.284706, 32.709099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570728, 40.301369, 32.471191>,  <44.615528, 40.329136, 32.074680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570728, 40.301369, 32.471191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578412, -0.815703, 0.008227,
		0.808019, 0.574290, 0.131515,
		-0.112002, -0.069422, 0.991280,
		44.537128, 40.280540, 32.768574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.251724, 40.173870, 32.317059>,  <44.615528, 40.329136, 32.074680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.251724, 40.173870, 32.317059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998100, 40.045593, 32.598518>,  <44.845928, 39.968628, 32.767395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998100, 40.045593, 32.598518>,  <45.251724, 40.173870, 32.317059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.998100, 40.045593, 32.598518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562659, -0.815538, 0.135321,
		0.530457, 0.481717, 0.697541,
		-0.634058, -0.320696, 0.703651,
		44.807884, 39.949383, 32.809612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.658844, 40.032982, 32.881859>,  <45.251724, 40.173870, 32.317059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.658844, 40.032982, 32.881859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321758, 39.825233, 32.938557>,  <45.119507, 39.700584, 32.972576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321758, 39.825233, 32.938557>,  <45.658844, 40.032982, 32.881859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321758, 39.825233, 32.938557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538188, -0.805924, 0.246658,
		-0.013868, 0.284148, 0.958680,
		-0.842710, -0.519371, 0.141749,
		45.068947, 39.669422, 32.981083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.908665, 39.649311, 33.326233>,  <45.658844, 40.032982, 32.881859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.908665, 39.649311, 33.326233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.564617, 39.466286, 33.236046>,  <45.358189, 39.356472, 33.181934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.564617, 39.466286, 33.236046>,  <45.908665, 39.649311, 33.326233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.564617, 39.466286, 33.236046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390684, -0.875111, 0.285565,
		-0.327976, 0.157532, 0.931459,
		-0.860115, -0.457564, -0.225470,
		45.306583, 39.329018, 33.168404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.729778, 39.073154, 33.901440>,  <45.908665, 39.649311, 33.326233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.729778, 39.073154, 33.901440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.516014, 38.979416, 33.576603>,  <45.387756, 38.923172, 33.381702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.516014, 38.979416, 33.576603>,  <45.729778, 39.073154, 33.901440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516014, 38.979416, 33.576603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151751, -0.971786, 0.180567,
		-0.831490, -0.026738, 0.554896,
		-0.534412, -0.234345, -0.812087,
		45.355690, 38.909111, 33.332977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.271240, 38.453629, 34.115974>,  <45.729778, 39.073154, 33.901440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.271240, 38.453629, 34.115974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.346680, 38.419174, 33.724667>,  <45.391945, 38.398502, 33.489883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.346680, 38.419174, 33.724667>,  <45.271240, 38.453629, 34.115974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.346680, 38.419174, 33.724667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384971, -0.909932, 0.154338,
		-0.903452, -0.405713, -0.138455,
		0.188602, -0.086136, -0.978269,
		45.403259, 38.393333, 33.431187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.932220, 37.895557, 33.914848>,  <45.271240, 38.453629, 34.115974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.932220, 37.895557, 33.914848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202560, 37.972240, 33.630180>,  <45.364765, 38.018250, 33.459377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202560, 37.972240, 33.630180>,  <44.932220, 37.895557, 33.914848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202560, 37.972240, 33.630180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425595, -0.889842, 0.164468,
		-0.601748, -0.414039, -0.682986,
		0.675846, 0.191707, -0.711674,
		45.405315, 38.029751, 33.416679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.074081, 37.243717, 33.541233>,  <44.932220, 37.895557, 33.914848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.074081, 37.243717, 33.541233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392017, 37.463432, 33.438076>,  <45.582779, 37.595261, 33.376183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392017, 37.463432, 33.438076>,  <45.074081, 37.243717, 33.541233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392017, 37.463432, 33.438076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598035, -0.781121, 0.179454,
		-0.102874, -0.296867, -0.949361,
		0.794840, 0.549290, -0.257894,
		45.630470, 37.628220, 33.360706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.453259, 36.821098, 33.083355>,  <45.074081, 37.243717, 33.541233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.453259, 36.821098, 33.083355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.708374, 37.086845, 33.239220>,  <45.861443, 37.246296, 33.332741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.708374, 37.086845, 33.239220>,  <45.453259, 36.821098, 33.083355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.708374, 37.086845, 33.239220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669403, -0.728369, 0.146208,
		0.380956, 0.167593, -0.909277,
		0.637786, 0.664372, 0.389665,
		45.899712, 37.286156, 33.356117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.239002, 36.579090, 32.803574>,  <45.453259, 36.821098, 33.083355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.239002, 36.579090, 32.803574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276108, 36.834110, 33.109497>,  <46.298370, 36.987122, 33.293049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276108, 36.834110, 33.109497>,  <46.239002, 36.579090, 32.803574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.276108, 36.834110, 33.109497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704809, -0.584609, 0.401842,
		0.703305, 0.501765, -0.503581,
		0.092768, 0.637546, 0.764807,
		46.303940, 37.025375, 33.338940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.863251, 36.549988, 32.951313>,  <46.239002, 36.579090, 32.803574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.863251, 36.549988, 32.951313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.751461, 36.736328, 33.287140>,  <46.684387, 36.848133, 33.488636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.751461, 36.736328, 33.287140>,  <46.863251, 36.549988, 32.951313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.751461, 36.736328, 33.287140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762616, -0.423570, 0.488882,
		0.583364, 0.776897, -0.236894,
		-0.279470, 0.465855, 0.839569,
		46.667622, 36.876083, 33.539009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.436756, 36.842724, 33.207787>,  <46.863251, 36.549988, 32.951313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.436756, 36.842724, 33.207787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.178745, 36.773018, 33.505394>,  <47.023937, 36.731194, 33.683960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.178745, 36.773018, 33.505394>,  <47.436756, 36.842724, 33.207787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.178745, 36.773018, 33.505394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683339, -0.567336, 0.459541,
		0.342031, 0.804837, 0.485028,
		-0.645029, -0.174262, 0.744023,
		46.985237, 36.720741, 33.728600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.751133, 37.032890, 33.794415>,  <47.436756, 36.842724, 33.207787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.751133, 37.032890, 33.794415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.476452, 36.757877, 33.888855>,  <47.311642, 36.592869, 33.945518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.476452, 36.757877, 33.888855>,  <47.751133, 37.032890, 33.794415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.476452, 36.757877, 33.888855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706526, -0.554815, 0.439320,
		-0.171056, 0.468490, 0.866751,
		-0.686703, -0.687530, 0.236096,
		47.270439, 36.551617, 33.959682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.748131, 36.898670, 34.524078>,  <47.751133, 37.032890, 33.794415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.748131, 36.898670, 34.524078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.655346, 36.578785, 34.302570>,  <47.599674, 36.386856, 34.169666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.655346, 36.578785, 34.302570>,  <47.748131, 36.898670, 34.524078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.655346, 36.578785, 34.302570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674480, -0.542442, 0.500832,
		-0.700908, -0.257332, 0.665213,
		-0.231959, -0.799710, -0.553768,
		47.585758, 36.338871, 34.136440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.790897, 36.217781, 34.767857>,  <47.748131, 36.898670, 34.524078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.790897, 36.217781, 34.767857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.628658, 36.035652, 34.450829>,  <47.531315, 35.926376, 34.260612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.628658, 36.035652, 34.450829>,  <47.790897, 36.217781, 34.767857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.628658, 36.035652, 34.450829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049043, -0.876692, 0.478546,
		-0.912734, 0.155229, 0.377917,
		-0.405601, -0.455319, -0.792573,
		47.506977, 35.899055, 34.213055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.980965, 35.589092, 34.982334>,  <47.790897, 36.217781, 34.767857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.980965, 35.589092, 34.982334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.762039, 35.474686, 34.667721>,  <47.630684, 35.406040, 34.478951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.762039, 35.474686, 34.667721>,  <47.980965, 35.589092, 34.982334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.762039, 35.474686, 34.667721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209740, -0.956677, 0.201937,
		-0.810218, -0.054444, 0.583594,
		-0.547317, -0.286016, -0.786536,
		47.597843, 35.388882, 34.431759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.563759, 34.995342, 35.224289>,  <47.980965, 35.589092, 34.982334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.563759, 34.995342, 35.224289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656101, 34.969437, 34.835957>,  <47.711506, 34.953892, 34.602959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656101, 34.969437, 34.835957>,  <47.563759, 34.995342, 35.224289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.656101, 34.969437, 34.835957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244116, -0.962013, 0.122224,
		-0.941867, -0.265211, -0.206276,
		0.230855, -0.064763, -0.970830,
		47.725357, 34.950008, 34.544708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.802067, 38.290695, 43.510754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.411236, 38.236839, 43.444790>,  <36.176739, 38.204525, 43.405212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.411236, 38.236839, 43.444790>,  <36.802067, 38.290695, 43.510754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411236, 38.236839, 43.444790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143201, 0.157526, -0.977077,
		0.157526, -0.978294, -0.134635,
		0.977077, 0.134635, 0.164907,
		36.118114, 38.196449, 43.395317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690002, 37.786285, 43.002293>,  <36.802067, 38.290695, 43.510754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690002, 37.786285, 43.002293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.371159, 38.027748, 42.996452>,  <36.179852, 38.172626, 42.992947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.371159, 38.027748, 42.996452>,  <36.690002, 37.786285, 43.002293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371159, 38.027748, 42.996452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078231, 0.079262, -0.993780,
		-0.598746, -0.793293, -0.110405,
		-0.797109, 0.603659, -0.014603,
		36.132027, 38.208847, 42.992073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408157, 37.642910, 42.374763>,  <36.690002, 37.786285, 43.002293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408157, 37.642910, 42.374763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197838, 37.974087, 42.452782>,  <36.071644, 38.172794, 42.499592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197838, 37.974087, 42.452782>,  <36.408157, 37.642910, 42.374763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197838, 37.974087, 42.452782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055097, 0.195673, -0.979120,
		-0.848820, -0.525570, -0.057268,
		-0.525803, 0.827942, 0.195049,
		36.040096, 38.222469, 42.511295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839733, 37.594177, 42.033241>,  <36.408157, 37.642910, 42.374763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839733, 37.594177, 42.033241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.884632, 37.988697, 42.081608>,  <35.911572, 38.225407, 42.110630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.884632, 37.988697, 42.081608>,  <35.839733, 37.594177, 42.033241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884632, 37.988697, 42.081608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067009, 0.113897, -0.991230,
		-0.991418, 0.119370, -0.053305,
		0.112252, 0.986295, 0.120919,
		35.918308, 38.284584, 42.117882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286045, 37.922951, 41.623760>,  <35.839733, 37.594177, 42.033241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286045, 37.922951, 41.623760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.560429, 38.208389, 41.680683>,  <35.725060, 38.379650, 41.714836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.560429, 38.208389, 41.680683>,  <35.286045, 37.922951, 41.623760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560429, 38.208389, 41.680683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091242, 0.278383, -0.956126,
		-0.721901, 0.642875, 0.256068,
		0.685955, 0.713593, 0.142308,
		35.766216, 38.422466, 41.723377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033134, 38.511368, 41.211174>,  <35.286045, 37.922951, 41.623760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033134, 38.511368, 41.211174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.422150, 38.573147, 41.280811>,  <35.655560, 38.610214, 41.322594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.422150, 38.573147, 41.280811>,  <35.033134, 38.511368, 41.211174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422150, 38.573147, 41.280811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130961, 0.255181, -0.957983,
		-0.192383, 0.954478, 0.227948,
		0.972542, 0.154447, 0.174092,
		35.713913, 38.619480, 41.333038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323071, 39.117226, 40.698399>,  <35.033134, 38.511368, 41.211174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323071, 39.117226, 40.698399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.684753, 38.987885, 40.810009>,  <35.901764, 38.910282, 40.876976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.684753, 38.987885, 40.810009>,  <35.323071, 39.117226, 40.698399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684753, 38.987885, 40.810009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337212, 0.139577, -0.931024,
		0.262101, 0.935929, 0.235243,
		0.904208, -0.323349, 0.279024,
		35.956017, 38.890881, 40.893715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938206, 39.610310, 40.544197>,  <35.323071, 39.117226, 40.698399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938206, 39.610310, 40.544197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.105076, 39.246780, 40.545315>,  <36.205196, 39.028664, 40.545986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.105076, 39.246780, 40.545315>,  <35.938206, 39.610310, 40.544197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105076, 39.246780, 40.545315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394624, 0.178367, -0.901364,
		0.818681, 0.377128, 0.433053,
		0.417172, -0.908823, 0.002798,
		36.230228, 38.974133, 40.546154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716629, 39.672707, 40.326019>,  <35.938206, 39.610310, 40.544197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716629, 39.672707, 40.326019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.576588, 39.303417, 40.262665>,  <36.492561, 39.081844, 40.224651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.576588, 39.303417, 40.262665>,  <36.716629, 39.672707, 40.326019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576588, 39.303417, 40.262665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334155, 0.034867, -0.941873,
		0.875082, -0.382679, 0.296292,
		-0.350105, -0.923223, -0.158386,
		36.471558, 39.026451, 40.215149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028015, 39.478451, 39.704708>,  <36.716629, 39.672707, 40.326019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028015, 39.478451, 39.704708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.782333, 39.163818, 39.730148>,  <36.634926, 38.975040, 39.745411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.782333, 39.163818, 39.730148>,  <37.028015, 39.478451, 39.704708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782333, 39.163818, 39.730148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152032, -0.197029, -0.968538,
		0.774365, -0.585209, 0.240601,
		-0.614202, -0.786581, 0.063602,
		36.598072, 38.927845, 39.749229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437614, 38.864189, 39.668530>,  <37.028015, 39.478451, 39.704708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437614, 38.864189, 39.668530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.066807, 38.790295, 39.537994>,  <36.844322, 38.745956, 39.459671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.066807, 38.790295, 39.537994>,  <37.437614, 38.864189, 39.668530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066807, 38.790295, 39.537994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374155, -0.397115, -0.838038,
		0.025225, -0.898983, 0.437256,
		-0.927023, -0.184741, -0.326341,
		36.788700, 38.734871, 39.440090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474525, 38.283459, 39.326424>,  <37.437614, 38.864189, 39.668530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474525, 38.283459, 39.326424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.111763, 38.377327, 39.186451>,  <36.894108, 38.433647, 39.102467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.111763, 38.377327, 39.186451>,  <37.474525, 38.283459, 39.326424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111763, 38.377327, 39.186451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265218, -0.327393, -0.906903,
		-0.327393, -0.915282, 0.234674,
		0.906903, -0.234674, 0.349935,
		36.839691, 38.447731, 39.081470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231686, 37.735291, 39.072067>,  <37.474525, 38.283459, 39.326424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231686, 37.735291, 39.072067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023327, 38.023014, 38.888214>,  <36.898312, 38.195648, 38.777905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023327, 38.023014, 38.888214>,  <37.231686, 37.735291, 39.072067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023327, 38.023014, 38.888214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197941, -0.421988, -0.884729,
		-0.830356, -0.551828, 0.077429,
		-0.520892, 0.719313, -0.459630,
		36.867058, 38.238808, 38.750324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741959, 37.473030, 38.594612>,  <37.231686, 37.735291, 39.072067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741959, 37.473030, 38.594612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.797329, 37.837791, 38.440067>,  <36.830551, 38.056648, 38.347340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.797329, 37.837791, 38.440067>,  <36.741959, 37.473030, 38.594612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797329, 37.837791, 38.440067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025740, -0.386672, -0.921858,
		-0.990038, 0.137557, -0.030054,
		0.138429, 0.911901, -0.386361,
		36.838856, 38.111362, 38.324158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198864, 37.637112, 38.045883>,  <36.741959, 37.473030, 38.594612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198864, 37.637112, 38.045883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451218, 37.933121, 37.952633>,  <36.602631, 38.110725, 37.896683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451218, 37.933121, 37.952633>,  <36.198864, 37.637112, 38.045883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451218, 37.933121, 37.952633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216451, -0.120676, -0.968807,
		-0.745075, 0.661664, 0.084047,
		0.630882, 0.740026, -0.233130,
		36.640484, 38.155128, 37.882694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810390, 37.963467, 37.551754>,  <36.198864, 37.637112, 38.045883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810390, 37.963467, 37.551754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199982, 38.035221, 37.496338>,  <36.433735, 38.078274, 37.463089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199982, 38.035221, 37.496338>,  <35.810390, 37.963467, 37.551754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199982, 38.035221, 37.496338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102627, -0.195968, -0.975225,
		-0.202093, 0.964063, -0.172458,
		0.973974, 0.179387, -0.138542,
		36.492172, 38.089039, 37.454777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843666, 38.469704, 37.087753>,  <35.810390, 37.963467, 37.551754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843666, 38.469704, 37.087753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.203510, 38.298569, 37.052773>,  <36.419418, 38.195889, 37.031784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.203510, 38.298569, 37.052773>,  <35.843666, 38.469704, 37.087753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203510, 38.298569, 37.052773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160570, -0.137845, -0.977352,
		0.406095, 0.893281, -0.192706,
		0.899613, -0.427840, -0.087456,
		36.473392, 38.170216, 37.026535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239864, 38.723553, 36.442261>,  <35.843666, 38.469704, 37.087753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239864, 38.723553, 36.442261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.394566, 38.365833, 36.532291>,  <36.487385, 38.151203, 36.586311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.394566, 38.365833, 36.532291>,  <36.239864, 38.723553, 36.442261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394566, 38.365833, 36.532291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030114, -0.256186, -0.966158,
		0.921693, 0.366883, -0.126011,
		0.386749, -0.894296, 0.225076,
		36.510590, 38.097546, 36.599815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632908, 38.507011, 35.814617>,  <36.239864, 38.723553, 36.442261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632908, 38.507011, 35.814617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.587944, 38.160854, 36.009945>,  <36.560966, 37.953159, 36.127144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.587944, 38.160854, 36.009945>,  <36.632908, 38.507011, 35.814617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587944, 38.160854, 36.009945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023716, -0.493633, -0.869347,
		0.993379, -0.086144, 0.076014,
		-0.112412, -0.865393, 0.488322,
		36.554222, 37.901237, 36.156441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115715, 38.106583, 35.539391>,  <36.632908, 38.507011, 35.814617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115715, 38.106583, 35.539391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868706, 37.835770, 35.699539>,  <36.720501, 37.673283, 35.795628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868706, 37.835770, 35.699539>,  <37.115715, 38.106583, 35.539391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868706, 37.835770, 35.699539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008033, -0.514423, -0.857499,
		0.786512, -0.526309, 0.323106,
		-0.617522, -0.677029, 0.400372,
		36.683449, 37.632660, 35.819653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316525, 37.299896, 35.469456>,  <37.115715, 38.106583, 35.539391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316525, 37.299896, 35.469456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920738, 37.357529, 35.474972>,  <36.683266, 37.392109, 35.478279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920738, 37.357529, 35.474972>,  <37.316525, 37.299896, 35.469456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920738, 37.357529, 35.474972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092682, -0.557565, -0.824943,
		-0.111171, -0.817535, 0.565047,
		-0.989470, 0.144079, 0.013786,
		36.623898, 37.400753, 35.479107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035324, 37.011665, 35.636402>,  <37.316525, 37.299896, 35.469456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035324, 37.011665, 35.636402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.346478, 36.797539, 35.504745>,  <38.533169, 36.669064, 35.425751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.346478, 36.797539, 35.504745>,  <38.035324, 37.011665, 35.636402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346478, 36.797539, 35.504745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037017, -0.483824, 0.874382,
		-0.627321, -0.692348, -0.356541,
		0.777880, -0.535320, -0.329142,
		38.579842, 36.636944, 35.406002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904099, 36.348732, 35.645031>,  <38.035324, 37.011665, 35.636402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904099, 36.348732, 35.645031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.299416, 36.381165, 35.696716>,  <38.536606, 36.400623, 35.727726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.299416, 36.381165, 35.696716>,  <37.904099, 36.348732, 35.645031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299416, 36.381165, 35.696716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085547, -0.406703, 0.909546,
		0.126299, -0.909955, -0.395007,
		0.988297, 0.081083, 0.129210,
		38.595905, 36.405491, 35.735477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046898, 35.839348, 36.157356>,  <37.904099, 36.348732, 35.645031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046898, 35.839348, 36.157356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.397064, 36.032654, 36.161308>,  <38.607166, 36.148636, 36.163681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.397064, 36.032654, 36.161308>,  <38.046898, 35.839348, 36.157356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397064, 36.032654, 36.161308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089949, -0.182960, 0.978997,
		0.474924, -0.856143, -0.203635,
		0.875418, 0.483266, 0.009883,
		38.659691, 36.177635, 36.164272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621391, 35.398293, 36.525482>,  <38.046898, 35.839348, 36.157356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621391, 35.398293, 36.525482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.693130, 35.791012, 36.550484>,  <38.736176, 36.026642, 36.565483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.693130, 35.791012, 36.550484>,  <38.621391, 35.398293, 36.525482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693130, 35.791012, 36.550484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031721, -0.069270, 0.997093,
		0.983273, -0.176848, -0.043568,
		0.179352, 0.981798, 0.062502,
		38.746937, 36.085552, 36.569233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077606, 35.422321, 37.051880>,  <38.621391, 35.398293, 36.525482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077606, 35.422321, 37.051880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.964378, 35.803547, 37.008896>,  <38.896442, 36.032280, 36.983105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.964378, 35.803547, 37.008896>,  <39.077606, 35.422321, 37.051880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964378, 35.803547, 37.008896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034417, 0.122059, 0.991926,
		0.958483, 0.277082, -0.067353,
		-0.283065, 0.953062, -0.107455,
		38.879459, 36.089466, 36.976658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499859, 35.842030, 37.522179>,  <39.077606, 35.422321, 37.051880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499859, 35.842030, 37.522179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.159416, 36.043968, 37.464577>,  <38.955151, 36.165131, 37.430016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.159416, 36.043968, 37.464577>,  <39.499859, 35.842030, 37.522179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159416, 36.043968, 37.464577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013013, 0.253924, 0.967137,
		0.524824, 0.825014, -0.209549,
		-0.851111, 0.504850, -0.144001,
		38.904083, 36.195423, 37.421375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629974, 36.538601, 37.753807>,  <39.499859, 35.842030, 37.522179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629974, 36.538601, 37.753807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.237701, 36.461353, 37.741352>,  <39.002338, 36.415005, 37.733879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.237701, 36.461353, 37.741352>,  <39.629974, 36.538601, 37.753807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237701, 36.461353, 37.741352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057304, 0.131409, 0.989671,
		-0.187033, 0.972336, -0.139937,
		-0.980681, -0.193119, -0.031141,
		38.943497, 36.403416, 37.732010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278744, 36.982037, 38.274166>,  <39.629974, 36.538601, 37.753807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278744, 36.982037, 38.274166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.009941, 36.696877, 38.193981>,  <38.848660, 36.525780, 38.145870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.009941, 36.696877, 38.193981>,  <39.278744, 36.982037, 38.274166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009941, 36.696877, 38.193981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232387, -0.054014, 0.971122,
		-0.703138, 0.699186, -0.129371,
		-0.672007, -0.712897, -0.200461,
		38.808338, 36.483009, 38.133842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725231, 37.222958, 38.589520>,  <39.278744, 36.982037, 38.274166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725231, 37.222958, 38.589520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.637234, 36.837864, 38.526608>,  <38.584435, 36.606808, 38.488861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.637234, 36.837864, 38.526608>,  <38.725231, 37.222958, 38.589520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637234, 36.837864, 38.526608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366042, -0.067974, 0.928112,
		-0.904220, 0.261752, -0.337449,
		-0.219998, -0.962738, -0.157276,
		38.571236, 36.549042, 38.479424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973057, 37.118214, 38.778465>,  <38.725231, 37.222958, 38.589520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973057, 37.118214, 38.778465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.190186, 36.785172, 38.822495>,  <38.320461, 36.585346, 38.848911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.190186, 36.785172, 38.822495>,  <37.973057, 37.118214, 38.778465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190186, 36.785172, 38.822495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438659, -0.169304, 0.882561,
		-0.716188, -0.527358, -0.457131,
		0.542820, -0.832604, 0.110077,
		38.353031, 36.535389, 38.855518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507488, 36.551777, 39.037148>,  <37.973057, 37.118214, 38.778465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507488, 36.551777, 39.037148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870739, 36.432213, 39.154419>,  <38.088692, 36.360474, 39.224781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870739, 36.432213, 39.154419>,  <37.507488, 36.551777, 39.037148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870739, 36.432213, 39.154419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373446, -0.261682, 0.889978,
		-0.189301, -0.917702, -0.349267,
		0.908132, -0.298906, 0.293175,
		38.143177, 36.342541, 39.242371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320217, 36.191338, 39.581326>,  <37.507488, 36.551777, 39.037148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320217, 36.191338, 39.581326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.719608, 36.174881, 39.596008>,  <37.959244, 36.165005, 39.604820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.719608, 36.174881, 39.596008>,  <37.320217, 36.191338, 39.581326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719608, 36.174881, 39.596008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047168, -0.292517, 0.955096,
		-0.028560, -0.955375, -0.294013,
		0.998479, -0.041145, 0.036709,
		38.019154, 36.162537, 39.607021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563229, 35.531387, 39.896080>,  <37.320217, 36.191338, 39.581326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563229, 35.531387, 39.896080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.866272, 35.779884, 39.976158>,  <38.048100, 35.928982, 40.024204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.866272, 35.779884, 39.976158>,  <37.563229, 35.531387, 39.896080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866272, 35.779884, 39.976158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030779, -0.340382, 0.939783,
		0.651979, -0.705829, -0.276999,
		0.757612, 0.621245, 0.200198,
		38.093555, 35.966259, 40.036217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816025, 35.233055, 40.521793>,  <37.563229, 35.531387, 39.896080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816025, 35.233055, 40.521793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.976456, 35.598301, 40.492538>,  <38.072716, 35.817448, 40.474983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.976456, 35.598301, 40.492538>,  <37.816025, 35.233055, 40.521793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976456, 35.598301, 40.492538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105428, 0.033299, 0.993869,
		0.909956, -0.406332, -0.082913,
		0.401080, 0.913119, -0.073139,
		38.096779, 35.872238, 40.470596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492512, 35.229408, 40.943432>,  <37.816025, 35.233055, 40.521793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492512, 35.229408, 40.943432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.379211, 35.612377, 40.921146>,  <38.311230, 35.842159, 40.907776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.379211, 35.612377, 40.921146>,  <38.492512, 35.229408, 40.943432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379211, 35.612377, 40.921146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150117, 0.101640, 0.983430,
		0.947224, 0.270194, -0.172516,
		-0.283251, 0.957426, -0.055715,
		38.294235, 35.899605, 40.904430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888508, 35.562859, 41.409630>,  <38.492512, 35.229408, 40.943432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888508, 35.562859, 41.409630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.594051, 35.829628, 41.363483>,  <38.417377, 35.989689, 41.335796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.594051, 35.829628, 41.363483>,  <38.888508, 35.562859, 41.409630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594051, 35.829628, 41.363483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028854, 0.139372, 0.989820,
		0.676213, 0.731976, -0.083354,
		-0.736141, 0.666924, -0.115365,
		38.373211, 36.029705, 41.328873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155632, 36.190735, 41.731045>,  <38.888508, 35.562859, 41.409630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155632, 36.190735, 41.731045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.756290, 36.209911, 41.718414>,  <38.516685, 36.221416, 41.710835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.756290, 36.209911, 41.718414>,  <39.155632, 36.190735, 41.731045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756290, 36.209911, 41.718414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010660, 0.385708, 0.922559,
		0.056410, 0.921375, -0.384560,
		-0.998351, 0.047942, -0.031579,
		38.456783, 36.224293, 41.708942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991081, 36.824482, 41.914974>,  <39.155632, 36.190735, 41.731045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991081, 36.824482, 41.914974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.652672, 36.620251, 41.976345>,  <38.449623, 36.497711, 42.013168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.652672, 36.620251, 41.976345>,  <38.991081, 36.824482, 41.914974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652672, 36.620251, 41.976345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096962, 0.430348, 0.897441,
		-0.524247, 0.744383, -0.413593,
		-0.846028, -0.510583, 0.153432,
		38.398865, 36.467075, 42.022373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595818, 37.341820, 42.183720>,  <38.991081, 36.824482, 41.914974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595818, 37.341820, 42.183720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.446869, 36.987026, 42.292973>,  <38.357502, 36.774151, 42.358524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.446869, 36.987026, 42.292973>,  <38.595818, 37.341820, 42.183720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446869, 36.987026, 42.292973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082171, 0.324645, 0.942260,
		-0.924441, 0.328423, -0.193772,
		-0.372367, -0.886986, 0.273129,
		38.335159, 36.720932, 42.374912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.911152, 37.543377, 42.879166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001598, 37.154118, 42.861927>,  <38.055866, 36.920563, 42.851585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001598, 37.154118, 42.861927>,  <37.911152, 37.543377, 42.879166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001598, 37.154118, 42.861927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344946, -0.121369, 0.930743,
		-0.910979, -0.195591, -0.363127,
		0.226117, -0.973146, -0.043097,
		38.069435, 36.862175, 42.848999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319405, 37.101841, 43.044586>,  <37.911152, 37.543377, 42.879166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319405, 37.101841, 43.044586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657478, 36.906696, 43.131905>,  <37.860321, 36.789608, 43.184296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657478, 36.906696, 43.131905>,  <37.319405, 37.101841, 43.044586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657478, 36.906696, 43.131905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314951, -0.124623, 0.940891,
		-0.431823, -0.863977, -0.258983,
		0.845183, -0.487865, 0.218295,
		37.911034, 36.760338, 43.197392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071362, 36.693947, 43.604099>,  <37.319405, 37.101841, 43.044586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071362, 36.693947, 43.604099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.471302, 36.687065, 43.604790>,  <37.711266, 36.682934, 43.605206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.471302, 36.687065, 43.604790>,  <37.071362, 36.693947, 43.604099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471302, 36.687065, 43.604790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000998, 0.042157, 0.999111,
		-0.017268, -0.998963, 0.042133,
		0.999850, -0.017210, 0.001725,
		37.771255, 36.681904, 43.605309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182320, 36.360935, 44.079170>,  <37.071362, 36.693947, 43.604099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182320, 36.360935, 44.079170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.534866, 36.549137, 44.062115>,  <37.746395, 36.662060, 44.051884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.534866, 36.549137, 44.062115>,  <37.182320, 36.360935, 44.079170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534866, 36.549137, 44.062115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046392, 0.003615, 0.998917,
		0.470152, -0.882388, -0.018642,
		0.881365, 0.470508, -0.042636,
		37.799274, 36.690289, 44.049324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593262, 35.965824, 44.519325>,  <37.182320, 36.360935, 44.079170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593262, 35.965824, 44.519325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.729816, 36.339413, 44.477100>,  <37.811749, 36.563568, 44.451767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.729816, 36.339413, 44.477100>,  <37.593262, 35.965824, 44.519325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729816, 36.339413, 44.477100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289882, 0.211455, 0.933410,
		0.894103, -0.288058, 0.342932,
		0.341391, 0.933974, -0.105560,
		37.832233, 36.619606, 44.445431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872200, 36.028721, 45.148010>,  <37.593262, 35.965824, 44.519325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872200, 36.028721, 45.148010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.864109, 36.407307, 45.019135>,  <37.859253, 36.634457, 44.941811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.864109, 36.407307, 45.019135>,  <37.872200, 36.028721, 45.148010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864109, 36.407307, 45.019135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170451, 0.314268, 0.933907,
		0.985159, 0.073809, 0.154968,
		-0.020229, 0.946461, -0.322185,
		37.858040, 36.691246, 44.922478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220615, 36.463345, 45.655956>,  <37.872200, 36.028721, 45.148010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220615, 36.463345, 45.655956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995457, 36.737652, 45.471405>,  <37.860363, 36.902237, 45.360676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995457, 36.737652, 45.471405>,  <38.220615, 36.463345, 45.655956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995457, 36.737652, 45.471405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203296, 0.426190, 0.881495,
		0.801135, 0.589988, -0.100487,
		-0.562898, 0.685768, -0.461378,
		37.826588, 36.943382, 45.332993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576862, 37.169659, 45.770321>,  <38.220615, 36.463345, 45.655956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576862, 37.169659, 45.770321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.188324, 37.212360, 45.685383>,  <37.955200, 37.237984, 45.634422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.188324, 37.212360, 45.685383>,  <38.576862, 37.169659, 45.770321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188324, 37.212360, 45.685383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137477, 0.476420, 0.868403,
		0.193872, 0.872713, -0.448092,
		-0.971346, 0.106756, -0.212342,
		37.896919, 37.244389, 45.621681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396511, 37.776531, 45.925797>,  <38.576862, 37.169659, 45.770321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396511, 37.776531, 45.925797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.021320, 37.637875, 45.922981>,  <37.796207, 37.554680, 45.921291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.021320, 37.637875, 45.922981>,  <38.396511, 37.776531, 45.925797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021320, 37.637875, 45.922981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179620, 0.468475, 0.865025,
		-0.296553, 0.812634, -0.501679,
		-0.937973, -0.346638, -0.007038,
		37.739929, 37.533882, 45.920872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018044, 38.300793, 46.107525>,  <38.396511, 37.776531, 45.925797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018044, 38.300793, 46.107525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772705, 37.990719, 46.168045>,  <37.625504, 37.804672, 46.204357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772705, 37.990719, 46.168045>,  <38.018044, 38.300793, 46.107525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772705, 37.990719, 46.168045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071121, 0.244996, 0.966912,
		-0.786607, 0.582288, -0.205399,
		-0.613344, -0.775188, 0.151303,
		37.588703, 37.758163, 46.213436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584381, 38.600002, 46.608143>,  <38.018044, 38.300793, 46.107525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584381, 38.600002, 46.608143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526611, 38.205921, 46.645065>,  <37.491947, 37.969475, 46.667217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526611, 38.205921, 46.645065>,  <37.584381, 38.600002, 46.608143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526611, 38.205921, 46.645065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243192, 0.125763, 0.961791,
		-0.959165, 0.116462, -0.257756,
		-0.144428, -0.985201, 0.092305,
		37.483284, 37.910362, 46.672756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917122, 38.394333, 46.930378>,  <37.584381, 38.600002, 46.608143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917122, 38.394333, 46.930378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.156311, 38.078011, 46.982616>,  <37.299828, 37.888218, 47.013958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.156311, 38.078011, 46.982616>,  <36.917122, 38.394333, 46.930378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156311, 38.078011, 46.982616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195290, 0.014272, 0.980642,
		-0.777358, -0.611905, -0.145901,
		0.597978, -0.790802, 0.130594,
		37.335705, 37.840771, 47.021793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539616, 37.983536, 47.325932>,  <36.917122, 38.394333, 46.930378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539616, 37.983536, 47.325932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904522, 37.828289, 47.378300>,  <37.123466, 37.735142, 47.409721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904522, 37.828289, 47.378300>,  <36.539616, 37.983536, 47.325932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904522, 37.828289, 47.378300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229864, -0.220548, 0.947904,
		-0.339028, -0.894830, -0.290413,
		0.912262, -0.388122, 0.130917,
		37.178200, 37.711853, 47.417576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469093, 37.311523, 47.555313>,  <36.539616, 37.983536, 47.325932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469093, 37.311523, 47.555313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.858234, 37.351719, 47.638699>,  <37.091721, 37.375835, 47.688732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.858234, 37.351719, 47.638699>,  <36.469093, 37.311523, 47.555313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858234, 37.351719, 47.638699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105538, -0.609043, 0.786085,
		0.205956, -0.786746, -0.581904,
		0.972853, 0.100486, 0.208468,
		37.150089, 37.381866, 47.701241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713882, 36.601704, 47.609940>,  <36.469093, 37.311523, 47.555313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713882, 36.601704, 47.609940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.942822, 36.851730, 47.822247>,  <37.080185, 37.001747, 47.949631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.942822, 36.851730, 47.822247>,  <36.713882, 36.601704, 47.609940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942822, 36.851730, 47.822247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117657, -0.577976, 0.807527,
		0.811528, -0.524633, -0.257259,
		0.572346, 0.625063, 0.530771,
		37.114525, 37.039249, 47.981476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034100, 36.194199, 48.097443>,  <36.713882, 36.601704, 47.609940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034100, 36.194199, 48.097443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.073124, 36.556942, 48.261440>,  <37.096539, 36.774586, 48.359840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.073124, 36.556942, 48.261440>,  <37.034100, 36.194199, 48.097443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073124, 36.556942, 48.261440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096227, -0.401436, 0.910818,
		0.990567, -0.128310, 0.048101,
		0.097557, 0.906855, 0.409996,
		37.102390, 36.828999, 48.384438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585999, 36.196373, 48.703453>,  <37.034100, 36.194199, 48.097443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585999, 36.196373, 48.703453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.310677, 36.478313, 48.772060>,  <37.145485, 36.647480, 48.813225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.310677, 36.478313, 48.772060>,  <37.585999, 36.196373, 48.703453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310677, 36.478313, 48.772060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004312, -0.240407, 0.970662,
		0.725411, 0.667370, 0.168513,
		-0.688303, 0.704856, 0.171516,
		37.104187, 36.689770, 48.823517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772114, 36.549675, 49.356789>,  <37.585999, 36.196373, 48.703453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772114, 36.549675, 49.356789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.387962, 36.638756, 49.289772>,  <37.157471, 36.692204, 49.249561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.387962, 36.638756, 49.289772>,  <37.772114, 36.549675, 49.356789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387962, 36.638756, 49.289772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193232, -0.098903, 0.976156,
		0.200823, 0.969856, 0.138018,
		-0.960381, 0.222704, -0.167545,
		37.099850, 36.705566, 49.239510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621555, 36.953995, 49.917549>,  <37.772114, 36.549675, 49.356789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621555, 36.953995, 49.917549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.247540, 36.932301, 49.777401>,  <37.023129, 36.919285, 49.693314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.247540, 36.932301, 49.777401>,  <37.621555, 36.953995, 49.917549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247540, 36.932301, 49.777401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353148, 0.054840, 0.933959,
		-0.031436, 0.997021, -0.070429,
		-0.935039, -0.054232, -0.350372,
		36.967030, 36.916031, 49.672291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171749, 37.498970, 50.218266>,  <37.621555, 36.953995, 49.917549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171749, 37.498970, 50.218266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.907543, 37.223919, 50.097675>,  <36.749020, 37.058887, 50.025322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.907543, 37.223919, 50.097675>,  <37.171749, 37.498970, 50.218266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907543, 37.223919, 50.097675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393940, -0.024426, 0.918811,
		-0.639162, 0.725655, -0.254749,
		-0.660518, -0.687625, -0.301477,
		36.709389, 37.017632, 50.007233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642906, 37.644722, 50.609680>,  <37.171749, 37.498970, 50.218266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642906, 37.644722, 50.609680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555367, 37.268906, 50.504330>,  <36.502842, 37.043415, 50.441120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555367, 37.268906, 50.504330>,  <36.642906, 37.644722, 50.609680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555367, 37.268906, 50.504330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392306, -0.162419, 0.905382,
		-0.893421, 0.301465, -0.333043,
		-0.218848, -0.939542, -0.263375,
		36.489712, 36.987041, 50.425316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142941, 37.462044, 51.083485>,  <36.642906, 37.644722, 50.609680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142941, 37.462044, 51.083485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.183331, 37.083679, 50.960159>,  <36.207565, 36.856659, 50.886166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.183331, 37.083679, 50.960159>,  <36.142941, 37.462044, 51.083485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183331, 37.083679, 50.960159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451968, -0.319687, 0.832781,
		-0.886300, 0.055256, -0.459803,
		0.100977, -0.945911, -0.308313,
		36.213623, 36.799908, 50.867664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459061, 37.203106, 51.059792>,  <36.142941, 37.462044, 51.083485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459061, 37.203106, 51.059792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.736855, 36.922512, 51.123806>,  <35.903530, 36.754154, 51.162216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.736855, 36.922512, 51.123806>,  <35.459061, 37.203106, 51.059792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736855, 36.922512, 51.123806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514862, -0.329131, 0.791574,
		-0.502605, -0.632131, -0.589745,
		0.694482, -0.701486, 0.160037,
		35.945198, 36.712067, 51.171818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069359, 36.559341, 51.102261>,  <35.459061, 37.203106, 51.059792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069359, 36.559341, 51.102261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.416878, 36.551628, 51.300175>,  <35.625389, 36.547001, 51.418922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.416878, 36.551628, 51.300175>,  <35.069359, 36.559341, 51.102261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416878, 36.551628, 51.300175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457493, -0.413542, 0.787199,
		0.189439, -0.910281, -0.368105,
		0.868800, -0.019279, 0.494789,
		35.677517, 36.545845, 51.448612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399525, 36.920021, 50.951527>,  <35.069359, 36.559341, 51.102261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399525, 36.920021, 50.951527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.001625, 36.880470, 50.962158>,  <33.762886, 36.856739, 50.968536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.001625, 36.880470, 50.962158>,  <34.399525, 36.920021, 50.951527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001625, 36.880470, 50.962158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028166, 0.014710, -0.999495,
		0.098438, -0.994991, -0.017418,
		-0.994744, -0.098879, 0.026577,
		33.703201, 36.850807, 50.970131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166470, 36.354446, 50.531586>,  <34.399525, 36.920021, 50.951527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166470, 36.354446, 50.531586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.873230, 36.626263, 50.542801>,  <33.697285, 36.789352, 50.549530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.873230, 36.626263, 50.542801>,  <34.166470, 36.354446, 50.531586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873230, 36.626263, 50.542801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011439, 0.053543, -0.998500,
		-0.680026, -0.731679, -0.047026,
		-0.733099, 0.679544, 0.028041,
		33.653301, 36.830124, 50.551212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706165, 36.097237, 50.105663>,  <34.166470, 36.354446, 50.531586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706165, 36.097237, 50.105663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625202, 36.488083, 50.131828>,  <33.576622, 36.722591, 50.147530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625202, 36.488083, 50.131828>,  <33.706165, 36.097237, 50.105663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625202, 36.488083, 50.131828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037097, 0.059100, -0.997562,
		-0.978598, -0.204344, 0.024285,
		-0.202410, 0.977113, 0.065416,
		33.564480, 36.781216, 50.151451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167835, 36.199371, 49.584404>,  <33.706165, 36.097237, 50.105663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167835, 36.199371, 49.584404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322605, 36.561398, 49.654995>,  <33.415466, 36.778614, 49.697350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322605, 36.561398, 49.654995>,  <33.167835, 36.199371, 49.584404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322605, 36.561398, 49.654995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093033, 0.228729, -0.969035,
		-0.917405, 0.358529, 0.172703,
		0.386929, 0.905064, 0.176482,
		33.438683, 36.832916, 49.707939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904003, 36.593594, 49.050243>,  <33.167835, 36.199371, 49.584404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904003, 36.593594, 49.050243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.206226, 36.836029, 49.149666>,  <33.387562, 36.981491, 49.209320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.206226, 36.836029, 49.149666>,  <32.904003, 36.593594, 49.050243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206226, 36.836029, 49.149666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161947, 0.194831, -0.967375,
		-0.634745, 0.771163, 0.049052,
		0.755561, 0.606093, 0.248555,
		33.432896, 37.017857, 49.224232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744904, 37.211231, 48.657612>,  <32.904003, 36.593594, 49.050243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744904, 37.211231, 48.657612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.133888, 37.221657, 48.750248>,  <33.367279, 37.227913, 48.805828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.133888, 37.221657, 48.750248>,  <32.744904, 37.211231, 48.657612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133888, 37.221657, 48.750248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219657, 0.229507, -0.948197,
		-0.077864, 0.972958, 0.217462,
		0.972465, 0.026064, 0.231587,
		33.425629, 37.229477, 48.819725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021832, 37.853077, 48.328217>,  <32.744904, 37.211231, 48.657612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021832, 37.853077, 48.328217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.323029, 37.599594, 48.399128>,  <33.503746, 37.447506, 48.441673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.323029, 37.599594, 48.399128>,  <33.021832, 37.853077, 48.328217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323029, 37.599594, 48.399128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349478, 0.156850, -0.923722,
		0.557560, 0.757508, 0.339572,
		0.752989, -0.633704, 0.177279,
		33.548923, 37.409485, 48.452312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721626, 38.153416, 48.142918>,  <33.021832, 37.853077, 48.328217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721626, 38.153416, 48.142918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841251, 37.771942, 48.129925>,  <33.913025, 37.543060, 48.122128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841251, 37.771942, 48.129925>,  <33.721626, 38.153416, 48.142918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841251, 37.771942, 48.129925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432437, 0.165796, -0.886290,
		0.850623, 0.251010, 0.461990,
		0.299064, -0.953680, -0.032484,
		33.930969, 37.485840, 48.120178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333477, 38.181507, 47.838383>,  <33.721626, 38.153416, 48.142918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333477, 38.181507, 47.838383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.193550, 37.810207, 47.787807>,  <34.109592, 37.587429, 47.757462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.193550, 37.810207, 47.787807>,  <34.333477, 38.181507, 47.838383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193550, 37.810207, 47.787807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375856, -0.015437, -0.926550,
		0.858113, -0.371649, 0.354287,
		-0.349820, -0.928245, -0.126439,
		34.088604, 37.531734, 47.749874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849255, 37.612873, 47.679333>,  <34.333477, 38.181507, 47.838383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849255, 37.612873, 47.679333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.517456, 37.454025, 47.522247>,  <34.318375, 37.358715, 47.427994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.517456, 37.454025, 47.522247>,  <34.849255, 37.612873, 47.679333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517456, 37.454025, 47.522247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503783, -0.228461, -0.833072,
		0.241111, -0.888876, 0.389571,
		-0.829499, -0.397122, -0.392716,
		34.268608, 37.334888, 47.404434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048183, 37.060081, 47.207382>,  <34.849255, 37.612873, 47.679333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048183, 37.060081, 47.207382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.690262, 37.136185, 47.045830>,  <34.475510, 37.181847, 46.948898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.690262, 37.136185, 47.045830>,  <35.048183, 37.060081, 47.207382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690262, 37.136185, 47.045830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428363, 0.110985, -0.896765,
		-0.125794, -0.975440, -0.180811,
		-0.894808, 0.190261, -0.403881,
		34.421818, 37.193264, 46.924664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042484, 36.651398, 46.560944>,  <35.048183, 37.060081, 47.207382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042484, 36.651398, 46.560944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757187, 36.927887, 46.514465>,  <34.586010, 37.093781, 46.486576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757187, 36.927887, 46.514465>,  <35.042484, 36.651398, 46.560944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757187, 36.927887, 46.514465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325143, 0.179416, -0.928489,
		-0.620941, -0.700019, -0.352712,
		-0.713242, 0.691219, -0.116199,
		34.543213, 37.135254, 46.479607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814480, 36.558926, 45.952209>,  <35.042484, 36.651398, 46.560944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814480, 36.558926, 45.952209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.692295, 36.932999, 46.023903>,  <34.618984, 37.157444, 46.066917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.692295, 36.932999, 46.023903>,  <34.814480, 36.558926, 45.952209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692295, 36.932999, 46.023903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321622, 0.278501, -0.904985,
		-0.896243, -0.218795, -0.385847,
		-0.305465, 0.935183, 0.179235,
		34.600655, 37.213554, 46.077675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408966, 36.647160, 45.397972>,  <34.814480, 36.558926, 45.952209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408966, 36.647160, 45.397972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.498188, 37.009968, 45.540836>,  <34.551720, 37.227654, 45.626556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.498188, 37.009968, 45.540836>,  <34.408966, 36.647160, 45.397972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498188, 37.009968, 45.540836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298536, 0.285228, -0.910781,
		-0.927968, 0.309777, -0.207156,
		0.223052, 0.907019, 0.357162,
		34.565105, 37.282074, 45.647984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251530, 37.107571, 44.871685>,  <34.408966, 36.647160, 45.397972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251530, 37.107571, 44.871685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.501396, 37.316738, 45.103668>,  <34.651314, 37.442238, 45.242859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.501396, 37.316738, 45.103668>,  <34.251530, 37.107571, 44.871685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501396, 37.316738, 45.103668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457951, 0.356262, -0.814468,
		-0.632517, 0.774361, -0.016927,
		0.624662, 0.522917, 0.579961,
		34.688793, 37.473614, 45.277657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149021, 37.818855, 44.703491>,  <34.251530, 37.107571, 44.871685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149021, 37.818855, 44.703491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.519382, 37.729733, 44.825516>,  <34.741600, 37.676258, 44.898731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.519382, 37.729733, 44.825516>,  <34.149021, 37.818855, 44.703491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519382, 37.729733, 44.825516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374249, 0.431221, -0.820967,
		0.051367, 0.874304, 0.482653,
		0.925904, -0.222803, 0.305057,
		34.797153, 37.662891, 44.917034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442833, 38.414230, 44.536644>,  <34.149021, 37.818855, 44.703491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442833, 38.414230, 44.536644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.741814, 38.154541, 44.592957>,  <34.921204, 37.998726, 44.626743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.741814, 38.154541, 44.592957>,  <34.442833, 38.414230, 44.536644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741814, 38.154541, 44.592957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570459, 0.518682, -0.636824,
		0.340424, 0.556305, 0.758048,
		0.747454, -0.649226, 0.140777,
		34.966049, 37.959774, 44.635189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973518, 38.827469, 44.547096>,  <34.442833, 38.414230, 44.536644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973518, 38.827469, 44.547096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.150375, 38.471336, 44.503609>,  <35.256489, 38.257656, 44.477516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.150375, 38.471336, 44.503609>,  <34.973518, 38.827469, 44.547096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150375, 38.471336, 44.503609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690213, 0.415136, -0.592678,
		0.572815, 0.187006, 0.798068,
		0.442141, -0.890332, -0.108722,
		35.283016, 38.204235, 44.470993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672726, 38.999111, 44.602871>,  <34.973518, 38.827469, 44.547096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672726, 38.999111, 44.602871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.628197, 38.655239, 44.403450>,  <35.601479, 38.448914, 44.283798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.628197, 38.655239, 44.403450>,  <35.672726, 38.999111, 44.602871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628197, 38.655239, 44.403450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533888, 0.371391, -0.759626,
		0.838195, -0.350732, 0.417631,
		-0.111320, -0.859684, -0.498550,
		35.594799, 38.397335, 44.253883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249844, 38.853806, 44.256229>,  <35.672726, 38.999111, 44.602871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249844, 38.853806, 44.256229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.010792, 38.597740, 44.063137>,  <35.867359, 38.444103, 43.947281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.010792, 38.597740, 44.063137>,  <36.249844, 38.853806, 44.256229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010792, 38.597740, 44.063137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407786, 0.275698, -0.870460,
		0.690323, -0.717066, 0.096283,
		-0.597632, -0.640162, -0.482730,
		35.831501, 38.405693, 43.918320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.556385, 42.327595, 34.865551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.157730, 42.338631, 34.896420>,  <41.918537, 42.345253, 34.914940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.157730, 42.338631, 34.896420>,  <42.556385, 42.327595, 34.865551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157730, 42.338631, 34.896420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006651, -0.911313, 0.411660,
		0.081684, 0.410789, 0.908064,
		-0.996636, 0.027586, 0.077172,
		41.858738, 42.346905, 34.919571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332134, 42.353626, 35.618542>,  <42.556385, 42.327595, 34.865551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332134, 42.353626, 35.618542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.022369, 42.202713, 35.415390>,  <41.836510, 42.112167, 35.293499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.022369, 42.202713, 35.415390>,  <42.332134, 42.353626, 35.618542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022369, 42.202713, 35.415390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206291, -0.909450, 0.361033,
		-0.598103, 0.174817, 0.782120,
		-0.774413, -0.377279, -0.507882,
		41.790047, 42.089531, 35.263027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997128, 41.937138, 36.176353>,  <42.332134, 42.353626, 35.618542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997128, 41.937138, 36.176353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.853897, 41.798183, 35.829689>,  <41.767960, 41.714809, 35.621689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.853897, 41.798183, 35.829689>,  <41.997128, 41.937138, 36.176353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853897, 41.798183, 35.829689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004220, -0.927597, 0.373558,
		-0.933682, 0.137420, 0.330687,
		-0.358079, -0.347389, -0.866661,
		41.746475, 41.693966, 35.569691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370537, 41.413383, 36.316086>,  <41.997128, 41.937138, 36.176353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370537, 41.413383, 36.316086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.518223, 41.348690, 35.950020>,  <41.606834, 41.309875, 35.730381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.518223, 41.348690, 35.950020>,  <41.370537, 41.413383, 36.316086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518223, 41.348690, 35.950020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015849, -0.983502, 0.180203,
		-0.929207, -0.081038, -0.360564,
		0.369219, -0.161731, -0.915161,
		41.628990, 41.300171, 35.675472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179668, 40.764423, 36.102795>,  <41.370537, 41.413383, 36.316086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179668, 40.764423, 36.102795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.432720, 40.781151, 35.793465>,  <41.584553, 40.791187, 35.607868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.432720, 40.781151, 35.793465>,  <41.179668, 40.764423, 36.102795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432720, 40.781151, 35.793465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126721, -0.979493, -0.156639,
		-0.764013, 0.197091, -0.614360,
		0.632634, 0.041821, -0.773321,
		41.622509, 40.793697, 35.561470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919369, 40.366013, 35.547150>,  <41.179668, 40.764423, 36.102795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919369, 40.366013, 35.547150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.317574, 40.390125, 35.517963>,  <41.556496, 40.404591, 35.500454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.317574, 40.390125, 35.517963>,  <40.919369, 40.366013, 35.547150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317574, 40.390125, 35.517963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049578, -0.988838, -0.140502,
		-0.080616, 0.136254, -0.987388,
		0.995511, 0.060280, -0.072961,
		41.616226, 40.408211, 35.496075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084328, 39.873253, 35.139030>,  <40.919369, 40.366013, 35.547150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084328, 39.873253, 35.139030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.439606, 39.951958, 35.305111>,  <41.652771, 39.999180, 35.404758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.439606, 39.951958, 35.305111>,  <41.084328, 39.873253, 35.139030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439606, 39.951958, 35.305111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236968, -0.970377, -0.047056,
		0.393643, 0.140184, -0.908512,
		0.888196, 0.196765, 0.415201,
		41.706066, 40.010986, 35.429672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688038, 39.490505, 34.748188>,  <41.084328, 39.873253, 35.139030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688038, 39.490505, 34.748188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.837715, 39.553215, 35.113789>,  <41.927521, 39.590839, 35.333149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.837715, 39.553215, 35.113789>,  <41.688038, 39.490505, 34.748188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837715, 39.553215, 35.113789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500076, -0.864135, -0.056513,
		0.780963, 0.478218, -0.401752,
		0.374194, 0.156772, 0.914003,
		41.949974, 39.600246, 35.387989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448631, 39.355560, 34.598206>,  <41.688038, 39.490505, 34.748188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448631, 39.355560, 34.598206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.387543, 39.348095, 34.993443>,  <42.350887, 39.343616, 35.230583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.387543, 39.348095, 34.993443>,  <42.448631, 39.355560, 34.598206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387543, 39.348095, 34.993443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521321, -0.850919, 0.064509,
		0.839583, 0.524965, 0.139685,
		-0.152726, -0.018661, 0.988092,
		42.341724, 39.342495, 35.289871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074837, 39.119553, 34.781868>,  <42.448631, 39.355560, 34.598206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074837, 39.119553, 34.781868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.836281, 39.068630, 35.098885>,  <42.693150, 39.038078, 35.289093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.836281, 39.068630, 35.098885>,  <43.074837, 39.119553, 34.781868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836281, 39.068630, 35.098885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428208, -0.885576, 0.179980,
		0.678942, 0.446709, 0.582657,
		-0.596385, -0.127303, 0.792539,
		42.657364, 39.030441, 35.336647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483513, 39.078663, 35.363297>,  <43.074837, 39.119553, 34.781868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483513, 39.078663, 35.363297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.144386, 38.870934, 35.406212>,  <42.940910, 38.746296, 35.431961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.144386, 38.870934, 35.406212>,  <43.483513, 39.078663, 35.363297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144386, 38.870934, 35.406212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519435, -0.854014, -0.029118,
		0.106746, 0.031041, 0.993802,
		-0.847816, -0.519324, 0.107286,
		42.890041, 38.715137, 35.438396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660595, 38.600662, 35.839485>,  <43.483513, 39.078663, 35.363297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660595, 38.600662, 35.839485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.320652, 38.449814, 35.692234>,  <43.116688, 38.359303, 35.603882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.320652, 38.449814, 35.692234>,  <43.660595, 38.600662, 35.839485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320652, 38.449814, 35.692234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429929, -0.900112, -0.070417,
		-0.304803, -0.218114, 0.927104,
		-0.849856, -0.377126, -0.368131,
		43.065697, 38.336678, 35.581795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490578, 38.129051, 36.271744>,  <43.660595, 38.600662, 35.839485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490578, 38.129051, 36.271744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.318611, 38.055874, 35.918087>,  <43.215431, 38.011967, 35.705894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.318611, 38.055874, 35.918087>,  <43.490578, 38.129051, 36.271744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318611, 38.055874, 35.918087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465056, -0.884228, -0.043175,
		-0.773883, -0.429736, 0.465222,
		-0.429917, -0.182942, -0.884140,
		43.189636, 38.000992, 35.652843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319290, 37.384499, 36.361839>,  <43.490578, 38.129051, 36.271744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319290, 37.384499, 36.361839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.300896, 37.435696, 35.965557>,  <43.289860, 37.466415, 35.727787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.300896, 37.435696, 35.965557>,  <43.319290, 37.384499, 36.361839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300896, 37.435696, 35.965557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373008, -0.917823, -0.135891,
		-0.926688, -0.375792, -0.005536,
		-0.045986, 0.127993, -0.990708,
		43.287102, 37.474094, 35.668346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102871, 36.753078, 36.109951>,  <43.319290, 37.384499, 36.361839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102871, 36.753078, 36.109951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.289909, 36.935497, 35.807064>,  <43.402134, 37.044949, 35.625332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.289909, 36.935497, 35.807064>,  <43.102871, 36.753078, 36.109951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289909, 36.935497, 35.807064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443944, -0.861922, -0.244959,
		-0.764373, -0.221619, -0.605491,
		0.467599, 0.456044, -0.757216,
		43.430187, 37.072311, 35.579899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215118, 36.273464, 35.558151>,  <43.102871, 36.753078, 36.109951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215118, 36.273464, 35.558151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.475609, 36.562298, 35.464771>,  <43.631901, 36.735600, 35.408741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.475609, 36.562298, 35.464771>,  <43.215118, 36.273464, 35.558151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475609, 36.562298, 35.464771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599325, -0.678070, -0.425476,
		-0.465527, 0.137166, -0.874340,
		0.651224, 0.722085, -0.233453,
		43.670975, 36.778923, 35.394737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350899, 36.117424, 34.900826>,  <43.215118, 36.273464, 35.558151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350899, 36.117424, 34.900826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.645523, 36.365849, 35.007973>,  <43.822300, 36.514904, 35.072262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.645523, 36.365849, 35.007973>,  <43.350899, 36.117424, 34.900826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.645523, 36.365849, 35.007973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676333, -0.672393, -0.300766,
		-0.006685, 0.402700, -0.915308,
		0.736565, 0.621064, 0.267864,
		43.866493, 36.552166, 35.088333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.663242, 36.175377, 34.326687>,  <43.350899, 36.117424, 34.900826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.663242, 36.175377, 34.326687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.909241, 36.227203, 34.637814>,  <44.056839, 36.258297, 34.824490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.909241, 36.227203, 34.637814>,  <43.663242, 36.175377, 34.326687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.909241, 36.227203, 34.637814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633919, -0.667887, -0.389967,
		0.468968, 0.732899, -0.492878,
		0.614993, 0.129563, 0.777816,
		44.093739, 36.266071, 34.871159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293365, 35.964756, 34.069725>,  <43.663242, 36.175377, 34.326687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293365, 35.964756, 34.069725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.408245, 35.999550, 34.451290>,  <44.477173, 36.020428, 34.680229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.408245, 35.999550, 34.451290>,  <44.293365, 35.964756, 34.069725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408245, 35.999550, 34.451290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817087, -0.541965, -0.196578,
		0.499888, 0.835887, -0.226727,
		0.287195, 0.086989, 0.953914,
		44.494404, 36.025646, 34.737465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.944225, 36.197762, 34.085827>,  <44.293365, 35.964756, 34.069725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.944225, 36.197762, 34.085827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.883011, 36.000778, 34.428535>,  <44.846283, 35.882587, 34.634163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.883011, 36.000778, 34.428535>,  <44.944225, 36.197762, 34.085827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.883011, 36.000778, 34.428535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799196, -0.571627, -0.185816,
		0.581263, 0.656295, 0.481051,
		-0.153032, -0.492462, 0.856774,
		44.837101, 35.853039, 34.685566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.552715, 36.193863, 34.479939>,  <44.944225, 36.197762, 34.085827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.552715, 36.193863, 34.479939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.357674, 35.876923, 34.626595>,  <45.240650, 35.686760, 34.714588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.357674, 35.876923, 34.626595>,  <45.552715, 36.193863, 34.479939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.357674, 35.876923, 34.626595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817596, -0.561708, -0.126578,
		0.306237, 0.238041, 0.921713,
		-0.487603, -0.792352, 0.366637,
		45.211391, 35.639217, 34.736588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.251560, 35.831161, 34.319637>,  <45.552715, 36.193863, 34.479939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.251560, 35.831161, 34.319637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.556026, 36.086243, 34.272366>,  <46.738705, 36.239292, 34.244003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.556026, 36.086243, 34.272366>,  <46.251560, 35.831161, 34.319637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.556026, 36.086243, 34.272366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648386, 0.743987, -0.161491,
		-0.015059, 0.199546, 0.979773,
		0.761163, 0.637702, -0.118179,
		46.784374, 36.277554, 34.236912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.194134, 36.504463, 34.732998>,  <46.251560, 35.831161, 34.319637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.194134, 36.504463, 34.732998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.408688, 36.562778, 34.400486>,  <46.537422, 36.597767, 34.200977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.408688, 36.562778, 34.400486>,  <46.194134, 36.504463, 34.732998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.408688, 36.562778, 34.400486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614848, 0.742231, -0.266560,
		0.578143, 0.654093, 0.487762,
		0.536388, 0.145790, -0.831284,
		46.569603, 36.606514, 34.151100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282627, 37.302662, 34.686100>,  <46.194134, 36.504463, 34.732998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.282627, 37.302662, 34.686100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.385712, 37.164188, 34.325268>,  <46.447563, 37.081104, 34.108768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.385712, 37.164188, 34.325268>,  <46.282627, 37.302662, 34.686100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.385712, 37.164188, 34.325268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577632, 0.693210, -0.431048,
		0.774548, 0.632156, -0.021315,
		0.257714, -0.346179, -0.902077,
		46.463024, 37.060333, 34.054646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.509953, 37.912769, 34.295910>,  <46.282627, 37.302662, 34.686100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.509953, 37.912769, 34.295910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.462948, 37.653908, 33.994610>,  <46.434746, 37.498592, 33.813831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.462948, 37.653908, 33.994610>,  <46.509953, 37.912769, 34.295910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.462948, 37.653908, 33.994610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474364, 0.702956, -0.529936,
		0.872450, 0.295039, -0.389593,
		-0.117515, -0.647151, -0.753250,
		46.427692, 37.459763, 33.768635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.667389, 38.272182, 33.685074>,  <46.509953, 37.912769, 34.295910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.667389, 38.272182, 33.685074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.441467, 37.959766, 33.578514>,  <46.305916, 37.772316, 33.514576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.441467, 37.959766, 33.578514>,  <46.667389, 38.272182, 33.685074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.441467, 37.959766, 33.578514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558114, 0.599333, -0.573854,
		0.607879, -0.175417, -0.774411,
		-0.564793, -0.781044, -0.266419,
		46.272026, 37.725452, 33.498592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.667217, 38.303806, 33.041534>,  <46.667389, 38.272182, 33.685074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.667217, 38.303806, 33.041534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.340324, 38.081398, 33.102158>,  <46.144188, 37.947952, 33.138531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.340324, 38.081398, 33.102158>,  <46.667217, 38.303806, 33.041534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.340324, 38.081398, 33.102158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552834, 0.682052, -0.478727,
		0.162811, -0.475018, -0.864783,
		-0.817231, -0.556023, 0.151560,
		46.095154, 37.914593, 33.147625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.230286, 38.391853, 32.455467>,  <46.667217, 38.303806, 33.041534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.230286, 38.391853, 32.455467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.981682, 38.266376, 32.742611>,  <45.832520, 38.191090, 32.914898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.981682, 38.266376, 32.742611>,  <46.230286, 38.391853, 32.455467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.981682, 38.266376, 32.742611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708907, 0.615206, -0.344925,
		-0.333433, -0.723271, -0.604732,
		-0.621509, -0.313689, 0.717862,
		45.795231, 38.172268, 32.957970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495541, 38.369835, 32.159676>,  <46.230286, 38.391853, 32.455467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495541, 38.369835, 32.159676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.472576, 38.382034, 32.558830>,  <45.458797, 38.389355, 32.798321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.472576, 38.382034, 32.558830>,  <45.495541, 38.369835, 32.159676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.472576, 38.382034, 32.558830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658624, 0.750011, -0.060812,
		-0.750279, -0.660722, -0.022973,
		-0.057409, 0.030495, 0.997885,
		45.455353, 38.391182, 32.858196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.762291, 38.652458, 32.220245>,  <45.495541, 38.369835, 32.159676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.762291, 38.652458, 32.220245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.936665, 38.723473, 32.573162>,  <45.041290, 38.766079, 32.784912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.936665, 38.723473, 32.573162>,  <44.762291, 38.652458, 32.220245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.936665, 38.723473, 32.573162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602146, 0.786134, 0.139331,
		-0.668866, -0.592009, 0.449604,
		0.435934, 0.177533, 0.882294,
		45.067444, 38.776733, 32.837849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.226723, 38.700314, 32.730110>,  <44.762291, 38.652458, 32.220245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.226723, 38.700314, 32.730110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.545231, 38.890564, 32.879631>,  <44.736336, 39.004715, 32.969345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.545231, 38.890564, 32.879631>,  <44.226723, 38.700314, 32.730110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545231, 38.890564, 32.879631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579976, 0.775899, 0.248211,
		-0.171977, -0.414440, 0.893680,
		0.796273, 0.475626, 0.373802,
		44.784115, 39.033253, 32.991772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985115, 39.044178, 33.258259>,  <44.226723, 38.700314, 32.730110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985115, 39.044178, 33.258259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.332317, 39.225876, 33.178028>,  <44.540638, 39.334892, 33.129890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.332317, 39.225876, 33.178028>,  <43.985115, 39.044178, 33.258259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332317, 39.225876, 33.178028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453765, 0.889655, 0.051098,
		0.201659, 0.046663, 0.978343,
		0.868004, 0.454242, -0.200581,
		44.592720, 39.362148, 33.117855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985214, 39.560509, 33.693203>,  <43.985115, 39.044178, 33.258259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985214, 39.560509, 33.693203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.260433, 39.679279, 33.428349>,  <44.425564, 39.750542, 33.269436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.260433, 39.679279, 33.428349>,  <43.985214, 39.560509, 33.693203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.260433, 39.679279, 33.428349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189106, 0.954293, 0.231440,
		0.700590, -0.034029, 0.712752,
		0.688049, 0.296930, -0.662133,
		44.466846, 39.768360, 33.229710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424828, 40.097134, 34.090469>,  <43.985214, 39.560509, 33.693203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424828, 40.097134, 34.090469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.427559, 40.155102, 33.694702>,  <44.429195, 40.189884, 33.457241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.427559, 40.155102, 33.694702>,  <44.424828, 40.097134, 34.090469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.427559, 40.155102, 33.694702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262939, 0.954885, 0.138052,
		0.964788, 0.259214, 0.044623,
		0.006825, 0.144924, -0.989419,
		44.429607, 40.198578, 33.397877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521191, 40.783714, 33.992615>,  <44.424828, 40.097134, 34.090469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.521191, 40.783714, 33.992615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.401875, 40.723511, 33.615601>,  <44.330284, 40.687389, 33.389393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.401875, 40.723511, 33.615601>,  <44.521191, 40.783714, 33.992615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401875, 40.723511, 33.615601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250028, 0.965328, -0.075021,
		0.921145, 0.213281, -0.325581,
		-0.298292, -0.150510, -0.942533,
		44.312386, 40.678356, 33.332840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.981213, 41.200569, 33.620117>,  <44.521191, 40.783714, 33.992615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.981213, 41.200569, 33.620117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.645237, 41.130478, 33.414673>,  <44.443653, 41.088421, 33.291405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.645237, 41.130478, 33.414673>,  <44.981213, 41.200569, 33.620117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.645237, 41.130478, 33.414673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194113, 0.980828, -0.017192,
		0.506780, 0.085259, -0.857849,
		-0.839937, -0.175233, -0.513614,
		44.393257, 41.077908, 33.260590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.893505, 41.762665, 33.219971>,  <44.981213, 41.200569, 33.620117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.893505, 41.762665, 33.219971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.529663, 41.598789, 33.192348>,  <44.311359, 41.500462, 33.175774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.529663, 41.598789, 33.192348>,  <44.893505, 41.762665, 33.219971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.529663, 41.598789, 33.192348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379650, 0.887135, -0.262408,
		0.168770, -0.212470, -0.962483,
		-0.909606, -0.409693, -0.069058,
		44.256783, 41.475880, 33.171631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.577133, 42.030983, 32.595921>,  <44.893505, 41.762665, 33.219971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.577133, 42.030983, 32.595921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.275463, 41.890656, 32.817963>,  <44.094460, 41.806458, 32.951187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.275463, 41.890656, 32.817963>,  <44.577133, 42.030983, 32.595921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.275463, 41.890656, 32.817963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538949, 0.813633, -0.218027,
		-0.375163, -0.463604, -0.802698,
		-0.754180, -0.350818, 0.555103,
		44.049210, 41.785412, 32.984493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.024384, 42.047825, 32.072193>,  <44.577133, 42.030983, 32.595921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.024384, 42.047825, 32.072193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.926029, 42.049576, 32.459908>,  <43.867016, 42.050625, 32.692535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.926029, 42.049576, 32.459908>,  <44.024384, 42.047825, 32.072193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.926029, 42.049576, 32.459908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500661, 0.855693, -0.130871,
		-0.829986, -0.517465, -0.208215,
		-0.245889, 0.004376, 0.969288,
		43.852261, 42.050888, 32.750694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.422073, 42.473293, 32.169228>,  <44.024384, 42.047825, 32.072193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.422073, 42.473293, 32.169228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.493374, 42.427292, 32.560123>,  <43.536156, 42.399693, 32.794662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.493374, 42.427292, 32.560123>,  <43.422073, 42.473293, 32.169228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493374, 42.427292, 32.560123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552460, 0.810141, 0.196108,
		-0.814256, -0.574844, 0.080877,
		0.178253, -0.115001, 0.977241,
		43.546848, 42.392792, 32.853294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777054, 42.652725, 32.515926>,  <43.422073, 42.473293, 32.169228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777054, 42.652725, 32.515926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.074535, 42.697742, 32.779510>,  <43.253025, 42.724754, 32.937660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.074535, 42.697742, 32.779510>,  <42.777054, 42.652725, 32.515926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074535, 42.697742, 32.779510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355223, 0.901579, 0.246924,
		-0.566317, -0.417718, 0.710491,
		0.743708, 0.112545, 0.658962,
		43.297649, 42.731506, 32.977200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468372, 42.777763, 33.131882>,  <42.777054, 42.652725, 32.515926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468372, 42.777763, 33.131882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.841965, 42.919399, 33.151054>,  <43.066120, 43.004379, 33.162556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.841965, 42.919399, 33.151054>,  <42.468372, 42.777763, 33.131882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841965, 42.919399, 33.151054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356607, 0.915247, 0.187495,
		0.022524, -0.192208, 0.981096,
		0.933983, 0.354088, 0.047927,
		43.122158, 43.025627, 33.165432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.040688, 36.812336, 40.119209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717922, 36.576256, 40.109871>,  <38.524261, 36.434608, 40.104267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717922, 36.576256, 40.109871>,  <39.040688, 36.812336, 40.119209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717922, 36.576256, 40.109871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087794, -0.080757, -0.992860,
		0.584104, -0.803205, 0.116981,
		-0.806917, -0.590204, -0.023346,
		38.475845, 36.399197, 40.102867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281654, 36.317146, 39.721977>,  <39.040688, 36.812336, 40.119209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281654, 36.317146, 39.721977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885021, 36.275009, 39.691872>,  <38.647041, 36.249725, 39.673809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885021, 36.275009, 39.691872>,  <39.281654, 36.317146, 39.721977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885021, 36.275009, 39.691872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096091, -0.209190, -0.973142,
		0.086771, -0.972184, 0.217552,
		-0.991583, -0.105346, -0.075267,
		38.587547, 36.243404, 39.669292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246559, 35.756023, 39.338036>,  <39.281654, 36.317146, 39.721977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246559, 35.756023, 39.338036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878002, 35.909245, 39.311794>,  <38.656868, 36.001179, 39.296051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878002, 35.909245, 39.311794>,  <39.246559, 35.756023, 39.338036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878002, 35.909245, 39.311794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010620, -0.193561, -0.981031,
		-0.388486, -0.903219, 0.182414,
		-0.921393, 0.383054, -0.065604,
		38.601585, 36.024158, 39.292114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826378, 35.314278, 38.907085>,  <39.246559, 35.756023, 39.338036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826378, 35.314278, 38.907085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664631, 35.679497, 38.885792>,  <38.567581, 35.898628, 38.873016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664631, 35.679497, 38.885792>,  <38.826378, 35.314278, 38.907085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664631, 35.679497, 38.885792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047879, -0.036988, -0.998168,
		-0.913341, -0.406179, -0.028758,
		-0.404371, 0.913045, -0.053230,
		38.543320, 35.953411, 38.869823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343212, 35.279114, 38.388676>,  <38.826378, 35.314278, 38.907085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343212, 35.279114, 38.388676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417324, 35.670742, 38.422363>,  <38.461792, 35.905720, 38.442574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417324, 35.670742, 38.422363>,  <38.343212, 35.279114, 38.388676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417324, 35.670742, 38.422363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041675, 0.077795, -0.996098,
		-0.981801, 0.188071, -0.026388,
		0.185284, 0.979070, 0.084217,
		38.472908, 35.964462, 38.447628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900017, 35.575111, 37.867058>,  <38.343212, 35.279114, 38.388676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900017, 35.575111, 37.867058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176601, 35.847023, 37.964863>,  <38.342552, 36.010170, 38.023544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176601, 35.847023, 37.964863>,  <37.900017, 35.575111, 37.867058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176601, 35.847023, 37.964863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040115, 0.301814, -0.952523,
		-0.721300, 0.668440, 0.181423,
		0.691460, 0.679777, 0.244513,
		38.384041, 36.050957, 38.038216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704937, 36.282417, 37.617432>,  <37.900017, 35.575111, 37.867058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704937, 36.282417, 37.617432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103531, 36.278988, 37.650784>,  <38.342686, 36.276932, 37.670795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103531, 36.278988, 37.650784>,  <37.704937, 36.282417, 37.617432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103531, 36.278988, 37.650784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082138, 0.298390, -0.950903,
		-0.016728, 0.954406, 0.298044,
		0.996481, -0.008574, 0.083384,
		38.402473, 36.276417, 37.675800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765682, 36.891079, 37.336025>,  <37.704937, 36.282417, 37.617432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765682, 36.891079, 37.336025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115192, 36.696609, 37.331039>,  <38.324898, 36.579929, 37.328049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115192, 36.696609, 37.331039>,  <37.765682, 36.891079, 37.336025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115192, 36.696609, 37.331039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080146, 0.169229, -0.982313,
		0.479685, 0.857319, 0.186833,
		0.873773, -0.486174, -0.012466,
		38.377323, 36.550758, 37.327301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287643, 37.267384, 36.934570>,  <37.765682, 36.891079, 37.336025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287643, 37.267384, 36.934570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470985, 36.912113, 36.947517>,  <38.580990, 36.698952, 36.955284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470985, 36.912113, 36.947517>,  <38.287643, 37.267384, 36.934570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470985, 36.912113, 36.947517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282421, 0.111023, -0.952844,
		0.842704, 0.445881, 0.301729,
		0.458354, -0.888180, 0.032366,
		38.608490, 36.645660, 36.957226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010738, 37.333195, 36.635784>,  <38.287643, 37.267384, 36.934570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010738, 37.333195, 36.635784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894234, 36.952888, 36.593441>,  <38.824329, 36.724705, 36.568035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894234, 36.952888, 36.593441>,  <39.010738, 37.333195, 36.635784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894234, 36.952888, 36.593441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362354, -0.007234, -0.932013,
		0.885362, -0.309820, 0.346621,
		-0.291264, -0.950768, -0.105860,
		38.806854, 36.667660, 36.561684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615696, 36.930843, 36.394943>,  <39.010738, 37.333195, 36.635784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615696, 36.930843, 36.394943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293076, 36.707508, 36.317238>,  <39.099503, 36.573505, 36.270615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293076, 36.707508, 36.317238>,  <39.615696, 36.930843, 36.394943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293076, 36.707508, 36.317238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258752, -0.037949, -0.965198,
		0.531535, -0.828745, 0.175078,
		-0.806547, -0.558338, -0.194268,
		39.051113, 36.540009, 36.258957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844578, 36.313477, 36.025398>,  <39.615696, 36.930843, 36.394943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844578, 36.313477, 36.025398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464024, 36.369377, 35.915607>,  <39.235691, 36.402920, 35.849735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464024, 36.369377, 35.915607>,  <39.844578, 36.313477, 36.025398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464024, 36.369377, 35.915607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292287, 0.128595, -0.947645,
		-0.097142, -0.981800, -0.163192,
		-0.951384, 0.139755, -0.274475,
		39.178608, 36.411304, 35.833263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761784, 36.012264, 35.333687>,  <39.844578, 36.313477, 36.025398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761784, 36.012264, 35.333687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457050, 36.265820, 35.387047>,  <39.274208, 36.417953, 35.419064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457050, 36.265820, 35.387047>,  <39.761784, 36.012264, 35.333687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457050, 36.265820, 35.387047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079481, 0.295856, -0.951920,
		-0.642877, -0.714603, -0.275775,
		-0.761835, 0.633886, 0.133402,
		39.228500, 36.455986, 35.427067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547600, 35.998310, 35.160454>,  <39.761784, 36.012264, 35.333687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547600, 35.998310, 35.160454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405949, 36.326580, 34.981083>,  <40.320957, 36.523540, 34.873459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405949, 36.326580, 34.981083>,  <40.547600, 35.998310, 35.160454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405949, 36.326580, 34.981083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238353, -0.542870, -0.805283,
		-0.904314, -0.178286, 0.387853,
		-0.354124, 0.820674, -0.448430,
		40.299713, 36.572781, 34.846554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981216, 35.372711, 35.107712>,  <40.547600, 35.998310, 35.160454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981216, 35.372711, 35.107712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146400, 35.025265, 34.998192>,  <41.245510, 34.816795, 34.932480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146400, 35.025265, 34.998192>,  <40.981216, 35.372711, 35.107712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146400, 35.025265, 34.998192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712110, -0.495376, 0.497495,
		-0.567768, -0.010469, -0.823122,
		0.412964, -0.868615, -0.273804,
		41.270290, 34.764679, 34.916050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482582, 35.020084, 34.714760>,  <40.981216, 35.372711, 35.107712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482582, 35.020084, 34.714760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747509, 34.758526, 34.861046>,  <40.906467, 34.601589, 34.948818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747509, 34.758526, 34.861046>,  <40.482582, 35.020084, 34.714760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747509, 34.758526, 34.861046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697098, -0.358956, 0.620649,
		-0.274564, -0.666010, -0.693574,
		0.662321, -0.653897, 0.365718,
		40.946205, 34.562359, 34.970760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152164, 34.392387, 34.731579>,  <40.482582, 35.020084, 34.714760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152164, 34.392387, 34.731579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453896, 34.354679, 34.991459>,  <40.634933, 34.332054, 35.147385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453896, 34.354679, 34.991459>,  <40.152164, 34.392387, 34.731579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453896, 34.354679, 34.991459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608856, -0.470588, 0.638624,
		0.245536, -0.877302, -0.412374,
		0.754325, -0.094272, 0.649697,
		40.680195, 34.326397, 35.186367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016445, 33.704697, 34.981743>,  <40.152164, 34.392387, 34.731579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016445, 33.704697, 34.981743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243366, 33.902771, 35.244942>,  <40.379517, 34.021614, 35.402863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243366, 33.902771, 35.244942>,  <40.016445, 33.704697, 34.981743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243366, 33.902771, 35.244942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560788, -0.352833, 0.749017,
		0.603065, -0.793916, 0.077532,
		0.567300, 0.495184, 0.657999,
		40.413555, 34.051327, 35.442341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171478, 33.235237, 35.527531>,  <40.016445, 33.704697, 34.981743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171478, 33.235237, 35.527531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251869, 33.585754, 35.702667>,  <40.300106, 33.796066, 35.807751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251869, 33.585754, 35.702667>,  <40.171478, 33.235237, 35.527531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251869, 33.585754, 35.702667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384656, -0.340468, 0.857975,
		0.900914, -0.340857, 0.268646,
		0.200981, 0.876298, 0.437845,
		40.312164, 33.848644, 35.834023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595409, 33.042908, 36.093094>,  <40.171478, 33.235237, 35.527531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595409, 33.042908, 36.093094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444492, 33.405945, 36.166779>,  <40.353943, 33.623768, 36.210991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444492, 33.405945, 36.166779>,  <40.595409, 33.042908, 36.093094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444492, 33.405945, 36.166779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266137, -0.296780, 0.917111,
		0.887029, 0.296994, 0.353516,
		-0.377293, 0.907588, 0.184211,
		40.331303, 33.678223, 36.222042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879757, 33.309444, 36.760727>,  <40.595409, 33.042908, 36.093094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879757, 33.309444, 36.760727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526157, 33.480610, 36.685432>,  <40.313995, 33.583309, 36.640255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526157, 33.480610, 36.685432>,  <40.879757, 33.309444, 36.760727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526157, 33.480610, 36.685432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252326, -0.097796, 0.962688,
		0.393536, 0.898514, 0.194425,
		-0.884003, 0.427911, -0.188232,
		40.260956, 33.608982, 36.628963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823959, 33.730320, 37.395397>,  <40.879757, 33.309444, 36.760727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823959, 33.730320, 37.395397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454391, 33.717762, 37.242878>,  <40.232651, 33.710228, 37.151367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454391, 33.717762, 37.242878>,  <40.823959, 33.730320, 37.395397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454391, 33.717762, 37.242878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373229, -0.145167, 0.916312,
		-0.084116, 0.988909, 0.122406,
		-0.923918, -0.031390, -0.381300,
		40.177216, 33.708344, 37.128487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490120, 34.177044, 37.749348>,  <40.823959, 33.730320, 37.395397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490120, 34.177044, 37.749348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181049, 33.978840, 37.590633>,  <39.995605, 33.859917, 37.495403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181049, 33.978840, 37.590633>,  <40.490120, 34.177044, 37.749348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181049, 33.978840, 37.590633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426417, -0.057889, 0.902672,
		-0.470252, 0.866671, -0.166564,
		-0.772678, -0.495509, -0.396786,
		39.949245, 33.830189, 37.471596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908218, 34.496166, 37.904377>,  <40.490120, 34.177044, 37.749348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908218, 34.496166, 37.904377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773998, 34.128201, 37.823227>,  <39.693466, 33.907421, 37.774536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773998, 34.128201, 37.823227>,  <39.908218, 34.496166, 37.904377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773998, 34.128201, 37.823227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413352, -0.049744, 0.909211,
		-0.846492, 0.388943, -0.363558,
		-0.335546, -0.919918, -0.202878,
		39.673336, 33.852226, 37.762363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235271, 34.513935, 38.099960>,  <39.908218, 34.496166, 37.904377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235271, 34.513935, 38.099960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335823, 34.126820, 38.094391>,  <39.396152, 33.894550, 38.091049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335823, 34.126820, 38.094391>,  <39.235271, 34.513935, 38.099960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335823, 34.126820, 38.094391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426533, -0.123680, 0.895976,
		-0.868839, -0.219286, -0.443884,
		0.251375, -0.967790, -0.013925,
		39.411236, 33.836483, 38.090214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684437, 34.150112, 38.286007>,  <39.235271, 34.513935, 38.099960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684437, 34.150112, 38.286007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976482, 33.887074, 38.360298>,  <39.151711, 33.729248, 38.404873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976482, 33.887074, 38.360298>,  <38.684437, 34.150112, 38.286007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976482, 33.887074, 38.360298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479090, -0.298819, 0.825336,
		-0.487241, -0.691571, -0.533221,
		0.730115, -0.657599, 0.185728,
		39.195518, 33.689793, 38.416016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330208, 33.607552, 38.775059>,  <38.684437, 34.150112, 38.286007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330208, 33.607552, 38.775059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724087, 33.553188, 38.818687>,  <38.960415, 33.520569, 38.844864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724087, 33.553188, 38.818687>,  <38.330208, 33.607552, 38.775059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724087, 33.553188, 38.818687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133346, -0.184706, 0.973706,
		-0.112187, -0.973351, -0.200002,
		0.984699, -0.135906, 0.109071,
		39.019497, 33.512417, 38.851410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428932, 33.022240, 39.188793>,  <38.330208, 33.607552, 38.775059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428932, 33.022240, 39.188793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780144, 33.210625, 39.222878>,  <38.990871, 33.323654, 39.243328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780144, 33.210625, 39.222878>,  <38.428932, 33.022240, 39.188793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780144, 33.210625, 39.222878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021150, -0.216044, 0.976155,
		0.478139, -0.855290, -0.199654,
		0.878029, 0.470961, 0.085209,
		39.043552, 33.351913, 39.248440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335491, 32.241817, 39.252270>,  <38.428932, 33.022240, 39.188793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335491, 32.241817, 39.252270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079334, 31.934780, 39.241688>,  <37.925640, 31.750557, 39.235340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079334, 31.934780, 39.241688>,  <38.335491, 32.241817, 39.252270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079334, 31.934780, 39.241688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148028, 0.157146, -0.976418,
		0.753649, -0.621374, -0.214261,
		-0.640392, -0.767593, -0.026452,
		37.887218, 31.704502, 39.233753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522774, 31.971092, 38.610168>,  <38.335491, 32.241817, 39.252270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522774, 31.971092, 38.610168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162792, 31.827179, 38.708668>,  <37.946804, 31.740831, 38.767769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162792, 31.827179, 38.708668>,  <38.522774, 31.971092, 38.610168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162792, 31.827179, 38.708668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302722, 0.109185, -0.946804,
		0.313757, -0.926625, -0.207176,
		-0.899953, -0.359784, 0.246253,
		37.892807, 31.719244, 38.782543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491085, 31.252087, 38.310753>,  <38.522774, 31.971092, 38.610168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491085, 31.252087, 38.310753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131855, 31.417145, 38.371662>,  <37.916317, 31.516180, 38.408207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131855, 31.417145, 38.371662>,  <38.491085, 31.252087, 38.310753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131855, 31.417145, 38.371662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187685, -0.046421, -0.981132,
		-0.397790, -0.909708, 0.119137,
		-0.898074, 0.412645, 0.152273,
		37.862434, 31.540937, 38.417343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924393, 30.898191, 38.020916>,  <38.491085, 31.252087, 38.310753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924393, 30.898191, 38.020916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838428, 31.288683, 38.032188>,  <37.786850, 31.522978, 38.038952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838428, 31.288683, 38.032188>,  <37.924393, 30.898191, 38.020916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838428, 31.288683, 38.032188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111808, 0.004071, -0.993722,
		-0.970213, -0.216711, 0.108275,
		-0.214909, 0.976228, 0.028180,
		37.773956, 31.581551, 38.040642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748852, 30.949350, 37.362965>,  <37.924393, 30.898191, 38.020916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748852, 30.949350, 37.362965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754261, 31.329752, 37.486515>,  <37.757507, 31.557993, 37.560646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754261, 31.329752, 37.486515>,  <37.748852, 30.949350, 37.362965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754261, 31.329752, 37.486515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143917, 0.307542, -0.940588,
		-0.989497, -0.031732, 0.141026,
		0.013525, 0.951005, 0.308879,
		37.758320, 31.615053, 37.579178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334419, 31.143084, 36.826546>,  <37.748852, 30.949350, 37.362965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334419, 31.143084, 36.826546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470058, 31.479445, 36.995258>,  <37.551441, 31.681261, 37.096485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470058, 31.479445, 36.995258>,  <37.334419, 31.143084, 36.826546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470058, 31.479445, 36.995258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206174, 0.503871, -0.838812,
		-0.917882, 0.197476, 0.344232,
		0.339094, 0.840903, 0.421780,
		37.571785, 31.731716, 37.121792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867641, 31.513531, 36.578987>,  <37.334419, 31.143084, 36.826546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867641, 31.513531, 36.578987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180408, 31.733917, 36.695641>,  <37.368069, 31.866148, 36.765633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180408, 31.733917, 36.695641>,  <36.867641, 31.513531, 36.578987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180408, 31.733917, 36.695641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014166, 0.483404, -0.875283,
		-0.623226, 0.680264, 0.385785,
		0.781913, 0.550965, 0.291633,
		37.414982, 31.899206, 36.783131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704273, 32.233028, 36.464844>,  <36.867641, 31.513531, 36.578987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704273, 32.233028, 36.464844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103485, 32.254093, 36.451157>,  <37.343010, 32.266731, 36.442944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103485, 32.254093, 36.451157>,  <36.704273, 32.233028, 36.464844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103485, 32.254093, 36.451157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060375, 0.654512, -0.753637,
		-0.017287, 0.754216, 0.656399,
		0.998026, 0.052659, -0.034221,
		37.402893, 32.269890, 36.440891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803867, 32.931980, 36.379040>,  <36.704273, 32.233028, 36.464844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803867, 32.931980, 36.379040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122448, 32.731625, 36.243523>,  <37.313595, 32.611412, 36.162212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122448, 32.731625, 36.243523>,  <36.803867, 32.931980, 36.379040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122448, 32.731625, 36.243523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037742, 0.600340, -0.798854,
		0.603528, 0.623459, 0.497044,
		0.796448, -0.500890, -0.338792,
		37.361382, 32.581356, 36.141884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328381, 33.491879, 36.159618>,  <36.803867, 32.931980, 36.379040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328381, 33.491879, 36.159618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379681, 33.137592, 35.981159>,  <37.410461, 32.925018, 35.874084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379681, 33.137592, 35.981159>,  <37.328381, 33.491879, 36.159618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379681, 33.137592, 35.981159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018940, 0.451973, -0.891831,
		0.991561, 0.105926, 0.074741,
		0.128249, -0.885720, -0.446153,
		37.418156, 32.871876, 35.847313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818722, 33.710781, 35.710575>,  <37.328381, 33.491879, 36.159618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818722, 33.710781, 35.710575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658287, 33.365726, 35.587292>,  <37.562027, 33.158695, 35.513321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658287, 33.365726, 35.587292>,  <37.818722, 33.710781, 35.710575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658287, 33.365726, 35.587292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044518, 0.354411, -0.934029,
		0.914957, -0.360908, -0.180553,
		-0.401089, -0.862634, -0.308204,
		37.537960, 33.106937, 35.494831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163849, 33.516441, 35.166271>,  <37.818722, 33.710781, 35.710575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163849, 33.516441, 35.166271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845974, 33.284180, 35.095493>,  <37.655251, 33.144821, 35.053024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845974, 33.284180, 35.095493>,  <38.163849, 33.516441, 35.166271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845974, 33.284180, 35.095493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041972, 0.238245, -0.970298,
		0.605565, -0.778511, -0.164959,
		-0.794688, -0.580655, -0.176948,
		37.607567, 33.109982, 35.042408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.445557, 30.283926, 42.726322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.062717, 30.398335, 42.707718>,  <37.833015, 30.466980, 42.696556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.062717, 30.398335, 42.707718>,  <38.445557, 30.283926, 42.726322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062717, 30.398335, 42.707718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088330, 0.135099, -0.986887,
		-0.275987, -0.948652, -0.154567,
		-0.957094, 0.286021, -0.046509,
		37.775589, 30.484140, 42.693764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245777, 29.932907, 42.174702>,  <38.445557, 30.283926, 42.726322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245777, 29.932907, 42.174702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.976303, 30.225931, 42.213699>,  <37.814617, 30.401745, 42.237099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.976303, 30.225931, 42.213699>,  <38.245777, 29.932907, 42.174702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976303, 30.225931, 42.213699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073308, 0.197515, -0.977555,
		-0.735374, -0.651417, -0.186766,
		-0.673685, 0.732560, 0.097493,
		37.774197, 30.445700, 42.242947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760921, 29.779991, 41.707851>,  <38.245777, 29.932907, 42.174702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760921, 29.779991, 41.707851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.704094, 30.174519, 41.741287>,  <37.669998, 30.411236, 41.761349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.704094, 30.174519, 41.741287>,  <37.760921, 29.779991, 41.707851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704094, 30.174519, 41.741287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002290, 0.084777, -0.996397,
		-0.989854, -0.141367, -0.014303,
		-0.142071, 0.986321, 0.083593,
		37.661472, 30.470415, 41.766365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302013, 29.942362, 41.097031>,  <37.760921, 29.779991, 41.707851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302013, 29.942362, 41.097031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.436790, 30.292339, 41.236141>,  <37.517654, 30.502325, 41.319607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.436790, 30.292339, 41.236141>,  <37.302013, 29.942362, 41.097031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436790, 30.292339, 41.236141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110462, 0.403558, -0.908261,
		-0.935024, 0.267613, 0.232622,
		0.336940, 0.874942, 0.347776,
		37.537872, 30.554823, 41.340473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857605, 30.436853, 40.833576>,  <37.302013, 29.942362, 41.097031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857605, 30.436853, 40.833576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.197544, 30.629787, 40.918533>,  <37.401508, 30.745548, 40.969509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.197544, 30.629787, 40.918533>,  <36.857605, 30.436853, 40.833576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197544, 30.629787, 40.918533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042005, 0.339727, -0.939586,
		-0.525351, 0.807427, 0.268456,
		0.849848, 0.482336, 0.212392,
		37.452499, 30.774488, 40.982250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836403, 31.070887, 40.491909>,  <36.857605, 30.436853, 40.833576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836403, 31.070887, 40.491909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.230808, 31.063269, 40.558147>,  <37.467449, 31.058699, 40.597889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.230808, 31.063269, 40.558147>,  <36.836403, 31.070887, 40.491909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230808, 31.063269, 40.558147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158037, 0.422642, -0.892411,
		-0.052992, 0.906097, 0.419739,
		0.986010, -0.019044, 0.165593,
		37.526611, 31.057556, 40.607826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055889, 31.734903, 40.637844>,  <36.836403, 31.070887, 40.491909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055889, 31.734903, 40.637844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.354843, 31.509096, 40.497711>,  <37.534214, 31.373611, 40.413631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.354843, 31.509096, 40.497711>,  <37.055889, 31.734903, 40.637844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354843, 31.509096, 40.497711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072915, 0.593808, -0.801296,
		0.660378, 0.573333, 0.484965,
		0.747385, -0.564519, -0.350333,
		37.579060, 31.339741, 40.392612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461426, 32.218296, 40.320934>,  <37.055889, 31.734903, 40.637844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461426, 32.218296, 40.320934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.598854, 31.868546, 40.183868>,  <37.681309, 31.658693, 40.101627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.598854, 31.868546, 40.183868>,  <37.461426, 32.218296, 40.320934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598854, 31.868546, 40.183868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243070, 0.435236, -0.866884,
		0.907126, 0.214542, 0.362069,
		0.343569, -0.874381, -0.342665,
		37.701923, 31.606232, 40.081070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138775, 32.325676, 39.944752>,  <37.461426, 32.218296, 40.320934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138775, 32.325676, 39.944752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989258, 31.982044, 39.804890>,  <37.899548, 31.775866, 39.720974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989258, 31.982044, 39.804890>,  <38.138775, 32.325676, 39.944752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989258, 31.982044, 39.804890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000635, 0.377220, -0.926124,
		0.927512, -0.345957, -0.141547,
		-0.373793, -0.859081, -0.349656,
		37.877121, 31.724319, 39.699993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763222, 32.583160, 39.724579>,  <38.138775, 32.325676, 39.944752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763222, 32.583160, 39.724579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.978527, 32.918461, 39.689686>,  <39.107712, 33.119640, 39.668751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.978527, 32.918461, 39.689686>,  <38.763222, 32.583160, 39.724579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978527, 32.918461, 39.689686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232350, -0.048103, 0.971442,
		0.810115, -0.543160, -0.220660,
		0.538263, 0.838250, -0.087234,
		39.140007, 33.169937, 39.663517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438755, 32.425903, 40.008141>,  <38.763222, 32.583160, 39.724579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438755, 32.425903, 40.008141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.404469, 32.822594, 40.046360>,  <39.383896, 33.060608, 40.069290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.404469, 32.822594, 40.046360>,  <39.438755, 32.425903, 40.008141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404469, 32.822594, 40.046360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383235, -0.055702, 0.921970,
		0.919665, 0.115644, -0.375290,
		-0.085715, 0.991728, 0.095546,
		39.378754, 33.120113, 40.075024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061684, 32.734859, 40.416233>,  <39.438755, 32.425903, 40.008141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061684, 32.734859, 40.416233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.765003, 32.995785, 40.478676>,  <39.586994, 33.152340, 40.516144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.765003, 32.995785, 40.478676>,  <40.061684, 32.734859, 40.416233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765003, 32.995785, 40.478676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307971, 0.124443, 0.943222,
		0.595846, 0.747667, -0.293192,
		-0.741702, 0.652309, 0.156111,
		39.542492, 33.191479, 40.525509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069183, 32.692291, 41.069691>,  <40.061684, 32.734859, 40.416233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069183, 32.692291, 41.069691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.794933, 32.979343, 41.020824>,  <39.630383, 33.151573, 40.991505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.794933, 32.979343, 41.020824>,  <40.069183, 32.692291, 41.069691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794933, 32.979343, 41.020824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124470, 0.280920, 0.951625,
		0.717232, 0.637255, -0.281930,
		-0.685628, 0.717628, -0.122166,
		39.589245, 33.194633, 40.984173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368092, 33.366486, 41.182957>,  <40.069183, 32.692291, 41.069691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368092, 33.366486, 41.182957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.975246, 33.351849, 41.256832>,  <39.739540, 33.343067, 41.301159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.975246, 33.351849, 41.256832>,  <40.368092, 33.366486, 41.182957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975246, 33.351849, 41.256832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154144, 0.406989, 0.900333,
		-0.108116, 0.912700, -0.394069,
		-0.982115, -0.036597, 0.184689,
		39.680611, 33.340870, 41.312241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200310, 33.966335, 41.553196>,  <40.368092, 33.366486, 41.182957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200310, 33.966335, 41.553196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871563, 33.748695, 41.620701>,  <39.674313, 33.618111, 41.661201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871563, 33.748695, 41.620701>,  <40.200310, 33.966335, 41.553196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871563, 33.748695, 41.620701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050850, 0.224990, 0.973033,
		-0.567399, 0.808290, -0.157245,
		-0.821872, -0.544102, 0.168760,
		39.625000, 33.585464, 41.671329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667023, 34.334843, 42.021496>,  <40.200310, 33.966335, 41.553196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667023, 34.334843, 42.021496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.565422, 33.951218, 42.071575>,  <39.504459, 33.721043, 42.101624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.565422, 33.951218, 42.071575>,  <39.667023, 34.334843, 42.021496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565422, 33.951218, 42.071575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084479, 0.106946, 0.990669,
		-0.963507, 0.262210, 0.053857,
		-0.254004, -0.959066, 0.125195,
		39.489220, 33.663498, 42.109135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121025, 34.285526, 42.564491>,  <39.667023, 34.334843, 42.021496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121025, 34.285526, 42.564491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.293995, 33.924877, 42.568027>,  <39.397778, 33.708488, 42.570148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.293995, 33.924877, 42.568027>,  <39.121025, 34.285526, 42.564491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293995, 33.924877, 42.568027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200731, -0.086708, 0.975802,
		-0.879043, -0.423735, -0.218479,
		0.432425, -0.901627, 0.008837,
		39.423721, 33.654388, 42.570679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685745, 33.962353, 43.052727>,  <39.121025, 34.285526, 42.564491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685745, 33.962353, 43.052727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.013119, 33.733780, 43.028622>,  <39.209541, 33.596638, 43.014156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.013119, 33.733780, 43.028622>,  <38.685745, 33.962353, 43.052727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013119, 33.733780, 43.028622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048525, -0.173245, 0.983683,
		-0.572548, -0.802155, -0.169518,
		0.818434, -0.571432, -0.060267,
		39.258648, 33.562351, 43.010540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523064, 33.354656, 43.441437>,  <38.685745, 33.962353, 43.052727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523064, 33.354656, 43.441437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.920658, 33.395164, 43.424770>,  <39.159214, 33.419468, 43.414768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.920658, 33.395164, 43.424770>,  <38.523064, 33.354656, 43.441437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920658, 33.395164, 43.424770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054700, -0.129511, 0.990068,
		0.094867, -0.986393, -0.134272,
		0.993986, 0.101270, -0.041670,
		39.218853, 33.425545, 43.412270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608860, 33.247356, 44.080276>,  <38.523064, 33.354656, 43.441437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608860, 33.247356, 44.080276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.987049, 33.333416, 43.982468>,  <39.213963, 33.385052, 43.923782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.987049, 33.333416, 43.982468>,  <38.608860, 33.247356, 44.080276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987049, 33.333416, 43.982468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217054, 0.143509, 0.965553,
		0.242832, -0.965979, 0.088984,
		0.945474, 0.215153, -0.244517,
		39.270691, 33.397961, 43.909111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950455, 32.720047, 44.463406>,  <38.608860, 33.247356, 44.080276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950455, 32.720047, 44.463406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.176037, 33.038635, 44.376141>,  <39.311386, 33.229786, 44.323784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.176037, 33.038635, 44.376141>,  <38.950455, 32.720047, 44.463406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176037, 33.038635, 44.376141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171758, 0.145270, 0.974369,
		0.807744, -0.586974, -0.054873,
		0.563958, 0.796466, -0.218159,
		39.345222, 33.277576, 44.310692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534336, 32.583904, 44.835297>,  <38.950455, 32.720047, 44.463406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534336, 32.583904, 44.835297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.518589, 32.977219, 44.764198>,  <39.509140, 33.213207, 44.721539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.518589, 32.977219, 44.764198>,  <39.534336, 32.583904, 44.835297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518589, 32.977219, 44.764198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145852, 0.181630, 0.972491,
		0.988523, 0.012357, -0.150564,
		-0.039364, 0.983289, -0.177743,
		39.506779, 33.272205, 44.710876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081039, 32.870571, 45.167545>,  <39.534336, 32.583904, 44.835297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081039, 32.870571, 45.167545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.822330, 33.173878, 45.134789>,  <39.667103, 33.355862, 45.115135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.822330, 33.173878, 45.134789>,  <40.081039, 32.870571, 45.167545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822330, 33.173878, 45.134789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052608, 0.062761, 0.996641,
		0.760863, 0.648912, -0.000701,
		-0.646777, 0.758270, -0.081891,
		39.628296, 33.401360, 45.110222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.482483, 36.526844, 43.797394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.838581, 36.410969, 43.937984>,  <33.052242, 36.341442, 44.022339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.838581, 36.410969, 43.937984>,  <32.482483, 36.526844, 43.797394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838581, 36.410969, 43.937984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449454, 0.433678, -0.780970,
		0.073808, 0.853232, 0.516283,
		0.890249, -0.289687, 0.351479,
		33.105656, 36.324062, 44.043427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922924, 37.124638, 43.955616>,  <32.482483, 36.526844, 43.797394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922924, 37.124638, 43.955616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167652, 36.809368, 43.928875>,  <33.314487, 36.620209, 43.912830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167652, 36.809368, 43.928875>,  <32.922924, 37.124638, 43.955616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167652, 36.809368, 43.928875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484023, 0.439884, -0.756455,
		0.625620, 0.430456, 0.650621,
		0.611817, -0.788169, -0.066850,
		33.351196, 36.572918, 43.908821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617672, 37.327686, 43.730076>,  <32.922924, 37.124638, 43.955616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617672, 37.327686, 43.730076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603657, 36.941315, 43.627506>,  <33.595245, 36.709492, 43.565964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603657, 36.941315, 43.627506>,  <33.617672, 37.327686, 43.730076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603657, 36.941315, 43.627506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368642, 0.225991, -0.901682,
		0.928911, -0.126124, 0.348163,
		-0.035043, -0.965930, -0.256420,
		33.593143, 36.651535, 43.550579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227913, 37.241627, 43.402775>,  <33.617672, 37.327686, 43.730076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227913, 37.241627, 43.402775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.982769, 36.949352, 43.282448>,  <33.835682, 36.773987, 43.210251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.982769, 36.949352, 43.282448>,  <34.227913, 37.241627, 43.402775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982769, 36.949352, 43.282448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230613, 0.198729, -0.952536,
		0.755790, -0.653146, 0.046714,
		-0.612862, -0.730689, -0.300821,
		33.798912, 36.730145, 43.192200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560799, 36.875607, 43.012024>,  <34.227913, 37.241627, 43.402775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560799, 36.875607, 43.012024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.203278, 36.743782, 42.890362>,  <33.988766, 36.664688, 42.817364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.203278, 36.743782, 42.890362>,  <34.560799, 36.875607, 43.012024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203278, 36.743782, 42.890362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297217, 0.072568, -0.952048,
		0.335833, -0.941340, 0.033091,
		-0.893800, -0.329565, -0.304154,
		33.935139, 36.644913, 42.799114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651085, 36.320312, 42.537136>,  <34.560799, 36.875607, 43.012024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651085, 36.320312, 42.537136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.283157, 36.450359, 42.449284>,  <34.062401, 36.528389, 42.396572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.283157, 36.450359, 42.449284>,  <34.651085, 36.320312, 42.537136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283157, 36.450359, 42.449284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239234, 0.021070, -0.970733,
		-0.310973, -0.945439, -0.097159,
		-0.919817, 0.325116, -0.219630,
		34.007214, 36.547894, 42.383396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381310, 35.764915, 42.147484>,  <34.651085, 36.320312, 42.537136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381310, 35.764915, 42.147484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.193398, 36.111713, 42.080997>,  <34.080650, 36.319794, 42.041107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.193398, 36.111713, 42.080997>,  <34.381310, 35.764915, 42.147484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193398, 36.111713, 42.080997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338912, 0.003270, -0.940813,
		-0.815136, -0.498306, -0.295371,
		-0.469779, 0.866995, -0.166216,
		34.052464, 36.371811, 42.031132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239220, 35.651253, 41.511093>,  <34.381310, 35.764915, 42.147484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239220, 35.651253, 41.511093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.154610, 36.040279, 41.549824>,  <34.103844, 36.273697, 41.573063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.154610, 36.040279, 41.549824>,  <34.239220, 35.651253, 41.511093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154610, 36.040279, 41.549824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341551, 0.166378, -0.925019,
		-0.915752, -0.162590, -0.367374,
		-0.211521, 0.972565, 0.096828,
		34.091152, 36.332050, 41.578873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754223, 35.738529, 41.005936>,  <34.239220, 35.651253, 41.511093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754223, 35.738529, 41.005936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.865669, 36.115475, 41.080055>,  <33.932537, 36.341640, 41.124527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.865669, 36.115475, 41.080055>,  <33.754223, 35.738529, 41.005936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865669, 36.115475, 41.080055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296300, 0.099182, -0.949931,
		-0.913555, 0.319565, -0.251587,
		0.278612, 0.942359, 0.185295,
		33.949253, 36.398182, 41.135643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359379, 36.262295, 40.546162>,  <33.754223, 35.738529, 41.005936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359379, 36.262295, 40.546162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.700588, 36.427223, 40.674129>,  <33.905315, 36.526180, 40.750912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.700588, 36.427223, 40.674129>,  <33.359379, 36.262295, 40.546162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700588, 36.427223, 40.674129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289538, 0.136112, -0.947439,
		-0.434190, 0.900815, -0.003275,
		0.853022, 0.412317, 0.319919,
		33.956493, 36.550919, 40.770103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602226, 36.687473, 39.972542>,  <33.359379, 36.262295, 40.546162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602226, 36.687473, 39.972542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.934601, 36.689396, 40.195080>,  <34.134026, 36.690548, 40.328602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.934601, 36.689396, 40.195080>,  <33.602226, 36.687473, 39.972542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934601, 36.689396, 40.195080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542909, 0.211610, -0.812693,
		-0.121636, 0.977342, 0.173224,
		0.830936, 0.004808, 0.556348,
		34.183880, 36.690838, 40.361984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907600, 37.286713, 39.767830>,  <33.602226, 36.687473, 39.972542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907600, 37.286713, 39.767830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.202374, 37.078983, 39.940914>,  <34.379238, 36.954346, 40.044765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.202374, 37.078983, 39.940914>,  <33.907600, 37.286713, 39.767830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202374, 37.078983, 39.940914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595092, 0.194795, -0.779693,
		0.320621, 0.832082, 0.452594,
		0.736931, -0.519321, 0.432710,
		34.423454, 36.923187, 40.070728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381195, 37.789280, 40.041191>,  <33.907600, 37.286713, 39.767830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381195, 37.789280, 40.041191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.550327, 37.434139, 39.968609>,  <34.651806, 37.221054, 39.925060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.550327, 37.434139, 39.968609>,  <34.381195, 37.789280, 40.041191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550327, 37.434139, 39.968609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332769, 0.338371, -0.880210,
		0.842897, 0.311802, 0.438526,
		0.422835, -0.887854, -0.181453,
		34.677177, 37.167782, 39.914173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980911, 37.987568, 39.712540>,  <34.381195, 37.789280, 40.041191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980911, 37.987568, 39.712540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891857, 37.603725, 39.643738>,  <34.838425, 37.373421, 39.602459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891857, 37.603725, 39.643738>,  <34.980911, 37.987568, 39.712540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891857, 37.603725, 39.643738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121003, 0.202265, -0.971827,
		0.967364, -0.195549, -0.161147,
		-0.222634, -0.959609, -0.172002,
		34.825066, 37.315842, 39.592136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755074, 37.987282, 39.746315>,  <34.980911, 37.987568, 39.712540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755074, 37.987282, 39.746315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.042301, 38.264133, 39.775505>,  <36.214638, 38.430244, 39.793018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.042301, 38.264133, 39.775505>,  <35.755074, 37.987282, 39.746315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042301, 38.264133, 39.775505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129438, 0.029787, 0.991140,
		0.683826, -0.721156, 0.110978,
		0.718072, 0.692132, 0.072976,
		36.257725, 38.471771, 39.797398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280155, 37.740150, 40.191742>,  <35.755074, 37.987282, 39.746315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280155, 37.740150, 40.191742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.352402, 38.133465, 40.201008>,  <36.395748, 38.369453, 40.206570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.352402, 38.133465, 40.201008>,  <36.280155, 37.740150, 40.191742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352402, 38.133465, 40.201008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000099, -0.023575, 0.999722,
		0.983554, -0.180561, -0.004355,
		0.180614, 0.983281, 0.023169,
		36.406586, 38.428448, 40.207958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688717, 37.789818, 40.680695>,  <36.280155, 37.740150, 40.191742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688717, 37.789818, 40.680695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.552666, 38.164745, 40.650364>,  <36.471035, 38.389702, 40.632168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.552666, 38.164745, 40.650364>,  <36.688717, 37.789818, 40.680695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552666, 38.164745, 40.650364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167710, 0.018875, 0.985656,
		0.925303, 0.347965, 0.150778,
		-0.340128, 0.937317, -0.075822,
		36.450626, 38.445942, 40.627617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012276, 38.209335, 41.207592>,  <36.688717, 37.789818, 40.680695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012276, 38.209335, 41.207592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.688034, 38.425083, 41.116383>,  <36.493488, 38.554531, 41.061657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.688034, 38.425083, 41.116383>,  <37.012276, 38.209335, 41.207592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688034, 38.425083, 41.116383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214533, 0.088787, 0.972673,
		0.544876, 0.837375, 0.043742,
		-0.810608, 0.539370, -0.228022,
		36.444851, 38.586895, 41.047977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035557, 38.967365, 41.479851>,  <37.012276, 38.209335, 41.207592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035557, 38.967365, 41.479851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.654869, 38.849934, 41.443989>,  <36.426456, 38.779476, 41.422470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.654869, 38.849934, 41.443989>,  <37.035557, 38.967365, 41.479851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654869, 38.849934, 41.443989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111948, 0.059993, 0.991902,
		-0.285823, 0.954050, -0.089962,
		-0.951721, -0.293580, -0.089656,
		36.369354, 38.761860, 41.417091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675999, 39.355286, 41.975182>,  <37.035557, 38.967365, 41.479851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675999, 39.355286, 41.975182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.385719, 39.090141, 41.901455>,  <36.211552, 38.931053, 41.857220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.385719, 39.090141, 41.901455>,  <36.675999, 39.355286, 41.975182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385719, 39.090141, 41.901455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160455, -0.097446, 0.982221,
		-0.669040, 0.742372, -0.035643,
		-0.725700, -0.662864, -0.184312,
		36.168011, 38.891281, 41.846161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074215, 39.577187, 42.297386>,  <36.675999, 39.355286, 41.975182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074215, 39.577187, 42.297386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.052017, 39.180080, 42.254791>,  <36.038700, 38.941818, 42.229237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.052017, 39.180080, 42.254791>,  <36.074215, 39.577187, 42.297386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052017, 39.180080, 42.254791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212427, -0.092468, 0.972792,
		-0.975600, 0.076603, -0.205758,
		-0.055492, -0.992765, -0.106484,
		36.035370, 38.882252, 42.222847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477921, 39.394859, 42.667076>,  <36.074215, 39.577187, 42.297386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477921, 39.394859, 42.667076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.666431, 39.044804, 42.623196>,  <35.779537, 38.834770, 42.596867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.666431, 39.044804, 42.623196>,  <35.477921, 39.394859, 42.667076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666431, 39.044804, 42.623196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312300, -0.281901, 0.907194,
		-0.824844, -0.393280, -0.406158,
		0.471277, -0.875136, -0.109703,
		35.807816, 38.782261, 42.590286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072811, 38.935108, 43.025394>,  <35.477921, 39.394859, 42.667076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072811, 38.935108, 43.025394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.407101, 38.715584, 43.017738>,  <35.607674, 38.583870, 43.013145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.407101, 38.715584, 43.017738>,  <35.072811, 38.935108, 43.025394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407101, 38.715584, 43.017738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265838, -0.434816, 0.860387,
		-0.480514, -0.713959, -0.509282,
		0.835725, -0.548814, -0.019138,
		35.657818, 38.550941, 43.011997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820679, 38.238636, 43.243809>,  <35.072811, 38.935108, 43.025394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820679, 38.238636, 43.243809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.218525, 38.233559, 43.284935>,  <35.457233, 38.230511, 43.309608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.218525, 38.233559, 43.284935>,  <34.820679, 38.238636, 43.243809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218525, 38.233559, 43.284935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094656, -0.514625, 0.852175,
		0.042091, -0.857322, -0.513058,
		0.994619, -0.012695, 0.102811,
		35.516911, 38.229752, 43.315777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088230, 37.527920, 43.233746>,  <34.820679, 38.238636, 43.243809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088230, 37.527920, 43.233746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.311440, 37.784504, 43.444321>,  <35.445366, 37.938454, 43.570667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.311440, 37.784504, 43.444321>,  <35.088230, 37.527920, 43.233746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311440, 37.784504, 43.444321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036773, -0.614661, 0.787933,
		0.829008, -0.459047, -0.319409,
		0.558027, 0.641457, 0.526440,
		35.478848, 37.976940, 43.602253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587337, 37.186398, 43.665615>,  <35.088230, 37.527920, 43.233746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587337, 37.186398, 43.665615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.568913, 37.543499, 43.844891>,  <35.557858, 37.757759, 43.952454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.568913, 37.543499, 43.844891>,  <35.587337, 37.186398, 43.665615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568913, 37.543499, 43.844891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193650, -0.448132, 0.872742,
		0.979989, -0.046594, 0.193522,
		-0.046058, 0.892753, 0.448187,
		35.555096, 37.811325, 43.979347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863983, 37.031036, 44.275291>,  <35.587337, 37.186398, 43.665615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863983, 37.031036, 44.275291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.683895, 37.382057, 44.341263>,  <35.575844, 37.592670, 44.380844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.683895, 37.382057, 44.341263>,  <35.863983, 37.031036, 44.275291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683895, 37.382057, 44.341263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286686, -0.316989, 0.904063,
		0.845645, 0.359742, 0.394297,
		-0.450217, 0.877555, 0.164927,
		35.548828, 37.645325, 44.390739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000187, 37.081707, 44.951847>,  <35.863983, 37.031036, 44.275291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000187, 37.081707, 44.951847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.685291, 37.314709, 44.870903>,  <35.496353, 37.454510, 44.822334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.685291, 37.314709, 44.870903>,  <36.000187, 37.081707, 44.951847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685291, 37.314709, 44.870903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419558, -0.265459, 0.868045,
		0.451918, 0.768260, 0.453372,
		-0.787237, 0.582501, -0.202364,
		35.449120, 37.489460, 44.810192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582832, 37.471401, 45.293926>,  <36.000187, 37.081707, 44.951847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582832, 37.471401, 45.293926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.965015, 37.397480, 45.385960>,  <37.194324, 37.353127, 45.441181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.965015, 37.397480, 45.385960>,  <36.582832, 37.471401, 45.293926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965015, 37.397480, 45.385960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181928, -0.245042, -0.952290,
		0.232367, 0.951736, -0.200507,
		0.955462, -0.184803, 0.230087,
		37.251656, 37.342037, 45.454987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043671, 37.748528, 44.742500>,  <36.582832, 37.471401, 45.293926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043671, 37.748528, 44.742500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.289227, 37.488178, 44.921162>,  <37.436558, 37.331966, 45.028358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.289227, 37.488178, 44.921162>,  <37.043671, 37.748528, 44.742500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289227, 37.488178, 44.921162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430453, -0.198289, -0.880563,
		0.661706, 0.732830, 0.158446,
		0.613885, -0.650878, 0.446658,
		37.473392, 37.292915, 45.055161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730972, 37.947876, 44.545940>,  <37.043671, 37.748528, 44.742500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730972, 37.947876, 44.545940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.802303, 37.566456, 44.643047>,  <37.845100, 37.337605, 44.701309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.802303, 37.566456, 44.643047>,  <37.730972, 37.947876, 44.545940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802303, 37.566456, 44.643047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554121, -0.106558, -0.825587,
		0.813111, 0.281746, 0.509382,
		0.178327, -0.953553, 0.242766,
		37.855801, 37.280388, 44.715878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331501, 37.818695, 44.247204>,  <37.730972, 37.947876, 44.545940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331501, 37.818695, 44.247204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.197124, 37.447502, 44.311687>,  <38.116497, 37.224785, 44.350376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.197124, 37.447502, 44.311687>,  <38.331501, 37.818695, 44.247204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197124, 37.447502, 44.311687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422728, -0.301498, -0.854634,
		0.841692, -0.218959, 0.493570,
		-0.335940, -0.927985, 0.161209,
		38.096344, 37.169106, 44.360050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926517, 37.306206, 44.032406>,  <38.331501, 37.818695, 44.247204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926517, 37.306206, 44.032406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.560600, 37.145157, 44.019455>,  <38.341049, 37.048527, 44.011684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.560600, 37.145157, 44.019455>,  <38.926517, 37.306206, 44.032406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560600, 37.145157, 44.019455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213820, -0.414698, -0.884481,
		0.342689, -0.816038, 0.465452,
		-0.914793, -0.402625, -0.032373,
		38.286163, 37.024368, 44.009743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106541, 36.649147, 43.733551>,  <38.926517, 37.306206, 44.032406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106541, 36.649147, 43.733551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.709919, 36.625484, 43.687382>,  <38.471947, 36.611286, 43.659679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.709919, 36.625484, 43.687382>,  <39.106541, 36.649147, 43.733551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709919, 36.625484, 43.687382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129034, -0.359658, -0.924119,
		0.013153, -0.931207, 0.364253,
		-0.991553, -0.059156, -0.115427,
		38.412453, 36.607738, 43.652752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946804, 36.011681, 43.422031>,  <39.106541, 36.649147, 43.733551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946804, 36.011681, 43.422031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.628700, 36.243000, 43.349232>,  <38.437836, 36.381794, 43.305553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.628700, 36.243000, 43.349232>,  <38.946804, 36.011681, 43.422031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628700, 36.243000, 43.349232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021457, -0.326851, -0.944832,
		-0.605884, -0.747485, 0.272341,
		-0.795263, 0.578303, -0.181996,
		38.390121, 36.416492, 43.294632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433475, 35.623936, 42.984676>,  <38.946804, 36.011681, 43.422031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433475, 35.623936, 42.984676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.347519, 36.009342, 42.920849>,  <38.295944, 36.240585, 42.882553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.347519, 36.009342, 42.920849>,  <38.433475, 35.623936, 42.984676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347519, 36.009342, 42.920849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121982, -0.188585, -0.974452,
		-0.968991, -0.189934, 0.158056,
		-0.214889, 0.963515, -0.159569,
		38.283051, 36.298397, 42.872978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770325, 35.586246, 42.650532>,  <38.433475, 35.623936, 42.984676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770325, 35.586246, 42.650532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.968464, 35.926052, 42.577923>,  <38.087349, 36.129936, 42.534359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.968464, 35.926052, 42.577923>,  <37.770325, 35.586246, 42.650532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968464, 35.926052, 42.577923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047075, -0.234899, -0.970879,
		-0.867418, 0.472379, -0.156348,
		0.495349, 0.849518, -0.181519,
		38.117069, 36.180908, 42.523468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224522, 35.985050, 42.319672>,  <37.770325, 35.586246, 42.650532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224522, 35.985050, 42.319672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.587337, 36.126198, 42.227787>,  <37.805027, 36.210884, 42.172657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.587337, 36.126198, 42.227787>,  <37.224522, 35.985050, 42.319672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587337, 36.126198, 42.227787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244301, -0.003283, -0.969694,
		-0.342926, 0.935668, 0.083228,
		0.907038, 0.352866, -0.229710,
		37.859447, 36.232059, 42.158875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118359, 36.238125, 41.658043>,  <37.224522, 35.985050, 42.319672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118359, 36.238125, 41.658043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.516403, 36.276680, 41.666592>,  <37.755230, 36.299812, 41.671722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.516403, 36.276680, 41.666592>,  <37.118359, 36.238125, 41.658043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516403, 36.276680, 41.666592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033905, -0.130341, -0.990889,
		-0.092724, 0.986773, -0.132973,
		0.995114, 0.096387, 0.021371,
		37.814938, 36.305595, 41.673004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251873, 36.665127, 41.114452>,  <37.118359, 36.238125, 41.658043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251873, 36.665127, 41.114452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.617489, 36.514442, 41.174603>,  <37.836861, 36.424030, 41.210693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.617489, 36.514442, 41.174603>,  <37.251873, 36.665127, 41.114452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617489, 36.514442, 41.174603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155943, -0.015864, -0.987639,
		0.374441, 0.926195, 0.044245,
		0.914044, -0.376712, 0.150374,
		37.891701, 36.401428, 41.219715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847801, 37.119343, 40.881142>,  <37.251873, 36.665127, 41.114452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847801, 37.119343, 40.881142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.953453, 36.733604, 40.874500>,  <38.016842, 36.502163, 40.870514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.953453, 36.733604, 40.874500>,  <37.847801, 37.119343, 40.881142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953453, 36.733604, 40.874500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299630, 0.098407, -0.948967,
		0.916766, 0.245670, 0.314939,
		0.264125, -0.964346, -0.016606,
		38.032692, 36.444302, 40.869518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444260, 37.115379, 40.529747>,  <37.847801, 37.119343, 40.881142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444260, 37.115379, 40.529747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.359196, 36.725304, 40.505150>,  <38.308155, 36.491257, 40.490391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.359196, 36.725304, 40.505150>,  <38.444260, 37.115379, 40.529747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359196, 36.725304, 40.505150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260792, 0.003999, -0.965387,
		0.941681, -0.221338, 0.253471,
		-0.212663, -0.975189, -0.061489,
		38.295399, 36.432747, 40.486702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.316879, 26.481405, 32.964497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.959082, 26.477863, 32.785698>,  <27.744404, 26.475739, 32.678417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.959082, 26.477863, 32.785698>,  <28.316879, 26.481405, 32.964497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959082, 26.477863, 32.785698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164822, 0.935914, 0.311287,
		0.415593, 0.352119, -0.838627,
		-0.894492, -0.008855, -0.446995,
		27.690735, 26.475206, 32.651600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228840, 27.145197, 32.662083>,  <28.316879, 26.481405, 32.964497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228840, 27.145197, 32.662083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.860250, 26.995077, 32.702152>,  <27.639097, 26.905005, 32.726196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.860250, 26.995077, 32.702152>,  <28.228840, 27.145197, 32.662083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860250, 26.995077, 32.702152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354230, 0.917721, 0.179749,
		-0.159395, 0.130148, -0.978598,
		-0.921474, -0.375300, 0.100177,
		27.583809, 26.882486, 32.732204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735783, 27.623371, 32.298157>,  <28.228840, 27.145197, 32.662083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735783, 27.623371, 32.298157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.533611, 27.423525, 32.579563>,  <27.412310, 27.303617, 32.748405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.533611, 27.423525, 32.579563>,  <27.735783, 27.623371, 32.298157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533611, 27.423525, 32.579563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421725, 0.854335, 0.303743,
		-0.752790, -0.143169, -0.642503,
		-0.505426, -0.499614, 0.703513,
		27.381983, 27.273640, 32.790615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100351, 27.902580, 32.247650>,  <27.735783, 27.623371, 32.298157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100351, 27.902580, 32.247650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.131388, 27.734060, 32.609089>,  <27.150009, 27.632948, 32.825951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.131388, 27.734060, 32.609089>,  <27.100351, 27.902580, 32.247650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131388, 27.734060, 32.609089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589740, 0.711368, 0.382313,
		-0.803857, -0.562551, -0.193261,
		0.077591, -0.421299, 0.903597,
		27.154665, 27.607670, 32.880169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450649, 27.840124, 32.546707>,  <27.100351, 27.902580, 32.247650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450649, 27.840124, 32.546707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.688019, 27.838552, 32.868660>,  <26.830441, 27.837610, 33.061832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.688019, 27.838552, 32.868660>,  <26.450649, 27.840124, 32.546707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688019, 27.838552, 32.868660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461645, 0.817500, 0.344352,
		-0.659341, -0.575916, 0.483312,
		0.593425, -0.003927, 0.804880,
		26.866047, 27.837374, 33.110123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.955421, 27.968819, 32.997459>,  <26.450649, 27.840124, 32.546707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.955421, 27.968819, 32.997459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.298260, 28.046831, 33.188183>,  <26.503963, 28.093637, 33.302616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.298260, 28.046831, 33.188183>,  <25.955421, 27.968819, 32.997459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298260, 28.046831, 33.188183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417950, 0.804360, 0.422283,
		-0.301171, -0.561221, 0.770926,
		0.857096, 0.195029, 0.476812,
		26.555389, 28.105339, 33.331226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892235, 27.984255, 33.752716>,  <25.955421, 27.968819, 32.997459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892235, 27.984255, 33.752716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.225574, 28.201918, 33.713898>,  <26.425579, 28.332516, 33.690609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.225574, 28.201918, 33.713898>,  <25.892235, 27.984255, 33.752716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.225574, 28.201918, 33.713898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459251, 0.779342, 0.426280,
		0.307594, -0.310674, 0.899371,
		0.833351, 0.544158, -0.097044,
		26.475580, 28.365166, 33.684784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938730, 28.325647, 34.414837>,  <25.892235, 27.984255, 33.752716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938730, 28.325647, 34.414837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.177059, 28.550917, 34.185810>,  <26.320057, 28.686079, 34.048393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.177059, 28.550917, 34.185810>,  <25.938730, 28.325647, 34.414837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177059, 28.550917, 34.185810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245475, 0.806517, 0.537841,
		0.764679, -0.179909, 0.618788,
		0.595826, 0.563172, -0.572563,
		26.355806, 28.719868, 34.014042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304874, 28.861555, 34.875027>,  <25.938730, 28.325647, 34.414837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304874, 28.861555, 34.875027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.320839, 29.000326, 34.500210>,  <26.330418, 29.083590, 34.275318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.320839, 29.000326, 34.500210>,  <26.304874, 28.861555, 34.875027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.320839, 29.000326, 34.500210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186211, 0.923943, 0.334148,
		0.981699, 0.161151, 0.101478,
		0.039912, 0.346929, -0.937042,
		26.332813, 29.104404, 34.219097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608868, 29.479410, 34.931149>,  <26.304874, 28.861555, 34.875027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608868, 29.479410, 34.931149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.436087, 29.511744, 34.571842>,  <26.332418, 29.531143, 34.356258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.436087, 29.511744, 34.571842>,  <26.608868, 29.479410, 34.931149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436087, 29.511744, 34.571842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167550, 0.971446, 0.167988,
		0.886196, 0.223067, -0.406076,
		-0.431953, 0.080832, -0.898267,
		26.306501, 29.535994, 34.302361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821609, 30.131096, 34.759308>,  <26.608868, 29.479410, 34.931149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.821609, 30.131096, 34.759308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.553211, 30.052952, 34.473202>,  <26.392172, 30.006065, 34.301540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.553211, 30.052952, 34.473202>,  <26.821609, 30.131096, 34.759308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.553211, 30.052952, 34.473202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310548, 0.950024, 0.031845,
		0.673295, 0.243491, -0.698131,
		-0.670995, -0.195362, -0.715262,
		26.351913, 29.994343, 34.258625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869131, 30.699507, 34.228306>,  <26.821609, 30.131096, 34.759308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869131, 30.699507, 34.228306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.508787, 30.525984, 34.221790>,  <26.292582, 30.421871, 34.217880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.508787, 30.525984, 34.221790>,  <26.869131, 30.699507, 34.228306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508787, 30.525984, 34.221790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434110, 0.900337, 0.030688,
		0.001353, 0.034718, -0.999396,
		-0.900859, -0.433806, -0.016290,
		26.238529, 30.395842, 34.216904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.582132, 31.084846, 33.612122>,  <26.869131, 30.699507, 34.228306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.582132, 31.084846, 33.612122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.296965, 30.930115, 33.846081>,  <26.125864, 30.837276, 33.986458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.296965, 30.930115, 33.846081>,  <26.582132, 31.084846, 33.612122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296965, 30.930115, 33.846081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469207, 0.883005, 0.012076,
		-0.521142, -0.265831, -0.811014,
		-0.712920, -0.386827, 0.584902,
		26.083088, 30.814066, 34.021553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943560, 31.331039, 33.310280>,  <26.582132, 31.084846, 33.612122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943560, 31.331039, 33.310280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.882975, 31.255638, 33.698410>,  <25.846622, 31.210398, 33.931286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.882975, 31.255638, 33.698410>,  <25.943560, 31.331039, 33.310280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.882975, 31.255638, 33.698410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353300, 0.927126, 0.124965,
		-0.923167, -0.323887, -0.207025,
		-0.151463, -0.188505, 0.970322,
		25.837536, 31.199087, 33.989506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.277746, 31.539684, 33.411961>,  <25.943560, 31.331039, 33.310280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.277746, 31.539684, 33.411961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.407598, 31.523798, 33.789963>,  <25.485510, 31.514267, 34.016766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.407598, 31.523798, 33.789963>,  <25.277746, 31.539684, 33.411961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.407598, 31.523798, 33.789963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367239, 0.915441, 0.164629,
		-0.871636, -0.400487, 0.282596,
		0.324632, -0.039716, 0.945006,
		25.504988, 31.511883, 34.073463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.708265, 31.756868, 33.828918>,  <25.277746, 31.539684, 33.411961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.708265, 31.756868, 33.828918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.009146, 31.805147, 34.088032>,  <25.189674, 31.834114, 34.243500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.009146, 31.805147, 34.088032>,  <24.708265, 31.756868, 33.828918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009146, 31.805147, 34.088032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364381, 0.895285, 0.256302,
		-0.549016, -0.428831, 0.717416,
		0.752202, 0.120699, 0.647784,
		25.234806, 31.841356, 34.282368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.416313, 32.149792, 34.387405>,  <24.708265, 31.756868, 33.828918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.416313, 32.149792, 34.387405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.805920, 32.217281, 34.447830>,  <25.039684, 32.257774, 34.484085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.805920, 32.217281, 34.447830>,  <24.416313, 32.149792, 34.387405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.805920, 32.217281, 34.447830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194064, 0.965665, 0.172712,
		-0.116736, -0.197540, 0.973319,
		0.974018, 0.168725, 0.151063,
		25.098125, 32.267899, 34.493149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.463438, 32.441250, 35.040123>,  <24.416313, 32.149792, 34.387405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.463438, 32.441250, 35.040123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.760313, 32.561649, 34.800606>,  <24.938438, 32.633888, 34.656895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.760313, 32.561649, 34.800606>,  <24.463438, 32.441250, 35.040123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.760313, 32.561649, 34.800606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340330, 0.938967, 0.050161,
		0.577348, 0.166559, 0.799329,
		0.742189, 0.300996, -0.598797,
		24.982969, 32.651947, 34.620968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.572159, 33.083553, 35.258900>,  <24.463438, 32.441250, 35.040123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.572159, 33.083553, 35.258900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.772333, 33.096546, 34.912834>,  <24.892437, 33.104343, 34.705196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.772333, 33.096546, 34.912834>,  <24.572159, 33.083553, 35.258900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.772333, 33.096546, 34.912834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145967, 0.988156, -0.047332,
		0.853381, 0.149972, 0.499249,
		0.500434, 0.032481, -0.865165,
		24.922462, 33.106289, 34.653286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.980602, 33.524742, 35.473648>,  <24.572159, 33.083553, 35.258900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.980602, 33.524742, 35.473648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.931244, 33.524670, 35.076706>,  <24.901628, 33.524624, 34.838539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.931244, 33.524670, 35.076706>,  <24.980602, 33.524742, 35.473648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.931244, 33.524670, 35.076706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047238, 0.998865, -0.006060,
		0.991233, -0.047625, -0.123246,
		-0.123394, -0.000185, -0.992358,
		24.894226, 33.524612, 34.778999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500750, 34.004997, 35.214016>,  <24.980602, 33.524742, 35.473648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.500750, 34.004997, 35.214016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.250166, 33.971642, 34.904022>,  <25.099815, 33.951630, 34.718025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.250166, 33.971642, 34.904022>,  <25.500750, 34.004997, 35.214016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.250166, 33.971642, 34.904022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215131, 0.937142, -0.274742,
		0.749178, -0.338837, -0.569141,
		-0.626459, -0.083391, -0.774981,
		25.062229, 33.946625, 34.671528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.299864, 34.280190, 34.998890>,  <25.500750, 34.004997, 35.214016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.299864, 34.280190, 34.998890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.688427, 34.281902, 35.093842>,  <26.921564, 34.282928, 35.150814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.688427, 34.281902, 35.093842>,  <26.299864, 34.280190, 34.998890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688427, 34.281902, 35.093842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136110, -0.829261, -0.542034,
		0.194533, 0.558845, -0.806132,
		0.971407, 0.004279, 0.237383,
		26.979849, 34.283188, 35.165058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664482, 34.339607, 34.371269>,  <26.299864, 34.280190, 34.998890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664482, 34.339607, 34.371269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.917059, 34.169537, 34.630653>,  <27.068605, 34.067493, 34.786285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.917059, 34.169537, 34.630653>,  <26.664482, 34.339607, 34.371269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.917059, 34.169537, 34.630653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289732, -0.646334, -0.705909,
		0.719263, 0.633620, -0.284933,
		0.631440, -0.425180, 0.648464,
		27.106491, 34.041981, 34.825191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147476, 33.976864, 33.925274>,  <26.664482, 34.339607, 34.371269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147476, 33.976864, 33.925274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.251459, 33.818401, 34.277519>,  <27.313848, 33.723324, 34.488865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.251459, 33.818401, 34.277519>,  <27.147476, 33.976864, 33.925274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251459, 33.818401, 34.277519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491425, -0.730755, -0.473813,
		0.831217, 0.555928, 0.004716,
		0.259959, -0.396159, 0.880613,
		27.329447, 33.699554, 34.541702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803650, 34.000481, 33.968811>,  <27.147476, 33.976864, 33.925274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803650, 34.000481, 33.968811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.710199, 33.710484, 34.227978>,  <27.654129, 33.536484, 34.383480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.710199, 33.710484, 34.227978>,  <27.803650, 34.000481, 33.968811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710199, 33.710484, 34.227978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455019, -0.670413, -0.586092,
		0.859288, 0.157890, 0.486513,
		-0.233627, -0.724995, 0.647920,
		27.640112, 33.492985, 34.422356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445200, 33.703949, 34.072056>,  <27.803650, 34.000481, 33.968811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445200, 33.703949, 34.072056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.173878, 33.432251, 34.184147>,  <28.011084, 33.269230, 34.251400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.173878, 33.432251, 34.184147>,  <28.445200, 33.703949, 34.072056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173878, 33.432251, 34.184147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429820, -0.676110, -0.598440,
		0.595950, -0.285479, 0.750563,
		-0.678305, -0.679247, 0.280224,
		27.970387, 33.228477, 34.268215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840555, 33.116211, 34.208965>,  <28.445200, 33.703949, 34.072056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840555, 33.116211, 34.208965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475164, 32.962749, 34.154747>,  <28.255930, 32.870674, 34.122215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475164, 32.962749, 34.154747>,  <28.840555, 33.116211, 34.208965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475164, 32.962749, 34.154747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391556, -0.738246, -0.549251,
		0.110654, -0.554802, 0.824591,
		-0.913477, -0.383650, -0.135546,
		28.201122, 32.847656, 34.114082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901392, 32.363762, 34.168228>,  <28.840555, 33.116211, 34.208965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901392, 32.363762, 34.168228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.548977, 32.423542, 33.988701>,  <28.337528, 32.459412, 33.880985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.548977, 32.423542, 33.988701>,  <28.901392, 32.363762, 34.168228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548977, 32.423542, 33.988701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227488, -0.698012, -0.678991,
		-0.414756, -0.700317, 0.580976,
		-0.881037, 0.149450, -0.448819,
		28.284666, 32.468376, 33.854053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666550, 31.651922, 33.894306>,  <28.901392, 32.363762, 34.168228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666550, 31.651922, 33.894306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.447638, 31.917383, 33.690323>,  <28.316290, 32.076660, 33.567932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.447638, 31.917383, 33.690323>,  <28.666550, 31.651922, 33.894306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447638, 31.917383, 33.690323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065950, -0.641602, -0.764198,
		-0.834347, -0.384599, 0.394903,
		-0.547280, 0.663650, -0.509954,
		28.283453, 32.116478, 33.537338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131926, 31.324816, 33.716660>,  <28.666550, 31.651922, 33.894306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131926, 31.324816, 33.716660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.138865, 31.626575, 33.454185>,  <28.143028, 31.807632, 33.296700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.138865, 31.626575, 33.454185>,  <28.131926, 31.324816, 33.716660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138865, 31.626575, 33.454185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172019, -0.644246, -0.745222,
		-0.984941, 0.125806, 0.118594,
		0.017349, 0.754400, -0.656185,
		28.144070, 31.852896, 33.257328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540901, 31.201351, 33.292362>,  <28.131926, 31.324816, 33.716660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540901, 31.201351, 33.292362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.812952, 31.399544, 33.076241>,  <27.976183, 31.518459, 32.946568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.812952, 31.399544, 33.076241>,  <27.540901, 31.201351, 33.292362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812952, 31.399544, 33.076241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152894, -0.624934, -0.765559,
		-0.716973, 0.603286, -0.349279,
		0.680128, 0.495482, -0.540300,
		28.016991, 31.548189, 32.914150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344793, 31.070551, 32.479820>,  <27.540901, 31.201351, 33.292362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344793, 31.070551, 32.479820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.708851, 31.236073, 32.487896>,  <27.927284, 31.335384, 32.492741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.708851, 31.236073, 32.487896>,  <27.344793, 31.070551, 32.479820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708851, 31.236073, 32.487896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272291, -0.560742, -0.781937,
		-0.312246, 0.717172, -0.623030,
		0.910143, 0.413802, 0.020190,
		27.981894, 31.360212, 32.493954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549452, 31.338615, 31.777969>,  <27.344793, 31.070551, 32.479820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549452, 31.338615, 31.777969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.898563, 31.285566, 31.965870>,  <28.108030, 31.253736, 32.078609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.898563, 31.285566, 31.965870>,  <27.549452, 31.338615, 31.777969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898563, 31.285566, 31.965870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404404, -0.342444, -0.848051,
		0.273335, 0.930131, -0.245244,
		0.872780, -0.132624, 0.469750,
		28.160397, 31.245779, 32.106796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042686, 31.633636, 31.317209>,  <27.549452, 31.338615, 31.777969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042686, 31.633636, 31.317209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.248257, 31.373592, 31.541080>,  <28.371599, 31.217566, 31.675404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.248257, 31.373592, 31.541080>,  <28.042686, 31.633636, 31.317209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248257, 31.373592, 31.541080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466872, -0.335369, -0.818266,
		0.719661, 0.681824, 0.131164,
		0.513925, -0.650110, 0.559676,
		28.402433, 31.178558, 31.708982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765602, 31.602068, 31.124878>,  <28.042686, 31.633636, 31.317209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765602, 31.602068, 31.124878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.741980, 31.264280, 31.337812>,  <28.727806, 31.061607, 31.465572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.741980, 31.264280, 31.337812>,  <28.765602, 31.602068, 31.124878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741980, 31.264280, 31.337812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481433, -0.491245, -0.725879,
		0.874491, 0.213418, 0.435567,
		-0.059055, -0.844471, 0.532336,
		28.724262, 31.010939, 31.497513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359241, 31.165804, 31.001980>,  <28.765602, 31.602068, 31.124878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359241, 31.165804, 31.001980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.122082, 30.886028, 31.161608>,  <28.979786, 30.718163, 31.257383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.122082, 30.886028, 31.161608>,  <29.359241, 31.165804, 31.001980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122082, 30.886028, 31.161608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220889, -0.617817, -0.754659,
		0.774389, -0.359287, 0.520801,
		-0.592899, -0.699439, 0.399068,
		28.944212, 30.676197, 31.281328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803358, 30.543053, 31.036909>,  <29.359241, 31.165804, 31.001980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803358, 30.543053, 31.036909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.420242, 30.428226, 31.042982>,  <29.190372, 30.359331, 31.046625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.420242, 30.428226, 31.042982>,  <29.803358, 30.543053, 31.036909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420242, 30.428226, 31.042982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166625, -0.597425, -0.784423,
		0.234251, -0.748784, 0.620040,
		-0.957791, -0.287066, 0.015181,
		29.132906, 30.342106, 31.047537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775738, 29.767105, 30.972870>,  <29.803358, 30.543053, 31.036909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775738, 29.767105, 30.972870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.415424, 29.902737, 30.864344>,  <29.199236, 29.984116, 30.799229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.415424, 29.902737, 30.864344>,  <29.775738, 29.767105, 30.972870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415424, 29.902737, 30.864344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052620, -0.534940, -0.843250,
		-0.431066, -0.773864, 0.464024,
		-0.900785, 0.339079, -0.271315,
		29.145189, 30.004461, 30.782949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474718, 29.179071, 30.834158>,  <29.775738, 29.767105, 30.972870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474718, 29.179071, 30.834158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.253813, 29.467503, 30.666801>,  <29.121269, 29.640562, 30.566387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.253813, 29.467503, 30.666801>,  <29.474718, 29.179071, 30.834158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253813, 29.467503, 30.666801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024890, -0.487382, -0.872834,
		-0.833299, -0.492447, 0.251215,
		-0.552263, 0.721078, -0.418392,
		29.088135, 29.683826, 30.541285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931967, 28.900059, 30.585009>,  <29.474718, 29.179071, 30.834158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931967, 28.900059, 30.585009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.965811, 29.230003, 30.361422>,  <28.986116, 29.427971, 30.227270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.965811, 29.230003, 30.361422>,  <28.931967, 28.900059, 30.585009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965811, 29.230003, 30.361422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008548, -0.560356, -0.828208,
		-0.996378, 0.074852, -0.040360,
		0.084609, 0.824862, -0.558966,
		28.991194, 29.477463, 30.193731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396029, 28.863903, 30.114649>,  <28.931967, 28.900059, 30.585009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396029, 28.863903, 30.114649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.657820, 29.124430, 29.961056>,  <28.814894, 29.280746, 29.868900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.657820, 29.124430, 29.961056>,  <28.396029, 28.863903, 30.114649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657820, 29.124430, 29.961056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182505, -0.356753, -0.916198,
		-0.733723, 0.669711, -0.114618,
		0.654478, 0.651318, -0.383983,
		28.854164, 29.319824, 29.845861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044422, 29.200283, 29.574617>,  <28.396029, 28.863903, 30.114649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044422, 29.200283, 29.574617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.431797, 29.235266, 29.481251>,  <28.664223, 29.256254, 29.425232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.431797, 29.235266, 29.481251>,  <28.044422, 29.200283, 29.574617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431797, 29.235266, 29.481251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179138, -0.406947, -0.895714,
		-0.173322, 0.909256, -0.378436,
		0.968436, 0.087455, -0.233415,
		28.722328, 29.261501, 29.411226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.325600, 33.425972, 45.712284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.983223, 33.604210, 45.607361>,  <39.777798, 33.711155, 45.544407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.983223, 33.604210, 45.607361>,  <40.325600, 33.425972, 45.712284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983223, 33.604210, 45.607361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166812, 0.242199, 0.955779,
		0.489424, 0.861848, -0.132977,
		-0.855943, 0.445599, -0.262305,
		39.726440, 33.737888, 45.528671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297409, 34.113945, 45.969303>,  <40.325600, 33.425972, 45.712284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297409, 34.113945, 45.969303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.914890, 34.019520, 45.900280>,  <39.685379, 33.962864, 45.858868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.914890, 34.019520, 45.900280>,  <40.297409, 34.113945, 45.969303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914890, 34.019520, 45.900280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243668, 0.317136, 0.916543,
		-0.161634, 0.918532, -0.360795,
		-0.956295, -0.236059, -0.172557,
		39.628002, 33.948704, 45.848515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808250, 34.765137, 46.086712>,  <40.297409, 34.113945, 45.969303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808250, 34.765137, 46.086712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.555008, 34.456894, 46.115944>,  <39.403061, 34.271950, 46.133484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.555008, 34.456894, 46.115944>,  <39.808250, 34.765137, 46.086712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555008, 34.456894, 46.115944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432254, 0.430284, 0.792472,
		-0.642132, 0.470127, -0.605514,
		-0.633106, -0.770608, 0.073085,
		39.365078, 34.225712, 46.137871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066673, 34.996880, 45.986980>,  <39.808250, 34.765137, 46.086712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066673, 34.996880, 45.986980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078644, 34.671227, 46.218945>,  <39.085827, 34.475834, 46.358124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078644, 34.671227, 46.218945>,  <39.066673, 34.996880, 45.986980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078644, 34.671227, 46.218945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546078, 0.472624, 0.691683,
		-0.837200, -0.337375, -0.430435,
		0.029923, -0.814128, 0.579914,
		39.087620, 34.426987, 46.392918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396198, 34.916904, 46.250530>,  <39.066673, 34.996880, 45.986980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396198, 34.916904, 46.250530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.602142, 34.678135, 46.496651>,  <38.725708, 34.534874, 46.644321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.602142, 34.678135, 46.496651>,  <38.396198, 34.916904, 46.250530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602142, 34.678135, 46.496651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634591, 0.217187, 0.741703,
		-0.576378, -0.772339, -0.266984,
		0.514861, -0.596927, 0.615301,
		38.756599, 34.499058, 46.681240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860287, 34.529179, 46.577065>,  <38.396198, 34.916904, 46.250530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860287, 34.529179, 46.577065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175743, 34.461536, 46.813519>,  <38.365017, 34.420952, 46.955391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175743, 34.461536, 46.813519>,  <37.860287, 34.529179, 46.577065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175743, 34.461536, 46.813519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612592, -0.133791, 0.778994,
		-0.052638, -0.976476, -0.209102,
		0.788645, -0.169099, 0.591138,
		38.412338, 34.410805, 46.990860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614738, 34.000156, 46.977745>,  <37.860287, 34.529179, 46.577065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614738, 34.000156, 46.977745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.919823, 34.165615, 47.176605>,  <38.102875, 34.264893, 47.295921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.919823, 34.165615, 47.176605>,  <37.614738, 34.000156, 46.977745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919823, 34.165615, 47.176605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488142, -0.136062, 0.862093,
		0.424250, -0.900211, 0.098144,
		0.762712, 0.413651, 0.497155,
		38.148636, 34.289711, 47.325752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921272, 33.516052, 47.534260>,  <37.614738, 34.000156, 46.977745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921272, 33.516052, 47.534260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.016720, 33.884666, 47.656784>,  <38.073990, 34.105835, 47.730301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.016720, 33.884666, 47.656784>,  <37.921272, 33.516052, 47.534260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016720, 33.884666, 47.656784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392497, -0.196993, 0.898410,
		0.888260, -0.334606, 0.314694,
		0.238621, 0.921538, 0.306313,
		38.088306, 34.161129, 47.748676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372704, 33.455292, 48.177959>,  <37.921272, 33.516052, 47.534260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372704, 33.455292, 48.177959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.203930, 33.817917, 48.173603>,  <38.102665, 34.035492, 48.170990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.203930, 33.817917, 48.173603>,  <38.372704, 33.455292, 48.177959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203930, 33.817917, 48.173603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417046, -0.183412, 0.890187,
		0.805012, 0.380141, 0.455466,
		-0.421935, 0.906561, -0.010888,
		38.077351, 34.089886, 48.170338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694317, 33.790642, 48.783173>,  <38.372704, 33.455292, 48.177959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694317, 33.790642, 48.783173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.356983, 33.985428, 48.692268>,  <38.154583, 34.102299, 48.637726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.356983, 33.985428, 48.692268>,  <38.694317, 33.790642, 48.783173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356983, 33.985428, 48.692268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128864, 0.227312, 0.965258,
		0.521703, 0.843325, -0.128949,
		-0.843338, 0.486962, -0.227263,
		38.103981, 34.131516, 48.624088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635220, 34.462189, 49.087032>,  <38.694317, 33.790642, 48.783173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635220, 34.462189, 49.087032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.248775, 34.400192, 49.004467>,  <38.016911, 34.362995, 48.954929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.248775, 34.400192, 49.004467>,  <38.635220, 34.462189, 49.087032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248775, 34.400192, 49.004467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247446, 0.328458, 0.911529,
		-0.073480, 0.931715, -0.355679,
		-0.966111, -0.154990, -0.206414,
		37.958942, 34.353695, 48.942543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305267, 35.040024, 49.462967>,  <38.635220, 34.462189, 49.087032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305267, 35.040024, 49.462967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.020359, 34.767128, 49.396969>,  <37.849415, 34.603390, 49.357368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.020359, 34.767128, 49.396969>,  <38.305267, 35.040024, 49.462967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020359, 34.767128, 49.396969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361830, 0.155454, 0.919191,
		-0.601457, 0.714413, -0.357579,
		-0.712270, -0.682237, -0.164997,
		37.806679, 34.562458, 49.347469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624264, 35.381542, 49.456604>,  <38.305267, 35.040024, 49.462967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624264, 35.381542, 49.456604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.606297, 34.994293, 49.555176>,  <37.595516, 34.761944, 49.614319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.606297, 34.994293, 49.555176>,  <37.624264, 35.381542, 49.456604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606297, 34.994293, 49.555176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373584, 0.245059, 0.894640,
		-0.926508, -0.051875, -0.372681,
		-0.044919, -0.968119, 0.246429,
		37.592819, 34.703857, 49.629105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094154, 35.349663, 49.999039>,  <37.624264, 35.381542, 49.456604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094154, 35.349663, 49.999039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.351089, 35.043579, 50.016304>,  <37.505249, 34.859928, 50.026661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.351089, 35.043579, 50.016304>,  <37.094154, 35.349663, 49.999039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351089, 35.043579, 50.016304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016368, 0.069999, 0.997413,
		-0.766247, -0.639969, 0.057488,
		0.642338, -0.765206, 0.043162,
		37.543793, 34.814018, 50.029251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684376, 35.664585, 50.497108>,  <37.094154, 35.349663, 49.999039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684376, 35.664585, 50.497108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.493587, 35.994453, 50.618713>,  <36.379116, 36.192375, 50.691677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.493587, 35.994453, 50.618713>,  <36.684376, 35.664585, 50.497108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493587, 35.994453, 50.618713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281178, 0.470887, -0.836185,
		-0.832729, -0.313354, -0.456478,
		-0.476971, 0.824667, 0.304012,
		36.350494, 36.241852, 50.709919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202953, 35.773262, 50.055874>,  <36.684376, 35.664585, 50.497108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202953, 35.773262, 50.055874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.298214, 36.134045, 50.199959>,  <36.355370, 36.350513, 50.286411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.298214, 36.134045, 50.199959>,  <36.202953, 35.773262, 50.055874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298214, 36.134045, 50.199959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340671, 0.269742, -0.900657,
		-0.909519, 0.337209, -0.243031,
		0.238154, 0.901959, 0.360213,
		36.369659, 36.404633, 50.308022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772354, 36.145073, 49.707722>,  <36.202953, 35.773262, 50.055874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772354, 36.145073, 49.707722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.083817, 36.374428, 49.809643>,  <36.270695, 36.512039, 49.870796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.083817, 36.374428, 49.809643>,  <35.772354, 36.145073, 49.707722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083817, 36.374428, 49.809643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216333, 0.135853, -0.966822,
		-0.588976, 0.807944, -0.018259,
		0.778658, 0.573384, 0.254799,
		36.317413, 36.546444, 49.886082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821014, 36.606949, 49.117897>,  <35.772354, 36.145073, 49.707722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821014, 36.606949, 49.117897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176102, 36.673092, 49.289768>,  <36.389153, 36.712776, 49.392891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176102, 36.673092, 49.289768>,  <35.821014, 36.606949, 49.117897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176102, 36.673092, 49.289768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375887, 0.278577, -0.883801,
		-0.265841, 0.946072, 0.185141,
		0.887715, 0.165358, 0.429673,
		36.442417, 36.722698, 49.418671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963680, 37.342251, 48.976585>,  <35.821014, 36.606949, 49.117897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963680, 37.342251, 48.976585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.287384, 37.118462, 49.048225>,  <36.481606, 36.984188, 49.091209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.287384, 37.118462, 49.048225>,  <35.963680, 37.342251, 48.976585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287384, 37.118462, 49.048225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446399, 0.387490, -0.806585,
		0.381864, 0.732692, 0.563331,
		0.809264, -0.559476, 0.179104,
		36.530163, 36.950619, 49.101955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555908, 37.781235, 49.151588>,  <35.963680, 37.342251, 48.976585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555908, 37.781235, 49.151588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.716415, 37.445019, 49.005997>,  <36.812721, 37.243290, 48.918640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.716415, 37.445019, 49.005997>,  <36.555908, 37.781235, 49.151588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716415, 37.445019, 49.005997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555138, 0.539249, -0.633271,
		0.728563, 0.052054, 0.682998,
		0.401270, -0.840536, -0.363980,
		36.836796, 37.192860, 48.896801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193302, 38.004890, 48.876312>,  <36.555908, 37.781235, 49.151588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193302, 38.004890, 48.876312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.135540, 37.644733, 48.712143>,  <37.100883, 37.428638, 48.613640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.135540, 37.644733, 48.712143>,  <37.193302, 38.004890, 48.876312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135540, 37.644733, 48.712143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546515, 0.273200, -0.791634,
		0.824906, -0.338617, 0.452625,
		-0.144404, -0.900389, -0.410423,
		37.092220, 37.374619, 48.589016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871864, 37.837070, 48.646450>,  <37.193302, 38.004890, 48.876312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871864, 37.837070, 48.646450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.644569, 37.571953, 48.451389>,  <37.508190, 37.412880, 48.334354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.644569, 37.571953, 48.451389>,  <37.871864, 37.837070, 48.646450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644569, 37.571953, 48.451389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503427, 0.188753, -0.843169,
		0.650895, -0.724620, 0.226412,
		-0.568241, -0.662796, -0.487651,
		37.474098, 37.373116, 48.305096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290497, 37.437729, 48.181480>,  <37.871864, 37.837070, 48.646450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290497, 37.437729, 48.181480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.916752, 37.451031, 48.039577>,  <37.692505, 37.459011, 47.954433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.916752, 37.451031, 48.039577>,  <38.290497, 37.437729, 48.181480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916752, 37.451031, 48.039577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343740, 0.346312, -0.872875,
		0.093828, -0.937530, -0.335014,
		-0.934366, 0.033258, -0.354760,
		37.636440, 37.461006, 47.933151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375191, 37.234413, 47.480843>,  <38.290497, 37.437729, 48.181480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375191, 37.234413, 47.480843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004051, 37.383533, 47.476387>,  <37.781368, 37.473007, 47.473713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004051, 37.383533, 47.476387>,  <38.375191, 37.234413, 47.480843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004051, 37.383533, 47.476387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059026, 0.117290, -0.991342,
		-0.368267, -0.920469, -0.130832,
		-0.927845, 0.372801, -0.011138,
		37.725697, 37.495373, 47.473045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951096, 36.753490, 47.177746>,  <38.375191, 37.234413, 47.480843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951096, 36.753490, 47.177746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.774120, 37.110619, 47.144001>,  <37.667934, 37.324898, 47.123753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.774120, 37.110619, 47.144001>,  <37.951096, 36.753490, 47.177746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774120, 37.110619, 47.144001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026002, -0.106805, -0.993940,
		-0.896422, -0.437563, 0.070470,
		-0.442438, 0.892822, -0.084364,
		37.641388, 37.378464, 47.118690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405670, 36.571945, 46.784798>,  <37.951096, 36.753490, 47.177746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405670, 36.571945, 46.784798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.426533, 36.970016, 46.751591>,  <37.439053, 37.208858, 46.731667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.426533, 36.970016, 46.751591>,  <37.405670, 36.571945, 46.784798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426533, 36.970016, 46.751591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108149, -0.077014, -0.991147,
		-0.992765, 0.060677, 0.103610,
		0.052160, 0.995182, -0.083019,
		37.442181, 37.268570, 46.726685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852345, 36.785053, 46.358841>,  <37.405670, 36.571945, 46.784798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852345, 36.785053, 46.358841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124752, 37.076736, 46.332081>,  <37.288197, 37.251747, 46.316025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124752, 37.076736, 46.332081>,  <36.852345, 36.785053, 46.358841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124752, 37.076736, 46.332081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121651, 0.022572, -0.992316,
		-0.722091, 0.683924, 0.104080,
		0.681018, 0.729204, -0.066901,
		37.329056, 37.295498, 46.312012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526310, 37.438065, 46.053062>,  <36.852345, 36.785053, 46.358841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526310, 37.438065, 46.053062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921459, 37.398346, 46.005314>,  <37.158546, 37.374516, 45.976665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921459, 37.398346, 46.005314>,  <36.526310, 37.438065, 46.053062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921459, 37.398346, 46.005314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113583, 0.062099, -0.991586,
		0.105878, 0.993118, 0.050067,
		0.987871, -0.099301, -0.119376,
		37.217819, 37.368557, 45.969501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901051, 37.564945, 45.672318>,  <36.526310, 37.438065, 46.053062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901051, 37.564945, 45.672318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.572578, 37.616520, 45.449951>,  <35.375496, 37.647465, 45.316532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.572578, 37.616520, 45.449951>,  <35.901051, 37.564945, 45.672318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572578, 37.616520, 45.449951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570594, -0.201635, 0.796094,
		-0.009444, 0.970937, 0.239150,
		-0.821178, 0.128940, -0.555915,
		35.326225, 37.655201, 45.283176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507710, 38.083019, 46.059948>,  <35.901051, 37.564945, 45.672318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507710, 38.083019, 46.059948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.259361, 37.894623, 45.809288>,  <35.110352, 37.781586, 45.658894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.259361, 37.894623, 45.809288>,  <35.507710, 38.083019, 46.059948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259361, 37.894623, 45.809288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652474, -0.132605, 0.746119,
		-0.434515, 0.872113, -0.224981,
		-0.620866, -0.470994, -0.626649,
		35.073101, 37.753326, 45.621292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927025, 38.464962, 46.124817>,  <35.507710, 38.083019, 46.059948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927025, 38.464962, 46.124817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.830780, 38.103725, 45.982533>,  <34.773033, 37.886982, 45.897163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.830780, 38.103725, 45.982533>,  <34.927025, 38.464962, 46.124817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830780, 38.103725, 45.982533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657926, -0.117684, 0.743830,
		-0.713609, 0.413006, -0.565852,
		-0.240614, -0.903093, -0.355708,
		34.758595, 37.832798, 45.875820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261848, 38.477814, 46.181637>,  <34.927025, 38.464962, 46.124817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261848, 38.477814, 46.181637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.350433, 38.088455, 46.158138>,  <34.403584, 37.854839, 46.144039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.350433, 38.088455, 46.158138>,  <34.261848, 38.477814, 46.181637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350433, 38.088455, 46.158138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531396, -0.170972, 0.829691,
		-0.817663, -0.152529, -0.555123,
		0.221462, -0.973398, -0.058745,
		34.416874, 37.796436, 46.140514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670166, 38.105961, 46.405052>,  <34.261848, 38.477814, 46.181637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670166, 38.105961, 46.405052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.945953, 37.818214, 46.438839>,  <34.111427, 37.645565, 46.459110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.945953, 37.818214, 46.438839>,  <33.670166, 38.105961, 46.405052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945953, 37.818214, 46.438839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501799, -0.390304, 0.771920,
		-0.522328, -0.574604, -0.630083,
		0.689472, -0.719370, 0.084469,
		34.152794, 37.602406, 46.464180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264675, 37.540993, 46.474670>,  <33.670166, 38.105961, 46.405052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264675, 37.540993, 46.474670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622387, 37.442410, 46.624081>,  <33.837013, 37.383259, 46.713726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622387, 37.442410, 46.624081>,  <33.264675, 37.540993, 46.474670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622387, 37.442410, 46.624081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447250, -0.463834, 0.764739,
		-0.015223, -0.850950, -0.525026,
		0.894279, -0.246459, 0.373526,
		33.890671, 37.368473, 46.736137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345558, 36.808174, 46.677494>,  <33.264675, 37.540993, 46.474670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345558, 36.808174, 46.677494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.597565, 37.003170, 46.919296>,  <33.748768, 37.120167, 47.064377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.597565, 37.003170, 46.919296>,  <33.345558, 36.808174, 46.677494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597565, 37.003170, 46.919296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416729, -0.444626, 0.792871,
		0.655299, -0.751438, -0.076969,
		0.630016, 0.487492, 0.604509,
		33.786568, 37.149418, 47.100651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393349, 36.070896, 46.814026>,  <33.345558, 36.808174, 46.677494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393349, 36.070896, 46.814026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.238167, 35.702236, 46.811298>,  <33.145058, 35.481041, 46.809662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.238167, 35.702236, 46.811298>,  <33.393349, 36.070896, 46.814026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238167, 35.702236, 46.811298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446118, -0.181304, -0.876418,
		0.806517, -0.343053, 0.481503,
		-0.387956, -0.921653, -0.006817,
		33.121780, 35.425739, 46.809254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917725, 35.625313, 46.569069>,  <33.393349, 36.070896, 46.814026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917725, 35.625313, 46.569069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.568085, 35.462845, 46.462509>,  <33.358299, 35.365364, 46.398575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.568085, 35.462845, 46.462509>,  <33.917725, 35.625313, 46.569069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568085, 35.462845, 46.462509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331912, -0.099010, -0.938100,
		0.354656, -0.908416, 0.221359,
		-0.874102, -0.406174, -0.266400,
		33.305855, 35.340992, 46.382587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170773, 35.231888, 46.031128>,  <33.917725, 35.625313, 46.569069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170773, 35.231888, 46.031128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.772224, 35.261940, 46.015076>,  <33.533096, 35.279972, 46.005444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.772224, 35.261940, 46.015076>,  <34.170773, 35.231888, 46.031128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772224, 35.261940, 46.015076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050204, 0.137410, -0.989241,
		-0.068806, -0.987661, -0.140682,
		-0.996366, 0.075129, -0.040130,
		33.473316, 35.284477, 46.003036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883343, 34.675762, 45.514664>,  <34.170773, 35.231888, 46.031128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883343, 34.675762, 45.514664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621414, 34.975163, 45.556530>,  <33.464256, 35.154804, 45.581650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621414, 34.975163, 45.556530>,  <33.883343, 34.675762, 45.514664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621414, 34.975163, 45.556530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094209, 0.056565, -0.993944,
		-0.749893, -0.660712, 0.033476,
		-0.654817, 0.748506, 0.104663,
		33.424969, 35.199715, 45.587929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492275, 34.551636, 44.983772>,  <33.883343, 34.675762, 45.514664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492275, 34.551636, 44.983772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.383934, 34.925144, 45.077324>,  <33.318928, 35.149250, 45.133457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.383934, 34.925144, 45.077324>,  <33.492275, 34.551636, 44.983772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383934, 34.925144, 45.077324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120758, 0.208086, -0.970627,
		-0.955015, -0.291144, 0.056399,
		-0.270856, 0.933775, 0.233884,
		33.302677, 35.205276, 45.147488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957718, 34.710987, 44.607876>,  <33.492275, 34.551636, 44.983772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957718, 34.710987, 44.607876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.071625, 35.082027, 44.704590>,  <33.139969, 35.304653, 44.762619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.071625, 35.082027, 44.704590>,  <32.957718, 34.710987, 44.607876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071625, 35.082027, 44.704590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033940, 0.261822, -0.964519,
		-0.957995, 0.266460, 0.106042,
		0.284770, 0.927603, 0.241781,
		33.157055, 35.360310, 44.777122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646320, 35.110935, 44.141590>,  <32.957718, 34.710987, 44.607876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646320, 35.110935, 44.141590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.924782, 35.364037, 44.277241>,  <33.091858, 35.515896, 44.358631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.924782, 35.364037, 44.277241>,  <32.646320, 35.110935, 44.141590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924782, 35.364037, 44.277241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133218, 0.350319, -0.927108,
		-0.705428, 0.690583, 0.159581,
		0.696149, 0.632749, 0.339123,
		33.133625, 35.553860, 44.378979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.650921, 31.793680, 49.537971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.763489, 32.130264, 49.353474>,  <36.831032, 32.332214, 49.242775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.763489, 32.130264, 49.353474>,  <36.650921, 31.793680, 49.537971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763489, 32.130264, 49.353474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170964, -0.429012, -0.886972,
		-0.944231, 0.328470, 0.023126,
		0.281422, 0.841461, -0.461243,
		36.847916, 32.382702, 49.215099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155838, 31.945667, 48.942398>,  <36.650921, 31.793680, 49.537971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155838, 31.945667, 48.942398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.506359, 32.124989, 48.871841>,  <36.716671, 32.232582, 48.829506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.506359, 32.124989, 48.871841>,  <36.155838, 31.945667, 48.942398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506359, 32.124989, 48.871841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016198, -0.393354, -0.919244,
		-0.481487, 0.802680, -0.351959,
		0.876304, 0.448305, -0.176393,
		36.769249, 32.259480, 48.818924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096622, 32.248074, 48.254150>,  <36.155838, 31.945667, 48.942398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096622, 32.248074, 48.254150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.488087, 32.223866, 48.332706>,  <36.722965, 32.209343, 48.379841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.488087, 32.223866, 48.332706>,  <36.096622, 32.248074, 48.254150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488087, 32.223866, 48.332706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160060, -0.374899, -0.913144,
		0.128887, 0.925088, -0.357211,
		0.978657, -0.060517, 0.196389,
		36.781685, 32.205711, 48.391624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527576, 32.802101, 47.886848>,  <36.096622, 32.248074, 48.254150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527576, 32.802101, 47.886848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.762783, 32.488056, 47.964649>,  <36.903908, 32.299629, 48.011330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.762783, 32.488056, 47.964649>,  <36.527576, 32.802101, 47.886848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762783, 32.488056, 47.964649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016989, -0.228425, -0.973413,
		0.808668, 0.575691, -0.120980,
		0.588020, -0.785113, 0.194500,
		36.939190, 32.252522, 48.022999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014252, 32.780045, 47.324074>,  <36.527576, 32.802101, 47.886848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014252, 32.780045, 47.324074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.985638, 32.409122, 47.471035>,  <36.968468, 32.186569, 47.559212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.985638, 32.409122, 47.471035>,  <37.014252, 32.780045, 47.324074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985638, 32.409122, 47.471035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120016, -0.373670, -0.919765,
		0.990191, -0.021703, 0.138023,
		-0.071536, -0.927308, 0.367400,
		36.964176, 32.130932, 47.581257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559723, 32.421272, 46.915699>,  <37.014252, 32.780045, 47.324074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559723, 32.421272, 46.915699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.346657, 32.135029, 47.096439>,  <37.218819, 31.963282, 47.204884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.346657, 32.135029, 47.096439>,  <37.559723, 32.421272, 46.915699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346657, 32.135029, 47.096439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186422, -0.619989, -0.762142,
		0.825538, -0.321733, 0.463653,
		-0.532666, -0.715613, 0.451847,
		37.186855, 31.920345, 47.231995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923428, 31.833635, 46.757095>,  <37.559723, 32.421272, 46.915699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923428, 31.833635, 46.757095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.540661, 31.743856, 46.830776>,  <37.311001, 31.689989, 46.874985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.540661, 31.743856, 46.830776>,  <37.923428, 31.833635, 46.757095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540661, 31.743856, 46.830776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010010, -0.659532, -0.751610,
		0.290184, -0.717386, 0.633365,
		-0.956919, -0.224445, 0.184205,
		37.253586, 31.676523, 46.886036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901890, 31.163258, 46.778893>,  <37.923428, 31.833635, 46.757095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901890, 31.163258, 46.778893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.533707, 31.278265, 46.672993>,  <37.312798, 31.347269, 46.609451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.533707, 31.278265, 46.672993>,  <37.901890, 31.163258, 46.778893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533707, 31.278265, 46.672993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000563, -0.676405, -0.736530,
		-0.390848, -0.678092, 0.622438,
		-0.920455, 0.287521, -0.264753,
		37.257568, 31.364521, 46.593567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596073, 30.536692, 46.508907>,  <37.901890, 31.163258, 46.778893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596073, 30.536692, 46.508907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.354290, 30.815073, 46.353844>,  <37.209221, 30.982101, 46.260807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.354290, 30.815073, 46.353844>,  <37.596073, 30.536692, 46.508907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354290, 30.815073, 46.353844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031104, -0.506861, -0.861467,
		-0.796029, -0.508664, 0.328023,
		-0.604459, 0.695955, -0.387655,
		37.172951, 31.023859, 46.237549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082138, 30.181715, 46.206512>,  <37.596073, 30.536692, 46.508907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082138, 30.181715, 46.206512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.071968, 30.537107, 46.023228>,  <37.065865, 30.750343, 45.913258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.071968, 30.537107, 46.023228>,  <37.082138, 30.181715, 46.206512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071968, 30.537107, 46.023228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132433, -0.457311, -0.879390,
		-0.990866, 0.038324, 0.129290,
		-0.025424, 0.888480, -0.458209,
		37.064342, 30.803652, 45.885765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472290, 30.168066, 45.597412>,  <37.082138, 30.181715, 46.206512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472290, 30.168066, 45.597412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.720634, 30.462254, 45.488880>,  <36.869640, 30.638765, 45.423759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.720634, 30.462254, 45.488880>,  <36.472290, 30.168066, 45.597412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720634, 30.462254, 45.488880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321955, -0.076360, -0.943671,
		-0.714758, 0.673244, 0.189378,
		0.620860, 0.735467, -0.271334,
		36.906891, 30.682894, 45.407478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143669, 30.618263, 45.098644>,  <36.472290, 30.168066, 45.597412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143669, 30.618263, 45.098644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.526531, 30.709446, 45.027203>,  <36.756248, 30.764154, 44.984337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.526531, 30.709446, 45.027203>,  <36.143669, 30.618263, 45.098644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526531, 30.709446, 45.027203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160134, -0.097252, -0.982293,
		-0.241288, 0.968802, -0.056582,
		0.957151, 0.227955, -0.178604,
		36.813675, 30.777832, 44.973621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917561, 31.297766, 44.986145>,  <36.143669, 30.618263, 45.098644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917561, 31.297766, 44.986145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.559238, 31.440582, 44.880272>,  <35.344246, 31.526272, 44.816750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.559238, 31.440582, 44.880272>,  <35.917561, 31.297766, 44.986145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559238, 31.440582, 44.880272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071201, 0.472554, 0.878421,
		0.438708, 0.805739, -0.397894,
		-0.895805, 0.357040, -0.264682,
		35.290497, 31.547695, 44.800869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762039, 31.905979, 45.325397>,  <35.917561, 31.297766, 44.986145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762039, 31.905979, 45.325397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.372898, 31.875719, 45.237907>,  <35.139416, 31.857563, 45.185413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.372898, 31.875719, 45.237907>,  <35.762039, 31.905979, 45.325397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372898, 31.875719, 45.237907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223924, 0.546595, 0.806903,
		0.058512, 0.833973, -0.548695,
		-0.972849, -0.075652, -0.218729,
		35.081043, 31.853024, 45.172287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461685, 32.407871, 45.474190>,  <35.762039, 31.905979, 45.325397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461685, 32.407871, 45.474190> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.115063, 32.208241, 45.474720>,  <34.907089, 32.088463, 45.475040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.115063, 32.208241, 45.474720>,  <35.461685, 32.407871, 45.474190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115063, 32.208241, 45.474720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278354, 0.485518, 0.828729,
		-0.414245, 0.717770, -0.559649,
		-0.866557, -0.499077, 0.001329,
		34.855095, 32.058517, 45.475121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867332, 32.875191, 45.638500>,  <35.461685, 32.407871, 45.474190>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867332, 32.875191, 45.638500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.727680, 32.506844, 45.707916>,  <34.643890, 32.285835, 45.749565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.727680, 32.506844, 45.707916>,  <34.867332, 32.875191, 45.638500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727680, 32.506844, 45.707916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416792, 0.318463, 0.851390,
		-0.839283, 0.224913, -0.494994,
		-0.349126, -0.920866, 0.173539,
		34.622944, 32.230583, 45.759979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276295, 32.980450, 45.934387>,  <34.867332, 32.875191, 45.638500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276295, 32.980450, 45.934387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.338207, 32.603859, 46.054161>,  <34.375355, 32.377903, 46.126026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.338207, 32.603859, 46.054161>,  <34.276295, 32.980450, 45.934387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338207, 32.603859, 46.054161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621011, 0.143007, 0.770645,
		-0.768368, -0.305229, -0.562535,
		0.154776, -0.941480, 0.299432,
		34.384640, 32.321415, 46.143990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598240, 32.751289, 46.178528>,  <34.276295, 32.980450, 45.934387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598240, 32.751289, 46.178528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.845119, 32.476429, 46.331833>,  <33.993248, 32.311512, 46.423817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.845119, 32.476429, 46.331833>,  <33.598240, 32.751289, 46.178528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845119, 32.476429, 46.331833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513023, 0.017866, 0.858189,
		-0.596550, -0.726298, -0.341496,
		0.617199, -0.687148, 0.383266,
		34.030281, 32.270287, 46.446812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139938, 32.299072, 46.619148>,  <33.598240, 32.751289, 46.178528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139938, 32.299072, 46.619148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.516106, 32.236450, 46.739880>,  <33.741806, 32.198875, 46.812321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.516106, 32.236450, 46.739880>,  <33.139938, 32.299072, 46.619148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516106, 32.236450, 46.739880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322665, -0.130932, 0.937413,
		-0.107237, -0.978952, -0.173646,
		0.940419, -0.156555, 0.301833,
		33.798233, 32.189484, 46.830429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200073, 31.637880, 46.924801>,  <33.139938, 32.299072, 46.619148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200073, 31.637880, 46.924801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.505035, 31.847853, 47.076157>,  <33.688015, 31.973837, 47.166969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.505035, 31.847853, 47.076157>,  <33.200073, 31.637880, 46.924801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505035, 31.847853, 47.076157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433346, -0.020087, 0.901004,
		0.480566, -0.850907, 0.212163,
		0.762409, 0.524932, 0.378391,
		33.733757, 32.005333, 47.189674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276264, 31.427073, 47.631397>,  <33.200073, 31.637880, 46.924801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276264, 31.427073, 47.631397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.485149, 31.768053, 47.641338>,  <33.610481, 31.972641, 47.647301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.485149, 31.768053, 47.641338>,  <33.276264, 31.427073, 47.631397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485149, 31.768053, 47.641338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269502, 0.137312, 0.953160,
		0.809113, -0.504448, 0.301444,
		0.522212, 0.852454, 0.024849,
		33.641811, 32.023788, 47.648792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732414, 31.430178, 48.210075>,  <33.276264, 31.427073, 47.631397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732414, 31.430178, 48.210075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.662209, 31.810730, 48.108829>,  <33.620083, 32.039062, 48.048084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.662209, 31.810730, 48.108829>,  <33.732414, 31.430178, 48.210075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662209, 31.810730, 48.108829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544458, 0.120401, 0.830102,
		0.820219, 0.283505, 0.496856,
		-0.175516, 0.951382, -0.253112,
		33.609554, 32.096146, 48.032894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030346, 31.919792, 48.718773>,  <33.732414, 31.430178, 48.210075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030346, 31.919792, 48.718773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.731197, 32.094433, 48.518749>,  <33.551708, 32.199219, 48.398735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.731197, 32.094433, 48.518749>,  <34.030346, 31.919792, 48.718773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731197, 32.094433, 48.518749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455853, 0.209839, 0.864966,
		0.482577, 0.874842, 0.042092,
		-0.747875, 0.436600, -0.500063,
		33.506836, 32.225414, 48.368729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805885, 32.375465, 49.055073>,  <34.030346, 31.919792, 48.718773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805885, 32.375465, 49.055073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.477921, 32.404968, 48.827988>,  <33.281139, 32.422668, 48.691738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.477921, 32.404968, 48.827988>,  <33.805885, 32.375465, 49.055073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477921, 32.404968, 48.827988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568305, 0.014752, 0.822686,
		0.069051, 0.997168, 0.029818,
		-0.819915, 0.073753, -0.567714,
		33.231945, 32.427094, 48.657673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332714, 32.930309, 49.374252>,  <33.805885, 32.375465, 49.055073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332714, 32.930309, 49.374252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.102249, 32.713905, 49.129189>,  <32.963970, 32.584064, 48.982151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.102249, 32.713905, 49.129189>,  <33.332714, 32.930309, 49.374252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102249, 32.713905, 49.129189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775007, 0.123518, 0.619764,
		-0.259624, 0.831896, -0.490453,
		-0.576159, -0.541010, -0.612657,
		32.929401, 32.551601, 48.945393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711464, 33.267769, 49.483097>,  <33.332714, 32.930309, 49.374252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711464, 33.267769, 49.483097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.642609, 32.901123, 49.338776>,  <32.601295, 32.681133, 49.252182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.642609, 32.901123, 49.338776>,  <32.711464, 33.267769, 49.483097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642609, 32.901123, 49.338776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846067, -0.050022, 0.530725,
		-0.504521, 0.396622, -0.766910,
		-0.172135, -0.916618, -0.360805,
		32.590969, 32.626137, 49.230534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631565, 33.978302, 49.443375>,  <32.711464, 33.267769, 49.483097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631565, 33.978302, 49.443375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.349152, 34.261059, 49.426331>,  <32.179703, 34.430714, 49.416103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.349152, 34.261059, 49.426331>,  <32.631565, 33.978302, 49.443375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349152, 34.261059, 49.426331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249171, 0.191641, -0.949309,
		-0.662895, -0.680863, -0.311443,
		-0.706034, 0.706894, -0.042613,
		32.137341, 34.473125, 49.413548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988426, 33.788162, 48.885349>,  <32.631565, 33.978302, 49.443375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988426, 33.788162, 48.885349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.033833, 34.182373, 48.935707>,  <32.061077, 34.418900, 48.965923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.033833, 34.182373, 48.935707>,  <31.988426, 33.788162, 48.885349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033833, 34.182373, 48.935707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350957, 0.078770, -0.933073,
		-0.929485, 0.150104, -0.336935,
		0.113518, 0.985527, 0.125896,
		32.067886, 34.478031, 48.973476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591902, 34.076771, 48.402954>,  <31.988426, 33.788162, 48.885349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591902, 34.076771, 48.402954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.811773, 34.396259, 48.500851>,  <31.943697, 34.587952, 48.559589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.811773, 34.396259, 48.500851>,  <31.591902, 34.076771, 48.402954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811773, 34.396259, 48.500851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218324, 0.145430, -0.964979,
		-0.806341, 0.583862, -0.094440,
		0.549680, 0.798721, 0.244737,
		31.976677, 34.635876, 48.574272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432671, 34.553318, 47.855389>,  <31.591902, 34.076771, 48.402954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432671, 34.553318, 47.855389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.777523, 34.696175, 47.999153>,  <31.984434, 34.781891, 48.085411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.777523, 34.696175, 47.999153>,  <31.432671, 34.553318, 47.855389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777523, 34.696175, 47.999153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327838, 0.147672, -0.933121,
		-0.386334, 0.922302, 0.010227,
		0.862130, 0.357144, 0.359416,
		32.036163, 34.803318, 48.106979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721401, 35.030293, 47.410618>,  <31.432671, 34.553318, 47.855389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721401, 35.030293, 47.410618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.069164, 34.983551, 47.602650>,  <32.277821, 34.955505, 47.717869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.069164, 34.983551, 47.602650>,  <31.721401, 35.030293, 47.410618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069164, 34.983551, 47.602650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493659, 0.246344, -0.834035,
		-0.020802, 0.962112, 0.271860,
		0.869407, -0.116857, 0.480080,
		32.329987, 34.948494, 47.746674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062511, 35.695805, 47.361275>,  <31.721401, 35.030293, 47.410618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062511, 35.695805, 47.361275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.336178, 35.413567, 47.435093>,  <32.500378, 35.244225, 47.479385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.336178, 35.413567, 47.435093>,  <32.062511, 35.695805, 47.361275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336178, 35.413567, 47.435093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546176, 0.327993, -0.770787,
		0.483332, 0.628139, 0.609780,
		0.684165, -0.705593, 0.184545,
		32.541428, 35.201889, 47.490456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728237, 36.043579, 47.361237>,  <32.062511, 35.695805, 47.361275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728237, 36.043579, 47.361237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.798382, 35.655907, 47.292034>,  <32.840469, 35.423302, 47.250511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.798382, 35.655907, 47.292034>,  <32.728237, 36.043579, 47.361237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798382, 35.655907, 47.292034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616168, 0.245103, -0.748506,
		0.767844, 0.024662, 0.640162,
		0.175366, -0.969183, -0.173005,
		32.850990, 35.365150, 47.240131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496326, 36.357990, 47.519428>,  <32.728237, 36.043579, 47.361237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496326, 36.357990, 47.519428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.695969, 36.697468, 47.589413>,  <33.815754, 36.901154, 47.631405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.695969, 36.697468, 47.589413>,  <33.496326, 36.357990, 47.519428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695969, 36.697468, 47.589413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013633, -0.209576, 0.977697,
		0.866434, -0.485590, -0.116171,
		0.499106, 0.848694, 0.174964,
		33.845699, 36.952076, 47.641903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082573, 36.194515, 47.955418>,  <33.496326, 36.357990, 47.519428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082573, 36.194515, 47.955418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.039299, 36.588493, 48.009338>,  <34.013336, 36.824883, 48.041691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.039299, 36.588493, 48.009338>,  <34.082573, 36.194515, 47.955418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039299, 36.588493, 48.009338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013814, -0.134092, 0.990873,
		0.994035, 0.109057, 0.000900,
		-0.108183, 0.984950, 0.134799,
		34.006844, 36.883980, 48.049778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505836, 36.555260, 48.614658>,  <34.082573, 36.194515, 47.955418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505836, 36.555260, 48.614658> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.230679, 36.840530, 48.560719>,  <34.065582, 37.011692, 48.528355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.230679, 36.840530, 48.560719>,  <34.505836, 36.555260, 48.614658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230679, 36.840530, 48.560719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057715, 0.131449, 0.989641,
		0.723514, 0.688550, -0.049262,
		-0.687893, 0.713176, -0.134845,
		34.024311, 37.054482, 48.520264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674259, 37.163303, 49.113514>,  <34.505836, 36.555260, 48.614658>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674259, 37.163303, 49.113514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.284626, 37.164101, 49.023037>,  <34.050846, 37.164577, 48.968750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.284626, 37.164101, 49.023037>,  <34.674259, 37.163303, 49.113514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284626, 37.164101, 49.023037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226183, -0.020676, 0.973865,
		-0.002737, 0.999784, 0.020590,
		-0.974081, 0.001992, -0.226190,
		33.992401, 37.164700, 48.955181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477150, 37.694019, 49.587799>,  <34.674259, 37.163303, 49.113514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477150, 37.694019, 49.587799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.143360, 37.495529, 49.491951>,  <33.943089, 37.376434, 49.434441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.143360, 37.495529, 49.491951>,  <34.477150, 37.694019, 49.587799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143360, 37.495529, 49.491951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297830, 0.040282, 0.953769,
		-0.463634, 0.867257, -0.181406,
		-0.834470, -0.496228, -0.239619,
		33.893021, 37.346661, 49.420067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909695, 38.020214, 49.867981>,  <34.477150, 37.694019, 49.587799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909695, 38.020214, 49.867981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.792805, 37.639580, 49.829830>,  <33.722672, 37.411201, 49.806938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.792805, 37.639580, 49.829830>,  <33.909695, 38.020214, 49.867981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792805, 37.639580, 49.829830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279710, -0.010329, 0.960029,
		-0.914531, 0.307223, -0.263148,
		-0.292225, -0.951582, -0.095380,
		33.705139, 37.354107, 49.801216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242733, 38.058609, 50.081970>,  <33.909695, 38.020214, 49.867981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242733, 38.058609, 50.081970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.335457, 37.670300, 50.106804>,  <33.391090, 37.437313, 50.121704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.335457, 37.670300, 50.106804>,  <33.242733, 38.058609, 50.081970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335457, 37.670300, 50.106804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425426, -0.043782, 0.903933,
		-0.874800, -0.235954, -0.423144,
		0.231813, -0.970778, 0.062080,
		33.404999, 37.379066, 50.125427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710361, 37.741203, 50.528484>,  <33.242733, 38.058609, 50.081970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710361, 37.741203, 50.528484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.005371, 37.471752, 50.547588>,  <33.182377, 37.310081, 50.559052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.005371, 37.471752, 50.547588>,  <32.710361, 37.741203, 50.528484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005371, 37.471752, 50.547588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275671, -0.235754, 0.931893,
		-0.616490, -0.700461, -0.359574,
		0.737527, -0.673628, 0.047757,
		33.226627, 37.269665, 50.561916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498528, 37.182098, 50.992477>,  <32.710361, 37.741203, 50.528484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498528, 37.182098, 50.992477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.876434, 37.051842, 50.977650>,  <33.103180, 36.973686, 50.968754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.876434, 37.051842, 50.977650>,  <32.498528, 37.182098, 50.992477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876434, 37.051842, 50.977650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061955, -0.288497, 0.955474,
		-0.321844, -0.900401, -0.292737,
		0.944764, -0.325650, -0.037067,
		33.159863, 36.954147, 50.966530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.974964, 37.133251, 35.024635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263477, 36.910973, 35.190025>,  <36.436584, 36.777607, 35.289261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263477, 36.910973, 35.190025>,  <35.974964, 37.133251, 35.024635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263477, 36.910973, 35.190025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207516, 0.396166, 0.894421,
		-0.660828, -0.730930, 0.170431,
		0.721279, -0.555692, 0.413477,
		36.479862, 36.744267, 35.314068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674984, 36.762245, 35.650040>,  <35.974964, 37.133251, 35.024635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674984, 36.762245, 35.650040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061020, 36.865795, 35.666004>,  <36.292641, 36.927925, 35.675583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061020, 36.865795, 35.666004>,  <35.674984, 36.762245, 35.650040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061020, 36.865795, 35.666004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147475, 0.411097, 0.899583,
		0.216468, -0.874062, 0.434922,
		0.965087, 0.258871, 0.039913,
		36.350548, 36.943459, 35.677979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961159, 36.688286, 36.355976>,  <35.674984, 36.762245, 35.650040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961159, 36.688286, 36.355976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204269, 36.964394, 36.198936>,  <36.350136, 37.130058, 36.104713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204269, 36.964394, 36.198936>,  <35.961159, 36.688286, 36.355976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204269, 36.964394, 36.198936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029547, 0.513709, 0.857456,
		0.793555, -0.509544, 0.332618,
		0.607780, 0.690267, -0.392601,
		36.386604, 37.171474, 36.081158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527138, 36.794823, 36.805996>,  <35.961159, 36.688286, 36.355976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527138, 36.794823, 36.805996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544472, 37.139473, 36.603722>,  <36.554871, 37.346264, 36.482357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544472, 37.139473, 36.603722>,  <36.527138, 36.794823, 36.805996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544472, 37.139473, 36.603722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403005, 0.448083, 0.798003,
		0.914172, -0.238374, -0.327823,
		0.043332, 0.861626, -0.505690,
		36.557472, 37.397961, 36.452015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205608, 37.083389, 36.900421>,  <36.527138, 36.794823, 36.805996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205608, 37.083389, 36.900421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998402, 37.410042, 36.798618>,  <36.874077, 37.606033, 36.737537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998402, 37.410042, 36.798618>,  <37.205608, 37.083389, 36.900421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998402, 37.410042, 36.798618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377244, 0.485152, 0.788869,
		0.767690, 0.312634, -0.559385,
		-0.518014, 0.816632, -0.254507,
		36.842999, 37.655033, 36.722267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618629, 37.593090, 37.006989>,  <37.205608, 37.083389, 36.900421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618629, 37.593090, 37.006989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255192, 37.759922, 36.998024>,  <37.037128, 37.860023, 36.992645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255192, 37.759922, 36.998024>,  <37.618629, 37.593090, 37.006989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255192, 37.759922, 36.998024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222488, 0.528688, 0.819138,
		0.353494, 0.739278, -0.573158,
		-0.908593, 0.417082, -0.022407,
		36.982613, 37.885048, 36.991302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705154, 38.357407, 37.158535>,  <37.618629, 37.593090, 37.006989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705154, 38.357407, 37.158535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333298, 38.252617, 37.262169>,  <37.110184, 38.189743, 37.324348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333298, 38.252617, 37.262169>,  <37.705154, 38.357407, 37.158535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333298, 38.252617, 37.262169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122238, 0.444056, 0.887622,
		-0.347585, 0.856845, -0.380791,
		-0.929646, -0.261977, 0.259086,
		37.054405, 38.174023, 37.339893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516369, 39.023083, 37.535080>,  <37.705154, 38.357407, 37.158535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516369, 39.023083, 37.535080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247753, 38.745277, 37.638374>,  <37.086586, 38.578594, 37.700352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247753, 38.745277, 37.638374>,  <37.516369, 39.023083, 37.535080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247753, 38.745277, 37.638374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010646, 0.357513, 0.933847,
		-0.740895, 0.624364, -0.247477,
		-0.671537, -0.694517, 0.258233,
		37.046291, 38.536922, 37.715843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017815, 39.332153, 38.049751>,  <37.516369, 39.023083, 37.535080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017815, 39.332153, 38.049751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941872, 38.944637, 38.113503>,  <36.896305, 38.712128, 38.151752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941872, 38.944637, 38.113503>,  <37.017815, 39.332153, 38.049751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941872, 38.944637, 38.113503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390000, 0.223392, 0.893306,
		-0.901030, 0.107439, -0.420240,
		-0.189854, -0.968789, 0.159382,
		36.884914, 38.653999, 38.161316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299183, 39.251808, 38.200714>,  <37.017815, 39.332153, 38.049751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299183, 39.251808, 38.200714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489136, 38.941933, 38.367737>,  <36.603107, 38.756008, 38.467949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489136, 38.941933, 38.367737>,  <36.299183, 39.251808, 38.200714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489136, 38.941933, 38.367737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486813, 0.164030, 0.857967,
		-0.733145, -0.610704, -0.299232,
		0.474880, -0.774684, 0.417557,
		36.631599, 38.709526, 38.493004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774982, 38.976299, 38.671829>,  <36.299183, 39.251808, 38.200714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774982, 38.976299, 38.671829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114372, 38.802620, 38.792862>,  <36.318008, 38.698410, 38.865482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114372, 38.802620, 38.792862>,  <35.774982, 38.976299, 38.671829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114372, 38.802620, 38.792862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267445, 0.141589, 0.953114,
		-0.456685, -0.889619, 0.004010,
		0.848476, -0.434200, 0.302586,
		36.368916, 38.672359, 38.883636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551670, 38.472126, 39.105171>,  <35.774982, 38.976299, 38.671829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551670, 38.472126, 39.105171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933998, 38.552639, 39.190861>,  <36.163395, 38.600948, 39.242275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933998, 38.552639, 39.190861>,  <35.551670, 38.472126, 39.105171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933998, 38.552639, 39.190861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233713, 0.078352, 0.969144,
		0.178290, -0.976394, 0.121933,
		0.955819, 0.201286, 0.214226,
		36.220745, 38.613026, 39.255127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363148, 37.766380, 39.148182>,  <35.551670, 38.472126, 39.105171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363148, 37.766380, 39.148182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050846, 37.518105, 39.176922>,  <34.863464, 37.369141, 39.194164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050846, 37.518105, 39.176922>,  <35.363148, 37.766380, 39.148182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050846, 37.518105, 39.176922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008421, -0.125427, -0.992067,
		0.624777, -0.773959, 0.103155,
		-0.780758, -0.620689, 0.071847,
		34.816620, 37.331898, 39.198475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432194, 37.448261, 38.590065>,  <35.363148, 37.766380, 39.148182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432194, 37.448261, 38.590065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067230, 37.314671, 38.684704>,  <34.848251, 37.234516, 38.741486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067230, 37.314671, 38.684704>,  <35.432194, 37.448261, 38.590065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067230, 37.314671, 38.684704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231687, -0.055085, -0.971229,
		0.337400, -0.940971, -0.027118,
		-0.912405, -0.333975, 0.236597,
		34.793510, 37.214478, 38.755684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325668, 36.690548, 38.176601>,  <35.432194, 37.448261, 38.590065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325668, 36.690548, 38.176601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972618, 36.833858, 38.298328>,  <34.760788, 36.919846, 38.371365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972618, 36.833858, 38.298328>,  <35.325668, 36.690548, 38.176601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972618, 36.833858, 38.298328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394618, -0.212942, -0.893830,
		-0.255443, -0.909004, 0.329333,
		-0.882624, 0.358284, 0.304315,
		34.707829, 36.941341, 38.389626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834076, 36.125343, 38.113651>,  <35.325668, 36.690548, 38.176601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834076, 36.125343, 38.113651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606869, 36.453815, 38.135605>,  <34.470543, 36.650898, 38.148777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606869, 36.453815, 38.135605>,  <34.834076, 36.125343, 38.113651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606869, 36.453815, 38.135605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549295, -0.328602, -0.768307,
		-0.612888, -0.466558, 0.637724,
		-0.568017, 0.821185, 0.054882,
		34.436462, 36.700172, 38.152069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186455, 35.911858, 38.017414>,  <34.834076, 36.125343, 38.113651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186455, 35.911858, 38.017414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168259, 36.301506, 37.928860>,  <34.157341, 36.535297, 37.875729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168259, 36.301506, 37.928860>,  <34.186455, 35.911858, 38.017414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168259, 36.301506, 37.928860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674807, -0.193373, -0.712210,
		-0.736591, 0.116995, 0.666143,
		-0.045489, 0.974125, -0.221386,
		34.154613, 36.593742, 37.862446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458439, 36.070824, 37.801636>,  <34.186455, 35.911858, 38.017414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458439, 36.070824, 37.801636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682243, 36.370129, 37.659061>,  <33.816525, 36.549713, 37.573517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682243, 36.370129, 37.659061>,  <33.458439, 36.070824, 37.801636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682243, 36.370129, 37.659061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491086, -0.047146, -0.869835,
		-0.667673, 0.661720, 0.341085,
		0.559507, 0.748267, -0.356439,
		33.850094, 36.594608, 37.552128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060558, 36.657265, 37.564743>,  <33.458439, 36.070824, 37.801636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060558, 36.657265, 37.564743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375896, 36.755260, 37.339005>,  <33.565102, 36.814060, 37.203564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375896, 36.755260, 37.339005>,  <33.060558, 36.657265, 37.564743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375896, 36.755260, 37.339005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615197, 0.304682, -0.727119,
		-0.006195, 0.920406, 0.390915,
		0.788350, 0.244994, -0.564343,
		33.612400, 36.828758, 37.169701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880943, 37.297321, 37.224770>,  <33.060558, 36.657265, 37.564743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880943, 37.297321, 37.224770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199482, 37.193306, 37.006336>,  <33.390606, 37.130898, 36.875275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199482, 37.193306, 37.006336>,  <32.880943, 37.297321, 37.224770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199482, 37.193306, 37.006336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491676, 0.247512, -0.834861,
		0.352261, 0.933336, 0.069250,
		0.796346, -0.260040, -0.546088,
		33.438385, 37.115295, 36.842510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106915, 37.866909, 36.762726>,  <32.880943, 37.297321, 37.224770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106915, 37.866909, 36.762726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264473, 37.529308, 36.617123>,  <33.359009, 37.326748, 36.529762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264473, 37.529308, 36.617123>,  <33.106915, 37.866909, 36.762726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264473, 37.529308, 36.617123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624315, 0.044982, -0.779877,
		0.674594, 0.534444, -0.509207,
		0.393895, -0.844006, -0.364006,
		33.382641, 37.276108, 36.507919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434963, 37.987606, 36.029739>,  <33.106915, 37.866909, 36.762726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434963, 37.987606, 36.029739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356644, 37.596958, 36.065250>,  <33.309650, 37.362572, 36.086559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356644, 37.596958, 36.065250>,  <33.434963, 37.987606, 36.029739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356644, 37.596958, 36.065250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454809, 0.010230, -0.890531,
		0.868799, -0.214744, -0.446177,
		-0.195800, -0.976617, 0.088780,
		33.297905, 37.303974, 36.091885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748314, 37.571983, 35.515118>,  <33.434963, 37.987606, 36.029739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748314, 37.571983, 35.515118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446880, 37.323956, 35.602406>,  <33.266018, 37.175140, 35.654778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446880, 37.323956, 35.602406>,  <33.748314, 37.571983, 35.515118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446880, 37.323956, 35.602406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363511, 0.116504, -0.924276,
		0.547692, -0.775848, -0.313199,
		-0.753586, -0.620070, 0.218221,
		33.220806, 37.137936, 35.667873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865208, 36.886799, 35.056011>,  <33.748314, 37.571983, 35.515118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865208, 36.886799, 35.056011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491348, 36.980953, 35.162617>,  <33.267033, 37.037445, 35.226582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491348, 36.980953, 35.162617>,  <33.865208, 36.886799, 35.056011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491348, 36.980953, 35.162617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247634, 0.107004, -0.962927,
		-0.255179, -0.965993, -0.041721,
		-0.934645, 0.235387, 0.266518,
		33.210957, 37.051571, 35.242573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472317, 36.488846, 34.625164>,  <33.865208, 36.886799, 35.056011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472317, 36.488846, 34.625164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241489, 36.790558, 34.750420>,  <33.102993, 36.971584, 34.825573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241489, 36.790558, 34.750420>,  <33.472317, 36.488846, 34.625164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241489, 36.790558, 34.750420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449518, 0.026762, -0.892870,
		-0.681853, -0.656009, 0.323619,
		-0.577070, 0.754279, 0.313135,
		33.068367, 37.016842, 34.844360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774750, 35.888710, 34.332344>,  <33.472317, 36.488846, 34.625164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774750, 35.888710, 34.332344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630569, 35.566311, 34.144543>,  <33.544060, 35.372871, 34.031860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630569, 35.566311, 34.144543>,  <33.774750, 35.888710, 34.332344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630569, 35.566311, 34.144543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797606, -0.527304, 0.292873,
		-0.483628, -0.268914, 0.832940,
		-0.360455, -0.806000, -0.469507,
		33.522434, 35.324512, 34.003689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763695, 35.281357, 34.799999>,  <33.774750, 35.888710, 34.332344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763695, 35.281357, 34.799999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795048, 35.218548, 34.406208>,  <33.813858, 35.180862, 34.169933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795048, 35.218548, 34.406208>,  <33.763695, 35.281357, 34.799999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795048, 35.218548, 34.406208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635029, -0.753387, 0.170723,
		-0.768501, -0.638555, 0.040660,
		0.078384, -0.157021, -0.984480,
		33.818562, 35.171440, 34.110863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599468, 34.550640, 34.599506>,  <33.763695, 35.281357, 34.799999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599468, 34.550640, 34.599506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854153, 34.739403, 34.355572>,  <34.006962, 34.852661, 34.209209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854153, 34.739403, 34.355572>,  <33.599468, 34.550640, 34.599506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854153, 34.739403, 34.355572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685914, -0.707953, 0.168300,
		-0.352315, -0.525456, -0.774448,
		0.636707, 0.471910, -0.609840,
		34.045166, 34.880978, 34.172619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285145, 34.370983, 34.903606>,  <33.599468, 34.550640, 34.599506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285145, 34.370983, 34.903606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416286, 34.006741, 34.802967>,  <34.494972, 33.788193, 34.742584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416286, 34.006741, 34.802967>,  <34.285145, 34.370983, 34.903606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416286, 34.006741, 34.802967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018774, -0.259985, 0.965430,
		-0.944541, -0.321247, -0.068142,
		0.327857, -0.910609, -0.251597,
		34.514645, 33.733559, 34.727489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814678, 33.877922, 35.099411>,  <34.285145, 34.370983, 34.903606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814678, 33.877922, 35.099411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186375, 33.730141, 35.098362>,  <34.409393, 33.641472, 35.097733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186375, 33.730141, 35.098362>,  <33.814678, 33.877922, 35.099411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186375, 33.730141, 35.098362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119488, -0.307235, 0.944102,
		-0.349617, -0.876986, -0.329642,
		0.929242, -0.369462, -0.002625,
		34.465149, 33.619305, 35.097576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722401, 33.229008, 35.328255>,  <33.814678, 33.877922, 35.099411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722401, 33.229008, 35.328255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114258, 33.286381, 35.384434>,  <34.349373, 33.320805, 35.418140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114258, 33.286381, 35.384434>,  <33.722401, 33.229008, 35.328255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114258, 33.286381, 35.384434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040505, -0.543992, 0.838113,
		0.196614, -0.826741, -0.527108,
		0.979644, 0.143434, 0.140443,
		34.408150, 33.329411, 35.426567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922573, 32.574261, 35.504353>,  <33.722401, 33.229008, 35.328255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922573, 32.574261, 35.504353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216419, 32.821671, 35.615898>,  <34.392727, 32.970116, 35.682823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216419, 32.821671, 35.615898>,  <33.922573, 32.574261, 35.504353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216419, 32.821671, 35.615898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027798, -0.438099, 0.898497,
		0.677912, -0.652300, -0.339029,
		0.734617, 0.618526, 0.278860,
		34.436806, 33.007229, 35.699554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348831, 32.187832, 35.983955>,  <33.922573, 32.574261, 35.504353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348831, 32.187832, 35.983955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417103, 32.573486, 36.065250>,  <34.458065, 32.804878, 36.114025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417103, 32.573486, 36.065250>,  <34.348831, 32.187832, 35.983955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417103, 32.573486, 36.065250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054490, -0.215181, 0.975053,
		0.983819, -0.155346, -0.089263,
		0.170678, 0.964139, 0.203234,
		34.468307, 32.862728, 36.126221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039749, 32.200836, 36.309635>,  <34.348831, 32.187832, 35.983955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039749, 32.200836, 36.309635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820034, 32.520466, 36.407421>,  <34.688206, 32.712242, 36.466095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820034, 32.520466, 36.407421>,  <35.039749, 32.200836, 36.309635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820034, 32.520466, 36.407421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096069, -0.230227, 0.968383,
		0.830090, 0.555410, 0.049695,
		-0.549291, 0.799071, 0.244467,
		34.655247, 32.760189, 36.480762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375786, 32.533756, 36.867046>,  <35.039749, 32.200836, 36.309635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375786, 32.533756, 36.867046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997589, 32.656898, 36.909504>,  <34.770672, 32.730785, 36.934978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997589, 32.656898, 36.909504>,  <35.375786, 32.533756, 36.867046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997589, 32.656898, 36.909504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013911, -0.287479, 0.957686,
		0.325343, 0.906963, 0.267527,
		-0.945494, 0.307855, 0.106145,
		34.713940, 32.749256, 36.941349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496555, 33.065239, 37.293087>,  <35.375786, 32.533756, 36.867046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496555, 33.065239, 37.293087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129833, 32.906715, 37.312748>,  <34.909801, 32.811604, 37.324547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129833, 32.906715, 37.312748>,  <35.496555, 33.065239, 37.293087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129833, 32.906715, 37.312748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016206, 0.159914, 0.986998,
		-0.399014, 0.904085, -0.153032,
		-0.916802, -0.396306, 0.049156,
		34.854794, 32.787823, 37.327496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295925, 33.286579, 37.970604>,  <35.496555, 33.065239, 37.293087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295925, 33.286579, 37.970604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001030, 33.023994, 37.906689>,  <34.824093, 32.866444, 37.868340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001030, 33.023994, 37.906689>,  <35.295925, 33.286579, 37.970604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001030, 33.023994, 37.906689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134902, -0.088715, 0.986879,
		-0.662027, 0.749122, -0.023155,
		-0.737239, -0.656465, -0.159790,
		34.779858, 32.827057, 37.858753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645298, 33.560516, 38.311958>,  <35.295925, 33.286579, 37.970604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645298, 33.560516, 38.311958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629288, 33.164787, 38.255898>,  <34.619682, 32.927349, 38.222263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629288, 33.164787, 38.255898>,  <34.645298, 33.560516, 38.311958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629288, 33.164787, 38.255898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398251, -0.112844, 0.910309,
		-0.916403, 0.092252, -0.389481,
		-0.040027, -0.989321, -0.140150,
		34.617279, 32.867992, 38.213852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141106, 33.369049, 38.877640>,  <34.645298, 33.560516, 38.311958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141106, 33.369049, 38.877640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298691, 33.018295, 38.767467>,  <34.393242, 32.807842, 38.701366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298691, 33.018295, 38.767467>,  <34.141106, 33.369049, 38.877640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298691, 33.018295, 38.767467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057140, -0.322450, 0.944860,
		-0.917349, -0.356502, -0.177139,
		0.393963, -0.876888, -0.275428,
		34.416878, 32.755230, 38.684837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708416, 32.842216, 39.102146>,  <34.141106, 33.369049, 38.877640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708416, 32.842216, 39.102146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064240, 32.663815, 39.062630>,  <34.277733, 32.556774, 39.038918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064240, 32.663815, 39.062630>,  <33.708416, 32.842216, 39.102146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064240, 32.663815, 39.062630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030790, -0.274316, 0.961147,
		-0.455777, -0.851957, -0.257753,
		0.889561, -0.446005, -0.098795,
		34.331108, 32.530014, 39.032990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661434, 32.399559, 39.627644>,  <33.708416, 32.842216, 39.102146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661434, 32.399559, 39.627644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047726, 32.399918, 39.523815>,  <34.279499, 32.400131, 39.461517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047726, 32.399918, 39.523815>,  <33.661434, 32.399559, 39.627644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047726, 32.399918, 39.523815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248136, -0.296718, 0.922165,
		-0.076195, -0.954965, -0.286769,
		0.965724, 0.000894, -0.259569,
		34.337444, 32.400185, 39.445946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861511, 31.726109, 39.756493>,  <33.661434, 32.399559, 39.627644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861511, 31.726109, 39.756493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201775, 31.933592, 39.722263>,  <34.405933, 32.058083, 39.701725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201775, 31.933592, 39.722263>,  <33.861511, 31.726109, 39.756493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201775, 31.933592, 39.722263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313234, -0.369354, 0.874907,
		0.422217, -0.771049, -0.476671,
		0.850657, 0.518710, -0.085571,
		34.456970, 32.089207, 39.696590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384026, 31.227057, 39.909443>,  <33.861511, 31.726109, 39.756493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384026, 31.227057, 39.909443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559723, 31.583004, 39.958759>,  <34.665142, 31.796572, 39.988350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559723, 31.583004, 39.958759>,  <34.384026, 31.227057, 39.909443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559723, 31.583004, 39.958759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256489, -0.255743, 0.932099,
		0.860975, -0.377798, -0.340575,
		0.439244, 0.889868, 0.123287,
		34.691498, 31.849964, 39.995747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154148, 31.189606, 39.988476>,  <34.384026, 31.227057, 39.909443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154148, 31.189606, 39.988476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014610, 31.510271, 40.182648>,  <34.930889, 31.702671, 40.299152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014610, 31.510271, 40.182648>,  <35.154148, 31.189606, 39.988476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014610, 31.510271, 40.182648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270225, -0.409930, 0.871169,
		0.897377, 0.435079, -0.073627,
		-0.348845, 0.801663, 0.485431,
		34.909958, 31.750771, 40.328278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493652, 31.250397, 40.625668>,  <35.154148, 31.189606, 39.988476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493652, 31.250397, 40.625668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175144, 31.487474, 40.674103>,  <34.984039, 31.629721, 40.703163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175144, 31.487474, 40.674103>,  <35.493652, 31.250397, 40.625668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175144, 31.487474, 40.674103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032537, -0.157923, 0.986915,
		0.604062, 0.789794, 0.106465,
		-0.796273, 0.592694, 0.121093,
		34.936264, 31.665283, 40.710430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685715, 31.664288, 41.159241>,  <35.493652, 31.250397, 40.625668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685715, 31.664288, 41.159241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289215, 31.716425, 41.150883>,  <35.051315, 31.747707, 41.145866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289215, 31.716425, 41.150883>,  <35.685715, 31.664288, 41.159241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289215, 31.716425, 41.150883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042668, -0.166536, 0.985112,
		0.124920, 0.977383, 0.170640,
		-0.991249, 0.130341, -0.020899,
		34.991840, 31.755527, 41.144611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590019, 32.200027, 41.698921>,  <35.685715, 31.664288, 41.159241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590019, 32.200027, 41.698921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229218, 32.034657, 41.649185>,  <35.012737, 31.935434, 41.619343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229218, 32.034657, 41.649185>,  <35.590019, 32.200027, 41.698921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229218, 32.034657, 41.649185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066934, -0.150611, 0.986325,
		-0.426501, 0.897995, 0.108179,
		-0.902007, -0.413428, -0.124342,
		34.958614, 31.910627, 41.611881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120865, 32.649677, 42.094967>,  <35.590019, 32.200027, 41.698921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120865, 32.649677, 42.094967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983585, 32.276180, 42.054276>,  <34.901218, 32.052082, 42.029861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983585, 32.276180, 42.054276>,  <35.120865, 32.649677, 42.094967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983585, 32.276180, 42.054276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067123, -0.083650, 0.994232,
		-0.936863, 0.348044, -0.033968,
		-0.343195, -0.933739, -0.101730,
		34.880627, 31.996059, 42.023758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516945, 32.543873, 42.516258>,  <35.120865, 32.649677, 42.094967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516945, 32.543873, 42.516258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626228, 32.160255, 42.486347>,  <34.691799, 31.930084, 42.468403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626228, 32.160255, 42.486347>,  <34.516945, 32.543873, 42.516258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626228, 32.160255, 42.486347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239632, -0.143134, 0.960255,
		-0.931629, -0.244431, -0.268924,
		0.273208, -0.959044, -0.074774,
		34.708191, 31.872541, 42.463917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053818, 32.213379, 42.955849>,  <34.516945, 32.543873, 42.516258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053818, 32.213379, 42.955849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337337, 31.939320, 42.888706>,  <34.507450, 31.774885, 42.848423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337337, 31.939320, 42.888706>,  <34.053818, 32.213379, 42.955849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337337, 31.939320, 42.888706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096951, -0.141075, 0.985240,
		-0.698715, -0.714612, -0.033568,
		0.708800, -0.685147, -0.167854,
		34.549976, 31.733776, 42.838348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901714, 31.610332, 43.368629>,  <34.053818, 32.213379, 42.955849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901714, 31.610332, 43.368629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293530, 31.565588, 43.301697>,  <34.528618, 31.538742, 43.261539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293530, 31.565588, 43.301697>,  <33.901714, 31.610332, 43.368629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293530, 31.565588, 43.301697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147246, -0.168516, 0.974639,
		-0.137215, -0.979332, -0.148598,
		0.979536, -0.111854, -0.167326,
		34.587391, 31.532030, 43.251499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094082, 31.048500, 43.842899>,  <33.901714, 31.610332, 43.368629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094082, 31.048500, 43.842899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436882, 31.223877, 43.734589>,  <34.642563, 31.329103, 43.669601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436882, 31.223877, 43.734589>,  <34.094082, 31.048500, 43.842899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436882, 31.223877, 43.734589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389056, -0.205941, 0.897899,
		0.337913, -0.874847, -0.347070,
		0.857001, 0.438441, -0.270775,
		34.693981, 31.355410, 43.653355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732849, 30.571629, 44.125042>,  <34.094082, 31.048500, 43.842899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732849, 30.571629, 44.125042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846855, 30.944748, 44.036812>,  <34.915260, 31.168619, 43.983871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846855, 30.944748, 44.036812>,  <34.732849, 30.571629, 44.125042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846855, 30.944748, 44.036812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329603, 0.120714, 0.936371,
		0.900071, -0.339586, -0.273046,
		0.285018, 0.932797, -0.220580,
		34.932362, 31.224586, 43.970638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386593, 30.681396, 44.402763>,  <34.732849, 30.571629, 44.125042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386593, 30.681396, 44.402763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205612, 31.036261, 44.366459>,  <35.097023, 31.249178, 44.344677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205612, 31.036261, 44.366459>,  <35.386593, 30.681396, 44.402763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205612, 31.036261, 44.366459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367760, 0.278333, 0.887290,
		0.812428, 0.368078, -0.452194,
		-0.452452, 0.887158, -0.090761,
		35.069878, 31.302408, 44.339230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149834, 30.846987, 44.222687>,  <35.386593, 30.681396, 44.402763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149834, 30.846987, 44.222687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536846, 30.833385, 44.322876>,  <36.769054, 30.825224, 44.382988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536846, 30.833385, 44.322876>,  <36.149834, 30.846987, 44.222687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536846, 30.833385, 44.322876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238873, -0.201024, -0.950015,
		0.082654, 0.978996, -0.186374,
		0.967527, -0.034003, 0.250471,
		36.827103, 30.823185, 44.398018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556622, 31.363398, 43.933750>,  <36.149834, 30.846987, 44.222687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556622, 31.363398, 43.933750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805984, 31.058449, 44.003201>,  <36.955605, 30.875479, 44.044868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805984, 31.058449, 44.003201>,  <36.556622, 31.363398, 43.933750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805984, 31.058449, 44.003201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388875, 0.109669, -0.914740,
		0.678333, 0.637776, 0.364837,
		0.623411, -0.762374, 0.173623,
		36.993008, 30.829737, 44.055286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163410, 31.488520, 43.501373>,  <36.556622, 31.363398, 43.933750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163410, 31.488520, 43.501373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261021, 31.119543, 43.621071>,  <37.319588, 30.898157, 43.692890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261021, 31.119543, 43.621071>,  <37.163410, 31.488520, 43.501373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261021, 31.119543, 43.621071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346631, -0.205220, -0.915277,
		0.905702, 0.327083, 0.269668,
		0.244031, -0.922443, 0.299245,
		37.334229, 30.842810, 43.710846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890472, 31.410913, 43.505886>,  <37.163410, 31.488520, 43.501373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890472, 31.410913, 43.505886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732216, 31.046110, 43.462608>,  <37.637260, 30.827229, 43.436642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732216, 31.046110, 43.462608>,  <37.890472, 31.410913, 43.505886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732216, 31.046110, 43.462608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420113, -0.074965, -0.904370,
		0.816683, -0.403262, 0.412806,
		-0.395644, -0.912009, -0.108193,
		37.613522, 30.772507, 43.430149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367397, 31.004385, 43.136395>,  <37.890472, 31.410913, 43.505886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367397, 31.004385, 43.136395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037155, 30.785316, 43.082085>,  <37.839012, 30.653875, 43.049500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037155, 30.785316, 43.082085>,  <38.367397, 31.004385, 43.136395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037155, 30.785316, 43.082085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139500, 0.035048, -0.989602,
		0.546738, -0.835958, 0.047464,
		-0.825602, -0.547674, -0.135778,
		37.789474, 30.621014, 43.041351>
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
