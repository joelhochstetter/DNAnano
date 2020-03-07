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
	<0.970539, 3.771906, 5.524554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.715443, 3.565186, 5.296097>,  <0.562385, 3.441153, 5.159022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.715443, 3.565186, 5.296097>,  <0.970539, 3.771906, 5.524554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.715443, 3.565186, 5.296097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067894, 0.700898, -0.710022,
		0.767254, -0.491586, -0.411903,
		-0.637739, -0.516802, -0.571143,
		0.524121, 3.410145, 5.124754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.205115, 3.567465, 4.913423>,  <0.970539, 3.771906, 5.524554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.205115, 3.567465, 4.913423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.824680, 3.657593, 4.828886>,  <0.596419, 3.711669, 4.778164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.824680, 3.657593, 4.828886>,  <1.205115, 3.567465, 4.913423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.824680, 3.657593, 4.828886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308460, 0.655201, -0.689612,
		-0.016911, -0.721071, -0.692655,
		-0.951087, 0.225319, -0.211342,
		0.539354, 3.725188, 4.765483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.014204, 3.462467, 4.222728>,  <1.205115, 3.567465, 4.913423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.014204, 3.462467, 4.222728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.789711, 3.766434, 4.353905>,  <0.655015, 3.948813, 4.432611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.789711, 3.766434, 4.353905>,  <1.014204, 3.462467, 4.222728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.789711, 3.766434, 4.353905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267261, 0.541398, -0.797158,
		-0.783319, -0.359745, -0.506946,
		-0.561233, 0.759916, 0.327941,
		0.621341, 3.994409, 4.452287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.542473, 3.628842, 3.727433>,  <1.014204, 3.462467, 4.222728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.542473, 3.628842, 3.727433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.626480, 3.960846, 3.934113>,  <0.676884, 4.160048, 4.058120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.626480, 3.960846, 3.934113>,  <0.542473, 3.628842, 3.727433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.626480, 3.960846, 3.934113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264720, 0.460470, -0.847284,
		-0.941178, 0.314725, -0.123013,
		0.210018, 0.830009, 0.516698,
		0.689485, 4.209849, 4.089122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.212245, 4.229166, 3.528144>,  <0.542473, 3.628842, 3.727433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.212245, 4.229166, 3.528144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.529064, 4.388504, 3.713177>,  <0.719156, 4.484107, 3.824196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.529064, 4.388504, 3.713177>,  <0.212245, 4.229166, 3.528144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.529064, 4.388504, 3.713177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162453, 0.592896, -0.788722,
		-0.588447, 0.699853, 0.404889,
		0.792047, 0.398346, 0.462582,
		0.766678, 4.508008, 3.851951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.122427, 4.963333, 3.529188>,  <0.212245, 4.229166, 3.528144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.122427, 4.963333, 3.529188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.509804, 4.868393, 3.559614>,  <0.742230, 4.811429, 3.577870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.509804, 4.868393, 3.559614>,  <0.122427, 4.963333, 3.529188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.509804, 4.868393, 3.559614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195264, 0.532843, -0.823378,
		0.154899, 0.812246, 0.562373,
		0.968441, -0.237351, 0.076065,
		0.800336, 4.797188, 3.582434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.445605, 5.571560, 3.370037>,  <0.122427, 4.963333, 3.529188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.445605, 5.571560, 3.370037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.728657, 5.294800, 3.312717>,  <0.898488, 5.128744, 3.278326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.728657, 5.294800, 3.312717>,  <0.445605, 5.571560, 3.370037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.728657, 5.294800, 3.312717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338718, 0.510155, -0.790577,
		0.620106, 0.510897, 0.595359,
		0.707629, -0.691901, -0.143300,
		0.940945, 5.087230, 3.269727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.179315, 5.949324, 3.300548>,  <0.445605, 5.571560, 3.370037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.179315, 5.949324, 3.300548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.246956, 5.584949, 3.150028>,  <1.287540, 5.366325, 3.059716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.246956, 5.584949, 3.150028>,  <1.179315, 5.949324, 3.300548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.246956, 5.584949, 3.150028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473639, 0.409929, -0.779503,
		0.864333, -0.046415, 0.500774,
		0.169102, -0.910936, -0.376299,
		1.297686, 5.311669, 3.037138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.512938, 5.910311, 1.790303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.597191, 5.539749, 1.665462>,  <1.647742, 5.317412, 1.590558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.597191, 5.539749, 1.665462>,  <1.512938, 5.910311, 1.790303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.597191, 5.539749, 1.665462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032106, -0.325648, 0.944946,
		-0.977038, -0.189014, -0.098334,
		0.210631, -0.926405, -0.312102,
		1.660380, 5.261827, 1.571832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.948288, 5.308189, 1.882555>,  <1.512938, 5.910311, 1.790303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.948288, 5.308189, 1.882555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.321915, 5.197453, 1.972782>,  <1.546090, 5.131011, 2.026918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.321915, 5.197453, 1.972782>,  <0.948288, 5.308189, 1.882555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.321915, 5.197453, 1.972782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312143, -0.326136, 0.892302,
		-0.173458, -0.903878, -0.391046,
		0.934066, -0.276839, 0.225568,
		1.602134, 5.114400, 2.040452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.021915, 4.550729, 2.146639>,  <0.948288, 5.308189, 1.882555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.021915, 4.550729, 2.146639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.302429, 4.786232, 2.307419>,  <1.470738, 4.927534, 2.403887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.302429, 4.786232, 2.307419>,  <1.021915, 4.550729, 2.146639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.302429, 4.786232, 2.307419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155286, -0.424136, 0.892186,
		0.695762, -0.688094, -0.206014,
		0.701285, 0.588758, 0.401949,
		1.512815, 4.962859, 2.428004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.614380, 4.221042, 2.494668>,  <1.021915, 4.550729, 2.146639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.614380, 4.221042, 2.494668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.524414, 4.570580, 2.667091>,  <1.470435, 4.780302, 2.770545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.524414, 4.570580, 2.667091>,  <1.614380, 4.221042, 2.494668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.524414, 4.570580, 2.667091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170951, -0.470920, 0.865453,
		0.959265, 0.120963, 0.255302,
		-0.224915, 0.873843, 0.431059,
		1.456940, 4.832733, 2.796409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.063865, 4.419433, 3.109561>,  <1.614380, 4.221042, 2.494668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.063865, 4.419433, 3.109561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.726280, 4.623970, 3.174374>,  <1.523729, 4.746693, 3.213261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.726280, 4.623970, 3.174374>,  <2.063865, 4.419433, 3.109561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.726280, 4.623970, 3.174374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006337, -0.311553, 0.950208,
		0.536364, 0.800913, 0.266179,
		-0.843963, 0.511344, 0.162030,
		1.473091, 4.777373, 3.222983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.081698, 4.786666, 3.823467>,  <2.063865, 4.419433, 3.109561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.081698, 4.786666, 3.823467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.690933, 4.775227, 3.738781>,  <1.456474, 4.768363, 3.687969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.690933, 4.775227, 3.738781>,  <2.081698, 4.786666, 3.823467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.690933, 4.775227, 3.738781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199634, -0.230707, 0.952324,
		-0.076080, 0.972603, 0.219671,
		-0.976913, -0.028599, -0.211717,
		1.397859, 4.766647, 3.675266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.806919, 4.969069, 4.422646>,  <2.081698, 4.786666, 3.823467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.806919, 4.969069, 4.422646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.483635, 4.825287, 4.236061>,  <1.289664, 4.739017, 4.124110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.483635, 4.825287, 4.236061>,  <1.806919, 4.969069, 4.422646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.483635, 4.825287, 4.236061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397747, -0.250923, 0.882516,
		-0.434273, 0.898793, 0.059826,
		-0.808211, -0.359457, -0.466461,
		1.241172, 4.717450, 4.096123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.205899, 5.212469, 4.819149>,  <1.806919, 4.969069, 4.422646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.205899, 5.212469, 4.819149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.048203, 4.924706, 4.590405>,  <0.953585, 4.752048, 4.453158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.048203, 4.924706, 4.590405>,  <1.205899, 5.212469, 4.819149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.048203, 4.924706, 4.590405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586222, -0.282358, 0.759353,
		-0.707755, 0.634606, -0.310416,
		-0.394241, -0.719409, -0.571861,
		0.929930, 4.708883, 4.418846>
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
