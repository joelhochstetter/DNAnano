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
	<0.788073, 1.337085, -0.510386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.901810, 1.286316, -0.130272>,  <0.970052, 1.255854, 0.097796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.901810, 1.286316, -0.130272>,  <0.788073, 1.337085, -0.510386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.901810, 1.286316, -0.130272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489633, 0.871408, -0.030118,
		-0.824263, 0.473854, 0.309924,
		0.284342, -0.126924, 0.950284,
		0.987112, 1.248239, 0.154813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.619622, 1.955839, -0.072044>,  <0.788073, 1.337085, -0.510386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.619622, 1.955839, -0.072044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.945480, 1.749817, 0.034592>,  <1.140996, 1.626204, 0.098573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.945480, 1.749817, 0.034592>,  <0.619622, 1.955839, -0.072044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.945480, 1.749817, 0.034592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525505, 0.850012, 0.036390,
		-0.245347, 0.110449, 0.963123,
		0.814647, -0.515054, 0.266590,
		1.189874, 1.595301, 0.114569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.932788, 2.149540, 0.615867>,  <0.619622, 1.955839, -0.072044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.932788, 2.149540, 0.615867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.242050, 2.009315, 0.404457>,  <1.427607, 1.925181, 0.277611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.242050, 2.009315, 0.404457>,  <0.932788, 2.149540, 0.615867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.242050, 2.009315, 0.404457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538600, 0.802948, 0.255314,
		0.334875, -0.482060, 0.809615,
		0.773155, -0.350561, -0.528524,
		1.473997, 1.904147, 0.245900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.545504, 2.388776, 0.987664>,  <0.932788, 2.149540, 0.615867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.545504, 2.388776, 0.987664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.679428, 2.350395, 0.612709>,  <1.759783, 2.327367, 0.387736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.679428, 2.350395, 0.612709>,  <1.545504, 2.388776, 0.987664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.679428, 2.350395, 0.612709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502131, 0.859956, 0.091324,
		0.797349, -0.501268, 0.336103,
		0.334811, -0.095951, -0.937387,
		1.779871, 2.321610, 0.331493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.233305, 2.229055, 1.001801>,  <1.545504, 2.388776, 0.987664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.233305, 2.229055, 1.001801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.136040, 2.432243, 0.671265>,  <2.077681, 2.554156, 0.472943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.136040, 2.432243, 0.671265>,  <2.233305, 2.229055, 1.001801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.136040, 2.432243, 0.671265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420656, 0.822855, 0.382045,
		0.874025, -0.254706, -0.413769,
		-0.243163, 0.507971, -0.826340,
		2.063091, 2.584635, 0.423363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.783939, 2.621628, 0.795620>,  <2.233305, 2.229055, 1.001801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.783939, 2.621628, 0.795620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.484764, 2.808090, 0.606606>,  <2.305259, 2.919968, 0.493197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.484764, 2.808090, 0.606606>,  <2.783939, 2.621628, 0.795620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.484764, 2.808090, 0.606606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299611, 0.872341, 0.386334,
		0.592303, 0.147376, -0.792122,
		-0.747937, 0.466156, -0.472535,
		2.260383, 2.947937, 0.464845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.095920, 3.273783, 0.488359>,  <2.783939, 2.621628, 0.795620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.095920, 3.273783, 0.488359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.705105, 3.353226, 0.519218>,  <2.470616, 3.400891, 0.537734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.705105, 3.353226, 0.519218>,  <3.095920, 3.273783, 0.488359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.705105, 3.353226, 0.519218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212827, 0.892635, 0.397375,
		0.010055, 0.404670, -0.914408,
		-0.977038, 0.198606, 0.077150,
		2.411993, 3.412807, 0.542363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.898214, 3.944226, 0.197710>,  <3.095920, 3.273783, 0.488359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.898214, 3.944226, 0.197710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.595863, 3.901627, 0.456108>,  <2.414453, 3.876067, 0.611147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.595863, 3.901627, 0.456108>,  <2.898214, 3.944226, 0.197710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.595863, 3.901627, 0.456108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070569, 0.967681, 0.242104,
		-0.650900, 0.228588, -0.723932,
		-0.755877, -0.106498, 0.645994,
		2.369100, 3.869677, 0.649906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.219951, 4.455263, 1.404568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.856666, 4.622452, 1.413055>,  <2.638695, 4.722765, 1.418148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.856666, 4.622452, 1.413055>,  <3.219951, 4.455263, 1.404568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.856666, 4.622452, 1.413055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340204, -0.707804, -0.619091,
		-0.243743, -0.569485, 0.785032,
		-0.908213, 0.417971, 0.021219,
		2.584202, 4.747843, 1.419421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.698053, 3.935257, 1.609804>,  <3.219951, 4.455263, 1.404568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.698053, 3.935257, 1.609804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.512690, 4.236176, 1.422485>,  <2.401471, 4.416727, 1.310094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.512690, 4.236176, 1.422485>,  <2.698053, 3.935257, 1.609804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.512690, 4.236176, 1.422485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372338, -0.644856, -0.667477,
		-0.804125, -0.134949, 0.578940,
		-0.463408, 0.752296, -0.468298,
		2.373667, 4.461864, 1.281996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.202800, 3.497446, 1.458269>,  <2.698053, 3.935257, 1.609804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.202800, 3.497446, 1.458269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.099031, 3.829010, 1.260033>,  <2.036770, 4.027948, 1.141091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.099031, 3.829010, 1.260033>,  <2.202800, 3.497446, 1.458269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.099031, 3.829010, 1.260033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377548, -0.559366, -0.737948,
		-0.888908, -0.004329, 0.458064,
		-0.259421, 0.828909, -0.495591,
		2.021205, 4.077683, 1.111355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.401525, 3.476685, 1.273421>,  <2.202800, 3.497446, 1.458269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.401525, 3.476685, 1.273421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.692322, 3.650848, 1.061043>,  <1.866800, 3.755346, 0.933616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.692322, 3.650848, 1.061043>,  <1.401525, 3.476685, 1.273421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.692322, 3.650848, 1.061043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224282, -0.580257, -0.782942,
		-0.648985, 0.688274, -0.324188,
		0.726991, 0.435408, -0.530946,
		1.910419, 3.781471, 0.901759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.095727, 3.583965, 0.600652>,  <1.401525, 3.476685, 1.273421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.095727, 3.583965, 0.600652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.493928, 3.551697, 0.580780>,  <1.732848, 3.532336, 0.568857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.493928, 3.551697, 0.580780>,  <1.095727, 3.583965, 0.600652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.493928, 3.551697, 0.580780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091824, -0.692423, -0.715624,
		0.023331, 0.716967, -0.696716,
		0.995502, -0.080671, -0.049680,
		1.792578, 3.527495, 0.565876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.308967, 3.689629, -0.062687>,  <1.095727, 3.583965, 0.600652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.308967, 3.689629, -0.062687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.590429, 3.451538, 0.092529>,  <1.759306, 3.308684, 0.185659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.590429, 3.451538, 0.092529>,  <1.308967, 3.689629, -0.062687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.590429, 3.451538, 0.092529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203901, -0.692303, -0.692201,
		0.680657, 0.407948, -0.608509,
		0.703655, -0.595227, 0.388040,
		1.801526, 3.272970, 0.208941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.571839, 3.305351, -0.625500>,  <1.308967, 3.689629, -0.062687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.571839, 3.305351, -0.625500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.718524, 3.094391, -0.318939>,  <1.806535, 2.967815, -0.135003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.718524, 3.094391, -0.318939>,  <1.571839, 3.305351, -0.625500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.718524, 3.094391, -0.318939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164657, -0.847580, -0.504477,
		0.915647, 0.058805, -0.397658,
		0.366712, -0.527400, 0.766402,
		1.828538, 2.936171, -0.089019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.281591, 2.972794, -0.761124>,  <1.571839, 3.305351, -0.625500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.281591, 2.972794, -0.761124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.034558, 2.765366, -0.524590>,  <1.886339, 2.640909, -0.382669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.034558, 2.765366, -0.524590>,  <2.281591, 2.972794, -0.761124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.034558, 2.765366, -0.524590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280251, -0.847593, -0.450605,
		0.734883, -0.112563, 0.668787,
		-0.617581, -0.518571, 0.591336,
		1.849284, 2.609794, -0.347189>
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
