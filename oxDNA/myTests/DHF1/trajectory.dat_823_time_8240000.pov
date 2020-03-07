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
	<2.721260, 1.506639, 3.344181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.815296, 1.173157, 3.144315>,  <2.871718, 0.973067, 3.024395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.815296, 1.173157, 3.144315>,  <2.721260, 1.506639, 3.344181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.815296, 1.173157, 3.144315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971927, 0.206674, 0.112448,
		0.009520, -0.512074, 0.858889,
		0.235091, -0.833706, -0.499666,
		2.885823, 0.923045, 2.994415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.067570, 0.960955, 3.681628>,  <2.721260, 1.506639, 3.344181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.067570, 0.960955, 3.681628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.185429, 0.941742, 3.299869>,  <3.256144, 0.930214, 3.070813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.185429, 0.941742, 3.299869>,  <3.067570, 0.960955, 3.681628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.185429, 0.941742, 3.299869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914759, 0.303058, 0.267155,
		0.276406, -0.951761, 0.133233,
		0.294645, -0.048032, -0.954399,
		3.273822, 0.927332, 3.013549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.603009, 0.494759, 3.604722>,  <3.067570, 0.960955, 3.681628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.603009, 0.494759, 3.604722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.661854, 0.733757, 3.289417>,  <3.697160, 0.877156, 3.100234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.661854, 0.733757, 3.289417>,  <3.603009, 0.494759, 3.604722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.661854, 0.733757, 3.289417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984518, -0.011662, 0.174897,
		0.095307, -0.801788, -0.589960,
		0.147111, 0.597495, -0.788263,
		3.705987, 0.913006, 3.052938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.132202, 0.164736, 3.066423>,  <3.603009, 0.494759, 3.604722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.132202, 0.164736, 3.066423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.127552, 0.563461, 3.097989>,  <4.124763, 0.802697, 3.116929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.127552, 0.563461, 3.097989>,  <4.132202, 0.164736, 3.066423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.127552, 0.563461, 3.097989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967134, -0.008840, 0.254113,
		0.254001, 0.079275, -0.963950,
		-0.011624, 0.996814, 0.078915,
		4.124065, 0.862505, 3.121664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.694324, 0.358130, 2.757064>,  <4.132202, 0.164736, 3.066423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.694324, 0.358130, 2.757064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.607040, 0.666893, 2.995910>,  <4.554670, 0.852150, 3.139217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.607040, 0.666893, 2.995910>,  <4.694324, 0.358130, 2.757064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.607040, 0.666893, 2.995910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951456, 0.032180, 0.306098,
		0.217064, 0.634921, -0.741457,
		-0.218208, 0.771906, 0.597115,
		4.541578, 0.898465, 3.175044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.135776, 0.976994, 2.552812>,  <4.694324, 0.358130, 2.757064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.135776, 0.976994, 2.552812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.032612, 0.975594, 2.939277>,  <4.970713, 0.974754, 3.171156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.032612, 0.975594, 2.939277>,  <5.135776, 0.976994, 2.552812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.032612, 0.975594, 2.939277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956434, 0.140670, 0.255823,
		-0.136805, 0.990050, -0.032933,
		-0.257910, -0.003500, 0.966162,
		4.955239, 0.974544, 3.229125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.541894, 1.559707, 2.824872>,  <5.135776, 0.976994, 2.552812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.541894, 1.559707, 2.824872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.426781, 1.298782, 3.105349>,  <5.357712, 1.142228, 3.273635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.426781, 1.298782, 3.105349>,  <5.541894, 1.559707, 2.824872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.426781, 1.298782, 3.105349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912566, 0.035325, 0.407400,
		-0.290521, 0.757128, 0.585111,
		-0.287785, -0.652311, 0.701192,
		5.340446, 1.103089, 3.315706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.908420, 1.796847, 3.268592>,  <5.541894, 1.559707, 2.824872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.908420, 1.796847, 3.268592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.809017, 1.437126, 3.412537>,  <5.749375, 1.221294, 3.498904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.809017, 1.437126, 3.412537>,  <5.908420, 1.796847, 3.268592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.809017, 1.437126, 3.412537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939775, -0.133843, 0.314497,
		-0.234663, 0.416344, 0.878402,
		-0.248507, -0.899302, 0.359862,
		5.734465, 1.167336, 3.520495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.862885, 0.904830, 3.545397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.765251, 0.573700, 3.747438>,  <1.706671, 0.375022, 3.868662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.765251, 0.573700, 3.747438>,  <1.862885, 0.904830, 3.545397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.765251, 0.573700, 3.747438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965694, 0.255101, -0.048569,
		-0.088646, -0.499628, -0.861692,
		-0.244085, -0.827825, 0.505102,
		1.692026, 0.325352, 3.898968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.318944, 0.453358, 3.115678>,  <1.862885, 0.904830, 3.545397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.318944, 0.453358, 3.115678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.288277, 0.467606, 3.514246>,  <1.269876, 0.476154, 3.753386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.288277, 0.467606, 3.514246>,  <1.318944, 0.453358, 3.115678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.288277, 0.467606, 3.514246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849945, 0.520133, -0.083991,
		-0.521263, -0.853342, -0.009604,
		-0.076668, 0.035618, 0.996420,
		1.265276, 0.478291, 3.813172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.773605, 0.008190, 3.423523>,  <1.318944, 0.453358, 3.115678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.773605, 0.008190, 3.423523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.843597, 0.330078, 3.650434>,  <0.885593, 0.523211, 3.786581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.843597, 0.330078, 3.650434>,  <0.773605, 0.008190, 3.423523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.843597, 0.330078, 3.650434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940333, 0.307361, -0.145958,
		-0.291815, -0.507890, 0.810489,
		0.174982, 0.804722, 0.567278,
		0.896092, 0.571495, 3.820617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.379264, 0.068926, 3.986492>,  <0.773605, 0.008190, 3.423523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.379264, 0.068926, 3.986492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.479790, 0.433098, 3.855062>,  <0.540105, 0.651601, 3.776205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.479790, 0.433098, 3.855062>,  <0.379264, 0.068926, 3.986492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.479790, 0.433098, 3.855062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966618, 0.218573, -0.133697,
		-0.049905, 0.351205, 0.934968,
		0.251314, 0.910429, -0.328574,
		0.555184, 0.706227, 3.756490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.066818, 0.483424, 4.386212>,  <0.379264, 0.068926, 3.986492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.066818, 0.483424, 4.386212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.053146, 0.673759, 4.055484>,  <0.125125, 0.787961, 3.857048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.053146, 0.673759, 4.055484>,  <-0.066818, 0.483424, 4.386212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.053146, 0.673759, 4.055484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935511, 0.316363, -0.157269,
		0.186740, 0.820666, 0.540032,
		0.299911, 0.475838, -0.826820,
		0.143120, 0.816511, 3.807438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.319466, 1.183791, 4.460175>,  <-0.066818, 0.483424, 4.386212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.319466, 1.183791, 4.460175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.249123, 1.106049, 4.074159>,  <-0.206917, 1.059403, 3.842550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.249123, 1.106049, 4.074159>,  <-0.319466, 1.183791, 4.460175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.249123, 1.106049, 4.074159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888432, 0.390883, -0.240622,
		0.423983, 0.899687, -0.103933,
		0.175859, -0.194357, -0.965038,
		-0.196365, 1.047742, 3.784648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.582006, 1.841036, 4.028806>,  <-0.319466, 1.183791, 4.460175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.582006, 1.841036, 4.028806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.546432, 1.547089, 3.759864>,  <-0.525088, 1.370720, 3.598499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.546432, 1.547089, 3.759864>,  <-0.582006, 1.841036, 4.028806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.546432, 1.547089, 3.759864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894439, 0.238091, -0.378538,
		0.438257, 0.635045, -0.636120,
		0.088934, -0.734868, -0.672355,
		-0.519752, 1.326628, 3.558158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.788674, 2.140115, 3.348303>,  <-0.582006, 1.841036, 4.028806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.788674, 2.140115, 3.348303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.828941, 1.745308, 3.298245>,  <-0.853102, 1.508424, 3.268210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.828941, 1.745308, 3.298245>,  <-0.788674, 2.140115, 3.348303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.828941, 1.745308, 3.298245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864394, 0.149050, -0.480216,
		0.492635, 0.059833, -0.868177,
		-0.100670, -0.987018, -0.125146,
		-0.859142, 1.449203, 3.260701>
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
