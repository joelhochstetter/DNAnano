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
	<1.312739, 2.616759, 5.883643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.515016, 2.950535, 5.796021>,  <1.636382, 3.150800, 5.743447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.515016, 2.950535, 5.796021>,  <1.312739, 2.616759, 5.883643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.515016, 2.950535, 5.796021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295175, -0.405941, -0.864919,
		-0.810646, 0.372724, -0.451587,
		0.505693, 0.834440, -0.219055,
		1.666724, 3.200867, 5.730304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.432873, 2.561203, 5.233258>,  <1.312739, 2.616759, 5.883643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.432873, 2.561203, 5.233258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.660746, 2.888119, 5.267906>,  <1.797469, 3.084268, 5.288695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.660746, 2.888119, 5.267906>,  <1.432873, 2.561203, 5.233258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.660746, 2.888119, 5.267906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401215, -0.184573, -0.897195,
		-0.717280, 0.545868, -0.433057,
		0.569680, 0.817289, 0.086620,
		1.831650, 3.133306, 5.293892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.246860, 3.022510, 4.632513>,  <1.432873, 2.561203, 5.233258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.246860, 3.022510, 4.632513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.609419, 3.020889, 4.801476>,  <1.826954, 3.019917, 4.902853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.609419, 3.020889, 4.801476>,  <1.246860, 3.022510, 4.632513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.609419, 3.020889, 4.801476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402782, -0.293095, -0.867100,
		0.127318, 0.956075, -0.264029,
		0.906398, -0.004051, 0.422406,
		1.881338, 3.019674, 4.928197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.707359, 3.241086, 4.191502>,  <1.246860, 3.022510, 4.632513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.707359, 3.241086, 4.191502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.974356, 3.094788, 4.450943>,  <2.134554, 3.007009, 4.606607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.974356, 3.094788, 4.450943>,  <1.707359, 3.241086, 4.191502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.974356, 3.094788, 4.450943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672670, -0.077366, -0.735887,
		0.319326, 0.927494, 0.194384,
		0.667493, -0.365745, 0.648602,
		2.174603, 2.985064, 4.645524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.247086, 3.711525, 4.034254>,  <1.707359, 3.241086, 4.191502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.247086, 3.711525, 4.034254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.367633, 3.361889, 4.186646>,  <2.439961, 3.152107, 4.278080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.367633, 3.361889, 4.186646>,  <2.247086, 3.711525, 4.034254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.367633, 3.361889, 4.186646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689674, -0.076080, -0.720112,
		0.658427, 0.479770, 0.579909,
		0.301368, -0.874090, 0.380978,
		2.458043, 3.099662, 4.300939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.047814, 3.744925, 4.055367>,  <2.247086, 3.711525, 4.034254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.047814, 3.744925, 4.055367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.917387, 3.367680, 4.029388>,  <2.839131, 3.141332, 4.013801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.917387, 3.367680, 4.029388>,  <3.047814, 3.744925, 4.055367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.917387, 3.367680, 4.029388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719998, -0.203233, -0.663550,
		0.612603, -0.263124, 0.745307,
		-0.326067, -0.943113, -0.064948,
		2.819567, 3.084746, 4.009904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.676801, 3.250781, 4.110576>,  <3.047814, 3.744925, 4.055367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.676801, 3.250781, 4.110576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.386115, 3.075829, 3.898697>,  <3.211703, 2.970857, 3.771569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.386115, 3.075829, 3.898697>,  <3.676801, 3.250781, 4.110576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.386115, 3.075829, 3.898697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653478, -0.202448, -0.729371,
		0.211777, -0.876192, 0.432942,
		-0.726717, -0.437382, -0.529698,
		3.168100, 2.944614, 3.739787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.978026, 2.691986, 3.729524>,  <3.676801, 3.250781, 4.110576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.978026, 2.691986, 3.729524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.621407, 2.720421, 3.550598>,  <3.407436, 2.737482, 3.443243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.621407, 2.720421, 3.550598>,  <3.978026, 2.691986, 3.729524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.621407, 2.720421, 3.550598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377830, -0.427904, -0.821062,
		-0.249774, -0.901024, 0.354638,
		-0.891548, 0.071087, -0.447314,
		3.353943, 2.741747, 3.416404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.987336, 3.389416, 2.716840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.742027, 3.219624, 2.450394>,  <3.594842, 3.117748, 2.290526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.742027, 3.219624, 2.450394>,  <3.987336, 3.389416, 2.716840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.742027, 3.219624, 2.450394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646497, -0.214761, 0.732065,
		-0.453804, 0.879599, -0.142720,
		-0.613273, -0.424482, -0.666117,
		3.558045, 3.092279, 2.250559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.290621, 3.665052, 2.789410>,  <3.987336, 3.389416, 2.716840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.290621, 3.665052, 2.789410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.331638, 3.291691, 2.651863>,  <3.356249, 3.067674, 2.569335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.331638, 3.291691, 2.651863>,  <3.290621, 3.665052, 2.789410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.331638, 3.291691, 2.651863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499062, -0.347310, 0.793923,
		-0.860478, 0.090199, -0.501440,
		0.102544, -0.933402, -0.343867,
		3.362402, 3.011670, 2.548703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.654966, 3.292107, 2.677375>,  <3.290621, 3.665052, 2.789410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.654966, 3.292107, 2.677375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.947750, 3.037350, 2.774208>,  <3.123420, 2.884495, 2.832308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.947750, 3.037350, 2.774208>,  <2.654966, 3.292107, 2.677375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.947750, 3.037350, 2.774208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530460, -0.309700, 0.789112,
		-0.427608, -0.706011, -0.564535,
		0.731959, -0.636894, 0.242080,
		3.167338, 2.846282, 2.846833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.229827, 2.667197, 2.843315>,  <2.654966, 3.292107, 2.677375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.229827, 2.667197, 2.843315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.597618, 2.701694, 2.996742>,  <2.818292, 2.722393, 3.088799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.597618, 2.701694, 2.996742>,  <2.229827, 2.667197, 2.843315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.597618, 2.701694, 2.996742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361215, -0.199820, 0.910821,
		0.155200, -0.976029, -0.152577,
		0.919477, 0.086246, 0.383569,
		2.873461, 2.727568, 3.111813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.336091, 2.078408, 3.255838>,  <2.229827, 2.667197, 2.843315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.336091, 2.078408, 3.255838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.590729, 2.338387, 3.421883>,  <2.743512, 2.494373, 3.521510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.590729, 2.338387, 3.421883>,  <2.336091, 2.078408, 3.255838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.590729, 2.338387, 3.421883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487993, -0.077317, 0.869416,
		0.597168, -0.756038, 0.267949,
		0.636595, 0.649945, 0.415112,
		2.781707, 2.533370, 3.546416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.460718, 1.803974, 3.963725>,  <2.336091, 2.078408, 3.255838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.460718, 1.803974, 3.963725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.596531, 2.180058, 3.974495>,  <2.678019, 2.405708, 3.980957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.596531, 2.180058, 3.974495>,  <2.460718, 1.803974, 3.963725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.596531, 2.180058, 3.974495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260026, 0.066316, 0.963322,
		0.903938, -0.334080, 0.266995,
		0.339533, 0.940209, 0.026924,
		2.698391, 2.462120, 3.982572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.772506, 1.879074, 4.660239>,  <2.460718, 1.803974, 3.963725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.772506, 1.879074, 4.660239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.695747, 2.259335, 4.562721>,  <2.649692, 2.487491, 4.504210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.695747, 2.259335, 4.562721>,  <2.772506, 1.879074, 4.660239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.695747, 2.259335, 4.562721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208847, 0.203166, 0.956612,
		0.958936, 0.234486, 0.159554,
		-0.191896, 0.950652, -0.243795,
		2.638179, 2.544530, 4.489583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.060697, 2.260373, 5.187199>,  <2.772506, 1.879074, 4.660239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.060697, 2.260373, 5.187199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.765366, 2.482502, 5.034103>,  <2.588167, 2.615779, 4.942246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.765366, 2.482502, 5.034103>,  <3.060697, 2.260373, 5.187199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.765366, 2.482502, 5.034103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503735, -0.076705, 0.860446,
		0.448467, 0.828090, 0.336369,
		-0.738328, 0.555323, -0.382738,
		2.543867, 2.649099, 4.919282>
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
