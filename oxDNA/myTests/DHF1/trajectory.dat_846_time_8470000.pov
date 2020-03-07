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
	<1.055210, 1.006662, 1.551915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.062595, 1.217728, 1.891616>,  <1.067026, 1.344367, 2.095437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.062595, 1.217728, 1.891616>,  <1.055210, 1.006662, 1.551915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.062595, 1.217728, 1.891616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482211, -0.748780, 0.454754,
		0.875860, 0.401123, -0.268270,
		0.018463, 0.527663, 0.849253,
		1.068134, 1.376027, 2.146392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.772566, 1.227899, 1.876605>,  <1.055210, 1.006662, 1.551915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.772566, 1.227899, 1.876605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.496414, 1.172272, 2.160586>,  <1.330723, 1.138895, 2.330975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.496414, 1.172272, 2.160586>,  <1.772566, 1.227899, 1.876605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.496414, 1.172272, 2.160586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602498, -0.653750, 0.457828,
		0.400463, 0.743822, 0.535125,
		-0.690381, -0.139069, 0.709954,
		1.289300, 1.130551, 2.373573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.905507, 1.460168, 2.625783>,  <1.772566, 1.227899, 1.876605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.905507, 1.460168, 2.625783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.702560, 1.116707, 2.596678>,  <1.580793, 0.910630, 2.579214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.702560, 1.116707, 2.596678>,  <1.905507, 1.460168, 2.625783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.702560, 1.116707, 2.596678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744086, -0.479125, 0.465591,
		-0.434644, 0.182082, 0.882004,
		-0.507366, -0.858653, -0.072764,
		1.550351, 0.859111, 2.574849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.832548, 1.116144, 3.320849>,  <1.905507, 1.460168, 2.625783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.832548, 1.116144, 3.320849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.815495, 0.819626, 3.052919>,  <1.805262, 0.641715, 2.892161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.815495, 0.819626, 3.052919>,  <1.832548, 1.116144, 3.320849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.815495, 0.819626, 3.052919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678456, -0.513627, 0.525248,
		-0.733403, -0.432053, 0.524833,
		-0.042634, -0.741294, -0.669825,
		1.802704, 0.597238, 2.851971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.005587, 0.479692, 3.720648>,  <1.832548, 1.116144, 3.320849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.005587, 0.479692, 3.720648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.065060, 0.394234, 3.334435>,  <2.100744, 0.342959, 3.102708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.065060, 0.394234, 3.334435>,  <2.005587, 0.479692, 3.720648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.065060, 0.394234, 3.334435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724371, -0.641145, 0.253414,
		-0.673186, -0.737081, 0.059431,
		0.148682, -0.213645, -0.965531,
		2.109664, 0.330140, 3.044776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.000226, -0.263414, 3.637701>,  <2.005587, 0.479692, 3.720648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.000226, -0.263414, 3.637701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.189526, -0.142258, 3.306813>,  <2.303105, -0.069564, 3.108280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.189526, -0.142258, 3.306813>,  <2.000226, -0.263414, 3.637701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.189526, -0.142258, 3.306813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671222, -0.732135, 0.115928,
		-0.570523, -0.610111, -0.549788,
		0.473248, 0.302891, -0.827220,
		2.331500, -0.051390, 3.058647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.299222, -0.865920, 3.270061>,  <2.000226, -0.263414, 3.637701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.299222, -0.865920, 3.270061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.499477, -0.561539, 3.104986>,  <2.619631, -0.378910, 3.005942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.499477, -0.561539, 3.104986>,  <2.299222, -0.865920, 3.270061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.499477, -0.561539, 3.104986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832228, -0.554294, -0.012469,
		-0.238237, -0.337206, -0.910788,
		0.500640, 0.760954, -0.412686,
		2.649669, -0.333253, 2.981180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.611980, -1.157641, 2.678426>,  <2.299222, -0.865920, 3.270061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.611980, -1.157641, 2.678426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.794106, -0.837753, 2.834958>,  <2.903381, -0.645821, 2.928877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.794106, -0.837753, 2.834958>,  <2.611980, -1.157641, 2.678426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.794106, -0.837753, 2.834958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867306, -0.497711, 0.008009,
		0.201175, 0.335756, -0.920215,
		0.455312, 0.799719, 0.391330,
		2.930699, -0.597837, 2.952357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.649898, 3.544842, 2.969027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.893166, 3.843559, 3.076678>,  <4.039126, 4.022789, 3.141269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.893166, 3.843559, 3.076678>,  <3.649898, 3.544842, 2.969027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.893166, 3.843559, 3.076678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734946, 0.657844, -0.164610,
		-0.299973, -0.097684, 0.948933,
		0.608170, 0.746792, 0.269128,
		4.075617, 4.067597, 3.157417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.405386, 4.063650, 3.618140>,  <3.649898, 3.544842, 2.969027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.405386, 4.063650, 3.618140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.635681, 4.211746, 3.326538>,  <3.773858, 4.300604, 3.151577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.635681, 4.211746, 3.326538>,  <3.405386, 4.063650, 3.618140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.635681, 4.211746, 3.326538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703481, 0.678707, -0.210883,
		0.416703, 0.634254, 0.651215,
		0.575738, 0.370241, -0.729004,
		3.808403, 4.322819, 3.107837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.799868, 4.807175, 3.683253>,  <3.405386, 4.063650, 3.618140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.799868, 4.807175, 3.683253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.691681, 4.725288, 3.306969>,  <3.626769, 4.676157, 3.081198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.691681, 4.725288, 3.306969>,  <3.799868, 4.807175, 3.683253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.691681, 4.725288, 3.306969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539090, 0.841776, -0.028190,
		0.797640, 0.499504, -0.338034,
		-0.270468, -0.204716, -0.940712,
		3.610541, 4.663874, 3.024755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.587626, 5.362332, 3.392176>,  <3.799868, 4.807175, 3.683253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.587626, 5.362332, 3.392176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.416496, 5.101692, 3.141614>,  <3.313818, 4.945308, 2.991277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.416496, 5.101692, 3.141614>,  <3.587626, 5.362332, 3.392176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.416496, 5.101692, 3.141614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705016, 0.674252, -0.219857,
		0.565614, 0.347566, -0.747850,
		-0.427824, -0.651600, -0.626405,
		3.288149, 4.906212, 2.953692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.280939, 5.709179, 2.675245>,  <3.587626, 5.362332, 3.392176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.280939, 5.709179, 2.675245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.091187, 5.361221, 2.729273>,  <2.977335, 5.152446, 2.761689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.091187, 5.361221, 2.729273>,  <3.280939, 5.709179, 2.675245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.091187, 5.361221, 2.729273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864759, 0.431757, -0.256473,
		0.164787, -0.238469, -0.957067,
		-0.474382, -0.869896, 0.135070,
		2.948872, 5.100253, 2.769794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.868165, 5.542091, 2.016881>,  <3.280939, 5.709179, 2.675245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.868165, 5.542091, 2.016881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.704315, 5.350395, 2.327374>,  <2.606005, 5.235377, 2.513669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.704315, 5.350395, 2.327374>,  <2.868165, 5.542091, 2.016881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.704315, 5.350395, 2.327374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889576, 0.398388, -0.223474,
		-0.202144, -0.782059, -0.589510,
		-0.409624, -0.479240, 0.776233,
		2.581428, 5.206623, 2.560243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.275111, 5.101334, 1.809364>,  <2.868165, 5.542091, 2.016881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.275111, 5.101334, 1.809364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.214119, 5.180679, 2.196642>,  <2.177524, 5.228287, 2.429009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.214119, 5.180679, 2.196642>,  <2.275111, 5.101334, 1.809364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.214119, 5.180679, 2.196642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878093, 0.422380, -0.224828,
		-0.453545, -0.884447, 0.109779,
		-0.152480, 0.198365, 0.968195,
		2.168375, 5.240189, 2.487100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.695417, 4.777257, 1.896939>,  <2.275111, 5.101334, 1.809364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.695417, 4.777257, 1.896939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.755356, 5.071289, 2.161425>,  <1.791319, 5.247708, 2.320116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.755356, 5.071289, 2.161425>,  <1.695417, 4.777257, 1.896939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.755356, 5.071289, 2.161425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820015, 0.466029, -0.332255,
		-0.552379, -0.492419, 0.672608,
		0.149846, 0.735079, 0.661215,
		1.800310, 5.291813, 2.359789>
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
