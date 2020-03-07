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
	<-0.095226, 1.487980, 5.584066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.294434, 1.409577, 5.539141>,  <0.528229, 1.362536, 5.512186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.294434, 1.409577, 5.539141>,  <-0.095226, 1.487980, 5.584066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.294434, 1.409577, 5.539141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096283, 0.809996, -0.578477,
		0.204358, 0.552709, 0.807930,
		0.974149, -0.196007, -0.112313,
		0.586678, 1.350775, 5.505447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.210789, 2.072657, 5.715701>,  <-0.095226, 1.487980, 5.584066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.210789, 2.072657, 5.715701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.469723, 1.865417, 5.492083>,  <0.625083, 1.741074, 5.357912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.469723, 1.865417, 5.492083>,  <0.210789, 2.072657, 5.715701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.469723, 1.865417, 5.492083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194866, 0.821577, -0.535759,
		0.736875, 0.237877, 0.632796,
		0.647335, -0.518098, -0.559045,
		0.663923, 1.709988, 5.324369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.912289, 2.336821, 5.878572>,  <0.210789, 2.072657, 5.715701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.912289, 2.336821, 5.878572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.884548, 2.167174, 5.517392>,  <0.867904, 2.065386, 5.300684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.884548, 2.167174, 5.517392>,  <0.912289, 2.336821, 5.878572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.884548, 2.167174, 5.517392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255635, 0.867350, -0.427031,
		0.964283, -0.260441, 0.048267,
		-0.069352, -0.424117, -0.902948,
		0.863743, 2.039939, 5.246508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.610968, 2.364042, 5.433701>,  <0.912289, 2.336821, 5.878572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.610968, 2.364042, 5.433701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.289864, 2.360823, 5.195202>,  <1.097201, 2.358891, 5.052103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.289864, 2.360823, 5.195202>,  <1.610968, 2.364042, 5.433701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.289864, 2.360823, 5.195202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409032, 0.720151, -0.560424,
		0.433897, -0.693770, -0.574818,
		-0.802762, -0.008048, -0.596246,
		1.049035, 2.358408, 5.016328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.826602, 2.335305, 4.814019>,  <1.610968, 2.364042, 5.433701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.826602, 2.335305, 4.814019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.461231, 2.482249, 4.743936>,  <1.242009, 2.570415, 4.701887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.461231, 2.482249, 4.743936>,  <1.826602, 2.335305, 4.814019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.461231, 2.482249, 4.743936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406892, 0.814243, -0.414061,
		-0.009449, -0.449505, -0.893228,
		-0.913427, 0.367359, -0.175206,
		1.187203, 2.592457, 4.691374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.778330, 2.494672, 4.135209>,  <1.826602, 2.335305, 4.814019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.778330, 2.494672, 4.135209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.490528, 2.712441, 4.307680>,  <1.317847, 2.843103, 4.411162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.490528, 2.712441, 4.307680>,  <1.778330, 2.494672, 4.135209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.490528, 2.712441, 4.307680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348366, 0.820029, -0.454086,
		-0.600794, -0.176509, -0.779674,
		-0.719505, 0.544424, 0.431178,
		1.274676, 2.875769, 4.437033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.412446, 2.640042, 3.593570>,  <1.778330, 2.494672, 4.135209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.412446, 2.640042, 3.593570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.253498, 2.903006, 3.849667>,  <1.158129, 3.060784, 4.003325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.253498, 2.903006, 3.849667>,  <1.412446, 2.640042, 3.593570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.253498, 2.903006, 3.849667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388196, 0.752615, -0.531859,
		-0.831505, 0.037194, -0.554271,
		-0.397371, 0.657409, 0.640242,
		1.134287, 3.100228, 4.041739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.880437, 3.046281, 3.249421>,  <1.412446, 2.640042, 3.593570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.880437, 3.046281, 3.249421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.047848, 3.257106, 3.545270>,  <1.148294, 3.383601, 3.722779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.047848, 3.257106, 3.545270>,  <0.880437, 3.046281, 3.249421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.047848, 3.257106, 3.545270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278858, 0.700463, -0.656955,
		-0.864334, 0.481203, 0.146187,
		0.418527, 0.527063, 0.739621,
		1.173406, 3.415225, 3.767156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.913968, 3.951655, 3.038698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.842079, 4.286328, 3.245643>,  <1.798946, 4.487132, 3.369809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.842079, 4.286328, 3.245643>,  <1.913968, 3.951655, 3.038698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.842079, 4.286328, 3.245643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379789, -0.544163, 0.748095,
		0.907447, -0.062039, 0.415561,
		-0.179722, 0.836682, 0.517361,
		1.788163, 4.537333, 3.400851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.394208, 3.990624, 3.695212>,  <1.913968, 3.951655, 3.038698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.394208, 3.990624, 3.695212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.029831, 4.153449, 3.722003>,  <1.811205, 4.251143, 3.738077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.029831, 4.153449, 3.722003>,  <2.394208, 3.990624, 3.695212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.029831, 4.153449, 3.722003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278990, -0.727480, 0.626848,
		0.303889, 0.552336, 0.776258,
		-0.910943, 0.407060, 0.066977,
		1.756548, 4.275567, 3.742096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.074369, 4.017839, 4.450403>,  <2.394208, 3.990624, 3.695212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.074369, 4.017839, 4.450403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.763626, 4.034091, 4.199057>,  <1.577180, 4.043842, 4.048249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.763626, 4.034091, 4.199057>,  <2.074369, 4.017839, 4.450403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.763626, 4.034091, 4.199057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392442, -0.811639, 0.432703,
		-0.492425, 0.582745, 0.646472,
		-0.776857, 0.040628, -0.628365,
		1.530569, 4.046279, 4.010547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.497551, 4.106500, 4.856342>,  <2.074369, 4.017839, 4.450403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.497551, 4.106500, 4.856342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.398705, 3.891492, 4.533850>,  <1.339396, 3.762488, 4.340354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.398705, 3.891492, 4.533850>,  <1.497551, 4.106500, 4.856342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.398705, 3.891492, 4.533850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397081, -0.702790, 0.590264,
		-0.883889, 0.466003, -0.039768,
		-0.247117, -0.537519, -0.806230,
		1.324570, 3.730237, 4.291981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.742861, 3.901693, 4.979731>,  <1.497551, 4.106500, 4.856342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.742861, 3.901693, 4.979731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.864532, 3.667776, 4.678934>,  <0.937535, 3.527425, 4.498456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.864532, 3.667776, 4.678934>,  <0.742861, 3.901693, 4.979731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.864532, 3.667776, 4.678934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474941, -0.777388, 0.412431,
		-0.825777, 0.231701, -0.514205,
		0.304176, -0.584793, -0.751993,
		0.955786, 3.492337, 4.453336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.162885, 3.503346, 4.835509>,  <0.742861, 3.901693, 4.979731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.162885, 3.503346, 4.835509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.477997, 3.311180, 4.681314>,  <0.667064, 3.195880, 4.588796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.477997, 3.311180, 4.681314>,  <0.162885, 3.503346, 4.835509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.477997, 3.311180, 4.681314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408719, -0.875916, 0.256358,
		-0.460814, -0.044397, -0.886386,
		0.787781, -0.480416, -0.385489,
		0.714331, 3.167055, 4.565667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.011834, 2.935305, 4.415669>,  <0.162885, 3.503346, 4.835509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.011834, 2.935305, 4.415669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.359673, 2.824684, 4.514391>,  <0.582576, 2.758312, 4.573624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.359673, 2.824684, 4.514391>,  <-0.011834, 2.935305, 4.415669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.359673, 2.824684, 4.514391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343975, -0.891142, 0.295883,
		0.138111, -0.359700, -0.922790,
		0.928766, -0.276552, 0.246804,
		0.638302, 2.741719, 4.588432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.047852, 2.303649, 4.172369>,  <-0.011834, 2.935305, 4.415669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.047852, 2.303649, 4.172369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.324814, 2.320647, 4.460471>,  <0.490991, 2.330845, 4.633333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.324814, 2.320647, 4.460471>,  <0.047852, 2.303649, 4.172369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.324814, 2.320647, 4.460471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255350, -0.919223, 0.299709,
		0.674813, -0.391437, -0.625623,
		0.692404, 0.042495, 0.720257,
		0.532535, 2.333395, 4.676548>
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
