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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.290703, 34.663551, 35.256851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427164, 34.704037, 34.883034>,  <24.509041, 34.728329, 34.658745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427164, 34.704037, 34.883034>,  <24.290703, 34.663551, 35.256851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.427164, 34.704037, 34.883034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542868, 0.832848, -0.107976,
		0.767404, 0.544170, 0.339073,
		0.341154, 0.101210, -0.934543,
		24.529510, 34.734402, 34.602673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.704102, 35.246933, 35.203262>,  <24.290703, 34.663551, 35.256851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.704102, 35.246933, 35.203262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.530525, 35.145538, 34.857445>,  <24.426380, 35.084702, 34.649952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.530525, 35.145538, 34.857445>,  <24.704102, 35.246933, 35.203262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.530525, 35.145538, 34.857445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447293, 0.893601, -0.037498,
		0.782065, 0.370434, -0.501152,
		-0.433940, -0.253487, -0.864546,
		24.400343, 35.069492, 34.598080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.024361, 35.712929, 35.828896>,  <24.704102, 35.246933, 35.203262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.024361, 35.712929, 35.828896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.968628, 36.108105, 35.855888>,  <24.935188, 36.345211, 35.872086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.968628, 36.108105, 35.855888>,  <25.024361, 35.712929, 35.828896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.968628, 36.108105, 35.855888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981814, 0.128950, 0.139332,
		0.128950, 0.085670, -0.987944,
		-0.139332, 0.987944, 0.067484,
		24.926828, 36.404488, 35.876133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.458292, 35.943245, 35.320557>,  <25.024361, 35.712929, 35.828896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.458292, 35.943245, 35.320557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.393610, 36.173496, 35.641182>,  <25.354801, 36.311646, 35.833557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.393610, 36.173496, 35.641182>,  <25.458292, 35.943245, 35.320557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.393610, 36.173496, 35.641182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973342, 0.226912, 0.033406,
		-0.162656, 0.785600, -0.596972,
		-0.161704, 0.575624, 0.801567,
		25.345098, 36.346184, 35.881653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827679, 36.484673, 35.170200>,  <25.458292, 35.943245, 35.320557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.827679, 36.484673, 35.170200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782881, 36.531654, 35.564899>,  <25.756002, 36.559845, 35.801720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782881, 36.531654, 35.564899>,  <25.827679, 36.484673, 35.170200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782881, 36.531654, 35.564899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956164, 0.283111, 0.074825,
		-0.270570, 0.951868, -0.144012,
		-0.111995, 0.117454, 0.986743,
		25.749283, 36.566891, 35.860924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053778, 37.173389, 35.392773>,  <25.827679, 36.484673, 35.170200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053778, 37.173389, 35.392773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090729, 36.907169, 35.689018>,  <26.112900, 36.747437, 35.866764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090729, 36.907169, 35.689018>,  <26.053778, 37.173389, 35.392773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090729, 36.907169, 35.689018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967972, 0.234406, 0.089912,
		-0.233445, 0.708589, 0.665886,
		0.092377, -0.665549, 0.740615,
		26.118443, 36.707504, 35.911201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502031, 37.642876, 35.860310>,  <26.053778, 37.173389, 35.392773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502031, 37.642876, 35.860310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901199, 37.661095, 35.878559>,  <27.140699, 37.672024, 35.889507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901199, 37.661095, 35.878559>,  <26.502031, 37.642876, 35.860310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901199, 37.661095, 35.878559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040332, 0.993192, -0.109287,
		-0.050288, 0.107220, 0.992963,
		0.997920, 0.045544, 0.045621,
		27.200575, 37.674759, 35.892246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.665293, 38.103256, 36.418819>,  <26.502031, 37.642876, 35.860310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.665293, 38.103256, 36.418819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970568, 38.118084, 36.160774>,  <27.153732, 38.126980, 36.005947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970568, 38.118084, 36.160774>,  <26.665293, 38.103256, 36.418819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970568, 38.118084, 36.160774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009801, 0.998903, 0.045798,
		0.646101, -0.028630, 0.762715,
		0.763189, 0.037065, -0.645111,
		27.199524, 38.129204, 35.967239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.214598, 38.545376, 36.716434>,  <26.665293, 38.103256, 36.418819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.214598, 38.545376, 36.716434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259949, 38.552200, 36.319073>,  <27.287159, 38.556297, 36.080654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259949, 38.552200, 36.319073>,  <27.214598, 38.545376, 36.716434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259949, 38.552200, 36.319073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070462, 0.997197, 0.025170,
		0.991050, -0.072851, 0.111856,
		0.113376, 0.017064, -0.993406,
		27.293962, 38.557320, 36.021049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416111, 39.247524, 36.691135>,  <27.214598, 38.545376, 36.716434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416111, 39.247524, 36.691135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365007, 39.137928, 36.309853>,  <27.334345, 39.072170, 36.081081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365007, 39.137928, 36.309853>,  <27.416111, 39.247524, 36.691135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365007, 39.137928, 36.309853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039309, 0.958930, -0.280905,
		0.991026, -0.073358, -0.111743,
		-0.127760, -0.273992, -0.953208,
		27.326679, 39.055729, 36.023891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994431, 39.500999, 36.376102>,  <27.416111, 39.247524, 36.691135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994431, 39.500999, 36.376102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727194, 39.470348, 36.080051>,  <27.566853, 39.451958, 35.902420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727194, 39.470348, 36.080051>,  <27.994431, 39.500999, 36.376102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727194, 39.470348, 36.080051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228394, 0.925547, -0.301993,
		0.708160, -0.370799, -0.600848,
		-0.668091, -0.076629, -0.740123,
		27.526766, 39.447361, 35.858013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414688, 39.793858, 35.801914>,  <27.994431, 39.500999, 36.376102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414688, 39.793858, 35.801914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017912, 39.807098, 35.752987>,  <27.779846, 39.815044, 35.723629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017912, 39.807098, 35.752987>,  <28.414688, 39.793858, 35.801914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017912, 39.807098, 35.752987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089828, 0.864522, -0.494502,
		0.089378, -0.501503, -0.860527,
		-0.991939, 0.033101, -0.122318,
		27.720331, 39.817028, 35.716290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287785, 39.917458, 35.094681>,  <28.414688, 39.793858, 35.801914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287785, 39.917458, 35.094681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968868, 40.034504, 35.305851>,  <27.777519, 40.104733, 35.432552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968868, 40.034504, 35.305851>,  <28.287785, 39.917458, 35.094681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968868, 40.034504, 35.305851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112948, 0.931512, -0.345729,
		-0.592935, -0.216018, -0.775735,
		-0.797290, 0.292612, 0.527927,
		27.729681, 40.122288, 35.464230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059334, 40.405193, 34.653107>,  <28.287785, 39.917458, 35.094681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059334, 40.405193, 34.653107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868290, 40.467041, 34.999050>,  <27.753664, 40.504150, 35.206615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868290, 40.467041, 34.999050>,  <28.059334, 40.405193, 34.653107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868290, 40.467041, 34.999050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052231, 0.987649, -0.147723,
		-0.877018, -0.025382, -0.479787,
		-0.477610, 0.154616, 0.864860,
		27.725006, 40.513424, 35.258507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586069, 40.919483, 34.547470>,  <28.059334, 40.405193, 34.653107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586069, 40.919483, 34.547470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589272, 40.929073, 34.947342>,  <27.591192, 40.934826, 35.187263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589272, 40.929073, 34.947342>,  <27.586069, 40.919483, 34.547470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589272, 40.929073, 34.947342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051693, 0.998366, -0.024357,
		-0.998631, 0.051872, 0.006753,
		0.008006, 0.023975, 0.999681,
		27.591673, 40.936264, 35.247246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.924688, 41.325069, 34.909878>,  <27.586069, 40.919483, 34.547470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.924688, 41.325069, 34.909878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224636, 41.325630, 35.174511>,  <27.404606, 41.325966, 35.333290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224636, 41.325630, 35.174511>,  <26.924688, 41.325069, 34.909878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224636, 41.325630, 35.174511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069290, 0.994665, 0.076426,
		-0.657946, -0.103151, 0.745967,
		0.749870, 0.001403, 0.661583,
		27.449596, 41.326050, 35.372986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845747, 41.935982, 35.245739>,  <26.924688, 41.325069, 34.909878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845747, 41.935982, 35.245739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208725, 41.834923, 35.380028>,  <27.426512, 41.774288, 35.460602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208725, 41.834923, 35.380028>,  <26.845747, 41.935982, 35.245739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208725, 41.834923, 35.380028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234030, 0.967523, 0.095546,
		-0.348958, -0.008134, 0.937103,
		0.907446, -0.252652, 0.335722,
		27.480959, 41.759129, 35.480743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961243, 42.343159, 35.836269>,  <26.845747, 41.935982, 35.245739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961243, 42.343159, 35.836269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.306253, 42.237988, 35.663334>,  <27.513260, 42.174885, 35.559574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.306253, 42.237988, 35.663334>,  <26.961243, 42.343159, 35.836269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.306253, 42.237988, 35.663334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330516, 0.939697, 0.087911,
		0.383151, -0.218720, 0.897417,
		0.862528, -0.262927, -0.432336,
		27.565012, 42.159111, 35.533634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463650, 42.651421, 36.291912>,  <26.961243, 42.343159, 35.836269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463650, 42.651421, 36.291912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643644, 42.607121, 35.937454>,  <27.751640, 42.580540, 35.724781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643644, 42.607121, 35.937454>,  <27.463650, 42.651421, 36.291912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643644, 42.607121, 35.937454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459305, 0.879681, 0.123293,
		0.765866, -0.462489, 0.446713,
		0.449986, -0.110752, -0.886141,
		27.778641, 42.573895, 35.671612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085260, 42.944336, 36.362469>,  <27.463650, 42.651421, 36.291912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085260, 42.944336, 36.362469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099300, 42.888241, 35.966671>,  <28.107723, 42.854584, 35.729191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099300, 42.888241, 35.966671>,  <28.085260, 42.944336, 36.362469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099300, 42.888241, 35.966671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639050, 0.764379, -0.085668,
		0.768363, -0.629331, 0.116449,
		0.035098, -0.140241, -0.989495,
		28.109829, 42.846169, 35.669823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856602, 43.054596, 36.099796>,  <28.085260, 42.944336, 36.362469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856602, 43.054596, 36.099796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.613546, 43.126858, 35.790440>,  <28.467712, 43.170216, 35.604824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.613546, 43.126858, 35.790440>,  <28.856602, 43.054596, 36.099796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613546, 43.126858, 35.790440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377978, 0.922216, -0.081551,
		0.698505, -0.341880, -0.628657,
		-0.607638, 0.180655, -0.773395,
		28.431255, 43.181053, 35.558422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265690, 43.448570, 35.555752>,  <28.856602, 43.054596, 36.099796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265690, 43.448570, 35.555752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885620, 43.529598, 35.460979>,  <28.657578, 43.578217, 35.404118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885620, 43.529598, 35.460979>,  <29.265690, 43.448570, 35.555752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885620, 43.529598, 35.460979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249485, 0.949873, -0.188411,
		0.186884, -0.238133, -0.953083,
		-0.950174, 0.202569, -0.236927,
		28.600567, 43.590370, 35.389900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440664, 43.806801, 35.020584>,  <29.265690, 43.448570, 35.555752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440664, 43.806801, 35.020584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071930, 43.910576, 35.135761>,  <28.850689, 43.972839, 35.204868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071930, 43.910576, 35.135761>,  <29.440664, 43.806801, 35.020584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071930, 43.910576, 35.135761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260121, 0.964882, -0.036597,
		-0.287329, 0.041165, -0.956947,
		-0.921834, 0.259437, 0.287947,
		28.795380, 43.988407, 35.222145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.147211, 44.233971, 34.516968>,  <29.440664, 43.806801, 35.020584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.147211, 44.233971, 34.516968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927177, 44.317486, 34.840405>,  <28.795158, 44.367596, 35.034466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927177, 44.317486, 34.840405>,  <29.147211, 44.233971, 34.516968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927177, 44.317486, 34.840405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278465, 0.958687, -0.058106,
		-0.787316, 0.193201, -0.585497,
		-0.550082, 0.208788, 0.808590,
		28.762154, 44.380123, 35.082981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614578, 44.755608, 34.350216>,  <29.147211, 44.233971, 34.516968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614578, 44.755608, 34.350216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723843, 44.764431, 34.734901>,  <28.789402, 44.769726, 34.965714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723843, 44.764431, 34.734901>,  <28.614578, 44.755608, 34.350216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723843, 44.764431, 34.734901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292793, 0.950397, -0.104962,
		-0.916327, 0.310255, 0.253153,
		0.273161, 0.022058, 0.961715,
		28.805792, 44.771049, 35.023415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546362, 45.466019, 34.498753>,  <28.614578, 44.755608, 34.350216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546362, 45.466019, 34.498753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785482, 45.320286, 34.784378>,  <28.928955, 45.232845, 34.955753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785482, 45.320286, 34.784378>,  <28.546362, 45.466019, 34.498753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785482, 45.320286, 34.784378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419712, 0.901159, 0.108419,
		-0.682989, 0.234890, 0.691631,
		0.597803, -0.364334, 0.714067,
		28.964823, 45.210987, 34.998600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535999, 45.867447, 35.040062>,  <28.546362, 45.466019, 34.498753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535999, 45.867447, 35.040062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889654, 45.681793, 35.061558>,  <29.101847, 45.570400, 35.074455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889654, 45.681793, 35.061558>,  <28.535999, 45.867447, 35.040062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889654, 45.681793, 35.061558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466441, 0.870095, -0.159271,
		0.027166, 0.165882, 0.985771,
		0.884135, -0.464131, 0.053737,
		29.154894, 45.542553, 35.077679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850040, 46.097816, 35.630383>,  <28.535999, 45.867447, 35.040062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850040, 46.097816, 35.630383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085121, 45.985313, 35.326935>,  <29.226170, 45.917812, 35.144867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085121, 45.985313, 35.326935>,  <28.850040, 46.097816, 35.630383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085121, 45.985313, 35.326935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298809, 0.946797, -0.119534,
		0.751877, -0.156432, 0.640476,
		0.587702, -0.281255, -0.758618,
		29.261433, 45.900936, 35.099350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600388, 46.172573, 35.876171>,  <28.850040, 46.097816, 35.630383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600388, 46.172573, 35.876171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810968, 46.408962, 36.120663>,  <29.937317, 46.550797, 36.267357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810968, 46.408962, 36.120663>,  <29.600388, 46.172573, 35.876171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810968, 46.408962, 36.120663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710348, 0.700776, -0.065727,
		-0.467176, -0.399582, 0.788721,
		0.526453, 0.590972, 0.611228,
		29.968904, 46.586254, 36.304031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140652, 46.403961, 36.250031>,  <29.600388, 46.172573, 35.876171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140652, 46.403961, 36.250031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432220, 46.677372, 36.265331>,  <29.607162, 46.841419, 36.274513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432220, 46.677372, 36.265331>,  <29.140652, 46.403961, 36.250031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432220, 46.677372, 36.265331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679262, 0.729075, -0.083988,
		-0.085295, 0.035238, 0.995732,
		0.728923, 0.683526, 0.038251,
		29.650898, 46.882431, 36.276806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977032, 46.777031, 36.813644>,  <29.140652, 46.403961, 36.250031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977032, 46.777031, 36.813644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181440, 47.013790, 36.564320>,  <29.304085, 47.155846, 36.414726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181440, 47.013790, 36.564320>,  <28.977032, 46.777031, 36.813644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181440, 47.013790, 36.564320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755042, 0.655667, 0.003599,
		0.410816, 0.468788, 0.781965,
		0.511021, 0.591894, -0.623313,
		29.334747, 47.191357, 36.377327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780756, 46.740929, 37.085934>,  <28.977032, 46.777031, 36.813644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780756, 46.740929, 37.085934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683338, 47.051704, 37.318157>,  <29.624887, 47.238171, 37.457493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683338, 47.051704, 37.318157>,  <29.780756, 46.740929, 37.085934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683338, 47.051704, 37.318157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773490, -0.205548, 0.599552,
		0.585150, 0.595074, -0.550896,
		-0.243543, 0.776940, 0.580560,
		29.610275, 47.284786, 37.492325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368481, 47.283623, 37.130695>,  <29.780756, 46.740929, 37.085934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368481, 47.283623, 37.130695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161951, 47.345234, 37.467667>,  <30.038034, 47.382202, 37.669849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161951, 47.345234, 37.467667>,  <30.368481, 47.283623, 37.130695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161951, 47.345234, 37.467667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853102, 0.006341, 0.521705,
		0.075016, 0.988046, -0.134677,
		-0.516323, 0.154029, 0.842429,
		30.007053, 47.391441, 37.720394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357332, 46.969704, 37.725368>,  <30.368481, 47.283623, 37.130695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357332, 46.969704, 37.725368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673338, 46.875439, 37.951763>,  <30.862942, 46.818878, 38.087601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673338, 46.875439, 37.951763>,  <30.357332, 46.969704, 37.725368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673338, 46.875439, 37.951763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338265, -0.937489, 0.081805,
		0.511326, -0.256080, -0.820347,
		0.790014, -0.235666, 0.565985,
		30.910343, 46.804737, 38.121559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836205, 46.532352, 37.403667>,  <30.357332, 46.969704, 37.725368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836205, 46.532352, 37.403667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798424, 46.495884, 37.800205>,  <30.775755, 46.474003, 38.038128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798424, 46.495884, 37.800205>,  <30.836205, 46.532352, 37.403667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798424, 46.495884, 37.800205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373672, -0.919741, -0.120188,
		0.922739, -0.381790, 0.052803,
		-0.094452, -0.091172, 0.991346,
		30.770088, 46.468533, 38.097610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246881, 46.027565, 37.723885>,  <30.836205, 46.532352, 37.403667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246881, 46.027565, 37.723885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914242, 46.058315, 37.943897>,  <30.714659, 46.076767, 38.075905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914242, 46.058315, 37.943897>,  <31.246881, 46.027565, 37.723885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914242, 46.058315, 37.943897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248033, -0.937529, -0.243965,
		0.496913, -0.339306, 0.798717,
		-0.831599, 0.076879, 0.550029,
		30.664762, 46.081379, 38.108906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305252, 45.443241, 38.132935>,  <31.246881, 46.027565, 37.723885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305252, 45.443241, 38.132935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919960, 45.550648, 38.129246>,  <30.688784, 45.615089, 38.127033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919960, 45.550648, 38.129246>,  <31.305252, 45.443241, 38.132935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919960, 45.550648, 38.129246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267995, -0.962675, -0.037885,
		-0.019049, -0.034021, 0.999240,
		-0.963232, 0.268513, -0.009220,
		30.630991, 45.631203, 38.126480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984493, 45.059025, 38.677738>,  <31.305252, 45.443241, 38.132935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984493, 45.059025, 38.677738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684135, 45.154179, 38.431301>,  <30.503920, 45.211269, 38.283440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684135, 45.154179, 38.431301>,  <30.984493, 45.059025, 38.677738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684135, 45.154179, 38.431301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342792, -0.937758, 0.055716,
		-0.564489, 0.253027, 0.785703,
		-0.750897, 0.237882, -0.616089,
		30.458866, 45.225544, 38.246475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461317, 44.684746, 38.947865>,  <30.984493, 45.059025, 38.677738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461317, 44.684746, 38.947865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330914, 44.763611, 38.578033>,  <30.252672, 44.810932, 38.356136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330914, 44.763611, 38.578033>,  <30.461317, 44.684746, 38.947865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330914, 44.763611, 38.578033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359624, -0.930347, -0.071592,
		-0.874293, 0.309161, 0.374207,
		-0.326009, 0.197166, -0.924577,
		30.233110, 44.822762, 38.300659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765345, 44.427032, 38.919590>,  <30.461317, 44.684746, 38.947865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765345, 44.427032, 38.919590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885897, 44.460922, 38.539696>,  <29.958227, 44.481258, 38.311760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885897, 44.460922, 38.539696>,  <29.765345, 44.427032, 38.919590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885897, 44.460922, 38.539696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382987, -0.901409, -0.201949,
		-0.873208, 0.424598, -0.239216,
		0.301378, 0.084727, -0.949733,
		29.976311, 44.486340, 38.254776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269135, 44.165039, 38.533600>,  <29.765345, 44.427032, 38.919590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269135, 44.165039, 38.533600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589918, 44.148399, 38.295231>,  <29.782389, 44.138416, 38.152210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589918, 44.148399, 38.295231>,  <29.269135, 44.165039, 38.533600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589918, 44.148399, 38.295231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261677, -0.921232, -0.287848,
		-0.537014, 0.386783, -0.749677,
		0.801961, -0.041595, -0.595927,
		29.830507, 44.135921, 38.116451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063366, 43.833084, 37.867413>,  <29.269135, 44.165039, 38.533600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063366, 43.833084, 37.867413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461344, 43.794281, 37.857006>,  <29.700130, 43.771000, 37.850761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461344, 43.794281, 37.857006>,  <29.063366, 43.833084, 37.867413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461344, 43.794281, 37.857006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100325, -0.947613, -0.303256,
		0.004769, 0.304332, -0.952554,
		0.994943, -0.097011, -0.026013,
		29.759827, 43.765179, 37.849201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164223, 43.463276, 37.273281>,  <29.063366, 43.833084, 37.867413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164223, 43.463276, 37.273281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492462, 43.404423, 37.494179>,  <29.689405, 43.369110, 37.626717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492462, 43.404423, 37.494179>,  <29.164223, 43.463276, 37.273281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492462, 43.404423, 37.494179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003699, -0.967641, -0.252305,
		0.571495, 0.204998, -0.794587,
		0.820597, -0.147131, 0.552243,
		29.738642, 43.360283, 37.659851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644497, 43.094505, 36.875732>,  <29.164223, 43.463276, 37.273281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644497, 43.094505, 36.875732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763428, 43.025734, 37.251400>,  <29.834787, 42.984470, 37.476799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763428, 43.025734, 37.251400>,  <29.644497, 43.094505, 36.875732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763428, 43.025734, 37.251400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252407, -0.934504, -0.250986,
		0.920808, 0.311677, -0.234458,
		0.297328, -0.171931, 0.939168,
		29.852627, 42.974155, 37.533150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152302, 42.630131, 36.776497>,  <29.644497, 43.094505, 36.875732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152302, 42.630131, 36.776497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112455, 42.582970, 37.171703>,  <30.088547, 42.554672, 37.408829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112455, 42.582970, 37.171703>,  <30.152302, 42.630131, 36.776497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112455, 42.582970, 37.171703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190420, -0.976862, -0.097369,
		0.976636, 0.178439, 0.119760,
		-0.099615, -0.117899, 0.988017,
		30.082571, 42.547600, 37.468109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818180, 42.331905, 37.106339>,  <30.152302, 42.630131, 36.776497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818180, 42.331905, 37.106339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512135, 42.257301, 37.352856>,  <30.328508, 42.212540, 37.500767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512135, 42.257301, 37.352856>,  <30.818180, 42.331905, 37.106339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512135, 42.257301, 37.352856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281011, -0.957890, 0.058981,
		0.579342, 0.218313, 0.785304,
		-0.765112, -0.186509, 0.616294,
		30.282600, 42.201347, 37.537743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080839, 41.885876, 37.531906>,  <30.818180, 42.331905, 37.106339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080839, 41.885876, 37.531906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693754, 41.805859, 37.593246>,  <30.461504, 41.757847, 37.630051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693754, 41.805859, 37.593246>,  <31.080839, 41.885876, 37.531906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693754, 41.805859, 37.593246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226906, -0.956299, 0.184404,
		0.109757, 0.213245, 0.970814,
		-0.967712, -0.200044, 0.153347,
		30.403440, 41.745846, 37.639252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043749, 41.236931, 37.984360>,  <31.080839, 41.885876, 37.531906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043749, 41.236931, 37.984360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686832, 41.292660, 37.812588>,  <30.472683, 41.326096, 37.709526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686832, 41.292660, 37.812588>,  <31.043749, 41.236931, 37.984360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686832, 41.292660, 37.812588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115766, -0.989997, -0.080649,
		-0.436368, -0.022250, 0.899493,
		-0.892290, 0.139323, -0.429427,
		30.419146, 41.334457, 37.683758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695572, 40.782803, 38.213337>,  <31.043749, 41.236931, 37.984360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695572, 40.782803, 38.213337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489462, 40.855900, 37.878410>,  <30.365797, 40.899757, 37.677456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489462, 40.855900, 37.878410>,  <30.695572, 40.782803, 38.213337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489462, 40.855900, 37.878410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143037, -0.981636, -0.126220,
		-0.845005, 0.054729, 0.531949,
		-0.515273, 0.182744, -0.837316,
		30.334881, 40.910725, 37.627216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275549, 40.270813, 38.291462>,  <30.695572, 40.782803, 38.213337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275549, 40.270813, 38.291462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211637, 40.405640, 37.920334>,  <30.173290, 40.486538, 37.697655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211637, 40.405640, 37.920334>,  <30.275549, 40.270813, 38.291462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211637, 40.405640, 37.920334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185157, -0.933449, -0.307229,
		-0.969633, 0.122705, 0.211556,
		-0.159778, 0.337070, -0.927822,
		30.163704, 40.506760, 37.641987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659349, 39.976177, 38.074154>,  <30.275549, 40.270813, 38.291462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659349, 39.976177, 38.074154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845715, 40.086872, 37.737976>,  <29.957535, 40.153290, 37.536270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845715, 40.086872, 37.737976>,  <29.659349, 39.976177, 38.074154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845715, 40.086872, 37.737976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123269, -0.920271, -0.371357,
		-0.876201, 0.276621, -0.394654,
		0.465914, 0.276735, -0.840442,
		29.985489, 40.169891, 37.485844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240498, 39.831547, 37.595425>,  <29.659349, 39.976177, 38.074154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240498, 39.831547, 37.595425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590916, 39.835690, 37.402580>,  <29.801167, 39.838173, 37.286873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590916, 39.835690, 37.402580>,  <29.240498, 39.831547, 37.595425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590916, 39.835690, 37.402580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204466, -0.897477, -0.390806,
		-0.436732, 0.440940, -0.784115,
		0.876047, 0.010353, -0.482114,
		29.853729, 39.838795, 37.257946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132622, 39.604496, 36.885349>,  <29.240498, 39.831547, 37.595425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132622, 39.604496, 36.885349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524712, 39.555721, 36.947697>,  <29.759966, 39.526459, 36.985104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524712, 39.555721, 36.947697>,  <29.132622, 39.604496, 36.885349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524712, 39.555721, 36.947697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043774, -0.901716, -0.430108,
		0.192994, 0.414779, -0.889220,
		0.980223, -0.121932, 0.155869,
		29.818779, 39.519142, 36.994457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464109, 39.473408, 36.149925>,  <29.132622, 39.604496, 36.885349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464109, 39.473408, 36.149925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660681, 39.317310, 36.461365>,  <29.778624, 39.223652, 36.648228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660681, 39.317310, 36.461365>,  <29.464109, 39.473408, 36.149925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660681, 39.317310, 36.461365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113010, -0.857863, -0.501298,
		0.863556, 0.334340, -0.377476,
		0.491427, -0.390240, 0.778596,
		29.808109, 39.200237, 36.694942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108665, 39.133575, 35.826984>,  <29.464109, 39.473408, 36.149925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108665, 39.133575, 35.826984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072857, 38.974949, 36.192436>,  <30.051371, 38.879772, 36.411709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072857, 38.974949, 36.192436>,  <30.108665, 39.133575, 35.826984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072857, 38.974949, 36.192436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296046, -0.886448, -0.355763,
		0.950969, 0.238627, 0.196760,
		-0.089523, -0.396570, 0.913629,
		30.046000, 38.855976, 36.466526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644781, 38.646317, 35.911480>,  <30.108665, 39.133575, 35.826984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644781, 38.646317, 35.911480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366758, 38.537106, 36.177521>,  <30.199945, 38.471581, 36.337143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366758, 38.537106, 36.177521>,  <30.644781, 38.646317, 35.911480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366758, 38.537106, 36.177521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287154, -0.953520, -0.091337,
		0.659122, 0.127501, 0.741149,
		-0.695055, -0.273026, 0.665098,
		30.158241, 38.455196, 36.377048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944683, 38.047485, 36.165863>,  <30.644781, 38.646317, 35.911480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944683, 38.047485, 36.165863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581181, 38.010059, 36.328545>,  <30.363079, 37.987606, 36.426155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581181, 38.010059, 36.328545>,  <30.944683, 38.047485, 36.165863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581181, 38.010059, 36.328545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131351, -0.989140, 0.065943,
		0.396122, 0.113347, 0.911175,
		-0.908754, -0.093562, 0.406709,
		30.308554, 37.981991, 36.450558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893833, 37.721043, 36.803425>,  <30.944683, 38.047485, 36.165863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893833, 37.721043, 36.803425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518833, 37.650585, 36.683384>,  <30.293833, 37.608311, 36.611359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518833, 37.650585, 36.683384>,  <30.893833, 37.721043, 36.803425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518833, 37.650585, 36.683384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082649, -0.950451, 0.299686,
		-0.338023, 0.256153, 0.905608,
		-0.937502, -0.176148, -0.300104,
		30.237583, 37.597740, 36.593353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456989, 37.336491, 37.259377>,  <30.893833, 37.721043, 36.803425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456989, 37.336491, 37.259377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310892, 37.209366, 36.909382>,  <30.223234, 37.133091, 36.699387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310892, 37.209366, 36.909382>,  <30.456989, 37.336491, 37.259377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310892, 37.209366, 36.909382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158225, -0.905051, 0.394776,
		-0.917368, 0.282633, 0.280277,
		-0.365241, -0.317808, -0.874984,
		30.201319, 37.114025, 36.646885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075159, 37.510109, 37.677650>,  <30.456989, 37.336491, 37.259377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075159, 37.510109, 37.677650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329206, 37.818092, 37.653038>,  <31.481634, 38.002884, 37.638271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329206, 37.818092, 37.653038>,  <31.075159, 37.510109, 37.677650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329206, 37.818092, 37.653038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605987, -0.447288, 0.657809,
		0.478963, -0.455075, -0.750667,
		0.635117, 0.769961, -0.061535,
		31.519741, 38.049080, 37.634579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656349, 37.284885, 37.286633>,  <31.075159, 37.510109, 37.677650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656349, 37.284885, 37.286633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730692, 37.563278, 37.564068>,  <31.775297, 37.730312, 37.730530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730692, 37.563278, 37.564068>,  <31.656349, 37.284885, 37.286633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730692, 37.563278, 37.564068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735465, -0.566634, 0.371507,
		0.651574, 0.441064, -0.617183,
		0.185859, 0.695980, 0.693591,
		31.786449, 37.772072, 37.772144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429279, 37.427799, 37.303249>,  <31.656349, 37.284885, 37.286633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429279, 37.427799, 37.303249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236904, 37.518566, 37.642002>,  <32.121479, 37.573029, 37.845253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236904, 37.518566, 37.642002>,  <32.429279, 37.427799, 37.303249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236904, 37.518566, 37.642002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649258, -0.556956, 0.517942,
		0.589207, 0.798941, 0.120531,
		-0.480935, 0.226920, 0.846882,
		32.092625, 37.586643, 37.896065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926769, 37.612560, 37.886543>,  <32.429279, 37.427799, 37.303249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926769, 37.612560, 37.886543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582607, 37.456093, 38.017200>,  <32.376110, 37.362213, 38.095596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582607, 37.456093, 38.017200>,  <32.926769, 37.612560, 37.886543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582607, 37.456093, 38.017200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504133, -0.559553, 0.657838,
		-0.074548, 0.730678, 0.678640,
		-0.860403, -0.391165, 0.326645,
		32.324486, 37.338745, 38.115192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875618, 37.774723, 38.635704>,  <32.926769, 37.612560, 37.886543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875618, 37.774723, 38.635704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747383, 37.437042, 38.463867>,  <32.670441, 37.234432, 38.360764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747383, 37.437042, 38.463867>,  <32.875618, 37.774723, 38.635704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747383, 37.437042, 38.463867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500490, -0.536018, 0.679848,
		-0.804197, 0.002944, 0.594355,
		-0.320587, -0.844201, -0.429591,
		32.651207, 37.183781, 38.334991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443344, 37.375877, 39.163807>,  <32.875618, 37.774723, 38.635704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443344, 37.375877, 39.163807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632797, 37.153702, 38.890411>,  <32.746468, 37.020397, 38.726376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632797, 37.153702, 38.890411>,  <32.443344, 37.375877, 39.163807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632797, 37.153702, 38.890411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471746, -0.495341, 0.729447,
		-0.743726, -0.667922, 0.027419,
		0.473632, -0.555444, -0.683487,
		32.774887, 36.987068, 38.685364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221539, 36.667549, 39.222614>,  <32.443344, 37.375877, 39.163807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221539, 36.667549, 39.222614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568649, 36.589283, 39.039890>,  <32.776917, 36.542324, 38.930256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568649, 36.589283, 39.039890>,  <32.221539, 36.667549, 39.222614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568649, 36.589283, 39.039890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268171, -0.589527, 0.761933,
		-0.418389, -0.783692, -0.459105,
		0.867776, -0.195665, -0.456815,
		32.828983, 36.530582, 38.902847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253708, 35.909416, 39.265835>,  <32.221539, 36.667549, 39.222614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253708, 35.909416, 39.265835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605080, 36.096336, 39.225864>,  <32.815903, 36.208488, 39.201881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605080, 36.096336, 39.225864>,  <32.253708, 35.909416, 39.265835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605080, 36.096336, 39.225864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370654, -0.534307, 0.759692,
		0.301619, -0.704373, -0.642560,
		0.878431, 0.467305, -0.099921,
		32.868610, 36.236526, 39.195889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742649, 35.374046, 39.182686>,  <32.253708, 35.909416, 39.265835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742649, 35.374046, 39.182686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939274, 35.690891, 39.327415>,  <33.057251, 35.881001, 39.414253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939274, 35.690891, 39.327415>,  <32.742649, 35.374046, 39.182686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939274, 35.690891, 39.327415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238620, -0.522101, 0.818823,
		0.837511, -0.316167, -0.445662,
		0.491565, 0.792117, 0.361821,
		33.086742, 35.928528, 39.435963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400951, 35.104027, 39.387321>,  <32.742649, 35.374046, 39.182686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400951, 35.104027, 39.387321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384747, 35.458965, 39.571053>,  <33.375023, 35.671928, 39.681290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384747, 35.458965, 39.571053>,  <33.400951, 35.104027, 39.387321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384747, 35.458965, 39.571053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407474, -0.405069, 0.818465,
		0.912318, 0.220317, -0.345161,
		-0.040508, 0.887344, 0.459325,
		33.372593, 35.725170, 39.708851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979317, 35.023197, 39.952518>,  <33.400951, 35.104027, 39.387321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979317, 35.023197, 39.952518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798286, 35.365932, 40.051315>,  <33.689667, 35.571571, 40.110596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798286, 35.365932, 40.051315>,  <33.979317, 35.023197, 39.952518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798286, 35.365932, 40.051315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332889, -0.094621, 0.938207,
		0.827259, 0.506833, -0.242408,
		-0.452578, 0.856835, 0.246995,
		33.662514, 35.622982, 40.125412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435555, 35.401169, 40.470524>,  <33.979317, 35.023197, 39.952518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435555, 35.401169, 40.470524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075161, 35.563461, 40.531990>,  <33.858925, 35.660835, 40.568871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075161, 35.563461, 40.531990>,  <34.435555, 35.401169, 40.470524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075161, 35.563461, 40.531990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116062, -0.115878, 0.986459,
		0.418043, 0.906617, 0.057314,
		-0.900983, 0.405730, 0.153666,
		33.804867, 35.685181, 40.578091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519859, 35.988400, 41.022358>,  <34.435555, 35.401169, 40.470524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519859, 35.988400, 41.022358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152588, 35.832817, 41.052471>,  <33.932224, 35.739468, 41.070538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152588, 35.832817, 41.052471>,  <34.519859, 35.988400, 41.022358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152588, 35.832817, 41.052471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165428, -0.203755, 0.964944,
		-0.359978, 0.898443, 0.251426,
		-0.918177, -0.388952, 0.075281,
		33.877136, 35.716133, 41.075054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313881, 36.222267, 41.613514>,  <34.519859, 35.988400, 41.022358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313881, 36.222267, 41.613514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052628, 35.931736, 41.527851>,  <33.895874, 35.757416, 41.476452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052628, 35.931736, 41.527851>,  <34.313881, 36.222267, 41.613514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052628, 35.931736, 41.527851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013559, -0.271550, 0.962329,
		-0.757122, 0.631432, 0.167510,
		-0.653132, -0.726329, -0.214158,
		33.856689, 35.713837, 41.463604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799591, 36.316658, 42.108246>,  <34.313881, 36.222267, 41.613514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799591, 36.316658, 42.108246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748974, 35.941650, 41.978607>,  <33.718601, 35.716644, 41.900822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748974, 35.941650, 41.978607>,  <33.799591, 36.316658, 42.108246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748974, 35.941650, 41.978607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009729, -0.327884, 0.944668,
		-0.991913, 0.116390, 0.050613,
		-0.126545, -0.937521, -0.324100,
		33.711010, 35.660393, 41.881378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204334, 35.953384, 42.504475>,  <33.799591, 36.316658, 42.108246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204334, 35.953384, 42.504475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445873, 35.661533, 42.376095>,  <33.590797, 35.486420, 42.299068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445873, 35.661533, 42.376095>,  <33.204334, 35.953384, 42.504475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445873, 35.661533, 42.376095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093558, -0.464734, 0.880494,
		-0.791591, -0.501656, -0.348891,
		0.603846, -0.729632, -0.320946,
		33.627026, 35.442642, 42.279812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954903, 35.390251, 42.795235>,  <33.204334, 35.953384, 42.504475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954903, 35.390251, 42.795235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305721, 35.231071, 42.687592>,  <33.516212, 35.135563, 42.623005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305721, 35.231071, 42.687592>,  <32.954903, 35.390251, 42.795235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305721, 35.231071, 42.687592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026006, -0.520022, 0.853757,
		-0.479689, -0.755789, -0.445737,
		0.877053, -0.397946, -0.269104,
		33.568836, 35.111687, 42.606861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974174, 34.702976, 42.820312>,  <32.954903, 35.390251, 42.795235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974174, 34.702976, 42.820312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368835, 34.758537, 42.854324>,  <33.605633, 34.791874, 42.874733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368835, 34.758537, 42.854324>,  <32.974174, 34.702976, 42.820312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368835, 34.758537, 42.854324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040625, -0.715514, 0.697417,
		0.157715, -0.684651, -0.711603,
		0.986649, 0.138902, 0.085033,
		33.664829, 34.800209, 42.879833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247494, 34.023796, 42.781124>,  <32.974174, 34.702976, 42.820312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247494, 34.023796, 42.781124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530834, 34.246788, 42.954304>,  <33.700840, 34.380585, 43.058212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530834, 34.246788, 42.954304>,  <33.247494, 34.023796, 42.781124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530834, 34.246788, 42.954304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120482, -0.699861, 0.704044,
		0.695500, -0.446548, -0.562916,
		0.708353, 0.557484, 0.432952,
		33.743340, 34.414032, 43.084190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768764, 33.595791, 42.855366>,  <33.247494, 34.023796, 42.781124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768764, 33.595791, 42.855366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822239, 33.875134, 43.136627>,  <33.854324, 34.042740, 43.305386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822239, 33.875134, 43.136627>,  <33.768764, 33.595791, 42.855366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822239, 33.875134, 43.136627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164261, -0.715326, 0.679211,
		0.977317, 0.024703, -0.210338,
		0.133681, 0.698354, 0.703157,
		33.862343, 34.084641, 43.347576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391747, 33.418472, 43.140644>,  <33.768764, 33.595791, 42.855366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391747, 33.418472, 43.140644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200825, 33.652020, 43.403328>,  <34.086269, 33.792149, 43.560940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200825, 33.652020, 43.403328>,  <34.391747, 33.418472, 43.140644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200825, 33.652020, 43.403328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159369, -0.677427, 0.718119,
		0.864164, 0.447423, 0.230289,
		-0.477307, 0.583871, 0.656713,
		34.057632, 33.827183, 43.600342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777111, 33.363617, 43.763592>,  <34.391747, 33.418472, 43.140644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777111, 33.363617, 43.763592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428120, 33.507557, 43.895828>,  <34.218723, 33.593922, 43.975170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428120, 33.507557, 43.895828>,  <34.777111, 33.363617, 43.763592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428120, 33.507557, 43.895828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040441, -0.621041, 0.782734,
		0.486972, 0.696289, 0.527294,
		-0.872481, 0.359845, 0.330589,
		34.166374, 33.615509, 43.995007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836109, 33.405834, 44.506435>,  <34.777111, 33.363617, 43.763592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836109, 33.405834, 44.506435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440514, 33.412632, 44.447624>,  <34.203156, 33.416710, 44.412338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440514, 33.412632, 44.447624>,  <34.836109, 33.405834, 44.506435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440514, 33.412632, 44.447624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123440, -0.642749, 0.756066,
		-0.081654, 0.765888, 0.637768,
		-0.988987, 0.016990, -0.147024,
		34.143818, 33.417728, 44.403519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547279, 33.586254, 45.105423>,  <34.836109, 33.405834, 44.506435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547279, 33.586254, 45.105423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220348, 33.416073, 44.950012>,  <34.024189, 33.313965, 44.856766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220348, 33.416073, 44.950012>,  <34.547279, 33.586254, 45.105423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220348, 33.416073, 44.950012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103921, -0.554420, 0.825724,
		-0.566718, 0.715267, 0.408931,
		-0.817332, -0.425456, -0.388531,
		33.975147, 33.288437, 44.833454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118641, 33.613644, 45.607944>,  <34.547279, 33.586254, 45.105423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118641, 33.613644, 45.607944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950283, 33.322536, 45.391350>,  <33.849270, 33.147873, 45.261395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950283, 33.322536, 45.391350>,  <34.118641, 33.613644, 45.607944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950283, 33.322536, 45.391350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285361, -0.460403, 0.840594,
		-0.861057, 0.508318, -0.013895,
		-0.420892, -0.727764, -0.541488,
		33.824017, 33.104206, 45.228905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461918, 33.494682, 45.839371>,  <34.118641, 33.613644, 45.607944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461918, 33.494682, 45.839371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494736, 33.151394, 45.636700>,  <33.514427, 32.945419, 45.515099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494736, 33.151394, 45.636700>,  <33.461918, 33.494682, 45.839371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494736, 33.151394, 45.636700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422447, -0.490410, 0.762258,
		-0.902667, 0.151505, -0.402789,
		0.082046, -0.858222, -0.506679,
		33.519348, 32.893929, 45.484695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848640, 33.139713, 45.890881>,  <33.461918, 33.494682, 45.839371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848640, 33.139713, 45.890881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102283, 32.842655, 45.804729>,  <33.254471, 32.664421, 45.753040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102283, 32.842655, 45.804729>,  <32.848640, 33.139713, 45.890881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102283, 32.842655, 45.804729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482276, -0.597568, 0.640565,
		-0.604423, -0.302305, -0.737078,
		0.634100, -0.742647, -0.215389,
		33.292515, 32.619862, 45.740116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530800, 32.626221, 46.093575>,  <32.848640, 33.139713, 45.890881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530800, 32.626221, 46.093575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893497, 32.458992, 46.071583>,  <33.111118, 32.358654, 46.058388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893497, 32.458992, 46.071583>,  <32.530800, 32.626221, 46.093575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893497, 32.458992, 46.071583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214231, -0.569045, 0.793910,
		-0.363200, -0.708098, -0.605544,
		0.906747, -0.418075, -0.054981,
		33.165520, 32.333569, 46.055088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351246, 31.998600, 46.347202>,  <32.530800, 32.626221, 46.093575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351246, 31.998600, 46.347202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749481, 32.019974, 46.378059>,  <32.988422, 32.032799, 46.396572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749481, 32.019974, 46.378059>,  <32.351246, 31.998600, 46.347202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749481, 32.019974, 46.378059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040368, -0.498255, 0.866091,
		0.084714, -0.865383, -0.493899,
		0.995587, 0.053432, 0.077143,
		33.048157, 32.036003, 46.401203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551311, 31.361197, 46.382843>,  <32.351246, 31.998600, 46.347202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551311, 31.361197, 46.382843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843685, 31.571205, 46.557236>,  <33.019108, 31.697210, 46.661873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843685, 31.571205, 46.557236>,  <32.551311, 31.361197, 46.382843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843685, 31.571205, 46.557236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015455, -0.625959, 0.779703,
		0.682272, -0.576650, -0.449422,
		0.730935, 0.525023, 0.435986,
		33.062965, 31.728712, 46.688030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912540, 30.938112, 46.668720>,  <32.551311, 31.361197, 46.382843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912540, 30.938112, 46.668720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068939, 31.248680, 46.866425>,  <33.162777, 31.435020, 46.985046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068939, 31.248680, 46.866425>,  <32.912540, 30.938112, 46.668720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068939, 31.248680, 46.866425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073498, -0.508956, 0.857649,
		0.917454, -0.371662, -0.141933,
		0.390994, 0.776422, 0.494261,
		33.186237, 31.481607, 47.014702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603687, 30.778986, 47.025909>,  <32.912540, 30.938112, 46.668720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603687, 30.778986, 47.025909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411705, 31.074467, 47.215210>,  <33.296516, 31.251755, 47.328789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411705, 31.074467, 47.215210>,  <33.603687, 30.778986, 47.025909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411705, 31.074467, 47.215210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085697, -0.497388, 0.863285,
		0.873099, 0.454891, 0.175418,
		-0.479952, 0.738701, 0.473252,
		33.267719, 31.296078, 47.357185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928627, 30.940023, 47.639809>,  <33.603687, 30.778986, 47.025909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928627, 30.940023, 47.639809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543362, 31.038454, 47.683201>,  <33.312202, 31.097513, 47.709236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543362, 31.038454, 47.683201>,  <33.928627, 30.940023, 47.639809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543362, 31.038454, 47.683201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075039, -0.633275, 0.770281,
		0.258247, 0.733763, 0.628410,
		-0.963160, 0.246078, 0.108481,
		33.254414, 31.112278, 47.715744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838806, 31.415623, 48.187939>,  <33.928627, 30.940023, 47.639809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838806, 31.415623, 48.187939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548267, 31.150259, 48.116047>,  <33.373943, 30.991041, 48.072910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548267, 31.150259, 48.116047>,  <33.838806, 31.415623, 48.187939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548267, 31.150259, 48.116047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284770, -0.528462, 0.799771,
		-0.625557, 0.529731, 0.572768,
		-0.726350, -0.663410, -0.179732,
		33.330364, 30.951237, 48.062126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678135, 31.076315, 48.862232>,  <33.838806, 31.415623, 48.187939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678135, 31.076315, 48.862232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539391, 30.809563, 48.598427>,  <33.456142, 30.649511, 48.440144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539391, 30.809563, 48.598427>,  <33.678135, 31.076315, 48.862232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539391, 30.809563, 48.598427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376018, -0.743059, 0.553600,
		-0.859241, -0.055965, 0.508500,
		-0.346864, -0.666881, -0.659511,
		33.435333, 30.609499, 48.400574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394394, 30.569141, 49.312263>,  <33.678135, 31.076315, 48.862232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394394, 30.569141, 49.312263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445633, 30.415436, 48.946545>,  <33.476376, 30.323212, 48.727116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445633, 30.415436, 48.946545>,  <33.394394, 30.569141, 49.312263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445633, 30.415436, 48.946545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377454, -0.833621, 0.403243,
		-0.917126, -0.396758, 0.038258,
		0.128097, -0.384265, -0.914293,
		33.484062, 30.300156, 48.672256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176514, 29.924271, 49.344120>,  <33.394394, 30.569141, 49.312263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176514, 29.924271, 49.344120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442070, 29.921093, 49.045006>,  <33.601406, 29.919188, 48.865540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442070, 29.921093, 49.045006>,  <33.176514, 29.924271, 49.344120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442070, 29.921093, 49.045006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488473, -0.752544, 0.441669,
		-0.566248, -0.658494, -0.495731,
		0.663895, -0.007943, -0.747783,
		33.641239, 29.918711, 48.820671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208782, 29.218470, 49.253918>,  <33.176514, 29.924271, 49.344120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208782, 29.218470, 49.253918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528240, 29.384979, 49.080070>,  <33.719913, 29.484884, 48.975761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528240, 29.384979, 49.080070>,  <33.208782, 29.218470, 49.253918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528240, 29.384979, 49.080070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553605, -0.791375, 0.259321,
		-0.235994, -0.447709, -0.862475,
		0.798642, 0.416272, -0.434614,
		33.767834, 29.509861, 48.949688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419849, 28.694077, 48.667114>,  <33.208782, 29.218470, 49.253918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419849, 28.694077, 48.667114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726116, 28.919165, 48.791759>,  <33.909874, 29.054218, 48.866547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726116, 28.919165, 48.791759>,  <33.419849, 28.694077, 48.667114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726116, 28.919165, 48.791759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512273, -0.826421, 0.233676,
		0.389018, -0.019287, -0.921028,
		0.765664, 0.562722, 0.311612,
		33.955814, 29.087982, 48.885242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964336, 28.320789, 48.464153>,  <33.419849, 28.694077, 48.667114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964336, 28.320789, 48.464153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136818, 28.554224, 48.739395>,  <34.240307, 28.694284, 48.904541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136818, 28.554224, 48.739395>,  <33.964336, 28.320789, 48.464153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136818, 28.554224, 48.739395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347310, -0.811245, 0.470380,
		0.832732, 0.036159, -0.552494,
		0.431199, 0.583587, 0.688109,
		34.266178, 28.729300, 48.945827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649841, 28.046343, 48.634754>,  <33.964336, 28.320789, 48.464153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649841, 28.046343, 48.634754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586334, 28.270266, 48.960064>,  <34.548229, 28.404619, 49.155251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586334, 28.270266, 48.960064>,  <34.649841, 28.046343, 48.634754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586334, 28.270266, 48.960064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507955, -0.660026, 0.553487,
		0.846625, 0.500981, -0.179565,
		-0.158769, 0.559808, 0.813270,
		34.538704, 28.438208, 49.204044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302383, 28.241652, 48.843407>,  <34.649841, 28.046343, 48.634754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302383, 28.241652, 48.843407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050701, 28.254631, 49.154030>,  <34.899693, 28.262419, 49.340405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050701, 28.254631, 49.154030>,  <35.302383, 28.241652, 48.843407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050701, 28.254631, 49.154030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509205, -0.737632, 0.443407,
		0.587202, 0.674423, 0.447602,
		-0.629209, 0.032448, 0.776558,
		34.861938, 28.264366, 49.386997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665462, 27.832767, 49.396965>,  <35.302383, 28.241652, 48.843407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665462, 27.832767, 49.396965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298904, 27.858942, 49.554924>,  <35.078972, 27.874647, 49.649700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298904, 27.858942, 49.554924>,  <35.665462, 27.832767, 49.396965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298904, 27.858942, 49.554924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198611, -0.782211, 0.590508,
		0.347536, 0.619567, 0.703815,
		-0.916391, 0.065438, 0.394899,
		35.023987, 27.878572, 49.673393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619698, 27.903646, 50.140854>,  <35.665462, 27.832767, 49.396965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619698, 27.903646, 50.140854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330692, 27.676014, 49.983822>,  <35.157288, 27.539434, 49.889603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330692, 27.676014, 49.983822>,  <35.619698, 27.903646, 50.140854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330692, 27.676014, 49.983822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343660, -0.788347, 0.510301,
		-0.599888, 0.233789, 0.765164,
		-0.722518, -0.569080, -0.392576,
		35.113937, 27.505289, 49.866051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356495, 27.423361, 50.611786>,  <35.619698, 27.903646, 50.140854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356495, 27.423361, 50.611786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265827, 27.243065, 50.266426>,  <35.211426, 27.134888, 50.059212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265827, 27.243065, 50.266426>,  <35.356495, 27.423361, 50.611786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265827, 27.243065, 50.266426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522017, -0.804615, 0.283006,
		-0.822265, -0.386559, 0.417676,
		-0.226670, -0.450740, -0.863397,
		35.197826, 27.107843, 50.007408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044941, 27.312065, 50.349060>,  <35.356495, 27.423361, 50.611786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044941, 27.312065, 50.349060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130756, 27.112982, 50.685219>,  <36.182247, 26.993532, 50.886913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130756, 27.112982, 50.685219>,  <36.044941, 27.312065, 50.349060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130756, 27.112982, 50.685219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669792, -0.551273, -0.497470,
		0.710881, 0.669615, 0.215092,
		0.214538, -0.497709, 0.840392,
		36.195118, 26.963669, 50.937336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736485, 26.760771, 50.702145>,  <36.044941, 27.312065, 50.349060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736485, 26.760771, 50.702145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357624, 26.801069, 50.580318>,  <35.130310, 26.825249, 50.507225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357624, 26.801069, 50.580318>,  <35.736485, 26.760771, 50.702145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357624, 26.801069, 50.580318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077575, -0.993158, -0.087286,
		-0.311273, -0.059046, 0.948484,
		-0.947149, 0.100748, -0.304563,
		35.073479, 26.831293, 50.488949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259834, 26.563858, 51.194851>,  <35.736485, 26.760771, 50.702145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259834, 26.563858, 51.194851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137394, 26.505762, 50.818508>,  <35.063931, 26.470905, 50.592705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137394, 26.505762, 50.818508>,  <35.259834, 26.563858, 51.194851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137394, 26.505762, 50.818508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075750, -0.988876, 0.128006,
		-0.948981, -0.032087, 0.313697,
		-0.306100, -0.145238, -0.940855,
		35.045563, 26.462191, 50.536251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856510, 25.987347, 51.228363>,  <35.259834, 26.563858, 51.194851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856510, 25.987347, 51.228363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928989, 26.022909, 50.836597>,  <34.972477, 26.044247, 50.601536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928989, 26.022909, 50.836597>,  <34.856510, 25.987347, 51.228363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928989, 26.022909, 50.836597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236089, -0.970715, -0.044439,
		-0.954687, -0.223178, -0.196886,
		0.181202, 0.088908, -0.979419,
		34.983349, 26.049582, 50.542770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392582, 25.530256, 50.877724>,  <34.856510, 25.987347, 51.228363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392582, 25.530256, 50.877724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744740, 25.582590, 50.695393>,  <34.956036, 25.613991, 50.585995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744740, 25.582590, 50.695393>,  <34.392582, 25.530256, 50.877724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744740, 25.582590, 50.695393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157559, -0.987288, 0.020930,
		-0.447299, -0.090247, -0.889820,
		0.880397, 0.130837, -0.455832,
		35.008858, 25.621841, 50.558643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400295, 25.269945, 50.246502>,  <34.392582, 25.530256, 50.877724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400295, 25.269945, 50.246502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772991, 25.257175, 50.391190>,  <34.996609, 25.249514, 50.478001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772991, 25.257175, 50.391190>,  <34.400295, 25.269945, 50.246502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772991, 25.257175, 50.391190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002952, -0.995429, -0.095460,
		0.363114, 0.090012, -0.927387,
		0.931740, -0.031925, 0.361719,
		35.052513, 25.247599, 50.499706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635983, 24.862000, 49.765472>,  <34.400295, 25.269945, 50.246502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635983, 24.862000, 49.765472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845184, 24.857002, 50.106369>,  <34.970707, 24.854004, 50.310905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845184, 24.857002, 50.106369>,  <34.635983, 24.862000, 49.765472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845184, 24.857002, 50.106369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031895, -0.998905, -0.034217,
		0.851733, 0.045077, -0.522033,
		0.523004, -0.012494, 0.852239,
		35.002087, 24.853254, 50.362041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783592, 24.411562, 50.341114>,  <34.635983, 24.862000, 49.765472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783592, 24.411562, 50.341114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967518, 24.169823, 50.080856>,  <35.077873, 24.024780, 49.924702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967518, 24.169823, 50.080856>,  <34.783592, 24.411562, 50.341114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967518, 24.169823, 50.080856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111919, 0.766290, -0.632672,
		0.880933, 0.218095, 0.419991,
		0.459817, -0.604346, -0.650641,
		35.105465, 23.988520, 49.885666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513626, 24.734875, 50.063568>,  <34.783592, 24.411562, 50.341114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513626, 24.734875, 50.063568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349876, 24.476423, 49.805908>,  <35.251625, 24.321352, 49.651314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349876, 24.476423, 49.805908>,  <35.513626, 24.734875, 50.063568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349876, 24.476423, 49.805908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046856, 0.690199, -0.722101,
		0.911161, -0.325795, -0.252277,
		-0.409378, -0.646130, -0.644147,
		35.227062, 24.282585, 49.612663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937447, 24.619930, 49.438877>,  <35.513626, 24.734875, 50.063568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937447, 24.619930, 49.438877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554092, 24.574501, 49.334106>,  <35.324081, 24.547243, 49.271244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554092, 24.574501, 49.334106>,  <35.937447, 24.619930, 49.438877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554092, 24.574501, 49.334106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140781, 0.610145, -0.779682,
		0.248364, -0.784108, -0.568762,
		-0.958382, -0.113574, -0.261926,
		35.266579, 24.540428, 49.255527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810432, 24.393099, 48.601372>,  <35.937447, 24.619930, 49.438877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810432, 24.393099, 48.601372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506584, 24.616554, 48.734581>,  <35.324276, 24.750628, 48.814507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506584, 24.616554, 48.734581>,  <35.810432, 24.393099, 48.601372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506584, 24.616554, 48.734581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051975, 0.562562, -0.825120,
		-0.648290, -0.609466, -0.456367,
		-0.759618, 0.558637, 0.333026,
		35.278698, 24.784145, 48.834488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372360, 24.431786, 48.038055>,  <35.810432, 24.393099, 48.601372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372360, 24.431786, 48.038055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336094, 24.727259, 48.305225>,  <35.314335, 24.904543, 48.465527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336094, 24.727259, 48.305225>,  <35.372360, 24.431786, 48.038055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336094, 24.727259, 48.305225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059705, 0.665449, -0.744051,
		-0.994090, -0.107342, -0.016233,
		-0.090670, 0.738685, 0.667925,
		35.308891, 24.948864, 48.505604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908279, 24.893024, 47.730900>,  <35.372360, 24.431786, 48.038055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908279, 24.893024, 47.730900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122105, 25.110968, 47.989315>,  <35.250401, 25.241734, 48.144363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122105, 25.110968, 47.989315>,  <34.908279, 24.893024, 47.730900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122105, 25.110968, 47.989315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017782, 0.757010, -0.653162,
		-0.844941, 0.360645, 0.394982,
		0.534564, 0.544859, 0.646041,
		35.282475, 25.274426, 48.183128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515907, 25.472353, 47.887337>,  <34.908279, 24.893024, 47.730900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515907, 25.472353, 47.887337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899323, 25.575626, 47.935593>,  <35.129372, 25.637590, 47.964546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899323, 25.575626, 47.935593>,  <34.515907, 25.472353, 47.887337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899323, 25.575626, 47.935593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086567, 0.667123, -0.739901,
		-0.271513, 0.698777, 0.661810,
		0.958534, 0.258183, 0.120641,
		35.186882, 25.653082, 47.971786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519913, 26.199774, 47.933563>,  <34.515907, 25.472353, 47.887337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519913, 26.199774, 47.933563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886322, 26.088238, 47.818226>,  <35.106167, 26.021317, 47.749023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886322, 26.088238, 47.818226>,  <34.519913, 26.199774, 47.933563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886322, 26.088238, 47.818226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021186, 0.751483, -0.659412,
		0.400557, 0.597930, 0.694287,
		0.916027, -0.278841, -0.288344,
		35.161129, 26.004585, 47.731724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700436, 26.876558, 47.634407>,  <34.519913, 26.199774, 47.933563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700436, 26.876558, 47.634407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020985, 26.648363, 47.562462>,  <35.213314, 26.511446, 47.519295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020985, 26.648363, 47.562462>,  <34.700436, 26.876558, 47.634407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020985, 26.648363, 47.562462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348340, 0.689517, -0.635000,
		0.486276, 0.446218, 0.751282,
		0.801370, -0.570487, -0.179860,
		35.261395, 26.477217, 47.508503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378815, 27.299492, 47.632366>,  <34.700436, 26.876558, 47.634407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378815, 27.299492, 47.632366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421402, 26.982763, 47.391804>,  <35.446953, 26.792727, 47.247467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421402, 26.982763, 47.391804>,  <35.378815, 27.299492, 47.632366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421402, 26.982763, 47.391804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234245, 0.607790, -0.758762,
		0.966330, -0.060091, 0.250191,
		0.106469, -0.791821, -0.601402,
		35.453342, 26.745216, 47.211384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003349, 27.516012, 47.197033>,  <35.378815, 27.299492, 47.632366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003349, 27.516012, 47.197033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824768, 27.194918, 47.038895>,  <35.717617, 27.002262, 46.944012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824768, 27.194918, 47.038895>,  <36.003349, 27.516012, 47.197033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824768, 27.194918, 47.038895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194416, 0.344242, -0.918531,
		0.873430, -0.486944, 0.002375,
		-0.446456, -0.802734, -0.395341,
		35.690830, 26.954098, 46.920292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481041, 27.301306, 46.749477>,  <36.003349, 27.516012, 47.197033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481041, 27.301306, 46.749477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135532, 27.132090, 46.639977>,  <35.928226, 27.030560, 46.574276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135532, 27.132090, 46.639977>,  <36.481041, 27.301306, 46.749477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135532, 27.132090, 46.639977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132781, 0.332979, -0.933538,
		0.486080, -0.842710, -0.231445,
		-0.863768, -0.423043, -0.273750,
		35.876400, 27.005177, 46.557850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660969, 27.107073, 46.074917>,  <36.481041, 27.301306, 46.749477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660969, 27.107073, 46.074917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261826, 27.126829, 46.092045>,  <36.022339, 27.138683, 46.102322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261826, 27.126829, 46.092045>,  <36.660969, 27.107073, 46.074917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261826, 27.126829, 46.092045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019836, 0.395448, -0.918274,
		-0.062290, -0.917159, -0.393622,
		-0.997861, 0.049391, 0.042825,
		35.962467, 27.141645, 46.104893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342464, 26.918165, 45.429470>,  <36.660969, 27.107073, 46.074917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342464, 26.918165, 45.429470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043934, 27.116871, 45.606655>,  <35.864815, 27.236095, 45.712967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043934, 27.116871, 45.606655>,  <36.342464, 26.918165, 45.429470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043934, 27.116871, 45.606655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012269, 0.675689, -0.737085,
		-0.665465, -0.544672, -0.510381,
		-0.746328, 0.496766, 0.442965,
		35.820034, 27.265900, 45.739544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951355, 27.199276, 44.852699>,  <36.342464, 26.918165, 45.429470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951355, 27.199276, 44.852699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843494, 27.421267, 45.167480>,  <35.778778, 27.554461, 45.356350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843494, 27.421267, 45.167480>,  <35.951355, 27.199276, 44.852699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843494, 27.421267, 45.167480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144751, 0.784574, -0.602902,
		-0.952017, -0.276484, -0.131228,
		-0.269651, 0.554977, 0.786949,
		35.762600, 27.587759, 45.403564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292267, 27.489138, 44.586594>,  <35.951355, 27.199276, 44.852699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292267, 27.489138, 44.586594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476990, 27.683517, 44.883400>,  <35.587822, 27.800146, 45.061485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476990, 27.683517, 44.883400>,  <35.292267, 27.489138, 44.586594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476990, 27.683517, 44.883400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024605, 0.843261, -0.536940,
		-0.886642, 0.229703, 0.401377,
		0.461802, 0.485949, 0.742019,
		35.615532, 27.829302, 45.106007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860683, 27.963327, 44.757183>,  <35.292267, 27.489138, 44.586594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860683, 27.963327, 44.757183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199776, 28.120127, 44.900116>,  <35.403233, 28.214207, 44.985874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199776, 28.120127, 44.900116>,  <34.860683, 27.963327, 44.757183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199776, 28.120127, 44.900116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152695, 0.825507, -0.543343,
		-0.507967, 0.406048, 0.759667,
		0.847734, 0.391998, 0.357329,
		35.454098, 28.237726, 45.007317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776165, 28.655153, 44.951668>,  <34.860683, 27.963327, 44.757183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776165, 28.655153, 44.951668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167564, 28.633423, 44.872074>,  <35.402405, 28.620384, 44.824318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167564, 28.633423, 44.872074>,  <34.776165, 28.655153, 44.951668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167564, 28.633423, 44.872074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080226, 0.788500, -0.609780,
		0.190025, 0.612631, 0.767185,
		0.978496, -0.054325, -0.198984,
		35.461113, 28.617125, 44.812378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022690, 29.250164, 45.087418>,  <34.776165, 28.655153, 44.951668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022690, 29.250164, 45.087418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285275, 29.088419, 44.832687>,  <35.442825, 28.991371, 44.679848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285275, 29.088419, 44.832687>,  <35.022690, 29.250164, 45.087418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285275, 29.088419, 44.832687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168876, 0.743994, -0.646493,
		0.735213, 0.531943, 0.420117,
		0.656463, -0.404363, -0.636826,
		35.482212, 28.967110, 44.641640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299675, 29.843559, 44.825142>,  <35.022690, 29.250164, 45.087418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299675, 29.843559, 44.825142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399128, 29.549192, 44.573235>,  <35.458801, 29.372572, 44.422092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399128, 29.549192, 44.573235>,  <35.299675, 29.843559, 44.825142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399128, 29.549192, 44.573235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074591, 0.633703, -0.769971,
		0.965720, 0.238418, 0.102669,
		0.248637, -0.735919, -0.629764,
		35.473721, 29.328417, 44.384304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907162, 30.083746, 44.391167>,  <35.299675, 29.843559, 44.825142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907162, 30.083746, 44.391167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721581, 29.795975, 44.184410>,  <35.610233, 29.623312, 44.060356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721581, 29.795975, 44.184410>,  <35.907162, 30.083746, 44.391167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721581, 29.795975, 44.184410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041818, 0.565052, -0.823995,
		0.884875, -0.403906, -0.232070,
		-0.463948, -0.719428, -0.516891,
		35.582397, 29.580147, 44.029343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188179, 30.007904, 43.720810>,  <35.907162, 30.083746, 44.391167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188179, 30.007904, 43.720810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830563, 29.836842, 43.667435>,  <35.615993, 29.734203, 43.635410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830563, 29.836842, 43.667435>,  <36.188179, 30.007904, 43.720810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830563, 29.836842, 43.667435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124561, 0.523406, -0.842930,
		0.430323, -0.736992, -0.521215,
		-0.894039, -0.427655, -0.133433,
		35.562351, 29.708546, 43.627403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134068, 29.997320, 43.024139>,  <36.188179, 30.007904, 43.720810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134068, 29.997320, 43.024139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761658, 29.957567, 43.164604>,  <35.538212, 29.933716, 43.248882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761658, 29.957567, 43.164604>,  <36.134068, 29.997320, 43.024139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761658, 29.957567, 43.164604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341369, 0.577460, -0.741625,
		-0.129081, -0.810348, -0.571555,
		-0.931024, -0.099382, 0.351166,
		35.482349, 29.927753, 43.269955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744858, 29.828823, 42.396931>,  <36.134068, 29.997320, 43.024139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744858, 29.828823, 42.396931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478722, 29.951048, 42.669388>,  <35.319038, 30.024384, 42.832863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478722, 29.951048, 42.669388>,  <35.744858, 29.828823, 42.396931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478722, 29.951048, 42.669388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438462, 0.578503, -0.687812,
		-0.604210, -0.756285, -0.250926,
		-0.665343, 0.305561, 0.681140,
		35.279118, 30.042717, 42.873730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142609, 29.746475, 42.098682>,  <35.744858, 29.828823, 42.396931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142609, 29.746475, 42.098682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093811, 30.026693, 42.379921>,  <35.064533, 30.194824, 42.548664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093811, 30.026693, 42.379921>,  <35.142609, 29.746475, 42.098682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093811, 30.026693, 42.379921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429088, 0.601546, -0.673814,
		-0.894986, -0.383895, 0.227210,
		-0.121997, 0.700548, 0.703100,
		35.057213, 30.236858, 42.590851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561531, 30.039862, 41.859684>,  <35.142609, 29.746475, 42.098682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561531, 30.039862, 41.859684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709064, 30.307178, 42.118095>,  <34.797585, 30.467569, 42.273140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709064, 30.307178, 42.118095>,  <34.561531, 30.039862, 41.859684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709064, 30.307178, 42.118095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426334, 0.739239, -0.521311,
		-0.825954, -0.083144, 0.557572,
		0.368835, 0.668291, 0.646024,
		34.819714, 30.507666, 42.311901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956802, 30.485176, 42.043823>,  <34.561531, 30.039862, 41.859684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956802, 30.485176, 42.043823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307674, 30.668917, 42.099743>,  <34.518200, 30.779161, 42.133293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307674, 30.668917, 42.099743>,  <33.956802, 30.485176, 42.043823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307674, 30.668917, 42.099743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372469, 0.834710, -0.405618,
		-0.303010, 0.303732, 0.903289,
		0.877184, 0.459354, 0.139795,
		34.570831, 30.806723, 42.141682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754841, 31.072918, 42.220592>,  <33.956802, 30.485176, 42.043823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754841, 31.072918, 42.220592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125175, 31.127794, 42.079731>,  <34.347374, 31.160719, 41.995213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125175, 31.127794, 42.079731>,  <33.754841, 31.072918, 42.220592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125175, 31.127794, 42.079731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269308, 0.893218, -0.360049,
		0.265157, 0.428183, 0.863916,
		0.925832, 0.137190, -0.352156,
		34.402924, 31.168951, 41.974083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750729, 31.749613, 42.058956>,  <33.754841, 31.072918, 42.220592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750729, 31.749613, 42.058956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095818, 31.662138, 41.876579>,  <34.302872, 31.609653, 41.767151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095818, 31.662138, 41.876579>,  <33.750729, 31.749613, 42.058956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095818, 31.662138, 41.876579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095167, 0.815328, -0.571125,
		0.496642, 0.536114, 0.682590,
		0.862722, -0.218685, -0.455947,
		34.354633, 31.596533, 41.739796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117531, 32.388733, 42.005478>,  <33.750729, 31.749613, 42.058956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117531, 32.388733, 42.005478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283222, 32.150322, 41.730328>,  <34.382637, 32.007275, 41.565239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283222, 32.150322, 41.730328>,  <34.117531, 32.388733, 42.005478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283222, 32.150322, 41.730328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126262, 0.786084, -0.605086,
		0.901373, 0.163791, 0.400873,
		0.414228, -0.596023, -0.687875,
		34.407490, 31.971516, 41.523964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588619, 32.810047, 41.577240>,  <34.117531, 32.388733, 42.005478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588619, 32.810047, 41.577240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540142, 32.488552, 41.344238>,  <34.511055, 32.295654, 41.204437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540142, 32.488552, 41.344238>,  <34.588619, 32.810047, 41.577240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540142, 32.488552, 41.344238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082607, 0.576630, -0.812818,
		0.989185, -0.146629, -0.003491,
		-0.121195, -0.803740, -0.582507,
		34.503784, 32.247429, 41.169487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082626, 32.826931, 41.094807>,  <34.588619, 32.810047, 41.577240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082626, 32.826931, 41.094807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793629, 32.607533, 40.926445>,  <34.620232, 32.475895, 40.825428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793629, 32.607533, 40.926445>,  <35.082626, 32.826931, 41.094807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793629, 32.607533, 40.926445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023974, 0.588545, -0.808109,
		0.690961, -0.593945, -0.412071,
		-0.722494, -0.548493, -0.420901,
		34.576881, 32.442986, 40.800175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235855, 32.708500, 40.394684>,  <35.082626, 32.826931, 41.094807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235855, 32.708500, 40.394684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846096, 32.622074, 40.369801>,  <34.612240, 32.570221, 40.354870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846096, 32.622074, 40.369801>,  <35.235855, 32.708500, 40.394684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846096, 32.622074, 40.369801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042729, 0.449574, -0.892220,
		0.220741, -0.866718, -0.447296,
		-0.974396, -0.216062, -0.062205,
		34.553776, 32.557255, 40.351139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114403, 32.602276, 39.708237>,  <35.235855, 32.708500, 40.394684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114403, 32.602276, 39.708237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739250, 32.641609, 39.841324>,  <34.514156, 32.665207, 39.921177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739250, 32.641609, 39.841324>,  <35.114403, 32.602276, 39.708237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739250, 32.641609, 39.841324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248185, 0.479979, -0.841442,
		-0.242440, -0.871752, -0.425760,
		-0.937885, 0.098332, 0.332721,
		34.457886, 32.671108, 39.941139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754978, 32.357021, 39.138565>,  <35.114403, 32.602276, 39.708237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754978, 32.357021, 39.138565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504997, 32.594208, 39.341671>,  <34.355007, 32.736519, 39.463535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504997, 32.594208, 39.341671>,  <34.754978, 32.357021, 39.138565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504997, 32.594208, 39.341671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160406, 0.539014, -0.826882,
		-0.764005, -0.598211, -0.241743,
		-0.624953, 0.592965, 0.507766,
		34.317513, 32.772099, 39.493999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254772, 32.391876, 38.702358>,  <34.754978, 32.357021, 39.138565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254772, 32.391876, 38.702358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230919, 32.712368, 38.940510>,  <34.216606, 32.904663, 39.083401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230919, 32.712368, 38.940510>,  <34.254772, 32.391876, 38.702358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230919, 32.712368, 38.940510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098396, 0.588814, -0.802257,
		-0.993359, -0.106427, 0.043722,
		-0.059638, 0.801231, 0.595376,
		34.213028, 32.952736, 39.119122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911900, 32.859436, 38.292229>,  <34.254772, 32.391876, 38.702358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911900, 32.859436, 38.292229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091393, 33.085037, 38.569511>,  <34.199089, 33.220398, 38.735882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091393, 33.085037, 38.569511>,  <33.911900, 32.859436, 38.292229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091393, 33.085037, 38.569511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295733, 0.638268, -0.710743,
		-0.843314, 0.523940, 0.119619,
		0.448735, 0.564004, 0.693207,
		34.226013, 33.254238, 38.777473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576099, 33.456051, 38.142952>,  <33.911900, 32.859436, 38.292229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576099, 33.456051, 38.142952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912140, 33.526749, 38.348083>,  <34.113766, 33.569168, 38.471161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912140, 33.526749, 38.348083>,  <33.576099, 33.456051, 38.142952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912140, 33.526749, 38.348083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266746, 0.688601, -0.674296,
		-0.472312, 0.703271, 0.531348,
		0.840100, 0.176743, 0.512829,
		34.164169, 33.579773, 38.501934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570915, 34.139080, 38.157055>,  <33.576099, 33.456051, 38.142952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570915, 34.139080, 38.157055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949623, 34.056965, 38.256245>,  <34.176846, 34.007694, 38.315758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949623, 34.056965, 38.256245>,  <33.570915, 34.139080, 38.157055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949623, 34.056965, 38.256245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315770, 0.742055, -0.591307,
		-0.062621, 0.638132, 0.767376,
		0.946767, -0.205286, 0.247971,
		34.233654, 33.995380, 38.330635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876190, 34.719337, 38.408279>,  <33.570915, 34.139080, 38.157055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876190, 34.719337, 38.408279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187328, 34.492836, 38.299240>,  <34.374012, 34.356934, 38.233818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187328, 34.492836, 38.299240>,  <33.876190, 34.719337, 38.408279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187328, 34.492836, 38.299240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335346, 0.740830, -0.581992,
		0.531503, 0.361287, 0.766144,
		0.777848, -0.566254, -0.272597,
		34.420681, 34.322960, 38.217461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478546, 35.253777, 38.443233>,  <33.876190, 34.719337, 38.408279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478546, 35.253777, 38.443233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592602, 34.938072, 38.225697>,  <34.661034, 34.748650, 38.095173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592602, 34.938072, 38.225697>,  <34.478546, 35.253777, 38.443233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592602, 34.938072, 38.225697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407539, 0.613385, -0.676514,
		0.867531, -0.028738, 0.496553,
		0.285137, -0.789261, -0.543842,
		34.678143, 34.701294, 38.062546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209053, 35.397179, 38.290596>,  <34.478546, 35.253777, 38.443233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209053, 35.397179, 38.290596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047668, 35.139111, 38.031067>,  <34.950836, 34.984272, 37.875347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047668, 35.139111, 38.031067>,  <35.209053, 35.397179, 38.290596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047668, 35.139111, 38.031067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479450, 0.454894, -0.750466,
		0.779324, -0.613865, 0.125793,
		-0.403463, -0.645168, -0.648827,
		34.926628, 34.945560, 37.836418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751564, 35.235985, 37.806068>,  <35.209053, 35.397179, 38.290596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751564, 35.235985, 37.806068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437340, 35.105972, 37.595451>,  <35.248806, 35.027966, 37.469082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437340, 35.105972, 37.595451>,  <35.751564, 35.235985, 37.806068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437340, 35.105972, 37.595451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389794, 0.400945, -0.829038,
		0.480576, -0.856504, -0.188273,
		-0.785562, -0.325028, -0.526545,
		35.201672, 35.008465, 37.437489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906948, 34.924149, 37.159988>,  <35.751564, 35.235985, 37.806068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906948, 34.924149, 37.159988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538696, 35.079506, 37.144035>,  <35.317745, 35.172722, 37.134464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538696, 35.079506, 37.144035>,  <35.906948, 34.924149, 37.159988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538696, 35.079506, 37.144035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204552, 0.392787, -0.896592,
		-0.332569, -0.833586, -0.441058,
		-0.920629, 0.388398, -0.039883,
		35.262508, 35.196026, 37.132069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369473, 35.183392, 36.582993>,  <35.906948, 34.924149, 37.159988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369473, 35.183392, 36.582993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698757, 35.005165, 36.442257>,  <36.896328, 34.898228, 36.357815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698757, 35.005165, 36.442257>,  <36.369473, 35.183392, 36.582993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698757, 35.005165, 36.442257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119108, -0.741478, 0.660321,
		-0.555098, -0.501678, -0.663465,
		0.823213, -0.445566, -0.351839,
		36.945721, 34.871494, 36.336704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153805, 34.438236, 36.423740>,  <36.369473, 35.183392, 36.582993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153805, 34.438236, 36.423740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549011, 34.432369, 36.485199>,  <36.786137, 34.428848, 36.522072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549011, 34.432369, 36.485199>,  <36.153805, 34.438236, 36.423740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549011, 34.432369, 36.485199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128041, -0.633762, 0.762858,
		0.086181, -0.773389, -0.628046,
		0.988018, -0.014671, 0.153643,
		36.845417, 34.427967, 36.531292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240692, 33.784241, 36.739216>,  <36.153805, 34.438236, 36.423740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240692, 33.784241, 36.739216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597057, 33.956921, 36.795662>,  <36.810875, 34.060528, 36.829529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597057, 33.956921, 36.795662>,  <36.240692, 33.784241, 36.739216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597057, 33.956921, 36.795662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174358, -0.611993, 0.771404,
		0.419378, -0.662646, -0.620501,
		0.890910, 0.431700, 0.141119,
		36.864330, 34.086430, 36.837997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746098, 33.227707, 36.840126>,  <36.240692, 33.784241, 36.739216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746098, 33.227707, 36.840126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875195, 33.557579, 37.025917>,  <36.952652, 33.755501, 37.137390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875195, 33.557579, 37.025917>,  <36.746098, 33.227707, 36.840126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875195, 33.557579, 37.025917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241546, -0.546252, 0.802038,
		0.915146, -0.146660, -0.375497,
		0.322743, 0.824682, 0.464475,
		36.972019, 33.804985, 37.165260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424862, 33.052486, 37.108597>,  <36.746098, 33.227707, 36.840126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424862, 33.052486, 37.108597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292252, 33.364418, 37.320995>,  <37.212685, 33.551579, 37.448437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292252, 33.364418, 37.320995>,  <37.424862, 33.052486, 37.108597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292252, 33.364418, 37.320995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326448, -0.433243, 0.840079,
		0.885168, 0.451850, -0.110943,
		-0.331524, 0.779828, 0.530999,
		37.192795, 33.598366, 37.480293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954216, 33.410400, 37.564568>,  <37.424862, 33.052486, 37.108597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954216, 33.410400, 37.564568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612236, 33.502323, 37.750580>,  <37.407047, 33.557476, 37.862186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612236, 33.502323, 37.750580>,  <37.954216, 33.410400, 37.564568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612236, 33.502323, 37.750580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370479, -0.356947, 0.857516,
		0.363053, 0.905416, 0.220033,
		-0.854949, 0.229806, 0.465028,
		37.355751, 33.571266, 37.890087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131245, 33.744244, 38.144627>,  <37.954216, 33.410400, 37.564568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131245, 33.744244, 38.144627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755226, 33.663658, 38.254704>,  <37.529617, 33.615307, 38.320751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755226, 33.663658, 38.254704>,  <38.131245, 33.744244, 38.144627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755226, 33.663658, 38.254704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329405, -0.327247, 0.885665,
		-0.088369, 0.923214, 0.373989,
		-0.940044, -0.201459, 0.275192,
		37.473213, 33.603222, 38.337261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145760, 33.831543, 38.938381>,  <38.131245, 33.744244, 38.144627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145760, 33.831543, 38.938381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823360, 33.623764, 38.824863>,  <37.629921, 33.499096, 38.756752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823360, 33.623764, 38.824863>,  <38.145760, 33.831543, 38.938381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823360, 33.623764, 38.824863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134374, -0.627506, 0.766928,
		-0.576460, 0.580011, 0.575571,
		-0.806001, -0.519445, -0.283794,
		37.581558, 33.467930, 38.739727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836834, 33.680367, 39.547127>,  <38.145760, 33.831543, 38.938381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836834, 33.680367, 39.547127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641640, 33.425007, 39.309029>,  <37.524525, 33.271793, 39.166168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641640, 33.425007, 39.309029>,  <37.836834, 33.680367, 39.547127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641640, 33.425007, 39.309029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021815, -0.690665, 0.722846,
		-0.872579, 0.339753, 0.350961,
		-0.487985, -0.638396, -0.595248,
		37.495243, 33.233486, 39.130455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275913, 33.346931, 39.960510>,  <37.836834, 33.680367, 39.547127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275913, 33.346931, 39.960510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366867, 33.092033, 39.665970>,  <37.421440, 32.939095, 39.489246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366867, 33.092033, 39.665970>,  <37.275913, 33.346931, 39.960510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366867, 33.092033, 39.665970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011016, -0.754425, 0.656294,
		-0.973743, -0.157342, -0.164524,
		0.227384, -0.637249, -0.736350,
		37.435081, 32.900860, 39.445065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863228, 32.723431, 40.062878>,  <37.275913, 33.346931, 39.960510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863228, 32.723431, 40.062878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169506, 32.596169, 39.839279>,  <37.353275, 32.519810, 39.705120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169506, 32.596169, 39.839279>,  <36.863228, 32.723431, 40.062878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169506, 32.596169, 39.839279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084771, -0.811593, 0.578040,
		-0.637589, -0.489992, -0.594465,
		0.765698, -0.318159, -0.559000,
		37.399216, 32.500721, 39.671577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752598, 32.110641, 39.878941>,  <36.863228, 32.723431, 40.062878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752598, 32.110641, 39.878941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131001, 32.105965, 39.749363>,  <37.358040, 32.103161, 39.671616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131001, 32.105965, 39.749363>,  <36.752598, 32.110641, 39.878941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131001, 32.105965, 39.749363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082386, -0.957862, 0.275159,
		-0.313508, -0.286990, -0.905179,
		0.946005, -0.011690, -0.323942,
		37.414803, 32.102459, 39.652180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872917, 31.533720, 39.408859>,  <36.752598, 32.110641, 39.878941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872917, 31.533720, 39.408859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206589, 31.634947, 39.604862>,  <37.406792, 31.695683, 39.722466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206589, 31.634947, 39.604862>,  <36.872917, 31.533720, 39.408859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206589, 31.634947, 39.604862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001154, -0.889302, 0.457318,
		0.551498, -0.380918, -0.742126,
		0.834175, 0.253067, 0.490009,
		37.456841, 31.710867, 39.751865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112457, 30.905703, 39.530624>,  <36.872917, 31.533720, 39.408859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112457, 30.905703, 39.530624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337349, 31.134325, 39.769699>,  <37.472282, 31.271498, 39.913143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337349, 31.134325, 39.769699>,  <37.112457, 30.905703, 39.530624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337349, 31.134325, 39.769699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304095, -0.814976, 0.493296,
		0.769044, -0.095591, -0.632008,
		0.562226, 0.571556, 0.597683,
		37.506016, 31.305792, 39.949005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752750, 30.671791, 39.453842>,  <37.112457, 30.905703, 39.530624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752750, 30.671791, 39.453842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725735, 30.857252, 39.807217>,  <37.709526, 30.968529, 40.019241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725735, 30.857252, 39.807217>,  <37.752750, 30.671791, 39.453842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725735, 30.857252, 39.807217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213420, -0.858251, 0.466751,
		0.974623, 0.220067, -0.040989,
		-0.067538, 0.463655, 0.883438,
		37.705475, 30.996349, 40.072247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283020, 30.256104, 39.913158>,  <37.752750, 30.671791, 39.453842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283020, 30.256104, 39.913158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083267, 30.469145, 40.186493>,  <37.963413, 30.596970, 40.350494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083267, 30.469145, 40.186493>,  <38.283020, 30.256104, 39.913158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083267, 30.469145, 40.186493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121002, -0.738118, 0.663732,
		0.857890, 0.414142, 0.304158,
		-0.499384, 0.532605, 0.683336,
		37.933453, 30.628927, 40.391495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709637, 30.335815, 40.510788>,  <38.283020, 30.256104, 39.913158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709637, 30.335815, 40.510788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321705, 30.352444, 40.606880>,  <38.088947, 30.362421, 40.664536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321705, 30.352444, 40.606880>,  <38.709637, 30.335815, 40.510788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321705, 30.352444, 40.606880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165597, -0.610866, 0.774223,
		0.178934, 0.790642, 0.585549,
		-0.969825, 0.041570, 0.240233,
		38.030758, 30.364914, 40.678951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764366, 30.343792, 41.242500>,  <38.709637, 30.335815, 40.510788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764366, 30.343792, 41.242500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385414, 30.254360, 41.150856>,  <38.158043, 30.200701, 41.095871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385414, 30.254360, 41.150856>,  <38.764366, 30.343792, 41.242500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385414, 30.254360, 41.150856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019861, -0.673259, 0.739140,
		-0.319504, 0.704794, 0.633390,
		-0.947377, -0.223578, -0.229107,
		38.101200, 30.187286, 41.082123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439865, 30.371641, 41.843212>,  <38.764366, 30.343792, 41.242500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439865, 30.371641, 41.843212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197430, 30.165895, 41.600529>,  <38.051968, 30.042448, 41.454918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197430, 30.165895, 41.600529>,  <38.439865, 30.371641, 41.843212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197430, 30.165895, 41.600529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243087, -0.606489, 0.757020,
		-0.757343, 0.606302, 0.242550,
		-0.606086, -0.514363, -0.606704,
		38.015602, 30.011587, 41.418518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678360, 30.338951, 42.128265>,  <38.439865, 30.371641, 41.843212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678360, 30.338951, 42.128265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733559, 30.038525, 41.870007>,  <37.766678, 29.858269, 41.715054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733559, 30.038525, 41.870007>,  <37.678360, 30.338951, 42.128265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733559, 30.038525, 41.870007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242965, -0.657632, 0.713084,
		-0.960170, 0.058468, -0.273232,
		0.137993, -0.751068, -0.645644,
		37.774956, 29.813204, 41.676315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201233, 29.816162, 42.293827>,  <37.678360, 30.338951, 42.128265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201233, 29.816162, 42.293827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532253, 29.666885, 42.126072>,  <37.730865, 29.577318, 42.025417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532253, 29.666885, 42.126072>,  <37.201233, 29.816162, 42.293827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532253, 29.666885, 42.126072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072271, -0.670013, 0.738823,
		-0.556717, -0.641724, -0.527500,
		0.827553, -0.373192, -0.419386,
		37.780518, 29.554928, 42.000256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253132, 29.076714, 42.135338>,  <37.201233, 29.816162, 42.293827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253132, 29.076714, 42.135338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587040, 29.247299, 42.274639>,  <37.787384, 29.349651, 42.358219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587040, 29.247299, 42.274639>,  <37.253132, 29.076714, 42.135338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587040, 29.247299, 42.274639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030727, -0.595436, 0.802815,
		0.549736, -0.680869, -0.483949,
		0.834773, 0.426466, 0.348254,
		37.837471, 29.375238, 42.379116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527653, 28.610277, 42.564018>,  <37.253132, 29.076714, 42.135338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527653, 28.610277, 42.564018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746216, 28.919596, 42.692673>,  <37.877354, 29.105186, 42.769867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746216, 28.919596, 42.692673>,  <37.527653, 28.610277, 42.564018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746216, 28.919596, 42.692673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173739, -0.480341, 0.859702,
		0.819298, -0.413870, -0.396815,
		0.546411, 0.773295, 0.321637,
		37.910141, 29.151585, 42.789165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063652, 28.227379, 43.003860>,  <37.527653, 28.610277, 42.564018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063652, 28.227379, 43.003860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036789, 28.612452, 43.108727>,  <38.020672, 28.843496, 43.171646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036789, 28.612452, 43.108727>,  <38.063652, 28.227379, 43.003860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036789, 28.612452, 43.108727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156902, -0.249302, 0.955631,
		0.985328, 0.105313, -0.134304,
		-0.067158, 0.962683, 0.262168,
		38.016640, 28.901257, 43.187378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606438, 28.359919, 43.476784>,  <38.063652, 28.227379, 43.003860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606438, 28.359919, 43.476784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306801, 28.617889, 43.537350>,  <38.127018, 28.772673, 43.573689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306801, 28.617889, 43.537350>,  <38.606438, 28.359919, 43.476784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306801, 28.617889, 43.537350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000507, -0.229124, 0.973397,
		0.662465, 0.729088, 0.171962,
		-0.749092, 0.644929, 0.151417,
		38.082073, 28.811369, 43.582775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929363, 28.813271, 43.940952>,  <38.606438, 28.359919, 43.476784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929363, 28.813271, 43.940952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534164, 28.838196, 43.997486>,  <38.297043, 28.853151, 44.031406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534164, 28.838196, 43.997486>,  <38.929363, 28.813271, 43.940952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534164, 28.838196, 43.997486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125512, -0.209408, 0.969740,
		0.090021, 0.975841, 0.199075,
		-0.988000, 0.062311, 0.141331,
		38.237766, 28.856890, 44.039886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694668, 29.300640, 44.450386>,  <38.929363, 28.813271, 43.940952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694668, 29.300640, 44.450386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384689, 29.048420, 44.433083>,  <38.198704, 28.897087, 44.422699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384689, 29.048420, 44.433083>,  <38.694668, 29.300640, 44.450386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384689, 29.048420, 44.433083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036354, -0.112798, 0.992953,
		-0.630986, 0.767908, 0.110334,
		-0.774942, -0.630550, -0.043257,
		38.152206, 28.859255, 44.420105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374569, 29.497963, 45.071484>,  <38.694668, 29.300640, 44.450386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374569, 29.497963, 45.071484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255096, 29.142355, 44.932671>,  <38.183411, 28.928989, 44.849384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255096, 29.142355, 44.932671>,  <38.374569, 29.497963, 45.071484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255096, 29.142355, 44.932671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049107, -0.377468, 0.924719,
		-0.953088, 0.259157, 0.156400,
		-0.298683, -0.889019, -0.347034,
		38.165493, 28.875648, 44.828560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881512, 29.224829, 45.603092>,  <38.374569, 29.497963, 45.071484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881512, 29.224829, 45.603092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010414, 28.906433, 45.398132>,  <38.087753, 28.715395, 45.275158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010414, 28.906433, 45.398132>,  <37.881512, 29.224829, 45.603092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010414, 28.906433, 45.398132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125892, -0.500433, 0.856573,
		-0.938245, -0.340540, -0.061057,
		0.322252, -0.795989, -0.512401,
		38.107090, 28.667637, 45.244411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527412, 28.759605, 46.064739>,  <37.881512, 29.224829, 45.603092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527412, 28.759605, 46.064739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805542, 28.575119, 45.844269>,  <37.972420, 28.464426, 45.711987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805542, 28.575119, 45.844269>,  <37.527412, 28.759605, 46.064739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805542, 28.575119, 45.844269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215708, -0.597633, 0.772208,
		-0.685561, -0.655829, -0.316060,
		0.695324, -0.461219, -0.551182,
		38.014141, 28.436754, 45.678913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530540, 28.134378, 46.261574>,  <37.527412, 28.759605, 46.064739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530540, 28.134378, 46.261574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900589, 28.136503, 46.109718>,  <38.122620, 28.137777, 46.018604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900589, 28.136503, 46.109718>,  <37.530540, 28.134378, 46.261574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900589, 28.136503, 46.109718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311308, -0.583004, 0.750463,
		-0.217343, -0.812452, -0.541002,
		0.925121, 0.005310, -0.379635,
		38.178123, 28.138096, 45.995827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722313, 27.415237, 46.389690>,  <37.530540, 28.134378, 46.261574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722313, 27.415237, 46.389690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057899, 27.619261, 46.313828>,  <38.259251, 27.741674, 46.268311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057899, 27.619261, 46.313828>,  <37.722313, 27.415237, 46.389690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057899, 27.619261, 46.313828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405430, -0.353391, 0.843055,
		0.362982, -0.784192, -0.503277,
		0.838970, 0.510058, -0.189660,
		38.309589, 27.772278, 46.256931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196037, 26.999681, 46.483109>,  <37.722313, 27.415237, 46.389690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196037, 26.999681, 46.483109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452114, 27.306803, 46.493172>,  <38.605759, 27.491076, 46.499210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452114, 27.306803, 46.493172>,  <38.196037, 26.999681, 46.483109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452114, 27.306803, 46.493172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464912, -0.413298, 0.782970,
		0.611564, -0.489555, -0.621551,
		0.640193, 0.767802, 0.025158,
		38.644173, 27.537144, 46.500721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899620, 26.721985, 46.493340>,  <38.196037, 26.999681, 46.483109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899620, 26.721985, 46.493340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848377, 27.075487, 46.673367>,  <38.817631, 27.287588, 46.781384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848377, 27.075487, 46.673367>,  <38.899620, 26.721985, 46.493340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848377, 27.075487, 46.673367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367042, -0.379336, 0.849343,
		0.921340, 0.274004, -0.275778,
		-0.128111, 0.883757, 0.450069,
		38.809944, 27.340614, 46.808388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529671, 26.863766, 46.878685>,  <38.899620, 26.721985, 46.493340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529671, 26.863766, 46.878685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248878, 27.089911, 47.051929>,  <39.080402, 27.225597, 47.155876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248878, 27.089911, 47.051929>,  <39.529671, 26.863766, 46.878685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248878, 27.089911, 47.051929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359978, -0.243066, 0.900741,
		0.614518, 0.788217, -0.032889,
		-0.701985, 0.565361, 0.433109,
		39.038284, 27.259520, 47.181862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830704, 27.163330, 47.379585>,  <39.529671, 26.863766, 46.878685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830704, 27.163330, 47.379585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445011, 27.205976, 47.476654>,  <39.213596, 27.231564, 47.534897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445011, 27.205976, 47.476654>,  <39.830704, 27.163330, 47.379585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445011, 27.205976, 47.476654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232610, -0.098603, 0.967559,
		0.127085, 0.989399, 0.070276,
		-0.964231, 0.106615, 0.242675,
		39.155743, 27.237961, 47.549458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853951, 27.386667, 48.098530>,  <39.830704, 27.163330, 47.379585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853951, 27.386667, 48.098530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471249, 27.282169, 48.047352>,  <39.241627, 27.219471, 48.016644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471249, 27.282169, 48.047352>,  <39.853951, 27.386667, 48.098530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471249, 27.282169, 48.047352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069076, -0.223226, 0.972316,
		-0.282576, 0.939106, 0.195526,
		-0.956755, -0.261247, -0.127948,
		39.184223, 27.203794, 48.008968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956726, 27.499174, 48.815002>,  <39.853951, 27.386667, 48.098530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956726, 27.499174, 48.815002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956505, 27.716642, 49.150723>,  <39.956371, 27.847122, 49.352154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956505, 27.716642, 49.150723>,  <39.956726, 27.499174, 48.815002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956505, 27.716642, 49.150723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258164, 0.810926, -0.525119,
		-0.966101, 0.216385, -0.140805,
		-0.000555, 0.543669, 0.839299,
		39.956337, 27.879744, 49.402512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407093, 27.880085, 48.880512>,  <39.956726, 27.499174, 48.815002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407093, 27.880085, 48.880512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677673, 28.092289, 49.084854>,  <39.840023, 28.219610, 49.207458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677673, 28.092289, 49.084854>,  <39.407093, 27.880085, 48.880512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677673, 28.092289, 49.084854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303755, 0.832861, -0.462683,
		-0.670929, 0.157809, 0.724535,
		0.676452, 0.530509, 0.510855,
		39.880608, 28.251442, 49.238110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111279, 28.446283, 49.014671>,  <39.407093, 27.880085, 48.880512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111279, 28.446283, 49.014671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493355, 28.559856, 49.048138>,  <39.722599, 28.628000, 49.068218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493355, 28.559856, 49.048138>,  <39.111279, 28.446283, 49.014671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493355, 28.559856, 49.048138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205255, 0.839004, -0.503928,
		-0.213280, 0.464171, 0.859684,
		0.955187, 0.283932, 0.083670,
		39.779911, 28.645037, 49.073238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078659, 29.062059, 49.448330>,  <39.111279, 28.446283, 49.014671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078659, 29.062059, 49.448330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402424, 29.064590, 49.213448>,  <39.596684, 29.066109, 49.072517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402424, 29.064590, 49.213448>,  <39.078659, 29.062059, 49.448330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402424, 29.064590, 49.213448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290686, 0.873156, -0.391279,
		0.510244, 0.487399, 0.708585,
		0.809415, 0.006328, -0.587203,
		39.645248, 29.066488, 49.037285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161110, 29.772085, 49.245167>,  <39.078659, 29.062059, 49.448330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161110, 29.772085, 49.245167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418304, 29.608744, 48.985996>,  <39.572620, 29.510738, 48.830494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418304, 29.608744, 48.985996>,  <39.161110, 29.772085, 49.245167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418304, 29.608744, 48.985996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122438, 0.780309, -0.613291,
		0.756025, 0.473671, 0.451733,
		0.642989, -0.408354, -0.647929,
		39.611202, 29.486237, 48.791618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486729, 30.326677, 49.000069>,  <39.161110, 29.772085, 49.245167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486729, 30.326677, 49.000069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569984, 30.046156, 48.727348>,  <39.619938, 29.877842, 48.563717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569984, 30.046156, 48.727348>,  <39.486729, 30.326677, 49.000069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569984, 30.046156, 48.727348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014025, 0.699133, -0.714854,
		0.977998, 0.139228, 0.155354,
		0.208141, -0.701305, -0.681798,
		39.632427, 29.835764, 48.522808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941303, 30.702267, 48.589954>,  <39.486729, 30.326677, 49.000069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941303, 30.702267, 48.589954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802917, 30.387932, 48.384911>,  <39.719887, 30.199331, 48.261883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802917, 30.387932, 48.384911>,  <39.941303, 30.702267, 48.589954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802917, 30.387932, 48.384911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001793, 0.546901, -0.837196,
		0.938246, -0.288721, -0.190618,
		-0.345965, -0.785837, -0.512609,
		39.699127, 30.152180, 48.231129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391602, 30.653414, 47.938248>,  <39.941303, 30.702267, 48.589954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391602, 30.653414, 47.938248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068127, 30.426035, 47.877731>,  <39.874043, 30.289608, 47.841423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068127, 30.426035, 47.877731>,  <40.391602, 30.653414, 47.938248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068127, 30.426035, 47.877731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086041, 0.368736, -0.925543,
		0.581908, -0.735461, -0.347103,
		-0.808690, -0.568446, -0.151290,
		39.825520, 30.255501, 47.832344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477188, 30.507698, 47.263790>,  <40.391602, 30.653414, 47.938248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477188, 30.507698, 47.263790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088615, 30.431643, 47.320595>,  <39.855473, 30.386009, 47.354675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088615, 30.431643, 47.320595>,  <40.477188, 30.507698, 47.263790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088615, 30.431643, 47.320595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180028, 0.200540, -0.963002,
		0.154624, -0.961057, -0.229041,
		-0.971433, -0.190137, 0.142009,
		39.797184, 30.374601, 47.363197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235516, 30.020010, 46.634613>,  <40.477188, 30.507698, 47.263790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235516, 30.020010, 46.634613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904629, 30.202785, 46.765411>,  <39.706097, 30.312450, 46.843891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904629, 30.202785, 46.765411>,  <40.235516, 30.020010, 46.634613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904629, 30.202785, 46.765411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264891, 0.196089, -0.944130,
		-0.495532, -0.867614, -0.041168,
		-0.827213, 0.456941, 0.326992,
		39.656464, 30.339869, 46.863510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726639, 29.796608, 46.171093>,  <40.235516, 30.020010, 46.634613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726639, 29.796608, 46.171093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566181, 30.115789, 46.351028>,  <39.469906, 30.307299, 46.458992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566181, 30.115789, 46.351028>,  <39.726639, 29.796608, 46.171093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566181, 30.115789, 46.351028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409361, 0.283157, -0.867321,
		-0.819458, -0.532064, 0.213066,
		-0.401140, 0.797954, 0.449841,
		39.445839, 30.355175, 46.485981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916348, 29.793758, 45.970627>,  <39.726639, 29.796608, 46.171093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916348, 29.793758, 45.970627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031570, 30.157381, 46.091053>,  <39.100704, 30.375555, 46.163307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031570, 30.157381, 46.091053>,  <38.916348, 29.793758, 45.970627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031570, 30.157381, 46.091053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444067, 0.405350, -0.799060,
		-0.848427, 0.096482, 0.520445,
		0.288057, 0.909056, 0.301065,
		39.117989, 30.430098, 46.181374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307774, 30.303736, 45.981163>,  <38.916348, 29.793758, 45.970627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307774, 30.303736, 45.981163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655861, 30.496565, 45.940506>,  <38.864712, 30.612263, 45.916111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655861, 30.496565, 45.940506>,  <38.307774, 30.303736, 45.981163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655861, 30.496565, 45.940506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359540, 0.480350, -0.799996,
		-0.336835, 0.732712, 0.591333,
		0.870214, 0.482075, -0.101640,
		38.916924, 30.641188, 45.910015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235683, 30.981915, 45.742863>,  <38.307774, 30.303736, 45.981163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235683, 30.981915, 45.742863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626465, 30.933163, 45.672760>,  <38.860931, 30.903912, 45.630699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626465, 30.933163, 45.672760>,  <38.235683, 30.981915, 45.742863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626465, 30.933163, 45.672760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111019, 0.411124, -0.904794,
		0.182327, 0.903395, 0.388116,
		0.976950, -0.121880, -0.175253,
		38.919548, 30.896599, 45.620186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471130, 31.568192, 45.526802>,  <38.235683, 30.981915, 45.742863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471130, 31.568192, 45.526802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751163, 31.312452, 45.399609>,  <38.919186, 31.159010, 45.323292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751163, 31.312452, 45.399609>,  <38.471130, 31.568192, 45.526802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751163, 31.312452, 45.399609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159864, 0.293681, -0.942441,
		0.695932, 0.710625, 0.103394,
		0.700087, -0.639346, -0.317986,
		38.961189, 31.120649, 45.304214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880272, 31.989456, 45.182022>,  <38.471130, 31.568192, 45.526802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880272, 31.989456, 45.182022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008274, 31.643074, 45.028282>,  <39.085075, 31.435246, 44.936039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008274, 31.643074, 45.028282>,  <38.880272, 31.989456, 45.182022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008274, 31.643074, 45.028282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044185, 0.391597, -0.919075,
		0.946386, 0.311089, 0.087050,
		0.320003, -0.865954, -0.384347,
		39.104275, 31.383287, 44.912979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429615, 32.075581, 44.742886>,  <38.880272, 31.989456, 45.182022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429615, 32.075581, 44.742886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332619, 31.714954, 44.599567>,  <39.274422, 31.498579, 44.513577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332619, 31.714954, 44.599567>,  <39.429615, 32.075581, 44.742886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332619, 31.714954, 44.599567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106968, 0.342223, -0.933510,
		0.964238, -0.264697, 0.013452,
		-0.242494, -0.901565, -0.358298,
		39.259872, 31.444485, 44.492077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933277, 32.008598, 44.258633>,  <39.429615, 32.075581, 44.742886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933277, 32.008598, 44.258633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615360, 31.779291, 44.178959>,  <39.424610, 31.641706, 44.131157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615360, 31.779291, 44.178959>,  <39.933277, 32.008598, 44.258633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615360, 31.779291, 44.178959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116442, 0.178058, -0.977106,
		0.595612, -0.799785, -0.074765,
		-0.794788, -0.573271, -0.199182,
		39.376923, 31.607309, 44.119205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126549, 31.529789, 43.708553>,  <39.933277, 32.008598, 44.258633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126549, 31.529789, 43.708553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728680, 31.568872, 43.721642>,  <39.489956, 31.592321, 43.729492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728680, 31.568872, 43.721642>,  <40.126549, 31.529789, 43.708553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728680, 31.568872, 43.721642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029457, 0.034621, -0.998966,
		-0.098741, -0.994613, -0.031558,
		-0.994677, 0.097709, 0.032716,
		39.430275, 31.598185, 43.731457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033012, 31.191566, 43.159534>,  <40.126549, 31.529789, 43.708553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033012, 31.191566, 43.159534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703918, 31.403490, 43.241905>,  <39.506462, 31.530645, 43.291328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703918, 31.403490, 43.241905>,  <40.033012, 31.191566, 43.159534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703918, 31.403490, 43.241905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135137, 0.169578, -0.976208,
		-0.552126, -0.830989, -0.067921,
		-0.822736, 0.529811, 0.205926,
		39.457096, 31.562433, 43.303684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393398, 30.977083, 42.795078>,  <40.033012, 31.191566, 43.159534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393398, 30.977083, 42.795078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289421, 31.354439, 42.877495>,  <39.227036, 31.580853, 42.926945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289421, 31.354439, 42.877495>,  <39.393398, 30.977083, 42.795078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289421, 31.354439, 42.877495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312898, 0.119572, -0.942230,
		-0.913524, -0.309392, 0.264102,
		-0.259939, 0.943387, 0.206040,
		39.211441, 31.637455, 42.939308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902340, 31.199354, 42.331696>,  <39.393398, 30.977083, 42.795078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902340, 31.199354, 42.331696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052174, 31.550913, 42.449829>,  <39.142075, 31.761848, 42.520710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052174, 31.550913, 42.449829>,  <38.902340, 31.199354, 42.331696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052174, 31.550913, 42.449829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200868, 0.387890, -0.899552,
		-0.905171, 0.277638, 0.321841,
		0.374589, 0.878896, 0.295338,
		39.164551, 31.814581, 42.538429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618191, 31.638937, 41.893135>,  <38.902340, 31.199354, 42.331696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618191, 31.638937, 41.893135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884853, 31.889832, 42.054203>,  <39.044853, 32.040367, 42.150845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884853, 31.889832, 42.054203>,  <38.618191, 31.638937, 41.893135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884853, 31.889832, 42.054203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017444, 0.553211, -0.832859,
		-0.745158, 0.548209, 0.379745,
		0.666660, 0.627236, 0.402667,
		39.084850, 32.078003, 42.175003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403355, 32.241306, 41.720589>,  <38.618191, 31.638937, 41.893135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403355, 32.241306, 41.720589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791874, 32.300106, 41.795399>,  <39.024986, 32.335384, 41.840286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791874, 32.300106, 41.795399>,  <38.403355, 32.241306, 41.720589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791874, 32.300106, 41.795399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061736, 0.603514, -0.794958,
		-0.229731, 0.783685, 0.577115,
		0.971294, 0.146997, 0.187028,
		39.083263, 32.344204, 41.851505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497791, 32.936207, 41.574352>,  <38.403355, 32.241306, 41.720589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497791, 32.936207, 41.574352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877796, 32.811737, 41.584507>,  <39.105801, 32.737053, 41.590599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877796, 32.811737, 41.584507>,  <38.497791, 32.936207, 41.574352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877796, 32.811737, 41.584507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232923, 0.652253, -0.721328,
		0.207903, 0.691183, 0.692129,
		0.950012, -0.311179, 0.025387,
		39.162800, 32.718384, 41.592125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961922, 33.546349, 41.578213>,  <38.497791, 32.936207, 41.574352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961922, 33.546349, 41.578213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151299, 33.216785, 41.453617>,  <39.264923, 33.019047, 41.378860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151299, 33.216785, 41.453617>,  <38.961922, 33.546349, 41.578213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151299, 33.216785, 41.453617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326796, 0.492695, -0.806508,
		0.817961, 0.280038, 0.502512,
		0.473438, -0.823912, -0.311490,
		39.293331, 32.969612, 41.360168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562630, 33.930313, 41.380928>,  <38.961922, 33.546349, 41.578213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562630, 33.930313, 41.380928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551929, 33.571110, 41.205261>,  <39.545509, 33.355587, 41.099861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551929, 33.571110, 41.205261>,  <39.562630, 33.930313, 41.380928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551929, 33.571110, 41.205261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377331, 0.397754, -0.836310,
		0.925692, -0.188082, 0.328206,
		-0.026750, -0.898007, -0.439166,
		39.543903, 33.301708, 41.073513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170315, 33.781796, 41.216164>,  <39.562630, 33.930313, 41.380928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170315, 33.781796, 41.216164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961227, 33.555130, 40.961399>,  <39.835773, 33.419132, 40.808540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961227, 33.555130, 40.961399>,  <40.170315, 33.781796, 41.216164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961227, 33.555130, 40.961399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497759, 0.403657, -0.767657,
		0.692097, -0.718298, 0.071062,
		-0.522722, -0.566665, -0.636909,
		39.804409, 33.385132, 40.770325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760288, 33.350300, 40.918270>,  <40.170315, 33.781796, 41.216164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760288, 33.350300, 40.918270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435673, 33.356342, 40.684628>,  <40.240902, 33.359966, 40.544441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435673, 33.356342, 40.684628>,  <40.760288, 33.350300, 40.918270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435673, 33.356342, 40.684628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504233, 0.523189, -0.687038,
		0.295217, -0.852083, -0.432206,
		-0.811539, 0.015107, -0.584103,
		40.192211, 33.360874, 40.509396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875362, 33.188042, 40.292881>,  <40.760288, 33.350300, 40.918270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875362, 33.188042, 40.292881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537498, 33.387920, 40.216091>,  <40.334782, 33.507847, 40.170017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537498, 33.387920, 40.216091>,  <40.875362, 33.188042, 40.292881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537498, 33.387920, 40.216091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499160, 0.605684, -0.619666,
		-0.193370, -0.619232, -0.761025,
		-0.844658, 0.499698, -0.191975,
		40.284100, 33.537830, 40.158497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776161, 33.296314, 39.509972>,  <40.875362, 33.188042, 40.292881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776161, 33.296314, 39.509972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543072, 33.569363, 39.686363>,  <40.403217, 33.733192, 39.792198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543072, 33.569363, 39.686363>,  <40.776161, 33.296314, 39.509972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543072, 33.569363, 39.686363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320663, 0.691737, -0.647052,
		-0.746733, -0.235646, -0.621982,
		-0.582723, 0.682621, 0.440980,
		40.368256, 33.774147, 39.818657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531670, 33.771282, 38.936897>,  <40.776161, 33.296314, 39.509972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531670, 33.771282, 38.936897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442574, 33.977398, 39.267921>,  <40.389114, 34.101067, 39.466537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442574, 33.977398, 39.267921>,  <40.531670, 33.771282, 38.936897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442574, 33.977398, 39.267921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260068, 0.849534, -0.458974,
		-0.939548, 0.112989, -0.323240,
		-0.222744, 0.515292, 0.827562,
		40.375751, 34.131985, 39.516190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106049, 34.294331, 38.728497>,  <40.531670, 33.771282, 38.936897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106049, 34.294331, 38.728497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284660, 34.421570, 39.063023>,  <40.391827, 34.497913, 39.263741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284660, 34.421570, 39.063023>,  <40.106049, 34.294331, 38.728497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284660, 34.421570, 39.063023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051535, 0.923977, -0.378960,
		-0.893286, 0.212315, 0.396185,
		0.446525, 0.318102, 0.836317,
		40.418617, 34.517002, 39.313919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872162, 34.951027, 38.878891>,  <40.106049, 34.294331, 38.728497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872162, 34.951027, 38.878891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227684, 34.931965, 39.061211>,  <40.440998, 34.920528, 39.170601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227684, 34.931965, 39.061211>,  <39.872162, 34.951027, 38.878891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227684, 34.931965, 39.061211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175607, 0.954080, -0.242681,
		-0.423304, 0.295738, 0.856360,
		0.888806, -0.047655, 0.455799,
		40.494328, 34.917667, 39.197952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941063, 35.555649, 39.401455>,  <39.872162, 34.951027, 38.878891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941063, 35.555649, 39.401455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307758, 35.427711, 39.305710>,  <40.527775, 35.350948, 39.248264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307758, 35.427711, 39.305710>,  <39.941063, 35.555649, 39.401455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307758, 35.427711, 39.305710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326204, 0.945200, -0.013687,
		0.230624, -0.065534, 0.970834,
		0.916735, -0.319846, -0.239363,
		40.582779, 35.331757, 39.233902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317059, 36.096729, 39.656651>,  <39.941063, 35.555649, 39.401455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317059, 36.096729, 39.656651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578140, 35.890278, 39.434811>,  <40.734791, 35.766407, 39.301704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578140, 35.890278, 39.434811>,  <40.317059, 36.096729, 39.656651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578140, 35.890278, 39.434811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570042, 0.816756, -0.089228,
		0.499029, -0.257908, 0.827317,
		0.652703, -0.516133, -0.554604,
		40.773952, 35.735439, 39.268429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009949, 36.223988, 39.934120>,  <40.317059, 36.096729, 39.656651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009949, 36.223988, 39.934120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031937, 36.125187, 39.547138>,  <41.045132, 36.065907, 39.314949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031937, 36.125187, 39.547138>,  <41.009949, 36.223988, 39.934120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031937, 36.125187, 39.547138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829015, 0.551328, -0.093650,
		0.556517, -0.796887, 0.235073,
		0.054974, -0.246997, -0.967456,
		41.048428, 36.051086, 39.256901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799671, 36.233616, 39.767429>,  <41.009949, 36.223988, 39.934120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799671, 36.233616, 39.767429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627464, 36.208427, 39.407276>,  <41.524139, 36.193314, 39.191185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627464, 36.208427, 39.407276>,  <41.799671, 36.233616, 39.767429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627464, 36.208427, 39.407276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720687, 0.576582, -0.384920,
		0.543381, -0.814610, -0.202850,
		-0.430519, -0.062966, -0.900382,
		41.498310, 36.189537, 39.137161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351131, 36.160496, 39.263634>,  <41.799671, 36.233616, 39.767429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351131, 36.160496, 39.263634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029434, 36.274574, 39.055077>,  <41.836414, 36.343021, 38.929943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029434, 36.274574, 39.055077>,  <42.351131, 36.160496, 39.263634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029434, 36.274574, 39.055077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539492, 0.718354, -0.439221,
		0.249282, -0.634530, -0.731594,
		-0.804243, 0.285199, -0.521396,
		41.788162, 36.360134, 38.898659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722332, 36.525650, 38.789772>,  <42.351131, 36.160496, 39.263634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722332, 36.525650, 38.789772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334599, 36.615295, 38.749443>,  <42.101959, 36.669083, 38.725246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334599, 36.615295, 38.749443>,  <42.722332, 36.525650, 38.789772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334599, 36.615295, 38.749443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244730, 0.917686, -0.312985,
		0.022375, -0.328060, -0.944391,
		-0.969333, 0.224118, -0.100820,
		42.043800, 36.682529, 38.719196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571598, 36.784828, 38.158283>,  <42.722332, 36.525650, 38.789772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571598, 36.784828, 38.158283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303741, 36.945839, 38.407940>,  <42.143028, 37.042446, 38.557735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303741, 36.945839, 38.407940>,  <42.571598, 36.784828, 38.158283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303741, 36.945839, 38.407940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310794, 0.915142, -0.256753,
		-0.674529, 0.022048, -0.737918,
		-0.669639, 0.402528, 0.624143,
		42.102848, 37.066597, 38.595184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593105, 36.232948, 37.666500>,  <42.571598, 36.784828, 38.158283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593105, 36.232948, 37.666500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896774, 36.266464, 37.924690>,  <43.078976, 36.286575, 38.079605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896774, 36.266464, 37.924690>,  <42.593105, 36.232948, 37.666500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896774, 36.266464, 37.924690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413485, -0.827958, -0.378834,
		0.502684, 0.554494, -0.663208,
		0.759170, 0.083792, 0.645477,
		43.124527, 36.291603, 38.118332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247913, 36.263947, 37.238728>,  <42.593105, 36.232948, 37.666500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247913, 36.263947, 37.238728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283470, 36.149288, 37.620289>,  <43.304806, 36.080494, 37.849224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283470, 36.149288, 37.620289>,  <43.247913, 36.263947, 37.238728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283470, 36.149288, 37.620289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316746, -0.899845, -0.299919,
		0.944335, 0.328807, 0.010801,
		0.088896, -0.286645, 0.953903,
		43.310139, 36.063293, 37.906460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914478, 36.130295, 37.300022>,  <43.247913, 36.263947, 37.238728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914478, 36.130295, 37.300022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662865, 35.931549, 37.539165>,  <43.511894, 35.812302, 37.682652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662865, 35.931549, 37.539165>,  <43.914478, 36.130295, 37.300022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662865, 35.931549, 37.539165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235116, -0.854657, -0.462905,
		0.740969, -0.150618, 0.654431,
		-0.629036, -0.496865, 0.597862,
		43.474155, 35.782490, 37.718525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266735, 35.485508, 37.600143>,  <43.914478, 36.130295, 37.300022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266735, 35.485508, 37.600143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876656, 35.500244, 37.512848>,  <43.642609, 35.509087, 37.460468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876656, 35.500244, 37.512848>,  <44.266735, 35.485508, 37.600143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876656, 35.500244, 37.512848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132390, -0.693119, -0.708562,
		-0.177370, -0.719882, 0.671052,
		-0.975199, 0.036837, -0.218244,
		43.584095, 35.511295, 37.447376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.869942, 35.762924, 37.833027>,  <44.266735, 35.485508, 37.600143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.869942, 35.762924, 37.833027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.634842, 36.016384, 38.034237>,  <44.493782, 36.168461, 38.154964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.634842, 36.016384, 38.034237>,  <44.869942, 35.762924, 37.833027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.634842, 36.016384, 38.034237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618946, -0.752573, 0.224812,
		0.521018, -0.179214, 0.834519,
		-0.587747, 0.633654, 0.503028,
		44.458519, 36.206482, 38.185146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.747936, 35.485950, 38.539989>,  <44.869942, 35.762924, 37.833027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.747936, 35.485950, 38.539989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458424, 35.750660, 38.461819>,  <44.284718, 35.909485, 38.414917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458424, 35.750660, 38.461819>,  <44.747936, 35.485950, 38.539989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458424, 35.750660, 38.461819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689848, -0.700475, 0.182878,
		-0.015868, 0.267180, 0.963516,
		-0.723780, 0.661777, -0.195429,
		44.241291, 35.949192, 38.403191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.222878, 35.547924, 39.123051>,  <44.747936, 35.485950, 38.539989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.222878, 35.547924, 39.123051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087757, 35.636040, 38.757019>,  <44.006687, 35.688908, 38.537399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087757, 35.636040, 38.757019>,  <44.222878, 35.547924, 39.123051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087757, 35.636040, 38.757019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751652, -0.648290, 0.121405,
		-0.566491, 0.728830, 0.384571,
		-0.337797, 0.220289, -0.915077,
		43.986420, 35.702126, 38.482494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467339, 35.731182, 39.197842>,  <44.222878, 35.547924, 39.123051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467339, 35.731182, 39.197842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539127, 35.560371, 38.843342>,  <43.582199, 35.457886, 38.630642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539127, 35.560371, 38.843342>,  <43.467339, 35.731182, 39.197842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539127, 35.560371, 38.843342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669282, -0.713259, 0.208142,
		-0.721008, 0.555797, -0.413809,
		0.179468, -0.427027, -0.886250,
		43.592968, 35.432262, 38.577469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786510, 35.546658, 38.874138>,  <43.467339, 35.731182, 39.197842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786510, 35.546658, 38.874138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052536, 35.315201, 38.685307>,  <43.212151, 35.176327, 38.572010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052536, 35.315201, 38.685307>,  <42.786510, 35.546658, 38.874138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052536, 35.315201, 38.685307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674601, -0.736657, -0.047429,
		-0.320314, 0.350007, -0.880280,
		0.665066, -0.578646, -0.472077,
		43.252056, 35.141605, 38.543682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417233, 35.280548, 38.289410>,  <42.786510, 35.546658, 38.874138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417233, 35.280548, 38.289410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710194, 35.016712, 38.356964>,  <42.885971, 34.858410, 38.397499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710194, 35.016712, 38.356964>,  <42.417233, 35.280548, 38.289410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710194, 35.016712, 38.356964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665878, -0.745658, -0.024519,
		0.142106, -0.094502, -0.985330,
		0.732402, -0.659594, 0.168889,
		42.929913, 34.818832, 38.407631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162819, 34.757309, 37.958817>,  <42.417233, 35.280548, 38.289410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162819, 34.757309, 37.958817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466179, 34.571083, 38.141277>,  <42.648197, 34.459347, 38.250751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466179, 34.571083, 38.141277>,  <42.162819, 34.757309, 37.958817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466179, 34.571083, 38.141277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518605, -0.854952, -0.010358,
		0.394807, -0.228706, -0.889843,
		0.758404, -0.465566, 0.456149,
		42.693699, 34.431412, 38.278122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360096, 34.157585, 37.564049>,  <42.162819, 34.757309, 37.958817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360096, 34.157585, 37.564049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493568, 34.089767, 37.934975>,  <42.573650, 34.049076, 38.157532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493568, 34.089767, 37.934975>,  <42.360096, 34.157585, 37.564049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493568, 34.089767, 37.934975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504655, -0.862992, 0.023810,
		0.796228, -0.475919, -0.373525,
		0.333682, -0.169543, 0.927315,
		42.593674, 34.038906, 38.213169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605194, 33.465275, 37.491730>,  <42.360096, 34.157585, 37.564049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605194, 33.465275, 37.491730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531788, 33.557163, 37.874050>,  <42.487743, 33.612297, 38.103443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531788, 33.557163, 37.874050>,  <42.605194, 33.465275, 37.491730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531788, 33.557163, 37.874050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475949, -0.871511, 0.118075,
		0.860113, -0.433243, 0.269271,
		-0.183517, 0.229717, 0.955799,
		42.476734, 33.626080, 38.160789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926163, 32.916313, 37.821301>,  <42.605194, 33.465275, 37.491730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926163, 32.916313, 37.821301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631115, 33.069904, 38.043461>,  <42.454086, 33.162060, 38.176758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631115, 33.069904, 38.043461>,  <42.926163, 32.916313, 37.821301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631115, 33.069904, 38.043461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415156, -0.906618, 0.075426,
		0.532502, -0.174943, 0.828152,
		-0.737622, 0.383977, 0.555405,
		42.409828, 33.185097, 38.210083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968929, 32.573742, 38.457386>,  <42.926163, 32.916313, 37.821301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968929, 32.573742, 38.457386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595554, 32.715176, 38.433140>,  <42.371529, 32.800037, 38.418594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595554, 32.715176, 38.433140>,  <42.968929, 32.573742, 38.457386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595554, 32.715176, 38.433140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358681, -0.923009, 0.139292,
		-0.006693, 0.151760, 0.988395,
		-0.933436, 0.353586, -0.060611,
		42.315525, 32.821251, 38.414955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497944, 32.184124, 38.964378>,  <42.968929, 32.573742, 38.457386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497944, 32.184124, 38.964378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234211, 32.339767, 38.707043>,  <42.075974, 32.433155, 38.552643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234211, 32.339767, 38.707043>,  <42.497944, 32.184124, 38.964378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234211, 32.339767, 38.707043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531910, -0.846143, 0.033363,
		-0.531372, 0.364193, 0.764858,
		-0.659330, 0.389107, -0.643335,
		42.036411, 32.456501, 38.514042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855186, 32.036751, 39.255447>,  <42.497944, 32.184124, 38.964378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855186, 32.036751, 39.255447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784996, 32.116856, 38.869888>,  <41.742882, 32.164921, 38.638554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784996, 32.116856, 38.869888>,  <41.855186, 32.036751, 39.255447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784996, 32.116856, 38.869888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496430, -0.863499, -0.089031,
		-0.850157, 0.462886, 0.250939,
		-0.175474, 0.200264, -0.963900,
		41.732353, 32.176933, 38.580719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147076, 32.050976, 39.193577>,  <41.855186, 32.036751, 39.255447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147076, 32.050976, 39.193577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272572, 32.012970, 38.815678>,  <41.347870, 31.990166, 38.588940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272572, 32.012970, 38.815678>,  <41.147076, 32.050976, 39.193577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272572, 32.012970, 38.815678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709413, -0.684792, -0.166714,
		-0.631113, 0.722518, -0.282249,
		0.313736, -0.095016, -0.944744,
		41.366692, 31.984465, 38.532253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592926, 32.045292, 38.726444>,  <41.147076, 32.050976, 39.193577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592926, 32.045292, 38.726444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884960, 31.858074, 38.527279>,  <41.060181, 31.745743, 38.407780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884960, 31.858074, 38.527279>,  <40.592926, 32.045292, 38.726444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884960, 31.858074, 38.527279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647996, -0.705523, -0.286947,
		-0.216982, 0.532138, -0.818381,
		0.730082, -0.468046, -0.497909,
		41.103985, 31.717661, 38.377907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387230, 31.910110, 38.044498>,  <40.592926, 32.045292, 38.726444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387230, 31.910110, 38.044498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667381, 31.638493, 38.132465>,  <40.835472, 31.475521, 38.185246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667381, 31.638493, 38.132465>,  <40.387230, 31.910110, 38.044498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667381, 31.638493, 38.132465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623755, -0.732058, -0.273900,
		0.346982, 0.054660, -0.936277,
		0.700381, -0.679046, 0.219916,
		40.877495, 31.434778, 38.198441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220943, 31.454266, 37.482487>,  <40.387230, 31.910110, 38.044498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220943, 31.454266, 37.482487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468262, 31.277857, 37.742706>,  <40.616653, 31.172012, 37.898838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468262, 31.277857, 37.742706>,  <40.220943, 31.454266, 37.482487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468262, 31.277857, 37.742706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356979, -0.895003, -0.267463,
		0.700200, -0.066861, -0.710810,
		0.618294, -0.441021, 0.650548,
		40.653751, 31.145550, 37.937870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431320, 30.836540, 37.138432>,  <40.220943, 31.454266, 37.482487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431320, 30.836540, 37.138432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535412, 30.761162, 37.517223>,  <40.597866, 30.715935, 37.744499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535412, 30.761162, 37.517223>,  <40.431320, 30.836540, 37.138432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535412, 30.761162, 37.517223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331553, -0.938574, -0.095664,
		0.906838, -0.289079, -0.306721,
		0.260226, -0.188446, 0.946980,
		40.613480, 30.704628, 37.801319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020458, 30.424669, 37.270943>,  <40.431320, 30.836540, 37.138432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020458, 30.424669, 37.270943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838913, 30.353003, 37.620094>,  <40.729988, 30.310001, 37.829586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838913, 30.353003, 37.620094>,  <41.020458, 30.424669, 37.270943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838913, 30.353003, 37.620094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132847, -0.955024, -0.265105,
		0.881115, -0.236279, 0.409644,
		-0.453858, -0.179168, 0.872875,
		40.702755, 30.299252, 37.881958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268242, 29.667978, 37.489841>,  <41.020458, 30.424669, 37.270943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268242, 29.667978, 37.489841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955601, 29.733412, 37.730618>,  <40.768017, 29.772673, 37.875084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955601, 29.733412, 37.730618>,  <41.268242, 29.667978, 37.489841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955601, 29.733412, 37.730618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121036, -0.986432, 0.110913,
		0.611918, 0.013834, 0.790800,
		-0.781605, 0.163586, 0.601941,
		40.721119, 29.782488, 37.911201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296135, 29.148533, 37.909267>,  <41.268242, 29.667978, 37.489841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296135, 29.148533, 37.909267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916016, 29.245983, 37.986805>,  <40.687943, 29.304453, 38.033329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916016, 29.245983, 37.986805>,  <41.296135, 29.148533, 37.909267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916016, 29.245983, 37.986805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239757, -0.969855, 0.043557,
		0.198611, -0.005083, 0.980065,
		-0.950300, 0.243628, 0.193842,
		40.630924, 29.319071, 38.044956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139290, 28.749489, 38.551666>,  <41.296135, 29.148533, 37.909267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139290, 28.749489, 38.551666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792622, 28.856384, 38.383163>,  <40.584621, 28.920523, 38.282063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792622, 28.856384, 38.383163>,  <41.139290, 28.749489, 38.551666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792622, 28.856384, 38.383163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346835, -0.929726, 0.123757,
		-0.358582, 0.253365, 0.898457,
		-0.866674, 0.267239, -0.421258,
		40.532619, 28.936556, 38.256786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454136, 28.600901, 38.966789>,  <41.139290, 28.749489, 38.551666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454136, 28.600901, 38.966789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300636, 28.608524, 38.597492>,  <40.208534, 28.613098, 38.375916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300636, 28.608524, 38.597492>,  <40.454136, 28.600901, 38.966789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300636, 28.608524, 38.597492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377407, -0.915712, 0.137971,
		-0.842792, 0.401383, 0.358599,
		-0.383753, 0.019057, -0.923239,
		40.185509, 28.614241, 38.320522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749214, 28.289097, 39.029854>,  <40.454136, 28.600901, 38.966789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749214, 28.289097, 39.029854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875744, 28.268847, 38.650932>,  <39.951660, 28.256697, 38.423580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875744, 28.268847, 38.650932>,  <39.749214, 28.289097, 39.029854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875744, 28.268847, 38.650932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404438, -0.910476, -0.086391,
		-0.858121, 0.410451, -0.308478,
		0.316321, -0.050626, -0.947301,
		39.970638, 28.253658, 38.366741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188274, 28.270769, 38.513847>,  <39.749214, 28.289097, 39.029854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188274, 28.270769, 38.513847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523842, 28.079542, 38.409798>,  <39.725182, 27.964806, 38.347366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523842, 28.079542, 38.409798>,  <39.188274, 28.270769, 38.513847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523842, 28.079542, 38.409798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493561, -0.869686, 0.006574,
		-0.229372, 0.122874, -0.965552,
		0.838919, -0.478067, -0.260127,
		39.775517, 27.936123, 38.331760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991947, 27.785437, 38.040157>,  <39.188274, 28.270769, 38.513847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991947, 27.785437, 38.040157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336708, 27.637859, 38.179302>,  <39.543564, 27.549313, 38.262787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336708, 27.637859, 38.179302>,  <38.991947, 27.785437, 38.040157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336708, 27.637859, 38.179302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371825, -0.926287, -0.061145,
		0.344778, -0.076642, -0.935550,
		0.861902, -0.368942, 0.347860,
		39.595280, 27.527176, 38.283661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733112, 27.965784, 37.384029>,  <38.991947, 27.785437, 38.040157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733112, 27.965784, 37.384029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574554, 27.755680, 37.082840>,  <38.479420, 27.629618, 36.902126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574554, 27.755680, 37.082840>,  <38.733112, 27.965784, 37.384029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574554, 27.755680, 37.082840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904109, -0.365880, -0.220724,
		-0.159562, -0.768266, 0.619925,
		-0.396393, -0.525261, -0.752977,
		38.455635, 27.598103, 36.856949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957798, 27.435511, 36.893307>,  <38.733112, 27.965784, 37.384029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957798, 27.435511, 36.893307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742725, 27.122549, 37.019001>,  <38.613682, 26.934772, 37.094418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742725, 27.122549, 37.019001>,  <38.957798, 27.435511, 36.893307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742725, 27.122549, 37.019001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734346, 0.251438, -0.630488,
		0.414284, -0.569761, -0.709748,
		-0.537685, -0.782402, 0.314235,
		38.581421, 26.887829, 37.113270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457947, 27.069433, 36.342285>,  <38.957798, 27.435511, 36.893307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457947, 27.069433, 36.342285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771763, 27.162561, 36.112400>,  <39.960052, 27.218437, 35.974468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771763, 27.162561, 36.112400>,  <39.457947, 27.069433, 36.342285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771763, 27.162561, 36.112400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267223, -0.963299, -0.025452,
		-0.559543, -0.133607, -0.817961,
		0.784540, 0.232820, -0.574710,
		40.007126, 27.232407, 35.939987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128101, 27.896431, 36.314636>,  <39.457947, 27.069433, 36.342285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128101, 27.896431, 36.314636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423885, 27.668032, 36.171997>,  <39.601357, 27.530993, 36.086414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423885, 27.668032, 36.171997>,  <39.128101, 27.896431, 36.314636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423885, 27.668032, 36.171997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215185, -0.702392, 0.678484,
		-0.637884, -0.424977, -0.642260,
		0.739459, -0.570999, -0.356596,
		39.645721, 27.496731, 36.065018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100498, 28.428719, 35.815540>,  <39.128101, 27.896431, 36.314636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100498, 28.428719, 35.815540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728542, 28.410681, 35.961563>,  <38.505367, 28.399858, 36.049179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728542, 28.410681, 35.961563>,  <39.100498, 28.428719, 35.815540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728542, 28.410681, 35.961563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046577, -0.998903, -0.004753,
		0.364875, 0.012584, 0.930971,
		-0.929891, -0.045096, 0.365061,
		38.449574, 28.397152, 36.071083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474667, 27.849815, 35.670879>,  <39.100498, 28.428719, 35.815540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474667, 27.849815, 35.670879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307491, 27.851948, 35.307495>,  <39.207188, 27.853228, 35.089466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307491, 27.851948, 35.307495>,  <39.474667, 27.849815, 35.670879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307491, 27.851948, 35.307495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293694, 0.947079, -0.129555,
		0.859693, -0.320955, -0.397387,
		-0.417938, 0.005332, -0.908460,
		39.182110, 27.853548, 35.034958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909954, 28.012924, 35.098728>,  <39.474667, 27.849815, 35.670879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909954, 28.012924, 35.098728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537136, 28.136971, 35.023762>,  <39.313446, 28.211399, 34.978783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537136, 28.136971, 35.023762>,  <39.909954, 28.012924, 35.098728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537136, 28.136971, 35.023762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339797, 0.927663, -0.154851,
		0.125834, -0.208010, -0.969999,
		-0.932043, 0.310118, -0.187413,
		39.257523, 28.230005, 34.967537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952637, 28.533619, 34.555714>,  <39.909954, 28.012924, 35.098728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952637, 28.533619, 34.555714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613003, 28.626757, 34.745380>,  <39.409222, 28.682640, 34.859180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613003, 28.626757, 34.745380>,  <39.952637, 28.533619, 34.555714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613003, 28.626757, 34.745380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254007, 0.966995, -0.020008,
		-0.463172, 0.103452, -0.880210,
		-0.849089, 0.232846, 0.474163,
		39.358276, 28.696611, 34.887630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705154, 29.071548, 34.198139>,  <39.952637, 28.533619, 34.555714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705154, 29.071548, 34.198139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591858, 29.079123, 34.581684>,  <39.523880, 29.083668, 34.811810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591858, 29.079123, 34.581684>,  <39.705154, 29.071548, 34.198139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591858, 29.079123, 34.581684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613562, 0.772002, 0.165998,
		-0.737099, 0.635338, -0.230283,
		-0.283244, 0.018936, 0.958861,
		39.506886, 29.084803, 34.869343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703266, 29.811174, 34.326271>,  <39.705154, 29.071548, 34.198139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703266, 29.811174, 34.326271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729019, 29.642267, 34.687943>,  <39.744473, 29.540922, 34.904945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729019, 29.642267, 34.687943>,  <39.703266, 29.811174, 34.326271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729019, 29.642267, 34.687943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664632, 0.694011, 0.276790,
		-0.744392, 0.583127, 0.325337,
		0.064384, -0.422270, 0.904181,
		39.748333, 29.515587, 34.959198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609123, 30.402706, 34.798962>,  <39.703266, 29.811174, 34.326271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609123, 30.402706, 34.798962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783718, 30.088972, 34.975277>,  <39.888477, 29.900732, 35.081066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783718, 30.088972, 34.975277>,  <39.609123, 30.402706, 34.798962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783718, 30.088972, 34.975277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726732, 0.596189, 0.341204,
		-0.530411, 0.171403, 0.830232,
		0.436491, -0.784334, 0.440789,
		39.914665, 29.853672, 35.107513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844223, 30.514860, 35.497131>,  <39.609123, 30.402706, 34.798962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844223, 30.514860, 35.497131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082699, 30.222139, 35.365055>,  <40.225784, 30.046507, 35.285809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082699, 30.222139, 35.365055>,  <39.844223, 30.514860, 35.497131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082699, 30.222139, 35.365055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794164, 0.597873, 0.108862,
		0.117749, -0.327130, 0.937614,
		0.596187, -0.731801, -0.330194,
		40.261555, 30.002600, 35.265995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391258, 30.483976, 35.945152>,  <39.844223, 30.514860, 35.497131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391258, 30.483976, 35.945152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536983, 30.273844, 35.637566>,  <40.624420, 30.147764, 35.453014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536983, 30.273844, 35.637566>,  <40.391258, 30.483976, 35.945152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536983, 30.273844, 35.637566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895313, 0.424819, 0.133954,
		0.256300, -0.737264, 0.625102,
		0.364315, -0.525329, -0.768963,
		40.646278, 30.116245, 35.406876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036533, 30.322189, 36.106770>,  <40.391258, 30.483976, 35.945152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036533, 30.322189, 36.106770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025089, 30.288063, 35.708393>,  <41.018223, 30.267588, 35.469368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025089, 30.288063, 35.708393>,  <41.036533, 30.322189, 36.106770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025089, 30.288063, 35.708393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858142, 0.508855, -0.068245,
		0.512614, -0.856614, 0.058654,
		-0.028613, -0.085317, -0.995943,
		41.016506, 30.262468, 35.409611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748676, 30.231503, 35.853592>,  <41.036533, 30.322189, 36.106770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748676, 30.231503, 35.853592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573341, 30.347610, 35.513332>,  <41.468140, 30.417276, 35.309177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573341, 30.347610, 35.513332>,  <41.748676, 30.231503, 35.853592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573341, 30.347610, 35.513332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719030, 0.681123, -0.138088,
		0.539315, -0.672172, -0.507272,
		-0.438333, 0.290271, -0.850651,
		41.441841, 30.434692, 35.258137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271923, 30.282902, 35.372765>,  <41.748676, 30.231503, 35.853592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271923, 30.282902, 35.372765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979881, 30.505960, 35.214790>,  <41.804657, 30.639795, 35.120007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979881, 30.505960, 35.214790>,  <42.271923, 30.282902, 35.372765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979881, 30.505960, 35.214790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632252, 0.770535, -0.080833,
		0.259237, -0.308717, -0.915145,
		-0.730105, 0.557648, -0.394938,
		41.760849, 30.673254, 35.096310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469082, 30.387020, 34.688267>,  <42.271923, 30.282902, 35.372765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469082, 30.387020, 34.688267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244801, 30.698248, 34.801559>,  <42.110229, 30.884985, 34.869534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244801, 30.698248, 34.801559>,  <42.469082, 30.387020, 34.688267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244801, 30.698248, 34.801559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802426, 0.594981, -0.045934,
		-0.204256, 0.201516, -0.957951,
		-0.560707, 0.778067, 0.283230,
		42.076588, 30.931667, 34.886528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907257, 30.894897, 34.477928>,  <42.469082, 30.387020, 34.688267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907257, 30.894897, 34.477928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636852, 31.092083, 34.697018>,  <42.474609, 31.210394, 34.828472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636852, 31.092083, 34.697018>,  <42.907257, 30.894897, 34.477928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636852, 31.092083, 34.697018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635743, 0.766005, 0.095222,
		-0.372618, 0.412582, -0.831223,
		-0.676008, 0.492963, 0.547723,
		42.434052, 31.239971, 34.861336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.935528, 31.515083, 34.191483>,  <42.907257, 30.894897, 34.477928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.935528, 31.515083, 34.191483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754192, 31.579323, 34.542183>,  <42.645393, 31.617867, 34.752605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754192, 31.579323, 34.542183>,  <42.935528, 31.515083, 34.191483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754192, 31.579323, 34.542183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607503, 0.775455, 0.172072,
		-0.652248, 0.610637, -0.449105,
		-0.453334, 0.160599, 0.876753,
		42.618191, 31.627502, 34.805210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727341, 32.277321, 34.241482>,  <42.935528, 31.515083, 34.191483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727341, 32.277321, 34.241482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747784, 32.142529, 34.617531>,  <42.760048, 32.061653, 34.843163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747784, 32.142529, 34.617531>,  <42.727341, 32.277321, 34.241482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747784, 32.142529, 34.617531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466282, 0.840505, 0.275922,
		-0.883159, 0.424263, 0.200080,
		0.051105, -0.336977, 0.940125,
		42.763115, 32.041435, 34.899567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591412, 32.778122, 34.661293>,  <42.727341, 32.277321, 34.241482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591412, 32.778122, 34.661293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809650, 32.545399, 34.902565>,  <42.940594, 32.405766, 35.047329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809650, 32.545399, 34.902565>,  <42.591412, 32.778122, 34.661293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809650, 32.545399, 34.902565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330591, 0.810796, 0.483031,
		-0.770084, -0.064137, 0.634711,
		0.545601, -0.581804, 0.603178,
		42.973331, 32.370857, 35.083519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682281, 33.146156, 35.217911>,  <42.591412, 32.778122, 34.661293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682281, 33.146156, 35.217911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958923, 32.867233, 35.293217>,  <43.124908, 32.699879, 35.338402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958923, 32.867233, 35.293217>,  <42.682281, 33.146156, 35.217911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958923, 32.867233, 35.293217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568122, 0.686143, 0.454362,
		-0.446012, -0.207277, 0.870695,
		0.691600, -0.697312, 0.188270,
		43.166405, 32.658039, 35.349697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847073, 33.153748, 35.879974>,  <42.682281, 33.146156, 35.217911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847073, 33.153748, 35.879974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179039, 32.984913, 35.734058>,  <43.378220, 32.883610, 35.646507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179039, 32.984913, 35.734058>,  <42.847073, 33.153748, 35.879974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179039, 32.984913, 35.734058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554492, 0.696091, 0.456066,
		0.061429, -0.580773, 0.811745,
		0.829919, -0.422090, -0.364794,
		43.428013, 32.858284, 35.624619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387337, 33.307922, 36.343136>,  <42.847073, 33.153748, 35.879974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387337, 33.307922, 36.343136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628448, 33.178082, 36.051575>,  <43.773117, 33.100178, 35.876640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628448, 33.178082, 36.051575>,  <43.387337, 33.307922, 36.343136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.628448, 33.178082, 36.051575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698920, 0.655491, 0.286080,
		0.384925, -0.681885, 0.621985,
		0.602779, -0.324598, -0.728899,
		43.809280, 33.080704, 35.832905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021748, 33.119034, 36.639221>,  <43.387337, 33.307922, 36.343136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021748, 33.119034, 36.639221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.139965, 33.200012, 36.265770>,  <44.210896, 33.248600, 36.041698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.139965, 33.200012, 36.265770>,  <44.021748, 33.119034, 36.639221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.139965, 33.200012, 36.265770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677929, 0.644130, 0.354272,
		0.673104, -0.737638, 0.053120,
		0.295541, 0.202451, -0.933632,
		44.228626, 33.260746, 35.985680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883072, 33.017124, 36.572430>,  <44.021748, 33.119034, 36.639221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883072, 33.017124, 36.572430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723438, 33.264866, 36.301983>,  <44.627659, 33.413513, 36.139717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723438, 33.264866, 36.301983>,  <44.883072, 33.017124, 36.572430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.723438, 33.264866, 36.301983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649668, 0.711349, 0.268167,
		0.647044, -0.332230, -0.686263,
		-0.399080, 0.619359, -0.676114,
		44.603714, 33.450672, 36.099148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.506298, 33.336037, 36.363075>,  <44.883072, 33.017124, 36.572430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.506298, 33.336037, 36.363075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.199249, 33.551208, 36.223713>,  <45.015018, 33.680313, 36.140095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.199249, 33.551208, 36.223713>,  <45.506298, 33.336037, 36.363075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.199249, 33.551208, 36.223713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568294, 0.822628, 0.018024,
		0.296307, -0.184163, -0.937169,
		-0.767623, 0.537928, -0.348409,
		44.968964, 33.712585, 36.119190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.850788, 33.758289, 35.975693>,  <45.506298, 33.336037, 36.363075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.850788, 33.758289, 35.975693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505920, 33.957176, 36.014565>,  <45.299000, 34.076508, 36.037888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505920, 33.957176, 36.014565>,  <45.850788, 33.758289, 35.975693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.505920, 33.957176, 36.014565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501139, 0.808826, 0.307667,
		0.074373, 0.313962, -0.946518,
		-0.862165, 0.497220, 0.097184,
		45.247272, 34.106342, 36.043720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.886383, 34.448982, 35.613586>,  <45.850788, 33.758289, 35.975693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.886383, 34.448982, 35.613586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602993, 34.495029, 35.892097>,  <45.432957, 34.522659, 36.059204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602993, 34.495029, 35.892097>,  <45.886383, 34.448982, 35.613586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602993, 34.495029, 35.892097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452578, 0.831134, 0.323093,
		-0.541510, 0.544026, -0.640939,
		-0.708477, 0.115117, 0.696282,
		45.390450, 34.529564, 36.100983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.733551, 34.144985, 35.597916>,  <45.886383, 34.448982, 35.613586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.733551, 34.144985, 35.597916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.551327, 34.437622, 35.395046>,  <46.441990, 34.613205, 35.273323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.551327, 34.437622, 35.395046>,  <46.733551, 34.144985, 35.597916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.551327, 34.437622, 35.395046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482444, 0.681712, 0.550015,
		0.748138, 0.005881, -0.663517,
		-0.455563, 0.731597, -0.507178,
		46.414658, 34.657101, 35.242893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.050095, 34.733074, 35.823433>,  <46.733551, 34.144985, 35.597916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.050095, 34.733074, 35.823433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.836807, 34.923111, 35.543442>,  <46.708836, 35.037132, 35.375446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.836807, 34.923111, 35.543442>,  <47.050095, 34.733074, 35.823433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.836807, 34.923111, 35.543442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334417, 0.878396, 0.341448,
		0.777076, -0.052019, -0.627253,
		-0.533214, 0.475095, -0.699977,
		46.676842, 35.065639, 35.333450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.470734, 35.320480, 35.535072>,  <47.050095, 34.733074, 35.823433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.470734, 35.320480, 35.535072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.081581, 35.381531, 35.465553>,  <46.848091, 35.418159, 35.423843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.081581, 35.381531, 35.465553>,  <47.470734, 35.320480, 35.535072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.081581, 35.381531, 35.465553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107263, 0.963415, 0.245615,
		0.204927, 0.220312, -0.953660,
		-0.972882, 0.152626, -0.173799,
		46.789715, 35.427319, 35.413414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.595634, 35.052090, 34.766708>,  <47.470734, 35.320480, 35.535072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.595634, 35.052090, 34.766708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.805618, 34.847736, 35.039009>,  <47.931606, 34.725124, 35.202389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.805618, 34.847736, 35.039009>,  <47.595634, 35.052090, 34.766708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.805618, 34.847736, 35.039009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811097, 0.542687, -0.218203,
		-0.257960, 0.666703, 0.699259,
		0.524956, -0.510879, 0.680753,
		47.963104, 34.694473, 35.243237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.616947, 33.361256, 46.446671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.218956, 33.393967, 46.469753>,  <36.980160, 33.413593, 46.483604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.218956, 33.393967, 46.469753>,  <37.616947, 33.361256, 46.446671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218956, 33.393967, 46.469753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010642, 0.486866, -0.873412,
		-0.099526, -0.869640, -0.483551,
		-0.994978, 0.081781, 0.057711,
		36.920464, 33.418503, 46.487068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316021, 33.164677, 45.817516>,  <37.616947, 33.361256, 46.446671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316021, 33.164677, 45.817516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.017319, 33.375481, 45.979809>,  <36.838097, 33.501965, 46.077183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.017319, 33.375481, 45.979809>,  <37.316021, 33.164677, 45.817516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017319, 33.375481, 45.979809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097158, 0.517050, -0.850423,
		-0.657964, -0.674478, -0.334907,
		-0.746756, 0.527009, 0.405731,
		36.793293, 33.533585, 46.101528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636333, 33.133171, 45.433170>,  <37.316021, 33.164677, 45.817516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636333, 33.133171, 45.433170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611309, 33.482437, 45.626526>,  <36.596294, 33.691998, 45.742538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611309, 33.482437, 45.626526>,  <36.636333, 33.133171, 45.433170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611309, 33.482437, 45.626526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005237, 0.484615, -0.874712,
		-0.998028, -0.052189, -0.034890,
		-0.062558, 0.873169, 0.483385,
		36.592541, 33.744389, 45.771542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189350, 33.448372, 45.062874>,  <36.636333, 33.133171, 45.433170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189350, 33.448372, 45.062874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.312992, 33.758057, 45.283802>,  <36.387177, 33.943867, 45.416359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.312992, 33.758057, 45.283802>,  <36.189350, 33.448372, 45.062874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312992, 33.758057, 45.283802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159847, 0.614789, -0.772324,
		-0.937499, 0.150441, 0.313788,
		0.309102, 0.774211, 0.552316,
		36.405724, 33.990318, 45.449497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648621, 33.904812, 45.073341>,  <36.189350, 33.448372, 45.062874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648621, 33.904812, 45.073341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.977093, 34.118847, 45.152679>,  <36.174175, 34.247269, 45.200283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.977093, 34.118847, 45.152679>,  <35.648621, 33.904812, 45.073341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977093, 34.118847, 45.152679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257171, 0.657261, -0.708429,
		-0.509437, 0.530740, 0.677339,
		0.821180, 0.535092, 0.198342,
		36.223446, 34.279373, 45.212181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325191, 34.561008, 44.852043>,  <35.648621, 33.904812, 45.073341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325191, 34.561008, 44.852043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.722198, 34.608791, 44.862110>,  <35.960403, 34.637463, 44.868153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.722198, 34.608791, 44.862110>,  <35.325191, 34.561008, 44.852043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722198, 34.608791, 44.862110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051316, 0.595303, -0.801861,
		-0.110775, 0.794571, 0.596981,
		0.992520, 0.119461, 0.025171,
		36.019955, 34.644630, 44.869659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391235, 35.301880, 44.587967>,  <35.325191, 34.561008, 44.852043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391235, 35.301880, 44.587967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.755066, 35.135910, 44.579041>,  <35.973366, 35.036327, 44.573685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.755066, 35.135910, 44.579041>,  <35.391235, 35.301880, 44.587967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755066, 35.135910, 44.579041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196739, 0.477331, -0.856416,
		0.366002, 0.774589, 0.515804,
		0.909580, -0.414929, -0.022313,
		36.027939, 35.011433, 44.572346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961571, 35.748730, 44.676407>,  <35.391235, 35.301880, 44.587967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961571, 35.748730, 44.676407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.145348, 35.453876, 44.478199>,  <36.255615, 35.276966, 44.359272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.145348, 35.453876, 44.478199>,  <35.961571, 35.748730, 44.676407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145348, 35.453876, 44.478199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226942, 0.636800, -0.736874,
		0.858724, 0.226098, 0.459861,
		0.459445, -0.737134, -0.495524,
		36.283180, 35.232735, 44.329540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595577, 35.992489, 44.421432>,  <35.961571, 35.748730, 44.676407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595577, 35.992489, 44.421432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.501865, 35.677197, 44.193813>,  <36.445637, 35.488022, 44.057243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.501865, 35.677197, 44.193813>,  <36.595577, 35.992489, 44.421432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501865, 35.677197, 44.193813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337138, 0.483136, -0.808033,
		0.911839, -0.381152, 0.152552,
		-0.234280, -0.788227, -0.569044,
		36.431580, 35.440727, 44.023102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147362, 35.890812, 43.832966>,  <36.595577, 35.992489, 44.421432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147362, 35.890812, 43.832966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819870, 35.704567, 43.698574>,  <36.623375, 35.592819, 43.617939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819870, 35.704567, 43.698574>,  <37.147362, 35.890812, 43.832966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819870, 35.704567, 43.698574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184504, 0.340771, -0.921864,
		0.543721, -0.816751, -0.193094,
		-0.818734, -0.465611, -0.335978,
		36.574249, 35.564884, 43.597782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346828, 35.434494, 43.316742>,  <37.147362, 35.890812, 43.832966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346828, 35.434494, 43.316742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.956871, 35.463310, 43.232456>,  <36.722897, 35.480602, 43.181885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.956871, 35.463310, 43.232456>,  <37.346828, 35.434494, 43.316742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956871, 35.463310, 43.232456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219891, 0.161930, -0.961991,
		-0.035186, -0.984169, -0.173706,
		-0.974890, 0.072045, -0.210712,
		36.664406, 35.484924, 43.169243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989056, 34.864986, 42.845844>,  <37.346828, 35.434494, 43.316742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989056, 34.864986, 42.845844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758228, 35.190544, 42.818813>,  <36.619732, 35.385880, 42.802593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758228, 35.190544, 42.818813>,  <36.989056, 34.864986, 42.845844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758228, 35.190544, 42.818813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148901, 0.023493, -0.988573,
		-0.803006, -0.580538, -0.134746,
		-0.577070, 0.813894, -0.067578,
		36.585106, 35.434711, 42.798538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832764, 34.856148, 42.135532>,  <36.989056, 34.864986, 42.845844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832764, 34.856148, 42.135532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.678265, 35.212757, 42.230198>,  <36.585567, 35.426723, 42.286995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.678265, 35.212757, 42.230198>,  <36.832764, 34.856148, 42.135532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678265, 35.212757, 42.230198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124985, 0.304791, -0.944183,
		-0.913890, -0.335105, -0.229150,
		-0.386244, 0.891520, 0.236662,
		36.562393, 35.480213, 42.301197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271870, 35.035172, 41.613941>,  <36.832764, 34.856148, 42.135532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271870, 35.035172, 41.613941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372784, 35.383747, 41.782200>,  <36.433331, 35.592892, 41.883156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372784, 35.383747, 41.782200>,  <36.271870, 35.035172, 41.613941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372784, 35.383747, 41.782200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112258, 0.405419, -0.907212,
		-0.961119, 0.276097, 0.004455,
		0.252284, 0.871439, 0.420650,
		36.448467, 35.645180, 41.908394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864071, 35.433369, 41.260830>,  <36.271870, 35.035172, 41.613941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864071, 35.433369, 41.260830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.171047, 35.646313, 41.403732>,  <36.355232, 35.774078, 41.489475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.171047, 35.646313, 41.403732>,  <35.864071, 35.433369, 41.260830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171047, 35.646313, 41.403732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036454, 0.592568, -0.804695,
		-0.640081, 0.604533, 0.474168,
		0.767442, 0.532355, 0.357255,
		36.401279, 35.806019, 41.510910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806671, 36.018814, 40.787014>,  <35.864071, 35.433369, 41.260830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806671, 36.018814, 40.787014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.150436, 36.089676, 40.978855>,  <36.356697, 36.132191, 41.093960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.150436, 36.089676, 40.978855>,  <35.806671, 36.018814, 40.787014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150436, 36.089676, 40.978855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313098, 0.559236, -0.767609,
		-0.404195, 0.809860, 0.425151,
		0.859416, 0.177150, 0.479606,
		36.408260, 36.142822, 41.122738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875301, 36.711143, 40.826187>,  <35.806671, 36.018814, 40.787014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875301, 36.711143, 40.826187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.245911, 36.562935, 40.852299>,  <36.468277, 36.474010, 40.867966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.245911, 36.562935, 40.852299>,  <35.875301, 36.711143, 40.826187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245911, 36.562935, 40.852299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303400, 0.633225, -0.712021,
		0.222483, 0.679512, 0.699117,
		0.926526, -0.370525, 0.065282,
		36.523869, 36.451778, 40.871883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308884, 37.302574, 40.811024>,  <35.875301, 36.711143, 40.826187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308884, 37.302574, 40.811024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.537045, 36.988953, 40.713131>,  <36.673943, 36.800777, 40.654396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.537045, 36.988953, 40.713131>,  <36.308884, 37.302574, 40.811024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537045, 36.988953, 40.713131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394598, 0.522910, -0.755551,
		0.720369, 0.334397, 0.607657,
		0.570404, -0.784056, -0.244736,
		36.708164, 36.753735, 40.639709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939995, 37.594257, 40.584553>,  <36.308884, 37.302574, 40.811024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939995, 37.594257, 40.584553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929497, 37.221844, 40.438953>,  <36.923199, 36.998398, 40.351593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929497, 37.221844, 40.438953>,  <36.939995, 37.594257, 40.584553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929497, 37.221844, 40.438953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402236, 0.323512, -0.856473,
		0.915160, -0.168888, 0.366004,
		-0.026242, -0.931030, -0.363998,
		36.921623, 36.942535, 40.329754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613342, 37.477406, 40.247478>,  <36.939995, 37.594257, 40.584553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613342, 37.477406, 40.247478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.364540, 37.205467, 40.092083>,  <37.215260, 37.042305, 39.998844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.364540, 37.205467, 40.092083>,  <37.613342, 37.477406, 40.247478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364540, 37.205467, 40.092083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355664, 0.196713, -0.913678,
		0.697578, -0.706483, 0.119439,
		-0.622003, -0.679842, -0.388493,
		37.177940, 37.001514, 39.975536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973038, 37.351341, 39.637592>,  <37.613342, 37.477406, 40.247478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973038, 37.351341, 39.637592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601009, 37.207794, 39.606133>,  <37.377792, 37.121666, 39.587257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601009, 37.207794, 39.606133>,  <37.973038, 37.351341, 39.637592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601009, 37.207794, 39.606133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031990, 0.292384, -0.955766,
		0.365991, -0.886411, -0.283418,
		-0.930069, -0.358868, -0.078654,
		37.321987, 37.100136, 39.582535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561726, 37.805931, 39.582947>,  <37.973038, 37.351341, 39.637592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561726, 37.805931, 39.582947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.947033, 37.908867, 39.552242>,  <39.178219, 37.970627, 39.533821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.947033, 37.908867, 39.552242>,  <38.561726, 37.805931, 39.582947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947033, 37.908867, 39.552242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212088, -0.553686, 0.805264,
		0.164725, -0.791965, -0.587926,
		0.963268, 0.257339, -0.076760,
		39.236012, 37.986069, 39.529213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916794, 37.141407, 39.587914>,  <38.561726, 37.805931, 39.582947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916794, 37.141407, 39.587914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.164276, 37.433903, 39.702801>,  <39.312767, 37.609398, 39.771732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.164276, 37.433903, 39.702801>,  <38.916794, 37.141407, 39.587914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164276, 37.433903, 39.702801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149193, -0.468307, 0.870879,
		0.771327, -0.495966, -0.398839,
		0.618705, 0.731236, 0.287223,
		39.349888, 37.653275, 39.788967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507496, 36.779217, 39.959881>,  <38.916794, 37.141407, 39.587914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507496, 36.779217, 39.959881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.479759, 37.153954, 40.097000>,  <39.463120, 37.378796, 40.179272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.479759, 37.153954, 40.097000>,  <39.507496, 36.779217, 39.959881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479759, 37.153954, 40.097000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044639, -0.346199, 0.937099,
		0.996594, 0.049674, 0.065825,
		-0.069338, 0.936845, 0.342802,
		39.458958, 37.435009, 40.199841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858608, 36.742081, 40.571724>,  <39.507496, 36.779217, 39.959881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858608, 36.742081, 40.571724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.645664, 37.075157, 40.632679>,  <39.517899, 37.275002, 40.669254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.645664, 37.075157, 40.632679>,  <39.858608, 36.742081, 40.571724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645664, 37.075157, 40.632679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036045, -0.157560, 0.986851,
		0.845752, 0.530850, 0.053864,
		-0.532357, 0.832690, 0.152391,
		39.485958, 37.324963, 40.678398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181801, 36.935448, 41.116852>,  <39.858608, 36.742081, 40.571724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181801, 36.935448, 41.116852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.843227, 37.147247, 41.094288>,  <39.640083, 37.274326, 41.080750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.843227, 37.147247, 41.094288>,  <40.181801, 36.935448, 41.116852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843227, 37.147247, 41.094288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268247, -0.332480, 0.904157,
		0.459996, 0.780440, 0.423459,
		-0.846432, 0.529500, -0.056412,
		39.589298, 37.306099, 41.077366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098438, 37.264889, 41.802639>,  <40.181801, 36.935448, 41.116852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098438, 37.264889, 41.802639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.732159, 37.257183, 41.642078>,  <39.512390, 37.252560, 41.545742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.732159, 37.257183, 41.642078>,  <40.098438, 37.264889, 41.802639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732159, 37.257183, 41.642078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391536, -0.182238, 0.901936,
		-0.090526, 0.983066, 0.159332,
		-0.915699, -0.019265, -0.401403,
		39.457447, 37.251404, 41.521656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684914, 37.770348, 42.188164>,  <40.098438, 37.264889, 41.802639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684914, 37.770348, 42.188164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440681, 37.495632, 42.030418>,  <39.294144, 37.330803, 41.935772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440681, 37.495632, 42.030418>,  <39.684914, 37.770348, 42.188164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440681, 37.495632, 42.030418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522557, -0.024804, 0.852243,
		-0.595089, 0.726438, -0.343740,
		-0.610576, -0.686784, -0.394366,
		39.257507, 37.289597, 41.912109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014481, 38.031284, 42.474159>,  <39.684914, 37.770348, 42.188164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014481, 38.031284, 42.474159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.972431, 37.650467, 42.359222>,  <38.947201, 37.421978, 42.290260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.972431, 37.650467, 42.359222>,  <39.014481, 38.031284, 42.474159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972431, 37.650467, 42.359222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506930, -0.197277, 0.839109,
		-0.855552, 0.233873, -0.461880,
		-0.105127, -0.952043, -0.287338,
		38.940891, 37.364853, 42.273022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398716, 37.841095, 42.739452>,  <39.014481, 38.031284, 42.474159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398716, 37.841095, 42.739452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.569458, 37.485821, 42.671432>,  <38.671902, 37.272655, 42.630619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.569458, 37.485821, 42.671432>,  <38.398716, 37.841095, 42.739452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569458, 37.485821, 42.671432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412981, -0.358746, 0.837107,
		-0.804513, -0.287096, -0.519937,
		0.426855, -0.888188, -0.170051,
		38.697514, 37.219364, 42.620419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957867, 37.309372, 43.026180>,  <38.398716, 37.841095, 42.739452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957867, 37.309372, 43.026180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311764, 37.125408, 42.995926>,  <38.524101, 37.015030, 42.977776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311764, 37.125408, 42.995926>,  <37.957867, 37.309372, 43.026180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311764, 37.125408, 42.995926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201552, -0.523833, 0.827633,
		-0.420254, -0.716996, -0.556151,
		0.884739, -0.459909, -0.075631,
		38.577187, 36.987434, 42.973236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822929, 36.633049, 43.222107>,  <37.957867, 37.309372, 43.026180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822929, 36.633049, 43.222107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220608, 36.638210, 43.264839>,  <38.459213, 36.641308, 43.290478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220608, 36.638210, 43.264839>,  <37.822929, 36.633049, 43.222107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220608, 36.638210, 43.264839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080626, -0.568162, 0.818957,
		0.071269, -0.822815, -0.563822,
		0.994194, 0.012908, 0.106832,
		38.518867, 36.642082, 43.296890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968163, 36.009094, 43.459461>,  <37.822929, 36.633049, 43.222107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968163, 36.009094, 43.459461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.309383, 36.196571, 43.551231>,  <38.514114, 36.309055, 43.606293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.309383, 36.196571, 43.551231>,  <37.968163, 36.009094, 43.459461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309383, 36.196571, 43.551231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077984, -0.549219, 0.832032,
		0.515970, -0.691873, -0.505061,
		0.853049, 0.468690, 0.229426,
		38.565300, 36.337177, 43.620060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346115, 35.532574, 43.651917>,  <37.968163, 36.009094, 43.459461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346115, 35.532574, 43.651917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505539, 35.859257, 43.818836>,  <38.601192, 36.055267, 43.918987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505539, 35.859257, 43.818836>,  <38.346115, 35.532574, 43.651917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505539, 35.859257, 43.818836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108742, -0.493869, 0.862710,
		0.910674, -0.298462, -0.285646,
		0.398558, 0.816709, 0.417298,
		38.625107, 36.104271, 43.944027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989639, 35.341171, 44.026009>,  <38.346115, 35.532574, 43.651917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989639, 35.341171, 44.026009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.846180, 35.674004, 44.195248>,  <38.760105, 35.873703, 44.296791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.846180, 35.674004, 44.195248>,  <38.989639, 35.341171, 44.026009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846180, 35.674004, 44.195248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231431, -0.359839, 0.903856,
		0.904329, 0.422085, -0.063513,
		-0.358649, 0.832082, 0.423096,
		38.738586, 35.923630, 44.322178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546043, 35.722721, 44.433289>,  <38.989639, 35.341171, 44.026009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546043, 35.722721, 44.433289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.188190, 35.823231, 44.581070>,  <38.973480, 35.883537, 44.669739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.188190, 35.823231, 44.581070>,  <39.546043, 35.722721, 44.433289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188190, 35.823231, 44.581070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250317, -0.403058, 0.880276,
		0.370097, 0.880004, 0.297692,
		-0.894634, 0.251270, 0.369450,
		38.919800, 35.898613, 44.691906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704571, 35.981750, 45.129871>,  <39.546043, 35.722721, 44.433289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704571, 35.981750, 45.129871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.306049, 35.969238, 45.161858>,  <39.066936, 35.961731, 45.181049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.306049, 35.969238, 45.161858>,  <39.704571, 35.981750, 45.129871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306049, 35.969238, 45.161858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085782, -0.321168, 0.943129,
		-0.003824, 0.946505, 0.322666,
		-0.996307, -0.031285, 0.079965,
		39.007156, 35.959854, 45.185848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597515, 36.175148, 45.803265>,  <39.704571, 35.981750, 45.129871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597515, 36.175148, 45.803265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.264973, 35.993427, 45.675232>,  <39.065445, 35.884396, 45.598412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.264973, 35.993427, 45.675232>,  <39.597515, 36.175148, 45.803265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264973, 35.993427, 45.675232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096683, -0.448949, 0.888311,
		-0.547261, 0.769452, 0.329315,
		-0.831359, -0.454299, -0.320086,
		39.015564, 35.857136, 45.579205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339241, 36.178555, 46.432213>,  <39.597515, 36.175148, 45.803265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339241, 36.178555, 46.432213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.127129, 35.917053, 46.216286>,  <38.999863, 35.760151, 46.086727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.127129, 35.917053, 46.216286>,  <39.339241, 36.178555, 46.432213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127129, 35.917053, 46.216286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094431, -0.587209, 0.803908,
		-0.842546, 0.477274, 0.249652,
		-0.530283, -0.653754, -0.539820,
		38.968044, 35.720928, 46.054340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660561, 36.011536, 46.676918>,  <39.339241, 36.178555, 46.432213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660561, 36.011536, 46.676918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.782520, 35.686878, 46.477608>,  <38.855698, 35.492085, 46.358021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.782520, 35.686878, 46.477608>,  <38.660561, 36.011536, 46.676918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782520, 35.686878, 46.477608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262561, -0.574546, 0.775216,
		-0.915476, -0.105538, -0.388285,
		0.304902, -0.811640, -0.498273,
		38.873989, 35.443386, 46.328125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.189053, 35.416569, 46.860867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.481323, 35.193985, 46.702644>,  <38.656685, 35.060436, 46.607712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.481323, 35.193985, 46.702644>,  <38.189053, 35.416569, 46.860867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481323, 35.193985, 46.702644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272499, -0.768933, 0.578348,
		-0.625983, -0.314797, -0.713476,
		0.730677, -0.556458, -0.395557,
		38.700527, 35.027046, 46.583977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917515, 34.745628, 46.600304>,  <38.189053, 35.416569, 46.860867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917515, 34.745628, 46.600304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.311211, 34.686569, 46.639240>,  <38.547428, 34.651134, 46.662601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.311211, 34.686569, 46.639240>,  <37.917515, 34.745628, 46.600304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311211, 34.686569, 46.639240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176590, -0.850241, 0.495889,
		0.009551, -0.505263, -0.862913,
		0.984238, -0.147646, 0.097345,
		38.606483, 34.642277, 46.668446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027542, 34.074711, 46.544907>,  <37.917515, 34.745628, 46.600304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027542, 34.074711, 46.544907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.371754, 34.195339, 46.709118>,  <38.578281, 34.267715, 46.807644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.371754, 34.195339, 46.709118>,  <38.027542, 34.074711, 46.544907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371754, 34.195339, 46.709118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008622, -0.797182, 0.603677,
		0.509321, -0.523024, -0.683402,
		0.860533, 0.301573, 0.410531,
		38.629913, 34.285812, 46.832279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489017, 33.607868, 46.387684>,  <38.027542, 34.074711, 46.544907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489017, 33.607868, 46.387684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.591396, 33.789612, 46.728985>,  <38.652824, 33.898659, 46.933765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.591396, 33.789612, 46.728985>,  <38.489017, 33.607868, 46.387684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591396, 33.789612, 46.728985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168342, -0.890120, 0.423494,
		0.951920, 0.035246, -0.304314,
		0.255949, 0.454360, 0.853256,
		38.668182, 33.925919, 46.984962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800659, 33.095314, 46.735271>,  <38.489017, 33.607868, 46.387684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800659, 33.095314, 46.735271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.814537, 33.382603, 47.013252>,  <38.822865, 33.554974, 47.180042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.814537, 33.382603, 47.013252>,  <38.800659, 33.095314, 46.735271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814537, 33.382603, 47.013252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332749, -0.663997, 0.669616,
		0.942377, 0.208012, -0.262024,
		0.034695, 0.718219, 0.694952,
		38.824947, 33.598068, 47.221737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421181, 33.047234, 47.145836>,  <38.800659, 33.095314, 46.735271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421181, 33.047234, 47.145836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.146336, 33.229946, 47.371834>,  <38.981426, 33.339573, 47.507431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.146336, 33.229946, 47.371834>,  <39.421181, 33.047234, 47.145836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146336, 33.229946, 47.371834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188946, -0.638544, 0.746031,
		0.701550, 0.619363, 0.352446,
		-0.687115, 0.456784, 0.564996,
		38.940201, 33.366982, 47.541332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696259, 32.970001, 47.708584>,  <39.421181, 33.047234, 47.145836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696259, 32.970001, 47.708584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.317635, 33.063419, 47.797565>,  <39.090462, 33.119473, 47.850952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.317635, 33.063419, 47.797565>,  <39.696259, 32.970001, 47.708584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317635, 33.063419, 47.797565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024120, -0.636509, 0.770892,
		0.321632, 0.735059, 0.596859,
		-0.946558, 0.233547, 0.222451,
		39.033669, 33.133484, 47.864300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660686, 33.000172, 48.475330>,  <39.696259, 32.970001, 47.708584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660686, 33.000172, 48.475330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.283993, 32.971127, 48.343960>,  <39.057976, 32.953701, 48.265137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.283993, 32.971127, 48.343960>,  <39.660686, 33.000172, 48.475330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283993, 32.971127, 48.343960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241493, -0.533689, 0.810467,
		-0.234126, 0.842557, 0.485059,
		-0.941736, -0.072613, -0.328422,
		39.001472, 32.949341, 48.245434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185024, 33.281197, 48.933418>,  <39.660686, 33.000172, 48.475330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185024, 33.281197, 48.933418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930729, 33.041584, 48.738689>,  <38.778152, 32.897816, 48.621853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930729, 33.041584, 48.738689>,  <39.185024, 33.281197, 48.933418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930729, 33.041584, 48.738689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019907, -0.617746, 0.786125,
		-0.771651, 0.509458, 0.380798,
		-0.635735, -0.599034, -0.486826,
		38.740009, 32.861874, 48.592640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535480, 33.149471, 49.300663>,  <39.185024, 33.281197, 48.933418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535480, 33.149471, 49.300663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.587234, 32.833088, 49.061451>,  <38.618286, 32.643257, 48.917923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.587234, 32.833088, 49.061451>,  <38.535480, 33.149471, 49.300663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587234, 32.833088, 49.061451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003928, -0.602683, 0.797970,
		-0.991586, -0.105598, -0.074873,
		0.129389, -0.790962, -0.598027,
		38.626053, 32.595798, 48.882042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094494, 32.605827, 49.557034>,  <38.535480, 33.149471, 49.300663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094494, 32.605827, 49.557034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318375, 32.386971, 49.308079>,  <38.452702, 32.255657, 49.158707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318375, 32.386971, 49.308079>,  <38.094494, 32.605827, 49.557034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318375, 32.386971, 49.308079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002540, -0.752177, 0.658956,
		-0.828691, -0.367237, -0.422384,
		0.559701, -0.547144, -0.622390,
		38.486286, 32.222828, 49.121361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714012, 32.021431, 49.481182>,  <38.094494, 32.605827, 49.557034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714012, 32.021431, 49.481182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093616, 31.931330, 49.392967>,  <38.321381, 31.877270, 49.340038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093616, 31.931330, 49.392967>,  <37.714012, 32.021431, 49.481182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093616, 31.931330, 49.392967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053814, -0.805086, 0.590712,
		-0.310611, -0.548725, -0.776158,
		0.949013, -0.225250, -0.220540,
		38.378319, 31.863754, 49.326805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759396, 31.217052, 49.375591>,  <37.714012, 32.021431, 49.481182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759396, 31.217052, 49.375591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.137444, 31.326971, 49.446281>,  <38.364273, 31.392921, 49.488697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.137444, 31.326971, 49.446281>,  <37.759396, 31.217052, 49.375591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137444, 31.326971, 49.446281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118816, -0.792963, 0.597573,
		0.304347, -0.543781, -0.782097,
		0.945122, 0.274795, 0.176726,
		38.420979, 31.409409, 49.499298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129215, 30.604895, 49.546738>,  <37.759396, 31.217052, 49.375591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129215, 30.604895, 49.546738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.383938, 30.884554, 49.676762>,  <38.536774, 31.052349, 49.754776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.383938, 30.884554, 49.676762>,  <38.129215, 30.604895, 49.546738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383938, 30.884554, 49.676762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341790, -0.633891, 0.693803,
		0.691126, -0.330717, -0.642629,
		0.636808, 0.699149, 0.325063,
		38.574982, 31.094299, 49.774281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808720, 30.334362, 49.582561>,  <38.129215, 30.604895, 49.546738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808720, 30.334362, 49.582561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.805016, 30.650331, 49.827816>,  <38.802795, 30.839912, 49.974968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.805016, 30.650331, 49.827816>,  <38.808720, 30.334362, 49.582561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805016, 30.650331, 49.827816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315499, -0.579535, 0.751398,
		0.948881, 0.200400, -0.243855,
		-0.009257, 0.789923, 0.613136,
		38.802238, 30.887308, 50.011757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505821, 30.217249, 50.009632>,  <38.808720, 30.334362, 49.582561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505821, 30.217249, 50.009632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.235947, 30.466049, 50.168583>,  <39.074020, 30.615330, 50.263954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.235947, 30.466049, 50.168583>,  <39.505821, 30.217249, 50.009632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235947, 30.466049, 50.168583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096326, -0.459574, 0.882900,
		0.731788, 0.633963, 0.250156,
		-0.674691, 0.621999, 0.397378,
		39.033539, 30.652649, 50.287796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796181, 30.271631, 50.598640>,  <39.505821, 30.217249, 50.009632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796181, 30.271631, 50.598640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.424164, 30.398981, 50.672035>,  <39.200954, 30.475391, 50.716072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.424164, 30.398981, 50.672035>,  <39.796181, 30.271631, 50.598640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424164, 30.398981, 50.672035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007706, -0.516117, 0.856483,
		0.367383, 0.795148, 0.482462,
		-0.930038, 0.318375, 0.183486,
		39.145153, 30.494493, 50.727081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671341, 30.422647, 51.379807>,  <39.796181, 30.271631, 50.598640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671341, 30.422647, 51.379807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.308865, 30.335011, 51.235138>,  <39.091377, 30.282429, 51.148335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.308865, 30.335011, 51.235138>,  <39.671341, 30.422647, 51.379807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308865, 30.335011, 51.235138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146992, -0.638754, 0.755239,
		-0.396489, 0.737558, 0.546631,
		-0.906195, -0.219094, -0.361674,
		39.037006, 30.269281, 51.126637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277512, 30.332590, 51.982513>,  <39.671341, 30.422647, 51.379807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277512, 30.332590, 51.982513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.081863, 30.150702, 51.684792>,  <38.964474, 30.041569, 51.506157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.081863, 30.150702, 51.684792>,  <39.277512, 30.332590, 51.982513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081863, 30.150702, 51.684792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264261, -0.735980, 0.623297,
		-0.831221, 0.501558, 0.239817,
		-0.489120, -0.454724, -0.744304,
		38.935127, 30.014284, 51.461502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793304, 29.937328, 52.332584>,  <39.277512, 30.332590, 51.982513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793304, 29.937328, 52.332584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.803257, 29.756174, 51.976097>,  <38.809231, 29.647482, 51.762203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.803257, 29.756174, 51.976097>,  <38.793304, 29.937328, 52.332584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803257, 29.756174, 51.976097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031518, -0.891410, 0.452100,
		-0.999193, 0.016838, -0.036457,
		0.024886, -0.452885, -0.891222,
		38.810722, 29.620308, 51.708729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405399, 29.313896, 52.456154>,  <38.793304, 29.937328, 52.332584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405399, 29.313896, 52.456154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.596001, 29.208014, 52.120804>,  <38.710361, 29.144484, 51.919594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.596001, 29.208014, 52.120804>,  <38.405399, 29.313896, 52.456154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596001, 29.208014, 52.120804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005975, -0.952600, 0.304167,
		-0.879154, -0.149945, -0.452333,
		0.476500, -0.264708, -0.838378,
		38.738953, 29.128601, 51.869289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126816, 28.541786, 52.238487>,  <38.405399, 29.313896, 52.456154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126816, 28.541786, 52.238487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.470753, 28.586281, 52.039169>,  <38.677116, 28.612978, 51.919579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.470753, 28.586281, 52.039169>,  <38.126816, 28.541786, 52.238487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470753, 28.586281, 52.039169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261730, -0.934016, 0.243129,
		-0.438368, -0.339471, -0.832222,
		0.859844, 0.111238, -0.498292,
		38.728706, 28.619652, 51.889683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275051, 27.880365, 51.721195>,  <38.126816, 28.541786, 52.238487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275051, 27.880365, 51.721195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.592182, 28.075960, 51.866699>,  <38.782459, 28.193317, 51.954002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.592182, 28.075960, 51.866699>,  <38.275051, 27.880365, 51.721195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592182, 28.075960, 51.866699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314537, -0.839530, 0.443009,
		0.522010, -0.236814, -0.819405,
		0.792825, 0.488988, 0.363756,
		38.830029, 28.222656, 51.975826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747677, 27.669075, 52.143555>,  <38.275051, 27.880365, 51.721195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747677, 27.669075, 52.143555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.393219, 27.493063, 52.085430>,  <37.180542, 27.387455, 52.050556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.393219, 27.493063, 52.085430>,  <37.747677, 27.669075, 52.143555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393219, 27.493063, 52.085430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317308, 0.804704, -0.501765,
		0.337725, -0.398529, -0.852711,
		-0.886148, -0.440030, -0.145312,
		37.127377, 27.361053, 52.041836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532177, 27.642817, 51.374592>,  <37.747677, 27.669075, 52.143555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532177, 27.642817, 51.374592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209011, 27.663029, 51.609444>,  <37.015110, 27.675156, 51.750355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209011, 27.663029, 51.609444>,  <37.532177, 27.642817, 51.374592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209011, 27.663029, 51.609444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357852, 0.749516, -0.556927,
		-0.468203, -0.660055, -0.587463,
		-0.807915, 0.050530, 0.587128,
		36.966637, 27.678188, 51.785583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073895, 27.811485, 50.942661>,  <37.532177, 27.642817, 51.374592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073895, 27.811485, 50.942661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.892815, 27.901794, 51.287704>,  <36.784168, 27.955980, 51.494732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.892815, 27.901794, 51.287704>,  <37.073895, 27.811485, 50.942661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892815, 27.901794, 51.287704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461176, 0.768685, -0.443216,
		-0.763140, -0.598456, -0.243860,
		-0.452697, 0.225773, 0.862608,
		36.757004, 27.969526, 51.546486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401909, 27.992056, 50.732430>,  <37.073895, 27.811485, 50.942661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401909, 27.992056, 50.732430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422680, 28.157627, 51.095963>,  <36.435143, 28.256969, 51.314083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422680, 28.157627, 51.095963>,  <36.401909, 27.992056, 50.732430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422680, 28.157627, 51.095963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379502, 0.849962, -0.365434,
		-0.923733, -0.325928, 0.201219,
		0.051923, 0.413927, 0.908828,
		36.438255, 28.281805, 51.368610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754452, 28.218002, 50.800404>,  <36.401909, 27.992056, 50.732430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754452, 28.218002, 50.800404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.010380, 28.414694, 51.036652>,  <36.163937, 28.532709, 51.178402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.010380, 28.414694, 51.036652>,  <35.754452, 28.218002, 50.800404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010380, 28.414694, 51.036652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230413, 0.855896, -0.462981,
		-0.733173, 0.160137, 0.660919,
		0.639819, 0.491730, 0.590622,
		36.202324, 28.562212, 51.213837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375767, 28.828480, 50.977547>,  <35.754452, 28.218002, 50.800404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375767, 28.828480, 50.977547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.758381, 28.910431, 51.060558>,  <35.987949, 28.959600, 51.110367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.758381, 28.910431, 51.060558>,  <35.375767, 28.828480, 50.977547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758381, 28.910431, 51.060558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105549, 0.906619, -0.408536,
		-0.271848, 0.368874, 0.888837,
		0.956534, 0.204876, 0.207528,
		36.045341, 28.971893, 51.122818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388966, 29.409790, 51.487106>,  <35.375767, 28.828480, 50.977547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388966, 29.409790, 51.487106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.726891, 29.418098, 51.273243>,  <35.929646, 29.423084, 51.144924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.726891, 29.418098, 51.273243>,  <35.388966, 29.409790, 51.487106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726891, 29.418098, 51.273243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284812, 0.863375, -0.416492,
		0.452956, 0.504135, 0.735309,
		0.844815, 0.020772, -0.534654,
		35.980335, 29.424330, 51.112846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580948, 30.127964, 51.515388>,  <35.388966, 29.409790, 51.487106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580948, 30.127964, 51.515388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.842308, 30.013002, 51.235256>,  <35.999123, 29.944025, 51.067177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.842308, 30.013002, 51.235256>,  <35.580948, 30.127964, 51.515388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842308, 30.013002, 51.235256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057375, 0.903665, -0.424379,
		0.754836, 0.317470, 0.573965,
		0.653399, -0.287405, -0.700334,
		36.038326, 29.926781, 51.025154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009243, 30.719749, 51.294083>,  <35.580948, 30.127964, 51.515388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009243, 30.719749, 51.294083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.073166, 30.499001, 50.966694>,  <36.111519, 30.366550, 50.770260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.073166, 30.499001, 50.966694>,  <36.009243, 30.719749, 51.294083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073166, 30.499001, 50.966694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138697, 0.833458, -0.534894,
		0.977355, -0.028037, 0.209739,
		0.159812, -0.551872, -0.818473,
		36.121109, 30.333439, 50.721153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505390, 31.111786, 50.882938>,  <36.009243, 30.719749, 51.294083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505390, 31.111786, 50.882938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.314678, 30.862864, 50.634609>,  <36.200249, 30.713511, 50.485611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.314678, 30.862864, 50.634609>,  <36.505390, 31.111786, 50.882938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314678, 30.862864, 50.634609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157989, 0.634093, -0.756945,
		0.864707, -0.458981, -0.204007,
		-0.476782, -0.622304, -0.620819,
		36.171642, 30.676172, 50.448364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909435, 31.025618, 50.363838>,  <36.505390, 31.111786, 50.882938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909435, 31.025618, 50.363838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.561943, 30.932140, 50.189163>,  <36.353447, 30.876055, 50.084358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.561943, 30.932140, 50.189163>,  <36.909435, 31.025618, 50.363838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561943, 30.932140, 50.189163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300324, 0.452550, -0.839645,
		0.393836, -0.860574, -0.322963,
		-0.868734, -0.233689, -0.436682,
		36.301323, 30.862032, 50.058159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011726, 30.727640, 49.676975>,  <36.909435, 31.025618, 50.363838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011726, 30.727640, 49.676975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.633873, 30.856373, 49.651360>,  <36.407162, 30.933613, 49.635990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.633873, 30.856373, 49.651360>,  <37.011726, 30.727640, 49.676975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633873, 30.856373, 49.651360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199299, 0.407650, -0.891124,
		-0.260684, -0.854545, -0.449219,
		-0.944629, 0.321831, -0.064042,
		36.350483, 30.952923, 49.632149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816635, 30.544552, 48.997829>,  <37.011726, 30.727640, 49.676975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816635, 30.544552, 48.997829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.548405, 30.817453, 49.114346>,  <36.387466, 30.981194, 49.184258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.548405, 30.817453, 49.114346>,  <36.816635, 30.544552, 48.997829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548405, 30.817453, 49.114346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093977, 0.467629, -0.878915,
		-0.735862, -0.562007, -0.377698,
		-0.670579, 0.682255, 0.291295,
		36.347233, 31.022129, 49.201733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417236, 30.697618, 48.390320>,  <36.816635, 30.544552, 48.997829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417236, 30.697618, 48.390320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.336288, 31.006109, 48.631733>,  <36.287720, 31.191204, 48.776581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.336288, 31.006109, 48.631733>,  <36.417236, 30.697618, 48.390320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336288, 31.006109, 48.631733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044750, 0.608361, -0.792398,
		-0.978287, -0.187364, -0.088600,
		-0.202368, 0.771227, 0.603536,
		36.275578, 31.237478, 48.812794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954548, 31.078745, 48.010944>,  <36.417236, 30.697618, 48.390320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954548, 31.078745, 48.010944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128723, 31.326620, 48.272137>,  <36.233227, 31.475346, 48.428852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128723, 31.326620, 48.272137>,  <35.954548, 31.078745, 48.010944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128723, 31.326620, 48.272137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000916, 0.725049, -0.688697,
		-0.900220, 0.300480, 0.315144,
		0.435434, 0.619690, 0.652979,
		36.259354, 31.512527, 48.468029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753525, 31.657064, 47.926636>,  <35.954548, 31.078745, 48.010944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753525, 31.657064, 47.926636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.078915, 31.791388, 48.116581>,  <36.274147, 31.871981, 48.230549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.078915, 31.791388, 48.116581>,  <35.753525, 31.657064, 47.926636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078915, 31.791388, 48.116581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071979, 0.752067, -0.655144,
		-0.577128, 0.567124, 0.587617,
		0.813476, 0.335806, 0.474860,
		36.322956, 31.892130, 48.259041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495972, 32.399223, 48.049900>,  <35.753525, 31.657064, 47.926636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495972, 32.399223, 48.049900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.890770, 32.340229, 48.075455>,  <36.127651, 32.304832, 48.090790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.890770, 32.340229, 48.075455>,  <35.495972, 32.399223, 48.049900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890770, 32.340229, 48.075455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156867, 0.797260, -0.582897,
		0.035033, 0.585341, 0.810030,
		0.986998, -0.147488, 0.063890,
		36.186871, 32.295982, 48.094624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800125, 33.075626, 48.209057>,  <35.495972, 32.399223, 48.049900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800125, 33.075626, 48.209057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079899, 32.841328, 48.045254>,  <36.247765, 32.700748, 47.946972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079899, 32.841328, 48.045254>,  <35.800125, 33.075626, 48.209057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079899, 32.841328, 48.045254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356378, 0.782499, -0.510578,
		0.619506, 0.211178, 0.756053,
		0.699434, -0.585747, -0.409504,
		36.289730, 32.665604, 47.922401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312458, 33.548271, 48.083416>,  <35.800125, 33.075626, 48.209057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312458, 33.548271, 48.083416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.399826, 33.226070, 47.863068>,  <36.452248, 33.032749, 47.730858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.399826, 33.226070, 47.863068>,  <36.312458, 33.548271, 48.083416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399826, 33.226070, 47.863068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262005, 0.592182, -0.762019,
		0.940025, 0.022106, 0.340389,
		0.218417, -0.805501, -0.550874,
		36.465351, 32.984421, 47.697807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789970, 33.849472, 47.692207>,  <36.312458, 33.548271, 48.083416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789970, 33.849472, 47.692207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758369, 33.490757, 47.518063>,  <36.739410, 33.275528, 47.413578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758369, 33.490757, 47.518063>,  <36.789970, 33.849472, 47.692207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758369, 33.490757, 47.518063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229599, 0.408615, -0.883356,
		0.970074, -0.169744, 0.173620,
		-0.079000, -0.896784, -0.435359,
		36.734669, 33.221722, 47.387455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423584, 33.653175, 47.279175>,  <36.789970, 33.849472, 47.692207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423584, 33.653175, 47.279175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.074615, 33.505135, 47.151485>,  <36.865234, 33.416309, 47.074871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.074615, 33.505135, 47.151485>,  <37.423584, 33.653175, 47.279175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074615, 33.505135, 47.151485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131258, 0.451731, -0.882446,
		0.470802, -0.811764, -0.345520,
		-0.872420, -0.370105, -0.319227,
		36.812889, 33.394104, 47.055717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.228939, 28.242134, 37.069550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.153072, 28.235746, 37.462238>,  <40.107552, 28.231915, 37.697849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.153072, 28.235746, 37.462238>,  <40.228939, 28.242134, 37.069550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153072, 28.235746, 37.462238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161016, 0.985825, 0.047143,
		-0.968557, 0.167014, -0.184403,
		-0.189663, -0.015969, 0.981719,
		40.096172, 28.230955, 37.756756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692215, 28.691479, 37.142426>,  <40.228939, 28.242134, 37.069550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692215, 28.691479, 37.142426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.853455, 28.663477, 37.507416>,  <39.950199, 28.646675, 37.726410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.853455, 28.663477, 37.507416>,  <39.692215, 28.691479, 37.142426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853455, 28.663477, 37.507416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084196, 0.995678, 0.039192,
		-0.911276, 0.061028, 0.407249,
		0.403098, -0.070004, 0.912476,
		39.974384, 28.642475, 37.781158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469601, 29.219788, 37.510174>,  <39.692215, 28.691479, 37.142426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469601, 29.219788, 37.510174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.808987, 29.146345, 37.708725>,  <40.012619, 29.102280, 37.827854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.808987, 29.146345, 37.708725>,  <39.469601, 29.219788, 37.510174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808987, 29.146345, 37.708725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140359, 0.982374, 0.123453,
		-0.510296, -0.035075, 0.859283,
		0.848468, -0.183606, 0.496378,
		40.063526, 29.091263, 37.857639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385868, 29.648642, 38.036343>,  <39.469601, 29.219788, 37.510174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385868, 29.648642, 38.036343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.773739, 29.552084, 38.051651>,  <40.006462, 29.494150, 38.060837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.773739, 29.552084, 38.051651>,  <39.385868, 29.648642, 38.036343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773739, 29.552084, 38.051651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218738, 0.926980, 0.304732,
		-0.109033, -0.287120, 0.951669,
		0.969673, -0.241392, 0.038268,
		40.064640, 29.479666, 38.063129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630100, 30.056129, 38.633175>,  <39.385868, 29.648642, 38.036343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630100, 30.056129, 38.633175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.956940, 29.959202, 38.423935>,  <40.153042, 29.901045, 38.298389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.956940, 29.959202, 38.423935>,  <39.630100, 30.056129, 38.633175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956940, 29.959202, 38.423935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421923, 0.869684, 0.256187,
		0.392851, -0.430037, 0.812857,
		0.817098, -0.242319, -0.523098,
		40.202068, 29.886505, 38.267006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250046, 30.171858, 39.066856>,  <39.630100, 30.056129, 38.633175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250046, 30.171858, 39.066856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.375504, 30.207779, 38.688744>,  <40.450779, 30.229332, 38.461876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.375504, 30.207779, 38.688744>,  <40.250046, 30.171858, 39.066856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375504, 30.207779, 38.688744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381294, 0.899818, 0.211994,
		0.869621, -0.426923, 0.247983,
		0.313645, 0.089800, -0.945285,
		40.469597, 30.234718, 38.405159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766968, 30.578821, 39.060059>,  <40.250046, 30.171858, 39.066856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766968, 30.578821, 39.060059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.739674, 30.607471, 38.662022>,  <40.723297, 30.624662, 38.423199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.739674, 30.607471, 38.662022>,  <40.766968, 30.578821, 39.060059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739674, 30.607471, 38.662022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446567, 0.894114, 0.033734,
		0.892145, -0.442074, -0.092998,
		-0.068238, 0.071625, -0.995095,
		40.719204, 30.628960, 38.363495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412811, 30.477003, 38.774391>,  <40.766968, 30.578821, 39.060059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412811, 30.477003, 38.774391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.197620, 30.679358, 38.504677>,  <41.068504, 30.800770, 38.342850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.197620, 30.679358, 38.504677>,  <41.412811, 30.477003, 38.774391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197620, 30.679358, 38.504677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666566, 0.744954, 0.027082,
		0.516010, -0.434884, -0.737977,
		-0.537982, 0.505884, -0.674282,
		41.036224, 30.831123, 38.302391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925983, 30.685396, 38.330383>,  <41.412811, 30.477003, 38.774391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925983, 30.685396, 38.330383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.599628, 30.909805, 38.274422>,  <41.403816, 31.044451, 38.240845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.599628, 30.909805, 38.274422>,  <41.925983, 30.685396, 38.330383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599628, 30.909805, 38.274422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577300, 0.803944, -0.142826,
		0.032350, -0.197299, -0.979809,
		-0.815891, 0.561023, -0.139909,
		41.354862, 31.078112, 38.232449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046169, 31.122013, 37.707809>,  <41.925983, 30.685396, 38.330383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046169, 31.122013, 37.707809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.753998, 31.285719, 37.926525>,  <41.578693, 31.383942, 38.057755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.753998, 31.285719, 37.926525>,  <42.046169, 31.122013, 37.707809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753998, 31.285719, 37.926525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487491, 0.873125, -0.002305,
		-0.478360, 0.264872, -0.837266,
		-0.730427, 0.409263, 0.546791,
		41.534870, 31.408497, 38.090561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865536, 31.830242, 37.369003>,  <42.046169, 31.122013, 37.707809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865536, 31.830242, 37.369003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.693321, 31.883024, 37.726154>,  <41.589993, 31.914694, 37.940445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.693321, 31.883024, 37.726154>,  <41.865536, 31.830242, 37.369003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693321, 31.883024, 37.726154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355651, 0.934020, 0.033457,
		-0.829549, 0.331957, -0.449058,
		-0.430536, 0.131954, 0.892876,
		41.564159, 31.922611, 37.994019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436394, 32.537350, 37.407196>,  <41.865536, 31.830242, 37.369003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436394, 32.537350, 37.407196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.564358, 32.403839, 37.761879>,  <41.641136, 32.323734, 37.974689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.564358, 32.403839, 37.761879>,  <41.436394, 32.537350, 37.407196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564358, 32.403839, 37.761879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242473, 0.933566, 0.263935,
		-0.915895, 0.130566, 0.379590,
		0.319912, -0.333777, 0.886707,
		41.660332, 32.303707, 38.027889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079697, 32.977367, 37.811169>,  <41.436394, 32.537350, 37.407196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079697, 32.977367, 37.811169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.388931, 32.831970, 38.019093>,  <41.574474, 32.744732, 38.143848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.388931, 32.831970, 38.019093>,  <41.079697, 32.977367, 37.811169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388931, 32.831970, 38.019093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333259, 0.930052, 0.154729,
		-0.539694, 0.053613, 0.840152,
		0.773090, -0.363494, 0.519811,
		41.620857, 32.722923, 38.175037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156078, 33.405087, 38.455570>,  <41.079697, 32.977367, 37.811169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156078, 33.405087, 38.455570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.509499, 33.217751, 38.456074>,  <41.721550, 33.105350, 38.456375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.509499, 33.217751, 38.456074>,  <41.156078, 33.405087, 38.455570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509499, 33.217751, 38.456074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455910, 0.860715, 0.226532,
		-0.107175, -0.199579, 0.974003,
		0.883549, -0.468336, 0.001257,
		41.774563, 33.077251, 38.456451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546978, 33.676498, 39.045780>,  <41.156078, 33.405087, 38.455570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546978, 33.676498, 39.045780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.835335, 33.512527, 38.822258>,  <42.008350, 33.414143, 38.688145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.835335, 33.512527, 38.822258>,  <41.546978, 33.676498, 39.045780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835335, 33.512527, 38.822258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514769, 0.856585, 0.035708,
		0.464027, -0.313399, 0.828529,
		0.720896, -0.409931, -0.558807,
		42.051605, 33.389549, 38.654617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254459, 33.851456, 39.410862>,  <41.546978, 33.676498, 39.045780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254459, 33.851456, 39.410862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.327122, 33.775284, 39.024963>,  <42.370720, 33.729584, 38.793423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.327122, 33.775284, 39.024963>,  <42.254459, 33.851456, 39.410862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327122, 33.775284, 39.024963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671843, 0.740433, -0.019645,
		0.718073, -0.644590, 0.262440,
		0.181656, -0.190425, -0.964748,
		42.381618, 33.718155, 38.735538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939590, 33.870556, 39.462727>,  <42.254459, 33.851456, 39.410862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939590, 33.870556, 39.462727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.835747, 33.907715, 39.078232>,  <42.773441, 33.930012, 38.847534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.835747, 33.907715, 39.078232>,  <42.939590, 33.870556, 39.462727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835747, 33.907715, 39.078232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676403, 0.727915, -0.112331,
		0.689262, -0.679345, -0.251811,
		-0.259609, 0.092900, -0.961235,
		42.757866, 33.935585, 38.789860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510101, 33.823574, 39.019833>,  <42.939590, 33.870556, 39.462727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510101, 33.823574, 39.019833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.239304, 34.048855, 38.830315>,  <43.076824, 34.184025, 38.716602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.239304, 34.048855, 38.830315>,  <43.510101, 33.823574, 39.019833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239304, 34.048855, 38.830315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693172, 0.704288, -0.153264,
		0.247369, -0.432181, -0.867196,
		-0.676994, 0.563203, -0.473795,
		43.036205, 34.217815, 38.688175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814758, 33.941856, 38.470772>,  <43.510101, 33.823574, 39.019833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814758, 33.941856, 38.470772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.547462, 34.237419, 38.505352>,  <43.387085, 34.414757, 38.526100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.547462, 34.237419, 38.505352>,  <43.814758, 33.941856, 38.470772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547462, 34.237419, 38.505352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705034, 0.666081, -0.243441,
		-0.237465, -0.101724, -0.966055,
		-0.668235, 0.738910, 0.086452,
		43.346992, 34.459091, 38.531288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.209911, 34.416721, 38.128391>,  <43.814758, 33.941856, 38.470772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.209911, 34.416721, 38.128391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.888138, 34.625778, 38.241344>,  <43.695076, 34.751213, 38.309116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.888138, 34.625778, 38.241344>,  <44.209911, 34.416721, 38.128391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888138, 34.625778, 38.241344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462448, 0.849320, -0.254554,
		-0.372874, -0.074183, -0.924912,
		-0.804429, 0.522640, 0.282384,
		43.646809, 34.782570, 38.326061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041977, 34.794113, 37.575611>,  <44.209911, 34.416721, 38.128391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041977, 34.794113, 37.575611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.901348, 35.006905, 37.883739>,  <43.816971, 35.134579, 38.068619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.901348, 35.006905, 37.883739>,  <44.041977, 34.794113, 37.575611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901348, 35.006905, 37.883739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573512, 0.772756, -0.271903,
		-0.739917, 0.346195, -0.576776,
		-0.351576, 0.531974, 0.770323,
		43.795876, 35.166496, 38.114838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.447212, 34.864754, 36.915073>,  <44.041977, 34.794113, 37.575611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.447212, 34.864754, 36.915073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.715092, 34.744537, 36.643433>,  <44.875820, 34.672409, 36.480450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.715092, 34.744537, 36.643433>,  <44.447212, 34.864754, 36.915073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.715092, 34.744537, 36.643433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560624, -0.804318, -0.196908,
		-0.487035, 0.512590, -0.707141,
		0.669700, -0.300539, -0.679101,
		44.916000, 34.654377, 36.439701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203560, 34.786091, 36.338184>,  <44.447212, 34.864754, 36.915073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203560, 34.786091, 36.338184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.526535, 34.567879, 36.248348>,  <44.720318, 34.436951, 36.194447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.526535, 34.567879, 36.248348>,  <44.203560, 34.786091, 36.338184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.526535, 34.567879, 36.248348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582657, -0.677706, -0.448582,
		0.092511, 0.493060, -0.865063,
		0.807436, -0.545534, -0.224589,
		44.768764, 34.404217, 36.180973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.948059, 34.468620, 35.808834>,  <44.203560, 34.786091, 36.338184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.948059, 34.468620, 35.808834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.286003, 34.267952, 35.883163>,  <44.488770, 34.147552, 35.927761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.286003, 34.267952, 35.883163>,  <43.948059, 34.468620, 35.808834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286003, 34.267952, 35.883163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380107, -0.807328, -0.451376,
		0.376461, 0.310720, -0.872772,
		0.844864, -0.501672, 0.185820,
		44.539463, 34.117451, 35.938908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275944, 34.309010, 35.169598>,  <43.948059, 34.468620, 35.808834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275944, 34.309010, 35.169598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.367805, 34.042385, 35.453274>,  <44.422924, 33.882412, 35.623482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.367805, 34.042385, 35.453274>,  <44.275944, 34.309010, 35.169598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367805, 34.042385, 35.453274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542070, -0.692791, -0.475605,
		0.808342, -0.275205, -0.520428,
		0.229659, -0.666560, 0.709193,
		44.436703, 33.842419, 35.666031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419735, 33.631569, 34.764553>,  <44.275944, 34.309010, 35.169598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419735, 33.631569, 34.764553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.356617, 33.538776, 35.148487>,  <44.318745, 33.483101, 35.378849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.356617, 33.538776, 35.148487>,  <44.419735, 33.631569, 34.764553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356617, 33.538776, 35.148487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470116, -0.837141, -0.279618,
		0.868384, -0.495357, 0.023037,
		-0.157796, -0.231986, 0.959835,
		44.309277, 33.469181, 35.436436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509304, 32.811050, 34.805023>,  <44.419735, 33.631569, 34.764553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509304, 32.811050, 34.805023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.300438, 32.913986, 35.130260>,  <44.175117, 32.975746, 35.325401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.300438, 32.913986, 35.130260>,  <44.509304, 32.811050, 34.805023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300438, 32.913986, 35.130260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635660, -0.753042, -0.169892,
		0.568574, -0.605562, 0.556793,
		-0.522169, 0.257335, 0.813092,
		44.143787, 32.991188, 35.374187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479591, 32.205410, 35.287975>,  <44.509304, 32.811050, 34.805023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479591, 32.205410, 35.287975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.169243, 32.436069, 35.390350>,  <43.983036, 32.574467, 35.451775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.169243, 32.436069, 35.390350>,  <44.479591, 32.205410, 35.287975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169243, 32.436069, 35.390350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629336, -0.735900, -0.249775,
		0.044311, -0.354863, 0.933868,
		-0.775869, 0.576648, 0.255936,
		43.936481, 32.609062, 35.467133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030323, 31.715689, 35.442078>,  <44.479591, 32.205410, 35.287975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030323, 31.715689, 35.442078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.767735, 32.016472, 35.418049>,  <43.610184, 32.196941, 35.403629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.767735, 32.016472, 35.418049>,  <44.030323, 31.715689, 35.442078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767735, 32.016472, 35.418049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733562, -0.654916, -0.181582,
		-0.175885, -0.075135, 0.981539,
		-0.656469, 0.751957, -0.060073,
		43.570793, 32.242058, 35.400028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.538155, 31.431389, 35.743000>,  <44.030323, 31.715689, 35.442078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.538155, 31.431389, 35.743000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.375336, 31.744650, 35.554962>,  <43.277645, 31.932606, 35.442139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.375336, 31.744650, 35.554962>,  <43.538155, 31.431389, 35.743000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375336, 31.744650, 35.554962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839943, -0.523151, -0.144252,
		-0.358901, 0.336134, 0.870749,
		-0.407045, 0.783152, -0.470093,
		43.253223, 31.979595, 35.413933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956841, 31.567322, 36.130356>,  <43.538155, 31.431389, 35.743000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956841, 31.567322, 36.130356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.918007, 31.711147, 35.759132>,  <42.894707, 31.797441, 35.536400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.918007, 31.711147, 35.759132>,  <42.956841, 31.567322, 36.130356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918007, 31.711147, 35.759132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803704, -0.578327, -0.139993,
		-0.587057, 0.732293, 0.345126,
		-0.097079, 0.359563, -0.928057,
		42.888882, 31.819016, 35.480717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310074, 31.787651, 36.037067>,  <42.956841, 31.567322, 36.130356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310074, 31.787651, 36.037067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.388805, 31.744633, 35.647259>,  <42.436047, 31.718821, 35.413372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.388805, 31.744633, 35.647259>,  <42.310074, 31.787651, 36.037067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388805, 31.744633, 35.647259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878319, -0.461029, -0.126522,
		-0.435676, 0.880844, -0.185206,
		0.196831, -0.107547, -0.974521,
		42.447853, 31.712368, 35.354904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621471, 31.880030, 35.666496>,  <42.310074, 31.787651, 36.037067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621471, 31.880030, 35.666496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.876251, 31.707352, 35.411015>,  <42.029118, 31.603745, 35.257725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.876251, 31.707352, 35.411015>,  <41.621471, 31.880030, 35.666496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876251, 31.707352, 35.411015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747102, -0.549969, -0.373326,
		-0.190102, 0.714963, -0.672822,
		0.636945, -0.431696, -0.638701,
		42.067333, 31.577843, 35.219406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193180, 31.942152, 35.036545>,  <41.621471, 31.880030, 35.666496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193180, 31.942152, 35.036545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.448193, 31.634186, 35.025372>,  <41.601200, 31.449406, 35.018669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.448193, 31.634186, 35.025372>,  <41.193180, 31.942152, 35.036545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448193, 31.634186, 35.025372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768975, -0.633693, -0.084325,
		0.047224, 0.075238, -0.996047,
		0.637532, -0.769917, -0.027931,
		41.639454, 31.403210, 35.016991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951340, 31.513988, 34.552570>,  <41.193180, 31.942152, 35.036545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951340, 31.513988, 34.552570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.192986, 31.260553, 34.745907>,  <41.337971, 31.108492, 34.861908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.192986, 31.260553, 34.745907>,  <40.951340, 31.513988, 34.552570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192986, 31.260553, 34.745907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689838, -0.719433, -0.080870,
		0.398967, -0.284571, -0.871691,
		0.604110, -0.633590, 0.483338,
		41.374218, 31.070477, 34.890907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786907, 30.916140, 34.212605>,  <40.951340, 31.513988, 34.552570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786907, 30.916140, 34.212605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.990459, 30.764700, 34.521851>,  <41.112591, 30.673836, 34.707397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.990459, 30.764700, 34.521851>,  <40.786907, 30.916140, 34.212605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990459, 30.764700, 34.521851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542610, -0.838288, -0.053359,
		0.668292, -0.392345, -0.632022,
		0.508882, -0.378600, 0.773112,
		41.143124, 30.651119, 34.753784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850899, 30.130356, 34.027096>,  <40.786907, 30.916140, 34.212605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850899, 30.130356, 34.027096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.946930, 30.148083, 34.414993>,  <41.004551, 30.158718, 34.647732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.946930, 30.148083, 34.414993>,  <40.850899, 30.130356, 34.027096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946930, 30.148083, 34.414993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630222, -0.752701, 0.190423,
		0.738364, -0.656869, -0.152780,
		0.240081, 0.044316, 0.969741,
		41.018955, 30.161377, 34.705917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995110, 29.488615, 34.316273>,  <40.850899, 30.130356, 34.027096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995110, 29.488615, 34.316273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.884811, 29.696772, 34.639545>,  <40.818634, 29.821667, 34.833508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.884811, 29.696772, 34.639545>,  <40.995110, 29.488615, 34.316273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884811, 29.696772, 34.639545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564104, -0.768377, 0.302296,
		0.778301, -0.372542, 0.505431,
		-0.275744, 0.520393, 0.808181,
		40.802090, 29.852890, 34.882000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010147, 28.989843, 34.932117>,  <40.995110, 29.488615, 34.316273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010147, 28.989843, 34.932117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.781338, 29.299353, 35.040977>,  <40.644051, 29.485058, 35.106293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.781338, 29.299353, 35.040977>,  <41.010147, 28.989843, 34.932117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781338, 29.299353, 35.040977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703028, -0.633432, 0.323289,
		0.422541, -0.006400, 0.906321,
		-0.572023, 0.773772, 0.272150,
		40.609730, 29.531485, 35.122623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544746, 28.712038, 35.450806>,  <41.010147, 28.989843, 34.932117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544746, 28.712038, 35.450806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.356983, 29.053768, 35.361557>,  <40.244324, 29.258806, 35.308010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.356983, 29.053768, 35.361557>,  <40.544746, 28.712038, 35.450806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356983, 29.053768, 35.361557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861273, -0.387329, 0.328914,
		0.194580, 0.346561, 0.917624,
		-0.469411, 0.854326, -0.223117,
		40.216160, 29.310066, 35.294621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093693, 28.909525, 36.009720>,  <40.544746, 28.712038, 35.450806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093693, 28.909525, 36.009720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.955944, 29.073669, 35.671959>,  <39.873295, 29.172155, 35.469303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.955944, 29.073669, 35.671959>,  <40.093693, 28.909525, 36.009720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955944, 29.073669, 35.671959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884828, -0.442517, 0.145801,
		-0.313831, 0.797361, 0.515485,
		-0.344367, 0.410359, -0.844403,
		39.852634, 29.196777, 35.418636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445435, 29.225115, 36.177505>,  <40.093693, 28.909525, 36.009720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445435, 29.225115, 36.177505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.473305, 29.144690, 35.786667>,  <39.490028, 29.096434, 35.552162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.473305, 29.144690, 35.786667>,  <39.445435, 29.225115, 36.177505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473305, 29.144690, 35.786667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940087, -0.340921, 0.003118,
		-0.333740, 0.918339, -0.212772,
		0.069675, -0.201064, -0.977097,
		39.494205, 29.084370, 35.493538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.054207, 37.231384, 44.438854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937611, 36.881264, 44.284519>,  <38.867653, 36.671192, 44.191917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937611, 36.881264, 44.284519>,  <39.054207, 37.231384, 44.438854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937611, 36.881264, 44.284519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234575, 0.325633, -0.915935,
		0.927365, -0.357497, 0.110405,
		-0.291493, -0.875305, -0.385841,
		38.850163, 36.618671, 44.168766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519348, 37.106380, 43.899345>,  <39.054207, 37.231384, 44.438854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519348, 37.106380, 43.899345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225704, 36.845337, 43.824322>,  <39.049519, 36.688709, 43.779308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225704, 36.845337, 43.824322>,  <39.519348, 37.106380, 43.899345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225704, 36.845337, 43.824322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209963, 0.044514, -0.976696,
		0.645749, -0.756386, 0.104345,
		-0.734114, -0.652609, -0.187558,
		39.005470, 36.649555, 43.768055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817024, 36.681953, 43.396240>,  <39.519348, 37.106380, 43.899345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817024, 36.681953, 43.396240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418217, 36.663895, 43.371212>,  <39.178932, 36.653061, 43.356197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418217, 36.663895, 43.371212>,  <39.817024, 36.681953, 43.396240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418217, 36.663895, 43.371212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057801, 0.100083, -0.993299,
		0.051100, -0.993954, -0.097176,
		-0.997019, -0.045140, -0.062566,
		39.119110, 36.650352, 43.352444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689644, 36.323364, 42.825798>,  <39.817024, 36.681953, 43.396240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689644, 36.323364, 42.825798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348549, 36.523396, 42.886147>,  <39.143890, 36.643414, 42.922356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348549, 36.523396, 42.886147>,  <39.689644, 36.323364, 42.825798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348549, 36.523396, 42.886147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054394, 0.202261, -0.977820,
		-0.519499, -0.842031, -0.145275,
		-0.852738, 0.500075, 0.150876,
		39.092728, 36.673416, 42.931408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342102, 36.135563, 42.314861>,  <39.689644, 36.323364, 42.825798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342102, 36.135563, 42.314861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151016, 36.471645, 42.417503>,  <39.036366, 36.673294, 42.479088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151016, 36.471645, 42.417503>,  <39.342102, 36.135563, 42.314861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151016, 36.471645, 42.417503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071131, 0.254141, -0.964548,
		-0.875633, -0.479027, -0.061641,
		-0.477710, 0.840206, 0.256608,
		39.007702, 36.723705, 42.494484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701607, 36.119499, 41.829144>,  <39.342102, 36.135563, 42.314861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701607, 36.119499, 41.829144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795341, 36.482693, 41.968086>,  <38.851582, 36.700607, 42.051453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795341, 36.482693, 41.968086>,  <38.701607, 36.119499, 41.829144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795341, 36.482693, 41.968086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033523, 0.349547, -0.936319,
		-0.971577, 0.231062, 0.051475,
		0.234340, 0.907980, 0.347358,
		38.865643, 36.755085, 42.072292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278633, 36.581341, 41.511047>,  <38.701607, 36.119499, 41.829144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278633, 36.581341, 41.511047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595127, 36.802162, 41.616257>,  <38.785023, 36.934654, 41.679382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595127, 36.802162, 41.616257>,  <38.278633, 36.581341, 41.511047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595127, 36.802162, 41.616257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124515, 0.275657, -0.953157,
		-0.598698, 0.786924, 0.149371,
		0.791238, 0.552054, 0.263019,
		38.832497, 36.967777, 41.695164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268093, 37.178715, 40.998035>,  <38.278633, 36.581341, 41.511047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268093, 37.178715, 40.998035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629559, 37.222584, 41.163616>,  <38.846439, 37.248905, 41.262966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629559, 37.222584, 41.163616>,  <38.268093, 37.178715, 40.998035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629559, 37.222584, 41.163616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268446, 0.608059, -0.747128,
		-0.333647, 0.786280, 0.520042,
		0.903668, 0.109674, 0.413951,
		38.900658, 37.255486, 41.287800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406395, 37.859749, 41.060913>,  <38.268093, 37.178715, 40.998035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406395, 37.859749, 41.060913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767502, 37.688797, 41.080341>,  <38.984165, 37.586224, 41.091999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767502, 37.688797, 41.080341>,  <38.406395, 37.859749, 41.060913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767502, 37.688797, 41.080341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265807, 0.465536, -0.844170,
		0.338173, 0.774997, 0.533871,
		0.902766, -0.427382, 0.048568,
		39.038330, 37.560581, 41.094913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884228, 38.435902, 40.844704>,  <38.406395, 37.859749, 41.060913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884228, 38.435902, 40.844704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085236, 38.092365, 40.804966>,  <39.205841, 37.886246, 40.781124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085236, 38.092365, 40.804966>,  <38.884228, 38.435902, 40.844704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085236, 38.092365, 40.804966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430510, 0.348223, -0.832708,
		0.749757, 0.375681, 0.544727,
		0.502519, -0.858839, -0.099348,
		39.235992, 37.834713, 40.775162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550846, 38.631260, 40.675472>,  <38.884228, 38.435902, 40.844704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550846, 38.631260, 40.675472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498909, 38.265839, 40.521294>,  <39.467747, 38.046585, 40.428787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498909, 38.265839, 40.521294>,  <39.550846, 38.631260, 40.675472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498909, 38.265839, 40.521294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371124, 0.315703, -0.873268,
		0.919460, -0.256438, 0.298048,
		-0.129845, -0.913548, -0.385447,
		39.459957, 37.991776, 40.405659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201591, 38.544834, 40.219582>,  <39.550846, 38.631260, 40.675472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201591, 38.544834, 40.219582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932171, 38.280067, 40.088005>,  <39.770519, 38.121208, 40.009060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932171, 38.280067, 40.088005>,  <40.201591, 38.544834, 40.219582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932171, 38.280067, 40.088005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229727, 0.235522, -0.944327,
		0.702537, -0.711617, -0.006576,
		-0.673548, -0.661915, -0.328941,
		39.730106, 38.081493, 39.989323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125378, 38.269711, 39.576500>,  <40.201591, 38.544834, 40.219582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125378, 38.269711, 39.576500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975166, 37.900246, 39.607052>,  <39.885040, 37.678566, 39.625381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975166, 37.900246, 39.607052>,  <40.125378, 38.269711, 39.576500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975166, 37.900246, 39.607052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486992, -0.266765, -0.831670,
		0.788556, -0.275117, 0.549991,
		-0.375525, -0.923660, 0.076379,
		39.862507, 37.623146, 39.629967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722988, 37.836864, 39.334091>,  <40.125378, 38.269711, 39.576500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722988, 37.836864, 39.334091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392490, 37.611702, 39.342705>,  <40.194191, 37.476604, 39.347874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392490, 37.611702, 39.342705>,  <40.722988, 37.836864, 39.334091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392490, 37.611702, 39.342705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340196, -0.529084, -0.777391,
		0.448988, -0.634988, 0.628649,
		-0.826242, -0.562903, 0.021532,
		40.144619, 37.442829, 39.349163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321533, 37.557129, 39.206520>,  <40.722988, 37.836864, 39.334091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321533, 37.557129, 39.206520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493790, 37.439209, 38.865314>,  <41.597145, 37.368458, 38.660591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493790, 37.439209, 38.865314>,  <41.321533, 37.557129, 39.206520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493790, 37.439209, 38.865314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437690, -0.894783, 0.088268,
		-0.789286, 0.335345, -0.514365,
		0.430645, -0.294801, -0.853017,
		41.622982, 37.350769, 38.609409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836597, 37.223190, 38.679176>,  <41.321533, 37.557129, 39.206520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836597, 37.223190, 38.679176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201843, 37.066475, 38.634052>,  <41.420990, 36.972446, 38.606976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201843, 37.066475, 38.634052>,  <40.836597, 37.223190, 38.679176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201843, 37.066475, 38.634052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392561, -0.919583, 0.016228,
		-0.110099, 0.029467, -0.993484,
		0.913112, -0.391789, -0.112813,
		41.475777, 36.948936, 38.600208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835320, 36.752659, 38.183033>,  <40.836597, 37.223190, 38.679176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835320, 36.752659, 38.183033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131577, 36.617092, 38.415096>,  <41.309330, 36.535751, 38.554333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131577, 36.617092, 38.415096>,  <40.835320, 36.752659, 38.183033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131577, 36.617092, 38.415096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462216, -0.883687, 0.073842,
		0.487650, -0.322848, -0.811152,
		0.740644, -0.338919, 0.580155,
		41.353771, 36.515415, 38.589142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912998, 36.071754, 38.030415>,  <40.835320, 36.752659, 38.183033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912998, 36.071754, 38.030415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094982, 36.109890, 38.384571>,  <41.204170, 36.132771, 38.597065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094982, 36.109890, 38.384571>,  <40.912998, 36.071754, 38.030415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094982, 36.109890, 38.384571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374871, -0.881363, 0.287527,
		0.807766, -0.462721, -0.365244,
		0.454958, 0.095335, 0.885395,
		41.231468, 36.138489, 38.650188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487148, 35.516418, 38.102596>,  <40.912998, 36.071754, 38.030415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487148, 35.516418, 38.102596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329422, 35.661461, 38.440361>,  <41.234787, 35.748486, 38.643021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329422, 35.661461, 38.440361>,  <41.487148, 35.516418, 38.102596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329422, 35.661461, 38.440361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370811, -0.903520, 0.214827,
		0.840842, -0.228408, 0.490729,
		-0.394315, 0.362603, 0.844414,
		41.211128, 35.770241, 38.693684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624485, 34.986359, 38.631210>,  <41.487148, 35.516418, 38.102596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624485, 34.986359, 38.631210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398106, 35.239876, 38.842113>,  <41.262276, 35.391987, 38.968655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398106, 35.239876, 38.842113>,  <41.624485, 34.986359, 38.631210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398106, 35.239876, 38.842113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340964, -0.762217, 0.550244,
		0.750627, 0.131636, 0.647481,
		-0.565953, 0.633795, 0.527258,
		41.228321, 35.430016, 39.000290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806538, 34.872169, 39.302620>,  <41.624485, 34.986359, 38.631210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806538, 34.872169, 39.302620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439266, 35.030590, 39.306484>,  <41.218903, 35.125641, 39.308804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439266, 35.030590, 39.306484>,  <41.806538, 34.872169, 39.302620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439266, 35.030590, 39.306484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335329, -0.789929, 0.513388,
		0.210958, 0.468143, 0.858102,
		-0.918178, 0.396050, 0.009660,
		41.163815, 35.149406, 39.309383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511818, 34.752537, 39.988094>,  <41.806538, 34.872169, 39.302620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511818, 34.752537, 39.988094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200916, 34.821709, 39.746113>,  <41.014378, 34.863213, 39.600922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200916, 34.821709, 39.746113>,  <41.511818, 34.752537, 39.988094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200916, 34.821709, 39.746113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443453, -0.832650, 0.331729,
		-0.446351, 0.526107, 0.723866,
		-0.777252, 0.172932, -0.604958,
		40.967739, 34.873589, 39.564625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855179, 34.924999, 40.454353>,  <41.511818, 34.752537, 39.988094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855179, 34.924999, 40.454353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682217, 34.800186, 40.115967>,  <40.578438, 34.725296, 39.912933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682217, 34.800186, 40.115967>,  <40.855179, 34.924999, 40.454353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682217, 34.800186, 40.115967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482052, -0.712881, 0.509339,
		-0.762006, 0.628041, 0.157836,
		-0.432404, -0.312034, -0.845968,
		40.552494, 34.706577, 39.862175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218540, 34.813435, 40.667522>,  <40.855179, 34.924999, 40.454353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218540, 34.813435, 40.667522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251633, 34.611988, 40.323540>,  <40.271488, 34.491119, 40.117149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251633, 34.611988, 40.323540>,  <40.218540, 34.813435, 40.667522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251633, 34.611988, 40.323540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541574, -0.747094, 0.385419,
		-0.836572, 0.433844, -0.334554,
		0.082731, -0.503617, -0.859957,
		40.276451, 34.460903, 40.065552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536018, 34.573856, 40.398243>,  <40.218540, 34.813435, 40.667522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536018, 34.573856, 40.398243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794128, 34.323280, 40.223343>,  <39.948994, 34.172935, 40.118401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794128, 34.323280, 40.223343>,  <39.536018, 34.573856, 40.398243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794128, 34.323280, 40.223343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539245, -0.778920, 0.320152,
		-0.541141, 0.029200, -0.840425,
		0.645275, -0.626442, -0.437252,
		39.987713, 34.135349, 40.092167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154575, 34.109146, 39.896263>,  <39.536018, 34.573856, 40.398243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154575, 34.109146, 39.896263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505650, 33.939384, 39.985306>,  <39.716293, 33.837528, 40.038731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505650, 33.939384, 39.985306>,  <39.154575, 34.109146, 39.896263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505650, 33.939384, 39.985306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477663, -0.812367, 0.334512,
		0.038869, -0.399926, -0.915723,
		0.877683, -0.424405, 0.222605,
		39.768955, 33.812061, 40.052086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062847, 33.360729, 39.827156>,  <39.154575, 34.109146, 39.896263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062847, 33.360729, 39.827156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402142, 33.368423, 40.038864>,  <39.605717, 33.373039, 40.165890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402142, 33.368423, 40.038864>,  <39.062847, 33.360729, 39.827156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402142, 33.368423, 40.038864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372971, -0.687815, 0.622739,
		0.376023, -0.725631, -0.576252,
		0.848233, 0.019239, 0.529273,
		39.656612, 33.374195, 40.197647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177265, 32.649872, 39.912956>,  <39.062847, 33.360729, 39.827156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177265, 32.649872, 39.912956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368523, 32.877014, 40.180962>,  <39.483276, 33.013298, 40.341766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368523, 32.877014, 40.180962>,  <39.177265, 32.649872, 39.912956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368523, 32.877014, 40.180962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424097, -0.518763, 0.742311,
		0.769106, -0.639081, -0.007215,
		0.478140, 0.567856, 0.670016,
		39.511967, 33.047371, 40.381966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687393, 32.100418, 39.546005>,  <39.177265, 32.649872, 39.912956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687393, 32.100418, 39.546005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289310, 32.102413, 39.585064>,  <38.050461, 32.103611, 39.608498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289310, 32.102413, 39.585064>,  <38.687393, 32.100418, 39.546005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289310, 32.102413, 39.585064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060622, 0.752064, -0.656296,
		-0.076707, -0.659071, -0.748158,
		-0.995209, 0.004987, 0.097643,
		37.990749, 32.103909, 39.614357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382885, 32.084545, 38.931847>,  <38.687393, 32.100418, 39.546005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382885, 32.084545, 38.931847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093292, 32.227737, 39.167709>,  <37.919537, 32.313652, 39.309227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093292, 32.227737, 39.167709>,  <38.382885, 32.084545, 38.931847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093292, 32.227737, 39.167709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380004, 0.506440, -0.774026,
		-0.575717, -0.784453, -0.230616,
		-0.723980, 0.357985, 0.589661,
		37.876099, 32.335133, 39.344608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883823, 32.209152, 38.401157>,  <38.382885, 32.084545, 38.931847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883823, 32.209152, 38.401157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739170, 32.400433, 38.721294>,  <37.652378, 32.515202, 38.913376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739170, 32.400433, 38.721294>,  <37.883823, 32.209152, 38.401157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739170, 32.400433, 38.721294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531694, 0.599376, -0.598373,
		-0.765849, -0.641926, 0.037504,
		-0.361632, 0.478204, 0.800340,
		37.630680, 32.543892, 38.961395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129276, 32.306965, 38.278645>,  <37.883823, 32.209152, 38.401157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129276, 32.306965, 38.278645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251110, 32.596184, 38.526653>,  <37.324211, 32.769714, 38.675457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251110, 32.596184, 38.526653>,  <37.129276, 32.306965, 38.278645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251110, 32.596184, 38.526653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454474, 0.682396, -0.572529,
		-0.837068, -0.107401, 0.536454,
		0.304584, 0.723050, 0.620022,
		37.342484, 32.813099, 38.712662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566101, 32.711658, 38.409134>,  <37.129276, 32.306965, 38.278645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566101, 32.711658, 38.409134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876659, 32.946007, 38.502056>,  <37.062996, 33.086617, 38.557812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876659, 32.946007, 38.502056>,  <36.566101, 32.711658, 38.409134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876659, 32.946007, 38.502056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441824, 0.768816, -0.462292,
		-0.449445, 0.256282, 0.855757,
		0.776396, 0.585868, 0.232308,
		37.109577, 33.121769, 38.571747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254635, 33.334053, 38.381458>,  <36.566101, 32.711658, 38.409134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254635, 33.334053, 38.381458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643044, 33.427483, 38.401669>,  <36.876091, 33.483540, 38.413795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643044, 33.427483, 38.401669>,  <36.254635, 33.334053, 38.381458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643044, 33.427483, 38.401669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161174, 0.796195, -0.583178,
		-0.176441, 0.558138, 0.810772,
		0.971026, 0.233572, 0.050525,
		36.934353, 33.497555, 38.416824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269592, 34.074150, 38.379864>,  <36.254635, 33.334053, 38.381458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269592, 34.074150, 38.379864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622452, 33.933853, 38.254135>,  <36.834167, 33.849674, 38.178696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622452, 33.933853, 38.254135>,  <36.269592, 34.074150, 38.379864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622452, 33.933853, 38.254135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011700, 0.650866, -0.759103,
		0.470832, 0.673316, 0.570054,
		0.882145, -0.350741, -0.314326,
		36.887096, 33.828632, 38.159836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724182, 34.601822, 38.185394>,  <36.269592, 34.074150, 38.379864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724182, 34.601822, 38.185394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880665, 34.297272, 37.978603>,  <36.974556, 34.114544, 37.854530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880665, 34.297272, 37.978603>,  <36.724182, 34.601822, 38.185394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880665, 34.297272, 37.978603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235907, 0.625942, -0.743333,
		0.889551, 0.168841, 0.424489,
		0.391211, -0.761373, -0.516977,
		36.998028, 34.068859, 37.823509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422302, 34.819530, 37.851040>,  <36.724182, 34.601822, 38.185394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422302, 34.819530, 37.851040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284512, 34.514843, 37.631546>,  <37.201836, 34.332031, 37.499851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284512, 34.514843, 37.631546>,  <37.422302, 34.819530, 37.851040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284512, 34.514843, 37.631546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337730, 0.444826, -0.829499,
		0.875941, -0.471070, 0.104023,
		-0.344480, -0.761723, -0.548736,
		37.181168, 34.286327, 37.466927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953308, 34.667995, 37.408726>,  <37.422302, 34.819530, 37.851040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953308, 34.667995, 37.408726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626240, 34.524887, 37.228321>,  <37.430000, 34.439022, 37.120079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626240, 34.524887, 37.228321>,  <37.953308, 34.667995, 37.408726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626240, 34.524887, 37.228321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356403, 0.300651, -0.884639,
		0.452101, -0.884084, -0.118320,
		-0.817669, -0.357777, -0.451015,
		37.380939, 34.417553, 37.093018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120113, 34.407177, 36.755856>,  <37.953308, 34.667995, 37.408726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120113, 34.407177, 36.755856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726955, 34.407654, 36.682186>,  <37.491062, 34.407940, 36.637985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726955, 34.407654, 36.682186>,  <38.120113, 34.407177, 36.755856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726955, 34.407654, 36.682186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176805, 0.286196, -0.941717,
		0.051584, -0.958170, -0.281512,
		-0.982893, 0.001195, -0.184173,
		37.432087, 34.408012, 36.626934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990036, 34.217487, 36.081501>,  <38.120113, 34.407177, 36.755856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990036, 34.217487, 36.081501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664894, 34.439026, 36.153637>,  <37.469807, 34.571949, 36.196918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664894, 34.439026, 36.153637>,  <37.990036, 34.217487, 36.081501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664894, 34.439026, 36.153637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112540, 0.453112, -0.884321,
		-0.571489, -0.698531, -0.430645,
		-0.812856, 0.553845, 0.180335,
		37.421036, 34.605179, 36.207737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.427330, 29.001736, 41.031204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.167988, 29.095695, 41.320881>,  <38.012383, 29.152071, 41.494686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.167988, 29.095695, 41.320881>,  <38.427330, 29.001736, 41.031204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167988, 29.095695, 41.320881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471556, 0.622883, -0.624220,
		-0.597715, -0.746216, -0.293084,
		-0.648360, 0.234901, 0.724190,
		37.973480, 29.166166, 41.538139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720169, 28.870111, 40.822010>,  <38.427330, 29.001736, 41.031204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720169, 28.870111, 40.822010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.737232, 29.163677, 41.093170>,  <37.747471, 29.339817, 41.255867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.737232, 29.163677, 41.093170>,  <37.720169, 28.870111, 40.822010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737232, 29.163677, 41.093170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433268, 0.624987, -0.649361,
		-0.900255, -0.266012, 0.344644,
		0.042660, 0.733913, 0.677902,
		37.750031, 29.383852, 41.296539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235519, 29.263229, 40.571655>,  <37.720169, 28.870111, 40.822010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235519, 29.263229, 40.571655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.437809, 29.483614, 40.837193>,  <37.559181, 29.615845, 40.996513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.437809, 29.483614, 40.837193>,  <37.235519, 29.263229, 40.571655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437809, 29.483614, 40.837193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323071, 0.834455, -0.446442,
		-0.799917, 0.011309, 0.600004,
		0.505725, 0.550960, 0.663841,
		37.589527, 29.648903, 41.036346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851997, 29.812941, 40.774933>,  <37.235519, 29.263229, 40.571655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851997, 29.812941, 40.774933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.226624, 29.921453, 40.863697>,  <37.451401, 29.986561, 40.916958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.226624, 29.921453, 40.863697>,  <36.851997, 29.812941, 40.774933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226624, 29.921453, 40.863697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180732, 0.916305, -0.357380,
		-0.300291, 0.294604, 0.907212,
		0.936569, 0.271281, 0.221914,
		37.507595, 30.002838, 40.930271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813126, 30.490646, 41.007824>,  <36.851997, 29.812941, 40.774933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813126, 30.490646, 41.007824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.202511, 30.453445, 40.924187>,  <37.436142, 30.431126, 40.874004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.202511, 30.453445, 40.924187>,  <36.813126, 30.490646, 41.007824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202511, 30.453445, 40.924187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042048, 0.970831, -0.236049,
		0.224949, 0.220993, 0.948978,
		0.973463, -0.093001, -0.209095,
		37.494549, 30.425545, 40.861458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213596, 31.201174, 41.257988>,  <36.813126, 30.490646, 41.007824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213596, 31.201174, 41.257988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.458893, 31.027800, 40.993843>,  <37.606071, 30.923775, 40.835358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.458893, 31.027800, 40.993843>,  <37.213596, 31.201174, 41.257988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458893, 31.027800, 40.993843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208168, 0.895130, -0.394218,
		0.761975, 0.104284, 0.639155,
		0.613238, -0.433436, -0.660358,
		37.642864, 30.897768, 40.795734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589340, 31.714176, 41.153851>,  <37.213596, 31.201174, 41.257988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589340, 31.714176, 41.153851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.662872, 31.488651, 40.831776>,  <37.706989, 31.353336, 40.638531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.662872, 31.488651, 40.831776>,  <37.589340, 31.714176, 41.153851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662872, 31.488651, 40.831776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259541, 0.817915, -0.513472,
		0.948075, -0.114589, 0.296688,
		0.183828, -0.563812, -0.805185,
		37.718021, 31.319508, 40.590221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196583, 31.975817, 40.828991>,  <37.589340, 31.714176, 41.153851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196583, 31.975817, 40.828991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.996426, 31.780916, 40.542721>,  <37.876331, 31.663977, 40.370960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.996426, 31.780916, 40.542721>,  <38.196583, 31.975817, 40.828991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996426, 31.780916, 40.542721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150317, 0.765162, -0.626044,
		0.852648, -0.420848, -0.309642,
		-0.500395, -0.487251, -0.715675,
		37.846306, 31.634741, 40.328018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639465, 32.075550, 40.252300>,  <38.196583, 31.975817, 40.828991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639465, 32.075550, 40.252300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.275978, 31.976879, 40.117607>,  <38.057888, 31.917677, 40.036793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.275978, 31.976879, 40.117607>,  <38.639465, 32.075550, 40.252300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275978, 31.976879, 40.117607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024246, 0.774143, -0.632546,
		0.416710, -0.582968, -0.697496,
		-0.908716, -0.246677, -0.336728,
		38.003365, 31.902876, 40.016590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386536, 32.093258, 40.575005>,  <38.639465, 32.075550, 40.252300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386536, 32.093258, 40.575005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.449394, 32.462692, 40.714893>,  <39.487110, 32.684353, 40.798824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.449394, 32.462692, 40.714893>,  <39.386536, 32.093258, 40.575005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449394, 32.462692, 40.714893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101322, -0.367326, 0.924557,
		0.982364, -0.109856, -0.151303,
		0.157146, 0.923582, 0.349717,
		39.496536, 32.739765, 40.819809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109436, 32.143635, 40.937820>,  <39.386536, 32.093258, 40.575005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109436, 32.143635, 40.937820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.820271, 32.393459, 41.056019>,  <39.646770, 32.543354, 41.126938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.820271, 32.393459, 41.056019>,  <40.109436, 32.143635, 40.937820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820271, 32.393459, 41.056019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041865, -0.387289, 0.921008,
		0.689667, 0.678182, 0.253830,
		-0.722916, 0.624562, 0.295492,
		39.603397, 32.580830, 41.144665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311550, 32.157074, 41.597965>,  <40.109436, 32.143635, 40.937820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311550, 32.157074, 41.597965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.958435, 32.344975, 41.595867>,  <39.746567, 32.457714, 41.594608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.958435, 32.344975, 41.595867>,  <40.311550, 32.157074, 41.597965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958435, 32.344975, 41.595867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147644, -0.266835, 0.952366,
		0.445975, 0.841507, 0.304913,
		-0.882784, 0.469750, -0.005242,
		39.693600, 32.485901, 41.594296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344734, 32.585510, 42.126904>,  <40.311550, 32.157074, 41.597965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344734, 32.585510, 42.126904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.955231, 32.544464, 42.045647>,  <39.721531, 32.519836, 41.996891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.955231, 32.544464, 42.045647>,  <40.344734, 32.585510, 42.126904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955231, 32.544464, 42.045647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177300, -0.217617, 0.959795,
		-0.142697, 0.970625, 0.193713,
		-0.973757, -0.102614, -0.203145,
		39.663105, 32.513680, 41.984703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956589, 32.992973, 42.629940>,  <40.344734, 32.585510, 42.126904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956589, 32.992973, 42.629940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.710190, 32.707703, 42.496120>,  <39.562351, 32.536541, 42.415829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.710190, 32.707703, 42.496120>,  <39.956589, 32.992973, 42.629940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710190, 32.707703, 42.496120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326446, -0.155395, 0.932355,
		-0.716921, 0.683542, -0.137091,
		-0.616001, -0.713178, -0.334545,
		39.525391, 32.493748, 42.395756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423668, 33.070461, 43.063465>,  <39.956589, 32.992973, 42.629940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423668, 33.070461, 43.063465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.361523, 32.706749, 42.909023>,  <39.324234, 32.488522, 42.816357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.361523, 32.706749, 42.909023>,  <39.423668, 33.070461, 43.063465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361523, 32.706749, 42.909023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408494, -0.296735, 0.863181,
		-0.899442, 0.291828, -0.325333,
		-0.155363, -0.909277, -0.386106,
		39.314915, 32.433968, 42.793190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875069, 32.815277, 43.318665>,  <39.423668, 33.070461, 43.063465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875069, 32.815277, 43.318665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.999611, 32.457794, 43.189449>,  <39.074337, 32.243305, 43.111919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.999611, 32.457794, 43.189449>,  <38.875069, 32.815277, 43.318665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999611, 32.457794, 43.189449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158218, -0.383941, 0.909701,
		-0.937030, -0.232129, -0.260942,
		0.311354, -0.893703, -0.323037,
		39.093018, 32.189682, 43.092537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429962, 32.361324, 43.575062>,  <38.875069, 32.815277, 43.318665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429962, 32.361324, 43.575062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.735168, 32.116333, 43.492424>,  <38.918293, 31.969337, 43.442841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.735168, 32.116333, 43.492424>,  <38.429962, 32.361324, 43.575062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735168, 32.116333, 43.492424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113831, -0.441938, 0.889794,
		-0.636283, -0.655407, -0.406923,
		0.763012, -0.612481, -0.206592,
		38.964073, 31.932589, 43.430447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135921, 31.625704, 43.604603>,  <38.429962, 32.361324, 43.575062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135921, 31.625704, 43.604603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.533470, 31.634109, 43.648003>,  <38.771999, 31.639153, 43.674042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.533470, 31.634109, 43.648003>,  <38.135921, 31.625704, 43.604603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533470, 31.634109, 43.648003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087988, -0.443625, 0.891883,
		0.066879, -0.895966, -0.439058,
		0.993874, 0.021016, 0.108503,
		38.831631, 31.640415, 43.680553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290234, 30.934742, 43.763977>,  <38.135921, 31.625704, 43.604603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290234, 30.934742, 43.763977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633865, 31.115093, 43.860886>,  <38.840042, 31.223303, 43.919029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633865, 31.115093, 43.860886>,  <38.290234, 30.934742, 43.763977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633865, 31.115093, 43.860886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088443, -0.596971, 0.797373,
		0.504147, -0.663577, -0.552721,
		0.859077, 0.450877, 0.242273,
		38.891590, 31.250357, 43.933567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669750, 30.366266, 44.115459>,  <38.290234, 30.934742, 43.763977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669750, 30.366266, 44.115459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.861061, 30.700563, 44.223377>,  <38.975845, 30.901142, 44.288128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.861061, 30.700563, 44.223377>,  <38.669750, 30.366266, 44.115459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861061, 30.700563, 44.223377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373558, -0.471636, 0.798758,
		0.794801, -0.281240, -0.537769,
		0.478274, 0.835741, 0.269797,
		39.004543, 30.951286, 44.304317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310490, 30.172260, 44.458103>,  <38.669750, 30.366266, 44.115459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310490, 30.172260, 44.458103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.254150, 30.544313, 44.593761>,  <39.220348, 30.767546, 44.675156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.254150, 30.544313, 44.593761>,  <39.310490, 30.172260, 44.458103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254150, 30.544313, 44.593761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373078, -0.267440, 0.888420,
		0.917047, 0.251656, -0.309344,
		-0.140845, 0.930132, 0.339142,
		39.211899, 30.823353, 44.695503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878239, 30.302074, 44.877239>,  <39.310490, 30.172260, 44.458103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878239, 30.302074, 44.877239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.599812, 30.562214, 44.998913>,  <39.432755, 30.718298, 45.071918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.599812, 30.562214, 44.998913>,  <39.878239, 30.302074, 44.877239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599812, 30.562214, 44.998913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367778, -0.040889, 0.929014,
		0.616622, 0.758534, -0.210723,
		-0.696072, 0.650349, 0.304185,
		39.390991, 30.757318, 45.090168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209667, 30.824533, 45.320187>,  <39.878239, 30.302074, 44.877239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209667, 30.824533, 45.320187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.820412, 30.843254, 45.410355>,  <39.586861, 30.854486, 45.464455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.820412, 30.843254, 45.410355>,  <40.209667, 30.824533, 45.320187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820412, 30.843254, 45.410355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224514, -0.023910, 0.974178,
		0.050983, 0.998618, 0.012760,
		-0.973136, 0.046801, 0.225422,
		39.528469, 30.857294, 45.477982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.888123, 32.336239, 48.030518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.034214, 32.025635, 47.825134>,  <33.121868, 31.839273, 47.701904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.034214, 32.025635, 47.825134>,  <32.888123, 32.336239, 48.030518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034214, 32.025635, 47.825134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177000, 0.599428, -0.780613,
		0.913937, 0.194218, 0.356369,
		0.365227, -0.776509, -0.513463,
		33.143784, 31.792683, 47.671097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442142, 32.578915, 47.629669>,  <32.888123, 32.336239, 48.030518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442142, 32.578915, 47.629669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.397362, 32.220509, 47.457798>,  <33.370495, 32.005466, 47.354675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.397362, 32.220509, 47.457798>,  <33.442142, 32.578915, 47.629669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397362, 32.220509, 47.457798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129367, 0.415576, -0.900312,
		0.985257, -0.156379, 0.069390,
		-0.111953, -0.896015, -0.429679,
		33.363777, 31.951704, 47.328896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980274, 32.515026, 47.189899>,  <33.442142, 32.578915, 47.629669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980274, 32.515026, 47.189899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.692986, 32.269146, 47.059475>,  <33.520615, 32.121620, 46.981220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.692986, 32.269146, 47.059475>,  <33.980274, 32.515026, 47.189899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692986, 32.269146, 47.059475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246000, 0.214017, -0.945347,
		0.650883, -0.759174, -0.002496,
		-0.718217, -0.614696, -0.326057,
		33.477520, 32.084736, 46.961658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321095, 32.100895, 46.634392>,  <33.980274, 32.515026, 47.189899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321095, 32.100895, 46.634392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.928490, 32.085293, 46.559429>,  <33.692928, 32.075932, 46.514454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.928490, 32.085293, 46.559429>,  <34.321095, 32.100895, 46.634392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928490, 32.085293, 46.559429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176231, 0.198054, -0.964218,
		0.074727, -0.979415, -0.187517,
		-0.981508, -0.039007, -0.187403,
		33.634037, 32.073589, 46.503208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272629, 31.680515, 46.037601>,  <34.321095, 32.100895, 46.634392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272629, 31.680515, 46.037601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.942257, 31.905821, 46.047203>,  <33.744034, 32.041004, 46.052963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.942257, 31.905821, 46.047203>,  <34.272629, 31.680515, 46.037601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942257, 31.905821, 46.047203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135753, 0.240015, -0.961231,
		-0.547187, -0.790650, -0.274699,
		-0.825928, 0.563264, 0.024000,
		33.694477, 32.074799, 46.054401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156471, 31.764978, 45.387138>,  <34.272629, 31.680515, 46.037601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156471, 31.764978, 45.387138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.871754, 32.022888, 45.498573>,  <33.700924, 32.177635, 45.565434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.871754, 32.022888, 45.498573>,  <34.156471, 31.764978, 45.387138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871754, 32.022888, 45.498573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018528, 0.413733, -0.910210,
		-0.702143, -0.642721, -0.306439,
		-0.711795, 0.644775, 0.278592,
		33.658215, 32.216320, 45.582150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767612, 31.808798, 44.852024>,  <34.156471, 31.764978, 45.387138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767612, 31.808798, 44.852024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.686275, 32.149387, 45.045372>,  <33.637474, 32.353741, 45.161381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.686275, 32.149387, 45.045372>,  <33.767612, 31.808798, 44.852024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686275, 32.149387, 45.045372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063834, 0.504163, -0.861246,
		-0.977025, -0.144271, -0.156870,
		-0.203341, 0.851473, 0.483370,
		33.625275, 32.404831, 45.190384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316463, 32.191883, 44.371288>,  <33.767612, 31.808798, 44.852024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316463, 32.191883, 44.371288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.413773, 32.484737, 44.625782>,  <33.472157, 32.660450, 44.778477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.413773, 32.484737, 44.625782>,  <33.316463, 32.191883, 44.371288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413773, 32.484737, 44.625782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106618, 0.631782, -0.767779,
		-0.964081, 0.254613, 0.075636,
		0.243272, 0.732136, 0.636235,
		33.486755, 32.704380, 44.816654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911400, 32.863796, 44.226807>,  <33.316463, 32.191883, 44.371288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911400, 32.863796, 44.226807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.227028, 32.996983, 44.433300>,  <33.416405, 33.076893, 44.557198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.227028, 32.996983, 44.433300>,  <32.911400, 32.863796, 44.226807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227028, 32.996983, 44.433300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078015, 0.779242, -0.621848,
		-0.609323, 0.530959, 0.588904,
		0.789075, 0.332963, 0.516233,
		33.463749, 33.096870, 44.588169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926125, 33.541481, 44.026020>,  <32.911400, 32.863796, 44.226807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926125, 33.541481, 44.026020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.292202, 33.508099, 44.183731>,  <33.511848, 33.488071, 44.278358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.292202, 33.508099, 44.183731>,  <32.926125, 33.541481, 44.026020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292202, 33.508099, 44.183731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292460, 0.810642, -0.507274,
		-0.277282, 0.579565, 0.766302,
		0.915195, -0.083454, 0.394276,
		33.566761, 33.483063, 44.302013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080101, 34.158993, 44.409958>,  <32.926125, 33.541481, 44.026020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080101, 34.158993, 44.409958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.418568, 33.993294, 44.275852>,  <33.621647, 33.893875, 44.195389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.418568, 33.993294, 44.275852>,  <33.080101, 34.158993, 44.409958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418568, 33.993294, 44.275852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198748, 0.829021, -0.522708,
		0.494467, 0.375667, 0.783822,
		0.846169, -0.414245, -0.335260,
		33.672417, 33.869019, 44.175274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495243, 34.711735, 44.402466>,  <33.080101, 34.158993, 44.409958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495243, 34.711735, 44.402466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.670822, 34.437485, 44.170174>,  <33.776169, 34.272934, 44.030796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.670822, 34.437485, 44.170174>,  <33.495243, 34.711735, 44.402466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670822, 34.437485, 44.170174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378211, 0.727265, -0.572749,
		0.815036, 0.031765, 0.578539,
		0.438945, -0.685621, -0.580733,
		33.802505, 34.231800, 43.995953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171036, 35.098793, 44.131077>,  <33.495243, 34.711735, 44.402466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171036, 35.098793, 44.131077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.105682, 34.780872, 43.897293>,  <34.066471, 34.590118, 43.757023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.105682, 34.780872, 43.897293>,  <34.171036, 35.098793, 44.131077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105682, 34.780872, 43.897293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058338, 0.583604, -0.809940,
		0.984837, -0.166425, -0.048983,
		-0.163380, -0.794801, -0.584463,
		34.056667, 34.542431, 43.721954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767208, 35.036636, 43.531509>,  <34.171036, 35.098793, 44.131077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767208, 35.036636, 43.531509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.435696, 34.851215, 43.406139>,  <34.236786, 34.739964, 43.330917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.435696, 34.851215, 43.406139>,  <34.767208, 35.036636, 43.531509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435696, 34.851215, 43.406139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007255, 0.551179, -0.834355,
		0.559514, -0.693779, -0.453448,
		-0.828789, -0.463544, -0.313425,
		34.187061, 34.712151, 43.312111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500954, 34.870354, 43.354343>,  <34.767208, 35.036636, 43.531509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500954, 34.870354, 43.354343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.843105, 35.072598, 43.399399>,  <36.048397, 35.193943, 43.426430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.843105, 35.072598, 43.399399>,  <35.500954, 34.870354, 43.354343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843105, 35.072598, 43.399399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161083, -0.466297, 0.869839,
		0.492318, -0.725899, -0.480306,
		0.855380, 0.505606, 0.112637,
		36.099720, 35.224277, 43.433189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945324, 34.314426, 43.488262>,  <35.500954, 34.870354, 43.354343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945324, 34.314426, 43.488262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112789, 34.654823, 43.615086>,  <36.213268, 34.859062, 43.691181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112789, 34.654823, 43.615086>,  <35.945324, 34.314426, 43.488262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112789, 34.654823, 43.615086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331320, -0.468194, 0.819159,
		0.845546, -0.237904, -0.477968,
		0.418663, 0.850997, 0.317057,
		36.238388, 34.910122, 43.710201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746433, 34.267498, 43.618877>,  <35.945324, 34.314426, 43.488262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746433, 34.267498, 43.618877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.589340, 34.560635, 43.841122>,  <36.495087, 34.736515, 43.974468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.589340, 34.560635, 43.841122>,  <36.746433, 34.267498, 43.618877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589340, 34.560635, 43.841122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235486, -0.503879, 0.831055,
		0.888994, 0.457218, 0.025314,
		-0.392729, 0.732841, 0.555614,
		36.471523, 34.780487, 44.007805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097507, 34.302135, 44.294701>,  <36.746433, 34.267498, 43.618877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097507, 34.302135, 44.294701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.775528, 34.517944, 44.393471>,  <36.582340, 34.647430, 44.452732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.775528, 34.517944, 44.393471>,  <37.097507, 34.302135, 44.294701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775528, 34.517944, 44.393471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063187, -0.335848, 0.939794,
		0.589971, 0.772089, 0.236250,
		-0.804948, 0.539523, 0.246926,
		36.534042, 34.679802, 44.467548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304783, 34.819782, 44.853065>,  <37.097507, 34.302135, 44.294701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304783, 34.819782, 44.853065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.913170, 34.739319, 44.865856>,  <36.678200, 34.691040, 44.873531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.913170, 34.739319, 44.865856>,  <37.304783, 34.819782, 44.853065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913170, 34.739319, 44.865856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087496, -0.273573, 0.957863,
		-0.183932, 0.940582, 0.285438,
		-0.979037, -0.201157, 0.031979,
		36.619457, 34.678970, 44.875450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343746, 34.856247, 45.592022>,  <37.304783, 34.819782, 44.853065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343746, 34.856247, 45.592022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.997280, 34.692200, 45.477779>,  <36.789402, 34.593773, 45.409233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.997280, 34.692200, 45.477779>,  <37.343746, 34.856247, 45.592022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997280, 34.692200, 45.477779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084062, -0.443783, 0.892183,
		-0.492643, 0.796783, 0.349913,
		-0.866162, -0.410113, -0.285606,
		36.737431, 34.569164, 45.392097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915436, 34.914841, 46.121620>,  <37.343746, 34.856247, 45.592022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915436, 34.914841, 46.121620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.714291, 34.633842, 45.920174>,  <36.593605, 34.465244, 45.799305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.714291, 34.633842, 45.920174>,  <36.915436, 34.914841, 46.121620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714291, 34.633842, 45.920174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237531, -0.447903, 0.861952,
		-0.831091, 0.553065, 0.058367,
		-0.502858, -0.702497, -0.503618,
		36.563435, 34.423092, 45.769089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319618, 34.801891, 46.486568>,  <36.915436, 34.914841, 46.121620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319618, 34.801891, 46.486568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.412369, 34.487663, 46.257095>,  <36.468021, 34.299126, 46.119411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.412369, 34.487663, 46.257095>,  <36.319618, 34.801891, 46.486568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412369, 34.487663, 46.257095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021909, -0.585393, 0.810454,
		-0.972498, -0.200495, -0.118528,
		0.231878, -0.785568, -0.573686,
		36.481934, 34.251991, 46.084988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918552, 34.242550, 46.743729>,  <36.319618, 34.801891, 46.486568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918552, 34.242550, 46.743729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.198307, 34.026699, 46.556255>,  <36.366161, 33.897190, 46.443771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.198307, 34.026699, 46.556255>,  <35.918552, 34.242550, 46.743729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198307, 34.026699, 46.556255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047949, -0.618833, 0.784058,
		-0.713130, -0.570835, -0.406931,
		0.699390, -0.539623, -0.468680,
		36.408123, 33.864811, 46.415649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627453, 33.581211, 46.621429>,  <35.918552, 34.242550, 46.743729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627453, 33.581211, 46.621429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.025246, 33.542725, 46.604740>,  <36.263924, 33.519630, 46.594727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.025246, 33.542725, 46.604740>,  <35.627453, 33.581211, 46.621429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025246, 33.542725, 46.604740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034274, -0.674154, 0.737796,
		-0.099114, -0.732297, -0.673734,
		0.994486, -0.096218, -0.041720,
		36.323593, 33.513859, 46.592224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781498, 32.760696, 46.598282>,  <35.627453, 33.581211, 46.621429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781498, 32.760696, 46.598282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.094788, 32.965237, 46.739746>,  <36.282761, 33.087963, 46.824623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.094788, 32.965237, 46.739746>,  <35.781498, 32.760696, 46.598282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094788, 32.965237, 46.739746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088204, -0.654458, 0.750936,
		0.615448, -0.556959, -0.557692,
		0.783226, 0.511353, 0.353659,
		36.329754, 33.118641, 46.845844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237423, 32.248714, 46.717442>,  <35.781498, 32.760696, 46.598282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237423, 32.248714, 46.717442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.356903, 32.559364, 46.939297>,  <36.428593, 32.745754, 47.072411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.356903, 32.559364, 46.939297>,  <36.237423, 32.248714, 46.717442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356903, 32.559364, 46.939297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217502, -0.621279, 0.752798,
		0.929230, -0.104229, -0.354496,
		0.298704, 0.776626, 0.554642,
		36.446514, 32.792351, 47.105690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887619, 31.963686, 47.009060>,  <36.237423, 32.248714, 46.717442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887619, 31.963686, 47.009060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.735802, 32.275463, 47.208424>,  <36.644711, 32.462528, 47.328041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.735802, 32.275463, 47.208424>,  <36.887619, 31.963686, 47.009060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735802, 32.275463, 47.208424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142560, -0.483018, 0.863927,
		0.914124, 0.398952, 0.072209,
		-0.379544, 0.779443, 0.498413,
		36.621937, 32.509296, 47.357948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397053, 32.076054, 47.504261>,  <36.887619, 31.963686, 47.009060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397053, 32.076054, 47.504261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.060520, 32.250168, 47.632439>,  <36.858601, 32.354637, 47.709343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.060520, 32.250168, 47.632439>,  <37.397053, 32.076054, 47.504261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060520, 32.250168, 47.632439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001512, -0.594737, 0.803919,
		0.540515, 0.675879, 0.501030,
		-0.841333, 0.435288, 0.320442,
		36.808121, 32.380753, 47.728573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749611, 32.771358, 47.811531>,  <37.397053, 32.076054, 47.504261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749611, 32.771358, 47.811531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.125282, 32.814709, 47.941879>,  <38.350685, 32.840721, 48.020088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.125282, 32.814709, 47.941879>,  <37.749611, 32.771358, 47.811531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125282, 32.814709, 47.941879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007702, 0.942011, -0.335494,
		-0.343333, 0.317600, 0.883885,
		0.939182, 0.108378, 0.325869,
		38.407036, 32.847221, 48.039639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758579, 33.436676, 48.214291>,  <37.749611, 32.771358, 47.811531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758579, 33.436676, 48.214291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.124851, 33.331486, 48.092716>,  <38.344616, 33.268372, 48.019772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.124851, 33.331486, 48.092716>,  <37.758579, 33.436676, 48.214291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124851, 33.331486, 48.092716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123702, 0.903924, -0.409414,
		0.382395, 0.337295, 0.860236,
		0.915681, -0.262971, -0.303932,
		38.399555, 33.252594, 48.001537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048092, 34.045341, 48.284760>,  <37.758579, 33.436676, 48.214291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048092, 34.045341, 48.284760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313438, 33.841869, 48.065235>,  <38.472645, 33.719788, 47.933521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313438, 33.841869, 48.065235>,  <38.048092, 34.045341, 48.284760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313438, 33.841869, 48.065235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265743, 0.845750, -0.462697,
		0.699518, 0.161097, 0.696220,
		0.663367, -0.508680, -0.548807,
		38.512447, 33.689266, 47.900593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643742, 34.456223, 48.242039>,  <38.048092, 34.045341, 48.284760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643742, 34.456223, 48.242039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.656513, 34.201710, 47.933720>,  <38.664177, 34.049004, 47.748730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.656513, 34.201710, 47.933720>,  <38.643742, 34.456223, 48.242039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656513, 34.201710, 47.933720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335861, 0.733175, -0.591314,
		0.941370, -0.239998, 0.237115,
		0.031932, -0.636283, -0.770795,
		38.666092, 34.010826, 47.702480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196068, 34.584984, 47.916431>,  <38.643742, 34.456223, 48.242039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196068, 34.584984, 47.916431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.020176, 34.364685, 47.632652>,  <38.914639, 34.232506, 47.462387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.020176, 34.364685, 47.632652>,  <39.196068, 34.584984, 47.916431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020176, 34.364685, 47.632652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334325, 0.632768, -0.698449,
		0.833583, -0.544316, -0.094120,
		-0.439734, -0.550749, -0.709443,
		38.888256, 34.199459, 47.419819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678310, 34.815998, 47.372673>,  <39.196068, 34.584984, 47.916431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678310, 34.815998, 47.372673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.367119, 34.616825, 47.219410>,  <39.180405, 34.497322, 47.127453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.367119, 34.616825, 47.219410>,  <39.678310, 34.815998, 47.372673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367119, 34.616825, 47.219410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046179, 0.562881, -0.825247,
		0.626592, -0.659718, -0.414915,
		-0.777978, -0.497933, -0.383162,
		39.133724, 34.467445, 47.104462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906544, 34.480572, 46.763443>,  <39.678310, 34.815998, 47.372673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906544, 34.480572, 46.763443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.514893, 34.561825, 46.765915>,  <39.279900, 34.610577, 46.767399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.514893, 34.561825, 46.765915>,  <39.906544, 34.480572, 46.763443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514893, 34.561825, 46.765915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089513, 0.458387, -0.884233,
		-0.182450, -0.865228, -0.467004,
		-0.979132, 0.203131, 0.006183,
		39.221153, 34.622765, 46.767769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657471, 34.262337, 46.128498>,  <39.906544, 34.480572, 46.763443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657471, 34.262337, 46.128498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.368515, 34.505398, 46.260502>,  <39.195141, 34.651234, 46.339703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.368515, 34.505398, 46.260502>,  <39.657471, 34.262337, 46.128498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368515, 34.505398, 46.260502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028520, 0.503021, -0.863804,
		-0.690895, -0.614594, -0.380709,
		-0.722393, 0.607655, 0.330006,
		39.151798, 34.687695, 46.359505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275642, 34.526318, 45.560780>,  <39.657471, 34.262337, 46.128498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275642, 34.526318, 45.560780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.092636, 34.785091, 45.804798>,  <38.982834, 34.940357, 45.951210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.092636, 34.785091, 45.804798>,  <39.275642, 34.526318, 45.560780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092636, 34.785091, 45.804798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240656, 0.570371, -0.785342,
		-0.856019, -0.506114, -0.105262,
		-0.457511, 0.646935, 0.610048,
		38.955383, 34.979172, 45.987812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563717, 34.732479, 45.242687>,  <39.275642, 34.526318, 45.560780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563717, 34.732479, 45.242687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.640907, 35.028461, 45.500439>,  <38.687222, 35.206051, 45.655090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.640907, 35.028461, 45.500439>,  <38.563717, 34.732479, 45.242687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640907, 35.028461, 45.500439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268690, 0.671473, -0.690602,
		-0.943698, -0.039867, 0.328398,
		0.192977, 0.739956, 0.644379,
		38.698799, 35.250450, 45.693752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988815, 35.177578, 45.377731>,  <38.563717, 34.732479, 45.242687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988815, 35.177578, 45.377731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.319077, 35.396767, 45.431435>,  <38.517235, 35.528278, 45.463657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.319077, 35.396767, 45.431435>,  <37.988815, 35.177578, 45.377731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319077, 35.396767, 45.431435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351116, 0.685353, -0.637972,
		-0.441599, 0.479607, 0.758266,
		0.825656, 0.547967, 0.134254,
		38.566772, 35.561157, 45.471710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723698, 35.848358, 45.347523>,  <37.988815, 35.177578, 45.377731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723698, 35.848358, 45.347523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.114212, 35.848782, 45.260921>,  <38.348518, 35.849037, 45.208961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.114212, 35.848782, 45.260921>,  <37.723698, 35.848358, 45.347523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114212, 35.848782, 45.260921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162462, 0.664570, -0.729351,
		0.143107, 0.747225, 0.648980,
		0.976282, 0.001059, -0.216500,
		38.407097, 35.849098, 45.195972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900593, 36.521954, 45.182964>,  <37.723698, 35.848358, 45.347523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900593, 36.521954, 45.182964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.220490, 36.343437, 45.022346>,  <38.412426, 36.236328, 44.925976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.220490, 36.343437, 45.022346>,  <37.900593, 36.521954, 45.182964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220490, 36.343437, 45.022346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004814, 0.664069, -0.747655,
		0.600323, 0.599865, 0.528937,
		0.799743, -0.446289, -0.401544,
		38.460411, 36.209549, 44.901882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360817, 37.046810, 44.822163>,  <37.900593, 36.521954, 45.182964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360817, 37.046810, 44.822163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.475151, 36.695110, 44.669735>,  <38.543751, 36.484089, 44.578278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.475151, 36.695110, 44.669735>,  <38.360817, 37.046810, 44.822163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475151, 36.695110, 44.669735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178353, 0.439520, -0.880347,
		0.941535, 0.183669, 0.282448,
		0.285834, -0.879254, -0.381066,
		38.560902, 36.431335, 44.555416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.843536, 44.663101, 36.259674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.706079, 44.759853, 35.896709>,  <28.623606, 44.817905, 35.678928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.706079, 44.759853, 35.896709>,  <28.843536, 44.663101, 36.259674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706079, 44.759853, 35.896709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392614, -0.914768, -0.095156,
		-0.853090, 0.323564, 0.409320,
		-0.343644, 0.241881, -0.907415,
		28.602987, 44.832417, 35.624485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991716, 44.651199, 36.098610>,  <28.843536, 44.663101, 36.259674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991716, 44.651199, 36.098610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.219740, 44.568855, 35.780453>,  <28.356554, 44.519451, 35.589558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.219740, 44.568855, 35.780453>,  <27.991716, 44.651199, 36.098610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219740, 44.568855, 35.780453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397760, -0.916236, -0.047940,
		-0.718903, 0.343706, -0.604189,
		0.570057, -0.205858, -0.795398,
		28.390757, 44.507099, 35.541832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580330, 44.234039, 35.663326>,  <27.991716, 44.651199, 36.098610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580330, 44.234039, 35.663326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.955034, 44.155380, 35.547523>,  <28.179857, 44.108185, 35.478043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.955034, 44.155380, 35.547523>,  <27.580330, 44.234039, 35.663326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955034, 44.155380, 35.547523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215260, -0.975979, -0.033599,
		-0.275944, 0.093793, -0.956587,
		0.936759, -0.196643, -0.289505,
		28.236063, 44.096386, 35.460670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471487, 44.056091, 34.981201>,  <27.580330, 44.234039, 35.663326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471487, 44.056091, 34.981201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.799591, 43.886948, 35.135273>,  <27.996454, 43.785461, 35.227715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.799591, 43.886948, 35.135273>,  <27.471487, 44.056091, 34.981201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799591, 43.886948, 35.135273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375580, -0.906069, -0.194881,
		0.431404, 0.015189, -0.902031,
		0.820262, -0.422857, 0.385177,
		28.045670, 43.760090, 35.250828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643276, 43.401749, 34.591412>,  <27.471487, 44.056091, 34.981201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643276, 43.401749, 34.591412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.879513, 43.333775, 34.906960>,  <28.021255, 43.292988, 35.096291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.879513, 43.333775, 34.906960>,  <27.643276, 43.401749, 34.591412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879513, 43.333775, 34.906960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207862, -0.976624, -0.054766,
		0.779740, -0.131633, -0.612110,
		0.590592, -0.169938, 0.788874,
		28.056690, 43.282795, 35.143623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054474, 42.881168, 34.378315>,  <27.643276, 43.401749, 34.591412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054474, 42.881168, 34.378315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.043873, 42.865242, 34.777859>,  <28.037512, 42.855686, 35.017586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.043873, 42.865242, 34.777859>,  <28.054474, 42.881168, 34.378315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043873, 42.865242, 34.777859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245572, -0.968328, -0.045115,
		0.969016, -0.246487, 0.015886,
		-0.026503, -0.039816, 0.998855,
		28.035921, 42.853298, 35.077515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377329, 42.275154, 34.534321>,  <28.054474, 42.881168, 34.378315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377329, 42.275154, 34.534321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.200132, 42.370541, 34.880013>,  <28.093815, 42.427773, 35.087429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.200132, 42.370541, 34.880013>,  <28.377329, 42.275154, 34.534321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200132, 42.370541, 34.880013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233912, -0.961330, 0.145359,
		0.865472, -0.137761, 0.481643,
		-0.442993, 0.238466, 0.864228,
		28.067234, 42.442081, 35.139282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691835, 41.793835, 34.991970>,  <28.377329, 42.275154, 34.534321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691835, 41.793835, 34.991970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.351093, 41.904999, 35.169559>,  <28.146648, 41.971695, 35.276112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.351093, 41.904999, 35.169559>,  <28.691835, 41.793835, 34.991970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351093, 41.904999, 35.169559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155028, -0.943433, 0.293090,
		0.500309, 0.180842, 0.846751,
		-0.851855, 0.277906, 0.443972,
		28.095537, 41.988369, 35.302750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675793, 41.484474, 35.619801>,  <28.691835, 41.793835, 34.991970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675793, 41.484474, 35.619801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.288191, 41.581200, 35.599590>,  <28.055630, 41.639233, 35.587463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.288191, 41.581200, 35.599590>,  <28.675793, 41.484474, 35.619801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288191, 41.581200, 35.599590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239795, -0.871573, 0.427620,
		0.059363, 0.426484, 0.902545,
		-0.969007, 0.241810, -0.050530,
		27.997488, 41.653744, 35.584431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440149, 41.223648, 36.258041>,  <28.675793, 41.484474, 35.619801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440149, 41.223648, 36.258041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.131401, 41.267349, 36.007515>,  <27.946152, 41.293568, 35.857197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.131401, 41.267349, 36.007515>,  <28.440149, 41.223648, 36.258041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131401, 41.267349, 36.007515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349046, -0.896204, 0.273835,
		-0.531394, 0.429980, 0.729888,
		-0.771873, 0.109251, -0.626320,
		27.899839, 41.300125, 35.819618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888674, 40.830196, 36.511417>,  <28.440149, 41.223648, 36.258041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888674, 40.830196, 36.511417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.753162, 40.865131, 36.136696>,  <27.671856, 40.886093, 35.911861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.753162, 40.865131, 36.136696>,  <27.888674, 40.830196, 36.511417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753162, 40.865131, 36.136696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250518, -0.968112, 0.000343,
		-0.906901, 0.234802, 0.349856,
		-0.338780, 0.087334, -0.936804,
		27.651529, 40.891331, 35.855656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149595, 40.685600, 36.466450>,  <27.888674, 40.830196, 36.511417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149595, 40.685600, 36.466450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.303612, 40.627663, 36.101864>,  <27.396021, 40.592899, 35.883114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.303612, 40.627663, 36.101864>,  <27.149595, 40.685600, 36.466450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303612, 40.627663, 36.101864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236691, -0.970074, 0.054167,
		-0.892032, 0.194879, -0.407800,
		0.385040, -0.144841, -0.911463,
		27.419125, 40.584209, 35.828426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.618242, 40.340351, 36.122089>,  <27.149595, 40.685600, 36.466450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.618242, 40.340351, 36.122089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.955854, 40.285065, 35.914818>,  <27.158421, 40.251892, 35.790455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.955854, 40.285065, 35.914818>,  <26.618242, 40.340351, 36.122089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.955854, 40.285065, 35.914818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186429, -0.981577, -0.041835,
		-0.502850, 0.131913, -0.854249,
		0.844030, -0.138220, -0.518179,
		27.209063, 40.243599, 35.759365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400709, 39.762337, 35.717545>,  <26.618242, 40.340351, 36.122089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400709, 39.762337, 35.717545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.799219, 39.793404, 35.702576>,  <27.038326, 39.812046, 35.693592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.799219, 39.793404, 35.702576>,  <26.400709, 39.762337, 35.717545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799219, 39.793404, 35.702576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077504, -0.996975, -0.005859,
		-0.037767, 0.002937, -0.999282,
		0.996276, 0.077670, -0.037425,
		27.098103, 39.816704, 35.691349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461620, 39.245068, 35.215965>,  <26.400709, 39.762337, 35.717545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461620, 39.245068, 35.215965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.832441, 39.311153, 35.350594>,  <27.054934, 39.350807, 35.431370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.832441, 39.311153, 35.350594>,  <26.461620, 39.245068, 35.215965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832441, 39.311153, 35.350594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124649, -0.982427, 0.138924,
		0.353611, -0.086836, -0.931353,
		0.927050, 0.165217, 0.336573,
		27.110556, 39.360718, 35.451565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944223, 38.773327, 34.786469>,  <26.461620, 39.245068, 35.215965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944223, 38.773327, 34.786469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.095976, 38.868923, 35.144005>,  <27.187027, 38.926281, 35.358528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.095976, 38.868923, 35.144005>,  <26.944223, 38.773327, 34.786469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.095976, 38.868923, 35.144005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306265, -0.944041, 0.122427,
		0.873081, 0.227306, -0.431349,
		0.379383, 0.238995, 0.893840,
		27.209791, 38.940620, 35.412155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677839, 38.543438, 34.764530>,  <26.944223, 38.773327, 34.786469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677839, 38.543438, 34.764530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.559341, 38.564228, 35.146008>,  <27.488243, 38.576702, 35.374893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.559341, 38.564228, 35.146008>,  <27.677839, 38.543438, 34.764530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559341, 38.564228, 35.146008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307508, -0.940159, 0.146761,
		0.904255, 0.336747, 0.262536,
		-0.296247, 0.051977, 0.953696,
		27.470467, 38.579823, 35.432117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138685, 38.067200, 35.095566>,  <27.677839, 38.543438, 34.764530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138685, 38.067200, 35.095566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.865461, 38.095566, 35.386330>,  <27.701527, 38.112583, 35.560787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.865461, 38.095566, 35.386330>,  <28.138685, 38.067200, 35.095566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865461, 38.095566, 35.386330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202110, -0.938057, 0.281424,
		0.701843, 0.339146, 0.626415,
		-0.683057, 0.070911, 0.726914,
		27.660543, 38.116840, 35.604404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443251, 37.856850, 35.825924>,  <28.138685, 38.067200, 35.095566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443251, 37.856850, 35.825924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.046349, 37.807178, 35.827469>,  <27.808208, 37.777378, 35.828396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.046349, 37.807178, 35.827469>,  <28.443251, 37.856850, 35.825924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.046349, 37.807178, 35.827469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120941, -0.958372, 0.258643,
		-0.028415, 0.257106, 0.965966,
		-0.992253, -0.124174, 0.003863,
		27.748672, 37.769928, 35.828629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025454, 37.564465, 36.271160>,  <28.443251, 37.856850, 35.825924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025454, 37.564465, 36.271160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.404068, 37.568161, 36.400146>,  <29.631237, 37.570377, 36.477539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.404068, 37.568161, 36.400146>,  <29.025454, 37.564465, 36.271160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404068, 37.568161, 36.400146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054092, 0.989985, 0.130402,
		-0.318035, -0.140873, 0.937555,
		0.946535, 0.009242, 0.322470,
		29.688028, 37.570934, 36.496887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051544, 37.948082, 36.907631>,  <29.025454, 37.564465, 36.271160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051544, 37.948082, 36.907631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.425997, 37.950909, 36.766998>,  <29.650669, 37.952606, 36.682621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.425997, 37.950909, 36.766998>,  <29.051544, 37.948082, 36.907631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425997, 37.950909, 36.766998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101243, 0.952048, 0.288712,
		0.336759, -0.305867, 0.890527,
		0.936132, 0.007067, -0.351578,
		29.706837, 37.953030, 36.661526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444132, 38.107677, 37.428604>,  <29.051544, 37.948082, 36.907631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444132, 38.107677, 37.428604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.662512, 38.220306, 37.112968>,  <29.793541, 38.287884, 36.923588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.662512, 38.220306, 37.112968>,  <29.444132, 38.107677, 37.428604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662512, 38.220306, 37.112968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143126, 0.896645, 0.418978,
		0.825500, -0.341680, 0.449225,
		0.545952, 0.281571, -0.789084,
		29.826298, 38.304779, 36.876244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061394, 38.408134, 37.717594>,  <29.444132, 38.107677, 37.428604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061394, 38.408134, 37.717594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.033667, 38.525955, 37.336346>,  <30.017031, 38.596649, 37.107597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.033667, 38.525955, 37.336346>,  <30.061394, 38.408134, 37.717594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033667, 38.525955, 37.336346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061208, 0.954872, 0.290643,
		0.995715, -0.038191, -0.084219,
		-0.069319, 0.294552, -0.953118,
		30.012871, 38.614323, 37.050411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547569, 38.859108, 37.697025>,  <30.061394, 38.408134, 37.717594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547569, 38.859108, 37.697025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.340248, 38.955643, 37.368851>,  <30.215855, 39.013565, 37.171944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.340248, 38.955643, 37.368851>,  <30.547569, 38.859108, 37.697025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340248, 38.955643, 37.368851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273705, 0.955707, 0.108215,
		0.810214, -0.168469, -0.561400,
		-0.518303, 0.241336, -0.820438,
		30.184757, 39.028042, 37.122719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038616, 39.206532, 37.212280>,  <30.547569, 38.859108, 37.697025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038616, 39.206532, 37.212280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.664925, 39.313511, 37.117889>,  <30.440710, 39.377701, 37.061256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.664925, 39.313511, 37.117889>,  <31.038616, 39.206532, 37.212280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664925, 39.313511, 37.117889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244422, 0.961896, 0.122532,
		0.259755, 0.056795, -0.964003,
		-0.934230, 0.267451, -0.235975,
		30.384655, 39.393745, 37.047096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984627, 39.804256, 36.644005>,  <31.038616, 39.206532, 37.212280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984627, 39.804256, 36.644005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.634834, 39.816254, 36.837658>,  <30.424959, 39.823452, 36.953850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.634834, 39.816254, 36.837658>,  <30.984627, 39.804256, 36.644005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634834, 39.816254, 36.837658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193959, 0.936440, 0.292337,
		-0.444591, 0.349544, -0.824717,
		-0.874482, 0.029991, 0.484130,
		30.372490, 39.825253, 36.982899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731201, 40.388603, 36.441284>,  <30.984627, 39.804256, 36.644005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731201, 40.388603, 36.441284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.491507, 40.318344, 36.753712>,  <30.347691, 40.276188, 36.941166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.491507, 40.318344, 36.753712>,  <30.731201, 40.388603, 36.441284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491507, 40.318344, 36.753712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096961, 0.984376, 0.146974,
		-0.794679, 0.012340, -0.606905,
		-0.599236, -0.175643, 0.781067,
		30.311735, 40.265652, 36.988033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111107, 40.800274, 36.325325>,  <30.731201, 40.388603, 36.441284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111107, 40.800274, 36.325325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.112410, 40.717960, 36.716763>,  <30.113192, 40.668571, 36.951626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.112410, 40.717960, 36.716763>,  <30.111107, 40.800274, 36.325325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112410, 40.717960, 36.716763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091441, 0.974435, 0.205217,
		-0.995805, -0.090152, -0.015643,
		0.003258, -0.205787, 0.978591,
		30.113386, 40.656223, 37.010342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541634, 41.267334, 36.662502>,  <30.111107, 40.800274, 36.325325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541634, 41.267334, 36.662502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.773523, 41.132439, 36.959202>,  <29.912657, 41.051502, 37.137222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.773523, 41.132439, 36.959202>,  <29.541634, 41.267334, 36.662502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773523, 41.132439, 36.959202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018099, 0.904777, 0.425501,
		-0.814611, -0.260099, 0.518419,
		0.579726, -0.337235, 0.741748,
		29.947441, 41.031269, 37.181725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185291, 41.360626, 37.248131>,  <29.541634, 41.267334, 36.662502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185291, 41.360626, 37.248131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.568584, 41.346031, 37.361591>,  <29.798561, 41.337276, 37.429668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.568584, 41.346031, 37.361591>,  <29.185291, 41.360626, 37.248131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568584, 41.346031, 37.361591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145117, 0.792630, 0.592181,
		-0.246437, -0.608610, 0.754230,
		0.958233, -0.036484, 0.283653,
		29.856054, 41.335087, 37.446686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152323, 41.482624, 37.892735>,  <29.185291, 41.360626, 37.248131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152323, 41.482624, 37.892735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.530764, 41.572617, 37.799545>,  <29.757828, 41.626610, 37.743633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.530764, 41.572617, 37.799545>,  <29.152323, 41.482624, 37.892735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530764, 41.572617, 37.799545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128096, 0.920625, 0.368836,
		0.297462, -0.319113, 0.899824,
		0.946101, 0.224979, -0.232974,
		29.814594, 41.640110, 37.729652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364887, 41.894199, 38.409336>,  <29.152323, 41.482624, 37.892735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364887, 41.894199, 38.409336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.637249, 41.982635, 38.130054>,  <29.800667, 42.035698, 37.962486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.637249, 41.982635, 38.130054>,  <29.364887, 41.894199, 38.409336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637249, 41.982635, 38.130054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139344, 0.975040, 0.172857,
		0.718995, -0.020409, 0.694716,
		0.680904, 0.221088, -0.698205,
		29.841520, 42.048962, 37.920593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854982, 42.360176, 38.759964>,  <29.364887, 41.894199, 38.409336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854982, 42.360176, 38.759964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.908451, 42.419586, 38.368031>,  <29.940533, 42.455235, 38.132870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.908451, 42.419586, 38.368031>,  <29.854982, 42.360176, 38.759964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908451, 42.419586, 38.368031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014753, 0.988297, 0.151824,
		0.990916, -0.034750, 0.129914,
		0.133669, 0.148528, -0.979832,
		29.948553, 42.464146, 38.074081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364981, 42.871658, 38.732040>,  <29.854982, 42.360176, 38.759964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364981, 42.871658, 38.732040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.204590, 42.885311, 38.365860>,  <30.108356, 42.893501, 38.146152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.204590, 42.885311, 38.365860>,  <30.364981, 42.871658, 38.732040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204590, 42.885311, 38.365860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099996, 0.994965, -0.006703,
		0.910615, -0.094230, -0.402369,
		-0.400975, 0.034132, -0.915453,
		30.084297, 42.895550, 38.091225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846010, 43.138851, 38.274944>,  <30.364981, 42.871658, 38.732040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846010, 43.138851, 38.274944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.497705, 43.227139, 38.099190>,  <30.288723, 43.280113, 37.993736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.497705, 43.227139, 38.099190>,  <30.846010, 43.138851, 38.274944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497705, 43.227139, 38.099190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287418, 0.953510, -0.090609,
		0.398959, -0.205186, -0.893717,
		-0.870760, 0.220721, -0.439385,
		30.236477, 43.293354, 37.967373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077063, 43.581608, 37.714527>,  <30.846010, 43.138851, 38.274944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077063, 43.581608, 37.714527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.684830, 43.647991, 37.756321>,  <30.449490, 43.687820, 37.781395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.684830, 43.647991, 37.756321>,  <31.077063, 43.581608, 37.714527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684830, 43.647991, 37.756321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171594, 0.984028, 0.047378,
		-0.094949, 0.064386, -0.993398,
		-0.980582, 0.165963, 0.104481,
		30.390656, 43.697781, 37.787666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829931, 44.134686, 37.277481>,  <31.077063, 43.581608, 37.714527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829931, 44.134686, 37.277481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.524933, 44.128269, 37.536198>,  <30.341934, 44.124420, 37.691429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.524933, 44.128269, 37.536198>,  <30.829931, 44.134686, 37.277481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524933, 44.128269, 37.536198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089025, 0.992785, -0.080331,
		-0.640836, -0.118833, -0.758424,
		-0.762498, -0.016040, 0.646792,
		30.296183, 44.123459, 37.730236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311073, 44.562675, 37.001980>,  <30.829931, 44.134686, 37.277481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311073, 44.562675, 37.001980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.236811, 44.545944, 37.394669>,  <30.192253, 44.535904, 37.630283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.236811, 44.545944, 37.394669>,  <30.311073, 44.562675, 37.001980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236811, 44.545944, 37.394669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139251, 0.990130, 0.015851,
		-0.972698, -0.133764, -0.189649,
		-0.185657, -0.041827, 0.981724,
		30.181114, 44.533398, 37.689186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742493, 45.052368, 37.122196>,  <30.311073, 44.562675, 37.001980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742493, 45.052368, 37.122196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897900, 44.979561, 37.483509>,  <29.991144, 44.935879, 37.700298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897900, 44.979561, 37.483509>,  <29.742493, 45.052368, 37.122196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897900, 44.979561, 37.483509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128328, 0.981431, 0.142566,
		-0.912462, 0.060528, 0.404661,
		0.388518, -0.182015, 0.903285,
		30.014456, 44.924957, 37.754494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530180, 45.628456, 37.429123>,  <29.742493, 45.052368, 37.122196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530180, 45.628456, 37.429123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.829176, 45.495502, 37.659176>,  <30.008574, 45.415730, 37.797207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.829176, 45.495502, 37.659176>,  <29.530180, 45.628456, 37.429123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829176, 45.495502, 37.659176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135032, 0.923761, 0.358375,
		-0.650405, -0.190220, 0.735384,
		0.747489, -0.332389, 0.575133,
		30.053423, 45.395786, 37.831715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383905, 45.832767, 38.088078>,  <29.530180, 45.628456, 37.429123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383905, 45.832767, 38.088078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.781645, 45.790726, 38.094059>,  <30.020288, 45.765503, 38.097649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.781645, 45.790726, 38.094059>,  <29.383905, 45.832767, 38.088078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781645, 45.790726, 38.094059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093379, 0.932920, 0.347765,
		-0.050497, -0.344404, 0.937463,
		0.994349, -0.105100, 0.014950,
		30.079950, 45.759197, 38.098545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586586, 46.105133, 38.735104>,  <29.383905, 45.832767, 38.088078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586586, 46.105133, 38.735104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.908194, 46.120316, 38.497749>,  <30.101158, 46.129425, 38.355335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.908194, 46.120316, 38.497749>,  <29.586586, 46.105133, 38.735104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908194, 46.120316, 38.497749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303051, 0.832456, 0.463872,
		0.511577, -0.552790, 0.657809,
		0.804021, 0.037957, -0.593389,
		30.149399, 46.131702, 38.319733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.953011, 31.354191, 45.939537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.606739, 31.154266, 45.928314>,  <39.398975, 31.034311, 45.921581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.606739, 31.154266, 45.928314>,  <39.953011, 31.354191, 45.939537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606739, 31.154266, 45.928314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039076, -0.123340, 0.991595,
		-0.499070, 0.857307, 0.126303,
		-0.865680, -0.499811, -0.028055,
		39.347034, 31.004324, 45.919899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528923, 31.610609, 46.550049>,  <39.953011, 31.354191, 45.939537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528923, 31.610609, 46.550049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.442471, 31.238663, 46.430962>,  <39.390598, 31.015495, 46.359509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.442471, 31.238663, 46.430962>,  <39.528923, 31.610609, 46.550049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442471, 31.238663, 46.430962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207756, -0.341746, 0.916541,
		-0.954004, 0.136242, 0.267048,
		-0.216134, -0.929864, -0.297722,
		39.377632, 30.959703, 46.341644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918537, 31.437790, 46.959133>,  <39.528923, 31.610609, 46.550049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918537, 31.437790, 46.959133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.092201, 31.105608, 46.819508>,  <39.196400, 30.906300, 46.735733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.092201, 31.105608, 46.819508>,  <38.918537, 31.437790, 46.959133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092201, 31.105608, 46.819508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083863, -0.423072, 0.902207,
		-0.896922, -0.362431, -0.253327,
		0.434163, -0.830454, -0.349068,
		39.222450, 30.856472, 46.714787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625988, 30.963169, 47.328285>,  <38.918537, 31.437790, 46.959133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625988, 30.963169, 47.328285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.938839, 30.756163, 47.189457>,  <39.126549, 30.631960, 47.106159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.938839, 30.756163, 47.189457>,  <38.625988, 30.963169, 47.328285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938839, 30.756163, 47.189457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048065, -0.505220, 0.861651,
		-0.621264, -0.690602, -0.370271,
		0.782126, -0.517516, -0.347069,
		39.173477, 30.600908, 47.085335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516430, 30.280729, 47.611073>,  <38.625988, 30.963169, 47.328285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516430, 30.280729, 47.611073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.902641, 30.256353, 47.509853>,  <39.134369, 30.241728, 47.449120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.902641, 30.256353, 47.509853>,  <38.516430, 30.280729, 47.611073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902641, 30.256353, 47.509853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129440, -0.731049, 0.669935,
		-0.225819, -0.679599, -0.697962,
		0.965531, -0.060940, -0.253052,
		39.192299, 30.238071, 47.433937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731422, 29.593872, 47.708931>,  <38.516430, 30.280729, 47.611073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731422, 29.593872, 47.708931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.071671, 29.804085, 47.715485>,  <39.275818, 29.930212, 47.719418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.071671, 29.804085, 47.715485>,  <38.731422, 29.593872, 47.708931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071671, 29.804085, 47.715485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329024, -0.556347, 0.763034,
		0.410114, -0.643658, -0.646151,
		0.850617, 0.525530, 0.016387,
		39.326855, 29.961744, 47.720402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215984, 29.127882, 47.453888>,  <38.731422, 29.593872, 47.708931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215984, 29.127882, 47.453888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.360615, 29.429390, 47.673378>,  <39.447392, 29.610294, 47.805073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.360615, 29.429390, 47.673378>,  <39.215984, 29.127882, 47.453888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360615, 29.429390, 47.673378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299699, -0.651272, 0.697155,
		0.882862, -0.087621, -0.461387,
		0.361574, 0.753768, 0.548723,
		39.469086, 29.655521, 47.837994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966358, 28.960999, 47.519741>,  <39.215984, 29.127882, 47.453888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966358, 28.960999, 47.519741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.871189, 29.214964, 47.813755>,  <39.814087, 29.367342, 47.990166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.871189, 29.214964, 47.813755>,  <39.966358, 28.960999, 47.519741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871189, 29.214964, 47.813755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539883, -0.542645, 0.643477,
		0.807416, 0.549930, -0.213673,
		-0.237919, 0.634912, 0.735038,
		39.799812, 29.405437, 48.034267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478947, 28.924520, 47.963531>,  <39.966358, 28.960999, 47.519741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478947, 28.924520, 47.963531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.217052, 29.097342, 48.211613>,  <40.059917, 29.201035, 48.360462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.217052, 29.097342, 48.211613>,  <40.478947, 28.924520, 47.963531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217052, 29.097342, 48.211613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363159, -0.539810, 0.759422,
		0.662905, 0.722451, 0.196526,
		-0.654731, 0.432054, 0.620207,
		40.020634, 29.226957, 48.397675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852654, 29.186718, 48.534416>,  <40.478947, 28.924520, 47.963531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852654, 29.186718, 48.534416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.478962, 29.148401, 48.671848>,  <40.254749, 29.125412, 48.754307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.478962, 29.148401, 48.671848>,  <40.852654, 29.186718, 48.534416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478962, 29.148401, 48.671848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334465, -0.569912, 0.750556,
		0.123911, 0.816103, 0.564466,
		-0.934226, -0.095792, 0.343577,
		40.198692, 29.119663, 48.774921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889313, 29.255043, 49.308914>,  <40.852654, 29.186718, 48.534416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889313, 29.255043, 49.308914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.552139, 29.055445, 49.228451>,  <40.349834, 28.935686, 49.180172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.552139, 29.055445, 49.228451>,  <40.889313, 29.255043, 49.308914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552139, 29.055445, 49.228451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240766, -0.684222, 0.688384,
		-0.481140, 0.531829, 0.696895,
		-0.842933, -0.498997, -0.201160,
		40.299259, 28.905745, 49.168102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697498, 28.953693, 49.961506>,  <40.889313, 29.255043, 49.308914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697498, 28.953693, 49.961506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.440666, 28.741327, 49.740288>,  <40.286568, 28.613909, 49.607555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.440666, 28.741327, 49.740288>,  <40.697498, 28.953693, 49.961506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440666, 28.741327, 49.740288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143508, -0.791878, 0.593578,
		-0.753083, 0.301761, 0.584642,
		-0.642084, -0.530914, -0.553044,
		40.248039, 28.582052, 49.574375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249420, 28.623369, 50.433887>,  <40.697498, 28.953693, 49.961506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249420, 28.623369, 50.433887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.295856, 28.418917, 50.093235>,  <40.323719, 28.296246, 49.888844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.295856, 28.418917, 50.093235>,  <40.249420, 28.623369, 50.433887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295856, 28.418917, 50.093235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240135, -0.817544, 0.523409,
		-0.963772, -0.265270, 0.027827,
		0.116095, -0.511130, -0.851627,
		40.330685, 28.265577, 49.837746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605888, 28.916723, 51.118946>,  <40.249420, 28.623369, 50.433887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605888, 28.916723, 51.118946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.774483, 29.211605, 51.330181>,  <40.875641, 29.388535, 51.456924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.774483, 29.211605, 51.330181>,  <40.605888, 28.916723, 51.118946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774483, 29.211605, 51.330181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383644, -0.672624, 0.632767,
		0.821684, -0.064105, -0.566327,
		0.421488, 0.737203, 0.528091,
		40.900928, 29.432766, 51.488609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892624, 28.786524, 51.347351>,  <40.605888, 28.916723, 51.118946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892624, 28.786524, 51.347351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.529251, 28.738148, 51.507416>,  <39.311230, 28.709122, 51.603455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.529251, 28.738148, 51.507416>,  <39.892624, 28.786524, 51.347351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529251, 28.738148, 51.507416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337953, 0.775889, -0.532714,
		-0.246056, -0.619169, -0.745712,
		-0.908430, -0.120939, 0.400162,
		39.256721, 28.701866, 51.627464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460236, 28.766462, 50.865330>,  <39.892624, 28.786524, 51.347351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460236, 28.766462, 50.865330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.232136, 28.882254, 51.172840>,  <39.095276, 28.951729, 51.357346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.232136, 28.882254, 51.172840>,  <39.460236, 28.766462, 50.865330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232136, 28.882254, 51.172840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303231, 0.795581, -0.524501,
		-0.763456, -0.532213, -0.365901,
		-0.570251, 0.289481, 0.768775,
		39.061062, 28.969097, 51.403473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791203, 29.066711, 50.561600>,  <39.460236, 28.766462, 50.865330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791203, 29.066711, 50.561600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.815796, 29.229130, 50.926311>,  <38.830551, 29.326580, 51.145138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.815796, 29.229130, 50.926311>,  <38.791203, 29.066711, 50.561600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815796, 29.229130, 50.926311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124893, 0.909460, -0.396590,
		-0.990263, -0.089492, 0.106628,
		0.061482, 0.406045, 0.911782,
		38.834240, 29.350943, 51.199844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229301, 29.478615, 50.528522>,  <38.791203, 29.066711, 50.561600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229301, 29.478615, 50.528522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453648, 29.631071, 50.822506>,  <38.588253, 29.722546, 50.998898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453648, 29.631071, 50.822506>,  <38.229301, 29.478615, 50.528522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453648, 29.631071, 50.822506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039127, 0.898940, -0.436321,
		-0.826984, 0.215959, 0.519094,
		0.560862, 0.381141, 0.734959,
		38.621906, 29.745413, 51.042995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837475, 30.067579, 50.897755>,  <38.229301, 29.478615, 50.528522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837475, 30.067579, 50.897755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.232315, 30.116013, 50.939667>,  <38.469219, 30.145073, 50.964813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.232315, 30.116013, 50.939667>,  <37.837475, 30.067579, 50.897755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232315, 30.116013, 50.939667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059994, 0.886356, -0.459101,
		-0.148460, 0.446891, 0.882184,
		0.987097, 0.121084, 0.104777,
		38.528442, 30.152338, 50.971100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880016, 30.786367, 50.756680>,  <37.837475, 30.067579, 50.897755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880016, 30.786367, 50.756680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.266090, 30.682325, 50.767754>,  <38.497734, 30.619900, 50.774399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.266090, 30.682325, 50.767754>,  <37.880016, 30.786367, 50.756680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266090, 30.682325, 50.767754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237282, 0.826072, -0.511178,
		0.110088, 0.499950, 0.859029,
		0.965183, -0.260106, 0.027689,
		38.555645, 30.604294, 50.776062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200417, 31.451395, 50.902637>,  <37.880016, 30.786367, 50.756680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200417, 31.451395, 50.902637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.458664, 31.204372, 50.722950>,  <38.613613, 31.056158, 50.615135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.458664, 31.204372, 50.722950>,  <38.200417, 31.451395, 50.902637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458664, 31.204372, 50.722950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197288, 0.703161, -0.683112,
		0.737737, 0.352402, 0.575809,
		0.645617, -0.617557, -0.449223,
		38.652348, 31.019106, 50.588184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765347, 31.934710, 50.752216>,  <38.200417, 31.451395, 50.902637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765347, 31.934710, 50.752216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.794067, 31.604090, 50.528912>,  <38.811298, 31.405718, 50.394928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.794067, 31.604090, 50.528912>,  <38.765347, 31.934710, 50.752216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794067, 31.604090, 50.528912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078676, 0.562657, -0.822938,
		0.994311, 0.015165, 0.105428,
		0.071800, -0.826551, -0.558263,
		38.815609, 31.356125, 50.361431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325237, 32.047489, 50.251129>,  <38.765347, 31.934710, 50.752216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325237, 32.047489, 50.251129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.108261, 31.748827, 50.097107>,  <38.978077, 31.569630, 50.004692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.108261, 31.748827, 50.097107>,  <39.325237, 32.047489, 50.251129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108261, 31.748827, 50.097107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039738, 0.480638, -0.876018,
		0.839157, -0.459882, -0.290386,
		-0.542436, -0.746656, -0.385055,
		38.945530, 31.524830, 49.981590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648064, 31.928701, 49.644657>,  <39.325237, 32.047489, 50.251129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648064, 31.928701, 49.644657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.291569, 31.753815, 49.596424>,  <39.077671, 31.648882, 49.567486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.291569, 31.753815, 49.596424>,  <39.648064, 31.928701, 49.644657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291569, 31.753815, 49.596424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055501, 0.369003, -0.927770,
		0.450131, -0.820169, -0.353135,
		-0.891236, -0.437217, -0.120579,
		39.024197, 31.622650, 49.560249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606480, 31.588705, 49.001404>,  <39.648064, 31.928701, 49.644657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606480, 31.588705, 49.001404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.226795, 31.676172, 49.091900>,  <38.998985, 31.728653, 49.146198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.226795, 31.676172, 49.091900>,  <39.606480, 31.588705, 49.001404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226795, 31.676172, 49.091900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071225, 0.551041, -0.831433,
		-0.306473, -0.805319, -0.507480,
		-0.949211, 0.218667, 0.226238,
		38.942032, 31.741772, 49.159771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264610, 31.482275, 48.388645>,  <39.606480, 31.588705, 49.001404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264610, 31.482275, 48.388645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.026100, 31.711023, 48.614006>,  <38.882992, 31.848272, 48.749222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.026100, 31.711023, 48.614006>,  <39.264610, 31.482275, 48.388645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026100, 31.711023, 48.614006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189038, 0.582051, -0.790874,
		-0.780204, -0.578084, -0.238958,
		-0.596277, 0.571871, 0.563398,
		38.847218, 31.882584, 48.783024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793400, 31.666758, 47.930958>,  <39.264610, 31.482275, 48.388645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793400, 31.666758, 47.930958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.738609, 31.928320, 48.228584>,  <38.705734, 32.085258, 48.407162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.738609, 31.928320, 48.228584>,  <38.793400, 31.666758, 47.930958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738609, 31.928320, 48.228584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227320, 0.710354, -0.666125,
		-0.964138, -0.260388, 0.051343,
		-0.136979, 0.653908, 0.744071,
		38.697517, 32.124493, 48.451805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085171, 32.028099, 47.835258>,  <38.793400, 31.666758, 47.930958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085171, 32.028099, 47.835258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.290432, 32.275875, 48.072903>,  <38.413589, 32.424541, 48.215488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.290432, 32.275875, 48.072903>,  <38.085171, 32.028099, 47.835258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290432, 32.275875, 48.072903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164732, 0.750407, -0.640119,
		-0.842339, 0.230612, 0.487117,
		0.513155, 0.619441, 0.594108,
		38.444378, 32.461708, 48.251137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475441, 32.159676, 48.225342>,  <38.085171, 32.028099, 47.835258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475441, 32.159676, 48.225342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.079914, 32.205677, 48.187363>,  <36.842598, 32.233276, 48.164574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.079914, 32.205677, 48.187363>,  <37.475441, 32.159676, 48.225342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079914, 32.205677, 48.187363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147770, -0.669537, 0.727932,
		0.020140, 0.733822, 0.679043,
		-0.988817, 0.115002, -0.094952,
		36.783268, 32.240177, 48.158878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186359, 32.496078, 48.933483>,  <37.475441, 32.159676, 48.225342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186359, 32.496078, 48.933483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.905579, 32.296589, 48.730099>,  <36.737110, 32.176895, 48.608067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.905579, 32.296589, 48.730099>,  <37.186359, 32.496078, 48.933483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905579, 32.296589, 48.730099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168949, -0.576931, 0.799129,
		-0.691892, 0.646857, 0.320721,
		-0.701956, -0.498725, -0.508460,
		36.694992, 32.146973, 48.577560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509987, 32.496738, 49.257641>,  <37.186359, 32.496078, 48.933483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509987, 32.496738, 49.257641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.454994, 32.172569, 49.029846>,  <36.421997, 31.978067, 48.893169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.454994, 32.172569, 49.029846>,  <36.509987, 32.496738, 49.257641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454994, 32.172569, 49.029846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386841, -0.485352, 0.784084,
		-0.911840, 0.328099, -0.246776,
		-0.137484, -0.810422, -0.569486,
		36.413750, 31.929443, 48.859001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125462, 32.208584, 49.630196>,  <36.509987, 32.496738, 49.257641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125462, 32.208584, 49.630196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.170990, 31.920137, 49.356838>,  <36.198307, 31.747068, 49.192822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.170990, 31.920137, 49.356838>,  <36.125462, 32.208584, 49.630196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170990, 31.920137, 49.356838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400927, -0.662711, 0.632512,
		-0.909011, 0.201997, -0.364549,
		0.113825, -0.721118, -0.683398,
		36.205139, 31.703802, 49.151817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437878, 31.908449, 49.533733>,  <36.125462, 32.208584, 49.630196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437878, 31.908449, 49.533733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.737213, 31.661379, 49.437016>,  <35.916813, 31.513136, 49.378983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.737213, 31.661379, 49.437016>,  <35.437878, 31.908449, 49.533733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737213, 31.661379, 49.437016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352535, -0.679137, 0.643811,
		-0.561881, -0.396545, -0.725976,
		0.748337, -0.617677, -0.241797,
		35.961716, 31.476076, 49.364475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110718, 31.223278, 49.576328>,  <35.437878, 31.908449, 49.533733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110718, 31.223278, 49.576328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.504707, 31.157419, 49.597168>,  <35.741100, 31.117905, 49.609673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.504707, 31.157419, 49.597168>,  <35.110718, 31.223278, 49.576328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504707, 31.157419, 49.597168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157853, -0.736051, 0.658264,
		-0.070035, -0.656598, -0.750982,
		0.984976, -0.164646, 0.052096,
		35.800201, 31.108025, 49.612797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050766, 30.515158, 49.687908>,  <35.110718, 31.223278, 49.576328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050766, 30.515158, 49.687908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.427654, 30.615177, 49.777081>,  <35.653786, 30.675190, 49.830585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.427654, 30.615177, 49.777081>,  <35.050766, 30.515158, 49.687908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427654, 30.615177, 49.777081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046730, -0.757068, 0.651663,
		0.331722, -0.603591, -0.725009,
		0.942219, 0.250051, 0.222931,
		35.710320, 30.690193, 49.843960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898796, 29.901592, 49.206299>,  <35.050766, 30.515158, 49.687908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898796, 29.901592, 49.206299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.620434, 29.636541, 49.095562>,  <34.453415, 29.477510, 49.029121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.620434, 29.636541, 49.095562>,  <34.898796, 29.901592, 49.206299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620434, 29.636541, 49.095562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465914, 0.709952, -0.528102,
		0.546475, -0.238528, -0.802788,
		-0.695908, -0.662625, -0.276838,
		34.411663, 29.437754, 49.012512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782402, 30.116707, 48.463795>,  <34.898796, 29.901592, 49.206299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782402, 30.116707, 48.463795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.469177, 29.915018, 48.609432>,  <34.281242, 29.794004, 48.696815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.469177, 29.915018, 48.609432>,  <34.782402, 30.116707, 48.463795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469177, 29.915018, 48.609432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608916, 0.502386, -0.613865,
		0.126606, -0.702402, -0.700430,
		-0.783066, -0.504222, 0.364099,
		34.234257, 29.763752, 48.718662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457344, 29.852865, 47.865128>,  <34.782402, 30.116707, 48.463795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457344, 29.852865, 47.865128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.198681, 29.890295, 48.167934>,  <34.043484, 29.912754, 48.349617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.198681, 29.890295, 48.167934>,  <34.457344, 29.852865, 47.865128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198681, 29.890295, 48.167934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679386, 0.380554, -0.627387,
		-0.346794, -0.920012, -0.182514,
		-0.646660, 0.093576, 0.757017,
		34.004684, 29.918367, 48.395039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803867, 29.799416, 47.577484>,  <34.457344, 29.852865, 47.865128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803867, 29.799416, 47.577484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.662930, 29.948736, 47.920761>,  <33.578365, 30.038328, 48.126728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.662930, 29.948736, 47.920761>,  <33.803867, 29.799416, 47.577484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662930, 29.948736, 47.920761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734936, 0.457364, -0.500686,
		-0.579415, -0.807133, 0.113204,
		-0.352345, 0.373302, 0.858195,
		33.557224, 30.060726, 48.178219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000729, 29.736765, 47.579784>,  <33.803867, 29.799416, 47.577484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000729, 29.736765, 47.579784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.149124, 30.026083, 47.812752>,  <33.238163, 30.199673, 47.952534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.149124, 30.026083, 47.812752>,  <33.000729, 29.736765, 47.579784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149124, 30.026083, 47.812752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661294, 0.646089, -0.381128,
		-0.651962, -0.243754, 0.718004,
		0.370993, 0.723293, 0.582419,
		33.260422, 30.243071, 47.987476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433342, 30.030344, 47.893005>,  <33.000729, 29.736765, 47.579784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433342, 30.030344, 47.893005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.724625, 30.302595, 47.925148>,  <32.899395, 30.465946, 47.944435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.724625, 30.302595, 47.925148>,  <32.433342, 30.030344, 47.893005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724625, 30.302595, 47.925148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609255, 0.696586, -0.378913,
		-0.313876, 0.226969, 0.921937,
		0.728210, 0.680626, 0.080359,
		32.943089, 30.506783, 47.949257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063053, 30.606733, 48.126972>,  <32.433342, 30.030344, 47.893005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063053, 30.606733, 48.126972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.394131, 30.764965, 47.967758>,  <32.592777, 30.859905, 47.872231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.394131, 30.764965, 47.967758>,  <32.063053, 30.606733, 48.126972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394131, 30.764965, 47.967758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539104, 0.757475, -0.368237,
		0.155834, 0.519371, 0.840219,
		0.827698, 0.395581, -0.398035,
		32.642441, 30.883640, 47.848347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.611454, 26.237123, 47.901535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.630592, 26.587584, 48.093399>,  <38.642075, 26.797859, 48.208515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.630592, 26.587584, 48.093399>,  <38.611454, 26.237123, 47.901535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630592, 26.587584, 48.093399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072510, 0.481986, -0.873173,
		-0.996220, 0.006996, 0.086590,
		0.047844, 0.876151, 0.479657,
		38.644947, 26.850430, 48.237297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024235, 26.707260, 47.697578>,  <38.611454, 26.237123, 47.901535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024235, 26.707260, 47.697578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.355125, 26.907049, 47.800514>,  <38.553661, 27.026922, 47.862274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.355125, 26.907049, 47.800514>,  <38.024235, 26.707260, 47.697578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355125, 26.907049, 47.800514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053834, 0.526349, -0.848563,
		-0.559283, 0.688101, 0.462299,
		0.827227, 0.499474, 0.257335,
		38.603294, 27.056890, 47.877716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885761, 27.455093, 47.690426>,  <38.024235, 26.707260, 47.697578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885761, 27.455093, 47.690426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.282814, 27.412531, 47.667217>,  <38.521046, 27.386993, 47.653290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.282814, 27.412531, 47.667217>,  <37.885761, 27.455093, 47.690426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282814, 27.412531, 47.667217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033513, 0.701062, -0.712312,
		0.116475, 0.705117, 0.699460,
		0.992628, -0.106408, -0.058026,
		38.580601, 27.380610, 47.649811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219360, 28.101723, 47.659584>,  <37.885761, 27.455093, 47.690426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219360, 28.101723, 47.659584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.487911, 27.847305, 47.507423>,  <38.649040, 27.694654, 47.416126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.487911, 27.847305, 47.507423>,  <38.219360, 28.101723, 47.659584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487911, 27.847305, 47.507423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139517, 0.612574, -0.778003,
		0.727869, 0.469258, 0.500004,
		0.671373, -0.636043, -0.380404,
		38.689323, 27.656492, 47.393303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846062, 28.513821, 47.399769>,  <38.219360, 28.101723, 47.659584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846062, 28.513821, 47.399769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.822304, 28.166412, 47.202938>,  <38.808048, 27.957968, 47.084839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.822304, 28.166412, 47.202938>,  <38.846062, 28.513821, 47.399769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822304, 28.166412, 47.202938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036806, 0.490707, -0.870547,
		0.997556, -0.069821, 0.002819,
		-0.059399, -0.868523, -0.492077,
		38.804485, 27.905855, 47.055313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478977, 28.475634, 46.853020>,  <38.846062, 28.513821, 47.399769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478977, 28.475634, 46.853020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.199257, 28.215050, 46.735321>,  <39.031425, 28.058699, 46.664703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.199257, 28.215050, 46.735321>,  <39.478977, 28.475634, 46.853020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199257, 28.215050, 46.735321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104161, 0.314371, -0.943568,
		0.707200, -0.690486, -0.151983,
		-0.699299, -0.651460, -0.294245,
		38.989468, 28.019611, 46.647049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406094, 28.530746, 46.033352>,  <39.478977, 28.475634, 46.853020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406094, 28.530746, 46.033352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.089626, 28.303331, 46.123516>,  <38.899746, 28.166882, 46.177616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.089626, 28.303331, 46.123516>,  <39.406094, 28.530746, 46.033352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089626, 28.303331, 46.123516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319293, 0.069616, -0.945096,
		0.521630, -0.819706, -0.236608,
		-0.791173, -0.568538, 0.225413,
		38.852276, 28.132771, 46.191139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416733, 28.152739, 45.476234>,  <39.406094, 28.530746, 46.033352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416733, 28.152739, 45.476234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.053608, 28.154615, 45.643974>,  <38.835732, 28.155741, 45.744617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.053608, 28.154615, 45.643974>,  <39.416733, 28.152739, 45.476234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053608, 28.154615, 45.643974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389871, 0.358984, -0.848016,
		-0.154519, -0.933332, -0.324061,
		-0.907813, 0.004693, 0.419349,
		38.781265, 28.156023, 45.769779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976444, 27.834566, 45.017536>,  <39.416733, 28.152739, 45.476234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976444, 27.834566, 45.017536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.694584, 28.031820, 45.221607>,  <38.525467, 28.150173, 45.344048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.694584, 28.031820, 45.221607>,  <38.976444, 27.834566, 45.017536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694584, 28.031820, 45.221607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445564, 0.252041, -0.859039,
		-0.552208, -0.832641, 0.042122,
		-0.704655, 0.493137, 0.510174,
		38.483189, 28.179762, 45.374660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455566, 27.640316, 44.619198>,  <38.976444, 27.834566, 45.017536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455566, 27.640316, 44.619198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.326130, 27.960100, 44.821644>,  <38.248466, 28.151970, 44.943111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.326130, 27.960100, 44.821644>,  <38.455566, 27.640316, 44.619198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326130, 27.960100, 44.821644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549351, 0.276770, -0.788424,
		-0.770390, -0.533163, 0.349623,
		-0.323593, 0.799460, 0.506114,
		38.229053, 28.199938, 44.973476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711296, 27.702141, 44.430763>,  <38.455566, 27.640316, 44.619198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711296, 27.702141, 44.430763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.849590, 28.046225, 44.580704>,  <37.932568, 28.252674, 44.670666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.849590, 28.046225, 44.580704>,  <37.711296, 27.702141, 44.430763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849590, 28.046225, 44.580704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365160, 0.491335, -0.790727,
		-0.864365, 0.136500, 0.483984,
		0.345732, 0.860208, 0.374848,
		37.953308, 28.304287, 44.693157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191910, 28.074284, 44.385002>,  <37.711296, 27.702141, 44.430763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191910, 28.074284, 44.385002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.523510, 28.297783, 44.394455>,  <37.722469, 28.431883, 44.400127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.523510, 28.297783, 44.394455>,  <37.191910, 28.074284, 44.385002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523510, 28.297783, 44.394455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265400, 0.430254, -0.862812,
		-0.492261, 0.709000, 0.504973,
		0.829001, 0.558748, 0.023629,
		37.772209, 28.465408, 44.401543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794933, 28.536179, 44.666111>,  <37.191910, 28.074284, 44.385002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794933, 28.536179, 44.666111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.397293, 28.556162, 44.704617>,  <36.158710, 28.568151, 44.727718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.397293, 28.556162, 44.704617>,  <36.794933, 28.536179, 44.666111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397293, 28.556162, 44.704617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050587, -0.571543, 0.819012,
		0.095936, 0.819050, 0.565644,
		-0.994101, 0.049958, 0.096265,
		36.099064, 28.571150, 44.733498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660542, 28.564594, 45.429832>,  <36.794933, 28.536179, 44.666111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660542, 28.564594, 45.429832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.291561, 28.487040, 45.296272>,  <36.070171, 28.440506, 45.216137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.291561, 28.487040, 45.296272>,  <36.660542, 28.564594, 45.429832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291561, 28.487040, 45.296272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144704, -0.628144, 0.764523,
		-0.357967, 0.753553, 0.551378,
		-0.922454, -0.193888, -0.333897,
		36.014824, 28.428873, 45.196102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224720, 28.558002, 46.035801>,  <36.660542, 28.564594, 45.429832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224720, 28.558002, 46.035801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.042770, 28.353010, 45.744473>,  <35.933601, 28.230015, 45.569675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.042770, 28.353010, 45.744473>,  <36.224720, 28.558002, 46.035801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042770, 28.353010, 45.744473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395396, -0.616585, 0.680797,
		-0.797970, 0.597650, 0.077833,
		-0.454869, -0.512481, -0.728325,
		35.906311, 28.199266, 45.525974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543747, 28.520824, 46.216972>,  <36.224720, 28.558002, 46.035801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543747, 28.520824, 46.216972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.605644, 28.213608, 45.968403>,  <35.642780, 28.029278, 45.819263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.605644, 28.213608, 45.968403>,  <35.543747, 28.520824, 46.216972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605644, 28.213608, 45.968403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548162, -0.590042, 0.592764,
		-0.821933, 0.248915, -0.512315,
		0.154739, -0.768044, -0.621421,
		35.652065, 27.983194, 45.781975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893913, 28.008381, 46.181728>,  <35.543747, 28.520824, 46.216972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893913, 28.008381, 46.181728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.180775, 27.763428, 46.048653>,  <35.352890, 27.616455, 45.968807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.180775, 27.763428, 46.048653>,  <34.893913, 28.008381, 46.181728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180775, 27.763428, 46.048653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342949, -0.725669, 0.596482,
		-0.606697, -0.313672, -0.730430,
		0.717150, -0.612384, -0.332688,
		35.395920, 27.579712, 45.948845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660549, 27.347410, 46.223198>,  <34.893913, 28.008381, 46.181728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660549, 27.347410, 46.223198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.051464, 27.268177, 46.193092>,  <35.286015, 27.220638, 46.175030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.051464, 27.268177, 46.193092>,  <34.660549, 27.347410, 46.223198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051464, 27.268177, 46.193092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088563, -0.704504, 0.704152,
		-0.192503, -0.681496, -0.706049,
		0.977292, -0.198082, -0.075263,
		35.344650, 27.208752, 46.170513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769669, 26.576590, 46.049747>,  <34.660549, 27.347410, 46.223198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769669, 26.576590, 46.049747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.100380, 26.711065, 46.230152>,  <35.298809, 26.791750, 46.338394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.100380, 26.711065, 46.230152>,  <34.769669, 26.576590, 46.049747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100380, 26.711065, 46.230152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042144, -0.762491, 0.645625,
		0.560943, -0.552798, -0.616245,
		0.826781, 0.336187, 0.451011,
		35.348415, 26.811922, 46.365456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151424, 25.974146, 46.107399>,  <34.769669, 26.576590, 46.049747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151424, 25.974146, 46.107399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.294479, 26.240980, 46.368809>,  <35.380314, 26.401081, 46.525654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.294479, 26.240980, 46.368809>,  <35.151424, 25.974146, 46.107399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294479, 26.240980, 46.368809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149199, -0.731635, 0.665169,
		0.921865, -0.140385, -0.361189,
		0.357638, 0.667085, 0.653523,
		35.401772, 26.441105, 46.564865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614933, 25.677338, 46.520699>,  <35.151424, 25.974146, 46.107399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614933, 25.677338, 46.520699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.579674, 26.004827, 46.747650>,  <35.558517, 26.201323, 46.883820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.579674, 26.004827, 46.747650>,  <35.614933, 25.677338, 46.520699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579674, 26.004827, 46.747650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257525, -0.531501, 0.806962,
		0.962243, 0.217245, -0.163993,
		-0.088146, 0.818726, 0.567379,
		35.553230, 26.250444, 46.917862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172985, 25.644182, 47.102089>,  <35.614933, 25.677338, 46.520699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172985, 25.644182, 47.102089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.892246, 25.904394, 47.218178>,  <35.723804, 26.060522, 47.287830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.892246, 25.904394, 47.218178>,  <36.172985, 25.644182, 47.102089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892246, 25.904394, 47.218178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018334, -0.423782, 0.905579,
		0.712095, 0.630253, 0.309355,
		-0.701843, 0.650530, 0.290218,
		35.681694, 26.099554, 47.305244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436840, 25.954506, 47.638798>,  <36.172985, 25.644182, 47.102089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436840, 25.954506, 47.638798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.037712, 25.966833, 47.662121>,  <35.798233, 25.974230, 47.676113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.037712, 25.966833, 47.662121>,  <36.436840, 25.954506, 47.638798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037712, 25.966833, 47.662121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035470, -0.494566, 0.868416,
		0.055601, 0.868593, 0.492396,
		-0.997823, 0.030819, 0.058307,
		35.738365, 25.976078, 47.679611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319138, 26.109756, 48.327896>,  <36.436840, 25.954506, 47.638798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319138, 26.109756, 48.327896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.961498, 25.981115, 48.203217>,  <35.746914, 25.903931, 48.128410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.961498, 25.981115, 48.203217>,  <36.319138, 26.109756, 48.327896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961498, 25.981115, 48.203217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081807, -0.566976, 0.819662,
		-0.440330, 0.758360, 0.480624,
		-0.894101, -0.321604, -0.311696,
		35.693268, 25.884634, 48.109707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797649, 26.160223, 48.915756>,  <36.319138, 26.109756, 48.327896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797649, 26.160223, 48.915756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.673016, 25.857592, 48.685799>,  <35.598236, 25.676014, 48.547825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.673016, 25.857592, 48.685799>,  <35.797649, 26.160223, 48.915756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673016, 25.857592, 48.685799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177774, -0.547920, 0.817423,
		-0.933442, 0.356895, 0.036222,
		-0.311581, -0.756578, -0.574898,
		35.579540, 25.630619, 48.513329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147179, 26.059277, 49.196735>,  <35.797649, 26.160223, 48.915756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147179, 26.059277, 49.196735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.211990, 25.713829, 49.005775>,  <35.250877, 25.506561, 48.891201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.211990, 25.713829, 49.005775>,  <35.147179, 26.059277, 49.196735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211990, 25.713829, 49.005775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230858, -0.503543, 0.832556,
		-0.959401, -0.024689, -0.280963,
		0.162031, -0.863618, -0.477400,
		35.260601, 25.454744, 48.862556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760258, 26.232904, 49.839222>,  <35.147179, 26.059277, 49.196735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760258, 26.232904, 49.839222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.594471, 26.479095, 50.107372>,  <34.494999, 26.626810, 50.268261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.594471, 26.479095, 50.107372>,  <34.760258, 26.232904, 49.839222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594471, 26.479095, 50.107372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101001, 0.763181, -0.638242,
		-0.904441, -0.196824, -0.378480,
		-0.414470, 0.615479, 0.670373,
		34.470131, 26.663738, 50.308483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365246, 26.864767, 49.429016>,  <34.760258, 26.232904, 49.839222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365246, 26.864767, 49.429016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.480770, 27.011450, 49.782764>,  <34.550087, 27.099459, 49.995014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.480770, 27.011450, 49.782764>,  <34.365246, 26.864767, 49.429016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480770, 27.011450, 49.782764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037601, 0.927368, -0.372256,
		-0.956647, 0.074259, 0.281624,
		0.288812, 0.366707, 0.884372,
		34.567413, 27.121462, 50.048077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998055, 27.440319, 49.641838>,  <34.365246, 26.864767, 49.429016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998055, 27.440319, 49.641838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.305481, 27.517675, 49.885773>,  <34.489937, 27.564089, 50.032135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.305481, 27.517675, 49.885773>,  <33.998055, 27.440319, 49.641838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305481, 27.517675, 49.885773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004222, 0.954731, -0.297440,
		-0.639756, 0.226028, 0.734591,
		0.768567, 0.193391, 0.609840,
		34.536053, 27.575693, 50.068726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856831, 28.001192, 50.139339>,  <33.998055, 27.440319, 49.641838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856831, 28.001192, 50.139339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.233803, 27.970665, 50.009113>,  <34.459988, 27.952349, 49.930977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.233803, 27.970665, 50.009113>,  <33.856831, 28.001192, 50.139339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233803, 27.970665, 50.009113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088999, 0.881246, -0.464204,
		0.322332, 0.466456, 0.823723,
		0.942433, -0.076317, -0.325568,
		34.516533, 27.947769, 49.911442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148304, 28.600018, 50.427021>,  <33.856831, 28.001192, 50.139339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148304, 28.600018, 50.427021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.378761, 28.491188, 50.118725>,  <34.517036, 28.425890, 49.933746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.378761, 28.491188, 50.118725>,  <34.148304, 28.600018, 50.427021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378761, 28.491188, 50.118725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077302, 0.920608, -0.382761,
		0.813686, 0.280104, 0.509368,
		0.576142, -0.272072, -0.770738,
		34.551605, 28.409567, 49.887505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551983, 29.158340, 50.314011>,  <34.148304, 28.600018, 50.427021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551983, 29.158340, 50.314011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.528370, 28.979839, 49.956825>,  <34.514202, 28.872740, 49.742516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.528370, 28.979839, 49.956825>,  <34.551983, 29.158340, 50.314011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528370, 28.979839, 49.956825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287119, 0.864310, -0.412954,
		0.956074, 0.232009, -0.179147,
		-0.059029, -0.446251, -0.892958,
		34.510662, 28.845964, 49.688938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881783, 29.497330, 49.805908>,  <34.551983, 29.158340, 50.314011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881783, 29.497330, 49.805908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.643444, 29.284929, 49.564907>,  <34.500443, 29.157488, 49.420307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.643444, 29.284929, 49.564907>,  <34.881783, 29.497330, 49.805908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643444, 29.284929, 49.564907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118567, 0.800160, -0.587951,
		0.794288, -0.278902, -0.539742,
		-0.595860, -0.530998, -0.602488,
		34.464691, 29.125628, 49.384155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485500, 29.852579, 49.666409>,  <34.881783, 29.497330, 49.805908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485500, 29.852579, 49.666409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.729561, 30.094280, 49.871384>,  <35.875999, 30.239300, 49.994370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.729561, 30.094280, 49.871384>,  <35.485500, 29.852579, 49.666409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729561, 30.094280, 49.871384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058994, -0.679642, 0.731167,
		0.790084, -0.415894, -0.450333,
		0.610153, 0.604251, 0.512439,
		35.912605, 30.275555, 50.025116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171799, 29.398655, 49.849545>,  <35.485500, 29.852579, 49.666409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171799, 29.398655, 49.849545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.157539, 29.706205, 50.104904>,  <36.148983, 29.890736, 50.258121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.157539, 29.706205, 50.104904>,  <36.171799, 29.398655, 49.849545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157539, 29.706205, 50.104904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138518, -0.628841, 0.765096,
		0.989718, 0.115704, -0.084087,
		-0.035647, 0.768877, 0.638402,
		36.146847, 29.936869, 50.296425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834831, 29.460760, 50.116158>,  <36.171799, 29.398655, 49.849545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834831, 29.460760, 50.116158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.575909, 29.594805, 50.390003>,  <36.420555, 29.675232, 50.554310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.575909, 29.594805, 50.390003>,  <36.834831, 29.460760, 50.116158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575909, 29.594805, 50.390003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372148, -0.644898, 0.667542,
		0.665206, 0.686881, 0.292736,
		-0.647307, 0.335113, 0.684611,
		36.381718, 29.695339, 50.595387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224003, 29.610458, 50.662914>,  <36.834831, 29.460760, 50.116158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224003, 29.610458, 50.662914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.844532, 29.546167, 50.771858>,  <36.616848, 29.507593, 50.837223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.844532, 29.546167, 50.771858>,  <37.224003, 29.610458, 50.662914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844532, 29.546167, 50.771858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301747, -0.717829, 0.627431,
		0.094663, 0.677413, 0.729487,
		-0.948677, -0.160726, 0.272359,
		36.559929, 29.497950, 50.853565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273312, 29.387476, 51.302414>,  <37.224003, 29.610458, 50.662914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273312, 29.387476, 51.302414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.891548, 29.281202, 51.247974>,  <36.662491, 29.217438, 51.215309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.891548, 29.281202, 51.247974>,  <37.273312, 29.387476, 51.302414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891548, 29.281202, 51.247974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119063, -0.756885, 0.642611,
		-0.273745, 0.597106, 0.754008,
		-0.954404, -0.265686, -0.136100,
		36.605228, 29.201496, 51.207146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960361, 29.279228, 51.984932>,  <37.273312, 29.387476, 51.302414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960361, 29.279228, 51.984932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.733562, 29.053749, 51.744678>,  <36.597485, 28.918461, 51.600525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.733562, 29.053749, 51.744678>,  <36.960361, 29.279228, 51.984932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733562, 29.053749, 51.744678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119069, -0.777600, 0.617383,
		-0.815070, 0.278537, 0.508015,
		-0.566996, -0.563699, -0.600633,
		36.563465, 28.884640, 51.564487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633430, 28.910976, 52.448124>,  <36.960361, 29.279228, 51.984932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633430, 28.910976, 52.448124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.552372, 28.692234, 52.123192>,  <36.503735, 28.560989, 51.928230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.552372, 28.692234, 52.123192>,  <36.633430, 28.910976, 52.448124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552372, 28.692234, 52.123192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241415, -0.831840, 0.499761,
		-0.949027, -0.094833, 0.300590,
		-0.202648, -0.546854, -0.812333,
		36.491577, 28.528177, 51.879494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210850, 28.348539, 52.654480>,  <36.633430, 28.910976, 52.448124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210850, 28.348539, 52.654480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.384945, 28.238241, 52.311661>,  <36.489403, 28.172062, 52.105968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.384945, 28.238241, 52.311661>,  <36.210850, 28.348539, 52.654480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384945, 28.238241, 52.311661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141409, -0.919189, 0.367552,
		-0.889141, -0.281167, -0.361073,
		0.435238, -0.275746, -0.857048,
		36.515514, 28.155518, 52.054546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902668, 27.791674, 52.548252>,  <36.210850, 28.348539, 52.654480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902668, 27.791674, 52.548252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.234299, 27.771633, 52.325497>,  <36.433277, 27.759609, 52.191845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.234299, 27.771633, 52.325497>,  <35.902668, 27.791674, 52.548252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234299, 27.771633, 52.325497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093642, -0.969468, 0.226632,
		-0.551238, -0.240043, -0.799072,
		0.829077, -0.050101, -0.556886,
		36.483021, 27.756603, 52.158432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.210793, 37.487122, 39.176914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489666, 37.225170, 39.060253>,  <36.656990, 37.067997, 38.990257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489666, 37.225170, 39.060253>,  <36.210793, 37.487122, 39.176914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489666, 37.225170, 39.060253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020078, -0.388832, 0.921090,
		-0.716607, -0.648028, -0.257940,
		0.697188, -0.654881, -0.291651,
		36.698822, 37.028706, 38.972759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120686, 36.722706, 39.309479>,  <36.210793, 37.487122, 39.176914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120686, 36.722706, 39.309479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500885, 36.818489, 39.388695>,  <36.729004, 36.875961, 39.436222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500885, 36.818489, 39.388695>,  <36.120686, 36.722706, 39.309479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500885, 36.818489, 39.388695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054458, -0.499080, 0.864843,
		0.305933, -0.832813, -0.461333,
		0.950495, 0.239460, 0.198038,
		36.786034, 36.890327, 39.448105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446735, 36.040352, 39.559052>,  <36.120686, 36.722706, 39.309479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446735, 36.040352, 39.559052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662567, 36.352829, 39.684650>,  <36.792068, 36.540314, 39.760010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662567, 36.352829, 39.684650>,  <36.446735, 36.040352, 39.559052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662567, 36.352829, 39.684650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005888, -0.369438, 0.929237,
		0.841912, -0.503248, -0.194743,
		0.539582, 0.781189, 0.313998,
		36.824440, 36.587185, 39.778851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069843, 35.746040, 39.851318>,  <36.446735, 36.040352, 39.559052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069843, 35.746040, 39.851318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026672, 36.108547, 40.014797>,  <37.000771, 36.326050, 40.112885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026672, 36.108547, 40.014797>,  <37.069843, 35.746040, 39.851318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026672, 36.108547, 40.014797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004208, -0.410680, 0.911770,
		0.994150, 0.100122, 0.040509,
		-0.107924, 0.906266, 0.408699,
		36.994293, 36.380428, 40.137405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358608, 35.647121, 40.505775>,  <37.069843, 35.746040, 39.851318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358608, 35.647121, 40.505775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201839, 36.012512, 40.549503>,  <37.107780, 36.231747, 40.575741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201839, 36.012512, 40.549503>,  <37.358608, 35.647121, 40.505775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201839, 36.012512, 40.549503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128323, -0.171943, 0.976713,
		0.911006, 0.368765, 0.184609,
		-0.391920, 0.913481, 0.109320,
		37.084263, 36.286556, 40.582298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720806, 35.980022, 41.013042>,  <37.358608, 35.647121, 40.505775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720806, 35.980022, 41.013042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355732, 36.139229, 40.975986>,  <37.136688, 36.234753, 40.953754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355732, 36.139229, 40.975986>,  <37.720806, 35.980022, 41.013042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355732, 36.139229, 40.975986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213838, -0.271973, 0.938245,
		0.348246, 0.876134, 0.333339,
		-0.912687, 0.398020, -0.092637,
		37.081924, 36.258636, 40.948196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630833, 36.300472, 41.582504>,  <37.720806, 35.980022, 41.013042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630833, 36.300472, 41.582504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250481, 36.287430, 41.459373>,  <37.022270, 36.279602, 41.385494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250481, 36.287430, 41.459373>,  <37.630833, 36.300472, 41.582504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250481, 36.287430, 41.459373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287635, -0.274470, 0.917569,
		-0.114411, 0.961043, 0.251609,
		-0.950882, -0.032608, -0.307832,
		36.965218, 36.277649, 41.367023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244392, 36.572998, 42.177414>,  <37.630833, 36.300472, 41.582504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244392, 36.572998, 42.177414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978649, 36.372864, 41.955315>,  <36.819202, 36.252785, 41.822056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978649, 36.372864, 41.955315>,  <37.244392, 36.572998, 42.177414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978649, 36.372864, 41.955315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398457, -0.391423, 0.829470,
		-0.632349, 0.772303, 0.060681,
		-0.664354, -0.500335, -0.555246,
		36.779343, 36.222763, 41.788742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648956, 36.824249, 42.438541>,  <37.244392, 36.572998, 42.177414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648956, 36.824249, 42.438541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607109, 36.465881, 42.265854>,  <36.582001, 36.250858, 42.162243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607109, 36.465881, 42.265854>,  <36.648956, 36.824249, 42.438541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607109, 36.465881, 42.265854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361519, -0.370138, 0.855746,
		-0.926476, 0.245604, -0.285168,
		-0.104623, -0.895922, -0.431714,
		36.575722, 36.197105, 42.136341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003750, 36.628597, 42.571648>,  <36.648956, 36.824249, 42.438541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003750, 36.628597, 42.571648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183571, 36.275860, 42.514729>,  <36.291462, 36.064217, 42.480576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183571, 36.275860, 42.514729>,  <36.003750, 36.628597, 42.571648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183571, 36.275860, 42.514729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561093, -0.402734, 0.723174,
		-0.695037, -0.245262, -0.675848,
		0.449554, -0.881846, -0.142300,
		36.318436, 36.011307, 42.472038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524792, 36.097771, 42.592697>,  <36.003750, 36.628597, 42.571648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524792, 36.097771, 42.592697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871025, 35.916172, 42.677227>,  <36.078766, 35.807213, 42.727943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871025, 35.916172, 42.677227>,  <35.524792, 36.097771, 42.592697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871025, 35.916172, 42.677227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418555, -0.424216, 0.803027,
		-0.274925, -0.783535, -0.557216,
		0.865579, -0.453998, 0.211325,
		36.130699, 35.779972, 42.740623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365631, 35.615780, 43.060024>,  <35.524792, 36.097771, 42.592697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365631, 35.615780, 43.060024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762165, 35.574493, 43.092510>,  <36.000088, 35.549721, 43.112003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762165, 35.574493, 43.092510>,  <35.365631, 35.615780, 43.060024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762165, 35.574493, 43.092510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113606, -0.363645, 0.924584,
		-0.065894, -0.925802, -0.372221,
		0.991338, -0.103211, 0.081215,
		36.059566, 35.543530, 43.116875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942062, 34.963085, 42.803959>,  <35.365631, 35.615780, 43.060024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942062, 34.963085, 42.803959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546715, 34.919163, 42.846039>,  <34.309505, 34.892807, 42.871288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546715, 34.919163, 42.846039>,  <34.942062, 34.963085, 42.803959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546715, 34.919163, 42.846039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141336, 0.408020, -0.901967,
		0.056118, -0.906345, -0.418795,
		-0.988370, -0.109808, 0.105202,
		34.250202, 34.886219, 42.877598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720825, 34.634068, 42.239544>,  <34.942062, 34.963085, 42.803959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720825, 34.634068, 42.239544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384907, 34.805134, 42.373318>,  <34.183357, 34.907772, 42.453583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384907, 34.805134, 42.373318>,  <34.720825, 34.634068, 42.239544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384907, 34.805134, 42.373318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224876, 0.286670, -0.931263,
		-0.494139, -0.857278, -0.144573,
		-0.839796, 0.427663, 0.334437,
		34.132969, 34.933434, 42.473648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232224, 34.434502, 41.769157>,  <34.720825, 34.634068, 42.239544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232224, 34.434502, 41.769157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048885, 34.753426, 41.926235>,  <33.938881, 34.944778, 42.020481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048885, 34.753426, 41.926235>,  <34.232224, 34.434502, 41.769157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048885, 34.753426, 41.926235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293516, 0.281261, -0.913641,
		-0.838907, -0.534029, 0.105108,
		-0.458348, 0.797311, 0.392698,
		33.911381, 34.992619, 42.044044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726204, 34.481972, 41.310215>,  <34.232224, 34.434502, 41.769157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726204, 34.481972, 41.310215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680824, 34.815926, 41.525654>,  <33.653599, 35.016300, 41.654919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680824, 34.815926, 41.525654>,  <33.726204, 34.481972, 41.310215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680824, 34.815926, 41.525654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391125, 0.460799, -0.796672,
		-0.913319, -0.301040, 0.274269,
		-0.113447, 0.834889, 0.538601,
		33.646790, 35.066391, 41.687233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970661, 34.747101, 41.240559>,  <33.726204, 34.481972, 41.310215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970661, 34.747101, 41.240559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232437, 35.042877, 41.303719>,  <33.389503, 35.220341, 41.341614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232437, 35.042877, 41.303719>,  <32.970661, 34.747101, 41.240559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232437, 35.042877, 41.303719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406388, 0.520099, -0.751230,
		-0.637614, 0.427468, 0.640874,
		0.654444, 0.739438, 0.157905,
		33.428772, 35.264709, 41.351089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605915, 35.347134, 41.042809>,  <32.970661, 34.747101, 41.240559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605915, 35.347134, 41.042809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994118, 35.442944, 41.031960>,  <33.227039, 35.500431, 41.025452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994118, 35.442944, 41.031960>,  <32.605915, 35.347134, 41.042809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994118, 35.442944, 41.031960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153614, 0.527831, -0.835343,
		-0.185770, 0.814876, 0.549060,
		0.970511, 0.239525, -0.027121,
		33.285271, 35.514801, 41.023823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597672, 35.981987, 40.839386>,  <32.605915, 35.347134, 41.042809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597672, 35.981987, 40.839386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977741, 35.882198, 40.764618>,  <33.205784, 35.822327, 40.719757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977741, 35.882198, 40.764618>,  <32.597672, 35.981987, 40.839386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977741, 35.882198, 40.764618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035245, 0.509804, -0.859569,
		0.309732, 0.823325, 0.475608,
		0.950171, -0.249473, -0.186921,
		33.262791, 35.807358, 40.708542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949760, 36.539368, 40.727020>,  <32.597672, 35.981987, 40.839386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949760, 36.539368, 40.727020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147350, 36.259983, 40.519894>,  <33.265903, 36.092350, 40.395618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147350, 36.259983, 40.519894>,  <32.949760, 36.539368, 40.727020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147350, 36.259983, 40.519894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109967, 0.540583, -0.834073,
		0.862496, 0.468952, 0.190224,
		0.493972, -0.698466, -0.517820,
		33.295544, 36.050442, 40.364548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304993, 36.889671, 40.304840>,  <32.949760, 36.539368, 40.727020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304993, 36.889671, 40.304840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317654, 36.531719, 40.126766>,  <33.325249, 36.316948, 40.019924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317654, 36.531719, 40.126766>,  <33.304993, 36.889671, 40.304840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317654, 36.531719, 40.126766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065062, 0.442615, -0.894348,
		0.997379, 0.057272, -0.044213,
		0.031652, -0.894881, -0.445181,
		33.327148, 36.263256, 39.993214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799953, 36.998989, 39.812096>,  <33.304993, 36.889671, 40.304840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799953, 36.998989, 39.812096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586418, 36.684143, 39.688499>,  <33.458298, 36.495235, 39.614342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586418, 36.684143, 39.688499>,  <33.799953, 36.998989, 39.812096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586418, 36.684143, 39.688499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056880, 0.398011, -0.915616,
		0.843672, -0.471214, -0.257244,
		-0.533837, -0.787111, -0.308988,
		33.426266, 36.448009, 39.595802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033119, 36.838005, 39.146294>,  <33.799953, 36.998989, 39.812096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033119, 36.838005, 39.146294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668373, 36.674931, 39.165482>,  <33.449528, 36.577084, 39.176994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668373, 36.674931, 39.165482>,  <34.033119, 36.838005, 39.146294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668373, 36.674931, 39.165482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224700, 0.397921, -0.889477,
		0.343535, -0.821860, -0.454456,
		-0.911862, -0.407683, 0.047972,
		33.394814, 36.552624, 39.179871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835587, 36.444763, 38.438892>,  <34.033119, 36.838005, 39.146294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835587, 36.444763, 38.438892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515984, 36.575283, 38.640926>,  <33.324223, 36.653595, 38.762146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515984, 36.575283, 38.640926>,  <33.835587, 36.444763, 38.438892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515984, 36.575283, 38.640926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469670, 0.185856, -0.863057,
		-0.375491, -0.926814, 0.004753,
		-0.799010, 0.326303, 0.505084,
		33.276279, 36.673176, 38.792450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490646, 36.456074, 37.790516>,  <33.835587, 36.444763, 38.438892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490646, 36.456074, 37.790516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241470, 36.591660, 38.072525>,  <33.091965, 36.673012, 38.241730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241470, 36.591660, 38.072525>,  <33.490646, 36.456074, 37.790516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241470, 36.591660, 38.072525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595418, 0.379089, -0.708357,
		-0.507371, -0.861044, -0.034325,
		-0.622939, 0.338962, 0.705020,
		33.054588, 36.693348, 38.284031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839806, 36.155251, 37.746574>,  <33.490646, 36.456074, 37.790516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839806, 36.155251, 37.746574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800877, 36.517662, 37.911327>,  <32.777519, 36.735107, 38.010178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800877, 36.517662, 37.911327>,  <32.839806, 36.155251, 37.746574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800877, 36.517662, 37.911327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541150, 0.299153, -0.785916,
		-0.835276, -0.299376, 0.461182,
		-0.097321, 0.906025, 0.411883,
		32.771679, 36.789471, 38.034893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952705, 35.588284, 37.454048>,  <32.839806, 36.155251, 37.746574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952705, 35.588284, 37.454048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016357, 35.564804, 37.059845>,  <33.054550, 35.550716, 36.823322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016357, 35.564804, 37.059845>,  <32.952705, 35.588284, 37.454048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016357, 35.564804, 37.059845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867424, 0.484989, 0.111178,
		0.471436, -0.872548, 0.128093,
		0.159132, -0.058698, -0.985511,
		33.064098, 35.547195, 36.764191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664589, 35.436638, 37.268845>,  <32.952705, 35.588284, 37.454048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664589, 35.436638, 37.268845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528511, 35.600735, 36.930386>,  <33.446865, 35.699192, 36.727310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528511, 35.600735, 36.930386>,  <33.664589, 35.436638, 37.268845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528511, 35.600735, 36.930386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867042, 0.485165, -0.113367,
		0.364014, -0.772214, -0.520748,
		-0.340193, 0.410243, -0.846150,
		33.426453, 35.723808, 36.676540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050537, 35.279633, 36.559082>,  <33.664589, 35.436638, 37.268845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050537, 35.279633, 36.559082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882420, 35.642570, 36.555462>,  <33.781548, 35.860332, 36.553291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882420, 35.642570, 36.555462>,  <34.050537, 35.279633, 36.559082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882420, 35.642570, 36.555462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854474, 0.392409, -0.340425,
		-0.305330, -0.150812, -0.940228,
		-0.420294, 0.907343, -0.009051,
		33.756332, 35.914772, 36.552746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086082, 34.691090, 36.899811>,  <34.050537, 35.279633, 36.559082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086082, 34.691090, 36.899811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453541, 34.762527, 37.040779>,  <34.674015, 34.805389, 37.125359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453541, 34.762527, 37.040779>,  <34.086082, 34.691090, 36.899811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453541, 34.762527, 37.040779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119155, -0.725230, 0.678117,
		0.376693, -0.664940, -0.644947,
		0.918643, 0.178593, 0.352420,
		34.729134, 34.816105, 37.146503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520363, 34.092175, 36.953594>,  <34.086082, 34.691090, 36.899811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520363, 34.092175, 36.953594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638821, 34.353943, 37.231884>,  <34.709896, 34.511005, 37.398857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638821, 34.353943, 37.231884>,  <34.520363, 34.092175, 36.953594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638821, 34.353943, 37.231884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057069, -0.714974, 0.696818,
		0.953436, -0.246065, -0.174390,
		0.296147, 0.654419, 0.695724,
		34.727665, 34.550270, 37.440601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157791, 33.770393, 37.320099>,  <34.520363, 34.092175, 36.953594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157791, 33.770393, 37.320099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974960, 34.046318, 37.544685>,  <34.865261, 34.211872, 37.679436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974960, 34.046318, 37.544685>,  <35.157791, 33.770393, 37.320099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974960, 34.046318, 37.544685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067452, -0.656332, 0.751451,
		0.886866, 0.305599, 0.346523,
		-0.457077, 0.689810, 0.561465,
		34.837837, 34.253262, 37.713123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413715, 33.502922, 37.914242>,  <35.157791, 33.770393, 37.320099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413715, 33.502922, 37.914242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124081, 33.762169, 38.008598>,  <34.950298, 33.917717, 38.065212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124081, 33.762169, 38.008598>,  <35.413715, 33.502922, 37.914242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124081, 33.762169, 38.008598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249272, -0.564812, 0.786670,
		0.643087, 0.510817, 0.570530,
		-0.724087, 0.648115, 0.235891,
		34.906853, 33.956604, 38.079365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470310, 33.591461, 38.600647>,  <35.413715, 33.502922, 37.914242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470310, 33.591461, 38.600647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099426, 33.729431, 38.542267>,  <34.876896, 33.812214, 38.507236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099426, 33.729431, 38.542267>,  <35.470310, 33.591461, 38.600647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099426, 33.729431, 38.542267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303369, -0.463119, 0.832760,
		0.219647, 0.816423, 0.534049,
		-0.927212, 0.344927, -0.145955,
		34.821262, 33.832909, 38.498482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271019, 33.792324, 39.182884>,  <35.470310, 33.591461, 38.600647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271019, 33.792324, 39.182884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923183, 33.728550, 38.995953>,  <34.714481, 33.690285, 38.883793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923183, 33.728550, 38.995953>,  <35.271019, 33.792324, 39.182884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923183, 33.728550, 38.995953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347702, -0.474293, 0.808795,
		-0.350600, 0.865810, 0.357005,
		-0.869588, -0.159433, -0.467331,
		34.662308, 33.680721, 38.855755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779594, 33.933277, 39.708637>,  <35.271019, 33.792324, 39.182884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779594, 33.933277, 39.708637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603333, 33.732628, 39.410858>,  <34.497578, 33.612236, 39.232193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603333, 33.732628, 39.410858>,  <34.779594, 33.933277, 39.708637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603333, 33.732628, 39.410858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513574, -0.539293, 0.667386,
		-0.736253, 0.676412, -0.019983,
		-0.440651, -0.501628, -0.744443,
		34.471138, 33.582138, 39.187527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074677, 33.988480, 39.791836>,  <34.779594, 33.933277, 39.708637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074677, 33.988480, 39.791836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118095, 33.640896, 39.598701>,  <34.144146, 33.432346, 39.482822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118095, 33.640896, 39.598701>,  <34.074677, 33.988480, 39.791836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118095, 33.640896, 39.598701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321694, -0.490271, 0.810029,
		-0.940601, 0.067399, -0.332756,
		0.108546, -0.868960, -0.482831,
		34.150658, 33.380207, 39.453854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579792, 33.565277, 40.166180>,  <34.074677, 33.988480, 39.791836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579792, 33.565277, 40.166180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791073, 33.291721, 39.964863>,  <33.917839, 33.127586, 39.844074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791073, 33.291721, 39.964863>,  <33.579792, 33.565277, 40.166180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791073, 33.291721, 39.964863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179522, -0.669261, 0.721014,
		-0.829928, -0.290486, -0.476275,
		0.528197, -0.683891, -0.503289,
		33.949532, 33.086555, 39.813877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269485, 32.933826, 40.364334>,  <33.579792, 33.565277, 40.166180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269485, 32.933826, 40.364334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638889, 32.852009, 40.234539>,  <33.860531, 32.802917, 40.156662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638889, 32.852009, 40.234539>,  <33.269485, 32.933826, 40.364334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638889, 32.852009, 40.234539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091691, -0.703709, 0.704547,
		-0.372457, -0.680408, -0.631127,
		0.923509, -0.204545, -0.324489,
		33.915943, 32.790646, 40.137192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350723, 32.198147, 40.105156>,  <33.269485, 32.933826, 40.364334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350723, 32.198147, 40.105156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706516, 32.343178, 40.216415>,  <33.919991, 32.430195, 40.283173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706516, 32.343178, 40.216415>,  <33.350723, 32.198147, 40.105156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706516, 32.343178, 40.216415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114179, -0.765698, 0.632985,
		0.442484, -0.531268, -0.722470,
		0.889478, 0.362577, 0.278150,
		33.973358, 32.451950, 40.299862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610611, 31.623137, 40.419582>,  <33.350723, 32.198147, 40.105156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610611, 31.623137, 40.419582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888908, 31.885120, 40.537540>,  <34.055889, 32.042309, 40.608315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888908, 31.885120, 40.537540>,  <33.610611, 31.623137, 40.419582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888908, 31.885120, 40.537540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487511, -0.732096, 0.475781,
		0.527511, -0.187257, -0.828653,
		0.695747, 0.654958, 0.294899,
		34.097633, 32.081608, 40.626011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257484, 31.230799, 40.443935>,  <33.610611, 31.623137, 40.419582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257484, 31.230799, 40.443935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311798, 31.552450, 40.675430>,  <34.344387, 31.745441, 40.814327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311798, 31.552450, 40.675430>,  <34.257484, 31.230799, 40.443935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311798, 31.552450, 40.675430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338555, -0.586644, 0.735683,
		0.931097, 0.096036, -0.351902,
		0.135789, 0.804131, 0.578736,
		34.352535, 31.793690, 40.849052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990547, 31.080875, 40.708477>,  <34.257484, 31.230799, 40.443935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990547, 31.080875, 40.708477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810219, 31.355814, 40.936272>,  <34.702023, 31.520777, 41.072948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810219, 31.355814, 40.936272>,  <34.990547, 31.080875, 40.708477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810219, 31.355814, 40.936272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250631, -0.514861, 0.819819,
		0.856707, 0.512321, 0.059839,
		-0.450819, 0.687347, 0.569488,
		34.674973, 31.562017, 41.107117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493214, 31.350788, 41.133247>,  <34.990547, 31.080875, 40.708477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493214, 31.350788, 41.133247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146969, 31.429155, 41.317566>,  <34.939224, 31.476175, 41.428158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146969, 31.429155, 41.317566>,  <35.493214, 31.350788, 41.133247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146969, 31.429155, 41.317566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304348, -0.524903, 0.794890,
		0.397608, 0.828308, 0.394734,
		-0.865610, 0.195918, 0.460799,
		34.887287, 31.487930, 41.455807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705818, 31.480812, 41.764301>,  <35.493214, 31.350788, 41.133247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705818, 31.480812, 41.764301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324932, 31.360872, 41.787563>,  <35.096401, 31.288908, 41.801521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324932, 31.360872, 41.787563>,  <35.705818, 31.480812, 41.764301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324932, 31.360872, 41.787563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239415, -0.614493, 0.751717,
		-0.189665, 0.729718, 0.656916,
		-0.952212, -0.299850, 0.058157,
		35.039268, 31.270918, 41.805012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621704, 31.454468, 42.490238>,  <35.705818, 31.480812, 41.764301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621704, 31.454468, 42.490238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275864, 31.272711, 42.404449>,  <35.068359, 31.163656, 42.352974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275864, 31.272711, 42.404449>,  <35.621704, 31.454468, 42.490238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275864, 31.272711, 42.404449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171046, -0.667516, 0.724683,
		-0.472456, 0.589874, 0.654854,
		-0.864597, -0.454391, -0.214476,
		35.016483, 31.136393, 42.340107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214951, 31.379778, 43.155453>,  <35.621704, 31.454468, 42.490238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214951, 31.379778, 43.155453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092373, 31.102242, 42.894783>,  <35.018826, 30.935720, 42.738380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092373, 31.102242, 42.894783>,  <35.214951, 31.379778, 43.155453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092373, 31.102242, 42.894783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226052, -0.718072, 0.658235,
		-0.924657, 0.054402, 0.376894,
		-0.306446, -0.693840, -0.651673,
		35.000439, 30.894089, 42.699280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879135, 30.979092, 43.616959>,  <35.214951, 31.379778, 43.155453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879135, 30.979092, 43.616959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923695, 30.760744, 43.284786>,  <34.950428, 30.629736, 43.085484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923695, 30.760744, 43.284786>,  <34.879135, 30.979092, 43.616959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923695, 30.760744, 43.284786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070123, -0.829232, 0.554488,
		-0.991299, -0.120000, -0.054094,
		0.111395, -0.545871, -0.830431,
		34.957111, 30.596983, 43.035656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348595, 30.546896, 43.679592>,  <34.879135, 30.979092, 43.616959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348595, 30.546896, 43.679592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638844, 30.394930, 43.450108>,  <34.812992, 30.303751, 43.312416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638844, 30.394930, 43.450108>,  <34.348595, 30.546896, 43.679592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638844, 30.394930, 43.450108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094486, -0.770854, 0.629965,
		-0.681579, -0.511322, -0.523450,
		0.725618, -0.379913, -0.573711,
		34.856529, 30.280956, 43.277992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247437, 29.795027, 43.662174>,  <34.348595, 30.546896, 43.679592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247437, 29.795027, 43.662174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631622, 29.865877, 43.576252>,  <34.862133, 29.908388, 43.524696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631622, 29.865877, 43.576252>,  <34.247437, 29.795027, 43.662174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631622, 29.865877, 43.576252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271201, -0.769723, 0.577907,
		-0.062979, -0.613313, -0.787325,
		0.960460, 0.177127, -0.214808,
		34.919762, 29.919016, 43.511810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458485, 29.065538, 43.381809>,  <34.247437, 29.795027, 43.662174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458485, 29.065538, 43.381809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813408, 29.239946, 43.441906>,  <35.026363, 29.344591, 43.477962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813408, 29.239946, 43.441906>,  <34.458485, 29.065538, 43.381809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813408, 29.239946, 43.441906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236014, -0.709201, 0.664328,
		0.396210, -0.554005, -0.732186,
		0.887308, 0.436019, 0.150240,
		35.079601, 29.370752, 43.486977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974903, 28.542763, 43.507584>,  <34.458485, 29.065538, 43.381809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974903, 28.542763, 43.507584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170166, 28.867161, 43.636578>,  <35.287323, 29.061800, 43.713974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170166, 28.867161, 43.636578>,  <34.974903, 28.542763, 43.507584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170166, 28.867161, 43.636578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469174, -0.555416, 0.686578,
		0.735923, -0.183854, -0.651625,
		0.488153, 0.810994, 0.322484,
		35.316612, 29.110458, 43.733322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733353, 28.370127, 43.526299>,  <34.974903, 28.542763, 43.507584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733353, 28.370127, 43.526299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670265, 28.664202, 43.790001>,  <35.632412, 28.840647, 43.948223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670265, 28.664202, 43.790001>,  <35.733353, 28.370127, 43.526299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670265, 28.664202, 43.790001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516299, -0.507701, 0.689692,
		0.841761, 0.449150, -0.299505,
		-0.157716, 0.735189, 0.659259,
		35.622952, 28.884758, 43.987778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385891, 28.580179, 43.819347>,  <35.733353, 28.370127, 43.526299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385891, 28.580179, 43.819347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106491, 28.686319, 44.085186>,  <35.938850, 28.750004, 44.244690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106491, 28.686319, 44.085186>,  <36.385891, 28.580179, 43.819347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106491, 28.686319, 44.085186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522062, -0.446240, 0.726857,
		0.489443, 0.854669, 0.173167,
		-0.698496, 0.265351, 0.664599,
		35.896942, 28.765924, 44.284565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963120, 29.039412, 44.071983>,  <36.385891, 28.580179, 43.819347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963120, 29.039412, 44.071983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352535, 28.948627, 44.061321>,  <37.586185, 28.894157, 44.054924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352535, 28.948627, 44.061321>,  <36.963120, 29.039412, 44.071983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352535, 28.948627, 44.061321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107855, 0.559176, -0.822003,
		0.201464, 0.797378, 0.568859,
		0.973540, -0.226958, -0.026653,
		37.644596, 28.880541, 44.053326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209183, 29.664162, 43.915462>,  <36.963120, 29.039412, 44.071983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209183, 29.664162, 43.915462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503452, 29.409143, 43.823967>,  <37.680016, 29.256132, 43.769070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503452, 29.409143, 43.823967>,  <37.209183, 29.664162, 43.915462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503452, 29.409143, 43.823967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133664, 0.467709, -0.873718,
		0.664017, 0.612197, 0.429298,
		0.735674, -0.637545, -0.228737,
		37.724155, 29.217880, 43.755344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833485, 30.089893, 43.745060>,  <37.209183, 29.664162, 43.915462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833485, 30.089893, 43.745060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908787, 29.737776, 43.570869>,  <37.953968, 29.526505, 43.466354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908787, 29.737776, 43.570869>,  <37.833485, 30.089893, 43.745060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908787, 29.737776, 43.570869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254174, 0.471970, -0.844180,
		0.948660, 0.048232, 0.312598,
		0.188253, -0.880294, -0.435480,
		37.965263, 29.473688, 43.440224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407597, 30.170919, 43.350945>,  <37.833485, 30.089893, 43.745060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407597, 30.170919, 43.350945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221615, 29.863520, 43.175114>,  <38.110027, 29.679079, 43.069614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221615, 29.863520, 43.175114>,  <38.407597, 30.170919, 43.350945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221615, 29.863520, 43.175114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094260, 0.450715, -0.887677,
		0.880305, -0.454161, -0.137121,
		-0.464951, -0.768502, -0.439575,
		38.082130, 29.632969, 43.043240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705692, 30.087404, 42.671852>,  <38.407597, 30.170919, 43.350945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705692, 30.087404, 42.671852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344898, 29.914740, 42.667912>,  <38.128422, 29.811140, 42.665546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344898, 29.914740, 42.667912>,  <38.705692, 30.087404, 42.671852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344898, 29.914740, 42.667912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014281, 0.052625, -0.998512,
		0.431541, -0.900498, -0.053631,
		-0.901980, -0.431664, -0.009850,
		38.074303, 29.785240, 42.664955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
