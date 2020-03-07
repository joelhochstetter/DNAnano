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
	<1.216502, -0.365092, 3.939066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.990861, -0.388237, 3.609596>,  <0.855476, -0.402124, 3.411914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.990861, -0.388237, 3.609596>,  <1.216502, -0.365092, 3.939066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.990861, -0.388237, 3.609596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802377, 0.197026, -0.563357,
		0.194855, -0.978692, -0.064757,
		-0.564112, -0.057814, -0.823672,
		0.821630, -0.405596, 3.362494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.554997, -0.756945, 3.349521>,  <1.216502, -0.365092, 3.939066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.554997, -0.756945, 3.349521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.295950, -0.501244, 3.183655>,  <1.140522, -0.347823, 3.084135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.295950, -0.501244, 3.183655>,  <1.554997, -0.756945, 3.349521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.295950, -0.501244, 3.183655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702121, 0.289238, -0.650667,
		-0.296004, -0.712528, -0.636149,
		-0.647617, 0.639253, -0.414665,
		1.101665, -0.309468, 3.059255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.563137, -0.790909, 2.647029>,  <1.554997, -0.756945, 3.349521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.563137, -0.790909, 2.647029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.424065, -0.420349, 2.704857>,  <1.340621, -0.198013, 2.739554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.424065, -0.420349, 2.704857>,  <1.563137, -0.790909, 2.647029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.424065, -0.420349, 2.704857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682667, 0.355811, -0.638252,
		-0.642716, -0.123215, -0.756131,
		-0.347681, 0.926400, 0.144571,
		1.319760, -0.142429, 2.748228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.385476, -0.460954, 2.005309>,  <1.563137, -0.790909, 2.647029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.385476, -0.460954, 2.005309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.472426, -0.174309, 2.270401>,  <1.524597, -0.002321, 2.429456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.472426, -0.174309, 2.270401>,  <1.385476, -0.460954, 2.005309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.472426, -0.174309, 2.270401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623697, 0.420304, -0.659049,
		-0.750833, 0.556605, -0.355586,
		0.217375, 0.716614, 0.662731,
		1.537639, 0.040675, 2.469220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.388100, 0.126338, 1.631970>,  <1.385476, -0.460954, 2.005309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.388100, 0.126338, 1.631970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.583441, 0.216095, 1.969292>,  <1.700645, 0.269949, 2.171685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.583441, 0.216095, 1.969292>,  <1.388100, 0.126338, 1.631970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.583441, 0.216095, 1.969292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657916, 0.540187, -0.524732,
		-0.573287, 0.811077, 0.116170,
		0.488352, 0.224393, 0.843303,
		1.729946, 0.283413, 2.222283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.390305, 0.849230, 1.650982>,  <1.388100, 0.126338, 1.631970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.390305, 0.849230, 1.650982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.720141, 0.730865, 1.843849>,  <1.918043, 0.659847, 1.959569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.720141, 0.730865, 1.843849>,  <1.390305, 0.849230, 1.650982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.720141, 0.730865, 1.843849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539151, 0.669211, -0.511344,
		-0.171359, 0.681611, 0.711366,
		0.824592, -0.295910, 0.482167,
		1.967519, 0.642092, 1.988499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.806944, 1.329702, 1.533594>,  <1.390305, 0.849230, 1.650982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.806944, 1.329702, 1.533594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.069187, 1.089432, 1.716621>,  <2.226533, 0.945270, 1.826438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.069187, 1.089432, 1.716621>,  <1.806944, 1.329702, 1.533594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.069187, 1.089432, 1.716621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746062, 0.608769, -0.269799,
		-0.116492, 0.518257, 0.847254,
		0.655607, -0.600675, 0.457569,
		2.265869, 0.909229, 1.853892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.159351, 1.791390, 1.832753>,  <1.806944, 1.329702, 1.533594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.159351, 1.791390, 1.832753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.403202, 1.475296, 1.807823>,  <2.549512, 1.285640, 1.792865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.403202, 1.475296, 1.807823>,  <2.159351, 1.791390, 1.832753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.403202, 1.475296, 1.807823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693413, 0.569725, -0.441126,
		0.384100, 0.225705, 0.895279,
		0.609627, -0.790235, -0.062324,
		2.586090, 1.238226, 1.789126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.654918, 1.519997, 0.256890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.663076, 1.562080, 0.654587>,  <3.667972, 1.587330, 0.893205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.663076, 1.562080, 0.654587>,  <3.654918, 1.519997, 0.256890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.663076, 1.562080, 0.654587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685569, -0.722360, 0.090502,
		0.727722, -0.683467, 0.057395,
		0.020395, 0.105208, 0.994241,
		3.669195, 1.593643, 0.952859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.109208, 1.051504, 0.528419>,  <3.654918, 1.519997, 0.256890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.109208, 1.051504, 0.528419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.219746, 1.207794, 0.879639>,  <3.286068, 1.301568, 1.090370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.219746, 1.207794, 0.879639>,  <3.109208, 1.051504, 0.528419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.219746, 1.207794, 0.879639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669753, -0.576936, 0.467521,
		0.689250, -0.717271, 0.102257,
		0.276343, 0.390725, 0.878048,
		3.302649, 1.325012, 1.143053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.066574, 0.465204, 1.001628>,  <3.109208, 1.051504, 0.528419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.066574, 0.465204, 1.001628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.108757, 0.783592, 1.240059>,  <3.134067, 0.974625, 1.383117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.108757, 0.783592, 1.240059>,  <3.066574, 0.465204, 1.001628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.108757, 0.783592, 1.240059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361087, -0.527856, 0.768755,
		0.926550, -0.296308, 0.231748,
		0.105459, 0.795971, 0.596078,
		3.140395, 1.022384, 1.418882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.405116, 0.219142, 1.632139>,  <3.066574, 0.465204, 1.001628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.405116, 0.219142, 1.632139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.159313, 0.523903, 1.714005>,  <3.011832, 0.706760, 1.763124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.159313, 0.523903, 1.714005>,  <3.405116, 0.219142, 1.632139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.159313, 0.523903, 1.714005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521142, -0.586798, 0.619741,
		0.592278, 0.274176, 0.757651,
		-0.614506, 0.761903, 0.204663,
		2.974962, 0.752474, 1.775403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.160059, 0.043016, 2.234918>,  <3.405116, 0.219142, 1.632139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.160059, 0.043016, 2.234918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.892870, 0.327728, 2.148033>,  <2.732557, 0.498556, 2.095902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.892870, 0.327728, 2.148033>,  <3.160059, 0.043016, 2.234918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.892870, 0.327728, 2.148033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616750, -0.366142, 0.696822,
		0.416453, 0.599423, 0.683563,
		-0.667972, 0.711781, -0.217213,
		2.692478, 0.541263, 2.082869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.841340, 0.253506, 2.799938>,  <3.160059, 0.043016, 2.234918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.841340, 0.253506, 2.799938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.563503, 0.353554, 2.530128>,  <2.396801, 0.413582, 2.368243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.563503, 0.353554, 2.530128>,  <2.841340, 0.253506, 2.799938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.563503, 0.353554, 2.530128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718780, -0.202228, 0.665176,
		0.029965, 0.946860, 0.320246,
		-0.694591, 0.250119, -0.674525,
		2.355126, 0.428589, 2.327771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.459583, 0.672007, 3.220524>,  <2.841340, 0.253506, 2.799938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.459583, 0.672007, 3.220524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.219173, 0.566162, 2.918861>,  <2.074928, 0.502655, 2.737864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.219173, 0.566162, 2.918861>,  <2.459583, 0.672007, 3.220524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.219173, 0.566162, 2.918861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684298, -0.317142, 0.656625,
		-0.412925, 0.910715, 0.009537,
		-0.601023, -0.264611, -0.754157,
		2.038867, 0.486779, 2.692614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.849421, 1.004388, 3.324036>,  <2.459583, 0.672007, 3.220524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.849421, 1.004388, 3.324036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.764324, 0.711327, 3.065437>,  <1.713266, 0.535489, 2.910278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.764324, 0.711327, 3.065437>,  <1.849421, 1.004388, 3.324036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.764324, 0.711327, 3.065437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621257, -0.409262, 0.668240,
		-0.754176, 0.543803, -0.368100,
		-0.212742, -0.732655, -0.646497,
		1.700502, 0.491530, 2.871488>
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
