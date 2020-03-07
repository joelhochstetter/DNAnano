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
	<2.523175, -0.651850, 1.710943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.182356, -0.842827, 1.796795>,  <1.977865, -0.957413, 1.848306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.182356, -0.842827, 1.796795>,  <2.523175, -0.651850, 1.710943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.182356, -0.842827, 1.796795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509352, 0.661613, -0.550299,
		0.120735, -0.578202, -0.806911,
		-0.852047, -0.477442, 0.214629,
		1.926742, -0.986060, 1.861183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.180039, -0.798682, 1.134338>,  <2.523175, -0.651850, 1.710943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.180039, -0.798682, 1.134338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.898916, -0.769262, 1.417366>,  <1.730243, -0.751610, 1.587183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.898916, -0.769262, 1.417366>,  <2.180039, -0.798682, 1.134338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.898916, -0.769262, 1.417366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523979, 0.619220, -0.584818,
		-0.481154, -0.781765, -0.396653,
		-0.702806, 0.073550, 0.707569,
		1.688074, -0.747197, 1.629637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.531511, -0.793153, 0.905799>,  <2.180039, -0.798682, 1.134338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.531511, -0.793153, 0.905799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.517147, -0.609863, 1.261044>,  <1.508529, -0.499889, 1.474190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.517147, -0.609863, 1.261044>,  <1.531511, -0.793153, 0.905799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.517147, -0.609863, 1.261044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531803, 0.743644, -0.405190,
		-0.846106, -0.486850, 0.216982,
		-0.035909, 0.458225, 0.888110,
		1.506374, -0.472396, 1.527477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.860520, -0.403154, 1.023670>,  <1.531511, -0.793153, 0.905799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.860520, -0.403154, 1.023670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.116767, -0.199217, 1.253338>,  <1.270515, -0.076855, 1.391139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.116767, -0.199217, 1.253338>,  <0.860520, -0.403154, 1.023670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.116767, -0.199217, 1.253338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417929, 0.858805, -0.296294,
		-0.644163, -0.050151, 0.763243,
		0.640617, 0.509842, 0.574169,
		1.308952, -0.046264, 1.425589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.448310, 0.175021, 1.250513>,  <0.860520, -0.403154, 1.023670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.448310, 0.175021, 1.250513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.820392, 0.305199, 1.318405>,  <1.043640, 0.383305, 1.359141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.820392, 0.305199, 1.318405>,  <0.448310, 0.175021, 1.250513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.820392, 0.305199, 1.318405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268243, 0.918397, -0.290848,
		-0.250535, 0.225018, 0.941594,
		0.930203, 0.325444, 0.169731,
		1.099453, 0.402832, 1.369325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.351657, 0.715873, 1.622492>,  <0.448310, 0.175021, 1.250513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.351657, 0.715873, 1.622492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.720729, 0.759371, 1.474525>,  <0.942172, 0.785469, 1.385745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.720729, 0.759371, 1.474525>,  <0.351657, 0.715873, 1.622492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.720729, 0.759371, 1.474525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226237, 0.929578, -0.291036,
		0.312219, 0.352222, 0.882304,
		0.922679, 0.108743, -0.369917,
		0.997533, 0.791994, 1.363550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.415375, 1.424263, 1.794950>,  <0.351657, 0.715873, 1.622492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.415375, 1.424263, 1.794950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.702369, 1.350157, 1.526356>,  <0.874565, 1.305693, 1.365199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.702369, 1.350157, 1.526356>,  <0.415375, 1.424263, 1.794950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.702369, 1.350157, 1.526356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222539, 0.852499, -0.472992,
		0.660070, 0.488796, 0.570426,
		0.717484, -0.185266, -0.671486,
		0.917614, 1.294577, 1.324910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.965957, 2.021669, 1.788368>,  <0.415375, 1.424263, 1.794950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.965957, 2.021669, 1.788368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.870239, 1.828049, 1.451694>,  <0.812809, 1.711876, 1.249690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.870239, 1.828049, 1.451694>,  <0.965957, 2.021669, 1.788368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.870239, 1.828049, 1.451694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315268, 0.858635, -0.404168,
		0.918338, 0.168641, -0.358073,
		-0.239295, -0.484052, -0.841684,
		0.798451, 1.682833, 1.199189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.069549, 2.594575, 0.620759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.326660, 2.440269, 0.356026>,  <0.480927, 2.347686, 0.197186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.326660, 2.440269, 0.356026>,  <0.069549, 2.594575, 0.620759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.326660, 2.440269, 0.356026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354323, -0.616268, 0.703327,
		-0.679185, -0.686585, -0.259437,
		0.642777, -0.385764, -0.661833,
		0.519494, 2.324541, 0.157476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.036269, 1.836445, 0.521455>,  <0.069549, 2.594575, 0.620759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.036269, 1.836445, 0.521455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.403477, 1.971828, 0.438812>,  <0.623801, 2.053059, 0.389227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.403477, 1.971828, 0.438812>,  <0.036269, 1.836445, 0.521455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.403477, 1.971828, 0.438812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392358, -0.699875, 0.596850,
		0.057411, -0.628984, -0.775296,
		0.918019, 0.338459, -0.206606,
		0.678882, 2.073366, 0.376830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.437356, 1.287819, 0.202906>,  <0.036269, 1.836445, 0.521455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.437356, 1.287819, 0.202906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.701550, 1.526451, 0.385269>,  <0.860066, 1.669631, 0.494687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.701550, 1.526451, 0.385269>,  <0.437356, 1.287819, 0.202906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.701550, 1.526451, 0.385269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314422, -0.771155, 0.553588,
		0.681836, -0.222289, -0.696913,
		0.660484, 0.596581, 0.455908,
		0.899695, 1.705425, 0.522042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.086912, 1.045520, 0.086956>,  <0.437356, 1.287819, 0.202906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.086912, 1.045520, 0.086956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.120815, 1.267422, 0.418030>,  <1.141157, 1.400563, 0.616674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.120815, 1.267422, 0.418030>,  <1.086912, 1.045520, 0.086956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.120815, 1.267422, 0.418030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445612, -0.764079, 0.466491,
		0.891205, 0.329287, -0.311967,
		0.084758, 0.554755, 0.827685,
		1.146243, 1.433848, 0.666335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.763788, 1.039795, 0.350746>,  <1.086912, 1.045520, 0.086956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.763788, 1.039795, 0.350746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.514690, 1.101742, 0.657524>,  <1.365232, 1.138910, 0.841591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.514690, 1.101742, 0.657524>,  <1.763788, 1.039795, 0.350746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.514690, 1.101742, 0.657524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488449, -0.688801, 0.535697,
		0.611235, 0.708216, 0.353301,
		-0.622743, 0.154867, 0.766946,
		1.327867, 1.148202, 0.887608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.209087, 0.917137, 0.890976>,  <1.763788, 1.039795, 0.350746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.209087, 0.917137, 0.890976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.832405, 0.894241, 1.023590>,  <1.606396, 0.880504, 1.103159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.832405, 0.894241, 1.023590>,  <2.209087, 0.917137, 0.890976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.832405, 0.894241, 1.023590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288671, -0.643606, 0.708830,
		0.172805, 0.763214, 0.622610,
		-0.941705, -0.057240, 0.331536,
		1.549894, 0.877069, 1.123051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.295560, 0.884915, 1.615682>,  <2.209087, 0.917137, 0.890976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.295560, 0.884915, 1.615682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.933754, 0.735062, 1.534195>,  <1.716670, 0.645149, 1.485303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.933754, 0.735062, 1.534195>,  <2.295560, 0.884915, 1.615682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.933754, 0.735062, 1.534195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183326, -0.772928, 0.607432,
		-0.385023, 0.512085, 0.767806,
		-0.904516, -0.374634, -0.203717,
		1.662399, 0.622671, 1.473080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.021571, 0.702002, 2.197669>,  <2.295560, 0.884915, 1.615682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.021571, 0.702002, 2.197669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.833874, 0.468159, 1.932930>,  <1.721255, 0.327853, 1.774087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.833874, 0.468159, 1.932930>,  <2.021571, 0.702002, 2.197669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.833874, 0.468159, 1.932930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155528, -0.792483, 0.589731,
		-0.869264, 0.173792, 0.462791,
		-0.469245, -0.584609, -0.661847,
		1.693100, 0.292776, 1.734376>
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
