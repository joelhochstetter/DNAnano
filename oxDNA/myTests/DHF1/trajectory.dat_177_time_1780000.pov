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
	<1.342011, 4.270160, 5.328094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.445477, 4.222885, 5.711578>,  <1.507556, 4.194520, 5.941669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.445477, 4.222885, 5.711578>,  <1.342011, 4.270160, 5.328094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.445477, 4.222885, 5.711578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963351, 0.104566, -0.247026,
		-0.071053, 0.987471, 0.140902,
		0.258664, -0.118186, 0.958710,
		1.523076, 4.187429, 5.999191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.791173, 4.798532, 5.585203>,  <1.342011, 4.270160, 5.328094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.791173, 4.798532, 5.585203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.879536, 4.445419, 5.751045>,  <1.932553, 4.233552, 5.850551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.879536, 4.445419, 5.751045>,  <1.791173, 4.798532, 5.585203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.879536, 4.445419, 5.751045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953008, 0.105022, -0.284157,
		0.207305, 0.457895, 0.864498,
		0.220906, -0.882781, 0.414606,
		1.945807, 4.180585, 5.875427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.391192, 4.674672, 5.182801>,  <1.791173, 4.798532, 5.585203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.391192, 4.674672, 5.182801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.704937, 4.458725, 5.304993>,  <2.893184, 4.329157, 5.378308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.704937, 4.458725, 5.304993>,  <2.391192, 4.674672, 5.182801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.704937, 4.458725, 5.304993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343115, -0.032665, -0.938725,
		0.516766, 0.841116, 0.159615,
		0.784363, -0.539868, 0.305480,
		2.940246, 4.296765, 5.396636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.975943, 5.019071, 4.856600>,  <2.391192, 4.674672, 5.182801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.975943, 5.019071, 4.856600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.062771, 4.632828, 4.913849>,  <3.114867, 4.401082, 4.948198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.062771, 4.632828, 4.913849>,  <2.975943, 5.019071, 4.856600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.062771, 4.632828, 4.913849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487782, -0.019705, -0.872743,
		0.845547, 0.259258, 0.466729,
		0.217069, -0.965607, 0.143123,
		3.127892, 4.343145, 4.956786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.717593, 5.117840, 4.804097>,  <2.975943, 5.019071, 4.856600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.717593, 5.117840, 4.804097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.532444, 4.784241, 4.683968>,  <3.421355, 4.584081, 4.611890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.532444, 4.784241, 4.683968>,  <3.717593, 5.117840, 4.804097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.532444, 4.784241, 4.683968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444702, 0.074603, -0.892566,
		0.766805, -0.546699, 0.336350,
		-0.462872, -0.833999, -0.300324,
		3.393582, 4.534041, 4.593870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.158247, 4.682662, 4.436362>,  <3.717593, 5.117840, 4.804097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.158247, 4.682662, 4.436362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.790310, 4.594070, 4.306847>,  <3.569548, 4.540915, 4.229137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.790310, 4.594070, 4.306847>,  <4.158247, 4.682662, 4.436362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.790310, 4.594070, 4.306847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314633, 0.076454, -0.946130,
		0.234303, -0.972163, -0.000641,
		-0.919841, -0.221480, -0.323788,
		3.514357, 4.527627, 4.209710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.235130, 4.080108, 4.078335>,  <4.158247, 4.682662, 4.436362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.235130, 4.080108, 4.078335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.905735, 4.274857, 3.961838>,  <3.708098, 4.391706, 3.891939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.905735, 4.274857, 3.961838>,  <4.235130, 4.080108, 4.078335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.905735, 4.274857, 3.961838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290897, -0.078382, -0.953538,
		-0.487078, -0.869950, -0.077083,
		-0.823489, 0.486871, -0.291244,
		3.658688, 4.420918, 3.874465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.029158, 3.691277, 3.586248>,  <4.235130, 4.080108, 4.078335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.029158, 3.691277, 3.586248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.814182, 4.020721, 3.513779>,  <3.685197, 4.218389, 3.470297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.814182, 4.020721, 3.513779>,  <4.029158, 3.691277, 3.586248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.814182, 4.020721, 3.513779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124066, -0.135278, -0.983009,
		-0.834127, -0.550784, -0.029479,
		-0.537438, 0.823612, -0.181173,
		3.652951, 4.267805, 3.459427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.184176, 4.338313, 2.128009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.081696, 4.510773, 1.781952>,  <4.020207, 4.614248, 1.574318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.081696, 4.510773, 1.781952>,  <4.184176, 4.338313, 2.128009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.081696, 4.510773, 1.781952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889884, 0.244283, 0.385269,
		0.377448, 0.868583, 0.321087,
		-0.256202, 0.431149, -0.865142,
		4.004835, 4.640117, 1.522409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.215311, 5.076384, 2.195435>,  <4.184176, 4.338313, 2.128009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.215311, 5.076384, 2.195435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.941475, 4.929642, 1.943481>,  <3.777173, 4.841597, 1.792309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.941475, 4.929642, 1.943481>,  <4.215311, 5.076384, 2.195435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.941475, 4.929642, 1.943481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718438, 0.485657, 0.497980,
		0.123221, 0.793445, -0.596039,
		-0.684590, -0.366856, -0.629883,
		3.736098, 4.819585, 1.754516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.340104, 4.774984, 2.864261>,  <4.215311, 5.076384, 2.195435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.340104, 4.774984, 2.864261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.971355, 4.793503, 2.710373>,  <3.750106, 4.804614, 2.618040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.971355, 4.793503, 2.710373>,  <4.340104, 4.774984, 2.864261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.971355, 4.793503, 2.710373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387274, -0.076413, 0.918793,
		0.013140, 0.996001, 0.088373,
		-0.921871, 0.046298, -0.384721,
		3.694794, 4.807392, 2.594957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.913348, 5.330022, 3.145370>,  <4.340104, 4.774984, 2.864261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.913348, 5.330022, 3.145370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.710241, 4.996506, 3.058685>,  <3.588377, 4.796396, 3.006675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.710241, 4.996506, 3.058685>,  <3.913348, 5.330022, 3.145370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.710241, 4.996506, 3.058685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426885, 0.025018, 0.903960,
		-0.748292, 0.551513, -0.368636,
		-0.507768, -0.833791, -0.216712,
		3.557911, 4.746368, 2.993672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.155649, 5.415293, 3.235695>,  <3.913348, 5.330022, 3.145370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.155649, 5.415293, 3.235695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.264332, 5.035599, 3.299103>,  <3.329541, 4.807782, 3.337148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.264332, 5.035599, 3.299103>,  <3.155649, 5.415293, 3.235695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.264332, 5.035599, 3.299103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515041, -0.004281, 0.857155,
		-0.812963, -0.314539, -0.490058,
		0.271707, -0.949235, 0.158520,
		3.345844, 4.750828, 3.346659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.524076, 5.075893, 3.570439>,  <3.155649, 5.415293, 3.235695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.524076, 5.075893, 3.570439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.848551, 4.852814, 3.640808>,  <3.043236, 4.718966, 3.683029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.848551, 4.852814, 3.640808>,  <2.524076, 5.075893, 3.570439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.848551, 4.852814, 3.640808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301113, -0.140455, 0.943188,
		-0.501306, -0.818073, -0.281866,
		0.811186, -0.557699, 0.175922,
		3.091907, 4.685504, 3.693585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.294667, 4.417850, 3.782301>,  <2.524076, 5.075893, 3.570439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.294667, 4.417850, 3.782301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.661818, 4.487289, 3.925056>,  <2.882108, 4.528953, 4.010709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.661818, 4.487289, 3.925056>,  <2.294667, 4.417850, 3.782301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.661818, 4.487289, 3.925056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276030, -0.366876, 0.888375,
		0.285154, -0.913929, -0.288828,
		0.917875, 0.173598, 0.356887,
		2.937180, 4.539369, 4.032123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.706345, 3.890631, 3.985504>,  <2.294667, 4.417850, 3.782301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.706345, 3.890631, 3.985504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.807152, 4.182938, 4.239265>,  <2.867636, 4.358322, 4.391522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.807152, 4.182938, 4.239265>,  <2.706345, 3.890631, 3.985504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.807152, 4.182938, 4.239265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366456, -0.534677, 0.761466,
		0.895655, -0.424383, 0.133047,
		0.252016, 0.730767, 0.634403,
		2.882757, 4.402168, 4.429586>
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
