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
	<0.865898, 3.090714, 1.203400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.134371, 2.926762, 0.956333>,  <1.295455, 2.828390, 0.808093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.134371, 2.926762, 0.956333>,  <0.865898, 3.090714, 1.203400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.134371, 2.926762, 0.956333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719172, 0.562071, 0.408495,
		0.179738, -0.718383, 0.672027,
		0.671182, -0.409881, -0.617666,
		1.335725, 2.803797, 0.771033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.430494, 2.717823, 1.630235>,  <0.865898, 3.090714, 1.203400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.430494, 2.717823, 1.630235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.559649, 2.819706, 1.265627>,  <1.637141, 2.880836, 1.046862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.559649, 2.819706, 1.265627>,  <1.430494, 2.717823, 1.630235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.559649, 2.819706, 1.265627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703169, 0.580077, 0.411174,
		0.633481, -0.773715, 0.008196,
		0.322886, 0.254708, -0.911520,
		1.656514, 2.896118, 0.992171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.154835, 2.663447, 1.753908>,  <1.430494, 2.717823, 1.630235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.154835, 2.663447, 1.753908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.049208, 2.905476, 1.453466>,  <1.985831, 3.050693, 1.273202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.049208, 2.905476, 1.453466>,  <2.154835, 2.663447, 1.753908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.049208, 2.905476, 1.453466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696339, 0.658437, 0.285609,
		0.667368, -0.447603, -0.595207,
		-0.264067, 0.605072, -0.751103,
		1.969988, 3.086997, 1.228135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.767502, 2.706488, 1.358484>,  <2.154835, 2.663447, 1.753908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.767502, 2.706488, 1.358484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.513079, 3.014965, 1.368994>,  <2.360425, 3.200052, 1.375300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.513079, 3.014965, 1.368994>,  <2.767502, 2.706488, 1.358484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.513079, 3.014965, 1.368994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751925, 0.611799, 0.245582,
		0.173316, 0.175962, -0.969019,
		-0.636058, 0.771194, 0.026276,
		2.322261, 3.246323, 1.376876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.116921, 3.183849, 0.985783>,  <2.767502, 2.706488, 1.358484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.116921, 3.183849, 0.985783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.845194, 3.390369, 1.194382>,  <2.682158, 3.514282, 1.319541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.845194, 3.390369, 1.194382>,  <3.116921, 3.183849, 0.985783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.845194, 3.390369, 1.194382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702192, 0.663780, 0.257531,
		-0.213196, 0.541137, -0.813461,
		-0.679318, 0.516301, 0.521498,
		2.641398, 3.545260, 1.350831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.241036, 3.974618, 0.835654>,  <3.116921, 3.183849, 0.985783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.241036, 3.974618, 0.835654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.033607, 3.944149, 1.176308>,  <2.909150, 3.925868, 1.380700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.033607, 3.944149, 1.176308>,  <3.241036, 3.974618, 0.835654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.033607, 3.944149, 1.176308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632276, 0.636345, 0.441918,
		-0.575596, 0.767634, -0.281828,
		-0.518571, -0.076173, 0.851635,
		2.878036, 3.921297, 1.431798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.203838, 4.728066, 1.047294>,  <3.241036, 3.974618, 0.835654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.203838, 4.728066, 1.047294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.150188, 4.473682, 1.351286>,  <3.117999, 4.321053, 1.533681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.150188, 4.473682, 1.351286>,  <3.203838, 4.728066, 1.047294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.150188, 4.473682, 1.351286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685275, 0.494457, 0.534707,
		-0.715828, 0.592511, 0.369488,
		-0.134124, -0.635958, 0.759979,
		3.109951, 4.282895, 1.579280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.139173, 5.111777, 1.628610>,  <3.203838, 4.728066, 1.047294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.139173, 5.111777, 1.628610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.264963, 4.750916, 1.746744>,  <3.340437, 4.534399, 1.817625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.264963, 4.750916, 1.746744>,  <3.139173, 5.111777, 1.628610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.264963, 4.750916, 1.746744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795929, 0.420137, 0.435869,
		-0.517302, 0.097995, 0.850174,
		0.314476, -0.902154, 0.295335,
		3.359306, 4.480269, 1.835345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.271644, 5.144154, 1.720666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.324440, 4.933426, 2.056532>,  <4.356118, 4.806989, 2.258052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.324440, 4.933426, 2.056532>,  <4.271644, 5.144154, 1.720666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.324440, 4.933426, 2.056532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809570, -0.546090, -0.215365,
		0.571992, -0.651343, -0.498576,
		0.131991, -0.526819, 0.839667,
		4.364037, 4.775380, 2.308432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.371294, 4.370070, 1.622994>,  <4.271644, 5.144154, 1.720666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.371294, 4.370070, 1.622994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.182659, 4.501312, 1.950397>,  <4.069478, 4.580057, 2.146838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.182659, 4.501312, 1.950397>,  <4.371294, 4.370070, 1.622994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.182659, 4.501312, 1.950397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832939, -0.470480, -0.291308,
		0.289512, -0.819143, 0.495164,
		-0.471588, 0.328104, 0.818507,
		4.041183, 4.599743, 2.195948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.016470, 3.824194, 1.905673>,  <4.371294, 4.370070, 1.622994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.016470, 3.824194, 1.905673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.811523, 4.130165, 2.061809>,  <3.688555, 4.313748, 2.155490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.811523, 4.130165, 2.061809>,  <4.016470, 3.824194, 1.905673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.811523, 4.130165, 2.061809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858427, -0.468982, -0.207746,
		0.024151, -0.441521, 0.896926,
		-0.512367, 0.764929, 0.390340,
		3.657814, 4.359643, 2.178910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.670164, 3.600110, 2.570324>,  <4.016470, 3.824194, 1.905673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.670164, 3.600110, 2.570324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.503304, 3.902512, 2.368555>,  <3.403187, 4.083952, 2.247494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.503304, 3.902512, 2.368555>,  <3.670164, 3.600110, 2.570324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.503304, 3.902512, 2.368555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831896, -0.541120, -0.123036,
		-0.365969, 0.368303, 0.854646,
		-0.417152, 0.756004, -0.504423,
		3.378158, 4.129313, 2.217228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.969680, 3.670240, 2.774478>,  <3.670164, 3.600110, 2.570324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.969680, 3.670240, 2.774478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.986412, 3.849792, 2.417434>,  <2.996452, 3.957524, 2.203207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.986412, 3.849792, 2.417434>,  <2.969680, 3.670240, 2.774478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.986412, 3.849792, 2.417434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880734, -0.405269, -0.245079,
		-0.471759, 0.796406, 0.378393,
		0.041831, 0.448882, -0.892612,
		2.998961, 3.984457, 2.149650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.264680, 4.011020, 2.613958>,  <2.969680, 3.670240, 2.774478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.264680, 4.011020, 2.613958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.447121, 3.985443, 2.258907>,  <2.556585, 3.970097, 2.045877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.447121, 3.985443, 2.258907>,  <2.264680, 4.011020, 2.613958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.447121, 3.985443, 2.258907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851192, -0.322412, -0.414154,
		-0.259699, 0.944437, -0.201481,
		0.456102, -0.063943, -0.887627,
		2.583951, 3.966260, 1.992619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.770979, 4.311767, 2.037515>,  <2.264680, 4.011020, 2.613958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.770979, 4.311767, 2.037515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.020180, 4.076515, 1.831224>,  <2.169700, 3.935364, 1.707449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.020180, 4.076515, 1.831224>,  <1.770979, 4.311767, 2.037515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.020180, 4.076515, 1.831224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780652, -0.425741, -0.457522,
		0.049516, 0.687641, -0.724361,
		0.623001, -0.588128, -0.515727,
		2.207080, 3.900077, 1.676506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.492879, 4.256474, 1.435367>,  <1.770979, 4.311767, 2.037515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.492879, 4.256474, 1.435367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.754013, 3.953484, 1.432980>,  <1.910693, 3.771689, 1.431547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.754013, 3.953484, 1.432980>,  <1.492879, 4.256474, 1.435367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.754013, 3.953484, 1.432980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720798, -0.618761, -0.312387,
		0.232933, 0.208239, -0.949936,
		0.652834, -0.757477, -0.005969,
		1.949863, 3.726240, 1.431189>
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
