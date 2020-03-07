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
	<1.948077, 3.952992, 1.135241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.769184, 3.747927, 1.428406>,  <1.661848, 3.624887, 1.604304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.769184, 3.747927, 1.428406>,  <1.948077, 3.952992, 1.135241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.769184, 3.747927, 1.428406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267025, 0.705527, 0.656452,
		-0.853628, 0.489292, -0.178641,
		-0.447232, -0.512664, 0.732911,
		1.635014, 3.594127, 1.648279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.545546, 4.366447, 1.635119>,  <1.948077, 3.952992, 1.135241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.545546, 4.366447, 1.635119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.690922, 4.027803, 1.790638>,  <1.778147, 3.824617, 1.883950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.690922, 4.027803, 1.790638>,  <1.545546, 4.366447, 1.635119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.690922, 4.027803, 1.790638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547747, 0.531769, 0.645906,
		-0.753581, -0.021785, 0.656994,
		0.363440, -0.846609, 0.388798,
		1.799954, 3.773821, 1.907278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.606085, 4.442739, 2.378827>,  <1.545546, 4.366447, 1.635119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.606085, 4.442739, 2.378827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.845116, 4.128359, 2.315351>,  <1.988534, 3.939730, 2.277264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.845116, 4.128359, 2.315351>,  <1.606085, 4.442739, 2.378827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.845116, 4.128359, 2.315351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564855, 0.272181, 0.779010,
		-0.569071, -0.555156, 0.606597,
		0.597576, -0.785951, -0.158692,
		2.024389, 3.892573, 2.267743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.720291, 4.028220, 2.992495>,  <1.606085, 4.442739, 2.378827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.720291, 4.028220, 2.992495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.044498, 4.035582, 2.758326>,  <2.239023, 4.039999, 2.617824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.044498, 4.035582, 2.758326>,  <1.720291, 4.028220, 2.992495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.044498, 4.035582, 2.758326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469874, 0.576296, 0.668657,
		0.349684, -0.817034, 0.458451,
		0.810518, 0.018404, -0.585424,
		2.287654, 4.041103, 2.582698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.314976, 3.913355, 3.391679>,  <1.720291, 4.028220, 2.992495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.314976, 3.913355, 3.391679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.457985, 4.077765, 3.056242>,  <2.543790, 4.176411, 2.854980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.457985, 4.077765, 3.056242>,  <2.314976, 3.913355, 3.391679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.457985, 4.077765, 3.056242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555874, 0.627899, 0.544746,
		0.750455, -0.660910, -0.003990,
		0.357523, 0.411025, -0.838592,
		2.565242, 4.201072, 2.804664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.039738, 4.028411, 3.479617>,  <2.314976, 3.913355, 3.391679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.039738, 4.028411, 3.479617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.966499, 4.286097, 3.182574>,  <2.922556, 4.440708, 3.004349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.966499, 4.286097, 3.182574>,  <3.039738, 4.028411, 3.479617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.966499, 4.286097, 3.182574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329507, 0.751897, 0.571030,
		0.926229, -0.140140, -0.349943,
		-0.183097, 0.644214, -0.742606,
		2.911570, 4.479361, 2.959792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.606523, 4.403772, 3.456806>,  <3.039738, 4.028411, 3.479617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.606523, 4.403772, 3.456806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.368183, 4.646128, 3.245955>,  <3.225179, 4.791541, 3.119445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.368183, 4.646128, 3.245955>,  <3.606523, 4.403772, 3.456806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.368183, 4.646128, 3.245955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273863, 0.770321, 0.575851,
		0.754958, 0.198760, -0.624926,
		-0.595850, 0.605888, -0.527127,
		3.189428, 4.827894, 3.087817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.065412, 4.804898, 3.104074>,  <3.606523, 4.403772, 3.456806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.065412, 4.804898, 3.104074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.728706, 5.016836, 3.145449>,  <3.526683, 5.143999, 3.170274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.728706, 5.016836, 3.145449>,  <4.065412, 4.804898, 3.104074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.728706, 5.016836, 3.145449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512399, 0.723841, 0.462062,
		0.169950, 0.441948, -0.880795,
		-0.841763, 0.529845, 0.103437,
		3.476177, 5.175790, 3.176480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.655526, 0.865817, 4.057107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.350174, 1.122316, 4.025997>,  <3.166962, 1.276216, 4.007331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.350174, 1.122316, 4.025997>,  <3.655526, 0.865817, 4.057107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.350174, 1.122316, 4.025997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407109, -0.571103, -0.712814,
		-0.501507, -0.512487, 0.697028,
		-0.763383, 0.641248, -0.077774,
		3.121160, 1.314691, 4.002665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.948083, 0.577429, 4.246963>,  <3.655526, 0.865817, 4.057107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.948083, 0.577429, 4.246963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.016838, 0.852650, 3.964959>,  <3.058091, 1.017782, 3.795756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.016838, 0.852650, 3.964959>,  <2.948083, 0.577429, 4.246963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.016838, 0.852650, 3.964959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305132, -0.643280, -0.702201,
		-0.936669, 0.335820, 0.099375,
		0.171887, 0.688052, -0.705010,
		3.068404, 1.059065, 3.753456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.301959, 0.417055, 3.849804>,  <2.948083, 0.577429, 4.246963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.301959, 0.417055, 3.849804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.654037, 0.523090, 3.692333>,  <2.865285, 0.586712, 3.597851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.654037, 0.523090, 3.692333>,  <2.301959, 0.417055, 3.849804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.654037, 0.523090, 3.692333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171944, -0.595018, -0.785105,
		-0.442367, 0.758737, -0.478153,
		0.880197, 0.265088, -0.393676,
		2.918097, 0.602617, 3.574230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.294183, 0.807702, 3.148992>,  <2.301959, 0.417055, 3.849804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.294183, 0.807702, 3.148992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.642227, 0.610677, 3.155777>,  <2.851054, 0.492462, 3.159848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.642227, 0.610677, 3.155777>,  <2.294183, 0.807702, 3.148992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.642227, 0.610677, 3.155777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314669, -0.581692, -0.750078,
		0.379327, 0.647315, -0.661131,
		0.870112, -0.492563, 0.016962,
		2.903261, 0.462908, 3.160866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.385372, 0.605923, 2.424572>,  <2.294183, 0.807702, 3.148992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.385372, 0.605923, 2.424572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.632759, 0.369253, 2.631422>,  <2.781191, 0.227251, 2.755532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.632759, 0.369253, 2.631422>,  <2.385372, 0.605923, 2.424572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.632759, 0.369253, 2.631422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064568, -0.694118, -0.716959,
		0.783153, 0.410026, -0.467493,
		0.618468, -0.591674, 0.517126,
		2.818299, 0.191751, 2.786560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.815134, 0.285160, 1.967225>,  <2.385372, 0.605923, 2.424572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.815134, 0.285160, 1.967225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.798599, 0.046202, 2.287578>,  <2.788679, -0.097173, 2.479789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.798599, 0.046202, 2.287578>,  <2.815134, 0.285160, 1.967225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.798599, 0.046202, 2.287578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197707, -0.780826, -0.592640,
		0.979389, -0.182837, -0.085833,
		-0.041336, -0.597395, 0.800881,
		2.786198, -0.133017, 2.527842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.138324, -0.287531, 1.722554>,  <2.815134, 0.285160, 1.967225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.138324, -0.287531, 1.722554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.937447, -0.434690, 2.035592>,  <2.816920, -0.522985, 2.223415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.937447, -0.434690, 2.035592>,  <3.138324, -0.287531, 1.722554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.937447, -0.434690, 2.035592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143755, -0.856881, -0.495065,
		0.852724, -0.361120, 0.377432,
		-0.502192, -0.367896, 0.782596,
		2.786789, -0.545058, 2.270370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.150921, -1.038534, 1.626797>,  <3.138324, -0.287531, 1.722554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.150921, -1.038534, 1.626797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.883545, -0.994825, 1.921075>,  <2.723119, -0.968600, 2.097642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.883545, -0.994825, 1.921075>,  <3.150921, -1.038534, 1.626797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.883545, -0.994825, 1.921075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282599, -0.952281, -0.115322,
		0.687988, -0.284993, 0.667422,
		-0.668440, 0.109272, 0.735696,
		2.683013, -0.962044, 2.141784>
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
