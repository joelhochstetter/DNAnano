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
	<4.904286, 4.792459, 1.070300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.527084, 4.659870, 1.082094>,  <4.300764, 4.580317, 1.089171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.527084, 4.659870, 1.082094>,  <4.904286, 4.792459, 1.070300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.527084, 4.659870, 1.082094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086828, 0.330612, 0.939764,
		-0.321255, 0.883641, -0.340549,
		-0.943004, -0.331473, 0.029486,
		4.244183, 4.560428, 1.090940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.381294, 5.338587, 1.337104>,  <4.904286, 4.792459, 1.070300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.381294, 5.338587, 1.337104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.276932, 4.958698, 1.406334>,  <4.214314, 4.730765, 1.447872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.276932, 4.958698, 1.406334>,  <4.381294, 5.338587, 1.337104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.276932, 4.958698, 1.406334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157218, 0.218693, 0.963045,
		-0.952476, 0.224054, -0.206372,
		-0.260906, -0.949723, 0.173074,
		4.198660, 4.673781, 1.458256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.622048, 5.087231, 1.605422>,  <4.381294, 5.338587, 1.337104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.622048, 5.087231, 1.605422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.920654, 4.873363, 1.763836>,  <4.099818, 4.745043, 1.858884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.920654, 4.873363, 1.763836>,  <3.622048, 5.087231, 1.605422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.920654, 4.873363, 1.763836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210313, 0.375082, 0.902819,
		-0.631254, -0.757260, 0.167556,
		0.746516, -0.534669, 0.396034,
		4.144609, 4.712963, 1.882646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.369547, 4.682586, 2.147191>,  <3.622048, 5.087231, 1.605422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.369547, 4.682586, 2.147191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.751312, 4.780594, 2.215378>,  <3.980372, 4.839399, 2.256290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.751312, 4.780594, 2.215378>,  <3.369547, 4.682586, 2.147191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.751312, 4.780594, 2.215378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248348, 0.335045, 0.908883,
		0.165581, -0.909786, 0.380622,
		0.954414, 0.245020, 0.170466,
		4.037636, 4.854100, 2.266518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.561513, 4.415095, 2.833876>,  <3.369547, 4.682586, 2.147191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.561513, 4.415095, 2.833876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.839066, 4.693687, 2.760725>,  <4.005597, 4.860843, 2.716834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.839066, 4.693687, 2.760725>,  <3.561513, 4.415095, 2.833876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.839066, 4.693687, 2.760725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069913, 0.317926, 0.945535,
		0.716687, -0.643303, 0.269295,
		0.693882, 0.696480, -0.182878,
		4.047230, 4.902631, 2.705862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.098869, 4.282095, 3.326004>,  <3.561513, 4.415095, 2.833876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.098869, 4.282095, 3.326004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.125961, 4.660923, 3.200484>,  <4.142217, 4.888220, 3.125172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.125961, 4.660923, 3.200484>,  <4.098869, 4.282095, 3.326004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.125961, 4.660923, 3.200484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202836, 0.294883, 0.933757,
		0.976867, -0.126894, -0.172127,
		0.067731, 0.947070, -0.313800,
		4.146281, 4.945044, 3.106344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.622588, 4.623863, 3.783604>,  <4.098869, 4.282095, 3.326004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.622588, 4.623863, 3.783604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.440475, 4.942112, 3.623752>,  <4.331208, 5.133061, 3.527840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.440475, 4.942112, 3.623752>,  <4.622588, 4.623863, 3.783604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.440475, 4.942112, 3.623752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088349, 0.487003, 0.868920,
		0.885954, 0.360296, -0.292015,
		-0.455281, 0.795622, -0.399630,
		4.303891, 5.180799, 3.503863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.024541, 5.259476, 4.009877>,  <4.622588, 4.623863, 3.783604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.024541, 5.259476, 4.009877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.672142, 5.412792, 3.898931>,  <4.460703, 5.504782, 3.832363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.672142, 5.412792, 3.898931>,  <5.024541, 5.259476, 4.009877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.672142, 5.412792, 3.898931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042182, 0.647546, 0.760858,
		0.471237, 0.658614, -0.586654,
		-0.880997, 0.383291, -0.277366,
		4.407843, 5.527780, 3.815721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.416595, 0.532293, 4.861153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.107864, 0.786259, 4.874815>,  <3.922626, 0.938638, 4.883012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.107864, 0.786259, 4.874815>,  <4.416595, 0.532293, 4.861153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.107864, 0.786259, 4.874815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286882, -0.299800, -0.909845,
		-0.567435, -0.712041, 0.413539,
		-0.771827, 0.634915, 0.034155,
		3.876316, 0.976733, 4.885062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.749115, 0.241815, 4.620978>,  <4.416595, 0.532293, 4.861153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.749115, 0.241815, 4.620978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.804901, 0.627365, 4.530209>,  <3.838372, 0.858695, 4.475747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.804901, 0.627365, 4.530209>,  <3.749115, 0.241815, 4.620978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.804901, 0.627365, 4.530209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057105, -0.220954, -0.973611,
		-0.988579, 0.148742, 0.024226,
		0.139464, 0.963875, -0.226925,
		3.846740, 0.916528, 4.462131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.248743, 0.379757, 4.099159>,  <3.749115, 0.241815, 4.620978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.248743, 0.379757, 4.099159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.555687, 0.634800, 4.071980>,  <3.739853, 0.787826, 4.055672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.555687, 0.634800, 4.071980>,  <3.248743, 0.379757, 4.099159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.555687, 0.634800, 4.071980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138659, -0.268464, -0.953258,
		-0.626046, 0.722069, -0.294418,
		0.767359, 0.637607, -0.067949,
		3.785895, 0.826082, 4.051595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.203337, 0.859400, 3.543763>,  <3.248743, 0.379757, 4.099159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.203337, 0.859400, 3.543763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.585182, 0.768940, 3.621296>,  <3.814289, 0.714664, 3.667816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.585182, 0.768940, 3.621296>,  <3.203337, 0.859400, 3.543763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.585182, 0.768940, 3.621296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125881, -0.283466, -0.950685,
		0.269941, 0.931935, -0.242132,
		0.954613, -0.226149, 0.193832,
		3.871566, 0.701095, 3.679446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.671751, 1.228586, 3.131776>,  <3.203337, 0.859400, 3.543763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.671751, 1.228586, 3.131776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.861061, 0.893539, 3.240889>,  <3.974647, 0.692512, 3.306356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.861061, 0.893539, 3.240889>,  <3.671751, 1.228586, 3.131776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.861061, 0.893539, 3.240889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063365, -0.276487, -0.958927,
		0.878632, 0.471122, -0.077779,
		0.473276, -0.837615, 0.272783,
		4.003044, 0.642255, 3.322723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.273873, 1.156873, 2.627172>,  <3.671751, 1.228586, 3.131776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.273873, 1.156873, 2.627172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.246590, 0.788887, 2.781580>,  <4.230220, 0.568095, 2.874225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.246590, 0.788887, 2.781580>,  <4.273873, 1.156873, 2.627172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.246590, 0.788887, 2.781580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277126, -0.389164, -0.878494,
		0.958410, 0.047055, 0.281491,
		-0.068208, -0.919966, 0.386019,
		4.226127, 0.512897, 2.897386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.909754, 0.851455, 2.557667>,  <4.273873, 1.156873, 2.627172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.909754, 0.851455, 2.557667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.628296, 0.568054, 2.579243>,  <4.459421, 0.398014, 2.592188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.628296, 0.568054, 2.579243>,  <4.909754, 0.851455, 2.557667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.628296, 0.568054, 2.579243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341493, -0.403767, -0.848737,
		0.623110, -0.578791, 0.526057,
		-0.703646, -0.708501, 0.053938,
		4.417202, 0.355504, 2.595424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.242259, 0.354540, 2.311032>,  <4.909754, 0.851455, 2.557667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.242259, 0.354540, 2.311032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.869225, 0.210220, 2.306850>,  <4.645404, 0.123629, 2.304341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.869225, 0.210220, 2.306850>,  <5.242259, 0.354540, 2.311032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.869225, 0.210220, 2.306850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209496, -0.517460, -0.829667,
		0.293933, -0.775925, 0.558161,
		-0.932585, -0.360799, -0.010454,
		4.589449, 0.101981, 2.303714>
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
