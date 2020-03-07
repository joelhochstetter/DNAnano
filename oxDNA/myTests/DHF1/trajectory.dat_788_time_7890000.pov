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
	<2.534181, 0.031410, 5.736599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.912214, 0.057587, 5.864683>,  <3.139035, 0.073293, 5.941533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.912214, 0.057587, 5.864683>,  <2.534181, 0.031410, 5.736599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.912214, 0.057587, 5.864683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319115, 0.026817, -0.947336,
		-0.070583, 0.997496, 0.004461,
		0.945084, 0.065442, 0.320209,
		3.195740, 0.077219, 5.960746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.824769, 0.628371, 5.419531>,  <2.534181, 0.031410, 5.736599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.824769, 0.628371, 5.419531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.119490, 0.362011, 5.466349>,  <3.296322, 0.202195, 5.494439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.119490, 0.362011, 5.466349>,  <2.824769, 0.628371, 5.419531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.119490, 0.362011, 5.466349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279810, 0.142733, -0.949386,
		0.615490, 0.732260, 0.291492,
		0.736803, -0.665900, 0.117043,
		3.340531, 0.162241, 5.501462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.482262, 1.005963, 5.331454>,  <2.824769, 0.628371, 5.419531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.482262, 1.005963, 5.331454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.555819, 0.617016, 5.273928>,  <3.599952, 0.383647, 5.239412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.555819, 0.617016, 5.273928>,  <3.482262, 1.005963, 5.331454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.555819, 0.617016, 5.273928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546882, 0.222784, -0.807024,
		0.816765, 0.069754, 0.572739,
		0.183891, -0.972369, -0.143815,
		3.610986, 0.325305, 5.230783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.184925, 0.990341, 5.235382>,  <3.482262, 1.005963, 5.331454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.184925, 0.990341, 5.235382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.970959, 0.692234, 5.076162>,  <3.842579, 0.513370, 4.980630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.970959, 0.692234, 5.076162>,  <4.184925, 0.990341, 5.235382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.970959, 0.692234, 5.076162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323723, 0.254384, -0.911314,
		0.780429, -0.616334, 0.105186,
		-0.534915, -0.745266, -0.398050,
		3.810484, 0.468654, 4.956748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.656086, 0.498437, 4.786583>,  <4.184925, 0.990341, 5.235382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.656086, 0.498437, 4.786583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.273352, 0.490108, 4.670630>,  <4.043711, 0.485111, 4.601058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.273352, 0.490108, 4.670630>,  <4.656086, 0.498437, 4.786583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.273352, 0.490108, 4.670630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268256, 0.320503, -0.908469,
		0.111823, -0.947019, -0.301083,
		-0.956835, -0.020820, -0.289883,
		3.986301, 0.483862, 4.583664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.638423, -0.057771, 4.282027>,  <4.656086, 0.498437, 4.786583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.638423, -0.057771, 4.282027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.320528, 0.173893, 4.209402>,  <4.129791, 0.312891, 4.165827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.320528, 0.173893, 4.209402>,  <4.638423, -0.057771, 4.282027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.320528, 0.173893, 4.209402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414085, 0.298660, -0.859846,
		-0.443763, -0.758535, -0.477178,
		-0.794737, 0.579161, -0.181563,
		4.082107, 0.347641, 4.154933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.356922, -0.268869, 3.601673>,  <4.638423, -0.057771, 4.282027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.356922, -0.268869, 3.601673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.239014, 0.106941, 3.671417>,  <4.168269, 0.332427, 3.713264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.239014, 0.106941, 3.671417>,  <4.356922, -0.268869, 3.601673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.239014, 0.106941, 3.671417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204462, 0.240254, -0.948933,
		-0.933437, -0.244068, -0.262917,
		-0.294771, 0.939526, 0.174360,
		4.150582, 0.388799, 3.723725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.901992, -0.089739, 3.026452>,  <4.356922, -0.268869, 3.601673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.901992, -0.089739, 3.026452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.040642, 0.249287, 3.187193>,  <4.123832, 0.452702, 3.283638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.040642, 0.249287, 3.187193>,  <3.901992, -0.089739, 3.026452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.040642, 0.249287, 3.187193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249789, 0.329537, -0.910500,
		-0.904133, 0.415980, -0.097487,
		0.346624, 0.847565, 0.401852,
		4.144629, 0.503556, 3.307749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.392516, 0.741778, 2.521075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.146923, 1.057365, 2.511653>,  <4.999568, 1.246718, 2.506000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.146923, 1.057365, 2.511653>,  <5.392516, 0.741778, 2.521075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.146923, 1.057365, 2.511653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439029, -0.316551, 0.840862,
		0.655958, 0.526615, 0.540736,
		-0.613981, 0.788969, -0.023555,
		4.962729, 1.294056, 2.504586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.149203, 0.820677, 3.148314>,  <5.392516, 0.741778, 2.521075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.149203, 0.820677, 3.148314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.848209, 1.009659, 2.964768>,  <4.667613, 1.123048, 2.854641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.848209, 1.009659, 2.964768>,  <5.149203, 0.820677, 3.148314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.848209, 1.009659, 2.964768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595297, -0.189839, 0.780758,
		0.281762, 0.860668, 0.424101,
		-0.752484, 0.472453, -0.458864,
		4.622464, 1.151395, 2.827109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.990339, 1.257465, 3.652391>,  <5.149203, 0.820677, 3.148314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.990339, 1.257465, 3.652391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.680630, 1.211594, 3.403441>,  <4.494804, 1.184071, 3.254072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.680630, 1.211594, 3.403441>,  <4.990339, 1.257465, 3.652391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.680630, 1.211594, 3.403441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508792, -0.472026, 0.719946,
		-0.376338, 0.874094, 0.307131,
		-0.774274, -0.114677, -0.622373,
		4.448348, 1.177190, 3.216729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.348545, 1.618227, 3.769752>,  <4.990339, 1.257465, 3.652391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.348545, 1.618227, 3.769752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.233482, 1.273354, 3.602949>,  <4.164445, 1.066430, 3.502868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.233482, 1.273354, 3.602949>,  <4.348545, 1.618227, 3.769752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.233482, 1.273354, 3.602949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528872, -0.220003, 0.819691,
		-0.798467, 0.456332, -0.392699,
		-0.287656, -0.862183, -0.417006,
		4.147186, 1.014699, 3.477847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.637218, 1.554133, 3.807976>,  <4.348545, 1.618227, 3.769752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.637218, 1.554133, 3.807976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.779095, 1.180901, 3.784139>,  <3.864221, 0.956961, 3.769836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.779095, 1.180901, 3.784139>,  <3.637218, 1.554133, 3.807976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.779095, 1.180901, 3.784139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633298, -0.286647, 0.718866,
		-0.687842, -0.217237, -0.692590,
		0.354693, -0.933082, -0.059593,
		3.885503, 0.900976, 3.766261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.039811, 1.056503, 3.878486>,  <3.637218, 1.554133, 3.807976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.039811, 1.056503, 3.878486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.365730, 0.844105, 3.971565>,  <3.561282, 0.716666, 4.027413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.365730, 0.844105, 3.971565>,  <3.039811, 1.056503, 3.878486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.365730, 0.844105, 3.971565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521852, -0.496916, 0.693358,
		-0.252539, -0.686381, -0.681987,
		0.814797, -0.530996, 0.232699,
		3.610169, 0.684806, 4.041375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.874561, 0.236499, 3.994835>,  <3.039811, 1.056503, 3.878486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.874561, 0.236499, 3.994835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.204830, 0.334366, 4.198168>,  <3.402992, 0.393086, 4.320168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.204830, 0.334366, 4.198168>,  <2.874561, 0.236499, 3.994835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.204830, 0.334366, 4.198168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378144, -0.428653, 0.820527,
		0.418656, -0.869709, -0.261406,
		0.825672, 0.244669, 0.508333,
		3.452532, 0.407766, 4.350667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.092972, -0.429017, 4.290687>,  <2.874561, 0.236499, 3.994835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.092972, -0.429017, 4.290687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.277210, -0.137054, 4.492713>,  <3.387753, 0.038123, 4.613928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.277210, -0.137054, 4.492713>,  <3.092972, -0.429017, 4.290687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.277210, -0.137054, 4.492713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388107, -0.346126, 0.854148,
		0.798263, -0.589436, 0.123857,
		0.460596, 0.729905, 0.505064,
		3.415389, 0.081917, 4.644232>
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
