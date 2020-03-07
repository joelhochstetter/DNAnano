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
	<4.863170, 4.079506, 3.001975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.194138, 4.078964, 3.226608>,  <5.392718, 4.078640, 3.361388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.194138, 4.078964, 3.226608>,  <4.863170, 4.079506, 3.001975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.194138, 4.078964, 3.226608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060357, -0.994419, 0.086531,
		0.558331, -0.105493, -0.822884,
		0.827420, -0.001354, 0.561582,
		5.442364, 4.078558, 3.395083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.584139, 3.778864, 2.755537>,  <4.863170, 4.079506, 3.001975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.584139, 3.778864, 2.755537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.477524, 3.736855, 3.138771>,  <5.413555, 3.711649, 3.368711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.477524, 3.736855, 3.138771>,  <5.584139, 3.778864, 2.755537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.477524, 3.736855, 3.138771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104666, -0.985013, -0.137094,
		0.958124, -0.136820, 0.251552,
		-0.266539, -0.105024, 0.958085,
		5.397562, 3.705347, 3.426197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.146760, 3.851336, 2.255954>,  <5.584139, 3.778864, 2.755537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.146760, 3.851336, 2.255954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.138161, 3.547058, 1.996452>,  <5.133001, 3.364491, 1.840751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.138161, 3.547058, 1.996452>,  <5.146760, 3.851336, 2.255954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.138161, 3.547058, 1.996452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846391, -0.331533, 0.416784,
		-0.532129, 0.558059, -0.636718,
		-0.021497, -0.760694, -0.648754,
		5.131711, 3.318850, 1.801826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.510486, 3.833568, 1.752623>,  <5.146760, 3.851336, 2.255954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.510486, 3.833568, 1.752623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.674129, 3.482620, 1.852905>,  <4.772316, 3.272052, 1.913075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.674129, 3.482620, 1.852905>,  <4.510486, 3.833568, 1.752623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.674129, 3.482620, 1.852905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892741, -0.328006, 0.308911,
		-0.188796, -0.350194, -0.917453,
		0.409109, -0.877369, 0.250706,
		4.796862, 3.219409, 1.928117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.072782, 3.244815, 1.505254>,  <4.510486, 3.833568, 1.752623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.072782, 3.244815, 1.505254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.292709, 3.051071, 1.777458>,  <4.424666, 2.934825, 1.940781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.292709, 3.051071, 1.777458>,  <4.072782, 3.244815, 1.505254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.292709, 3.051071, 1.777458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795348, -0.552484, 0.249367,
		0.255187, -0.678349, -0.689001,
		0.549819, -0.484360, 0.680510,
		4.457655, 2.905763, 1.981611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.062581, 2.556817, 1.346880>,  <4.072782, 3.244815, 1.505254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.062581, 2.556817, 1.346880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.162846, 2.563377, 1.734055>,  <4.223004, 2.567314, 1.966359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.162846, 2.563377, 1.734055>,  <4.062581, 2.556817, 1.346880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.162846, 2.563377, 1.734055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861929, -0.451423, 0.230859,
		0.440735, -0.892159, -0.099016,
		0.250662, 0.016403, 0.967936,
		4.238044, 2.568298, 2.024435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.111786, 1.890644, 1.617837>,  <4.062581, 2.556817, 1.346880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.111786, 1.890644, 1.617837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.048237, 2.124008, 1.936432>,  <4.010107, 2.264027, 2.127589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.048237, 2.124008, 1.936432>,  <4.111786, 1.890644, 1.617837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.048237, 2.124008, 1.936432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772941, -0.575420, 0.267307,
		0.614264, -0.573169, 0.542362,
		-0.158874, 0.583411, 0.796486,
		4.000575, 2.299031, 2.175378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.212917, 1.386621, 2.208832>,  <4.111786, 1.890644, 1.617837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.212917, 1.386621, 2.208832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.014606, 1.711807, 2.331009>,  <3.895620, 1.906919, 2.404315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.014606, 1.711807, 2.331009>,  <4.212917, 1.386621, 2.208832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.014606, 1.711807, 2.331009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805426, -0.561959, 0.188388,
		0.324799, -0.152614, 0.933389,
		-0.495776, 0.812964, 0.305443,
		3.865874, 1.955697, 2.422642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.821404, 1.403863, 1.992842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.655602, 1.664001, 2.247475>,  <2.556120, 1.820084, 2.400254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.655602, 1.664001, 2.247475>,  <2.821404, 1.403863, 1.992842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.655602, 1.664001, 2.247475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901445, 0.389369, 0.189181,
		-0.124832, 0.652259, -0.747646,
		-0.414505, 0.650346, 0.636581,
		2.531250, 1.859105, 2.438449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.861949, 2.130052, 1.839244>,  <2.821404, 1.403863, 1.992842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.861949, 2.130052, 1.839244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.886586, 2.065727, 2.233269>,  <2.901369, 2.027133, 2.469683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.886586, 2.065727, 2.233269>,  <2.861949, 2.130052, 1.839244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.886586, 2.065727, 2.233269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937677, 0.347502, -0.001901,
		-0.342005, 0.923787, 0.172193,
		0.061594, -0.160811, 0.985061,
		2.905064, 2.017484, 2.528787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.069499, 2.716907, 2.192684>,  <2.861949, 2.130052, 1.839244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.069499, 2.716907, 2.192684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.205312, 2.425415, 2.430565>,  <3.286799, 2.250520, 2.573294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.205312, 2.425415, 2.430565>,  <3.069499, 2.716907, 2.192684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.205312, 2.425415, 2.430565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919618, 0.389971, -0.047176,
		-0.197538, 0.562917, 0.802560,
		0.339531, -0.728730, 0.594703,
		3.307171, 2.206796, 2.608976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.402605, 3.106691, 2.712578>,  <3.069499, 2.716907, 2.192684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.402605, 3.106691, 2.712578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.533605, 2.729881, 2.683365>,  <3.612204, 2.503795, 2.665837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.533605, 2.729881, 2.683365>,  <3.402605, 3.106691, 2.712578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.533605, 2.729881, 2.683365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937758, 0.333521, -0.096815,
		0.115560, -0.036781, 0.992619,
		0.327499, -0.942025, -0.073033,
		3.631854, 2.447274, 2.661455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.068164, 3.011798, 3.237712>,  <3.402605, 3.106691, 2.712578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.068164, 3.011798, 3.237712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.054772, 2.759117, 2.927917>,  <4.046737, 2.607508, 2.742040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.054772, 2.759117, 2.927917>,  <4.068164, 3.011798, 3.237712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.054772, 2.759117, 2.927917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956450, 0.204578, -0.208208,
		0.289968, -0.747729, 0.597343,
		-0.033480, -0.631703, -0.774487,
		4.044728, 2.569606, 2.695571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.644750, 2.695150, 3.258093>,  <4.068164, 3.011798, 3.237712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.644750, 2.695150, 3.258093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.506955, 2.657806, 2.884438>,  <4.424278, 2.635400, 2.660244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.506955, 2.657806, 2.884438>,  <4.644750, 2.695150, 3.258093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.506955, 2.657806, 2.884438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876793, 0.323611, -0.355681,
		0.335503, -0.941573, -0.029625,
		-0.344487, -0.093357, -0.934138,
		4.403609, 2.629799, 2.604196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.170892, 2.326170, 2.860758>,  <4.644750, 2.695150, 3.258093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.170892, 2.326170, 2.860758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.946576, 2.528755, 2.598763>,  <4.811986, 2.650306, 2.441565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.946576, 2.528755, 2.598763>,  <5.170892, 2.326170, 2.860758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.946576, 2.528755, 2.598763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819851, 0.229239, -0.524685,
		-0.115585, -0.831230, -0.543779,
		-0.560790, 0.506463, -0.654988,
		4.778339, 2.680694, 2.402266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.348201, 2.063167, 2.181517>,  <5.170892, 2.326170, 2.860758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.348201, 2.063167, 2.181517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.184462, 2.423744, 2.125183>,  <5.086218, 2.640090, 2.091383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.184462, 2.423744, 2.125183>,  <5.348201, 2.063167, 2.181517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.184462, 2.423744, 2.125183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789401, 0.272531, -0.550066,
		-0.457471, -0.336344, -0.823160,
		-0.409348, 0.901443, -0.140836,
		5.061657, 2.694177, 2.082932>
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
