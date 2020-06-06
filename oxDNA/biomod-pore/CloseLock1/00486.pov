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
	<24.285847, 35.182556, 35.340595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.510099, 34.912914, 35.148232>,  <24.644651, 34.751129, 35.032814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.510099, 34.912914, 35.148232>,  <24.285847, 35.182556, 35.340595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.510099, 34.912914, 35.148232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431434, 0.733500, -0.525207,
		0.706792, 0.086967, 0.702056,
		0.560634, -0.674103, -0.480911,
		24.678289, 34.710682, 35.003960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.106358, 35.214523, 35.405148>,  <24.285847, 35.182556, 35.340595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.106358, 35.214523, 35.405148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.000782, 35.058380, 35.052338>,  <24.937437, 34.964695, 34.840652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.000782, 35.058380, 35.052338>,  <25.106358, 35.214523, 35.405148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.000782, 35.058380, 35.052338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490322, 0.733177, -0.471207,
		0.830615, -0.556844, -0.002115,
		-0.263939, -0.390354, -0.882020,
		24.921600, 34.941273, 34.787731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.656000, 35.175156, 34.918404>,  <25.106358, 35.214523, 35.405148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.656000, 35.175156, 34.918404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.331312, 35.215443, 34.688286>,  <25.136499, 35.239613, 34.550213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.331312, 35.215443, 34.688286>,  <25.656000, 35.175156, 34.918404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.331312, 35.215443, 34.688286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488148, 0.657798, -0.573597,
		0.320660, -0.746430, -0.583111,
		-0.811720, 0.100715, -0.575298,
		25.087797, 35.245659, 34.515697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796913, 35.098972, 34.252377>,  <25.656000, 35.175156, 34.918404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796913, 35.098972, 34.252377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501165, 35.366211, 34.285801>,  <25.323717, 35.526554, 34.305855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501165, 35.366211, 34.285801>,  <25.796913, 35.098972, 34.252377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.501165, 35.366211, 34.285801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524853, 0.649634, -0.550005,
		-0.421738, -0.362801, -0.830971,
		-0.739369, 0.668096, 0.083558,
		25.279354, 35.566639, 34.310867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870102, 35.025887, 33.553856>,  <25.796913, 35.098972, 34.252377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870102, 35.025887, 33.553856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691851, 34.782825, 33.816814>,  <25.584900, 34.636990, 33.974590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691851, 34.782825, 33.816814>,  <25.870102, 35.025887, 33.553856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691851, 34.782825, 33.816814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712733, -0.685168, -0.150188,
		0.541690, 0.401619, 0.738427,
		-0.445628, -0.607656, 0.657396,
		25.558163, 34.600529, 34.014034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741579, 34.895733, 33.390087>,  <25.870102, 35.025887, 33.553856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741579, 34.895733, 33.390087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058794, 34.863060, 33.148617>,  <27.249123, 34.843456, 33.003735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058794, 34.863060, 33.148617>,  <26.741579, 34.895733, 33.390087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058794, 34.863060, 33.148617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075966, -0.969975, 0.231036,
		-0.604420, -0.229078, -0.763020,
		0.793036, -0.081679, -0.603675,
		27.296705, 34.838558, 32.967514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661293, 34.314724, 32.979053>,  <26.741579, 34.895733, 33.390087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661293, 34.314724, 32.979053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047318, 34.408154, 33.026546>,  <27.278933, 34.464211, 33.055042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047318, 34.408154, 33.026546>,  <26.661293, 34.314724, 32.979053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047318, 34.408154, 33.026546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198996, -0.948156, 0.247793,
		0.170456, -0.215508, -0.961510,
		0.965062, 0.233575, 0.118734,
		27.336836, 34.478226, 33.062168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117771, 33.795925, 32.772278>,  <26.661293, 34.314724, 32.979053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117771, 33.795925, 32.772278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385666, 33.999737, 32.988365>,  <27.546402, 34.122025, 33.118019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385666, 33.999737, 32.988365>,  <27.117771, 33.795925, 32.772278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385666, 33.999737, 32.988365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378587, -0.860108, 0.341886,
		0.638846, -0.024454, -0.768946,
		0.669737, 0.509525, 0.540219,
		27.586588, 34.152596, 33.150433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786922, 33.633831, 32.581154>,  <27.117771, 33.795925, 32.772278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786922, 33.633831, 32.581154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804770, 33.770748, 32.956566>,  <27.815477, 33.852898, 33.181812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804770, 33.770748, 32.956566>,  <27.786922, 33.633831, 32.581154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804770, 33.770748, 32.956566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575247, -0.776889, 0.255997,
		0.816762, 0.528465, -0.231568,
		0.044618, 0.342297, 0.938532,
		27.818155, 33.873436, 33.238125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458662, 33.467888, 32.881664>,  <27.786922, 33.633831, 32.581154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458662, 33.467888, 32.881664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253485, 33.537582, 33.217884>,  <28.130379, 33.579399, 33.419617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253485, 33.537582, 33.217884>,  <28.458662, 33.467888, 32.881664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253485, 33.537582, 33.217884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471858, -0.760757, 0.445644,
		0.717103, 0.625213, 0.308013,
		-0.512945, 0.174234, 0.840553,
		28.099602, 33.589851, 33.470051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939220, 33.490486, 33.400288>,  <28.458662, 33.467888, 32.881664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939220, 33.490486, 33.400288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586391, 33.391979, 33.560936>,  <28.374695, 33.332874, 33.657326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586391, 33.391979, 33.560936>,  <28.939220, 33.490486, 33.400288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586391, 33.391979, 33.560936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435634, -0.750933, 0.496309,
		0.179369, 0.612741, 0.769659,
		-0.882071, -0.246267, 0.401625,
		28.321770, 33.318100, 33.681423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135475, 33.421089, 33.972778>,  <28.939220, 33.490486, 33.400288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135475, 33.421089, 33.972778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776253, 33.246353, 33.993420>,  <28.560719, 33.141510, 34.005802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776253, 33.246353, 33.993420>,  <29.135475, 33.421089, 33.972778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776253, 33.246353, 33.993420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417828, -0.810466, 0.410567,
		-0.137535, 0.390272, 0.910369,
		-0.898056, -0.436845, 0.051599,
		28.506836, 33.115299, 34.008900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020647, 33.176437, 34.715515>,  <29.135475, 33.421089, 33.972778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020647, 33.176437, 34.715515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780880, 32.963600, 34.476326>,  <28.637020, 32.835896, 34.332813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780880, 32.963600, 34.476326>,  <29.020647, 33.176437, 34.715515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780880, 32.963600, 34.476326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208262, -0.825004, 0.525352,
		-0.772868, 0.190370, 0.605339,
		-0.599418, -0.532097, -0.597972,
		28.601055, 32.803970, 34.296936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698650, 32.800003, 35.231941>,  <29.020647, 33.176437, 34.715515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698650, 32.800003, 35.231941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635794, 32.609741, 34.885746>,  <28.598080, 32.495586, 34.678028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635794, 32.609741, 34.885746>,  <28.698650, 32.800003, 35.231941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635794, 32.609741, 34.885746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071227, -0.879548, 0.470449,
		-0.985004, 0.012281, 0.172091,
		-0.157140, -0.475652, -0.865484,
		28.588652, 32.467045, 34.626102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095173, 32.364677, 35.327099>,  <28.698650, 32.800003, 35.231941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095173, 32.364677, 35.327099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316380, 32.217205, 35.028236>,  <28.449104, 32.128723, 34.848919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316380, 32.217205, 35.028236>,  <28.095173, 32.364677, 35.327099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316380, 32.217205, 35.028236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121353, -0.851562, 0.510015,
		-0.824282, -0.372718, -0.426192,
		0.553021, -0.368677, -0.747158,
		28.482285, 32.106602, 34.804089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937601, 31.652349, 35.464897>,  <28.095173, 32.364677, 35.327099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937601, 31.652349, 35.464897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224678, 31.654303, 35.186359>,  <28.396923, 31.655474, 35.019238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224678, 31.654303, 35.186359>,  <27.937601, 31.652349, 35.464897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224678, 31.654303, 35.186359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344705, -0.871359, 0.349160,
		-0.605061, -0.490622, -0.627049,
		0.717691, 0.004883, -0.696345,
		28.439985, 31.655767, 34.977455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940756, 31.015348, 35.035824>,  <27.937601, 31.652349, 35.464897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940756, 31.015348, 35.035824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309343, 31.170681, 35.039665>,  <28.530497, 31.263882, 35.041969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309343, 31.170681, 35.039665>,  <27.940756, 31.015348, 35.035824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309343, 31.170681, 35.039665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378689, -0.903542, 0.200518,
		0.086542, -0.181136, -0.979643,
		0.921469, 0.388333, 0.009600,
		28.585785, 31.287180, 35.042545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261539, 30.474434, 34.644707>,  <27.940756, 31.015348, 35.035824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261539, 30.474434, 34.644707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.535074, 30.683189, 34.848667>,  <28.699196, 30.808443, 34.971043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.535074, 30.683189, 34.848667>,  <28.261539, 30.474434, 34.644707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535074, 30.683189, 34.848667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488826, -0.846519, 0.210845,
		0.541680, 0.105071, -0.833992,
		0.683836, 0.521887, 0.509904,
		28.740225, 30.839756, 35.001637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973551, 30.319298, 34.239090>,  <28.261539, 30.474434, 34.644707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973551, 30.319298, 34.239090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086851, 30.446053, 34.601162>,  <29.154831, 30.522104, 34.818405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086851, 30.446053, 34.601162>,  <28.973551, 30.319298, 34.239090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086851, 30.446053, 34.601162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598228, -0.796086, 0.091495,
		0.749595, 0.515588, -0.415062,
		0.283251, 0.316886, 0.905181,
		29.171827, 30.541119, 34.872715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769032, 30.309835, 34.225563>,  <28.973551, 30.319298, 34.239090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769032, 30.309835, 34.225563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657688, 30.305815, 34.609734>,  <29.590881, 30.303402, 34.840237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657688, 30.305815, 34.609734>,  <29.769032, 30.309835, 34.225563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657688, 30.305815, 34.609734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594639, -0.787067, 0.164106,
		0.754269, 0.616786, 0.225063,
		-0.278358, -0.010051, 0.960425,
		29.574181, 30.302799, 34.897861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346497, 30.426985, 34.525696>,  <29.769032, 30.309835, 34.225563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346497, 30.426985, 34.525696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094486, 30.259554, 34.787338>,  <29.943279, 30.159096, 34.944324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094486, 30.259554, 34.787338>,  <30.346497, 30.426985, 34.525696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094486, 30.259554, 34.787338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637838, -0.759391, 0.128405,
		0.442977, 0.498114, 0.745422,
		-0.630027, -0.418578, 0.654109,
		29.905478, 30.133980, 34.983570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779827, 30.272863, 35.237213>,  <30.346497, 30.426985, 34.525696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779827, 30.272863, 35.237213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461082, 30.031380, 35.227848>,  <30.269836, 29.886490, 35.222229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461082, 30.031380, 35.227848>,  <30.779827, 30.272863, 35.237213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461082, 30.031380, 35.227848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588906, -0.784808, 0.193045,
		-0.134915, 0.140044, 0.980911,
		-0.796861, -0.603709, -0.023410,
		30.222025, 29.850267, 35.220825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935631, 29.822861, 35.796932>,  <30.779827, 30.272863, 35.237213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935631, 29.822861, 35.796932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689880, 29.627409, 35.549133>,  <30.542431, 29.510138, 35.400452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689880, 29.627409, 35.549133>,  <30.935631, 29.822861, 35.796932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689880, 29.627409, 35.549133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568384, -0.818664, 0.082036,
		-0.547249, -0.301714, 0.780697,
		-0.614377, -0.488630, -0.619502,
		30.505568, 29.480820, 35.363281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939968, 29.171814, 36.000496>,  <30.935631, 29.822861, 35.796932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939968, 29.171814, 36.000496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780928, 29.112940, 35.638226>,  <30.685503, 29.077616, 35.420864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780928, 29.112940, 35.638226>,  <30.939968, 29.171814, 36.000496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780928, 29.112940, 35.638226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521933, -0.848086, -0.091307,
		-0.754652, -0.509006, 0.414021,
		-0.397601, -0.147187, -0.905676,
		30.661648, 29.068785, 35.366524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940060, 28.378160, 35.867676>,  <30.939968, 29.171814, 36.000496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940060, 28.378160, 35.867676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926104, 28.561897, 35.512646>,  <30.917730, 28.672140, 35.299629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926104, 28.561897, 35.512646>,  <30.940060, 28.378160, 35.867676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926104, 28.561897, 35.512646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540475, -0.738362, -0.403370,
		-0.840636, -0.493786, -0.222501,
		-0.034892, 0.459344, -0.887573,
		30.915636, 28.699701, 35.246372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496103, 28.050381, 35.359798>,  <30.940060, 28.378160, 35.867676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496103, 28.050381, 35.359798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843712, 28.223864, 35.264553>,  <31.052277, 28.327953, 35.207405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843712, 28.223864, 35.264553>,  <30.496103, 28.050381, 35.359798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843712, 28.223864, 35.264553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353645, -0.881056, -0.314126,
		-0.346027, 0.188777, -0.919037,
		0.869023, 0.433709, -0.238109,
		31.104418, 28.353975, 35.193119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592237, 27.999311, 34.665428>,  <30.496103, 28.050381, 35.359798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592237, 27.999311, 34.665428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944426, 28.028618, 34.852791>,  <31.155739, 28.046202, 34.965210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944426, 28.028618, 34.852791>,  <30.592237, 27.999311, 34.665428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944426, 28.028618, 34.852791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251205, -0.909997, -0.329851,
		0.402084, 0.408090, -0.819629,
		0.880468, 0.073267, 0.468409,
		31.208567, 28.050598, 34.993313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977123, 27.603699, 34.224266>,  <30.592237, 27.999311, 34.665428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977123, 27.603699, 34.224266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147692, 27.597847, 34.586029>,  <31.250032, 27.594336, 34.803085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147692, 27.597847, 34.586029>,  <30.977123, 27.603699, 34.224266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147692, 27.597847, 34.586029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381526, -0.903663, -0.194503,
		0.820124, 0.427995, -0.379760,
		0.426421, -0.014628, 0.904406,
		31.275618, 27.593458, 34.857349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621778, 27.347176, 34.126106>,  <30.977123, 27.603699, 34.224266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621778, 27.347176, 34.126106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557903, 27.269384, 34.513233>,  <31.519579, 27.222710, 34.745510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557903, 27.269384, 34.513233>,  <31.621778, 27.347176, 34.126106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557903, 27.269384, 34.513233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315573, -0.939014, -0.136622,
		0.935368, 0.283602, 0.211321,
		-0.159688, -0.194479, 0.967821,
		31.509996, 27.211040, 34.803581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193924, 27.196972, 34.680969>,  <31.621778, 27.347176, 34.126106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193924, 27.196972, 34.680969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849075, 27.009090, 34.756996>,  <31.642166, 26.896360, 34.802612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849075, 27.009090, 34.756996>,  <32.193924, 27.196972, 34.680969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849075, 27.009090, 34.756996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323229, -0.798671, -0.507590,
		0.390222, -0.376167, 0.840372,
		-0.862119, -0.469706, 0.190071,
		31.590439, 26.868179, 34.814018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257587, 26.491009, 34.849072>,  <32.193924, 27.196972, 34.680969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257587, 26.491009, 34.849072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868017, 26.482986, 34.758682>,  <31.634275, 26.478174, 34.704449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868017, 26.482986, 34.758682>,  <32.257587, 26.491009, 34.849072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868017, 26.482986, 34.758682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095074, -0.940474, -0.326298,
		-0.205978, -0.339274, 0.917860,
		-0.973927, -0.020054, -0.225973,
		31.575840, 26.476971, 34.690891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659695, 25.878450, 34.437340>,  <32.257587, 26.491009, 34.849072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659695, 25.878450, 34.437340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665146, 25.557995, 34.198009>,  <32.668419, 25.365721, 34.054413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665146, 25.557995, 34.198009>,  <32.659695, 25.878450, 34.437340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665146, 25.557995, 34.198009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843855, 0.311781, -0.436693,
		0.536398, 0.510849, -0.671796,
		0.013631, -0.801140, -0.598322,
		32.669235, 25.317654, 34.018513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636463, 26.214125, 33.735577>,  <32.659695, 25.878450, 34.437340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636463, 26.214125, 33.735577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542549, 25.829672, 33.677467>,  <32.486202, 25.599001, 33.642601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542549, 25.829672, 33.677467>,  <32.636463, 26.214125, 33.735577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542549, 25.829672, 33.677467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624958, 0.263718, -0.734766,
		0.744517, -0.081724, -0.662583,
		-0.234783, -0.961132, -0.145269,
		32.472115, 25.541332, 33.633888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895802, 25.867222, 33.030243>,  <32.636463, 26.214125, 33.735577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895802, 25.867222, 33.030243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542698, 25.752167, 33.178841>,  <32.330837, 25.683134, 33.267998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542698, 25.752167, 33.178841>,  <32.895802, 25.867222, 33.030243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542698, 25.752167, 33.178841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459681, 0.365303, -0.809473,
		0.097128, -0.885335, -0.454695,
		-0.882757, -0.287637, 0.371490,
		32.277870, 25.665874, 33.290287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615482, 25.548500, 32.539513>,  <32.895802, 25.867222, 33.030243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615482, 25.548500, 32.539513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327545, 25.687847, 32.779671>,  <32.154785, 25.771456, 32.923763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327545, 25.687847, 32.779671>,  <32.615482, 25.548500, 32.539513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327545, 25.687847, 32.779671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409800, 0.484844, -0.772651,
		-0.560265, -0.802225, -0.206248,
		-0.719838, 0.348369, 0.600393,
		32.111595, 25.792358, 32.959789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817101, 26.235847, 32.380840>,  <32.615482, 25.548500, 32.539513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817101, 26.235847, 32.380840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527031, 26.142355, 32.121769>,  <32.352989, 26.086260, 31.966326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527031, 26.142355, 32.121769>,  <32.817101, 26.235847, 32.380840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527031, 26.142355, 32.121769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309247, 0.950977, 0.003067,
		0.615209, 0.202517, -0.761908,
		-0.725178, -0.233732, -0.647678,
		32.309479, 26.072235, 31.927465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810009, 26.695555, 31.752182>,  <32.817101, 26.235847, 32.380840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810009, 26.695555, 31.752182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442734, 26.537540, 31.764019>,  <32.222370, 26.442732, 31.771122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442734, 26.537540, 31.764019>,  <32.810009, 26.695555, 31.752182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442734, 26.537540, 31.764019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395364, 0.909140, -0.130967,
		0.024832, -0.131952, -0.990945,
		-0.918189, -0.395036, 0.029593,
		32.167278, 26.419029, 31.772898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488968, 26.992281, 31.195293>,  <32.810009, 26.695555, 31.752182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488968, 26.992281, 31.195293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197464, 26.871401, 31.441088>,  <32.022564, 26.798874, 31.588564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197464, 26.871401, 31.441088>,  <32.488968, 26.992281, 31.195293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197464, 26.871401, 31.441088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535065, 0.811302, -0.235574,
		-0.427342, -0.500465, -0.752937,
		-0.728756, -0.302199, 0.614484,
		31.978838, 26.780741, 31.625433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880976, 26.966427, 30.802553>,  <32.488968, 26.992281, 31.195293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880976, 26.966427, 30.802553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824701, 27.048365, 31.190006>,  <31.790937, 27.097528, 31.422478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824701, 27.048365, 31.190006>,  <31.880976, 26.966427, 30.802553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824701, 27.048365, 31.190006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501117, 0.829049, -0.248110,
		-0.853867, -0.520303, -0.013982,
		-0.140684, 0.204846, 0.968631,
		31.782495, 27.109819, 31.480595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233437, 27.309830, 30.769180>,  <31.880976, 26.966427, 30.802553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233437, 27.309830, 30.769180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355318, 27.396074, 31.140268>,  <31.428448, 27.447821, 31.362921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355318, 27.396074, 31.140268>,  <31.233437, 27.309830, 30.769180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355318, 27.396074, 31.140268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587998, 0.808846, 0.005142,
		-0.749275, -0.547065, 0.373237,
		0.304705, 0.215610, 0.927722,
		31.446730, 27.460758, 31.418585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651505, 27.456947, 31.169783>,  <31.233437, 27.309830, 30.769180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651505, 27.456947, 31.169783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943680, 27.636621, 31.375578>,  <31.118984, 27.744425, 31.499054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943680, 27.636621, 31.375578>,  <30.651505, 27.456947, 31.169783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943680, 27.636621, 31.375578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599683, 0.782325, 0.168370,
		-0.326866, -0.431512, 0.840807,
		0.730438, 0.449183, 0.514486,
		31.162811, 27.771376, 31.529924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342113, 27.698986, 31.810516>,  <30.651505, 27.456947, 31.169783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342113, 27.698986, 31.810516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671488, 27.924183, 31.782251>,  <30.869112, 28.059301, 31.765293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671488, 27.924183, 31.782251>,  <30.342113, 27.698986, 31.810516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671488, 27.924183, 31.782251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531672, 0.809064, 0.250481,
		0.198189, -0.168686, 0.965539,
		0.823436, 0.562992, -0.070662,
		30.918518, 28.093081, 31.761053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425688, 28.082161, 32.460163>,  <30.342113, 27.698986, 31.810516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425688, 28.082161, 32.460163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652699, 28.291883, 32.206230>,  <30.788904, 28.417717, 32.053871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652699, 28.291883, 32.206230>,  <30.425688, 28.082161, 32.460163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652699, 28.291883, 32.206230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450174, 0.843178, 0.293928,
		0.689388, 0.118975, 0.714555,
		0.567527, 0.524305, -0.634836,
		30.822956, 28.449175, 32.015778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661453, 28.682114, 32.860619>,  <30.425688, 28.082161, 32.460163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661453, 28.682114, 32.860619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703102, 28.775766, 32.473972>,  <30.728090, 28.831957, 32.241985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703102, 28.775766, 32.473972>,  <30.661453, 28.682114, 32.860619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703102, 28.775766, 32.473972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377062, 0.908633, 0.179470,
		0.920317, 0.345787, 0.182889,
		0.104120, 0.234130, -0.966614,
		30.734339, 28.846004, 32.183987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032600, 29.299391, 32.854874>,  <30.661453, 28.682114, 32.860619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032600, 29.299391, 32.854874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851887, 29.254425, 32.500866>,  <30.743458, 29.227446, 32.288464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851887, 29.254425, 32.500866>,  <31.032600, 29.299391, 32.854874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851887, 29.254425, 32.500866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387792, 0.918151, 0.081336,
		0.803435, 0.379949, -0.458400,
		-0.451785, -0.112416, -0.885016,
		30.716351, 29.220699, 32.235359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250080, 29.819254, 32.465252>,  <31.032600, 29.299391, 32.854874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250080, 29.819254, 32.465252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923523, 29.732866, 32.251015>,  <30.727589, 29.681034, 32.122471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923523, 29.732866, 32.251015>,  <31.250080, 29.819254, 32.465252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923523, 29.732866, 32.251015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213290, 0.974627, -0.067893,
		0.536668, 0.058810, -0.841741,
		-0.816391, -0.215971, -0.535595,
		30.678606, 29.668076, 32.090336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300467, 30.225719, 31.969524>,  <31.250080, 29.819254, 32.465252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300467, 30.225719, 31.969524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913322, 30.125525, 31.978502>,  <30.681036, 30.065407, 31.983889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913322, 30.125525, 31.978502>,  <31.300467, 30.225719, 31.969524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913322, 30.125525, 31.978502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249615, 0.967685, 0.035740,
		-0.030671, 0.028989, -0.999109,
		-0.967859, -0.250489, 0.022444,
		30.622965, 30.050377, 31.985235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074621, 30.696533, 31.689392>,  <31.300467, 30.225719, 31.969524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074621, 30.696533, 31.689392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735163, 30.558065, 31.849377>,  <30.531488, 30.474985, 31.945368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735163, 30.558065, 31.849377>,  <31.074621, 30.696533, 31.689392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735163, 30.558065, 31.849377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300463, 0.937766, 0.174118,
		-0.435344, 0.027591, -0.899841,
		-0.848645, -0.346171, 0.399960,
		30.480570, 30.454214, 31.969364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550573, 31.184671, 31.429956>,  <31.074621, 30.696533, 31.689392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550573, 31.184671, 31.429956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357414, 31.001135, 31.728292>,  <30.241518, 30.891014, 31.907293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357414, 31.001135, 31.728292>,  <30.550573, 31.184671, 31.429956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357414, 31.001135, 31.728292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310067, 0.886142, 0.344399,
		-0.818943, -0.064950, -0.570188,
		-0.482898, -0.458840, 0.745839,
		30.212545, 30.863483, 31.952044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032112, 31.498539, 31.358116>,  <30.550573, 31.184671, 31.429956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032112, 31.498539, 31.358116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041895, 31.369667, 31.736662>,  <30.047766, 31.292345, 31.963789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041895, 31.369667, 31.736662>,  <30.032112, 31.498539, 31.358116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041895, 31.369667, 31.736662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306969, 0.898493, 0.313815,
		-0.951405, -0.298179, -0.076922,
		0.024459, -0.322178, 0.946363,
		30.049232, 31.273014, 32.020573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418617, 31.717142, 31.574659>,  <30.032112, 31.498539, 31.358116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418617, 31.717142, 31.574659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660023, 31.672817, 31.890505>,  <29.804867, 31.646223, 32.080013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660023, 31.672817, 31.890505>,  <29.418617, 31.717142, 31.574659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660023, 31.672817, 31.890505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220012, 0.928708, 0.298490,
		-0.766398, -0.353867, 0.536108,
		0.603513, -0.110812, 0.789615,
		29.841076, 31.639574, 32.127388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082804, 31.811953, 32.210510>,  <29.418617, 31.717142, 31.574659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082804, 31.811953, 32.210510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449656, 31.881792, 32.353840>,  <29.669765, 31.923695, 32.439838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449656, 31.881792, 32.353840>,  <29.082804, 31.811953, 32.210510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449656, 31.881792, 32.353840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312121, 0.873689, 0.373161,
		-0.247908, -0.454075, 0.855779,
		0.917127, 0.174597, 0.358321,
		29.724794, 31.934172, 32.461334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940897, 32.323109, 32.706860>,  <29.082804, 31.811953, 32.210510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940897, 32.323109, 32.706860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339180, 32.329647, 32.670418>,  <29.578150, 32.333569, 32.648552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339180, 32.329647, 32.670418>,  <28.940897, 32.323109, 32.706860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339180, 32.329647, 32.670418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020779, 0.919706, 0.392057,
		0.090200, -0.392267, 0.915418,
		0.995707, 0.016342, -0.091108,
		29.637892, 32.334549, 32.643085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249512, 32.417484, 33.402534>,  <28.940897, 32.323109, 32.706860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249512, 32.417484, 33.402534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506723, 32.552349, 33.127483>,  <29.661051, 32.633266, 32.962452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506723, 32.552349, 33.127483>,  <29.249512, 32.417484, 33.402534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506723, 32.552349, 33.127483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044251, 0.880019, 0.472872,
		0.764563, -0.334499, 0.550958,
		0.643028, 0.337160, -0.687632,
		29.699633, 32.653496, 32.921192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842937, 32.917130, 33.729404>,  <29.249512, 32.417484, 33.402534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842937, 32.917130, 33.729404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867983, 33.016602, 33.342781>,  <29.883011, 33.076286, 33.110806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867983, 33.016602, 33.342781>,  <29.842937, 32.917130, 33.729404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867983, 33.016602, 33.342781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189152, 0.947950, 0.256149,
		0.979949, -0.198866, 0.012318,
		0.062616, 0.248684, -0.966559,
		29.886768, 33.091206, 33.052814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351795, 33.425381, 33.797207>,  <29.842937, 32.917130, 33.729404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351795, 33.425381, 33.797207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165720, 33.473320, 33.446381>,  <30.054075, 33.502083, 33.235886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165720, 33.473320, 33.446381>,  <30.351795, 33.425381, 33.797207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165720, 33.473320, 33.446381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208893, 0.977673, 0.022806,
		0.860212, -0.172603, -0.479837,
		-0.465187, 0.119852, -0.877061,
		30.026163, 33.509277, 33.183262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711773, 33.861862, 33.509304>,  <30.351795, 33.425381, 33.797207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711773, 33.861862, 33.509304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372749, 33.893787, 33.299438>,  <30.169334, 33.912941, 33.173519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372749, 33.893787, 33.299438>,  <30.711773, 33.861862, 33.509304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372749, 33.893787, 33.299438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110457, 0.993506, -0.027302,
		0.519076, -0.081093, -0.850872,
		-0.847561, 0.079813, -0.524663,
		30.118481, 33.917732, 33.142040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926159, 34.339844, 32.938644>,  <30.711773, 33.861862, 33.509304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926159, 34.339844, 32.938644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529465, 34.320702, 32.986259>,  <30.291449, 34.309216, 33.014828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529465, 34.320702, 32.986259>,  <30.926159, 34.339844, 32.938644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529465, 34.320702, 32.986259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046197, 0.998793, 0.016680,
		-0.119689, 0.011044, -0.992750,
		-0.991736, -0.047859, 0.119034,
		30.231943, 34.306343, 33.021969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585382, 34.076626, 33.003849>,  <30.926159, 34.339844, 32.938644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585382, 34.076626, 33.003849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701376, 34.448410, 33.095081>,  <31.770971, 34.671478, 33.149818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701376, 34.448410, 33.095081>,  <31.585382, 34.076626, 33.003849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701376, 34.448410, 33.095081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170292, -0.184403, 0.967986,
		0.941759, -0.319540, 0.104805,
		0.289984, 0.929457, 0.228078,
		31.788370, 34.727245, 33.163506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850883, 33.848282, 33.714890>,  <31.585382, 34.076626, 33.003849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850883, 33.848282, 33.714890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912279, 34.241962, 33.679611>,  <31.949118, 34.478172, 33.658443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912279, 34.241962, 33.679611>,  <31.850883, 33.848282, 33.714890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912279, 34.241962, 33.679611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026867, 0.093380, 0.995268,
		0.987785, -0.150395, 0.040776,
		0.153491, 0.984206, -0.088198,
		31.958326, 34.537224, 33.653152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441689, 34.217701, 34.229370>,  <31.850883, 33.848282, 33.714890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441689, 34.217701, 34.229370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144917, 34.457726, 34.109726>,  <31.966852, 34.601742, 34.037941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144917, 34.457726, 34.109726>,  <32.441689, 34.217701, 34.229370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144917, 34.457726, 34.109726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299288, 0.102800, 0.948609,
		0.599970, 0.793322, 0.103320,
		-0.741931, 0.600060, -0.299109,
		31.922337, 34.637745, 34.019993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568432, 34.784351, 34.602074>,  <32.441689, 34.217701, 34.229370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568432, 34.784351, 34.602074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173580, 34.814777, 34.545815>,  <31.936668, 34.833035, 34.512058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173580, 34.814777, 34.545815>,  <32.568432, 34.784351, 34.602074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173580, 34.814777, 34.545815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121671, 0.213432, 0.969352,
		0.103755, 0.973992, -0.201430,
		-0.987133, 0.076067, -0.140651,
		31.877439, 34.837597, 34.503620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289829, 35.441910, 34.767368>,  <32.568432, 34.784351, 34.602074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289829, 35.441910, 34.767368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028095, 35.145794, 34.829098>,  <31.871054, 34.968124, 34.866135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028095, 35.145794, 34.829098>,  <32.289829, 35.441910, 34.767368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028095, 35.145794, 34.829098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042627, 0.167644, 0.984926,
		-0.755002, 0.651051, -0.078139,
		-0.654336, -0.740290, 0.154324,
		31.831795, 34.923706, 34.875397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660189, 35.567406, 35.057415>,  <32.289829, 35.441910, 34.767368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660189, 35.567406, 35.057415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750566, 35.192516, 35.163666>,  <31.804792, 34.967583, 35.227417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750566, 35.192516, 35.163666>,  <31.660189, 35.567406, 35.057415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750566, 35.192516, 35.163666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012907, 0.275538, 0.961204,
		-0.974055, -0.213750, 0.074353,
		0.225944, -0.937225, 0.265630,
		31.818350, 34.911350, 35.243355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235680, 35.462772, 35.638130>,  <31.660189, 35.567406, 35.057415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235680, 35.462772, 35.638130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513494, 35.176258, 35.665142>,  <31.680183, 35.004349, 35.681347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513494, 35.176258, 35.665142>,  <31.235680, 35.462772, 35.638130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513494, 35.176258, 35.665142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007057, 0.100634, 0.994898,
		-0.719424, -0.690516, 0.074949,
		0.694535, -0.716282, 0.067525,
		31.721855, 34.961372, 35.685398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933876, 34.909569, 36.003666>,  <31.235680, 35.462772, 35.638130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933876, 34.909569, 36.003666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327559, 34.844017, 36.030434>,  <31.563768, 34.804688, 36.046494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327559, 34.844017, 36.030434>,  <30.933876, 34.909569, 36.003666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327559, 34.844017, 36.030434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096521, -0.179964, 0.978926,
		-0.148378, -0.969927, -0.192939,
		0.984209, -0.163874, 0.066916,
		31.622822, 34.794853, 36.050507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986965, 34.314159, 36.502319>,  <30.933876, 34.909569, 36.003666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986965, 34.314159, 36.502319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329845, 34.518688, 36.477802>,  <31.535574, 34.641403, 36.463093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329845, 34.518688, 36.477802>,  <30.986965, 34.314159, 36.502319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329845, 34.518688, 36.477802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075719, -0.007424, 0.997102,
		0.509383, -0.859358, -0.045081,
		0.857202, 0.511320, -0.061288,
		31.587006, 34.672085, 36.459415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423767, 33.981541, 36.944607>,  <30.986965, 34.314159, 36.502319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423767, 33.981541, 36.944607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617043, 34.325577, 36.879150>,  <31.733007, 34.531998, 36.839874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617043, 34.325577, 36.879150>,  <31.423767, 33.981541, 36.944607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617043, 34.325577, 36.879150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401233, -0.051405, 0.914532,
		0.778164, -0.507553, -0.369933,
		0.483190, 0.860086, -0.163645,
		31.761999, 34.583603, 36.830055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126541, 33.977005, 37.194305>,  <31.423767, 33.981541, 36.944607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126541, 33.977005, 37.194305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011337, 34.358593, 37.227741>,  <31.942217, 34.587547, 37.247803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011337, 34.358593, 37.227741>,  <32.126541, 33.977005, 37.194305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011337, 34.358593, 37.227741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348460, 0.023095, 0.937039,
		0.891980, 0.299000, -0.339073,
		-0.288006, 0.953974, 0.083589,
		31.924936, 34.644787, 37.252819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689137, 34.304832, 37.549255>,  <32.126541, 33.977005, 37.194305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689137, 34.304832, 37.549255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371017, 34.543922, 37.589703>,  <32.180145, 34.687374, 37.613972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371017, 34.543922, 37.589703>,  <32.689137, 34.304832, 37.549255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371017, 34.543922, 37.589703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239712, 0.156859, 0.958088,
		0.556808, 0.786208, -0.268031,
		-0.795300, 0.597722, 0.101123,
		32.132427, 34.723240, 37.620041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791336, 34.610447, 38.129543>,  <32.689137, 34.304832, 37.549255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791336, 34.610447, 38.129543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417446, 34.743736, 38.080154>,  <32.193111, 34.823708, 38.050522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417446, 34.743736, 38.080154>,  <32.791336, 34.610447, 38.129543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417446, 34.743736, 38.080154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115088, 0.044880, 0.992341,
		0.336209, 0.941780, -0.003601,
		-0.934729, 0.333220, -0.123477,
		32.137028, 34.843700, 38.043110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822334, 35.207012, 38.366470>,  <32.791336, 34.610447, 38.129543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822334, 35.207012, 38.366470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437492, 35.100880, 38.391602>,  <32.206585, 35.037201, 38.406681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437492, 35.100880, 38.391602>,  <32.822334, 35.207012, 38.366470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437492, 35.100880, 38.391602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064064, 0.004013, 0.997938,
		-0.265036, 0.964149, 0.013137,
		-0.962108, -0.265331, 0.062831,
		32.148861, 35.021282, 38.410450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579170, 35.622360, 38.947227>,  <32.822334, 35.207012, 38.366470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579170, 35.622360, 38.947227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280048, 35.361198, 38.899055>,  <32.100574, 35.204502, 38.870152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280048, 35.361198, 38.899055>,  <32.579170, 35.622360, 38.947227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280048, 35.361198, 38.899055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105847, -0.061832, 0.992458,
		-0.655424, 0.754915, -0.022869,
		-0.747808, -0.652901, -0.120431,
		32.055706, 35.165329, 38.862926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159412, 35.842426, 39.409885>,  <32.579170, 35.622360, 38.947227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159412, 35.842426, 39.409885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998240, 35.485344, 39.329174>,  <31.901535, 35.271095, 39.280746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998240, 35.485344, 39.329174>,  <32.159412, 35.842426, 39.409885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998240, 35.485344, 39.329174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234464, -0.112427, 0.965602,
		-0.884687, 0.436383, -0.164007,
		-0.402933, -0.892710, -0.201779,
		31.877359, 35.217529, 39.268639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610945, 35.758568, 39.870312>,  <32.159412, 35.842426, 39.409885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610945, 35.758568, 39.870312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714182, 35.382996, 39.779270>,  <31.776123, 35.157654, 39.724648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714182, 35.382996, 39.779270>,  <31.610945, 35.758568, 39.870312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714182, 35.382996, 39.779270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149892, -0.271646, 0.950653,
		-0.954422, -0.211240, -0.210847,
		0.258092, -0.938928, -0.227602,
		31.791609, 35.101318, 39.710991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067532, 35.382389, 40.163837>,  <31.610945, 35.758568, 39.870312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067532, 35.382389, 40.163837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338476, 35.093433, 40.108219>,  <31.501043, 34.920059, 40.074848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338476, 35.093433, 40.108219>,  <31.067532, 35.382389, 40.163837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338476, 35.093433, 40.108219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329635, -0.467013, 0.820512,
		-0.657667, -0.509948, -0.554461,
		0.677359, -0.722393, -0.139043,
		31.541683, 34.876717, 40.066505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734190, 34.661903, 40.112617>,  <31.067532, 35.382389, 40.163837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734190, 34.661903, 40.112617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107977, 34.650002, 40.254539>,  <31.332249, 34.642860, 40.339691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107977, 34.650002, 40.254539>,  <30.734190, 34.661903, 40.112617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107977, 34.650002, 40.254539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328959, -0.453430, 0.828364,
		0.136230, -0.890795, -0.433504,
		0.934466, -0.029757, 0.354805,
		31.388317, 34.641075, 40.360981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793066, 34.063854, 40.421665>,  <30.734190, 34.661903, 40.112617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793066, 34.063854, 40.421665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124735, 34.216625, 40.584934>,  <31.323736, 34.308289, 40.682896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124735, 34.216625, 40.584934>,  <30.793066, 34.063854, 40.421665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124735, 34.216625, 40.584934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222139, -0.444931, 0.867577,
		0.512957, -0.810043, -0.284086,
		0.829174, 0.381923, 0.408173,
		31.373487, 34.331203, 40.707386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252659, 33.597458, 40.720707>,  <30.793066, 34.063854, 40.421665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252659, 33.597458, 40.720707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361872, 33.933365, 40.908428>,  <31.427399, 34.134911, 41.021061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361872, 33.933365, 40.908428>,  <31.252659, 33.597458, 40.720707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361872, 33.933365, 40.908428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192080, -0.430424, 0.881953,
		0.942634, -0.330943, 0.043784,
		0.273030, 0.839769, 0.469300,
		31.443781, 34.185295, 41.049217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697845, 33.427128, 41.175671>,  <31.252659, 33.597458, 40.720707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697845, 33.427128, 41.175671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535715, 33.771198, 41.299484>,  <31.438437, 33.977642, 41.373772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535715, 33.771198, 41.299484>,  <31.697845, 33.427128, 41.175671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535715, 33.771198, 41.299484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350323, -0.458896, 0.816510,
		0.844385, 0.222514, 0.487340,
		-0.405324, 0.860175, 0.309533,
		31.414118, 34.029251, 41.392345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733173, 33.304783, 41.881405>,  <31.697845, 33.427128, 41.175671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733173, 33.304783, 41.881405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497467, 33.627956, 41.882622>,  <31.356043, 33.821861, 41.883350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497467, 33.627956, 41.882622>,  <31.733173, 33.304783, 41.881405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497467, 33.627956, 41.882622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423293, -0.311930, 0.850602,
		0.688178, 0.499944, 0.525802,
		-0.589266, 0.807933, 0.003040,
		31.320686, 33.870335, 41.883533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678925, 33.579369, 42.624363>,  <31.733173, 33.304783, 41.881405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678925, 33.579369, 42.624363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367228, 33.728687, 42.422997>,  <31.180210, 33.818279, 42.302177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367228, 33.728687, 42.422997>,  <31.678925, 33.579369, 42.624363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367228, 33.728687, 42.422997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568152, -0.081703, 0.818857,
		0.264549, 0.924106, 0.275758,
		-0.779241, 0.373300, -0.503418,
		31.133455, 33.840679, 42.271973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389423, 34.048401, 43.120216>,  <31.678925, 33.579369, 42.624363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389423, 34.048401, 43.120216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095741, 33.953026, 42.865944>,  <30.919533, 33.895802, 42.713379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095741, 33.953026, 42.865944>,  <31.389423, 34.048401, 43.120216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095741, 33.953026, 42.865944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643846, -0.052557, 0.763348,
		-0.215419, 0.969735, -0.114928,
		-0.734205, -0.238436, -0.635682,
		30.875481, 33.881496, 42.675240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720785, 34.514053, 43.266624>,  <31.389423, 34.048401, 43.120216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720785, 34.514053, 43.266624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591984, 34.171398, 43.105385>,  <30.514702, 33.965805, 43.008640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591984, 34.171398, 43.105385>,  <30.720785, 34.514053, 43.266624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591984, 34.171398, 43.105385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694175, -0.075886, 0.715795,
		-0.643766, 0.510308, -0.570220,
		-0.322004, -0.856637, -0.403096,
		30.495382, 33.914406, 42.984455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966761, 34.572884, 43.244164>,  <30.720785, 34.514053, 43.266624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966761, 34.572884, 43.244164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028597, 34.179138, 43.210369>,  <30.065699, 33.942890, 43.190090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028597, 34.179138, 43.210369>,  <29.966761, 34.572884, 43.244164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028597, 34.179138, 43.210369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736034, -0.171794, 0.654783,
		-0.659057, -0.039036, -0.751080,
		0.154591, -0.984359, -0.084490,
		30.074974, 33.883831, 43.185020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263535, 34.262222, 43.224377>,  <29.966761, 34.572884, 43.244164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263535, 34.262222, 43.224377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509348, 33.973320, 43.351311>,  <29.656836, 33.799980, 43.427471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509348, 33.973320, 43.351311>,  <29.263535, 34.262222, 43.224377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509348, 33.973320, 43.351311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503079, -0.048936, 0.862854,
		-0.607669, -0.689896, -0.393422,
		0.614533, -0.722252, 0.317335,
		29.693708, 33.756645, 43.446510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883459, 33.613045, 43.136322>,  <29.263535, 34.262222, 43.224377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883459, 33.613045, 43.136322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173208, 33.605038, 43.411968>,  <29.347057, 33.600235, 43.577354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173208, 33.605038, 43.411968>,  <28.883459, 33.613045, 43.136322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173208, 33.605038, 43.411968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679343, -0.190899, 0.708555,
		0.117370, -0.981406, -0.151879,
		0.724373, -0.020015, 0.689117,
		29.390520, 33.599033, 43.618702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562174, 33.212257, 43.675964>,  <28.883459, 33.613045, 43.136322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562174, 33.212257, 43.675964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891262, 33.303913, 43.884052>,  <29.088715, 33.358906, 44.008907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891262, 33.303913, 43.884052>,  <28.562174, 33.212257, 43.675964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891262, 33.303913, 43.884052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479913, -0.210503, 0.851688,
		0.304662, -0.950360, -0.063219,
		0.822718, 0.229137, 0.520222,
		29.138077, 33.372654, 44.040119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751200, 32.635708, 44.145390>,  <28.562174, 33.212257, 43.675964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751200, 32.635708, 44.145390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939569, 32.943008, 44.318836>,  <29.052591, 33.127388, 44.422905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939569, 32.943008, 44.318836>,  <28.751200, 32.635708, 44.145390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939569, 32.943008, 44.318836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345764, -0.291466, 0.891905,
		0.811590, -0.569948, 0.128375,
		0.470923, 0.768249, 0.433618,
		29.080847, 33.173485, 44.448921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995634, 32.283009, 44.726868>,  <28.751200, 32.635708, 44.145390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995634, 32.283009, 44.726868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991995, 32.675270, 44.805077>,  <28.989811, 32.910629, 44.852001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991995, 32.675270, 44.805077>,  <28.995634, 32.283009, 44.726868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991995, 32.675270, 44.805077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332719, -0.187361, 0.924226,
		0.942982, -0.056644, 0.327988,
		-0.009100, 0.980657, 0.195525,
		28.989265, 32.969467, 44.863735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305088, 32.272808, 45.351864>,  <28.995634, 32.283009, 44.726868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305088, 32.272808, 45.351864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096378, 32.612549, 45.319973>,  <28.971151, 32.816391, 45.300838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096378, 32.612549, 45.319973>,  <29.305088, 32.272808, 45.351864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096378, 32.612549, 45.319973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335857, -0.118618, 0.934414,
		0.784188, 0.514330, 0.347152,
		-0.521776, 0.849349, -0.079723,
		28.939846, 32.867355, 45.296055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490040, 32.806152, 45.887398>,  <29.305088, 32.272808, 45.351864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490040, 32.806152, 45.887398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121801, 32.930984, 45.793499>,  <28.900858, 33.005882, 45.737160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121801, 32.930984, 45.793499>,  <29.490040, 32.806152, 45.887398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121801, 32.930984, 45.793499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237421, 0.029992, 0.970944,
		0.310051, 0.949583, 0.046484,
		-0.920598, 0.312078, -0.234750,
		28.845623, 33.024609, 45.723076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271488, 33.252857, 46.449795>,  <29.490040, 32.806152, 45.887398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271488, 33.252857, 46.449795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925961, 33.179337, 46.262165>,  <28.718643, 33.135223, 46.149586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925961, 33.179337, 46.262165>,  <29.271488, 33.252857, 46.449795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925961, 33.179337, 46.262165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473577, -0.021394, 0.880492,
		-0.171867, 0.982731, -0.068562,
		-0.863821, -0.183797, -0.469076,
		28.666815, 33.124199, 46.121441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857389, 33.577618, 46.801361>,  <29.271488, 33.252857, 46.449795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857389, 33.577618, 46.801361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625208, 33.300991, 46.629402>,  <28.485899, 33.135017, 46.526226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625208, 33.300991, 46.629402>,  <28.857389, 33.577618, 46.801361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625208, 33.300991, 46.629402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471278, -0.145228, 0.869946,
		-0.664056, 0.707566, -0.241620,
		-0.580454, -0.691563, -0.429900,
		28.451071, 33.093521, 46.500431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255554, 33.726044, 47.079643>,  <28.857389, 33.577618, 46.801361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255554, 33.726044, 47.079643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230217, 33.350849, 46.943306>,  <28.215014, 33.125732, 46.861504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230217, 33.350849, 46.943306>,  <28.255554, 33.726044, 47.079643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230217, 33.350849, 46.943306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363458, -0.296389, 0.883206,
		-0.929455, 0.179827, -0.322144,
		-0.063345, -0.937985, -0.340840,
		28.211214, 33.069454, 46.841053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513968, 33.420582, 47.060535>,  <28.255554, 33.726044, 47.079643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513968, 33.420582, 47.060535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757769, 33.104057, 47.079845>,  <27.904049, 32.914143, 47.091431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757769, 33.104057, 47.079845>,  <27.513968, 33.420582, 47.060535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757769, 33.104057, 47.079845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596163, -0.417352, 0.685862,
		-0.522586, -0.446811, -0.726129,
		0.609503, -0.791313, 0.048270,
		27.940619, 32.866665, 47.094326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128454, 32.951225, 47.441399>,  <27.513968, 33.420582, 47.060535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128454, 32.951225, 47.441399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470747, 32.744259, 47.440464>,  <27.676123, 32.620079, 47.439903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470747, 32.744259, 47.440464>,  <27.128454, 32.951225, 47.441399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470747, 32.744259, 47.440464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396078, -0.657947, 0.640491,
		-0.332934, -0.547164, -0.767962,
		0.855732, -0.517414, -0.002333,
		27.727467, 32.589035, 47.439762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936365, 32.213284, 47.487938>,  <27.128454, 32.951225, 47.441399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936365, 32.213284, 47.487938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316143, 32.242859, 47.609978>,  <27.544010, 32.260605, 47.683201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316143, 32.242859, 47.609978>,  <26.936365, 32.213284, 47.487938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316143, 32.242859, 47.609978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169004, -0.698634, 0.695233,
		0.264560, -0.711648, -0.650818,
		0.949445, 0.073940, 0.305102,
		27.600977, 32.265041, 47.701508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044302, 31.618706, 47.687592>,  <26.936365, 32.213284, 47.487938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044302, 31.618706, 47.687592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370459, 31.785664, 47.848053>,  <27.566153, 31.885838, 47.944328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370459, 31.785664, 47.848053>,  <27.044302, 31.618706, 47.687592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370459, 31.785664, 47.848053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085556, -0.598445, 0.796583,
		0.572555, -0.683847, -0.452256,
		0.815390, 0.417394, 0.401149,
		27.615076, 31.910881, 47.968399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396524, 31.056440, 47.975395>,  <27.044302, 31.618706, 47.687592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396524, 31.056440, 47.975395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505732, 31.388687, 48.169525>,  <27.571255, 31.588036, 48.286003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505732, 31.388687, 48.169525>,  <27.396524, 31.056440, 47.975395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505732, 31.388687, 48.169525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102148, -0.476609, 0.873160,
		0.956571, -0.287963, -0.045277,
		0.273017, 0.830615, 0.485325,
		27.587637, 31.637871, 48.315125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925039, 30.927210, 48.429424>,  <27.396524, 31.056440, 47.975395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925039, 30.927210, 48.429424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756248, 31.248991, 48.596657>,  <27.654974, 31.442059, 48.696995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756248, 31.248991, 48.596657>,  <27.925039, 30.927210, 48.429424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756248, 31.248991, 48.596657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070623, -0.488917, 0.869467,
		0.903852, 0.337369, 0.263125,
		-0.421977, 0.804452, 0.418082,
		27.629656, 31.490326, 48.722080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208138, 30.948814, 49.144585>,  <27.925039, 30.927210, 48.429424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208138, 30.948814, 49.144585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869181, 31.160889, 49.133034>,  <27.665808, 31.288134, 49.126102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869181, 31.160889, 49.133034>,  <28.208138, 30.948814, 49.144585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869181, 31.160889, 49.133034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194389, -0.259167, 0.946068,
		0.494108, 0.807302, 0.322678,
		-0.847390, 0.530185, -0.028874,
		27.614964, 31.319944, 49.124371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314421, 31.227642, 49.836948>,  <28.208138, 30.948814, 49.144585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314421, 31.227642, 49.836948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933550, 31.261259, 49.719444>,  <27.705027, 31.281429, 49.648941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933550, 31.261259, 49.719444>,  <28.314421, 31.227642, 49.836948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933550, 31.261259, 49.719444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303549, -0.369836, 0.878111,
		-0.034845, 0.925288, 0.377661,
		-0.952178, 0.084041, -0.293757,
		27.647896, 31.286470, 49.631317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997654, 31.471806, 50.423462>,  <28.314421, 31.227642, 49.836948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997654, 31.471806, 50.423462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685555, 31.365173, 50.197136>,  <27.498295, 31.301195, 50.061340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685555, 31.365173, 50.197136>,  <27.997654, 31.471806, 50.423462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685555, 31.365173, 50.197136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476197, -0.333336, 0.813710,
		-0.405525, 0.904336, 0.133140,
		-0.780247, -0.266579, -0.565818,
		27.451481, 31.285200, 50.027390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411125, 31.798004, 50.743027>,  <27.997654, 31.471806, 50.423462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411125, 31.798004, 50.743027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277599, 31.492706, 50.521751>,  <27.197483, 31.309526, 50.388985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277599, 31.492706, 50.521751>,  <27.411125, 31.798004, 50.743027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277599, 31.492706, 50.521751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499645, -0.354368, 0.790429,
		-0.799326, 0.540257, -0.263059,
		-0.333815, -0.763247, -0.553192,
		27.177454, 31.263733, 50.355793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.660494, 31.845184, 50.738232>,  <27.411125, 31.798004, 50.743027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.660494, 31.845184, 50.738232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725151, 31.459780, 50.652897>,  <26.763945, 31.228537, 50.601696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725151, 31.459780, 50.652897>,  <26.660494, 31.845184, 50.738232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725151, 31.459780, 50.652897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492702, -0.266104, 0.828513,
		-0.855054, -0.028812, -0.517739,
		0.161644, -0.963514, -0.213337,
		26.773643, 31.170725, 50.588894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048965, 31.385588, 50.760948>,  <26.660494, 31.845184, 50.738232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048965, 31.385588, 50.760948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360355, 31.141535, 50.819897>,  <26.547190, 30.995104, 50.855267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360355, 31.141535, 50.819897>,  <26.048965, 31.385588, 50.760948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360355, 31.141535, 50.819897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400304, -0.301759, 0.865274,
		-0.483463, -0.732584, -0.479150,
		0.778474, -0.610133, 0.147367,
		26.593897, 30.958496, 50.864105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.853022, 30.859486, 51.135078>,  <26.048965, 31.385588, 50.760948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.853022, 30.859486, 51.135078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226851, 30.809469, 51.268311>,  <26.451147, 30.779459, 51.348248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226851, 30.809469, 51.268311>,  <25.853022, 30.859486, 51.135078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226851, 30.809469, 51.268311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350220, -0.158563, 0.923149,
		-0.062616, -0.979399, -0.191980,
		0.934572, -0.125039, 0.333077,
		26.507221, 30.771957, 51.368233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849756, 30.247742, 51.532734>,  <25.853022, 30.859486, 51.135078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849756, 30.247742, 51.532734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103870, 30.545732, 51.614140>,  <26.256340, 30.724527, 51.662983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103870, 30.545732, 51.614140>,  <25.849756, 30.247742, 51.532734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103870, 30.545732, 51.614140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408991, 0.101019, 0.906930,
		0.655086, -0.659394, 0.368866,
		0.635287, 0.744980, 0.203510,
		26.294456, 30.769226, 51.675194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444725, 29.680185, 51.512154>,  <25.849756, 30.247742, 51.532734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444725, 29.680185, 51.512154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.806896, 29.617968, 51.670143>,  <26.024199, 29.580637, 51.764938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.806896, 29.617968, 51.670143>,  <25.444725, 29.680185, 51.512154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.806896, 29.617968, 51.670143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171800, -0.716572, -0.676024,
		0.388178, 0.679949, -0.622083,
		0.905429, -0.155544, 0.394973,
		26.078526, 29.571304, 51.788635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046192, 29.769814, 51.049732>,  <25.444725, 29.680185, 51.512154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046192, 29.769814, 51.049732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107603, 29.479357, 51.317806>,  <26.144449, 29.305082, 51.478649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107603, 29.479357, 51.317806>,  <26.046192, 29.769814, 51.049732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.107603, 29.479357, 51.317806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107296, -0.661962, -0.741818,
		0.982302, 0.185798, -0.023718,
		0.153528, -0.726144, 0.670182,
		26.153662, 29.261513, 51.518860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686256, 29.409157, 50.938808>,  <26.046192, 29.769814, 51.049732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686256, 29.409157, 50.938808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.424429, 29.145042, 51.086082>,  <26.267332, 28.986574, 51.174446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.424429, 29.145042, 51.086082>,  <26.686256, 29.409157, 50.938808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.424429, 29.145042, 51.086082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106635, -0.562783, -0.819697,
		0.748443, -0.497288, 0.438791,
		-0.654570, -0.660287, 0.368183,
		26.228058, 28.946957, 51.196537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987732, 28.815123, 50.978607>,  <26.686256, 29.409157, 50.938808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987732, 28.815123, 50.978607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599625, 28.723375, 50.947701>,  <26.366760, 28.668327, 50.929157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599625, 28.723375, 50.947701>,  <26.987732, 28.815123, 50.978607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599625, 28.723375, 50.947701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208630, -0.630744, -0.747419,
		0.122697, -0.741318, 0.659844,
		-0.970268, -0.229369, -0.077271,
		26.308544, 28.654564, 50.924519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939266, 28.101179, 50.953251>,  <26.987732, 28.815123, 50.978607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939266, 28.101179, 50.953251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628067, 28.283035, 50.779804>,  <26.441347, 28.392149, 50.675735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628067, 28.283035, 50.779804>,  <26.939266, 28.101179, 50.953251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628067, 28.283035, 50.779804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113403, -0.577222, -0.808674,
		-0.617948, -0.678320, 0.397520,
		-0.777997, 0.454638, -0.433617,
		26.394669, 28.419426, 50.649719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486698, 27.556309, 50.513348>,  <26.939266, 28.101179, 50.953251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486698, 27.556309, 50.513348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.468962, 27.932472, 50.378490>,  <26.458321, 28.158171, 50.297577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.468962, 27.932472, 50.378490>,  <26.486698, 27.556309, 50.513348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.468962, 27.932472, 50.378490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162262, -0.326217, -0.931265,
		-0.985751, -0.095999, -0.138127,
		-0.044341, 0.940408, -0.337145,
		26.455660, 28.214594, 50.277348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991594, 27.876772, 50.232800>,  <26.486698, 27.556309, 50.513348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991594, 27.876772, 50.232800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850239, 28.143442, 49.970299>,  <26.765427, 28.303444, 49.812798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850239, 28.143442, 49.970299>,  <26.991594, 27.876772, 50.232800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850239, 28.143442, 49.970299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893996, 0.034097, -0.446775,
		-0.275478, -0.744567, -0.608056,
		-0.353387, 0.666676, -0.656247,
		26.744223, 28.343445, 49.773426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965492, 27.557699, 49.533218>,  <26.991594, 27.876772, 50.232800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965492, 27.557699, 49.533218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.019650, 27.953791, 49.546566>,  <27.052143, 28.191446, 49.554573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.019650, 27.953791, 49.546566>,  <26.965492, 27.557699, 49.533218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.019650, 27.953791, 49.546566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853742, -0.099508, -0.511099,
		-0.502785, 0.097688, -0.858874,
		0.135393, 0.990230, 0.033369,
		27.060268, 28.250860, 49.556576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065632, 27.777660, 48.904503>,  <26.965492, 27.557699, 49.533218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065632, 27.777660, 48.904503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227489, 28.065020, 49.130836>,  <27.324604, 28.237434, 49.266636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227489, 28.065020, 49.130836>,  <27.065632, 27.777660, 48.904503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227489, 28.065020, 49.130836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811794, 0.002677, -0.583938,
		-0.421014, 0.695628, -0.582108,
		0.404645, 0.718397, 0.565834,
		27.348883, 28.280539, 49.300587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267094, 28.217476, 48.448654>,  <27.065632, 27.777660, 48.904503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267094, 28.217476, 48.448654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485693, 28.342798, 48.759312>,  <27.616854, 28.417992, 48.945705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485693, 28.342798, 48.759312>,  <27.267094, 28.217476, 48.448654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485693, 28.342798, 48.759312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724909, 0.287388, -0.626031,
		-0.419339, 0.905122, -0.070062,
		0.546500, 0.313308, 0.776644,
		27.649643, 28.436790, 48.992306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483688, 28.851805, 48.236549>,  <27.267094, 28.217476, 48.448654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483688, 28.851805, 48.236549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738979, 28.738951, 48.523064>,  <27.892155, 28.671238, 48.694973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738979, 28.738951, 48.523064>,  <27.483688, 28.851805, 48.236549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738979, 28.738951, 48.523064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758648, 0.388616, -0.522906,
		-0.130830, 0.877142, 0.462066,
		0.638229, -0.282134, 0.716285,
		27.930449, 28.654310, 48.737949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975632, 29.425104, 48.241566>,  <27.483688, 28.851805, 48.236549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975632, 29.425104, 48.241566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146889, 29.113514, 48.424820>,  <28.249643, 28.926559, 48.534771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146889, 29.113514, 48.424820>,  <27.975632, 29.425104, 48.241566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146889, 29.113514, 48.424820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795766, 0.084701, -0.599652,
		0.428310, 0.621306, 0.656147,
		0.428143, -0.778977, 0.458136,
		28.275331, 28.879822, 48.562260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688433, 29.570900, 48.268585>,  <27.975632, 29.425104, 48.241566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688433, 29.570900, 48.268585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658127, 29.173571, 48.303379>,  <28.639942, 28.935173, 48.324257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658127, 29.173571, 48.303379>,  <28.688433, 29.570900, 48.268585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658127, 29.173571, 48.303379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574638, -0.114789, -0.810317,
		0.814893, -0.011410, 0.579499,
		-0.075766, -0.993324, 0.086984,
		28.635397, 28.875574, 48.329475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389851, 29.364988, 48.049656>,  <28.688433, 29.570900, 48.268585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389851, 29.364988, 48.049656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176729, 29.027180, 48.028095>,  <29.048857, 28.824495, 48.015160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176729, 29.027180, 48.028095>,  <29.389851, 29.364988, 48.049656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176729, 29.027180, 48.028095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499362, -0.262347, -0.825719,
		0.683197, -0.466860, 0.561501,
		-0.532803, -0.844521, -0.053898,
		29.016888, 28.773823, 48.011925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785919, 28.699738, 48.059772>,  <29.389851, 29.364988, 48.049656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785919, 28.699738, 48.059772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441088, 28.625725, 47.871059>,  <29.234188, 28.581318, 47.757832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441088, 28.625725, 47.871059>,  <29.785919, 28.699738, 48.059772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441088, 28.625725, 47.871059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503889, -0.213829, -0.836883,
		0.053968, -0.959188, 0.277573,
		-0.862081, -0.185031, -0.471785,
		29.182463, 28.570215, 47.729523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957462, 28.253412, 47.556290>,  <29.785919, 28.699738, 48.059772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957462, 28.253412, 47.556290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599413, 28.392807, 47.445068>,  <29.384583, 28.476444, 47.378334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599413, 28.392807, 47.445068>,  <29.957462, 28.253412, 47.556290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599413, 28.392807, 47.445068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329426, 0.096784, -0.939208,
		-0.300390, -0.932304, -0.201434,
		-0.895123, 0.348486, -0.278052,
		29.330875, 28.497353, 47.361652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793371, 27.976452, 46.948269>,  <29.957462, 28.253412, 47.556290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793371, 27.976452, 46.948269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571646, 28.308867, 46.966682>,  <29.438610, 28.508314, 46.977730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571646, 28.308867, 46.966682>,  <29.793371, 27.976452, 46.948269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571646, 28.308867, 46.966682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222003, 0.200935, -0.954117,
		-0.802155, -0.518658, -0.295873,
		-0.554312, 0.831035, 0.046037,
		29.405352, 28.558176, 46.980495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314976, 28.044289, 46.215275>,  <29.793371, 27.976452, 46.948269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314976, 28.044289, 46.215275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351173, 28.406355, 46.381401>,  <29.372892, 28.623594, 46.481075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351173, 28.406355, 46.381401>,  <29.314976, 28.044289, 46.215275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351173, 28.406355, 46.381401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069417, 0.410276, -0.909316,
		-0.993475, 0.111118, -0.025707,
		0.090495, 0.905167, 0.415312,
		29.378323, 28.677904, 46.505993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966869, 28.442078, 45.772064>,  <29.314976, 28.044289, 46.215275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966869, 28.442078, 45.772064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178818, 28.713970, 45.974926>,  <29.305986, 28.877106, 46.096642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178818, 28.713970, 45.974926>,  <28.966869, 28.442078, 45.772064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178818, 28.713970, 45.974926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168030, 0.502000, -0.848388,
		-0.831265, 0.534754, 0.151781,
		0.529872, 0.679731, 0.507150,
		29.337780, 28.917889, 46.127071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691563, 29.061407, 45.608322>,  <28.966869, 28.442078, 45.772064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691563, 29.061407, 45.608322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062885, 29.145737, 45.730831>,  <29.285679, 29.196335, 45.804337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062885, 29.145737, 45.730831>,  <28.691563, 29.061407, 45.608322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062885, 29.145737, 45.730831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159179, 0.519080, -0.839773,
		-0.336023, 0.828318, 0.448306,
		0.928305, 0.210822, 0.306273,
		29.341377, 29.208982, 45.822712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799599, 29.653105, 45.409073>,  <28.691563, 29.061407, 45.608322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799599, 29.653105, 45.409073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182186, 29.562475, 45.482647>,  <29.411739, 29.508097, 45.526791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182186, 29.562475, 45.482647>,  <28.799599, 29.653105, 45.409073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182186, 29.562475, 45.482647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277806, 0.513818, -0.811674,
		0.089394, 0.827439, 0.554394,
		0.956469, -0.226573, 0.183935,
		29.469128, 29.494503, 45.537827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223650, 30.262869, 45.468670>,  <28.799599, 29.653105, 45.409073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223650, 30.262869, 45.468670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480892, 29.976645, 45.359573>,  <29.635237, 29.804909, 45.294117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480892, 29.976645, 45.359573>,  <29.223650, 30.262869, 45.468670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480892, 29.976645, 45.359573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310938, 0.569484, -0.760924,
		0.699811, 0.404547, 0.588732,
		0.643103, -0.715562, -0.272742,
		29.673822, 29.761976, 45.277752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879095, 30.577316, 45.407753>,  <29.223650, 30.262869, 45.468670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879095, 30.577316, 45.407753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899448, 30.234196, 45.203171>,  <29.911661, 30.028324, 45.080421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899448, 30.234196, 45.203171>,  <29.879095, 30.577316, 45.407753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899448, 30.234196, 45.203171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536474, 0.455438, -0.710473,
		0.842381, -0.238230, 0.483363,
		0.050885, -0.857801, -0.511457,
		29.914715, 29.976856, 45.049732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634151, 30.493059, 45.117828>,  <29.879095, 30.577316, 45.407753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634151, 30.493059, 45.117828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411129, 30.231895, 44.912758>,  <30.277315, 30.075197, 44.789715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411129, 30.231895, 44.912758>,  <30.634151, 30.493059, 45.117828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411129, 30.231895, 44.912758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433101, 0.298083, -0.850629,
		0.708204, -0.696317, 0.116576,
		-0.557558, -0.652908, -0.512679,
		30.243862, 30.036022, 44.758953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039267, 30.293421, 44.586693>,  <30.634151, 30.493059, 45.117828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039267, 30.293421, 44.586693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685802, 30.182827, 44.435589>,  <30.473724, 30.116470, 44.344929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685802, 30.182827, 44.435589>,  <31.039267, 30.293421, 44.586693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685802, 30.182827, 44.435589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308803, 0.262202, -0.914270,
		0.351830, -0.924557, -0.146319,
		-0.883661, -0.276484, -0.377757,
		30.420704, 30.099882, 44.322262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308594, 29.945578, 44.011204>,  <31.039267, 30.293421, 44.586693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308594, 29.945578, 44.011204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923195, 29.997597, 43.917599>,  <30.691956, 30.028809, 43.861435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923195, 29.997597, 43.917599>,  <31.308594, 29.945578, 44.011204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923195, 29.997597, 43.917599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239876, 0.031225, -0.970301,
		-0.118878, -0.991016, -0.061280,
		-0.963498, 0.130047, -0.234009,
		30.634146, 30.036610, 43.847397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130329, 29.482893, 43.457615>,  <31.308594, 29.945578, 44.011204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130329, 29.482893, 43.457615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860821, 29.776903, 43.427246>,  <30.699116, 29.953310, 43.409023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860821, 29.776903, 43.427246>,  <31.130329, 29.482893, 43.457615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860821, 29.776903, 43.427246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261494, 0.141076, -0.954839,
		-0.691123, -0.663198, -0.287258,
		-0.673773, 0.735028, -0.075922,
		30.658689, 29.997412, 43.404469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731483, 29.343395, 42.834095>,  <31.130329, 29.482893, 43.457615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731483, 29.343395, 42.834095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678566, 29.730461, 42.920002>,  <30.646816, 29.962700, 42.971546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678566, 29.730461, 42.920002>,  <30.731483, 29.343395, 42.834095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678566, 29.730461, 42.920002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085290, 0.226984, -0.970156,
		-0.987534, -0.110028, -0.112561,
		-0.132294, 0.967663, 0.214771,
		30.638878, 30.020760, 42.984432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268471, 29.526171, 42.366653>,  <30.731483, 29.343395, 42.834095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268471, 29.526171, 42.366653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403881, 29.879698, 42.495819>,  <30.485126, 30.091814, 42.573318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403881, 29.879698, 42.495819>,  <30.268471, 29.526171, 42.366653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403881, 29.879698, 42.495819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041616, 0.328773, -0.943492,
		-0.940036, 0.332834, 0.074517,
		0.338526, 0.883815, 0.322909,
		30.505438, 30.144842, 42.592693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775303, 30.047569, 42.144253>,  <30.268471, 29.526171, 42.366653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775303, 30.047569, 42.144253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139761, 30.207577, 42.183846>,  <30.358437, 30.303581, 42.207600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139761, 30.207577, 42.183846>,  <29.775303, 30.047569, 42.144253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139761, 30.207577, 42.183846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132596, 0.512013, -0.848682,
		-0.390167, 0.760150, 0.519560,
		0.911147, 0.400019, 0.098977,
		30.413105, 30.327583, 42.213539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706352, 30.770775, 41.992748>,  <29.775303, 30.047569, 42.144253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706352, 30.770775, 41.992748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100521, 30.712534, 41.957542>,  <30.337023, 30.677589, 41.936420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100521, 30.712534, 41.957542>,  <29.706352, 30.770775, 41.992748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100521, 30.712534, 41.957542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014343, 0.444377, -0.895725,
		0.169533, 0.883928, 0.435809,
		0.985420, -0.145604, -0.088015,
		30.396147, 30.668852, 41.931137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025358, 31.365341, 41.720932>,  <29.706352, 30.770775, 41.992748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025358, 31.365341, 41.720932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292934, 31.073122, 41.666061>,  <30.453480, 30.897791, 41.633137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292934, 31.073122, 41.666061>,  <30.025358, 31.365341, 41.720932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292934, 31.073122, 41.666061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180818, 0.338940, -0.923268,
		0.720988, 0.592806, 0.358827,
		0.668940, -0.730548, -0.137181,
		30.493616, 30.853958, 41.624908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708511, 31.697371, 41.481487>,  <30.025358, 31.365341, 41.720932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708511, 31.697371, 41.481487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735764, 31.309868, 41.386097>,  <30.752115, 31.077366, 41.328865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735764, 31.309868, 41.386097>,  <30.708511, 31.697371, 41.481487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735764, 31.309868, 41.386097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384156, 0.246070, -0.889873,
		0.920751, -0.030984, 0.388918,
		0.068129, -0.968757, -0.238472,
		30.756203, 31.019241, 41.314556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283739, 31.604250, 41.142128>,  <30.708511, 31.697371, 41.481487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283739, 31.604250, 41.142128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089640, 31.283426, 41.002853>,  <30.973181, 31.090933, 40.919289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089640, 31.283426, 41.002853>,  <31.283739, 31.604250, 41.142128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089640, 31.283426, 41.002853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521378, 0.054261, -0.851599,
		0.701926, -0.594775, 0.391845,
		-0.485248, -0.802059, -0.348190,
		30.944065, 31.042809, 40.898396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785500, 31.159275, 40.800835>,  <31.283739, 31.604250, 41.142128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785500, 31.159275, 40.800835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437666, 31.041784, 40.642063>,  <31.228966, 30.971291, 40.546799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437666, 31.041784, 40.642063>,  <31.785500, 31.159275, 40.800835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437666, 31.041784, 40.642063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440092, -0.096471, -0.892756,
		0.223934, -0.951009, 0.213156,
		-0.869582, -0.293727, -0.396928,
		31.176792, 30.953667, 40.522984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003620, 30.609005, 40.323956>,  <31.785500, 31.159275, 40.800835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003620, 30.609005, 40.323956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637186, 30.726690, 40.214973>,  <31.417326, 30.797300, 40.149586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637186, 30.726690, 40.214973>,  <32.003620, 30.609005, 40.323956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637186, 30.726690, 40.214973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337716, 0.199751, -0.919809,
		-0.216195, -0.934633, -0.282349,
		-0.916083, 0.294212, -0.272455,
		31.362362, 30.814953, 40.133236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946234, 30.439671, 39.604710>,  <32.003620, 30.609005, 40.323956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946234, 30.439671, 39.604710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642139, 30.696751, 39.642597>,  <31.459682, 30.851000, 39.665329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642139, 30.696751, 39.642597>,  <31.946234, 30.439671, 39.604710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642139, 30.696751, 39.642597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183847, 0.352690, -0.917502,
		-0.623088, -0.680106, -0.386287,
		-0.760238, 0.642702, 0.094721,
		31.414068, 30.889561, 39.671013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583334, 30.334049, 39.038036>,  <31.946234, 30.439671, 39.604710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583334, 30.334049, 39.038036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442709, 30.692268, 39.147141>,  <31.358334, 30.907200, 39.212605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442709, 30.692268, 39.147141>,  <31.583334, 30.334049, 39.038036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442709, 30.692268, 39.147141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016286, 0.297170, -0.954686,
		-0.936023, -0.331190, -0.119059,
		-0.351563, 0.895547, 0.272764,
		31.337240, 30.960932, 39.228970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263189, 30.548803, 38.378460>,  <31.583334, 30.334049, 39.038036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263189, 30.548803, 38.378460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334143, 30.873026, 38.601723>,  <31.376715, 31.067558, 38.735680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334143, 30.873026, 38.601723>,  <31.263189, 30.548803, 38.378460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334143, 30.873026, 38.601723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071747, 0.554988, -0.828758,
		-0.981523, 0.187055, 0.040291,
		0.177385, 0.810554, 0.558154,
		31.387358, 31.116192, 38.769169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759096, 30.904228, 38.120968>,  <31.263189, 30.548803, 38.378460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759096, 30.904228, 38.120968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011452, 31.161749, 38.294170>,  <31.162865, 31.316261, 38.398090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011452, 31.161749, 38.294170>,  <30.759096, 30.904228, 38.120968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011452, 31.161749, 38.294170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108669, 0.625912, -0.772286,
		-0.768224, 0.440174, 0.464843,
		0.630891, 0.643803, 0.433007,
		31.200720, 31.354889, 38.424072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468987, 31.538656, 37.905792>,  <30.759096, 30.904228, 38.120968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468987, 31.538656, 37.905792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852068, 31.588413, 38.009583>,  <31.081917, 31.618267, 38.071857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852068, 31.588413, 38.009583>,  <30.468987, 31.538656, 37.905792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852068, 31.588413, 38.009583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147888, 0.560763, -0.814662,
		-0.246844, 0.818579, 0.518649,
		0.957704, 0.124392, 0.259479,
		31.139380, 31.625731, 38.087425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643593, 32.279793, 37.783573>,  <30.468987, 31.538656, 37.905792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643593, 32.279793, 37.783573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998409, 32.096889, 37.809109>,  <31.211300, 31.987148, 37.824429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998409, 32.096889, 37.809109>,  <30.643593, 32.279793, 37.783573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998409, 32.096889, 37.809109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384458, 0.655005, -0.650508,
		0.255635, 0.601571, 0.756811,
		0.887042, -0.457255, 0.063836,
		31.264523, 31.959713, 37.828259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158031, 32.851772, 37.665813>,  <30.643593, 32.279793, 37.783573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158031, 32.851772, 37.665813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350426, 32.507618, 37.598423>,  <31.465862, 32.301125, 37.557991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350426, 32.507618, 37.598423>,  <31.158031, 32.851772, 37.665813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350426, 32.507618, 37.598423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566190, 0.451548, -0.689589,
		0.669388, 0.236296, 0.704332,
		0.480987, -0.860388, -0.168472,
		31.494722, 32.249500, 37.547882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860455, 33.137486, 37.558098>,  <31.158031, 32.851772, 37.665813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860455, 33.137486, 37.558098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869627, 32.766552, 37.408684>,  <31.875130, 32.543991, 37.319035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869627, 32.766552, 37.408684>,  <31.860455, 33.137486, 37.558098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869627, 32.766552, 37.408684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669775, 0.291636, -0.682897,
		0.742209, -0.234527, 0.627792,
		0.022929, -0.927332, -0.373535,
		31.876505, 32.488354, 37.296623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595459, 32.854755, 37.349556>,  <31.860455, 33.137486, 37.558098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595459, 32.854755, 37.349556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329899, 32.667080, 37.116627>,  <32.170563, 32.554474, 36.976868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329899, 32.667080, 37.116627>,  <32.595459, 32.854755, 37.349556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329899, 32.667080, 37.116627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622015, 0.085811, -0.778289,
		0.415132, -0.878920, 0.234871,
		-0.663899, -0.469186, -0.582325,
		32.130730, 32.526325, 36.941929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052567, 32.305981, 36.977993>,  <32.595459, 32.854755, 37.349556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052567, 32.305981, 36.977993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717857, 32.406559, 36.783436>,  <32.517033, 32.466908, 36.666702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717857, 32.406559, 36.783436>,  <33.052567, 32.305981, 36.977993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717857, 32.406559, 36.783436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537940, 0.211863, -0.815926,
		-0.102114, -0.944398, -0.312546,
		-0.836776, 0.251449, -0.486395,
		32.466824, 32.481995, 36.637516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273518, 31.779804, 37.442455>,  <33.052567, 32.305981, 36.977993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273518, 31.779804, 37.442455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556435, 31.577026, 37.245380>,  <33.726185, 31.455360, 37.127136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556435, 31.577026, 37.245380>,  <33.273518, 31.779804, 37.442455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556435, 31.577026, 37.245380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440176, -0.229531, 0.868079,
		-0.553153, -0.830858, 0.060797,
		0.707295, -0.506942, -0.492689,
		33.768623, 31.424944, 37.097572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294395, 31.081553, 37.731197>,  <33.273518, 31.779804, 37.442455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294395, 31.081553, 37.731197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648396, 31.192530, 37.581638>,  <33.860794, 31.259115, 37.491901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648396, 31.192530, 37.581638>,  <33.294395, 31.081553, 37.731197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648396, 31.192530, 37.581638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453024, -0.327816, 0.829039,
		0.107440, -0.903085, -0.415805,
		0.885001, 0.277441, -0.373899,
		33.913895, 31.275763, 37.469467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696968, 30.564615, 37.944820>,  <33.294395, 31.081553, 37.731197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696968, 30.564615, 37.944820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946896, 30.870270, 37.880688>,  <34.096851, 31.053661, 37.842209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946896, 30.870270, 37.880688>,  <33.696968, 30.564615, 37.944820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946896, 30.870270, 37.880688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452966, -0.187507, 0.871586,
		0.635947, -0.617203, -0.463284,
		0.624815, 0.764135, -0.160327,
		34.134338, 31.099510, 37.832588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489841, 30.330442, 37.993923>,  <33.696968, 30.564615, 37.944820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489841, 30.330442, 37.993923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481079, 30.728722, 38.029926>,  <34.475822, 30.967690, 38.051529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481079, 30.728722, 38.029926>,  <34.489841, 30.330442, 37.993923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481079, 30.728722, 38.029926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253442, -0.081557, 0.963906,
		0.967102, 0.043925, -0.250566,
		-0.021904, 0.995700, 0.090006,
		34.474506, 31.027431, 38.056927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172245, 30.546532, 38.225468>,  <34.489841, 30.330442, 37.993923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172245, 30.546532, 38.225468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913586, 30.838083, 38.315430>,  <34.758392, 31.013014, 38.369408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913586, 30.838083, 38.315430>,  <35.172245, 30.546532, 38.225468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913586, 30.838083, 38.315430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157959, -0.160498, 0.974315,
		0.746255, 0.665563, -0.011348,
		-0.646647, 0.728880, 0.224904,
		34.719593, 31.056747, 38.382900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517593, 30.948790, 38.785873>,  <35.172245, 30.546532, 38.225468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517593, 30.948790, 38.785873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127235, 31.033875, 38.805405>,  <34.893021, 31.084925, 38.817123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127235, 31.033875, 38.805405>,  <35.517593, 30.948790, 38.785873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127235, 31.033875, 38.805405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065146, 0.070407, 0.995389,
		0.208293, 0.974575, -0.082568,
		-0.975894, 0.212712, 0.048824,
		34.834469, 31.097689, 38.820053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376869, 31.437325, 39.366955>,  <35.517593, 30.948790, 38.785873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376869, 31.437325, 39.366955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982384, 31.376015, 39.341995>,  <34.745693, 31.339230, 39.327019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982384, 31.376015, 39.341995>,  <35.376869, 31.437325, 39.366955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982384, 31.376015, 39.341995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043136, -0.125912, 0.991103,
		-0.159766, 0.980129, 0.117564,
		-0.986212, -0.153273, -0.062396,
		34.686520, 31.330032, 39.323277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028656, 31.916958, 39.821327>,  <35.376869, 31.437325, 39.366955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028656, 31.916958, 39.821327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780624, 31.609159, 39.760170>,  <34.631805, 31.424480, 39.723476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780624, 31.609159, 39.760170>,  <35.028656, 31.916958, 39.821327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780624, 31.609159, 39.760170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024029, -0.176168, 0.984067,
		-0.784171, 0.613873, 0.090748,
		-0.620079, -0.769496, -0.152896,
		34.594601, 31.378311, 39.714302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534180, 32.012234, 40.288792>,  <35.028656, 31.916958, 39.821327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534180, 32.012234, 40.288792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509731, 31.628216, 40.179562>,  <34.495064, 31.397804, 40.114021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509731, 31.628216, 40.179562>,  <34.534180, 32.012234, 40.288792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509731, 31.628216, 40.179562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194879, -0.256846, 0.946601,
		-0.978921, 0.111075, -0.171394,
		-0.061122, -0.960048, -0.273078,
		34.491394, 31.340200, 40.097637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887104, 31.760122, 40.372822>,  <34.534180, 32.012234, 40.288792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887104, 31.760122, 40.372822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111099, 31.429016, 40.386784>,  <34.245495, 31.230352, 40.395161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111099, 31.429016, 40.386784>,  <33.887104, 31.760122, 40.372822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111099, 31.429016, 40.386784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357432, -0.203364, 0.911530,
		-0.747435, -0.522921, -0.409751,
		0.559986, -0.827767, 0.034907,
		34.279095, 31.180687, 40.397255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413857, 31.207895, 40.720005>,  <33.887104, 31.760122, 40.372822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413857, 31.207895, 40.720005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782661, 31.053038, 40.718784>,  <34.003944, 30.960123, 40.718052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782661, 31.053038, 40.718784>,  <33.413857, 31.207895, 40.720005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782661, 31.053038, 40.718784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184324, -0.445886, 0.875905,
		-0.340464, -0.807034, -0.482474,
		0.922013, -0.387146, -0.003052,
		34.059265, 30.936893, 40.717869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320847, 30.606270, 40.919807>,  <33.413857, 31.207895, 40.720005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320847, 30.606270, 40.919807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705601, 30.664253, 41.012550>,  <33.936455, 30.699043, 41.068195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705601, 30.664253, 41.012550>,  <33.320847, 30.606270, 40.919807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705601, 30.664253, 41.012550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178735, -0.308386, 0.934319,
		0.206938, -0.940152, -0.270724,
		0.961889, 0.144958, 0.231855,
		33.994167, 30.707741, 41.082108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454182, 29.982311, 41.293987>,  <33.320847, 30.606270, 40.919807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454182, 29.982311, 41.293987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729694, 30.258081, 41.383667>,  <33.895004, 30.423544, 41.437473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729694, 30.258081, 41.383667>,  <33.454182, 29.982311, 41.293987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729694, 30.258081, 41.383667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024988, -0.331646, 0.943073,
		0.724535, -0.643972, -0.245660,
		0.688785, 0.689428, 0.224198,
		33.936329, 30.464911, 41.450928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029991, 29.699350, 41.657089>,  <33.454182, 29.982311, 41.293987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029991, 29.699350, 41.657089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019909, 30.080982, 41.776489>,  <34.013859, 30.309961, 41.848129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019909, 30.080982, 41.776489>,  <34.029991, 29.699350, 41.657089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019909, 30.080982, 41.776489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049600, -0.299417, 0.952832,
		0.998451, 0.009213, 0.054870,
		-0.025207, 0.954078, 0.298496,
		34.012348, 30.367205, 41.866039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602356, 29.749296, 42.124363>,  <34.029991, 29.699350, 41.657089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602356, 29.749296, 42.124363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331287, 30.029068, 42.215195>,  <34.168648, 30.196932, 42.269691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331287, 30.029068, 42.215195>,  <34.602356, 29.749296, 42.124363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331287, 30.029068, 42.215195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070151, -0.368874, 0.926828,
		0.732013, 0.612153, 0.299040,
		-0.677669, 0.699429, 0.227077,
		34.127987, 30.238897, 42.283318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805679, 30.041647, 42.792812>,  <34.602356, 29.749296, 42.124363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805679, 30.041647, 42.792812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423668, 30.145737, 42.735962>,  <34.194462, 30.208191, 42.701851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423668, 30.145737, 42.735962>,  <34.805679, 30.041647, 42.792812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423668, 30.145737, 42.735962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223154, -0.315183, 0.922422,
		0.195241, 0.912657, 0.359080,
		-0.955031, 0.260225, -0.142126,
		34.137157, 30.223804, 42.693325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614082, 30.168781, 43.398277>,  <34.805679, 30.041647, 42.792812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614082, 30.168781, 43.398277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246113, 30.186209, 43.242413>,  <34.025330, 30.196665, 43.148895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246113, 30.186209, 43.242413>,  <34.614082, 30.168781, 43.398277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246113, 30.186209, 43.242413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389058, -0.224741, 0.893379,
		-0.048648, 0.973444, 0.223697,
		-0.919928, 0.043570, -0.389659,
		33.970135, 30.199280, 43.125515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120995, 30.763824, 43.665081>,  <34.614082, 30.168781, 43.398277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120995, 30.763824, 43.665081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901108, 30.450699, 43.548450>,  <33.769176, 30.262823, 43.478474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901108, 30.450699, 43.548450>,  <34.120995, 30.763824, 43.665081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901108, 30.450699, 43.548450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386711, -0.070914, 0.919470,
		-0.740450, 0.618203, -0.263740,
		-0.549717, -0.782813, -0.291574,
		33.736195, 30.215855, 43.460979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577927, 30.869423, 43.987473>,  <34.120995, 30.763824, 43.665081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577927, 30.869423, 43.987473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537148, 30.481165, 43.900337>,  <33.512680, 30.248211, 43.848057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537148, 30.481165, 43.900337>,  <33.577927, 30.869423, 43.987473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537148, 30.481165, 43.900337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411793, -0.158162, 0.897447,
		-0.905557, 0.181196, -0.383582,
		-0.101945, -0.970646, -0.217840,
		33.506565, 30.189972, 43.834984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031693, 30.708838, 44.344219>,  <33.577927, 30.869423, 43.987473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031693, 30.708838, 44.344219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159592, 30.345758, 44.235519>,  <33.236332, 30.127911, 44.170300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159592, 30.345758, 44.235519>,  <33.031693, 30.708838, 44.344219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159592, 30.345758, 44.235519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379162, -0.385420, 0.841242,
		-0.868329, -0.165951, -0.467402,
		0.319751, -0.907696, -0.271749,
		33.255516, 30.073450, 44.153996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418808, 30.178064, 44.404652>,  <33.031693, 30.708838, 44.344219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418808, 30.178064, 44.404652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759148, 29.971727, 44.444572>,  <32.963352, 29.847925, 44.468525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759148, 29.971727, 44.444572>,  <32.418808, 30.178064, 44.404652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759148, 29.971727, 44.444572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360412, -0.434807, 0.825255,
		-0.382308, -0.738137, -0.555872,
		0.850849, -0.515845, 0.099803,
		33.014404, 29.816975, 44.474514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310623, 29.395067, 44.434917>,  <32.418808, 30.178064, 44.404652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310623, 29.395067, 44.434917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619732, 29.506157, 44.663197>,  <32.805199, 29.572811, 44.800163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619732, 29.506157, 44.663197>,  <32.310623, 29.395067, 44.434917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619732, 29.506157, 44.663197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467849, -0.358357, 0.807897,
		0.428886, -0.891319, -0.146995,
		0.772771, 0.277724, 0.570697,
		32.851562, 29.589474, 44.834404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568764, 28.837063, 44.922966>,  <32.310623, 29.395067, 44.434917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568764, 28.837063, 44.922966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649498, 29.195211, 45.081749>,  <32.697941, 29.410101, 45.177017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649498, 29.195211, 45.081749>,  <32.568764, 28.837063, 44.922966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649498, 29.195211, 45.081749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486883, -0.259944, 0.833891,
		0.849827, -0.361584, 0.383473,
		0.201840, 0.895369, 0.396957,
		32.710049, 29.463821, 45.200836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577095, 28.657686, 45.609032>,  <32.568764, 28.837063, 44.922966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577095, 28.657686, 45.609032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555954, 29.056517, 45.631111>,  <32.543270, 29.295815, 45.644360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555954, 29.056517, 45.631111>,  <32.577095, 28.657686, 45.609032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555954, 29.056517, 45.631111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483294, -0.073911, 0.872333,
		0.873861, 0.019433, 0.485787,
		-0.052857, 0.997075, 0.055196,
		32.540096, 29.355639, 45.647671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892616, 28.786978, 46.316856>,  <32.577095, 28.657686, 45.609032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892616, 28.786978, 46.316856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671040, 29.106796, 46.224014>,  <32.538094, 29.298687, 46.168308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671040, 29.106796, 46.224014>,  <32.892616, 28.786978, 46.316856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671040, 29.106796, 46.224014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439362, -0.043941, 0.897235,
		0.707182, 0.598994, 0.375632,
		-0.553944, 0.799547, -0.232101,
		32.504856, 29.346661, 46.154385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947060, 29.308830, 46.897152>,  <32.892616, 28.786978, 46.316856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947060, 29.308830, 46.897152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615646, 29.403404, 46.694122>,  <32.416798, 29.460148, 46.572304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615646, 29.403404, 46.694122>,  <32.947060, 29.308830, 46.897152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615646, 29.403404, 46.694122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437738, 0.291778, 0.850442,
		0.349172, 0.926804, -0.138252,
		-0.828532, 0.236433, -0.507577,
		32.367088, 29.474335, 46.541847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730022, 29.990238, 47.094460>,  <32.947060, 29.308830, 46.897152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730022, 29.990238, 47.094460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397972, 29.817944, 46.952839>,  <32.198742, 29.714567, 46.867867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397972, 29.817944, 46.952839>,  <32.730022, 29.990238, 47.094460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397972, 29.817944, 46.952839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475213, 0.214418, 0.853345,
		-0.291651, 0.876637, -0.382685,
		-0.830128, -0.430736, -0.354054,
		32.148933, 29.688723, 46.846622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196697, 30.495754, 47.242878>,  <32.730022, 29.990238, 47.094460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196697, 30.495754, 47.242878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034031, 30.132557, 47.202534>,  <31.936430, 29.914639, 47.178329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034031, 30.132557, 47.202534>,  <32.196697, 30.495754, 47.242878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034031, 30.132557, 47.202534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493822, 0.125596, 0.860445,
		-0.768609, 0.399723, -0.499462,
		-0.406670, -0.907991, -0.100857,
		31.912029, 29.860159, 47.172276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466862, 30.621094, 47.407726>,  <32.196697, 30.495754, 47.242878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466862, 30.621094, 47.407726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543726, 30.230238, 47.444103>,  <31.589846, 29.995724, 47.465931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543726, 30.230238, 47.444103>,  <31.466862, 30.621094, 47.407726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543726, 30.230238, 47.444103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552185, -0.031049, 0.833143,
		-0.811274, -0.210317, -0.545528,
		0.192162, -0.977140, 0.090945,
		31.601376, 29.937096, 47.471386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889170, 30.288815, 47.440094>,  <31.466862, 30.621094, 47.407726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889170, 30.288815, 47.440094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155781, 30.050383, 47.619171>,  <31.315748, 29.907322, 47.726616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155781, 30.050383, 47.619171>,  <30.889170, 30.288815, 47.440094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155781, 30.050383, 47.619171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486604, 0.107081, 0.867035,
		-0.564763, -0.795751, -0.218684,
		0.666527, -0.596082, 0.447691,
		31.355740, 29.871557, 47.753479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535299, 30.014692, 48.003494>,  <30.889170, 30.288815, 47.440094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535299, 30.014692, 48.003494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886099, 29.845432, 48.094547>,  <31.096579, 29.743876, 48.149178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886099, 29.845432, 48.094547>,  <30.535299, 30.014692, 48.003494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886099, 29.845432, 48.094547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236012, 0.033296, 0.971179,
		-0.418536, -0.905447, -0.070669,
		0.876998, -0.423152, 0.227632,
		31.149199, 29.718487, 48.162838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448429, 29.457794, 48.609592>,  <30.535299, 30.014692, 48.003494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448429, 29.457794, 48.609592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825634, 29.590889, 48.610905>,  <31.051958, 29.670746, 48.611694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825634, 29.590889, 48.610905>,  <30.448429, 29.457794, 48.609592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825634, 29.590889, 48.610905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077470, 0.209939, 0.974640,
		0.323613, -0.919353, 0.223752,
		0.943013, 0.332740, 0.003283,
		31.108538, 29.690710, 48.611889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740009, 29.091471, 49.042030>,  <30.448429, 29.457794, 48.609592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740009, 29.091471, 49.042030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949017, 29.431166, 49.011642>,  <31.074421, 29.634983, 48.993408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949017, 29.431166, 49.011642>,  <30.740009, 29.091471, 49.042030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949017, 29.431166, 49.011642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012432, 0.081503, 0.996595,
		0.852536, -0.521685, 0.032030,
		0.522520, 0.849236, -0.075970,
		31.105772, 29.685936, 48.988850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266033, 29.073183, 49.530952>,  <30.740009, 29.091471, 49.042030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266033, 29.073183, 49.530952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238548, 29.464870, 49.454624>,  <31.222057, 29.699883, 49.408825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238548, 29.464870, 49.454624>,  <31.266033, 29.073183, 49.530952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238548, 29.464870, 49.454624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059270, 0.194945, 0.979022,
		0.995874, 0.055960, -0.071433,
		-0.068711, 0.979217, -0.190824,
		31.217936, 29.758635, 49.397377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757710, 29.359360, 50.030041>,  <31.266033, 29.073183, 49.530952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757710, 29.359360, 50.030041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517506, 29.661810, 49.925991>,  <31.373384, 29.843281, 49.863560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517506, 29.661810, 49.925991>,  <31.757710, 29.359360, 50.030041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517506, 29.661810, 49.925991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028627, 0.345430, 0.938008,
		0.799106, 0.555834, -0.229079,
		-0.600508, 0.756126, -0.260123,
		31.337353, 29.888647, 49.847954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110554, 29.887020, 50.105824>,  <31.757710, 29.359360, 50.030041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110554, 29.887020, 50.105824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735060, 30.020514, 50.140213>,  <31.509762, 30.100609, 50.160847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735060, 30.020514, 50.140213>,  <32.110554, 29.887020, 50.105824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735060, 30.020514, 50.140213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152985, 0.179992, 0.971699,
		0.308813, 0.925324, -0.220022,
		-0.938738, 0.333733, 0.085977,
		31.453438, 30.120634, 50.166008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078678, 30.401863, 50.716618>,  <32.110554, 29.887020, 50.105824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078678, 30.401863, 50.716618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684984, 30.336224, 50.690216>,  <31.448769, 30.296839, 50.674374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684984, 30.336224, 50.690216>,  <32.078678, 30.401863, 50.716618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684984, 30.336224, 50.690216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116873, 0.323270, 0.939062,
		-0.132764, 0.931970, -0.337352,
		-0.984233, -0.164101, -0.066003,
		31.389715, 30.286993, 50.670414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729671, 31.140528, 50.792931>,  <32.078678, 30.401863, 50.716618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729671, 31.140528, 50.792931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516212, 30.818565, 50.896736>,  <31.388138, 30.625389, 50.959019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516212, 30.818565, 50.896736>,  <31.729671, 31.140528, 50.792931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516212, 30.818565, 50.896736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111379, 0.371082, 0.921896,
		-0.838341, 0.463063, -0.287677,
		-0.533647, -0.804904, 0.259518,
		31.356119, 30.577093, 50.974590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778370, 31.606558, 51.300697>,  <31.729671, 31.140528, 50.792931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778370, 31.606558, 51.300697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981661, 31.935295, 51.403675>,  <32.103638, 32.132538, 51.465462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981661, 31.935295, 51.403675>,  <31.778370, 31.606558, 51.300697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981661, 31.935295, 51.403675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230991, 0.157896, -0.960058,
		-0.829666, 0.547397, -0.109591,
		0.508229, 0.821842, 0.257445,
		32.134129, 32.181847, 51.480907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615858, 32.182159, 50.805557>,  <31.778370, 31.606558, 51.300697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615858, 32.182159, 50.805557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970242, 32.275566, 50.965828>,  <32.182873, 32.331612, 51.061989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970242, 32.275566, 50.965828>,  <31.615858, 32.182159, 50.805557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970242, 32.275566, 50.965828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386443, 0.105907, -0.916212,
		-0.256389, 0.966567, 0.003588,
		0.885961, 0.233520, 0.400677,
		32.236031, 32.345623, 51.086033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878759, 32.748684, 50.476665>,  <31.615858, 32.182159, 50.805557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878759, 32.748684, 50.476665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219944, 32.618290, 50.639729>,  <32.424656, 32.540054, 50.737568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219944, 32.618290, 50.639729>,  <31.878759, 32.748684, 50.476665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219944, 32.618290, 50.639729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469522, 0.137968, -0.872074,
		0.228038, 0.935253, 0.270739,
		0.852964, -0.325984, 0.407660,
		32.475834, 32.520496, 50.762028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454407, 33.188953, 50.288849>,  <31.878759, 32.748684, 50.476665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454407, 33.188953, 50.288849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643738, 32.853233, 50.395836>,  <32.757336, 32.651802, 50.460026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643738, 32.853233, 50.395836>,  <32.454407, 33.188953, 50.288849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643738, 32.853233, 50.395836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638572, 0.117776, -0.760496,
		0.606782, 0.530760, 0.591700,
		0.473329, -0.839299, 0.267464,
		32.785736, 32.601444, 50.476074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159214, 33.402386, 50.390976>,  <32.454407, 33.188953, 50.288849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159214, 33.402386, 50.390976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104942, 33.017998, 50.294533>,  <33.072380, 32.787365, 50.236668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104942, 33.017998, 50.294533>,  <33.159214, 33.402386, 50.390976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104942, 33.017998, 50.294533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652954, 0.096302, -0.751250,
		0.745146, -0.259360, 0.614402,
		-0.135676, -0.960968, -0.241109,
		33.064240, 32.729706, 50.222198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691734, 33.250568, 50.003780>,  <33.159214, 33.402386, 50.390976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691734, 33.250568, 50.003780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507057, 32.900745, 49.944458>,  <33.396252, 32.690853, 49.908863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507057, 32.900745, 49.944458>,  <33.691734, 33.250568, 50.003780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507057, 32.900745, 49.944458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603882, -0.187420, -0.774726,
		0.649744, -0.447245, 0.614658,
		-0.461692, -0.874554, -0.148308,
		33.368549, 32.638378, 49.899967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242573, 32.781982, 49.932877>,  <33.691734, 33.250568, 50.003780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242573, 32.781982, 49.932877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917812, 32.620888, 49.763821>,  <33.722958, 32.524231, 49.662388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917812, 32.620888, 49.763821>,  <34.242573, 32.781982, 49.932877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917812, 32.620888, 49.763821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526236, -0.191407, -0.828516,
		0.252776, -0.895080, 0.367336,
		-0.811899, -0.402735, -0.422640,
		33.674244, 32.500069, 49.637028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483284, 32.112904, 49.669212>,  <34.242573, 32.781982, 49.932877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483284, 32.112904, 49.669212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149899, 32.211788, 49.471539>,  <33.949867, 32.271118, 49.352932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149899, 32.211788, 49.471539>,  <34.483284, 32.112904, 49.669212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149899, 32.211788, 49.471539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478463, -0.124513, -0.869235,
		-0.276416, -0.960929, -0.014504,
		-0.833467, 0.247210, -0.494186,
		33.899857, 32.285950, 49.323284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586803, 31.770559, 49.093468>,  <34.483284, 32.112904, 49.669212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586803, 31.770559, 49.093468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296337, 32.027298, 48.994907>,  <34.122059, 32.181339, 48.935772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296337, 32.027298, 48.994907>,  <34.586803, 31.770559, 49.093468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296337, 32.027298, 48.994907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263095, -0.071690, -0.962103,
		-0.635187, -0.763474, -0.116808,
		-0.726167, 0.641847, -0.246402,
		34.078487, 32.219852, 48.920986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244869, 31.444496, 48.517700>,  <34.586803, 31.770559, 49.093468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244869, 31.444496, 48.517700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159317, 31.835150, 48.509338>,  <34.107986, 32.069542, 48.504322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159317, 31.835150, 48.509338>,  <34.244869, 31.444496, 48.517700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159317, 31.835150, 48.509338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198789, 0.022559, -0.979783,
		-0.956420, -0.213711, -0.198970,
		-0.213879, 0.976636, -0.020908,
		34.095154, 32.128139, 48.503067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815746, 31.556648, 47.934429>,  <34.244869, 31.444496, 48.517700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815746, 31.556648, 47.934429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994675, 31.901100, 48.031059>,  <34.102032, 32.107773, 48.089039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994675, 31.901100, 48.031059>,  <33.815746, 31.556648, 47.934429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994675, 31.901100, 48.031059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118404, 0.210712, -0.970351,
		-0.886503, 0.462659, -0.007706,
		0.447318, 0.861131, 0.241578,
		34.128868, 32.159439, 48.103531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544563, 31.933104, 47.404060>,  <33.815746, 31.556648, 47.934429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544563, 31.933104, 47.404060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877487, 32.106255, 47.542553>,  <34.077244, 32.210144, 47.625648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877487, 32.106255, 47.542553>,  <33.544563, 31.933104, 47.404060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877487, 32.106255, 47.542553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327591, 0.119727, -0.937203,
		-0.447147, 0.893467, -0.042156,
		0.832312, 0.432878, 0.346228,
		34.127182, 32.236118, 47.646420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647209, 32.586552, 47.126831>,  <33.544563, 31.933104, 47.404060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647209, 32.586552, 47.126831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012363, 32.459732, 47.229683>,  <34.231457, 32.383640, 47.291393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012363, 32.459732, 47.229683>,  <33.647209, 32.586552, 47.126831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012363, 32.459732, 47.229683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313978, 0.142799, -0.938630,
		0.260877, 0.937596, 0.229907,
		0.912886, -0.317053, 0.257132,
		34.286228, 32.364616, 47.306824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137054, 33.077599, 46.985157>,  <33.647209, 32.586552, 47.126831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137054, 33.077599, 46.985157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333939, 32.730061, 46.963890>,  <34.452068, 32.521538, 46.951130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333939, 32.730061, 46.963890>,  <34.137054, 33.077599, 46.985157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333939, 32.730061, 46.963890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270404, 0.210675, -0.939413,
		0.827409, 0.448016, 0.338638,
		0.492215, -0.868848, -0.053169,
		34.481602, 32.469406, 46.947941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659760, 33.228859, 46.514793>,  <34.137054, 33.077599, 46.985157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659760, 33.228859, 46.514793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687992, 32.830006, 46.525692>,  <34.704933, 32.590694, 46.532230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687992, 32.830006, 46.525692>,  <34.659760, 33.228859, 46.514793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687992, 32.830006, 46.525692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395068, 0.002867, -0.918647,
		0.915936, 0.075604, 0.394138,
		0.070583, -0.997134, 0.027243,
		34.709167, 32.530865, 46.533863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296658, 33.125652, 46.174126>,  <34.659760, 33.228859, 46.514793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296658, 33.125652, 46.174126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117519, 32.769497, 46.141518>,  <35.010036, 32.555805, 46.121952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117519, 32.769497, 46.141518>,  <35.296658, 33.125652, 46.174126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117519, 32.769497, 46.141518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299469, -0.063464, -0.951993,
		0.842467, -0.450761, 0.295065,
		-0.447847, -0.890386, -0.081523,
		34.983166, 32.502380, 46.117062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655228, 32.533085, 45.713593>,  <35.296658, 33.125652, 46.174126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655228, 32.533085, 45.713593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287327, 32.378887, 45.743145>,  <35.066586, 32.286369, 45.760876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287327, 32.378887, 45.743145>,  <35.655228, 32.533085, 45.713593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287327, 32.378887, 45.743145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018959, -0.231652, -0.972614,
		0.392049, -0.893160, 0.220370,
		-0.919749, -0.385490, 0.073886,
		35.011402, 32.263241, 45.765312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633305, 31.997211, 45.172115>,  <35.655228, 32.533085, 45.713593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633305, 31.997211, 45.172115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253139, 32.102928, 45.237671>,  <35.025040, 32.166359, 45.277004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253139, 32.102928, 45.237671>,  <35.633305, 31.997211, 45.172115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253139, 32.102928, 45.237671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187629, -0.067050, -0.979949,
		-0.248006, -0.962109, 0.113314,
		-0.950415, 0.264294, 0.163891,
		34.968014, 32.182217, 45.286839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303112, 31.403828, 45.021461>,  <35.633305, 31.997211, 45.172115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303112, 31.403828, 45.021461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058365, 31.716984, 44.976376>,  <34.911518, 31.904877, 44.949326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058365, 31.716984, 44.976376>,  <35.303112, 31.403828, 45.021461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058365, 31.716984, 44.976376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111573, -0.055644, -0.992197,
		-0.783051, -0.619669, -0.053302,
		-0.611868, 0.782889, -0.112710,
		34.874805, 31.951851, 44.942562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844406, 31.187738, 44.523964>,  <35.303112, 31.403828, 45.021461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844406, 31.187738, 44.523964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792004, 31.584282, 44.526470>,  <34.760563, 31.822208, 44.527973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792004, 31.584282, 44.526470>,  <34.844406, 31.187738, 44.523964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792004, 31.584282, 44.526470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011414, 0.007832, -0.999904,
		-0.991315, -0.130927, -0.012341,
		-0.131011, 0.991361, 0.006269,
		34.752701, 31.881691, 44.528351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594345, 31.280182, 43.855091>,  <34.844406, 31.187738, 44.523964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594345, 31.280182, 43.855091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667347, 31.662073, 43.949055>,  <34.711147, 31.891209, 44.005432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667347, 31.662073, 43.949055>,  <34.594345, 31.280182, 43.855091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667347, 31.662073, 43.949055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257171, 0.184246, -0.948639,
		-0.948975, 0.233546, -0.211902,
		0.182509, 0.954730, 0.234906,
		34.722099, 31.948492, 44.019527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236851, 31.666088, 43.356075>,  <34.594345, 31.280182, 43.855091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236851, 31.666088, 43.356075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522652, 31.891119, 43.522442>,  <34.694134, 32.026138, 43.622261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522652, 31.891119, 43.522442>,  <34.236851, 31.666088, 43.356075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522652, 31.891119, 43.522442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292056, 0.300371, -0.908009,
		-0.635755, 0.770250, 0.050313,
		0.714506, 0.562577, 0.415919,
		34.737003, 32.059891, 43.647217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246254, 32.212460, 42.957253>,  <34.236851, 31.666088, 43.356075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246254, 32.212460, 42.957253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605991, 32.212120, 43.132145>,  <34.821835, 32.211918, 43.237080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605991, 32.212120, 43.132145>,  <34.246254, 32.212460, 42.957253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605991, 32.212120, 43.132145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411731, 0.338175, -0.846236,
		-0.147143, 0.941083, 0.304486,
		0.899348, -0.000849, 0.437233,
		34.875797, 32.211864, 43.263313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543617, 32.754513, 42.577927>,  <34.246254, 32.212460, 42.957253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543617, 32.754513, 42.577927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861000, 32.570229, 42.737011>,  <35.051430, 32.459660, 42.832462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861000, 32.570229, 42.737011>,  <34.543617, 32.754513, 42.577927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861000, 32.570229, 42.737011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488626, 0.092601, -0.867565,
		0.362866, 0.882708, 0.298589,
		0.793456, -0.460708, 0.397712,
		35.099037, 32.432014, 42.856323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130440, 33.181622, 42.392967>,  <34.543617, 32.754513, 42.577927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130440, 33.181622, 42.392967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277225, 32.818466, 42.474041>,  <35.365295, 32.600574, 42.522686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277225, 32.818466, 42.474041>,  <35.130440, 33.181622, 42.392967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277225, 32.818466, 42.474041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652952, 0.096198, -0.751265,
		0.662564, 0.408032, 0.628107,
		0.366963, -0.907885, 0.202688,
		35.387314, 32.546101, 42.534847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832855, 33.239449, 42.306381>,  <35.130440, 33.181622, 42.392967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832855, 33.239449, 42.306381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791698, 32.841576, 42.308571>,  <35.767006, 32.602852, 42.309883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791698, 32.841576, 42.308571>,  <35.832855, 33.239449, 42.306381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791698, 32.841576, 42.308571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732074, -0.079446, -0.676577,
		0.673411, -0.065607, 0.736351,
		-0.102888, -0.994678, 0.005470,
		35.760834, 32.543171, 42.310211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448009, 32.950089, 42.519131>,  <35.832855, 33.239449, 42.306381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448009, 32.950089, 42.519131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262165, 32.671432, 42.300472>,  <36.150658, 32.504238, 42.169277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262165, 32.671432, 42.300472>,  <36.448009, 32.950089, 42.519131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262165, 32.671432, 42.300472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775452, -0.022019, -0.631022,
		0.427561, -0.717080, 0.550443,
		-0.464613, -0.696643, -0.546647,
		36.122780, 32.462440, 42.136478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950066, 32.425957, 42.391277>,  <36.448009, 32.950089, 42.519131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950066, 32.425957, 42.391277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688469, 32.348053, 42.098877>,  <36.531509, 32.301311, 41.923435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688469, 32.348053, 42.098877>,  <36.950066, 32.425957, 42.391277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688469, 32.348053, 42.098877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753989, -0.089134, -0.650811,
		0.061595, -0.976793, 0.205141,
		-0.653993, -0.194761, -0.731001,
		36.492271, 32.289623, 41.879578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268074, 31.990366, 42.008163>,  <36.950066, 32.425957, 42.391277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268074, 31.990366, 42.008163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981831, 32.096649, 41.749767>,  <36.810085, 32.160419, 41.594730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981831, 32.096649, 41.749767>,  <37.268074, 31.990366, 42.008163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981831, 32.096649, 41.749767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671071, 0.004877, -0.741377,
		-0.193840, -0.964041, -0.181800,
		-0.715604, 0.265709, -0.645995,
		36.767151, 32.176361, 41.555969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217751, 31.421383, 41.620804>,  <37.268074, 31.990366, 42.008163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217751, 31.421383, 41.620804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087154, 31.753279, 41.439728>,  <37.008797, 31.952417, 41.331081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087154, 31.753279, 41.439728>,  <37.217751, 31.421383, 41.620804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087154, 31.753279, 41.439728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800221, -0.012241, -0.599580,
		-0.503038, -0.558013, -0.659980,
		-0.326494, 0.829742, -0.452692,
		36.989204, 32.002201, 41.303921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320950, 31.273623, 40.907974>,  <37.217751, 31.421383, 41.620804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320950, 31.273623, 40.907974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297001, 31.672020, 40.934536>,  <37.282631, 31.911058, 40.950474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297001, 31.672020, 40.934536>,  <37.320950, 31.273623, 40.907974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297001, 31.672020, 40.934536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717728, 0.089190, -0.690588,
		-0.693745, 0.006315, -0.720193,
		-0.059873, 0.995994, 0.066408,
		37.279037, 31.970818, 40.954460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243130, 31.543074, 40.184875>,  <37.320950, 31.273623, 40.907974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243130, 31.543074, 40.184875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390450, 31.834885, 40.415405>,  <37.478840, 32.009972, 40.553722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390450, 31.834885, 40.415405>,  <37.243130, 31.543074, 40.184875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390450, 31.834885, 40.415405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692200, 0.198661, -0.693825,
		-0.620656, 0.654466, -0.431811,
		0.368301, 0.729526, 0.576322,
		37.500938, 32.053741, 40.588303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282143, 32.010670, 39.718269>,  <37.243130, 31.543074, 40.184875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282143, 32.010670, 39.718269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514103, 32.118172, 40.025902>,  <37.653278, 32.182674, 40.210480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514103, 32.118172, 40.025902>,  <37.282143, 32.010670, 39.718269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514103, 32.118172, 40.025902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677809, 0.364580, -0.638480,
		-0.451988, 0.891544, 0.029254,
		0.579898, 0.268757, 0.769082,
		37.688072, 32.198799, 40.256626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343227, 32.783062, 39.641586>,  <37.282143, 32.010670, 39.718269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343227, 32.783062, 39.641586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649628, 32.649071, 39.861053>,  <37.833466, 32.568676, 39.992733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649628, 32.649071, 39.861053>,  <37.343227, 32.783062, 39.641586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649628, 32.649071, 39.861053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623049, 0.597031, -0.505335,
		-0.158297, 0.728934, 0.666031,
		0.765997, -0.334978, 0.548670,
		37.879425, 32.548576, 40.025654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787254, 33.267429, 39.709049>,  <37.343227, 32.783062, 39.641586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787254, 33.267429, 39.709049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021111, 32.974747, 39.849220>,  <38.161423, 32.799137, 39.933323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021111, 32.974747, 39.849220>,  <37.787254, 33.267429, 39.709049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021111, 32.974747, 39.849220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806869, 0.479349, -0.345235,
		0.084635, 0.484585, 0.870640,
		0.584636, -0.731711, 0.350427,
		38.196503, 32.755234, 39.954350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423126, 33.694153, 40.045292>,  <37.787254, 33.267429, 39.709049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423126, 33.694153, 40.045292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477036, 33.312668, 39.937759>,  <38.509380, 33.083778, 39.873238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477036, 33.312668, 39.937759>,  <38.423126, 33.694153, 40.045292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477036, 33.312668, 39.937759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922706, 0.219691, -0.316780,
		0.361177, -0.205361, 0.909603,
		0.134777, -0.953710, -0.268835,
		38.517467, 33.026554, 39.857109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202118, 33.503998, 40.321014>,  <38.423126, 33.694153, 40.045292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202118, 33.503998, 40.321014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063801, 33.278263, 40.021160>,  <38.980812, 33.142822, 39.841248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063801, 33.278263, 40.021160>,  <39.202118, 33.503998, 40.321014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063801, 33.278263, 40.021160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801336, 0.238022, -0.548822,
		0.488150, -0.790487, 0.369918,
		-0.345788, -0.564336, -0.749636,
		38.960064, 33.108963, 39.796268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764698, 33.373169, 40.034958>,  <39.202118, 33.503998, 40.321014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764698, 33.373169, 40.034958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516628, 33.244480, 39.748775>,  <39.367786, 33.167267, 39.577065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516628, 33.244480, 39.748775>,  <39.764698, 33.373169, 40.034958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516628, 33.244480, 39.748775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713112, 0.148836, -0.685069,
		0.326891, -0.935061, 0.137123,
		-0.620173, -0.321727, -0.715456,
		39.330578, 33.147961, 39.534138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196609, 33.121529, 39.462967>,  <39.764698, 33.373169, 40.034958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196609, 33.121529, 39.462967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843391, 33.159466, 39.279125>,  <39.631462, 33.182228, 39.168819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843391, 33.159466, 39.279125>,  <40.196609, 33.121529, 39.462967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843391, 33.159466, 39.279125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469013, 0.144515, -0.871288,
		-0.016219, -0.984947, -0.172097,
		-0.883043, 0.094847, -0.459609,
		39.578480, 33.187920, 39.141243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219723, 32.743298, 38.791836>,  <40.196609, 33.121529, 39.462967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219723, 32.743298, 38.791836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963032, 33.049332, 38.770584>,  <39.809017, 33.232952, 38.757832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963032, 33.049332, 38.770584>,  <40.219723, 32.743298, 38.791836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963032, 33.049332, 38.770584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416369, 0.289383, -0.861913,
		-0.644067, -0.575235, -0.504265,
		-0.641728, 0.765090, -0.053128,
		39.770512, 33.278858, 38.754646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006920, 32.743782, 38.119663>,  <40.219723, 32.743298, 38.791836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006920, 32.743782, 38.119663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957508, 33.119198, 38.248592>,  <39.927860, 33.344448, 38.325951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957508, 33.119198, 38.248592>,  <40.006920, 32.743782, 38.119663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957508, 33.119198, 38.248592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470399, 0.341380, -0.813748,
		-0.873765, 0.051099, -0.483656,
		-0.123529, 0.938536, 0.322322,
		39.920448, 33.400757, 38.345287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602505, 33.223522, 37.682316>,  <40.006920, 32.743782, 38.119663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602505, 33.223522, 37.682316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897831, 33.394272, 37.891186>,  <40.075027, 33.496723, 38.016510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897831, 33.394272, 37.891186>,  <39.602505, 33.223522, 37.682316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897831, 33.394272, 37.891186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391747, 0.358813, -0.847224,
		-0.549025, 0.830078, 0.097688,
		0.738313, 0.426878, 0.522177,
		40.119324, 33.522335, 38.047840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615868, 33.917133, 37.495651>,  <39.602505, 33.223522, 37.682316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615868, 33.917133, 37.495651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977497, 33.806175, 37.625694>,  <40.194477, 33.739601, 37.703720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977497, 33.806175, 37.625694>,  <39.615868, 33.917133, 37.495651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977497, 33.806175, 37.625694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410456, 0.351704, -0.841326,
		0.119038, 0.894067, 0.431827,
		0.904077, -0.277395, 0.325109,
		40.248722, 33.722958, 37.723228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075932, 34.481667, 37.320877>,  <39.615868, 33.917133, 37.495651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075932, 34.481667, 37.320877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325245, 34.181973, 37.410465>,  <40.474834, 34.002155, 37.464218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325245, 34.181973, 37.410465>,  <40.075932, 34.481667, 37.320877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325245, 34.181973, 37.410465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645016, 0.330640, -0.688935,
		0.442122, 0.573866, 0.689352,
		0.623284, -0.749236, 0.223970,
		40.512230, 33.957203, 37.477657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659718, 34.783638, 37.629494>,  <40.075932, 34.481667, 37.320877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659718, 34.783638, 37.629494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778969, 34.443600, 37.455845>,  <40.850517, 34.239578, 37.351654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778969, 34.443600, 37.455845>,  <40.659718, 34.783638, 37.629494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778969, 34.443600, 37.455845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785111, 0.477054, -0.394994,
		0.542883, -0.223080, 0.809638,
		0.298126, -0.850092, -0.434126,
		40.868408, 34.188572, 37.325607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334011, 34.691093, 37.687401>,  <40.659718, 34.783638, 37.629494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334011, 34.691093, 37.687401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252892, 34.528759, 37.330936>,  <41.204220, 34.431358, 37.117058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252892, 34.528759, 37.330936>,  <41.334011, 34.691093, 37.687401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252892, 34.528759, 37.330936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790404, 0.469380, -0.393630,
		0.578043, -0.784205, 0.225586,
		-0.202801, -0.405839, -0.891160,
		41.192051, 34.407009, 37.063587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822750, 34.112045, 37.713718>,  <41.334011, 34.691093, 37.687401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822750, 34.112045, 37.713718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155136, 34.192955, 37.506420>,  <42.354568, 34.241501, 37.382042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155136, 34.192955, 37.506420>,  <41.822750, 34.112045, 37.713718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155136, 34.192955, 37.506420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447293, 0.310990, 0.838579,
		0.330789, -0.928640, 0.167949,
		0.830968, 0.202270, -0.518246,
		42.404427, 34.253635, 37.350945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067936, 33.446712, 37.588627>,  <41.822750, 34.112045, 37.713718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067936, 33.446712, 37.588627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322994, 33.514946, 37.288143>,  <42.476028, 33.555885, 37.107853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322994, 33.514946, 37.288143>,  <42.067936, 33.446712, 37.588627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322994, 33.514946, 37.288143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535604, -0.799059, 0.273191,
		-0.553656, -0.576548, -0.600881,
		0.637647, 0.170580, -0.751205,
		42.514290, 33.566120, 37.062782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971294, 32.956715, 36.979336>,  <42.067936, 33.446712, 37.588627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971294, 32.956715, 36.979336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346161, 33.093815, 37.005390>,  <42.571079, 33.176075, 37.021023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346161, 33.093815, 37.005390>,  <41.971294, 32.956715, 36.979336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346161, 33.093815, 37.005390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344752, -0.938434, -0.022082,
		0.053558, 0.043150, -0.997632,
		0.937165, 0.342753, 0.065137,
		42.627312, 33.196640, 37.024933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349907, 32.599319, 36.480507>,  <41.971294, 32.956715, 36.979336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349907, 32.599319, 36.480507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624413, 32.734509, 36.738132>,  <42.789116, 32.815624, 36.892708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624413, 32.734509, 36.738132>,  <42.349907, 32.599319, 36.480507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624413, 32.734509, 36.738132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318059, -0.935781, 0.152159,
		0.654127, 0.100429, -0.749688,
		0.686263, 0.337976, 0.644062,
		42.830292, 32.835903, 36.931351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001114, 32.131092, 36.388424>,  <42.349907, 32.599319, 36.480507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001114, 32.131092, 36.388424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046921, 32.314842, 36.740757>,  <43.074406, 32.425091, 36.952156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046921, 32.314842, 36.740757>,  <43.001114, 32.131092, 36.388424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046921, 32.314842, 36.740757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230095, -0.874817, 0.426322,
		0.966406, 0.153853, -0.205884,
		0.114520, 0.459373, 0.880830,
		43.081276, 32.452656, 37.005005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573696, 31.779762, 36.660503>,  <43.001114, 32.131092, 36.388424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.573696, 31.779762, 36.660503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401596, 31.970015, 36.967400>,  <43.298336, 32.084167, 37.151539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401596, 31.970015, 36.967400>,  <43.573696, 31.779762, 36.660503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401596, 31.970015, 36.967400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266253, -0.745258, 0.611310,
		0.862553, 0.467295, 0.194006,
		-0.430246, 0.475632, 0.767243,
		43.272522, 32.112705, 37.197571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076317, 31.647974, 37.160316>,  <43.573696, 31.779762, 36.660503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076317, 31.647974, 37.160316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754021, 31.746820, 37.375618>,  <43.560642, 31.806129, 37.504799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754021, 31.746820, 37.375618>,  <44.076317, 31.647974, 37.160316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754021, 31.746820, 37.375618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016176, -0.899278, 0.437079,
		0.592054, 0.360877, 0.720583,
		-0.805736, 0.247118, 0.538259,
		43.512299, 31.820955, 37.537094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175407, 31.447166, 37.871243>,  <44.076317, 31.647974, 37.160316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.175407, 31.447166, 37.871243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777481, 31.479193, 37.846165>,  <43.538727, 31.498409, 37.831120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777481, 31.479193, 37.846165>,  <44.175407, 31.447166, 37.871243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777481, 31.479193, 37.846165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101575, -0.811729, 0.575133,
		-0.004841, 0.578519, 0.815654,
		-0.994816, 0.080066, -0.062693,
		43.479034, 31.503212, 37.827358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934227, 31.344442, 38.588257>,  <44.175407, 31.447166, 37.871243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934227, 31.344442, 38.588257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634167, 31.255577, 38.339127>,  <43.454128, 31.202257, 38.189648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634167, 31.255577, 38.339127>,  <43.934227, 31.344442, 38.588257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634167, 31.255577, 38.339127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349251, -0.666676, 0.658458,
		-0.561508, 0.711467, 0.422520,
		-0.750155, -0.222164, -0.622825,
		43.409119, 31.188929, 38.152279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365108, 31.299431, 39.009010>,  <43.934227, 31.344442, 38.588257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365108, 31.299431, 39.009010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257164, 31.072821, 38.697567>,  <43.192398, 30.936855, 38.510700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257164, 31.072821, 38.697567>,  <43.365108, 31.299431, 39.009010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257164, 31.072821, 38.697567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443912, -0.644352, 0.622697,
		-0.854470, 0.513672, -0.077604,
		-0.269858, -0.566525, -0.778605,
		43.176208, 30.902863, 38.463985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722965, 30.936581, 39.168556>,  <43.365108, 31.299431, 39.009010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722965, 30.936581, 39.168556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897816, 30.726685, 38.876373>,  <43.002724, 30.600748, 38.701061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897816, 30.726685, 38.876373>,  <42.722965, 30.936581, 39.168556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897816, 30.726685, 38.876373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332314, -0.848921, 0.410974,
		-0.835755, 0.063093, -0.545465,
		0.437127, -0.524740, -0.730457,
		43.028954, 30.569263, 38.657234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402740, 30.281086, 39.191563>,  <42.722965, 30.936581, 39.168556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402740, 30.281086, 39.191563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714031, 30.194342, 38.955822>,  <42.900806, 30.142296, 38.814377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714031, 30.194342, 38.955822>,  <42.402740, 30.281086, 39.191563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714031, 30.194342, 38.955822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020261, -0.946664, 0.321584,
		-0.627655, -0.238325, -0.741114,
		0.778228, -0.216859, -0.589350,
		42.947498, 30.129284, 38.779018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293003, 29.633581, 38.851448>,  <42.402740, 30.281086, 39.191563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293003, 29.633581, 38.851448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691795, 29.664461, 38.848167>,  <42.931072, 29.682989, 38.846199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691795, 29.664461, 38.848167>,  <42.293003, 29.633581, 38.851448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691795, 29.664461, 38.848167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074537, -0.922270, 0.379291,
		0.021717, -0.378758, -0.925241,
		0.996982, 0.077202, -0.008203,
		42.990891, 29.687622, 38.845707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528069, 29.055513, 38.550068>,  <42.293003, 29.633581, 38.851448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528069, 29.055513, 38.550068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849743, 29.176516, 38.754723>,  <43.042747, 29.249117, 38.877514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849743, 29.176516, 38.754723>,  <42.528069, 29.055513, 38.550068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849743, 29.176516, 38.754723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113756, -0.923217, 0.367055,
		0.583388, -0.236979, -0.776852,
		0.804188, 0.302508, 0.511636,
		43.091000, 29.267267, 38.908215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059277, 28.523771, 38.569157>,  <42.528069, 29.055513, 38.550068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059277, 28.523771, 38.569157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180973, 28.739168, 38.883472>,  <43.253990, 28.868406, 39.072060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180973, 28.739168, 38.883472>,  <43.059277, 28.523771, 38.569157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180973, 28.739168, 38.883472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214595, -0.842433, 0.494223,
		0.928108, 0.018262, -0.371862,
		0.304243, 0.538492, 0.785788,
		43.272247, 28.900715, 39.119209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483742, 28.064594, 38.875408>,  <43.059277, 28.523771, 38.569157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483742, 28.064594, 38.875408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414055, 28.344051, 39.152981>,  <43.372242, 28.511726, 39.319527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414055, 28.344051, 39.152981>,  <43.483742, 28.064594, 38.875408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414055, 28.344051, 39.152981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014437, -0.702823, 0.711218,
		0.984602, 0.133923, 0.112356,
		-0.174215, 0.698644, 0.693935,
		43.361790, 28.553644, 39.361160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.945293, 27.966200, 39.360851>,  <43.483742, 28.064594, 38.875408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.945293, 27.966200, 39.360851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665543, 28.183344, 39.546825>,  <43.497692, 28.313631, 39.658409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665543, 28.183344, 39.546825>,  <43.945293, 27.966200, 39.360851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665543, 28.183344, 39.546825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005708, -0.654711, 0.755857,
		0.714726, 0.525978, 0.460991,
		-0.699381, 0.542862, 0.464937,
		43.455727, 28.346203, 39.686306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141376, 28.061308, 39.974609>,  <43.945293, 27.966200, 39.360851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141376, 28.061308, 39.974609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751343, 28.114433, 40.045677>,  <43.517323, 28.146309, 40.088318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751343, 28.114433, 40.045677>,  <44.141376, 28.061308, 39.974609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751343, 28.114433, 40.045677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039840, -0.683067, 0.729268,
		0.218217, 0.718178, 0.660758,
		-0.975087, 0.132814, 0.177669,
		43.458817, 28.154278, 40.098976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074505, 28.053968, 40.727123>,  <44.141376, 28.061308, 39.974609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074505, 28.053968, 40.727123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735279, 27.940023, 40.548401>,  <43.531742, 27.871656, 40.441166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735279, 27.940023, 40.548401>,  <44.074505, 28.053968, 40.727123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735279, 27.940023, 40.548401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066807, -0.778998, 0.623458,
		-0.525663, 0.558583, 0.641610,
		-0.848065, -0.284865, -0.446808,
		43.480858, 27.854565, 40.414360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714470, 27.743275, 41.248829>,  <44.074505, 28.053968, 40.727123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714470, 27.743275, 41.248829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527740, 27.615828, 40.918846>,  <43.415703, 27.539360, 40.720856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527740, 27.615828, 40.918846>,  <43.714470, 27.743275, 41.248829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527740, 27.615828, 40.918846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196283, -0.872244, 0.447953,
		-0.862290, 0.371042, 0.344649,
		-0.466828, -0.318617, -0.824957,
		43.387691, 27.520243, 40.671360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129219, 27.470888, 41.496632>,  <43.714470, 27.743275, 41.248829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129219, 27.470888, 41.496632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183140, 27.313725, 41.132774>,  <43.215492, 27.219427, 40.914459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183140, 27.313725, 41.132774>,  <43.129219, 27.470888, 41.496632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183140, 27.313725, 41.132774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079169, -0.919359, 0.385373,
		-0.987705, 0.020066, -0.155039,
		0.134803, -0.392909, -0.909643,
		43.223579, 27.195852, 40.859882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689167, 26.943480, 41.620171>,  <43.129219, 27.470888, 41.496632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689167, 26.943480, 41.620171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934422, 26.908125, 41.306164>,  <43.081573, 26.886913, 41.117760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934422, 26.908125, 41.306164>,  <42.689167, 26.943480, 41.620171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934422, 26.908125, 41.306164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159992, -0.959235, 0.232961,
		-0.773609, -0.268433, -0.573998,
		0.613133, -0.088385, -0.785020,
		43.118362, 26.881609, 41.070660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339165, 26.664867, 41.663403>,  <42.689167, 26.943480, 41.620171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339165, 26.664867, 41.663403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346096, 26.456623, 42.004848>,  <43.350254, 26.331676, 42.209717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346096, 26.456623, 42.004848>,  <43.339165, 26.664867, 41.663403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346096, 26.456623, 42.004848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800432, -0.504394, -0.323876,
		0.599173, 0.688877, 0.407972,
		0.017332, -0.520611, 0.853618,
		43.351295, 26.300440, 42.260933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989960, 26.787767, 41.961983>,  <43.339165, 26.664867, 41.663403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989960, 26.787767, 41.961983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.833729, 26.441145, 42.086254>,  <43.739990, 26.233171, 42.160816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.833729, 26.441145, 42.086254>,  <43.989960, 26.787767, 41.961983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.833729, 26.441145, 42.086254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782616, -0.490274, -0.383594,
		0.484726, 0.093321, 0.869673,
		-0.390581, -0.866558, 0.310683,
		43.716553, 26.181177, 42.179459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438374, 26.507776, 42.501816>,  <43.989960, 26.787767, 41.961983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438374, 26.507776, 42.501816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243347, 26.232191, 42.287300>,  <44.126331, 26.066841, 42.158592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243347, 26.232191, 42.287300>,  <44.438374, 26.507776, 42.501816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243347, 26.232191, 42.287300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872936, -0.373380, -0.313958,
		0.016065, -0.621224, 0.783468,
		-0.487570, -0.688962, -0.536291,
		44.097076, 26.025503, 42.126411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.864933, 25.871378, 42.583748>,  <44.438374, 26.507776, 42.501816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.864933, 25.871378, 42.583748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623367, 25.839981, 42.266479>,  <44.478428, 25.821142, 42.076118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623367, 25.839981, 42.266479>,  <44.864933, 25.871378, 42.583748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.623367, 25.839981, 42.266479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786183, -0.222409, -0.576585,
		-0.131150, -0.971789, 0.196028,
		-0.603917, -0.078495, -0.793173,
		44.442192, 25.816433, 42.028526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437557, 26.440527, 42.633595>,  <44.864933, 25.871378, 42.583748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437557, 26.440527, 42.633595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.798660, 26.612448, 42.626778>,  <46.015324, 26.715601, 42.622688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.798660, 26.612448, 42.626778>,  <45.437557, 26.440527, 42.633595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.798660, 26.612448, 42.626778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417110, 0.865049, -0.278764,
		-0.105068, 0.258768, 0.960208,
		0.902762, 0.429802, -0.017046,
		46.069489, 26.741388, 42.621662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.016598, 26.926815, 42.334103>,  <45.437557, 26.440527, 42.633595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.016598, 26.926815, 42.334103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.397198, 27.018847, 42.415794>,  <45.625557, 27.074066, 42.464809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.397198, 27.018847, 42.415794>,  <45.016598, 26.926815, 42.334103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.397198, 27.018847, 42.415794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202365, 0.968090, -0.147815,
		-0.231725, 0.099316, 0.967698,
		0.951500, 0.230081, 0.204233,
		45.682648, 27.087872, 42.477066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.093372, 27.611387, 42.708515>,  <45.016598, 26.926815, 42.334103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.093372, 27.611387, 42.708515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.446632, 27.537481, 42.536045>,  <45.658588, 27.493137, 42.432564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.446632, 27.537481, 42.536045>,  <45.093372, 27.611387, 42.708515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.446632, 27.537481, 42.536045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031507, 0.940452, -0.338463,
		0.468037, 0.285328, 0.836378,
		0.883147, -0.184766, -0.431177,
		45.711575, 27.482052, 42.406693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.658886, 28.113527, 42.943913>,  <45.093372, 27.611387, 42.708515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.658886, 28.113527, 42.943913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.691326, 27.977787, 42.569050>,  <45.710789, 27.896343, 42.344131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.691326, 27.977787, 42.569050>,  <45.658886, 28.113527, 42.943913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.691326, 27.977787, 42.569050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268550, 0.912922, -0.307337,
		0.959846, -0.226749, 0.165168,
		0.081097, -0.339351, -0.937157,
		45.715656, 27.875982, 42.287903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.166782, 28.581491, 42.605549>,  <45.658886, 28.113527, 42.943913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.166782, 28.581491, 42.605549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.960976, 28.397299, 42.316208>,  <45.837494, 28.286783, 42.142605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.960976, 28.397299, 42.316208>,  <46.166782, 28.581491, 42.605549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.960976, 28.397299, 42.316208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113145, 0.799738, -0.589591,
		0.849987, -0.385194, -0.359371,
		-0.514510, -0.460484, -0.723349,
		45.806622, 28.259153, 42.099205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.652130, 28.720373, 42.020504>,  <46.166782, 28.581491, 42.605549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.652130, 28.720373, 42.020504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.269230, 28.643902, 41.933681>,  <46.039490, 28.598019, 41.881588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.269230, 28.643902, 41.933681>,  <46.652130, 28.720373, 42.020504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.269230, 28.643902, 41.933681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021963, 0.700215, -0.713594,
		0.288409, -0.687859, -0.666086,
		-0.957256, -0.191178, -0.217055,
		45.982052, 28.586548, 41.868565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.763470, 28.549086, 41.380474>,  <46.652130, 28.720373, 42.020504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.763470, 28.549086, 41.380474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.389645, 28.669115, 41.456951>,  <46.165352, 28.741133, 41.502838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.389645, 28.669115, 41.456951>,  <46.763470, 28.549086, 41.380474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.389645, 28.669115, 41.456951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020223, 0.581265, -0.813463,
		-0.355232, -0.756363, -0.549295,
		-0.934560, 0.300076, 0.191188,
		46.109276, 28.759138, 41.514309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.405415, 28.470158, 40.754604>,  <46.763470, 28.549086, 41.380474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.405415, 28.470158, 40.754604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.149475, 28.702139, 40.956295>,  <45.995911, 28.841328, 41.077309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.149475, 28.702139, 40.956295>,  <46.405415, 28.470158, 40.754604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.149475, 28.702139, 40.956295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061034, 0.615700, -0.785613,
		-0.766071, -0.533451, -0.358560,
		-0.639852, 0.579951, 0.504228,
		45.957520, 28.876123, 41.107563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.915901, 28.626577, 40.247162>,  <46.405415, 28.470158, 40.754604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.915901, 28.626577, 40.247162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.887520, 28.909916, 40.528076>,  <45.870491, 29.079920, 40.696625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.887520, 28.909916, 40.528076>,  <45.915901, 28.626577, 40.247162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.887520, 28.909916, 40.528076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012763, 0.704650, -0.709440,
		-0.997398, -0.041376, -0.059040,
		-0.070956, 0.708347, 0.702289,
		45.866234, 29.122419, 40.738762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352962, 29.049862, 40.031082>,  <45.915901, 28.626577, 40.247162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352962, 29.049862, 40.031082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607513, 29.258226, 40.258656>,  <45.760242, 29.383245, 40.395199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607513, 29.258226, 40.258656>,  <45.352962, 29.049862, 40.031082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607513, 29.258226, 40.258656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091539, 0.681339, -0.726222,
		-0.765930, 0.514228, 0.385903,
		0.636374, 0.520910, 0.568930,
		45.798428, 29.414499, 40.429333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152706, 29.747267, 39.789074>,  <45.352962, 29.049862, 40.031082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152706, 29.747267, 39.789074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494419, 29.797373, 39.990868>,  <45.699448, 29.827436, 40.111942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494419, 29.797373, 39.990868>,  <45.152706, 29.747267, 39.789074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.494419, 29.797373, 39.990868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229145, 0.780385, -0.581800,
		-0.466571, 0.612624, 0.637968,
		0.854286, 0.125264, 0.504485,
		45.750706, 29.834951, 40.142212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274094, 30.554596, 40.007866>,  <45.152706, 29.747267, 39.789074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274094, 30.554596, 40.007866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.636806, 30.386019, 40.003242>,  <45.854435, 30.284872, 40.000469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.636806, 30.386019, 40.003242>,  <45.274094, 30.554596, 40.007866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.636806, 30.386019, 40.003242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350988, 0.769806, -0.533110,
		0.233570, 0.479358, 0.845967,
		0.906781, -0.421443, -0.011555,
		45.908840, 30.259586, 39.999775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.734013, 31.131311, 39.971424>,  <45.274094, 30.554596, 40.007866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.734013, 31.131311, 39.971424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.993271, 30.835615, 39.898281>,  <46.148827, 30.658197, 39.854393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.993271, 30.835615, 39.898281>,  <45.734013, 31.131311, 39.971424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.993271, 30.835615, 39.898281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620479, 0.651863, -0.435981,
		0.441495, 0.169116, 0.881182,
		0.648142, -0.739239, -0.182862,
		46.187714, 30.613844, 39.843422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.405533, 31.292034, 40.313450>,  <45.734013, 31.131311, 39.971424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.405533, 31.292034, 40.313450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452866, 31.042305, 40.004589>,  <46.481266, 30.892467, 39.819271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452866, 31.042305, 40.004589>,  <46.405533, 31.292034, 40.313450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452866, 31.042305, 40.004589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550522, 0.688411, -0.472246,
		0.826391, -0.369203, 0.425166,
		0.118334, -0.624324, -0.772151,
		46.488365, 30.855007, 39.772945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.035130, 31.548626, 39.963940>,  <46.405533, 31.292034, 40.313450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.035130, 31.548626, 39.963940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.846642, 31.329586, 39.687366>,  <46.733547, 31.198162, 39.521423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.846642, 31.329586, 39.687366>,  <47.035130, 31.548626, 39.963940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.846642, 31.329586, 39.687366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285064, 0.647300, -0.706924,
		0.834678, -0.530222, -0.148922,
		-0.471224, -0.547601, -0.691434,
		46.705273, 31.165306, 39.479935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.472424, 31.584848, 39.374012>,  <47.035130, 31.548626, 39.963940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.472424, 31.584848, 39.374012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.104435, 31.493015, 39.246918>,  <46.883644, 31.437916, 39.170662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.104435, 31.493015, 39.246918>,  <47.472424, 31.584848, 39.374012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.104435, 31.493015, 39.246918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042801, 0.746872, -0.663589,
		0.389652, -0.624079, -0.677271,
		-0.919967, -0.229581, -0.317732,
		46.828445, 31.424141, 39.151600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.534294, 31.735846, 38.687664>,  <47.472424, 31.584848, 39.374012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.534294, 31.735846, 38.687664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.136524, 31.703033, 38.714157>,  <46.897861, 31.683346, 38.730053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.136524, 31.703033, 38.714157>,  <47.534294, 31.735846, 38.687664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.136524, 31.703033, 38.714157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105108, 0.721949, -0.683917,
		0.008285, -0.687067, -0.726547,
		-0.994426, -0.082032, 0.066235,
		46.838196, 31.678423, 38.734028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.196224, 31.533873, 37.990356>,  <47.534294, 31.735846, 38.687664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.196224, 31.533873, 37.990356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942940, 31.737501, 38.223557>,  <46.790970, 31.859678, 38.363476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942940, 31.737501, 38.223557>,  <47.196224, 31.533873, 37.990356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.942940, 31.737501, 38.223557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091869, 0.698491, -0.709698,
		-0.768510, -0.502946, -0.395522,
		-0.633208, 0.509073, 0.583002,
		46.752975, 31.890223, 38.398457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.580067, 31.677753, 37.596107>,  <47.196224, 31.533873, 37.990356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.580067, 31.677753, 37.596107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.541252, 31.939178, 37.896358>,  <46.517963, 32.096035, 38.076508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.541252, 31.939178, 37.896358>,  <46.580067, 31.677753, 37.596107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.541252, 31.939178, 37.896358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309617, 0.696943, -0.646844,
		-0.945897, -0.295174, 0.134726,
		-0.097035, 0.653562, 0.750627,
		46.512142, 32.135246, 38.121548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.866112, 31.906670, 37.630466>,  <46.580067, 31.677753, 37.596107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.866112, 31.906670, 37.630466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.076859, 32.201263, 37.800171>,  <46.203308, 32.378021, 37.901993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.076859, 32.201263, 37.800171>,  <45.866112, 31.906670, 37.630466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.076859, 32.201263, 37.800171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394546, 0.654050, -0.645409,
		-0.752824, 0.172653, 0.635175,
		0.526868, 0.736485, 0.424265,
		46.234921, 32.422211, 37.927452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.308392, 32.424370, 37.833679>,  <45.866112, 31.906670, 37.630466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.308392, 32.424370, 37.833679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644035, 32.639294, 37.867596>,  <45.845421, 32.768246, 37.887947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644035, 32.639294, 37.867596>,  <45.308392, 32.424370, 37.833679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644035, 32.639294, 37.867596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347373, 0.649271, -0.676594,
		-0.418594, 0.538283, 0.731458,
		0.839113, 0.537307, 0.084796,
		45.895771, 32.800488, 37.893036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169464, 33.084335, 38.078163>,  <45.308392, 32.424370, 37.833679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.169464, 33.084335, 38.078163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515739, 33.137295, 37.885059>,  <45.723507, 33.169071, 37.769199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515739, 33.137295, 37.885059>,  <45.169464, 33.084335, 38.078163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.515739, 33.137295, 37.885059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468135, 0.555669, -0.687082,
		0.177286, 0.820795, 0.543016,
		0.865690, 0.132395, -0.482755,
		45.775448, 33.177013, 37.740234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.126217, 33.713623, 37.868961>,  <45.169464, 33.084335, 38.078163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.126217, 33.713623, 37.868961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394413, 33.544331, 37.625217>,  <45.555328, 33.442757, 37.478970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394413, 33.544331, 37.625217>,  <45.126217, 33.713623, 37.868961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.394413, 33.544331, 37.625217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407787, 0.475914, -0.779240,
		0.619803, 0.770961, 0.146506,
		0.670488, -0.423232, -0.609361,
		45.595558, 33.417362, 37.442410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336880, 34.299366, 37.398197>,  <45.126217, 33.713623, 37.868961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.336880, 34.299366, 37.398197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.461926, 33.969299, 37.209991>,  <45.536953, 33.771259, 37.097069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.461926, 33.969299, 37.209991>,  <45.336880, 34.299366, 37.398197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.461926, 33.969299, 37.209991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243991, 0.408961, -0.879329,
		0.918010, 0.389688, -0.073487,
		0.312611, -0.825163, -0.470510,
		45.555710, 33.721752, 37.068840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.799362, 34.565186, 36.865086>,  <45.336880, 34.299366, 37.398197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.799362, 34.565186, 36.865086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695362, 34.205677, 36.723881>,  <45.632961, 33.989971, 36.639156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695362, 34.205677, 36.723881>,  <45.799362, 34.565186, 36.865086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.695362, 34.205677, 36.723881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464824, 0.436933, -0.770083,
		0.846368, -0.036134, -0.531371,
		-0.260000, -0.898768, -0.353011,
		45.617363, 33.936047, 36.617977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.883785, 34.728653, 36.191376>,  <45.799362, 34.565186, 36.865086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.883785, 34.728653, 36.191376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663300, 34.395096, 36.202610>,  <45.531006, 34.194962, 36.209351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663300, 34.395096, 36.202610>,  <45.883785, 34.728653, 36.191376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.663300, 34.395096, 36.202610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577751, 0.357182, -0.733911,
		0.601968, -0.420772, -0.678665,
		-0.551216, -0.833889, 0.028089,
		45.497936, 34.144928, 36.211037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.867599, 34.413101, 35.570656>,  <45.883785, 34.728653, 36.191376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.867599, 34.413101, 35.570656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533016, 34.247673, 35.714489>,  <45.332268, 34.148415, 35.800789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533016, 34.247673, 35.714489>,  <45.867599, 34.413101, 35.570656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.533016, 34.247673, 35.714489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522530, 0.404018, -0.750821,
		0.165240, -0.815921, -0.554047,
		-0.836456, -0.413572, 0.359583,
		45.282078, 34.123600, 35.822365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.580360, 34.147343, 35.549664>,  <45.867599, 34.413101, 35.570656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.580360, 34.147343, 35.549664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.583603, 34.545506, 35.511509>,  <46.585548, 34.784405, 35.488617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.583603, 34.545506, 35.511509>,  <46.580360, 34.147343, 35.549664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.583603, 34.545506, 35.511509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913017, -0.046277, -0.405289,
		-0.407842, -0.083806, -0.909198,
		0.008109, 0.995407, -0.095390,
		46.586037, 34.844128, 35.482891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.552040, 34.343975, 34.855045>,  <46.580360, 34.147343, 35.549664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.552040, 34.343975, 34.855045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.749317, 34.588776, 35.102341>,  <46.867683, 34.735657, 35.250717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.749317, 34.588776, 35.102341>,  <46.552040, 34.343975, 34.855045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.749317, 34.588776, 35.102341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844692, -0.166981, -0.508540,
		-0.207990, 0.773031, -0.599303,
		0.493189, 0.611997, 0.618243,
		46.897274, 34.772373, 35.287815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.091911, 34.517864, 34.488697>,  <46.552040, 34.343975, 34.855045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.091911, 34.517864, 34.488697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.228233, 34.667809, 34.833565>,  <47.310028, 34.757774, 35.040485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.228233, 34.667809, 34.833565>,  <47.091911, 34.517864, 34.488697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.228233, 34.667809, 34.833565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923999, 0.035612, -0.380732,
		-0.173424, 0.926397, -0.334233,
		0.340807, 0.374859, 0.862167,
		47.330475, 34.780266, 35.092216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.336922, 35.235596, 34.563587>,  <47.091911, 34.517864, 34.488697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.336922, 35.235596, 34.563587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.545849, 35.050049, 34.849804>,  <47.671207, 34.938721, 35.021534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.545849, 35.050049, 34.849804>,  <47.336922, 35.235596, 34.563587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.545849, 35.050049, 34.849804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819789, 0.504179, -0.271568,
		-0.234791, 0.728442, 0.643619,
		0.522321, -0.463870, 0.715546,
		47.702545, 34.910889, 35.064468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.029739, 35.255325, 45.209484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.647369, 35.217731, 45.098213>,  <32.417950, 35.195175, 45.031452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.647369, 35.217731, 45.098213>,  <33.029739, 35.255325, 45.209484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647369, 35.217731, 45.098213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276425, 0.031439, -0.960521,
		0.099022, -0.995077, -0.004073,
		-0.955921, -0.093987, -0.278177,
		32.360592, 35.189537, 45.014759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027332, 34.689865, 44.771290>,  <33.029739, 35.255325, 45.209484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027332, 34.689865, 44.771290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.717491, 34.926716, 44.682407>,  <32.531586, 35.068829, 44.629078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.717491, 34.926716, 44.682407>,  <33.027332, 34.689865, 44.771290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717491, 34.926716, 44.682407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278383, 0.003747, -0.960463,
		-0.567887, -0.805833, -0.167741,
		-0.774601, 0.592131, -0.222202,
		32.485111, 35.104355, 44.615746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642193, 34.369370, 44.311108>,  <33.027332, 34.689865, 44.771290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642193, 34.369370, 44.311108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.605831, 34.766338, 44.278019>,  <32.584015, 35.004520, 44.258167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.605831, 34.766338, 44.278019>,  <32.642193, 34.369370, 44.311108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605831, 34.766338, 44.278019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155188, -0.067935, -0.985546,
		-0.983694, -0.102425, -0.147836,
		-0.090902, 0.992418, -0.082722,
		32.578560, 35.064064, 44.253201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283558, 34.401463, 43.668308>,  <32.642193, 34.369370, 44.311108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283558, 34.401463, 43.668308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.449684, 34.760731, 43.725998>,  <32.549362, 34.976292, 43.760612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.449684, 34.760731, 43.725998>,  <32.283558, 34.401463, 43.668308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449684, 34.760731, 43.725998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305218, 0.011765, -0.952210,
		-0.856944, 0.439490, -0.269251,
		0.415319, 0.898170, 0.144222,
		32.574280, 35.030182, 43.769264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092419, 34.757534, 43.147556>,  <32.283558, 34.401463, 43.668308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092419, 34.757534, 43.147556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.375992, 34.997677, 43.295609>,  <32.546135, 35.141762, 43.384438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.375992, 34.997677, 43.295609>,  <32.092419, 34.757534, 43.147556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375992, 34.997677, 43.295609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348468, 0.158103, -0.923890,
		-0.613180, 0.783950, -0.097120,
		0.708929, 0.600354, 0.370128,
		32.588669, 35.177784, 43.406647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069736, 35.378590, 42.781242>,  <32.092419, 34.757534, 43.147556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069736, 35.378590, 42.781242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.448368, 35.367275, 42.909737>,  <32.675545, 35.360489, 42.986832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.448368, 35.367275, 42.909737>,  <32.069736, 35.378590, 42.781242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448368, 35.367275, 42.909737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315833, 0.282470, -0.905793,
		-0.065121, 0.958859, 0.276312,
		0.946577, -0.028282, 0.321235,
		32.732342, 35.358791, 43.006107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485245, 35.949417, 42.507488>,  <32.069736, 35.378590, 42.781242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485245, 35.949417, 42.507488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.801743, 35.731693, 42.618961>,  <32.991642, 35.601059, 42.685844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.801743, 35.731693, 42.618961>,  <32.485245, 35.949417, 42.507488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801743, 35.731693, 42.618961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491406, 0.294733, -0.819544,
		0.363949, 0.785403, 0.500682,
		0.791240, -0.544311, 0.278684,
		33.039116, 35.568401, 42.702568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072613, 36.380497, 42.289482>,  <32.485245, 35.949417, 42.507488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072613, 36.380497, 42.289482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.190620, 36.002022, 42.342678>,  <33.261425, 35.774937, 42.374596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.190620, 36.002022, 42.342678>,  <33.072613, 36.380497, 42.289482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190620, 36.002022, 42.342678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719101, 0.128217, -0.682974,
		0.629171, 0.297127, 0.718233,
		0.295020, -0.946190, 0.132994,
		33.279125, 35.718166, 42.382576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722225, 36.451836, 42.066879>,  <33.072613, 36.380497, 42.289482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722225, 36.451836, 42.066879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.643185, 36.059807, 42.075104>,  <33.595760, 35.824589, 42.080036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.643185, 36.059807, 42.075104>,  <33.722225, 36.451836, 42.066879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643185, 36.059807, 42.075104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727386, -0.160648, -0.667159,
		0.657164, -0.116874, 0.744631,
		-0.197597, -0.980068, 0.020560,
		33.583904, 35.765785, 42.081272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289879, 36.066692, 42.038265>,  <33.722225, 36.451836, 42.066879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289879, 36.066692, 42.038265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.031044, 35.800076, 41.890213>,  <33.875744, 35.640106, 41.801384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.031044, 35.800076, 41.890213>,  <34.289879, 36.066692, 42.038265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031044, 35.800076, 41.890213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637427, -0.206639, -0.742286,
		0.418283, -0.716255, 0.558587,
		-0.647091, -0.666543, -0.370126,
		33.836918, 35.600113, 41.779175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707821, 35.638699, 41.739002>,  <34.289879, 36.066692, 42.038265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707821, 35.638699, 41.739002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.364006, 35.527317, 41.567581>,  <34.157719, 35.460487, 41.464729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.364006, 35.527317, 41.567581>,  <34.707821, 35.638699, 41.739002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364006, 35.527317, 41.567581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506899, -0.357522, -0.784367,
		0.065192, -0.891427, 0.448451,
		-0.859536, -0.278455, -0.428556,
		34.106144, 35.443779, 41.439014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935341, 35.085693, 41.457691>,  <34.707821, 35.638699, 41.739002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935341, 35.085693, 41.457691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.595634, 35.188847, 41.273411>,  <34.391811, 35.250736, 41.162842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.595634, 35.188847, 41.273411>,  <34.935341, 35.085693, 41.457691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595634, 35.188847, 41.273411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365733, -0.341974, -0.865617,
		-0.380778, -0.903631, 0.196110,
		-0.849263, 0.257884, -0.460704,
		34.340855, 35.266212, 41.135201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634838, 34.498676, 41.124496>,  <34.935341, 35.085693, 41.457691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634838, 34.498676, 41.124496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.507801, 34.827084, 40.934734>,  <34.431580, 35.024128, 40.820877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.507801, 34.827084, 40.934734>,  <34.634838, 34.498676, 41.124496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507801, 34.827084, 40.934734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401796, -0.336650, -0.851603,
		-0.858893, -0.461074, -0.222966,
		-0.317591, 0.821022, -0.474404,
		34.412525, 35.073391, 40.792412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671513, 34.285572, 40.470066>,  <34.634838, 34.498676, 41.124496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671513, 34.285572, 40.470066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.643494, 34.681362, 40.419415>,  <34.626682, 34.918835, 40.389023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.643494, 34.681362, 40.419415>,  <34.671513, 34.285572, 40.470066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643494, 34.681362, 40.419415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473093, -0.078807, -0.877481,
		-0.878223, -0.121376, -0.462593,
		-0.070050, 0.989473, -0.126632,
		34.622478, 34.978203, 40.381424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604580, 34.300472, 39.827278>,  <34.671513, 34.285572, 40.470066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604580, 34.300472, 39.827278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.717102, 34.673851, 39.916306>,  <34.784615, 34.897881, 39.969723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.717102, 34.673851, 39.916306>,  <34.604580, 34.300472, 39.827278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717102, 34.673851, 39.916306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352767, 0.115100, -0.928605,
		-0.892424, 0.339740, -0.296912,
		0.281310, 0.933450, 0.222567,
		34.801495, 34.953888, 39.983074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361343, 34.707867, 39.221760>,  <34.604580, 34.300472, 39.827278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361343, 34.707867, 39.221760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651943, 34.926311, 39.388588>,  <34.826305, 35.057381, 39.488686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651943, 34.926311, 39.388588>,  <34.361343, 34.707867, 39.221760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651943, 34.926311, 39.388588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418480, 0.129792, -0.898904,
		-0.545038, 0.827594, -0.134244,
		0.726504, 0.546116, 0.417073,
		34.869896, 35.090145, 39.513710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571880, 35.337429, 38.771862>,  <34.361343, 34.707867, 39.221760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571880, 35.337429, 38.771862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.895691, 35.287487, 39.001328>,  <35.089977, 35.257523, 39.139008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.895691, 35.287487, 39.001328>,  <34.571880, 35.337429, 38.771862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895691, 35.287487, 39.001328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583566, 0.064228, -0.809522,
		0.064228, 0.990094, 0.124856,
		0.809522, -0.124856, 0.573660,
		35.138546, 35.250031, 39.173424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978359, 35.897865, 38.682461>,  <34.571880, 35.337429, 38.771862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978359, 35.897865, 38.682461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.204239, 35.592800, 38.808613>,  <35.339767, 35.409760, 38.884304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.204239, 35.592800, 38.808613>,  <34.978359, 35.897865, 38.682461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204239, 35.592800, 38.808613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571037, 0.085168, -0.816495,
		0.595849, 0.641165, 0.483602,
		0.564695, -0.762663, 0.315381,
		35.373646, 35.364002, 38.903229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563728, 36.108139, 38.427345>,  <34.978359, 35.897865, 38.682461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563728, 36.108139, 38.427345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.609165, 35.723824, 38.528515>,  <35.636429, 35.493233, 38.589218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.609165, 35.723824, 38.528515>,  <35.563728, 36.108139, 38.427345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609165, 35.723824, 38.528515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530399, -0.156618, -0.833155,
		0.840103, 0.228796, 0.491812,
		0.113596, -0.960793, 0.252928,
		35.643246, 35.435585, 38.604393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306984, 35.960072, 38.535172>,  <35.563728, 36.108139, 38.427345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306984, 35.960072, 38.535172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.136700, 35.611607, 38.437321>,  <36.034527, 35.402527, 38.378609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.136700, 35.611607, 38.437321>,  <36.306984, 35.960072, 38.535172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136700, 35.611607, 38.437321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654351, -0.109667, -0.748197,
		0.624974, -0.478589, 0.616733,
		-0.425713, -0.871164, -0.244626,
		36.008987, 35.350258, 38.363934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873989, 35.590984, 38.365490>,  <36.306984, 35.960072, 38.535172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873989, 35.590984, 38.365490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.553875, 35.401566, 38.218365>,  <36.361805, 35.287914, 38.130089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.553875, 35.401566, 38.218365>,  <36.873989, 35.590984, 38.365490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553875, 35.401566, 38.218365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476557, -0.130037, -0.869474,
		0.363909, -0.871115, 0.329740,
		-0.800290, -0.473549, -0.367814,
		36.313789, 35.259502, 38.108021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023666, 34.946529, 38.060280>,  <36.873989, 35.590984, 38.365490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023666, 34.946529, 38.060280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.695374, 35.070232, 37.868134>,  <36.498398, 35.144455, 37.752846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.695374, 35.070232, 37.868134>,  <37.023666, 34.946529, 38.060280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695374, 35.070232, 37.868134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390961, -0.309073, -0.866962,
		-0.416583, -0.899352, 0.132759,
		-0.820736, 0.309258, -0.480366,
		36.449154, 35.163010, 37.724022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589073, 34.752689, 38.549526>,  <37.023666, 34.946529, 38.060280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589073, 34.752689, 38.549526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.902775, 34.973076, 38.663631>,  <38.090996, 35.105309, 38.732094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.902775, 34.973076, 38.663631>,  <37.589073, 34.752689, 38.549526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902775, 34.973076, 38.663631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461832, 0.211386, 0.861410,
		0.414307, -0.807312, 0.420235,
		0.784258, 0.550966, 0.285264,
		38.138054, 35.138367, 38.749210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792694, 34.466938, 39.203663>,  <37.589073, 34.752689, 38.549526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792694, 34.466938, 39.203663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.933331, 34.841366, 39.208775>,  <38.017712, 35.066021, 39.211842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.933331, 34.841366, 39.208775>,  <37.792694, 34.466938, 39.203663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933331, 34.841366, 39.208775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466763, 0.163456, 0.869146,
		0.811489, -0.311551, 0.494391,
		0.351594, 0.936065, 0.012778,
		38.038811, 35.122185, 39.212608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912872, 34.620628, 39.922073>,  <37.792694, 34.466938, 39.203663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912872, 34.620628, 39.922073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.955456, 34.987003, 39.767296>,  <37.981007, 35.206829, 39.674431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.955456, 34.987003, 39.767296>,  <37.912872, 34.620628, 39.922073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955456, 34.987003, 39.767296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190748, 0.400740, 0.896115,
		0.975850, -0.021587, 0.217373,
		0.106454, 0.915937, -0.386945,
		37.987392, 35.261784, 39.651211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436600, 35.035728, 40.451050>,  <37.912872, 34.620628, 39.922073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436600, 35.035728, 40.451050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206718, 35.283367, 40.236969>,  <38.068790, 35.431950, 40.108521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206718, 35.283367, 40.236969>,  <38.436600, 35.035728, 40.451050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206718, 35.283367, 40.236969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187509, 0.536978, 0.822493,
		0.796594, 0.573042, -0.192515,
		-0.574699, 0.619094, -0.535204,
		38.034309, 35.469097, 40.076408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569401, 35.637547, 40.727489>,  <38.436600, 35.035728, 40.451050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569401, 35.637547, 40.727489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.216782, 35.682251, 40.544018>,  <38.005211, 35.709076, 40.433933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.216782, 35.682251, 40.544018>,  <38.569401, 35.637547, 40.727489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216782, 35.682251, 40.544018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300955, 0.615522, 0.728394,
		0.363737, 0.780154, -0.508974,
		-0.881545, 0.111766, -0.458680,
		37.952316, 35.715782, 40.406414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427204, 36.259720, 40.808147>,  <38.569401, 35.637547, 40.727489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427204, 36.259720, 40.808147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065182, 36.111271, 40.725056>,  <37.847969, 36.022202, 40.675201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065182, 36.111271, 40.725056>,  <38.427204, 36.259720, 40.808147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065182, 36.111271, 40.725056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336397, 0.325816, 0.883562,
		-0.260228, 0.869548, -0.419724,
		-0.905052, -0.371121, -0.207726,
		37.793667, 35.999935, 40.662739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943451, 36.769978, 40.959988>,  <38.427204, 36.259720, 40.808147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943451, 36.769978, 40.959988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.695091, 36.456631, 40.971458>,  <37.546074, 36.268623, 40.978340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.695091, 36.456631, 40.971458>,  <37.943451, 36.769978, 40.959988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695091, 36.456631, 40.971458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567530, 0.474456, 0.672905,
		-0.540736, 0.401533, -0.739173,
		-0.620898, -0.783366, 0.028674,
		37.508823, 36.221622, 40.980061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225700, 37.075966, 41.047203>,  <37.943451, 36.769978, 40.959988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225700, 37.075966, 41.047203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.222328, 36.695988, 41.172127>,  <37.220306, 36.468002, 41.247082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.222328, 36.695988, 41.172127>,  <37.225700, 37.075966, 41.047203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222328, 36.695988, 41.172127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693731, 0.230489, 0.682358,
		-0.720185, -0.210906, -0.660948,
		-0.008428, -0.949944, 0.312307,
		37.219799, 36.411003, 41.265820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472042, 36.929535, 41.128845>,  <37.225700, 37.075966, 41.047203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472042, 36.929535, 41.128845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.652519, 36.628796, 41.321156>,  <36.760807, 36.448353, 41.436543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.652519, 36.628796, 41.321156>,  <36.472042, 36.929535, 41.128845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652519, 36.628796, 41.321156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762422, -0.044748, 0.645531,
		-0.463830, -0.657811, -0.593419,
		0.451192, -0.751853, 0.480774,
		36.787876, 36.403240, 41.465389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020329, 36.373016, 41.184818>,  <36.472042, 36.929535, 41.128845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020329, 36.373016, 41.184818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.276428, 36.320992, 41.487648>,  <36.430088, 36.289776, 41.669346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.276428, 36.320992, 41.487648>,  <36.020329, 36.373016, 41.184818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276428, 36.320992, 41.487648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766706, -0.047394, 0.640247,
		-0.047394, -0.990372, -0.130066,
		-0.640247, 0.130066, -0.757078,
		36.468502, 36.281971, 41.714771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807915, 35.859161, 41.656582>,  <36.020329, 36.373016, 41.184818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807915, 35.859161, 41.656582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059021, 36.065052, 41.890152>,  <36.209686, 36.188587, 42.030293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059021, 36.065052, 41.890152>,  <35.807915, 35.859161, 41.656582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059021, 36.065052, 41.890152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594935, -0.166469, 0.786346,
		0.501959, -0.841038, 0.201725,
		0.627766, 0.514726, 0.583923,
		36.247353, 36.219471, 42.065331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848717, 35.501026, 42.274452>,  <35.807915, 35.859161, 41.656582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848717, 35.501026, 42.274452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.942501, 35.878380, 42.368301>,  <35.998772, 36.104794, 42.424610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.942501, 35.878380, 42.368301>,  <35.848717, 35.501026, 42.274452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942501, 35.878380, 42.368301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574225, -0.060343, 0.816471,
		0.784406, -0.326155, 0.527569,
		0.234461, 0.943388, 0.234620,
		36.012840, 36.161396, 42.438686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213612, 35.445961, 42.942036>,  <35.848717, 35.501026, 42.274452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213612, 35.445961, 42.942036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.089622, 35.825741, 42.922165>,  <36.015228, 36.053608, 42.910240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.089622, 35.825741, 42.922165>,  <36.213612, 35.445961, 42.942036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089622, 35.825741, 42.922165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347968, -0.064666, 0.935274,
		0.884779, 0.307199, 0.350421,
		-0.309975, 0.949446, -0.049681,
		35.996632, 36.110573, 42.907261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431026, 35.678104, 43.627300>,  <36.213612, 35.445961, 42.942036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431026, 35.678104, 43.627300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.161354, 35.930408, 43.473610>,  <35.999550, 36.081791, 43.381397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.161354, 35.930408, 43.473610>,  <36.431026, 35.678104, 43.627300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161354, 35.930408, 43.473610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362525, 0.170636, 0.916220,
		0.643475, 0.756987, 0.113626,
		-0.674177, 0.630757, -0.384227,
		35.959103, 36.119637, 43.358341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410244, 36.225868, 44.080814>,  <36.431026, 35.678104, 43.627300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410244, 36.225868, 44.080814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.063271, 36.219143, 43.881908>,  <35.855087, 36.215107, 43.762566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.063271, 36.219143, 43.881908>,  <36.410244, 36.225868, 44.080814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063271, 36.219143, 43.881908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495714, -0.056558, 0.866642,
		-0.042692, 0.998258, 0.040727,
		-0.867436, -0.016810, -0.497265,
		35.803040, 36.214100, 43.732731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112408, 36.529961, 44.568558>,  <36.410244, 36.225868, 44.080814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112408, 36.529961, 44.568558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.820164, 36.403687, 44.326385>,  <35.644817, 36.327923, 44.181080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.820164, 36.403687, 44.326385>,  <36.112408, 36.529961, 44.568558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820164, 36.403687, 44.326385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635995, -0.007976, 0.771652,
		-0.248428, 0.948831, -0.194947,
		-0.730612, -0.315685, -0.605432,
		35.600979, 36.308979, 44.144756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558804, 36.976185, 44.633499>,  <36.112408, 36.529961, 44.568558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558804, 36.976185, 44.633499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.406784, 36.639206, 44.480740>,  <35.315571, 36.437019, 44.389084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.406784, 36.639206, 44.480740>,  <35.558804, 36.976185, 44.633499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406784, 36.639206, 44.480740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743537, 0.032661, 0.667897,
		-0.550195, 0.537788, -0.638803,
		-0.380050, -0.842447, -0.381895,
		35.292770, 36.386471, 44.366173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926651, 37.151951, 44.696018>,  <35.558804, 36.976185, 44.633499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926651, 37.151951, 44.696018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.956165, 36.753284, 44.682076>,  <34.973873, 36.514084, 44.673710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.956165, 36.753284, 44.682076>,  <34.926651, 37.151951, 44.696018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956165, 36.753284, 44.682076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655913, -0.074825, 0.751119,
		-0.751222, -0.032562, -0.659246,
		0.073786, -0.996665, -0.034852,
		34.978302, 36.454285, 44.671619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.133236, 36.876827, 44.707104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.370167, 36.567966, 44.799133>,  <34.512325, 36.382652, 44.854351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.370167, 36.567966, 44.799133>,  <34.133236, 36.876827, 44.707104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370167, 36.567966, 44.799133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642284, -0.280132, 0.713440,
		-0.486432, -0.570363, -0.661869,
		0.592331, -0.772148, 0.230070,
		34.547867, 36.336323, 44.868153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681183, 36.201427, 44.764702>,  <34.133236, 36.876827, 44.707104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681183, 36.201427, 44.764702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.023338, 36.157234, 44.967129>,  <34.228634, 36.130718, 45.088585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.023338, 36.157234, 44.967129>,  <33.681183, 36.201427, 44.764702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023338, 36.157234, 44.967129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510262, -0.347799, 0.786555,
		0.089108, -0.931037, -0.353879,
		0.855391, -0.110483, 0.506064,
		34.279957, 36.124088, 45.118946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645245, 35.507019, 44.939075>,  <33.681183, 36.201427, 44.764702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645245, 35.507019, 44.939075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.897587, 35.687996, 45.191208>,  <34.048992, 35.796581, 45.342487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.897587, 35.687996, 45.191208>,  <33.645245, 35.507019, 44.939075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897587, 35.687996, 45.191208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570113, -0.280756, 0.772106,
		0.526300, -0.846449, 0.080825,
		0.630855, 0.452439, 0.630333,
		34.086845, 35.823727, 45.380306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707733, 35.066254, 45.490105>,  <33.645245, 35.507019, 44.939075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707733, 35.066254, 45.490105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.830826, 35.418114, 45.635170>,  <33.904682, 35.629230, 45.722210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.830826, 35.418114, 45.635170>,  <33.707733, 35.066254, 45.490105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830826, 35.418114, 45.635170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546088, -0.148841, 0.824399,
		0.779160, -0.451737, 0.434562,
		0.307731, 0.879647, 0.362659,
		33.923145, 35.682007, 45.743969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848675, 34.841068, 46.111542>,  <33.707733, 35.066254, 45.490105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848675, 34.841068, 46.111542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.834270, 35.237316, 46.164280>,  <33.825626, 35.475063, 46.195923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.834270, 35.237316, 46.164280>,  <33.848675, 34.841068, 46.111542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834270, 35.237316, 46.164280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602462, -0.126782, 0.788014,
		0.797335, -0.051055, 0.601374,
		-0.036011, 0.990616, 0.131847,
		33.823467, 35.534500, 46.203835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193996, 35.048279, 46.819557>,  <33.848675, 34.841068, 46.111542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193996, 35.048279, 46.819557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.939690, 35.335064, 46.705177>,  <33.787106, 35.507133, 46.636551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.939690, 35.335064, 46.705177>,  <34.193996, 35.048279, 46.819557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939690, 35.335064, 46.705177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459163, -0.053500, 0.886739,
		0.620459, 0.695058, 0.363216,
		-0.635767, 0.716961, -0.285951,
		33.748959, 35.550152, 46.619392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174335, 35.416229, 47.404472>,  <34.193996, 35.048279, 46.819557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174335, 35.416229, 47.404472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.839615, 35.532051, 47.218605>,  <33.638783, 35.601543, 47.107082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.839615, 35.532051, 47.218605>,  <34.174335, 35.416229, 47.404472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839615, 35.532051, 47.218605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514620, -0.126258, 0.848071,
		0.186896, 0.948797, 0.254664,
		-0.836801, 0.289557, -0.464673,
		33.588573, 35.618919, 47.079205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794014, 35.911518, 47.815166>,  <34.174335, 35.416229, 47.404472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794014, 35.911518, 47.815166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516663, 35.742847, 47.581448>,  <33.350250, 35.641644, 47.441216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516663, 35.742847, 47.581448>,  <33.794014, 35.911518, 47.815166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516663, 35.742847, 47.581448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608632, -0.091341, 0.788178,
		-0.385729, 0.902132, -0.193314,
		-0.693383, -0.421681, -0.584299,
		33.308647, 35.616344, 47.406158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268055, 36.366558, 47.873138>,  <33.794014, 35.911518, 47.815166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268055, 36.366558, 47.873138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.131042, 36.007210, 47.763161>,  <33.048836, 35.791599, 47.697174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.131042, 36.007210, 47.763161>,  <33.268055, 36.366558, 47.873138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131042, 36.007210, 47.763161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618078, -0.004923, 0.786101,
		-0.707565, 0.439206, -0.553578,
		-0.342535, -0.898373, -0.274948,
		33.028282, 35.737698, 47.680676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492466, 36.387932, 47.825912>,  <33.268055, 36.366558, 47.873138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492466, 36.387932, 47.825912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.606430, 36.005791, 47.857239>,  <32.674809, 35.776508, 47.876034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.606430, 36.005791, 47.857239>,  <32.492466, 36.387932, 47.825912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606430, 36.005791, 47.857239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747164, -0.170153, 0.642490,
		-0.600477, -0.241566, -0.762282,
		0.284909, -0.955350, 0.078316,
		32.691902, 35.719185, 47.880733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846424, 36.030712, 47.922985>,  <32.492466, 36.387932, 47.825912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846424, 36.030712, 47.922985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.135868, 35.787228, 48.053127>,  <32.309536, 35.641136, 48.131214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.135868, 35.787228, 48.053127>,  <31.846424, 36.030712, 47.922985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135868, 35.787228, 48.053127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524078, -0.177816, 0.832901,
		-0.449145, -0.773207, -0.447682,
		0.723610, -0.608714, 0.325355,
		32.352951, 35.604614, 48.150734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470213, 35.699604, 48.334938>,  <31.846424, 36.030712, 47.922985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470213, 35.699604, 48.334938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.839483, 35.586330, 48.438904>,  <32.061047, 35.518368, 48.501282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.839483, 35.586330, 48.438904>,  <31.470213, 35.699604, 48.334938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839483, 35.586330, 48.438904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302712, -0.118900, 0.945637,
		-0.236886, -0.951666, -0.195489,
		0.923175, -0.283185, 0.259915,
		32.116436, 35.501377, 48.516880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308516, 35.095577, 48.611622>,  <31.470213, 35.699604, 48.334938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308516, 35.095577, 48.611622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.662794, 35.212688, 48.755745>,  <31.875362, 35.282955, 48.842220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.662794, 35.212688, 48.755745>,  <31.308516, 35.095577, 48.611622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662794, 35.212688, 48.755745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272343, -0.300882, 0.913947,
		0.375991, -0.907609, -0.186755,
		0.885697, 0.292774, 0.360310,
		31.928503, 35.300522, 48.863838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579344, 34.521366, 48.902775>,  <31.308516, 35.095577, 48.611622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579344, 34.521366, 48.902775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.762003, 34.831375, 49.077503>,  <31.871599, 35.017380, 49.182343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.762003, 34.831375, 49.077503>,  <31.579344, 34.521366, 48.902775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762003, 34.831375, 49.077503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258262, -0.354381, 0.898730,
		0.851336, -0.523218, 0.038331,
		0.456648, 0.775021, 0.436824,
		31.898998, 35.063881, 49.208549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993824, 34.235970, 49.305336>,  <31.579344, 34.521366, 48.902775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993824, 34.235970, 49.305336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.927345, 34.611393, 49.426327>,  <31.887459, 34.836647, 49.498920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.927345, 34.611393, 49.426327>,  <31.993824, 34.235970, 49.305336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927345, 34.611393, 49.426327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466044, -0.345083, 0.814690,
		0.869012, -0.005569, 0.494760,
		-0.166196, 0.938555, 0.302477,
		31.877487, 34.892960, 49.517071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250141, 34.243977, 50.104248>,  <31.993824, 34.235970, 49.305336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250141, 34.243977, 50.104248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.030228, 34.577068, 50.078014>,  <31.898281, 34.776924, 50.062275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.030228, 34.577068, 50.078014>,  <32.250141, 34.243977, 50.104248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030228, 34.577068, 50.078014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395619, -0.190431, 0.898455,
		0.735682, 0.519900, 0.434139,
		-0.549780, 0.832731, -0.065586,
		31.865294, 34.826889, 50.058338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380379, 34.542973, 50.798634>,  <32.250141, 34.243977, 50.104248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380379, 34.542973, 50.798634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.059391, 34.711571, 50.629692>,  <31.866798, 34.812729, 50.528328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.059391, 34.711571, 50.629692>,  <32.380379, 34.542973, 50.798634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059391, 34.711571, 50.629692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446797, 0.044705, 0.893518,
		0.395496, 0.905728, 0.152449,
		-0.802468, 0.421496, -0.422357,
		31.818651, 34.838020, 50.502983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215393, 35.053326, 51.228222>,  <32.380379, 34.542973, 50.798634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215393, 35.053326, 51.228222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.882427, 34.960762, 51.026810>,  <31.682648, 34.905224, 50.905964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.882427, 34.960762, 51.026810>,  <32.215393, 35.053326, 51.228222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882427, 34.960762, 51.026810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465457, -0.201136, 0.861913,
		-0.300732, 0.951837, 0.059717,
		-0.832412, -0.231409, -0.503528,
		31.632704, 34.891338, 50.875751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584568, 35.410892, 51.461926>,  <32.215393, 35.053326, 51.228222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584568, 35.410892, 51.461926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.413465, 35.089546, 51.296211>,  <31.310804, 34.896740, 51.196781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.413465, 35.089546, 51.296211>,  <31.584568, 35.410892, 51.461926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413465, 35.089546, 51.296211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644492, -0.050284, 0.762956,
		-0.633764, 0.593361, -0.496253,
		-0.427754, -0.803364, -0.414285,
		31.285139, 34.848537, 51.171925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770218, 35.328602, 51.698395>,  <31.584568, 35.410892, 51.461926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770218, 35.328602, 51.698395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.842333, 34.962570, 51.554104>,  <30.885601, 34.742950, 51.467529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.842333, 34.962570, 51.554104>,  <30.770218, 35.328602, 51.698395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842333, 34.962570, 51.554104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650192, -0.386058, 0.654377,
		-0.738070, 0.116570, -0.664579,
		0.180285, -0.915079, -0.360731,
		30.896418, 34.688046, 51.445885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187405, 35.096584, 51.847500>,  <30.770218, 35.328602, 51.698395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187405, 35.096584, 51.847500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.378845, 34.761074, 51.743660>,  <30.493710, 34.559769, 51.681355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.378845, 34.761074, 51.743660>,  <30.187405, 35.096584, 51.847500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378845, 34.761074, 51.743660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569149, -0.521499, 0.635695,
		-0.668588, -0.156493, -0.726980,
		0.478601, -0.838778, -0.259600,
		30.522425, 34.509441, 51.665779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740091, 34.530140, 51.608662>,  <30.187405, 35.096584, 51.847500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740091, 34.530140, 51.608662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.074076, 34.374725, 51.764549>,  <30.274466, 34.281475, 51.858082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.074076, 34.374725, 51.764549>,  <29.740091, 34.530140, 51.608662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074076, 34.374725, 51.764549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550034, -0.566702, 0.613442,
		-0.017490, -0.726559, -0.686882,
		0.834959, -0.388538, 0.389721,
		30.324564, 34.258163, 51.881466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574703, 33.832714, 51.641579>,  <29.740091, 34.530140, 51.608662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574703, 33.832714, 51.641579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.855448, 33.955242, 51.898811>,  <30.023895, 34.028759, 52.053150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.855448, 33.955242, 51.898811>,  <29.574703, 33.832714, 51.641579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855448, 33.955242, 51.898811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467390, -0.483231, 0.740293,
		0.537526, -0.820155, -0.195990,
		0.701863, 0.306323, 0.643082,
		30.066008, 34.047138, 52.091736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903189, 33.308102, 52.089088>,  <29.574703, 33.832714, 51.641579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903189, 33.308102, 52.089088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.924656, 33.638638, 52.313332>,  <29.937536, 33.836960, 52.447880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.924656, 33.638638, 52.313332>,  <29.903189, 33.308102, 52.089088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924656, 33.638638, 52.313332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437251, -0.485288, 0.757170,
		0.897737, -0.285763, 0.335273,
		0.053667, 0.826338, 0.560611,
		29.940756, 33.886539, 52.481514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740463, 32.681839, 51.869831>,  <29.903189, 33.308102, 52.089088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740463, 32.681839, 51.869831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.351006, 32.757706, 51.819160>,  <29.117331, 32.803226, 51.788757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.351006, 32.757706, 51.819160>,  <29.740463, 32.681839, 51.869831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351006, 32.757706, 51.819160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132838, 0.020079, -0.990934,
		-0.185401, -0.981644, -0.044744,
		-0.973643, 0.189664, -0.126677,
		29.058912, 32.814606, 51.781158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540854, 32.324104, 51.258606>,  <29.740463, 32.681839, 51.869831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540854, 32.324104, 51.258606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.275911, 32.616859, 51.322632>,  <29.116945, 32.792515, 51.361046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.275911, 32.616859, 51.322632>,  <29.540854, 32.324104, 51.258606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275911, 32.616859, 51.322632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057224, 0.163604, -0.984865,
		-0.747000, -0.661492, -0.066482,
		-0.662357, 0.731890, 0.160065,
		29.077204, 32.836426, 51.370651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060011, 32.264137, 50.810860>,  <29.540854, 32.324104, 51.258606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060011, 32.264137, 50.810860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.986197, 32.653332, 50.866352>,  <28.941908, 32.886848, 50.899647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.986197, 32.653332, 50.866352>,  <29.060011, 32.264137, 50.810860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986197, 32.653332, 50.866352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203595, 0.100249, -0.973909,
		-0.961507, -0.207964, 0.179596,
		-0.184534, 0.972986, 0.138730,
		28.930836, 32.945229, 50.907970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407349, 32.500927, 50.453148>,  <29.060011, 32.264137, 50.810860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407349, 32.500927, 50.453148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.638714, 32.822437, 50.508831>,  <28.777533, 33.015343, 50.542240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.638714, 32.822437, 50.508831>,  <28.407349, 32.500927, 50.453148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638714, 32.822437, 50.508831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051948, 0.134011, -0.989617,
		-0.814089, 0.579637, 0.035759,
		0.578411, 0.803779, 0.139208,
		28.812237, 33.063572, 50.550594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134159, 33.019272, 50.069088>,  <28.407349, 32.500927, 50.453148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134159, 33.019272, 50.069088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.513777, 33.137180, 50.113674>,  <28.741549, 33.207924, 50.140427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.513777, 33.137180, 50.113674>,  <28.134159, 33.019272, 50.069088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513777, 33.137180, 50.113674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034655, 0.253929, -0.966602,
		-0.313226, 0.921213, 0.230775,
		0.949046, 0.294767, 0.111462,
		28.798491, 33.225609, 50.147114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218790, 33.307434, 49.477703>,  <28.134159, 33.019272, 50.069088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218790, 33.307434, 49.477703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.597383, 33.320061, 49.606186>,  <28.824539, 33.327637, 49.683277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.597383, 33.320061, 49.606186>,  <28.218790, 33.307434, 49.477703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597383, 33.320061, 49.606186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297334, 0.301884, -0.905791,
		-0.125559, 0.952822, 0.276343,
		0.946481, 0.031565, 0.321211,
		28.881329, 33.329529, 49.702549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542400, 33.979099, 49.244904>,  <28.218790, 33.307434, 49.477703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542400, 33.979099, 49.244904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.842926, 33.735229, 49.345959>,  <29.023241, 33.588905, 49.406593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.842926, 33.735229, 49.345959>,  <28.542400, 33.979099, 49.244904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842926, 33.735229, 49.345959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492415, 0.263012, -0.829670,
		0.439383, 0.747743, 0.497818,
		0.751312, -0.609676, 0.252637,
		29.068319, 33.552326, 49.421749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218225, 34.317089, 49.202824>,  <28.542400, 33.979099, 49.244904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218225, 34.317089, 49.202824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.357193, 33.944279, 49.161598>,  <29.440573, 33.720592, 49.136864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.357193, 33.944279, 49.161598>,  <29.218225, 34.317089, 49.202824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357193, 33.944279, 49.161598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606679, 0.307214, -0.733185,
		0.715012, 0.192197, 0.672174,
		0.347417, -0.932030, -0.103059,
		29.461418, 33.664669, 49.130680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900875, 34.365677, 48.950310>,  <29.218225, 34.317089, 49.202824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900875, 34.365677, 48.950310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.856974, 33.976875, 48.867207>,  <29.830633, 33.743595, 48.817345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.856974, 33.976875, 48.867207>,  <29.900875, 34.365677, 48.950310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856974, 33.976875, 48.867207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537841, 0.117703, -0.834789,
		0.835872, -0.203364, 0.509865,
		-0.109754, -0.972003, -0.207762,
		29.824047, 33.685276, 48.804878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620464, 34.095127, 48.867611>,  <29.900875, 34.365677, 48.950310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620464, 34.095127, 48.867611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.354542, 33.870361, 48.670719>,  <30.194988, 33.735500, 48.552586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.354542, 33.870361, 48.670719>,  <30.620464, 34.095127, 48.867611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354542, 33.870361, 48.670719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545271, 0.085370, -0.833902,
		0.510603, -0.822778, 0.249641,
		-0.664804, -0.561915, -0.492227,
		30.155100, 33.701786, 48.523052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967445, 33.540276, 48.703655>,  <30.620464, 34.095127, 48.867611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967445, 33.540276, 48.703655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.677504, 33.570625, 48.429771>,  <30.503538, 33.588837, 48.265442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.677504, 33.570625, 48.429771>,  <30.967445, 33.540276, 48.703655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677504, 33.570625, 48.429771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688272, 0.122238, -0.715080,
		0.029441, -0.989597, -0.140827,
		-0.724855, 0.075874, -0.684710,
		30.460047, 33.593388, 48.224358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265936, 33.229328, 48.064327>,  <30.967445, 33.540276, 48.703655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265936, 33.229328, 48.064327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.948309, 33.444653, 47.951420>,  <30.757732, 33.573849, 47.883675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.948309, 33.444653, 47.951420>,  <31.265936, 33.229328, 48.064327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948309, 33.444653, 47.951420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504428, 0.324527, -0.800147,
		-0.339127, -0.777754, -0.529237,
		-0.794069, 0.538313, -0.282265,
		30.710089, 33.606148, 47.866741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272709, 33.118782, 47.382462>,  <31.265936, 33.229328, 48.064327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272709, 33.118782, 47.382462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.015169, 33.423985, 47.405392>,  <30.860645, 33.607105, 47.419151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.015169, 33.423985, 47.405392>,  <31.272709, 33.118782, 47.382462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015169, 33.423985, 47.405392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400714, 0.400065, -0.824242,
		-0.651834, -0.507715, -0.563327,
		-0.643848, 0.763003, 0.057328,
		30.822014, 33.652885, 47.422588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978266, 33.286282, 46.649139>,  <31.272709, 33.118782, 47.382462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978266, 33.286282, 46.649139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.961481, 33.622620, 46.864998>,  <30.951410, 33.824421, 46.994514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.961481, 33.622620, 46.864998>,  <30.978266, 33.286282, 46.649139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961481, 33.622620, 46.864998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318490, 0.523204, -0.790457,
		-0.946997, 0.138703, -0.289756,
		-0.041963, 0.840844, 0.539648,
		30.948893, 33.874874, 47.026894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572311, 33.782856, 46.289921>,  <30.978266, 33.286282, 46.649139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572311, 33.782856, 46.289921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.775465, 34.015373, 46.544212>,  <30.897356, 34.154884, 46.696789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.775465, 34.015373, 46.544212>,  <30.572311, 33.782856, 46.289921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775465, 34.015373, 46.544212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249323, 0.607217, -0.754404,
		-0.824556, 0.541651, 0.163465,
		0.507883, 0.581293, 0.635731,
		30.927830, 34.189762, 46.734932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333908, 34.468758, 46.085617>,  <30.572311, 33.782856, 46.289921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333908, 34.468758, 46.085617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.671133, 34.531937, 46.291260>,  <30.873468, 34.569843, 46.414646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.671133, 34.531937, 46.291260>,  <30.333908, 34.468758, 46.085617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671133, 34.531937, 46.291260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304411, 0.647908, -0.698247,
		-0.443375, 0.745164, 0.498146,
		0.843061, 0.157944, 0.514103,
		30.924051, 34.579319, 46.445492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408625, 35.172855, 46.121769>,  <30.333908, 34.468758, 46.085617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408625, 35.172855, 46.121769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.777948, 35.025749, 46.166027>,  <30.999542, 34.937485, 46.192581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.777948, 35.025749, 46.166027>,  <30.408625, 35.172855, 46.121769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777948, 35.025749, 46.166027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366147, 0.756001, -0.542585,
		0.115900, 0.541487, 0.832682,
		0.923311, -0.367769, 0.110643,
		31.054941, 34.915417, 46.199219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867611, 35.814060, 46.085648>,  <30.408625, 35.172855, 46.121769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867611, 35.814060, 46.085648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.099756, 35.490768, 46.045757>,  <31.239044, 35.296795, 46.021824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.099756, 35.490768, 46.045757>,  <30.867611, 35.814060, 46.085648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099756, 35.490768, 46.045757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583499, 0.498134, -0.641398,
		0.568072, 0.314055, 0.760699,
		0.580364, -0.808228, -0.099725,
		31.273865, 35.248299, 46.015839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578524, 36.044964, 45.933849>,  <30.867611, 35.814060, 46.085648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578524, 36.044964, 45.933849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.600288, 35.657112, 45.838470>,  <31.613346, 35.424400, 45.781242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.600288, 35.657112, 45.838470>,  <31.578524, 36.044964, 45.933849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600288, 35.657112, 45.838470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533529, 0.230086, -0.813884,
		0.844030, -0.082934, 0.529845,
		0.054411, -0.969630, -0.238447,
		31.616611, 35.366222, 45.766937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208931, 36.054928, 45.706886>,  <31.578524, 36.044964, 45.933849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208931, 36.054928, 45.706886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.018490, 35.755634, 45.522076>,  <31.904224, 35.576057, 45.411190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.018490, 35.755634, 45.522076>,  <32.208931, 36.054928, 45.706886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018490, 35.755634, 45.522076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410395, 0.275619, -0.869258,
		0.777753, -0.603471, 0.175849,
		-0.476105, -0.748236, -0.462025,
		31.875658, 35.531162, 45.383469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.800472, 26.360584, 40.242641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.447033, 26.471037, 40.393902>,  <43.234970, 26.537308, 40.484657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.447033, 26.471037, 40.393902>,  <43.800472, 26.360584, 40.242641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447033, 26.471037, 40.393902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125876, 0.917957, -0.376178,
		-0.451002, -0.284792, -0.845867,
		-0.883602, 0.276132, 0.378152,
		43.181953, 26.553877, 40.507347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.293293, 26.589882, 39.725063>,  <43.800472, 26.360584, 40.242641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.293293, 26.589882, 39.725063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.263966, 26.771534, 40.080231>,  <43.246368, 26.880526, 40.293331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.263966, 26.771534, 40.080231>,  <43.293293, 26.589882, 39.725063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.263966, 26.771534, 40.080231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122110, 0.887699, -0.443936,
		-0.989805, 0.075876, -0.120536,
		-0.073316, 0.454129, 0.887914,
		43.241970, 26.907772, 40.346603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666706, 27.025221, 39.701115>,  <43.293293, 26.589882, 39.725063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666706, 27.025221, 39.701115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.898041, 27.201233, 39.975895>,  <43.036842, 27.306841, 40.140762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.898041, 27.201233, 39.975895>,  <42.666706, 27.025221, 39.701115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898041, 27.201233, 39.975895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343231, 0.895149, -0.284431,
		-0.740081, -0.071287, 0.668728,
		0.578335, 0.440031, 0.686951,
		43.071541, 27.333242, 40.181980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364941, 27.663036, 39.825432>,  <42.666706, 27.025221, 39.701115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364941, 27.663036, 39.825432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.696785, 27.721243, 40.041050>,  <42.895893, 27.756166, 40.170422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.696785, 27.721243, 40.041050>,  <42.364941, 27.663036, 39.825432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696785, 27.721243, 40.041050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000722, 0.965159, -0.261662,
		-0.558341, 0.217467, 0.800602,
		0.829611, 0.145519, 0.539045,
		42.945667, 27.764898, 40.202763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200199, 28.235117, 40.241894>,  <42.364941, 27.663036, 39.825432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200199, 28.235117, 40.241894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.595413, 28.195148, 40.194912>,  <42.832542, 28.171167, 40.166721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.595413, 28.195148, 40.194912>,  <42.200199, 28.235117, 40.241894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595413, 28.195148, 40.194912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073016, 0.974011, -0.214410,
		0.135826, 0.203269, 0.969656,
		0.988039, -0.099923, -0.117454,
		42.891827, 28.165171, 40.159676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433460, 28.901684, 40.256565>,  <42.200199, 28.235117, 40.241894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433460, 28.901684, 40.256565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.755436, 28.732950, 40.089649>,  <42.948620, 28.631710, 39.989498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.755436, 28.732950, 40.089649>,  <42.433460, 28.901684, 40.256565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755436, 28.732950, 40.089649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069742, 0.765656, -0.639458,
		0.589247, 0.485621, 0.645725,
		0.804937, -0.421833, -0.417292,
		42.996918, 28.606400, 39.964462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977566, 29.401688, 40.292572>,  <42.433460, 28.901684, 40.256565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977566, 29.401688, 40.292572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.079784, 29.142706, 40.005379>,  <43.141117, 28.987316, 39.833065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.079784, 29.142706, 40.005379>,  <42.977566, 29.401688, 40.292572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079784, 29.142706, 40.005379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259718, 0.761316, -0.594092,
		0.931257, -0.034651, 0.362711,
		0.255551, -0.647455, -0.717980,
		43.156448, 28.948469, 39.789986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.693901, 29.518620, 40.116295>,  <42.977566, 29.401688, 40.292572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.693901, 29.518620, 40.116295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.517544, 29.346828, 39.801037>,  <43.411732, 29.243753, 39.611881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.517544, 29.346828, 39.801037>,  <43.693901, 29.518620, 40.116295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.517544, 29.346828, 39.801037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380323, 0.705975, -0.597456,
		0.813002, -0.563160, -0.147917,
		-0.440889, -0.429477, -0.788142,
		43.385277, 29.217985, 39.564594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149700, 29.731171, 39.524830>,  <43.693901, 29.518620, 40.116295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149700, 29.731171, 39.524830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.840622, 29.577255, 39.322891>,  <43.655174, 29.484905, 39.201729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.840622, 29.577255, 39.322891>,  <44.149700, 29.731171, 39.524830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840622, 29.577255, 39.322891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141404, 0.670999, -0.727849,
		0.618820, -0.633798, -0.464071,
		-0.772701, -0.384786, -0.504849,
		43.608810, 29.461819, 39.171436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.287373, 29.835907, 38.778782>,  <44.149700, 29.731171, 39.524830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.287373, 29.835907, 38.778782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.891159, 29.788347, 38.806202>,  <43.653431, 29.759811, 38.822655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.891159, 29.788347, 38.806202>,  <44.287373, 29.835907, 38.778782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891159, 29.788347, 38.806202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130931, 0.668888, -0.731741,
		0.041152, -0.733792, -0.678127,
		-0.990537, -0.118901, 0.068550,
		43.593998, 29.752676, 38.826767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.007450, 29.798082, 38.113846>,  <44.287373, 29.835907, 38.778782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.007450, 29.798082, 38.113846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.696823, 29.915009, 38.337097>,  <43.510448, 29.985165, 38.471046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.696823, 29.915009, 38.337097>,  <44.007450, 29.798082, 38.113846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696823, 29.915009, 38.337097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200818, 0.724813, -0.659029,
		-0.597178, -0.623859, -0.504161,
		-0.776563, 0.292313, 0.558124,
		43.463856, 30.002703, 38.504536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494175, 29.978094, 37.654865>,  <44.007450, 29.798082, 38.113846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494175, 29.978094, 37.654865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.353577, 30.171967, 37.975250>,  <43.269218, 30.288290, 38.167480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.353577, 30.171967, 37.975250>,  <43.494175, 29.978094, 37.654865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353577, 30.171967, 37.975250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124438, 0.823773, -0.553094,
		-0.927883, -0.294079, -0.229238,
		-0.351494, 0.484680, 0.800960,
		43.248127, 30.317371, 38.215538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822498, 30.322279, 37.389496>,  <43.494175, 29.978094, 37.654865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822498, 30.322279, 37.389496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.928188, 30.499983, 37.731915>,  <42.991600, 30.606606, 37.937366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.928188, 30.499983, 37.731915>,  <42.822498, 30.322279, 37.389496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928188, 30.499983, 37.731915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036472, 0.882354, -0.469170,
		-0.963772, 0.155187, 0.216935,
		0.264223, 0.444261, 0.856048,
		43.007454, 30.633261, 37.988728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346104, 30.908930, 37.442543>,  <42.822498, 30.322279, 37.389496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346104, 30.908930, 37.442543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.684326, 30.974419, 37.645809>,  <42.887260, 31.013712, 37.767769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.684326, 30.974419, 37.645809>,  <42.346104, 30.908930, 37.442543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684326, 30.974419, 37.645809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062060, 0.915226, -0.398134,
		-0.530266, 0.368182, 0.763715,
		0.845557, 0.163721, 0.508163,
		42.937992, 31.023535, 37.798260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177101, 31.541922, 37.771523>,  <42.346104, 30.908930, 37.442543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177101, 31.541922, 37.771523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.576130, 31.536449, 37.798855>,  <42.815548, 31.533167, 37.815254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.576130, 31.536449, 37.798855>,  <42.177101, 31.541922, 37.771523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576130, 31.536449, 37.798855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031461, 0.963346, -0.266410,
		-0.062185, 0.267912, 0.961434,
		0.997569, -0.013681, 0.068335,
		42.875401, 31.532345, 37.819355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343266, 32.037796, 38.089836>,  <42.177101, 31.541922, 37.771523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343266, 32.037796, 38.089836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.703068, 31.978813, 37.925323>,  <42.918949, 31.943422, 37.826614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.703068, 31.978813, 37.925323>,  <42.343266, 32.037796, 38.089836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703068, 31.978813, 37.925323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014249, 0.930923, -0.364939,
		0.436686, 0.334123, 0.835265,
		0.899501, -0.147462, -0.411282,
		42.972919, 31.934574, 37.801937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781696, 32.511372, 38.329037>,  <42.343266, 32.037796, 38.089836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781696, 32.511372, 38.329037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.917118, 32.410400, 37.966454>,  <42.998371, 32.349815, 37.748905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.917118, 32.410400, 37.966454>,  <42.781696, 32.511372, 38.329037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917118, 32.410400, 37.966454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059496, 0.955672, -0.288359,
		0.939064, 0.151556, 0.308528,
		0.338555, -0.252431, -0.906454,
		43.018684, 32.334671, 37.694519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188202, 33.010818, 38.170986>,  <42.781696, 32.511372, 38.329037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188202, 33.010818, 38.170986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.137756, 32.834267, 37.815620>,  <43.107487, 32.728336, 37.602402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.137756, 32.834267, 37.815620>,  <43.188202, 33.010818, 38.170986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137756, 32.834267, 37.815620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090813, 0.896943, -0.432720,
		0.987850, 0.026106, -0.153203,
		-0.126118, -0.441375, -0.888416,
		43.099922, 32.701855, 37.549095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674404, 33.386658, 37.690720>,  <43.188202, 33.010818, 38.170986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674404, 33.386658, 37.690720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.410004, 33.200890, 37.454960>,  <43.251362, 33.089428, 37.313503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.410004, 33.200890, 37.454960>,  <43.674404, 33.386658, 37.690720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410004, 33.200890, 37.454960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200733, 0.866277, -0.457461,
		0.723036, -0.184071, -0.665835,
		-0.661003, -0.464416, -0.589400,
		43.211704, 33.061565, 37.278141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835114, 33.712589, 37.024849>,  <43.674404, 33.386658, 37.690720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835114, 33.712589, 37.024849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.474709, 33.539085, 37.027290>,  <43.258465, 33.434982, 37.028755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.474709, 33.539085, 37.027290>,  <43.835114, 33.712589, 37.024849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474709, 33.539085, 37.027290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387562, 0.798579, -0.460507,
		0.194877, -0.417285, -0.887635,
		-0.901010, -0.433755, 0.006099,
		43.204407, 33.408958, 37.029121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544716, 33.820610, 36.387161>,  <43.835114, 33.712589, 37.024849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544716, 33.820610, 36.387161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.212547, 33.733154, 36.592136>,  <43.013245, 33.680679, 36.715122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.212547, 33.733154, 36.592136>,  <43.544716, 33.820610, 36.387161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212547, 33.733154, 36.592136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412802, 0.859162, -0.302384,
		-0.374153, -0.462642, -0.803724,
		-0.830424, -0.218641, 0.512437,
		42.963421, 33.667561, 36.745869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245037, 33.678608, 36.347244>,  <43.544716, 33.820610, 36.387161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245037, 33.678608, 36.347244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.560265, 33.783726, 36.124573>,  <44.749401, 33.846794, 35.990971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.560265, 33.783726, 36.124573>,  <44.245037, 33.678608, 36.347244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.560265, 33.783726, 36.124573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613362, -0.412010, 0.673821,
		-0.052282, -0.872461, -0.485878,
		0.788070, 0.262790, -0.556675,
		44.796684, 33.862564, 35.957569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676029, 33.106159, 36.082470>,  <44.245037, 33.678608, 36.347244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676029, 33.106159, 36.082470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.900692, 33.427509, 36.161594>,  <45.035488, 33.620319, 36.209068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.900692, 33.427509, 36.161594>,  <44.676029, 33.106159, 36.082470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900692, 33.427509, 36.161594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531379, -0.533518, 0.658023,
		0.634174, -0.264473, -0.726552,
		0.561658, 0.803375, 0.197808,
		45.069191, 33.668522, 36.220936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241901, 32.786087, 36.221096>,  <44.676029, 33.106159, 36.082470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.241901, 32.786087, 36.221096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.349911, 33.143616, 36.364300>,  <45.414715, 33.358131, 36.450222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.349911, 33.143616, 36.364300>,  <45.241901, 32.786087, 36.221096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.349911, 33.143616, 36.364300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625973, -0.445479, 0.640082,
		0.731605, 0.051266, -0.679798,
		0.270021, 0.893823, 0.358006,
		45.430916, 33.411762, 36.471703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.988667, 32.698807, 36.324581>,  <45.241901, 32.786087, 36.221096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.988667, 32.698807, 36.324581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.893749, 33.012665, 36.553677>,  <45.836800, 33.200977, 36.691135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.893749, 33.012665, 36.553677>,  <45.988667, 32.698807, 36.324581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.893749, 33.012665, 36.553677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516401, -0.397491, 0.758506,
		0.822813, 0.475751, -0.310868,
		-0.237293, 0.784641, 0.572739,
		45.822563, 33.248058, 36.725498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.552315, 32.949284, 36.649097>,  <45.988667, 32.698807, 36.324581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.552315, 32.949284, 36.649097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.255692, 33.092049, 36.876328>,  <46.077717, 33.177708, 37.012665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.255692, 33.092049, 36.876328>,  <46.552315, 32.949284, 36.649097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.255692, 33.092049, 36.876328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502862, -0.264804, 0.822805,
		0.444094, 0.895821, 0.016892,
		-0.741560, 0.356908, 0.568072,
		46.033222, 33.199120, 37.046749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.958122, 33.155972, 37.246162>,  <46.552315, 32.949284, 36.649097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.958122, 33.155972, 37.246162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.585667, 33.183876, 37.389336>,  <46.362194, 33.200619, 37.475239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.585667, 33.183876, 37.389336>,  <46.958122, 33.155972, 37.246162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.585667, 33.183876, 37.389336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336730, -0.212290, 0.917358,
		0.139979, 0.974714, 0.174181,
		-0.931138, 0.069759, 0.357931,
		46.306324, 33.204803, 37.496716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.078228, 33.457157, 37.934719>,  <46.958122, 33.155972, 37.246162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.078228, 33.457157, 37.934719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.732319, 33.257946, 37.909012>,  <46.524773, 33.138420, 37.893589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.732319, 33.257946, 37.909012>,  <47.078228, 33.457157, 37.934719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.732319, 33.257946, 37.909012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195646, -0.452020, 0.870288,
		-0.462478, 0.740030, 0.488333,
		-0.864775, -0.498030, -0.064265,
		46.472885, 33.108536, 37.889732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.713341, 33.431919, 38.574162>,  <47.078228, 33.457157, 37.934719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.713341, 33.431919, 38.574162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.603233, 33.104744, 38.372089>,  <46.537167, 32.908440, 38.250847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.603233, 33.104744, 38.372089>,  <46.713341, 33.431919, 38.574162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.603233, 33.104744, 38.372089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194310, -0.561969, 0.804012,
		-0.941525, 0.123161, 0.313628,
		-0.275272, -0.817938, -0.505176,
		46.520653, 32.859364, 38.220535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.445984, 33.000259, 39.117767>,  <46.713341, 33.431919, 38.574162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.445984, 33.000259, 39.117767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.459454, 32.737534, 38.816448>,  <46.467537, 32.579899, 38.635654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.459454, 32.737534, 38.816448>,  <46.445984, 33.000259, 39.117767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.459454, 32.737534, 38.816448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084912, -0.749124, 0.656965,
		-0.995819, -0.086087, 0.030546,
		0.033674, -0.656812, -0.753302,
		46.469555, 32.540489, 38.590458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.929493, 32.472626, 39.231087>,  <46.445984, 33.000259, 39.117767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.929493, 32.472626, 39.231087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.191711, 32.308773, 38.977329>,  <46.349045, 32.210461, 38.825073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.191711, 32.308773, 38.977329>,  <45.929493, 32.472626, 39.231087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.191711, 32.308773, 38.977329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020849, -0.849586, 0.527038,
		-0.754862, -0.332274, -0.565488,
		0.655552, -0.409631, -0.634393,
		46.388378, 32.185883, 38.787010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655289, 31.858446, 39.149399>,  <45.929493, 32.472626, 39.231087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655289, 31.858446, 39.149399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.012165, 31.788424, 38.982861>,  <46.226292, 31.746410, 38.882938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.012165, 31.788424, 38.982861>,  <45.655289, 31.858446, 39.149399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.012165, 31.788424, 38.982861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013303, -0.931616, 0.363199,
		-0.451453, -0.318506, -0.833513,
		0.892196, -0.175055, -0.416344,
		46.279823, 31.735907, 38.857956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627457, 31.170525, 38.853550>,  <45.655289, 31.858446, 39.149399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627457, 31.170525, 38.853550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.018341, 31.222654, 38.920563>,  <46.252872, 31.253931, 38.960770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.018341, 31.222654, 38.920563>,  <45.627457, 31.170525, 38.853550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.018341, 31.222654, 38.920563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006513, -0.807342, 0.590048,
		0.212151, -0.575513, -0.789796,
		0.977215, 0.130323, 0.167530,
		46.311504, 31.261751, 38.970821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.951153, 30.531311, 38.660130>,  <45.627457, 31.170525, 38.853550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.951153, 30.531311, 38.660130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.183266, 30.730938, 38.917564>,  <46.322533, 30.850714, 39.072025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.183266, 30.730938, 38.917564>,  <45.951153, 30.531311, 38.660130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.183266, 30.730938, 38.917564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111297, -0.831426, 0.544375,
		0.806776, -0.244260, -0.538005,
		0.580280, 0.499067, 0.643589,
		46.357349, 30.880657, 39.110641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.519161, 30.035278, 38.793922>,  <45.951153, 30.531311, 38.660130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.519161, 30.035278, 38.793922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.518379, 30.305264, 39.089062>,  <46.517910, 30.467255, 39.266148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.518379, 30.305264, 39.089062>,  <46.519161, 30.035278, 38.793922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.518379, 30.305264, 39.089062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025422, -0.737579, 0.674782,
		0.999675, 0.020077, -0.015717,
		-0.001955, 0.674962, 0.737850,
		46.517792, 30.507751, 39.310417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.925678, 29.688543, 39.366737>,  <46.519161, 30.035278, 38.793922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.925678, 29.688543, 39.366737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.697975, 29.983204, 39.512775>,  <46.561352, 30.160000, 39.600399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.697975, 29.983204, 39.512775>,  <46.925678, 29.688543, 39.366737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.697975, 29.983204, 39.512775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231950, -0.569925, 0.788280,
		0.788762, 0.364051, 0.495299,
		-0.569257, 0.736650, 0.365094,
		46.527199, 30.204199, 39.622303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.111115, 29.710691, 40.036179>,  <46.925678, 29.688543, 39.366737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.111115, 29.710691, 40.036179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.758926, 29.900160, 40.044178>,  <46.547611, 30.013842, 40.048977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.758926, 29.900160, 40.044178>,  <47.111115, 29.710691, 40.036179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.758926, 29.900160, 40.044178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244392, -0.489615, 0.836988,
		0.406248, 0.732060, 0.546855,
		-0.880474, 0.473672, 0.019996,
		46.494785, 30.042261, 40.050179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.926224, 29.796011, 40.743504>,  <47.111115, 29.710691, 40.036179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.926224, 29.796011, 40.743504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.574947, 29.809019, 40.552620>,  <46.364182, 29.816824, 40.438091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.574947, 29.809019, 40.552620>,  <46.926224, 29.796011, 40.743504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.574947, 29.809019, 40.552620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436719, -0.461460, 0.772225,
		-0.195100, 0.886565, 0.419451,
		-0.878187, 0.032521, -0.477210,
		46.311493, 29.818775, 40.409458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.513706, 30.087925, 41.243793>,  <46.926224, 29.796011, 40.743504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.513706, 30.087925, 41.243793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.282986, 29.885368, 40.987396>,  <46.144554, 29.763834, 40.833557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.282986, 29.885368, 40.987396>,  <46.513706, 30.087925, 41.243793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.282986, 29.885368, 40.987396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331038, -0.572457, 0.750138,
		-0.746802, 0.644873, 0.162559,
		-0.576801, -0.506391, -0.640990,
		46.109943, 29.733452, 40.795101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.689419, 30.073427, 41.563435>,  <46.513706, 30.087925, 41.243793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.689419, 30.073427, 41.563435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.764008, 29.769463, 41.314354>,  <45.808762, 29.587084, 41.164906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.764008, 29.769463, 41.314354>,  <45.689419, 30.073427, 41.563435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.764008, 29.769463, 41.314354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290487, -0.648129, 0.703951,
		-0.938535, 0.049624, -0.341600,
		0.186468, -0.759912, -0.622706,
		45.819946, 29.541489, 41.127541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.109001, 29.668327, 41.729942>,  <45.689419, 30.073427, 41.563435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.109001, 29.668327, 41.729942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.389706, 29.438559, 41.561382>,  <45.558128, 29.300697, 41.460247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.389706, 29.438559, 41.561382>,  <45.109001, 29.668327, 41.729942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.389706, 29.438559, 41.561382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202161, -0.727757, 0.655363,
		-0.683125, -0.374719, -0.626838,
		0.701763, -0.574417, -0.421395,
		45.600231, 29.266233, 41.434963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.835014, 28.990223, 41.665531>,  <45.109001, 29.668327, 41.729942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.835014, 28.990223, 41.665531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.225086, 28.910433, 41.627079>,  <45.459129, 28.862558, 41.604008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.225086, 28.910433, 41.627079>,  <44.835014, 28.990223, 41.665531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.225086, 28.910433, 41.627079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121995, -0.846293, 0.518561,
		-0.184795, -0.493961, -0.849620,
		0.975176, -0.199477, -0.096129,
		45.517639, 28.850590, 41.598240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.370586, 37.402092, 42.749687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253094, 37.031868, 42.654144>,  <36.182598, 36.809734, 42.596817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253094, 37.031868, 42.654144>,  <36.370586, 37.402092, 42.749687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253094, 37.031868, 42.654144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698905, -0.037481, -0.714232,
		0.652114, -0.376732, 0.657890,
		-0.293732, -0.925564, -0.238858,
		36.164974, 36.754200, 42.582485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071899, 36.975288, 42.769077>,  <36.370586, 37.402092, 42.749687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071899, 36.975288, 42.769077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814163, 36.765003, 42.546921>,  <36.659523, 36.638832, 42.413628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814163, 36.765003, 42.546921>,  <37.071899, 36.975288, 42.769077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814163, 36.765003, 42.546921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731565, -0.212137, -0.647928,
		0.222804, -0.823788, 0.521278,
		-0.644338, -0.525710, -0.555390,
		36.620861, 36.607292, 42.380302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391788, 36.279434, 42.614410>,  <37.071899, 36.975288, 42.769077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391788, 36.279434, 42.614410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110641, 36.288548, 42.330029>,  <36.941952, 36.294018, 42.159401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110641, 36.288548, 42.330029>,  <37.391788, 36.279434, 42.614410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110641, 36.288548, 42.330029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634813, -0.430833, -0.641401,
		-0.320919, -0.902144, 0.288353,
		-0.702868, 0.022787, -0.710955,
		36.899780, 36.295383, 42.116741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481281, 35.556641, 42.285633>,  <37.391788, 36.279434, 42.614410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481281, 35.556641, 42.285633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291901, 35.818344, 42.049736>,  <37.178272, 35.975365, 41.908199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291901, 35.818344, 42.049736>,  <37.481281, 35.556641, 42.285633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291901, 35.818344, 42.049736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429117, -0.413378, -0.803105,
		-0.769220, -0.633300, -0.085037,
		-0.473454, 0.654255, -0.589739,
		37.149864, 36.014622, 41.872814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213852, 35.171253, 41.688427>,  <37.481281, 35.556641, 42.285633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213852, 35.171253, 41.688427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209373, 35.547523, 41.552780>,  <37.206688, 35.773285, 41.471394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209373, 35.547523, 41.552780>,  <37.213852, 35.171253, 41.688427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209373, 35.547523, 41.552780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452636, -0.297635, -0.840556,
		-0.891625, -0.162907, -0.422452,
		-0.011196, 0.940678, -0.339116,
		37.206017, 35.829727, 41.451046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919670, 35.096264, 41.064613>,  <37.213852, 35.171253, 41.688427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919670, 35.096264, 41.064613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096352, 35.454178, 41.038483>,  <37.202358, 35.668926, 41.022804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096352, 35.454178, 41.038483>,  <36.919670, 35.096264, 41.064613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096352, 35.454178, 41.038483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380356, -0.252712, -0.889644,
		-0.812545, 0.368109, -0.451958,
		0.441701, 0.894781, -0.065327,
		37.228863, 35.722610, 41.018883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715137, 35.338573, 40.403069>,  <36.919670, 35.096264, 41.064613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715137, 35.338573, 40.403069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049637, 35.527344, 40.514767>,  <37.250336, 35.640606, 40.581787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049637, 35.527344, 40.514767>,  <36.715137, 35.338573, 40.403069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049637, 35.527344, 40.514767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414950, -0.211680, -0.884878,
		-0.358486, 0.855849, -0.372841,
		0.836245, 0.471926, 0.279250,
		37.300510, 35.668922, 40.598541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772919, 35.805145, 39.916626>,  <36.715137, 35.338573, 40.403069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772919, 35.805145, 39.916626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131420, 35.732929, 40.078682>,  <37.346519, 35.689598, 40.175915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131420, 35.732929, 40.078682>,  <36.772919, 35.805145, 39.916626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131420, 35.732929, 40.078682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359522, -0.239235, -0.901948,
		0.259760, 0.954029, -0.149508,
		0.896253, -0.180539, 0.405138,
		37.400295, 35.678768, 40.200222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261780, 36.292877, 39.441288>,  <36.772919, 35.805145, 39.916626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261780, 36.292877, 39.441288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493073, 36.020885, 39.621628>,  <37.631847, 35.857689, 39.729832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493073, 36.020885, 39.621628>,  <37.261780, 36.292877, 39.441288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493073, 36.020885, 39.621628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527940, -0.109465, -0.842197,
		0.622033, 0.725010, 0.295694,
		0.578233, -0.679984, 0.450853,
		37.666542, 35.816891, 39.756886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987953, 36.483940, 39.266682>,  <37.261780, 36.292877, 39.441288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987953, 36.483940, 39.266682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984257, 36.102695, 39.387669>,  <37.982040, 35.873947, 39.460262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984257, 36.102695, 39.387669>,  <37.987953, 36.483940, 39.266682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984257, 36.102695, 39.387669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481558, -0.269335, -0.834003,
		0.876366, 0.137950, 0.461469,
		-0.009239, -0.953115, 0.302467,
		37.981483, 35.816761, 39.478409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663353, 36.248386, 39.085674>,  <37.987953, 36.483940, 39.266682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663353, 36.248386, 39.085674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459675, 35.906261, 39.123970>,  <38.337467, 35.700989, 39.146946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459675, 35.906261, 39.123970>,  <38.663353, 36.248386, 39.085674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459675, 35.906261, 39.123970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550109, -0.408996, -0.728081,
		0.661893, -0.318068, 0.678772,
		-0.509194, -0.855310, 0.095740,
		38.306915, 35.649670, 39.152691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199535, 35.734982, 39.145992>,  <38.663353, 36.248386, 39.085674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199535, 35.734982, 39.145992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853130, 35.583477, 39.015411>,  <38.645287, 35.492573, 38.937061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853130, 35.583477, 39.015411>,  <39.199535, 35.734982, 39.145992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853130, 35.583477, 39.015411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476334, -0.426296, -0.769011,
		0.152105, -0.821470, 0.549592,
		-0.866008, -0.378760, -0.326452,
		38.593327, 35.469849, 38.917477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213367, 34.937092, 39.039742>,  <39.199535, 35.734982, 39.145992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213367, 34.937092, 39.039742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955452, 35.126995, 38.800121>,  <38.800705, 35.240936, 38.656349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955452, 35.126995, 38.800121>,  <39.213367, 34.937092, 39.039742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955452, 35.126995, 38.800121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454130, -0.392466, -0.799835,
		-0.614833, -0.787768, 0.037456,
		-0.644784, 0.474755, -0.599050,
		38.762016, 35.269421, 38.620407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482159, 34.421368, 38.566265>,  <39.213367, 34.937092, 39.039742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482159, 34.421368, 38.566265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486927, 34.038071, 38.451981>,  <39.489788, 33.808094, 38.383408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486927, 34.038071, 38.451981>,  <39.482159, 34.421368, 38.566265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486927, 34.038071, 38.451981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377623, -0.268890, 0.886058,
		-0.925883, 0.097331, -0.365059,
		0.011919, -0.958240, -0.285715,
		39.490501, 33.750599, 38.366264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818821, 34.024105, 38.634743>,  <39.482159, 34.421368, 38.566265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818821, 34.024105, 38.634743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092533, 33.732513, 38.642239>,  <39.256760, 33.557560, 38.646736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092533, 33.732513, 38.642239>,  <38.818821, 34.024105, 38.634743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092533, 33.732513, 38.642239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422034, -0.374936, 0.825415,
		-0.594686, -0.572722, -0.564215,
		0.684278, -0.728981, 0.018739,
		39.297817, 33.513821, 38.647861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469124, 33.405727, 38.584496>,  <38.818821, 34.024105, 38.634743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469124, 33.405727, 38.584496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813725, 33.344303, 38.778088>,  <39.020485, 33.307449, 38.894241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813725, 33.344303, 38.778088>,  <38.469124, 33.405727, 38.584496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813725, 33.344303, 38.778088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497371, -0.446989, 0.743521,
		0.102159, -0.881261, -0.461457,
		0.861502, -0.153558, 0.483977,
		39.072174, 33.298237, 38.923279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480633, 32.727962, 38.674671>,  <38.469124, 33.405727, 38.584496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480633, 32.727962, 38.674671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742558, 32.863625, 38.944839>,  <38.899712, 32.945023, 39.106941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742558, 32.863625, 38.944839>,  <38.480633, 32.727962, 38.674671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742558, 32.863625, 38.944839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421993, -0.577315, 0.699020,
		0.627008, -0.742750, -0.234912,
		0.654816, 0.339160, 0.675417,
		38.939003, 32.965374, 39.147465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676182, 32.163570, 38.950226>,  <38.480633, 32.727962, 38.674671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676182, 32.163570, 38.950226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774277, 32.455181, 39.205841>,  <38.833134, 32.630150, 39.359211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774277, 32.455181, 39.205841>,  <38.676182, 32.163570, 38.950226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774277, 32.455181, 39.205841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577289, -0.419746, 0.700393,
		0.778842, -0.540677, 0.317922,
		0.245240, 0.729029, 0.639042,
		38.847847, 32.673889, 39.397552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769890, 31.710203, 39.615337>,  <38.676182, 32.163570, 38.950226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769890, 31.710203, 39.615337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685410, 32.097435, 39.669319>,  <38.634720, 32.329773, 39.701710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685410, 32.097435, 39.669319>,  <38.769890, 31.710203, 39.615337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685410, 32.097435, 39.669319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587385, -0.236063, 0.774114,
		0.781264, 0.084220, 0.618493,
		-0.211200, 0.968081, 0.134958,
		38.622051, 32.387859, 39.709808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923611, 31.766350, 40.280190>,  <38.769890, 31.710203, 39.615337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923611, 31.766350, 40.280190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702477, 32.089207, 40.197346>,  <38.569794, 32.282921, 40.147640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702477, 32.089207, 40.197346>,  <38.923611, 31.766350, 40.280190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702477, 32.089207, 40.197346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620861, -0.233205, 0.748430,
		0.555790, 0.542346, 0.630047,
		-0.552838, 0.807141, -0.207108,
		38.536625, 32.331348, 40.135212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799133, 32.082256, 40.873753>,  <38.923611, 31.766350, 40.280190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799133, 32.082256, 40.873753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516644, 32.219543, 40.626060>,  <38.347149, 32.301914, 40.477444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516644, 32.219543, 40.626060>,  <38.799133, 32.082256, 40.873753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516644, 32.219543, 40.626060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694884, -0.168510, 0.699100,
		0.135596, 0.924016, 0.357502,
		-0.706222, 0.343218, -0.619235,
		38.304775, 32.322510, 40.440289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483784, 32.634399, 41.195572>,  <38.799133, 32.082256, 40.873753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483784, 32.634399, 41.195572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222706, 32.499493, 40.924210>,  <38.066059, 32.418549, 40.761391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222706, 32.499493, 40.924210>,  <38.483784, 32.634399, 41.195572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222706, 32.499493, 40.924210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719827, -0.003211, 0.694146,
		-0.236292, 0.941403, -0.240679,
		-0.652698, -0.337269, -0.678406,
		38.026897, 32.398312, 40.720688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914833, 33.104183, 41.171516>,  <38.483784, 32.634399, 41.195572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914833, 33.104183, 41.171516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779102, 32.773502, 40.992001>,  <37.697662, 32.575092, 40.884293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779102, 32.773502, 40.992001>,  <37.914833, 33.104183, 41.171516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779102, 32.773502, 40.992001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754621, -0.045603, 0.654575,
		-0.561607, 0.560784, -0.608374,
		-0.339331, -0.826705, -0.448790,
		37.677303, 32.525490, 40.857365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266876, 33.271744, 40.880199>,  <37.914833, 33.104183, 41.171516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266876, 33.271744, 40.880199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256126, 32.872715, 40.905914>,  <37.249676, 32.633297, 40.921345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256126, 32.872715, 40.905914>,  <37.266876, 33.271744, 40.880199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256126, 32.872715, 40.905914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870489, 0.054972, 0.489108,
		-0.491454, -0.042815, -0.869851,
		-0.026876, -0.997570, 0.064286,
		37.248062, 32.573444, 40.925201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635441, 33.044655, 40.636223>,  <37.266876, 33.271744, 40.880199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635441, 33.044655, 40.636223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750359, 32.729172, 40.853622>,  <36.819309, 32.539883, 40.984062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750359, 32.729172, 40.853622>,  <36.635441, 33.044655, 40.636223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750359, 32.729172, 40.853622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899220, -0.026629, 0.436686,
		-0.329946, -0.614186, -0.716876,
		0.287296, -0.788712, 0.543502,
		36.836548, 32.492558, 41.016674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979923, 32.625755, 40.677494>,  <36.635441, 33.044655, 40.636223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979923, 32.625755, 40.677494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220348, 32.452740, 40.946308>,  <36.364605, 32.348930, 41.107597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220348, 32.452740, 40.946308>,  <35.979923, 32.625755, 40.677494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220348, 32.452740, 40.946308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787028, -0.174143, 0.591829,
		-0.138955, -0.884641, -0.445087,
		0.601064, -0.432533, 0.672039,
		36.400669, 32.322979, 41.147919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632484, 32.065151, 40.964851>,  <35.979923, 32.625755, 40.677494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632484, 32.065151, 40.964851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910507, 32.117928, 41.247551>,  <36.077320, 32.149593, 41.417171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910507, 32.117928, 41.247551>,  <35.632484, 32.065151, 40.964851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910507, 32.117928, 41.247551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683987, -0.181508, 0.706553,
		0.221505, -0.974498, -0.035911,
		0.695052, 0.131942, 0.706748,
		36.119022, 32.157509, 41.459576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559971, 31.498791, 41.460835>,  <35.632484, 32.065151, 40.964851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559971, 31.498791, 41.460835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729774, 31.806364, 41.652054>,  <35.831657, 31.990908, 41.766785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729774, 31.806364, 41.652054>,  <35.559971, 31.498791, 41.460835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729774, 31.806364, 41.652054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672477, -0.085773, 0.735131,
		0.606271, -0.633548, 0.480679,
		0.424512, 0.768935, 0.478048,
		35.857128, 32.037045, 41.795467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272549, 30.872625, 41.295181>,  <35.559971, 31.498791, 41.460835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272549, 30.872625, 41.295181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882706, 30.798832, 41.244404>,  <34.648800, 30.754555, 41.213940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882706, 30.798832, 41.244404>,  <35.272549, 30.872625, 41.295181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882706, 30.798832, 41.244404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125705, 0.018418, -0.991897,
		0.185328, -0.982663, 0.005240,
		-0.974604, -0.184485, -0.126939,
		34.590324, 30.743486, 41.206322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220596, 30.330379, 40.865166>,  <35.272549, 30.872625, 41.295181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220596, 30.330379, 40.865166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878204, 30.529179, 40.808182>,  <34.672771, 30.648458, 40.773991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878204, 30.529179, 40.808182>,  <35.220596, 30.330379, 40.865166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878204, 30.529179, 40.808182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249456, 0.155658, -0.955794,
		-0.452854, -0.853675, -0.257219,
		-0.855976, 0.497000, -0.142464,
		34.621410, 30.678278, 40.765442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861382, 30.029394, 40.319855>,  <35.220596, 30.330379, 40.865166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861382, 30.029394, 40.319855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679493, 30.384266, 40.351208>,  <34.570362, 30.597189, 40.370018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679493, 30.384266, 40.351208>,  <34.861382, 30.029394, 40.319855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679493, 30.384266, 40.351208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031817, 0.104128, -0.994055,
		-0.890067, -0.449521, -0.075576,
		-0.454718, 0.887180, 0.078379,
		34.543079, 30.650419, 40.374722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362511, 30.058615, 39.838150>,  <34.861382, 30.029394, 40.319855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362511, 30.058615, 39.838150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412510, 30.443068, 39.936619>,  <34.442509, 30.673738, 39.995701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412510, 30.443068, 39.936619>,  <34.362511, 30.058615, 39.838150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412510, 30.443068, 39.936619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157761, 0.264217, -0.951473,
		-0.979534, 0.080096, 0.184656,
		0.124999, 0.961132, 0.246174,
		34.450008, 30.731407, 40.010471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820915, 30.388275, 39.453758>,  <34.362511, 30.058615, 39.838150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820915, 30.388275, 39.453758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053783, 30.699968, 39.546600>,  <34.193504, 30.886984, 39.602306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053783, 30.699968, 39.546600>,  <33.820915, 30.388275, 39.453758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053783, 30.699968, 39.546600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082138, 0.340379, -0.936694,
		-0.808907, 0.526252, 0.262163,
		0.582171, 0.779231, 0.232109,
		34.228436, 30.933739, 39.616234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429852, 30.975584, 39.237026>,  <33.820915, 30.388275, 39.453758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429852, 30.975584, 39.237026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820396, 31.061342, 39.248051>,  <34.054722, 31.112797, 39.254665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820396, 31.061342, 39.248051>,  <33.429852, 30.975584, 39.237026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820396, 31.061342, 39.248051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055383, 0.371370, -0.926831,
		-0.208945, 0.903393, 0.374464,
		0.976358, 0.214395, 0.027564,
		34.113304, 31.125660, 39.256321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480419, 31.382803, 38.734802>,  <33.429852, 30.975584, 39.237026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480419, 31.382803, 38.734802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873268, 31.335388, 38.793308>,  <34.108978, 31.306940, 38.828411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873268, 31.335388, 38.793308>,  <33.480419, 31.382803, 38.734802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873268, 31.335388, 38.793308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173139, 0.263586, -0.948970,
		0.073936, 0.957325, 0.279397,
		0.982118, -0.118538, 0.146262,
		34.167904, 31.299828, 38.837185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914593, 32.082466, 38.602013>,  <33.480419, 31.382803, 38.734802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914593, 32.082466, 38.602013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145790, 31.758528, 38.561871>,  <34.284508, 31.564165, 38.537785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145790, 31.758528, 38.561871>,  <33.914593, 32.082466, 38.602013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145790, 31.758528, 38.561871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215703, 0.270231, -0.938322,
		0.787015, 0.520699, 0.330878,
		0.577996, -0.809844, -0.100359,
		34.319187, 31.515574, 38.531761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424431, 32.314766, 38.225353>,  <33.914593, 32.082466, 38.602013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424431, 32.314766, 38.225353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437412, 31.919136, 38.167843>,  <34.445202, 31.681757, 38.133335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437412, 31.919136, 38.167843>,  <34.424431, 32.314766, 38.225353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437412, 31.919136, 38.167843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082129, 0.146003, -0.985869,
		0.996093, 0.020185, 0.085970,
		0.032452, -0.989078, -0.143775,
		34.447147, 31.622412, 38.124710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825184, 32.203403, 37.637222>,  <34.424431, 32.314766, 38.225353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825184, 32.203403, 37.637222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605042, 31.873287, 37.687809>,  <34.472954, 31.675217, 37.718163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605042, 31.873287, 37.687809>,  <34.825184, 32.203403, 37.637222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605042, 31.873287, 37.687809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020843, -0.137841, -0.990235,
		0.834668, -0.547621, 0.058661,
		-0.550359, -0.825295, 0.126465,
		34.439934, 31.625698, 37.725750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027687, 31.689896, 37.093426>,  <34.825184, 32.203403, 37.637222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027687, 31.689896, 37.093426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662395, 31.570929, 37.204826>,  <34.443222, 31.499548, 37.271667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662395, 31.570929, 37.204826>,  <35.027687, 31.689896, 37.093426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662395, 31.570929, 37.204826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220447, -0.214181, -0.951593,
		0.342670, -0.930413, 0.130030,
		-0.913225, -0.297418, 0.278501,
		34.388428, 31.481703, 37.288376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848755, 30.966753, 36.821274>,  <35.027687, 31.689896, 37.093426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848755, 30.966753, 36.821274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542534, 31.216305, 36.884144>,  <34.358803, 31.366035, 36.921867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542534, 31.216305, 36.884144>,  <34.848755, 30.966753, 36.821274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542534, 31.216305, 36.884144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348013, -0.196079, -0.916755,
		-0.541128, -0.756521, 0.367227,
		-0.765550, 0.623882, 0.157175,
		34.312870, 31.403469, 36.931297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.177723, 29.351341, 44.573673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.792610, 29.455046, 44.543098>,  <33.561543, 29.517269, 44.524754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.792610, 29.455046, 44.543098>,  <34.177723, 29.351341, 44.573673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792610, 29.455046, 44.543098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131643, 0.202764, -0.970339,
		-0.236072, -0.944283, -0.229346,
		-0.962777, 0.259261, -0.076441,
		33.503777, 29.532824, 44.520164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911011, 28.913406, 44.068588>,  <34.177723, 29.351341, 44.573673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911011, 28.913406, 44.068588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.711117, 29.258844, 44.095341>,  <33.591183, 29.466106, 44.111393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.711117, 29.258844, 44.095341>,  <33.911011, 28.913406, 44.068588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711117, 29.258844, 44.095341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032797, 0.096028, -0.994838,
		-0.865560, -0.494957, -0.076311,
		-0.499730, 0.863595, 0.066885,
		33.561199, 29.517923, 44.115406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478695, 28.928722, 43.483608>,  <33.911011, 28.913406, 44.068588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478695, 28.928722, 43.483608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.507858, 29.309664, 43.602070>,  <33.525356, 29.538229, 43.673145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.507858, 29.309664, 43.602070>,  <33.478695, 28.928722, 43.483608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507858, 29.309664, 43.602070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083726, 0.290053, -0.953341,
		-0.993818, 0.094298, -0.058591,
		0.072904, 0.952354, 0.296155,
		33.529728, 29.595369, 43.690918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945534, 29.340034, 43.026466>,  <33.478695, 28.928722, 43.483608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945534, 29.340034, 43.026466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.205021, 29.611855, 43.163506>,  <33.360714, 29.774946, 43.245731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.205021, 29.611855, 43.163506>,  <32.945534, 29.340034, 43.026466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205021, 29.611855, 43.163506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186839, 0.294189, -0.937307,
		-0.737738, 0.672058, 0.063879,
		0.648717, 0.679552, 0.342602,
		33.399635, 29.815720, 43.266285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758915, 30.068295, 42.632343>,  <32.945534, 29.340034, 43.026466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758915, 30.068295, 42.632343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.127983, 30.102341, 42.782772>,  <33.349426, 30.122768, 42.873028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.127983, 30.102341, 42.782772>,  <32.758915, 30.068295, 42.632343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127983, 30.102341, 42.782772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288545, 0.494537, -0.819863,
		-0.255766, 0.864979, 0.431736,
		0.922673, 0.085118, 0.376071,
		33.404785, 30.127876, 42.895592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984509, 30.801144, 42.574898>,  <32.758915, 30.068295, 42.632343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984509, 30.801144, 42.574898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.321869, 30.588913, 42.608761>,  <33.524284, 30.461575, 42.629078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.321869, 30.588913, 42.608761>,  <32.984509, 30.801144, 42.574898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321869, 30.588913, 42.608761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299988, 0.334296, -0.893450,
		0.445743, 0.778931, 0.441112,
		0.843398, -0.530577, 0.084660,
		33.574890, 30.429739, 42.634159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476974, 31.321083, 42.443584>,  <32.984509, 30.801144, 42.574898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476974, 31.321083, 42.443584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.650139, 30.964298, 42.391441>,  <33.754040, 30.750227, 42.360157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.650139, 30.964298, 42.391441>,  <33.476974, 31.321083, 42.443584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650139, 30.964298, 42.391441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355222, 0.301711, -0.884753,
		0.828495, 0.336715, 0.447458,
		0.432913, -0.891960, -0.130357,
		33.780014, 30.696711, 42.352333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044094, 31.616444, 42.102673>,  <33.476974, 31.321083, 42.443584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044094, 31.616444, 42.102673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.066105, 31.220173, 42.052818>,  <34.079311, 30.982410, 42.022903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.066105, 31.220173, 42.052818>,  <34.044094, 31.616444, 42.102673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066105, 31.220173, 42.052818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364297, 0.136144, -0.921278,
		0.929656, 0.005294, 0.368392,
		0.055032, -0.990675, -0.124638,
		34.082615, 30.922970, 42.015427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768997, 31.404673, 41.927307>,  <34.044094, 31.616444, 42.102673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768997, 31.404673, 41.927307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.521187, 31.135609, 41.765461>,  <34.372501, 30.974171, 41.668354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.521187, 31.135609, 41.765461>,  <34.768997, 31.404673, 41.927307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521187, 31.135609, 41.765461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419361, 0.152109, -0.894986,
		0.663568, -0.724147, 0.187853,
		-0.619527, -0.672662, -0.404614,
		34.335327, 30.933809, 41.644077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506760, 31.244707, 42.256054>,  <34.768997, 31.404673, 41.927307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506760, 31.244707, 42.256054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.591492, 31.635372, 42.270252>,  <35.642330, 31.869772, 42.278770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.591492, 31.635372, 42.270252>,  <35.506760, 31.244707, 42.256054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591492, 31.635372, 42.270252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466972, 0.069241, 0.881557,
		0.858525, -0.203315, 0.470741,
		0.211828, 0.976662, 0.035497,
		35.655041, 31.928371, 42.280903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848175, 31.387844, 42.871769>,  <35.506760, 31.244707, 42.256054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848175, 31.387844, 42.871769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.693100, 31.741671, 42.768051>,  <35.600056, 31.953966, 42.705822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.693100, 31.741671, 42.768051>,  <35.848175, 31.387844, 42.871769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693100, 31.741671, 42.768051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346396, 0.120873, 0.930269,
		0.854228, 0.450476, 0.259549,
		-0.387691, 0.884568, -0.259296,
		35.576794, 32.007042, 42.690262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060703, 31.778942, 43.482704>,  <35.848175, 31.387844, 42.871769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060703, 31.778942, 43.482704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.768124, 31.962545, 43.280994>,  <35.592575, 32.072708, 43.159969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.768124, 31.962545, 43.280994>,  <36.060703, 31.778942, 43.482704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768124, 31.962545, 43.280994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449751, 0.231122, 0.862732,
		0.512549, 0.857844, 0.037385,
		-0.731449, 0.459006, -0.504278,
		35.548691, 32.100246, 43.129711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082264, 32.536476, 43.723289>,  <36.060703, 31.778942, 43.482704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082264, 32.536476, 43.723289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.730316, 32.399918, 43.591064>,  <35.519146, 32.317982, 43.511730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.730316, 32.399918, 43.591064>,  <36.082264, 32.536476, 43.723289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730316, 32.399918, 43.591064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405614, 0.177109, 0.896721,
		-0.247590, 0.923083, -0.294308,
		-0.879873, -0.341395, -0.330565,
		35.466354, 32.297501, 43.491894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696815, 32.928013, 44.072517>,  <36.082264, 32.536476, 43.723289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696815, 32.928013, 44.072517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.424801, 32.665081, 43.942619>,  <35.261593, 32.507320, 43.864681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.424801, 32.665081, 43.942619>,  <35.696815, 32.928013, 44.072517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424801, 32.665081, 43.942619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514327, 0.112038, 0.850245,
		-0.522509, 0.745226, -0.414274,
		-0.680039, -0.657332, -0.324749,
		35.220791, 32.467880, 43.845196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111294, 33.182755, 44.288685>,  <35.696815, 32.928013, 44.072517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111294, 33.182755, 44.288685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.990311, 32.808392, 44.216469>,  <34.917721, 32.583775, 44.173138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.990311, 32.808392, 44.216469>,  <35.111294, 33.182755, 44.288685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990311, 32.808392, 44.216469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541644, 0.012903, 0.840509,
		-0.784310, 0.352005, -0.510832,
		-0.302455, -0.935909, -0.180542,
		34.899574, 32.527618, 44.162308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521896, 33.114754, 44.521202>,  <35.111294, 33.182755, 44.288685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521896, 33.114754, 44.521202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.598293, 32.722126, 44.518459>,  <34.644131, 32.486549, 44.516811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.598293, 32.722126, 44.518459>,  <34.521896, 33.114754, 44.521202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598293, 32.722126, 44.518459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244616, -0.054364, 0.968095,
		-0.950624, -0.183219, -0.250490,
		0.190991, -0.981568, -0.006861,
		34.655590, 32.427654, 44.516399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890038, 32.857082, 44.885342>,  <34.521896, 33.114754, 44.521202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890038, 32.857082, 44.885342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.198978, 32.603657, 44.903545>,  <34.384342, 32.451599, 44.914467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.198978, 32.603657, 44.903545>,  <33.890038, 32.857082, 44.885342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198978, 32.603657, 44.903545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106612, -0.058663, 0.992569,
		-0.626189, -0.771460, -0.112854,
		0.772348, -0.633567, 0.045513,
		34.430683, 32.413586, 44.917198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751568, 32.430737, 45.511192>,  <33.890038, 32.857082, 44.885342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751568, 32.430737, 45.511192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.135601, 32.339870, 45.445908>,  <34.366020, 32.285351, 45.406738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.135601, 32.339870, 45.445908>,  <33.751568, 32.430737, 45.511192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135601, 32.339870, 45.445908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173192, 0.024588, 0.984581,
		-0.219648, -0.973546, 0.062950,
		0.960083, -0.227164, -0.163209,
		34.423626, 32.271721, 45.396946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800510, 31.927540, 45.931095>,  <33.751568, 32.430737, 45.511192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800510, 31.927540, 45.931095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.173389, 32.052025, 45.857166>,  <34.397118, 32.126717, 45.812809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.173389, 32.052025, 45.857166>,  <33.800510, 31.927540, 45.931095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173389, 32.052025, 45.857166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246385, -0.171533, 0.953872,
		0.265154, -0.934731, -0.236580,
		0.932195, 0.311213, -0.184821,
		34.453049, 32.145390, 45.801720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312569, 31.384405, 46.142998>,  <33.800510, 31.927540, 45.931095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312569, 31.384405, 46.142998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.515999, 31.728806, 46.141026>,  <34.638058, 31.935446, 46.139843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.515999, 31.728806, 46.141026>,  <34.312569, 31.384405, 46.142998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515999, 31.728806, 46.141026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253469, -0.144243, 0.956529,
		0.822863, -0.487718, -0.291596,
		0.508577, 0.861002, -0.004930,
		34.668571, 31.987106, 46.139545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929455, 31.284187, 46.403912>,  <34.312569, 31.384405, 46.142998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929455, 31.284187, 46.403912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.863194, 31.674711, 46.459599>,  <34.823437, 31.909025, 46.493011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.863194, 31.674711, 46.459599>,  <34.929455, 31.284187, 46.403912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863194, 31.674711, 46.459599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125557, -0.160900, 0.978952,
		0.978158, 0.144690, 0.149236,
		-0.165656, 0.976307, 0.139218,
		34.813496, 31.967604, 46.501366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159344, 31.333811, 47.037876>,  <34.929455, 31.284187, 46.403912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159344, 31.333811, 47.037876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.960770, 31.679649, 47.006836>,  <34.841625, 31.887154, 46.988213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.960770, 31.679649, 47.006836>,  <35.159344, 31.333811, 47.037876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960770, 31.679649, 47.006836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244157, -0.053285, 0.968271,
		0.833030, 0.499631, 0.237550,
		-0.496435, 0.864598, -0.077600,
		34.811840, 31.939030, 46.983555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408894, 31.802332, 47.586914>,  <35.159344, 31.333811, 47.037876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408894, 31.802332, 47.586914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.043159, 31.928045, 47.484764>,  <34.823719, 32.003471, 47.423473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.043159, 31.928045, 47.484764>,  <35.408894, 31.802332, 47.586914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043159, 31.928045, 47.484764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314549, -0.154029, 0.936661,
		0.255041, 0.936751, 0.239691,
		-0.914337, 0.314282, -0.255371,
		34.768860, 32.022331, 47.408154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.422127, 34.121204, 45.275028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.602978, 33.764706, 45.289207>,  <28.711489, 33.550808, 45.297714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.602978, 33.764706, 45.289207>,  <28.422127, 34.121204, 45.275028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602978, 33.764706, 45.289207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478033, 0.208567, -0.853220,
		0.753037, 0.402711, 0.520345,
		0.452128, -0.891248, 0.035450,
		28.738617, 33.497330, 45.299843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982161, 34.246265, 45.138752>,  <28.422127, 34.121204, 45.275028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982161, 34.246265, 45.138752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.011038, 33.854332, 45.064228>,  <29.028364, 33.619171, 45.019512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.011038, 33.854332, 45.064228>,  <28.982161, 34.246265, 45.138752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011038, 33.854332, 45.064228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589218, 0.192619, -0.784678,
		0.804742, -0.053131, 0.591242,
		0.072193, -0.979834, -0.186314,
		29.032696, 33.560383, 45.008335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703352, 34.144199, 45.039696>,  <28.982161, 34.246265, 45.138752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703352, 34.144199, 45.039696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.521832, 33.841415, 44.851620>,  <29.412918, 33.659744, 44.738773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.521832, 33.841415, 44.851620>,  <29.703352, 34.144199, 45.039696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521832, 33.841415, 44.851620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700551, 0.023042, -0.713230,
		0.550719, -0.653057, 0.519831,
		-0.453802, -0.756958, -0.470190,
		29.385691, 33.614326, 44.710564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176851, 33.717907, 44.797134>,  <29.703352, 34.144199, 45.039696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176851, 33.717907, 44.797134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.870869, 33.633526, 44.553711>,  <29.687279, 33.582897, 44.407658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.870869, 33.633526, 44.553711>,  <30.176851, 33.717907, 44.797134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870869, 33.633526, 44.553711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623148, -0.003452, -0.782097,
		0.162886, -0.977490, 0.134097,
		-0.764954, -0.210955, -0.608558,
		29.641382, 33.570240, 44.371143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405230, 33.118191, 44.511654>,  <30.176851, 33.717907, 44.797134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405230, 33.118191, 44.511654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.127632, 33.295776, 44.284931>,  <29.961075, 33.402328, 44.148899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.127632, 33.295776, 44.284931>,  <30.405230, 33.118191, 44.511654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127632, 33.295776, 44.284931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588415, -0.103925, -0.801853,
		-0.414900, -0.889997, -0.189113,
		-0.693993, 0.443966, -0.566806,
		29.919434, 33.428967, 44.114891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514475, 32.840233, 43.839375>,  <30.405230, 33.118191, 44.511654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514475, 32.840233, 43.839375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.259655, 33.123077, 43.716633>,  <30.106764, 33.292786, 43.642990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.259655, 33.123077, 43.716633>,  <30.514475, 32.840233, 43.839375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259655, 33.123077, 43.716633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444003, 0.011212, -0.895955,
		-0.630103, -0.707010, -0.321103,
		-0.637049, 0.707115, -0.306850,
		30.068541, 33.335213, 43.624577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317549, 32.643764, 43.218281>,  <30.514475, 32.840233, 43.839375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317549, 32.643764, 43.218281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.239151, 33.035748, 43.203979>,  <30.192112, 33.270935, 43.195400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.239151, 33.035748, 43.203979>,  <30.317549, 32.643764, 43.218281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239151, 33.035748, 43.203979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610312, 0.093364, -0.786640,
		-0.767532, -0.175998, -0.616376,
		-0.195994, 0.979953, -0.035754,
		30.180353, 33.329735, 43.193253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073959, 32.850960, 42.443604>,  <30.317549, 32.643764, 43.218281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073959, 32.850960, 42.443604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.210325, 33.183334, 42.619476>,  <30.292145, 33.382759, 42.724998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.210325, 33.183334, 42.619476>,  <30.073959, 32.850960, 42.443604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210325, 33.183334, 42.619476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439170, 0.272763, -0.855997,
		-0.831209, 0.484916, -0.271935,
		0.340912, 0.830938, 0.439683,
		30.312599, 33.432617, 42.751381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952276, 33.420879, 41.882137>,  <30.073959, 32.850960, 42.443604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952276, 33.420879, 41.882137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.233894, 33.558720, 42.130512>,  <30.402864, 33.641426, 42.279537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.233894, 33.558720, 42.130512>,  <29.952276, 33.420879, 41.882137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233894, 33.558720, 42.130512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476703, 0.418770, -0.772907,
		-0.526378, 0.840167, 0.130560,
		0.704045, 0.344603, 0.620942,
		30.445108, 33.662102, 42.316795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046961, 34.202869, 41.750690>,  <29.952276, 33.420879, 41.882137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046961, 34.202869, 41.750690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.391504, 34.081135, 41.913387>,  <30.598230, 34.008095, 42.011005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.391504, 34.081135, 41.913387>,  <30.046961, 34.202869, 41.750690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391504, 34.081135, 41.913387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505267, 0.430410, -0.747965,
		0.052571, 0.849779, 0.524511,
		0.861360, -0.304340, 0.406738,
		30.649912, 33.989834, 42.035408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393463, 34.781769, 41.858234>,  <30.046961, 34.202869, 41.750690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393463, 34.781769, 41.858234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.680367, 34.504154, 41.833378>,  <30.852509, 34.337585, 41.818466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.680367, 34.504154, 41.833378>,  <30.393463, 34.781769, 41.858234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680367, 34.504154, 41.833378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438675, 0.519034, -0.733599,
		0.541392, 0.498922, 0.676736,
		0.717258, -0.694032, -0.062137,
		30.895544, 34.295944, 41.814735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068451, 35.152428, 41.849892>,  <30.393463, 34.781769, 41.858234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068451, 35.152428, 41.849892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.137327, 34.791252, 41.692387>,  <31.178654, 34.574547, 41.597885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.137327, 34.791252, 41.692387>,  <31.068451, 35.152428, 41.849892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137327, 34.791252, 41.692387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517289, 0.423067, -0.743926,
		0.838309, -0.075590, 0.539930,
		0.172193, -0.902940, -0.393763,
		31.188986, 34.520370, 41.574257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693707, 35.270119, 41.664627>,  <31.068451, 35.152428, 41.849892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693707, 35.270119, 41.664627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.591305, 34.941322, 41.461140>,  <31.529863, 34.744045, 41.339046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.591305, 34.941322, 41.461140>,  <31.693707, 35.270119, 41.664627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591305, 34.941322, 41.461140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478263, 0.349630, -0.805620,
		0.840075, -0.449542, 0.303621,
		-0.256005, -0.821992, -0.508715,
		31.514503, 34.694725, 41.308525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290428, 34.955425, 41.292339>,  <31.693707, 35.270119, 41.664627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290428, 34.955425, 41.292339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.002781, 34.756542, 41.098164>,  <31.830193, 34.637211, 40.981659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.002781, 34.756542, 41.098164>,  <32.290428, 34.955425, 41.292339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002781, 34.756542, 41.098164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501933, 0.111441, -0.857697,
		0.480553, -0.860444, 0.169426,
		-0.719119, -0.497210, -0.485438,
		31.787045, 34.607380, 40.952534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948517, 34.746994, 41.473843>,  <32.290428, 34.955425, 41.292339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948517, 34.746994, 41.473843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.246277, 34.996010, 41.570438>,  <33.424931, 35.145420, 41.628395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.246277, 34.996010, 41.570438>,  <32.948517, 34.746994, 41.473843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246277, 34.996010, 41.570438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308737, 0.000216, 0.951147,
		0.592077, -0.782586, 0.192362,
		0.744397, 0.622543, 0.241486,
		33.469597, 35.182774, 41.642883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308498, 34.469181, 42.084358>,  <32.948517, 34.746994, 41.473843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308498, 34.469181, 42.084358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.381851, 34.862328, 42.076973>,  <33.425865, 35.098217, 42.072540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.381851, 34.862328, 42.076973>,  <33.308498, 34.469181, 42.084358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381851, 34.862328, 42.076973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194987, 0.054781, 0.979275,
		0.963509, -0.175984, 0.201692,
		0.183386, 0.982868, -0.018467,
		33.436867, 35.157188, 42.071434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715832, 34.489773, 42.629524>,  <33.308498, 34.469181, 42.084358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715832, 34.489773, 42.629524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.624142, 34.872532, 42.558197>,  <33.569126, 35.102188, 42.515404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.624142, 34.872532, 42.558197>,  <33.715832, 34.489773, 42.629524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624142, 34.872532, 42.558197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300649, 0.104629, 0.947979,
		0.925778, 0.270914, 0.263707,
		-0.229229, 0.956901, -0.178313,
		33.555374, 35.159603, 42.504704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005539, 34.995304, 43.211300>,  <33.715832, 34.489773, 42.629524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005539, 34.995304, 43.211300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.695049, 35.182652, 43.042488>,  <33.508755, 35.295059, 42.941200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.695049, 35.182652, 43.042488>,  <34.005539, 34.995304, 43.211300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695049, 35.182652, 43.042488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438982, 0.078950, 0.895021,
		0.452516, 0.880000, 0.144321,
		-0.776224, 0.468365, -0.422031,
		33.462181, 35.323162, 42.915878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839401, 35.489780, 43.708733>,  <34.005539, 34.995304, 43.211300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839401, 35.489780, 43.708733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.512142, 35.473507, 43.479309>,  <33.315784, 35.463741, 43.341656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.512142, 35.473507, 43.479309>,  <33.839401, 35.489780, 43.708733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512142, 35.473507, 43.479309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572227, 0.155502, 0.805217,
		0.056428, 0.986997, -0.150506,
		-0.818151, -0.040687, -0.573562,
		33.266697, 35.461300, 43.307240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463585, 36.108681, 43.826538>,  <33.839401, 35.489780, 43.708733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463585, 36.108681, 43.826538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.230930, 35.805340, 43.708832>,  <33.091339, 35.623333, 43.638206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.230930, 35.805340, 43.708832>,  <33.463585, 36.108681, 43.826538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230930, 35.805340, 43.708832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471737, 0.019747, 0.881519,
		-0.662694, 0.651542, -0.369230,
		-0.581637, -0.758356, -0.294269,
		33.056438, 35.577831, 43.620552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792889, 36.376842, 43.788647>,  <33.463585, 36.108681, 43.826538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792889, 36.376842, 43.788647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.775131, 35.978165, 43.815880>,  <32.764477, 35.738960, 43.832218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.775131, 35.978165, 43.815880>,  <32.792889, 36.376842, 43.788647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775131, 35.978165, 43.815880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585241, 0.081174, 0.806786,
		-0.809643, -0.004027, -0.586909,
		-0.044393, -0.996692, 0.068079,
		32.761814, 35.679157, 43.836304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165600, 36.266342, 44.132641>,  <32.792889, 36.376842, 43.788647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165600, 36.266342, 44.132641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.313911, 35.896664, 44.169258>,  <32.402897, 35.674854, 44.191227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.313911, 35.896664, 44.169258>,  <32.165600, 36.266342, 44.132641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313911, 35.896664, 44.169258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584861, -0.155793, 0.796032,
		-0.721430, -0.348690, -0.598292,
		0.370778, -0.924199, 0.091542,
		32.425144, 35.619404, 44.196720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511547, 35.830353, 44.211212>,  <32.165600, 36.266342, 44.132641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511547, 35.830353, 44.211212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.818197, 35.601307, 44.327415>,  <32.002186, 35.463879, 44.397137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.818197, 35.601307, 44.327415>,  <31.511547, 35.830353, 44.211212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818197, 35.601307, 44.327415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503359, -0.255061, 0.825575,
		-0.398643, -0.779136, -0.483768,
		0.766625, -0.572618, 0.290507,
		32.048183, 35.429523, 44.414570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125826, 35.296101, 44.564346>,  <31.511547, 35.830353, 44.211212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125826, 35.296101, 44.564346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.505041, 35.272312, 44.689365>,  <31.732571, 35.258038, 44.764378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.505041, 35.272312, 44.689365>,  <31.125826, 35.296101, 44.564346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505041, 35.272312, 44.689365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316425, -0.278735, 0.906743,
		0.033191, -0.958525, -0.283070,
		0.948037, -0.059475, 0.312553,
		31.789452, 35.254471, 44.783131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202452, 34.593754, 44.847839>,  <31.125826, 35.296101, 44.564346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202452, 34.593754, 44.847839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.442060, 34.856670, 45.030769>,  <31.585827, 35.014420, 45.140526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.442060, 34.856670, 45.030769>,  <31.202452, 34.593754, 44.847839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442060, 34.856670, 45.030769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324182, -0.323156, 0.889088,
		0.732173, -0.680839, 0.019503,
		0.599023, 0.657289, 0.457322,
		31.621767, 35.053856, 45.167965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693981, 34.233952, 45.201954>,  <31.202452, 34.593754, 44.847839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693981, 34.233952, 45.201954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.630842, 34.579971, 45.392437>,  <31.592958, 34.787582, 45.506725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.630842, 34.579971, 45.392437>,  <31.693981, 34.233952, 45.201954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630842, 34.579971, 45.392437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254161, -0.501596, 0.826924,
		0.954194, 0.009497, 0.299038,
		-0.157850, 0.865050, 0.476206,
		31.583487, 34.839485, 45.535297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008564, 34.140717, 45.811905>,  <31.693981, 34.233952, 45.201954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008564, 34.140717, 45.811905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.816809, 34.483181, 45.889019>,  <31.701756, 34.688660, 45.935287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.816809, 34.483181, 45.889019>,  <32.008564, 34.140717, 45.811905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816809, 34.483181, 45.889019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077235, -0.259978, 0.962521,
		0.874196, 0.446534, 0.190757,
		-0.479391, 0.856165, 0.192784,
		31.672991, 34.740032, 45.946854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166767, 34.275375, 46.446503>,  <32.008564, 34.140717, 45.811905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166767, 34.275375, 46.446503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.833269, 34.481045, 46.366005>,  <31.633171, 34.604446, 46.317707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.833269, 34.481045, 46.366005>,  <32.166767, 34.275375, 46.446503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833269, 34.481045, 46.366005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429971, -0.375923, 0.820857,
		0.346407, 0.770915, 0.534502,
		-0.833743, 0.514171, -0.201249,
		31.583147, 34.635296, 46.305630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466450, 34.930565, 46.625549>,  <32.166767, 34.275375, 46.446503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466450, 34.930565, 46.625549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.715157, 35.151218, 46.847939>,  <32.864380, 35.283611, 46.981373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.715157, 35.151218, 46.847939>,  <32.466450, 34.930565, 46.625549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715157, 35.151218, 46.847939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416703, 0.368055, -0.831200,
		-0.663148, 0.748487, -0.001024,
		0.621766, 0.551636, 0.555972,
		32.901688, 35.316708, 47.014729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504478, 35.720337, 46.379150>,  <32.466450, 34.930565, 46.625549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504478, 35.720337, 46.379150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.830013, 35.723747, 46.611561>,  <33.025333, 35.725792, 46.751007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.830013, 35.723747, 46.611561>,  <32.504478, 35.720337, 46.379150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830013, 35.723747, 46.611561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546719, 0.327548, -0.770591,
		-0.196883, 0.944796, 0.261911,
		0.813840, 0.008524, 0.581027,
		33.074165, 35.726303, 46.785870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813568, 36.369759, 46.278492>,  <32.504478, 35.720337, 46.379150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813568, 36.369759, 46.278492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.097324, 36.110435, 46.389103>,  <33.267578, 35.954842, 46.455467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.097324, 36.110435, 46.389103>,  <32.813568, 36.369759, 46.278492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097324, 36.110435, 46.389103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653255, 0.457470, -0.603307,
		0.264627, 0.608620, 0.748034,
		0.709388, -0.648308, 0.276525,
		33.310143, 35.915943, 46.472061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526817, 36.821438, 46.263107>,  <32.813568, 36.369759, 46.278492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526817, 36.821438, 46.263107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.607346, 36.431454, 46.225330>,  <33.655663, 36.197464, 46.202663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.607346, 36.431454, 46.225330>,  <33.526817, 36.821438, 46.263107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607346, 36.431454, 46.225330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726066, 0.213247, -0.653723,
		0.657494, 0.063039, 0.750818,
		0.201320, -0.974962, -0.094438,
		33.667740, 36.138966, 46.196999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346817, 36.799610, 46.288635>,  <33.526817, 36.821438, 46.263107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346817, 36.799610, 46.288635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.224617, 36.457161, 46.121918>,  <34.151299, 36.251690, 46.021885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.224617, 36.457161, 46.121918>,  <34.346817, 36.799610, 46.288635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224617, 36.457161, 46.121918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788210, 0.018211, -0.615137,
		0.534225, -0.516446, 0.669244,
		-0.305497, -0.856126, -0.416797,
		34.132969, 36.200321, 45.996880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894199, 36.310318, 46.310574>,  <34.346817, 36.799610, 46.288635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894199, 36.310318, 46.310574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.663445, 36.177372, 46.012115>,  <34.524990, 36.097603, 45.833042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.663445, 36.177372, 46.012115>,  <34.894199, 36.310318, 46.310574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663445, 36.177372, 46.012115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801974, -0.057092, -0.594625,
		0.155034, -0.941421, 0.299484,
		-0.576890, -0.332366, -0.746144,
		34.490376, 36.077663, 45.788273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313797, 35.870041, 45.860855>,  <34.894199, 36.310318, 46.310574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313797, 35.870041, 45.860855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.004333, 35.957047, 45.622814>,  <34.818657, 36.009251, 45.479988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.004333, 35.957047, 45.622814>,  <35.313797, 35.870041, 45.860855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004333, 35.957047, 45.622814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608881, -0.004589, -0.793248,
		-0.175271, -0.976047, -0.128888,
		-0.773656, 0.217510, -0.595101,
		34.772236, 36.022301, 45.444283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449059, 35.451344, 45.240517>,  <35.313797, 35.870041, 45.860855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449059, 35.451344, 45.240517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.179691, 35.725731, 45.130276>,  <35.018070, 35.890362, 45.064129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.179691, 35.725731, 45.130276>,  <35.449059, 35.451344, 45.240517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179691, 35.725731, 45.130276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394844, 0.018568, -0.918560,
		-0.624983, -0.727398, -0.283354,
		-0.673420, 0.685965, -0.275604,
		34.977665, 35.931519, 45.047596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040894, 35.161049, 44.668213>,  <35.449059, 35.451344, 45.240517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040894, 35.161049, 44.668213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.017059, 35.559666, 44.645077>,  <35.002758, 35.798836, 44.631195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.017059, 35.559666, 44.645077>,  <35.040894, 35.161049, 44.668213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017059, 35.559666, 44.645077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322597, -0.035608, -0.945866,
		-0.944659, -0.075016, -0.319361,
		-0.059583, 0.996546, -0.057838,
		34.999184, 35.858631, 44.627724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795868, 35.252338, 43.951126>,  <35.040894, 35.161049, 44.668213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795868, 35.252338, 43.951126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944046, 35.595741, 44.092960>,  <35.032955, 35.801785, 44.178062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944046, 35.595741, 44.092960>,  <34.795868, 35.252338, 43.951126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944046, 35.595741, 44.092960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370806, 0.213322, -0.903879,
		-0.851629, 0.466322, -0.239315,
		0.370447, 0.858509, 0.354586,
		35.055180, 35.853294, 44.199337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578159, 35.688885, 43.535587>,  <34.795868, 35.252338, 43.951126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578159, 35.688885, 43.535587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881824, 35.890190, 43.700703>,  <35.064022, 36.010975, 43.799774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881824, 35.890190, 43.700703>,  <34.578159, 35.688885, 43.535587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881824, 35.890190, 43.700703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344649, 0.227189, -0.910825,
		-0.552171, 0.833730, -0.000978,
		0.759160, 0.503268, 0.412792,
		35.109573, 36.041172, 43.824539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634403, 36.298672, 43.124420>,  <34.578159, 35.688885, 43.535587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634403, 36.298672, 43.124420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.990120, 36.275906, 43.305935>,  <35.203548, 36.262245, 43.414845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.990120, 36.275906, 43.305935>,  <34.634403, 36.298672, 43.124420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990120, 36.275906, 43.305935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451724, 0.264391, -0.852081,
		-0.071479, 0.962735, 0.260831,
		0.889290, -0.056918, 0.453789,
		35.256908, 36.258831, 43.442070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080750, 36.782642, 42.811672>,  <34.634403, 36.298672, 43.124420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080750, 36.782642, 42.811672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.376999, 36.590157, 42.999252>,  <35.554749, 36.474667, 43.111801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.376999, 36.590157, 42.999252>,  <35.080750, 36.782642, 42.811672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376999, 36.590157, 42.999252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624947, 0.236943, -0.743841,
		0.246830, 0.843974, 0.476217,
		0.740619, -0.481213, 0.468954,
		35.599186, 36.445793, 43.139938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561573, 37.364510, 42.848198>,  <35.080750, 36.782642, 42.811672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561573, 37.364510, 42.848198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.713867, 36.994648, 42.851406>,  <35.805244, 36.772732, 42.853329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.713867, 36.994648, 42.851406>,  <35.561573, 37.364510, 42.848198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713867, 36.994648, 42.851406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661249, 0.266194, -0.701349,
		0.646369, 0.272328, 0.712773,
		0.380733, -0.924650, 0.008018,
		35.828087, 36.717255, 42.853813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.806957, 28.958187, 34.149422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.735891, 28.790310, 34.505466>,  <30.693251, 28.689583, 34.719093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.735891, 28.790310, 34.505466>,  <30.806957, 28.958187, 34.149422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735891, 28.790310, 34.505466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756339, 0.636905, 0.149342,
		-0.629592, -0.646690, -0.430588,
		-0.177666, -0.419695, 0.890107,
		30.682592, 28.664402, 34.772499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130980, 28.743149, 34.271187>,  <30.806957, 28.958187, 34.149422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130980, 28.743149, 34.271187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.297188, 28.857450, 34.616600>,  <30.396912, 28.926031, 34.823849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.297188, 28.857450, 34.616600>,  <30.130980, 28.743149, 34.271187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297188, 28.857450, 34.616600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724911, 0.677474, 0.124632,
		-0.549407, -0.677771, 0.488649,
		0.415519, 0.285753, 0.863532,
		30.421844, 28.943176, 34.875660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625305, 28.667530, 34.832207>,  <30.130980, 28.743149, 34.271187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625305, 28.667530, 34.832207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.892164, 28.953327, 34.916508>,  <30.052279, 29.124805, 34.967087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.892164, 28.953327, 34.916508>,  <29.625305, 28.667530, 34.832207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892164, 28.953327, 34.916508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744756, 0.633659, 0.209323,
		0.016017, -0.296605, 0.954866,
		0.667146, 0.714495, 0.210749,
		30.092308, 29.167675, 34.979733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153181, 29.102604, 35.116711>,  <29.625305, 28.667530, 34.832207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153181, 29.102604, 35.116711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.479185, 29.333454, 35.137432>,  <29.674788, 29.471964, 35.149864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.479185, 29.333454, 35.137432>,  <29.153181, 29.102604, 35.116711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479185, 29.333454, 35.137432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574377, 0.816445, -0.059232,
		-0.076477, 0.018521, 0.996899,
		0.815011, 0.577126, 0.051801,
		29.723688, 29.506592, 35.152973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091185, 29.529644, 35.798744>,  <29.153181, 29.102604, 35.116711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091185, 29.529644, 35.798744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.356030, 29.704508, 35.555271>,  <29.514936, 29.809427, 35.409187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.356030, 29.704508, 35.555271>,  <29.091185, 29.529644, 35.798744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356030, 29.704508, 35.555271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409688, 0.891259, 0.194458,
		0.627504, 0.120617, 0.769214,
		0.662114, 0.437160, -0.608683,
		29.554665, 29.835655, 35.372665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237976, 30.187691, 36.157936>,  <29.091185, 29.529644, 35.798744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237976, 30.187691, 36.157936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.336824, 30.235222, 35.773266>,  <29.396133, 30.263741, 35.542465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.336824, 30.235222, 35.773266>,  <29.237976, 30.187691, 36.157936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336824, 30.235222, 35.773266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546776, 0.836454, -0.037150,
		0.799980, 0.535000, 0.271675,
		0.247120, 0.118826, -0.961672,
		29.410959, 30.270870, 35.484764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483706, 30.972088, 36.079044>,  <29.237976, 30.187691, 36.157936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483706, 30.972088, 36.079044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.371826, 30.855209, 35.713226>,  <29.304699, 30.785082, 35.493736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.371826, 30.855209, 35.713226>,  <29.483706, 30.972088, 36.079044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371826, 30.855209, 35.713226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289324, 0.933933, -0.209908,
		0.915456, 0.205887, -0.345763,
		-0.279702, -0.292199, -0.914542,
		29.287916, 30.767550, 35.438862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650188, 31.473255, 35.604836>,  <29.483706, 30.972088, 36.079044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650188, 31.473255, 35.604836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.375626, 31.274199, 35.392723>,  <29.210888, 31.154764, 35.265457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.375626, 31.274199, 35.392723>,  <29.650188, 31.473255, 35.604836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375626, 31.274199, 35.392723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307805, 0.859466, -0.408135,
		0.658863, -0.116923, -0.743120,
		-0.686407, -0.497641, -0.530281,
		29.169704, 31.124907, 35.233639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800316, 31.694944, 35.015060>,  <29.650188, 31.473255, 35.604836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800316, 31.694944, 35.015060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.422834, 31.567236, 34.980438>,  <29.196346, 31.490612, 34.959663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.422834, 31.567236, 34.980438>,  <29.800316, 31.694944, 35.015060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422834, 31.567236, 34.980438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260716, 0.878916, -0.399416,
		0.203596, -0.354364, -0.912675,
		-0.943703, -0.319269, -0.086556,
		29.139723, 31.471455, 34.954472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533258, 31.799088, 34.385483>,  <29.800316, 31.694944, 35.015060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533258, 31.799088, 34.385483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.171736, 31.728077, 34.541237>,  <28.954823, 31.685471, 34.634689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.171736, 31.728077, 34.541237>,  <29.533258, 31.799088, 34.385483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171736, 31.728077, 34.541237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382071, 0.744601, -0.547350,
		-0.192767, -0.643470, -0.740802,
		-0.903804, -0.177528, 0.389386,
		28.900595, 31.674818, 34.658054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108711, 31.789696, 33.791649>,  <29.533258, 31.799088, 34.385483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108711, 31.789696, 33.791649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.881235, 31.846241, 34.115776>,  <28.744749, 31.880167, 34.310253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.881235, 31.846241, 34.115776>,  <29.108711, 31.789696, 33.791649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881235, 31.846241, 34.115776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446614, 0.774198, -0.448501,
		-0.690744, -0.616956, -0.377145,
		-0.568690, 0.141361, 0.810313,
		28.710629, 31.888649, 34.358871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371922, 31.736153, 33.544373>,  <29.108711, 31.789696, 33.791649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371922, 31.736153, 33.544373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442602, 31.967262, 33.863110>,  <28.485010, 32.105927, 34.054352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442602, 31.967262, 33.863110>,  <28.371922, 31.736153, 33.544373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442602, 31.967262, 33.863110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351762, 0.793182, -0.497117,
		-0.919260, -0.192455, 0.343397,
		0.176704, 0.577774, 0.796839,
		28.495613, 32.140594, 34.102161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819130, 32.038368, 33.630192>,  <28.371922, 31.736153, 33.544373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819130, 32.038368, 33.630192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.081274, 32.277828, 33.814419>,  <28.238562, 32.421505, 33.924957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.081274, 32.277828, 33.814419>,  <27.819130, 32.038368, 33.630192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081274, 32.277828, 33.814419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499717, 0.800892, -0.329930,
		-0.566378, -0.013931, 0.824028,
		0.655362, 0.598646, 0.460569,
		28.277882, 32.457420, 33.952591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334671, 32.540134, 34.061893>,  <27.819130, 32.038368, 33.630192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334671, 32.540134, 34.061893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.692249, 32.717102, 34.033260>,  <27.906796, 32.823284, 34.016083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.692249, 32.717102, 34.033260>,  <27.334671, 32.540134, 34.061893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692249, 32.717102, 34.033260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446679, 0.866472, -0.222943,
		-0.036612, 0.231273, 0.972200,
		0.893945, 0.442424, -0.071581,
		27.960432, 32.849831, 34.011787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183125, 33.140907, 34.371464>,  <27.334671, 32.540134, 34.061893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183125, 33.140907, 34.371464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.522766, 33.195683, 34.167397>,  <27.726551, 33.228546, 34.044956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.522766, 33.195683, 34.167397>,  <27.183125, 33.140907, 34.371464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522766, 33.195683, 34.167397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317774, 0.903921, -0.286264,
		0.421952, 0.405186, 0.811037,
		0.849103, 0.136938, -0.510168,
		27.777496, 33.236763, 34.014347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352837, 33.817074, 34.493889>,  <27.183125, 33.140907, 34.371464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352837, 33.817074, 34.493889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.557877, 33.718830, 34.164787>,  <27.680901, 33.659885, 33.967327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.557877, 33.718830, 34.164787>,  <27.352837, 33.817074, 34.493889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557877, 33.718830, 34.164787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219175, 0.889042, -0.401954,
		0.830183, 0.386368, 0.401891,
		0.512600, -0.245611, -0.822749,
		27.711657, 33.645145, 33.917961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805044, 34.277229, 34.413929>,  <27.352837, 33.817074, 34.493889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805044, 34.277229, 34.413929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.850096, 34.149372, 34.037601>,  <27.877127, 34.072659, 33.811806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.850096, 34.149372, 34.037601>,  <27.805044, 34.277229, 34.413929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850096, 34.149372, 34.037601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247172, 0.908069, -0.338106,
		0.962404, 0.270625, 0.023269,
		0.112630, -0.319644, -0.940820,
		27.883884, 34.053478, 33.755356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236040, 34.732048, 34.057911>,  <27.805044, 34.277229, 34.413929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236040, 34.732048, 34.057911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.033756, 34.562538, 33.757332>,  <27.912386, 34.460835, 33.576984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.033756, 34.562538, 33.757332>,  <28.236040, 34.732048, 34.057911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033756, 34.562538, 33.757332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198680, 0.904834, -0.376565,
		0.839513, -0.041136, -0.541780,
		-0.505711, -0.423772, -0.751448,
		27.882044, 34.435406, 33.531898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466391, 35.004791, 33.421337>,  <28.236040, 34.732048, 34.057911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466391, 35.004791, 33.421337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.092134, 34.868748, 33.383595>,  <27.867580, 34.787121, 33.360950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.092134, 34.868748, 33.383595>,  <28.466391, 35.004791, 33.421337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092134, 34.868748, 33.383595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285583, 0.886594, -0.363860,
		0.207405, -0.313497, -0.926662,
		-0.935642, -0.340105, -0.094355,
		27.811441, 34.766716, 33.355289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921274, 34.422325, 33.193844>,  <28.466391, 35.004791, 33.421337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921274, 34.422325, 33.193844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.315138, 34.389931, 33.132019>,  <29.551456, 34.370495, 33.094925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.315138, 34.389931, 33.132019>,  <28.921274, 34.422325, 33.193844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315138, 34.389931, 33.132019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128545, -0.935659, -0.328660,
		-0.118000, 0.343486, -0.931715,
		0.984658, -0.080986, -0.154561,
		29.610535, 34.365635, 33.085651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067503, 34.163723, 32.466129>,  <28.921274, 34.422325, 33.193844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067503, 34.163723, 32.466129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.392056, 34.084438, 32.686081>,  <29.586786, 34.036869, 32.818054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.392056, 34.084438, 32.686081>,  <29.067503, 34.163723, 32.466129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392056, 34.084438, 32.686081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011883, -0.934960, -0.354553,
		0.584396, 0.294212, -0.756254,
		0.811382, -0.198213, 0.549883,
		29.635469, 34.024975, 32.851048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411661, 33.804993, 32.019073>,  <29.067503, 34.163723, 32.466129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411661, 33.804993, 32.019073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.598818, 33.686398, 32.352100>,  <29.711113, 33.615242, 32.551918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.598818, 33.686398, 32.352100>,  <29.411661, 33.804993, 32.019073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598818, 33.686398, 32.352100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227471, -0.869912, -0.437619,
		0.854010, 0.394144, -0.339585,
		0.467894, -0.296485, 0.832570,
		29.739185, 33.597450, 32.601871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919113, 33.331547, 31.814404>,  <29.411661, 33.804993, 32.019073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919113, 33.331547, 31.814404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.890688, 33.253632, 32.205711>,  <29.873632, 33.206882, 32.440495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.890688, 33.253632, 32.205711>,  <29.919113, 33.331547, 31.814404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890688, 33.253632, 32.205711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271942, -0.947378, -0.168884,
		0.959686, 0.254031, 0.120294,
		-0.071062, -0.194788, 0.978268,
		29.869370, 33.195194, 32.499191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548878, 33.030746, 32.039234>,  <29.919113, 33.331547, 31.814404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548878, 33.030746, 32.039234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.294271, 32.908493, 32.322483>,  <30.141508, 32.835140, 32.492432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.294271, 32.908493, 32.322483>,  <30.548878, 33.030746, 32.039234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294271, 32.908493, 32.322483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304028, -0.943219, -0.133813,
		0.708813, 0.130115, 0.693292,
		-0.636515, -0.305629, 0.708124,
		30.103317, 32.816803, 32.534920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907291, 32.536800, 32.447407>,  <30.548878, 33.030746, 32.039234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907291, 32.536800, 32.447407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.523264, 32.461243, 32.529949>,  <30.292847, 32.415909, 32.579475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.523264, 32.461243, 32.529949>,  <30.907291, 32.536800, 32.447407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523264, 32.461243, 32.529949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153303, -0.972250, -0.176716,
		0.234013, -0.138025, 0.962386,
		-0.960071, -0.188891, 0.206359,
		30.235243, 32.404575, 32.591858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895449, 31.931416, 32.895737>,  <30.907291, 32.536800, 32.447407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895449, 31.931416, 32.895737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.537289, 31.959206, 32.719814>,  <30.322392, 31.975880, 32.614262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.537289, 31.959206, 32.719814>,  <30.895449, 31.931416, 32.895737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537289, 31.959206, 32.719814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062631, -0.997584, -0.030075,
		-0.440832, 0.000616, 0.897589,
		-0.895402, 0.069475, -0.439805,
		30.268667, 31.980049, 32.587872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556036, 31.356596, 33.197769>,  <30.895449, 31.931416, 32.895737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556036, 31.356596, 33.197769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.341139, 31.443424, 32.871765>,  <30.212200, 31.495522, 32.676163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.341139, 31.443424, 32.871765>,  <30.556036, 31.356596, 33.197769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341139, 31.443424, 32.871765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135673, -0.975972, -0.170506,
		-0.832443, 0.018972, 0.553786,
		-0.537245, 0.217070, -0.815015,
		30.179966, 31.508545, 32.627262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089634, 30.806353, 33.232414>,  <30.556036, 31.356596, 33.197769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089634, 30.806353, 33.232414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.111824, 30.947243, 32.858707>,  <30.125137, 31.031776, 32.634483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.111824, 30.947243, 32.858707>,  <30.089634, 30.806353, 33.232414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111824, 30.947243, 32.858707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048702, -0.935552, -0.349816,
		-0.997272, -0.026094, -0.069055,
		0.055476, 0.352225, -0.934270,
		30.128468, 31.052910, 32.578426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600851, 30.352434, 32.930058>,  <30.089634, 30.806353, 33.232414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600851, 30.352434, 32.930058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.812569, 30.516333, 32.632881>,  <29.939600, 30.614672, 32.454575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.812569, 30.516333, 32.632881>,  <29.600851, 30.352434, 32.930058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812569, 30.516333, 32.632881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034259, -0.885260, -0.463833,
		-0.847746, 0.220052, -0.482601,
		0.529295, 0.409746, -0.742937,
		29.971357, 30.639256, 32.410000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273682, 30.156145, 32.336533>,  <29.600851, 30.352434, 32.930058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273682, 30.156145, 32.336533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.653339, 30.251024, 32.253723>,  <29.881134, 30.307953, 32.204037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.653339, 30.251024, 32.253723>,  <29.273682, 30.156145, 32.336533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653339, 30.251024, 32.253723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122031, -0.883327, -0.452594,
		-0.290229, 0.404313, -0.867351,
		0.949145, 0.237200, -0.207028,
		29.938084, 30.322184, 32.191616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377939, 29.692333, 31.872980>,  <29.273682, 30.156145, 32.336533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377939, 29.692333, 31.872980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.757654, 29.816586, 31.892433>,  <29.985483, 29.891136, 31.904104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.757654, 29.816586, 31.892433>,  <29.377939, 29.692333, 31.872980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757654, 29.816586, 31.892433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303071, -0.862866, -0.404487,
		-0.083684, 0.398713, -0.913250,
		0.949286, 0.310629, 0.048630,
		30.042440, 29.909775, 31.907022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704800, 29.338079, 31.359560>,  <29.377939, 29.692333, 31.872980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704800, 29.338079, 31.359560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.015196, 29.461765, 31.579460>,  <30.201433, 29.535976, 31.711401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.015196, 29.461765, 31.579460>,  <29.704800, 29.338079, 31.359560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015196, 29.461765, 31.579460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538125, -0.779222, -0.321301,
		0.329027, 0.545160, -0.771065,
		0.775991, 0.309213, 0.549750,
		30.247993, 29.554529, 31.744385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243860, 29.174541, 31.016815>,  <29.704800, 29.338079, 31.359560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243860, 29.174541, 31.016815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.388376, 29.195131, 31.389229>,  <30.475086, 29.207485, 31.612677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.388376, 29.195131, 31.389229>,  <30.243860, 29.174541, 31.016815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388376, 29.195131, 31.389229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634819, -0.744926, -0.205156,
		0.682990, 0.665158, -0.301811,
		0.361289, 0.051476, 0.931032,
		30.496763, 29.210573, 31.668539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986452, 28.949871, 30.908859>,  <30.243860, 29.174541, 31.016815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986452, 28.949871, 30.908859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.912407, 28.950308, 31.301947>,  <30.867979, 28.950569, 31.537798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.912407, 28.950308, 31.301947>,  <30.986452, 28.949871, 30.908859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912407, 28.950308, 31.301947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693183, -0.708690, 0.131361,
		0.696584, 0.705519, 0.130433,
		-0.185114, 0.001090, 0.982716,
		30.856873, 28.950636, 31.596762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633083, 28.943361, 31.168602>,  <30.986452, 28.949871, 30.908859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633083, 28.943361, 31.168602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.411549, 28.804749, 31.471437>,  <31.278627, 28.721581, 31.653139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.411549, 28.804749, 31.471437>,  <31.633083, 28.943361, 31.168602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411549, 28.804749, 31.471437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686634, -0.704398, 0.179882,
		0.470957, 0.619467, 0.628061,
		-0.553836, -0.346531, 0.757088,
		31.245398, 28.700788, 31.698565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100033, 28.763096, 31.669136>,  <31.633083, 28.943361, 31.168602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100033, 28.763096, 31.669136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.758364, 28.561108, 31.718775>,  <31.553364, 28.439915, 31.748558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.758364, 28.561108, 31.718775>,  <32.100033, 28.763096, 31.669136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758364, 28.561108, 31.718775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504173, -0.862671, -0.040101,
		0.127307, 0.028315, 0.991459,
		-0.854168, -0.504972, 0.124099,
		31.502113, 28.409616, 31.756004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128742, 28.227520, 32.207428>,  <32.100033, 28.763096, 31.669136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128742, 28.227520, 32.207428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.809813, 28.079372, 32.016808>,  <31.618454, 27.990484, 31.902435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.809813, 28.079372, 32.016808>,  <32.128742, 28.227520, 32.207428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809813, 28.079372, 32.016808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392923, -0.917868, 0.055947,
		-0.458129, -0.142639, 0.877367,
		-0.797326, -0.370369, -0.476548,
		31.570614, 27.968262, 31.873844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931471, 27.703165, 32.624550>,  <32.128742, 28.227520, 32.207428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931471, 27.703165, 32.624550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.759045, 27.624277, 32.272350>,  <31.655588, 27.576944, 32.061028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.759045, 27.624277, 32.272350>,  <31.931471, 27.703165, 32.624550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759045, 27.624277, 32.272350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462440, -0.886212, -0.027896,
		-0.774811, -0.419205, 0.473218,
		-0.431065, -0.197221, -0.880504,
		31.629725, 27.565111, 32.008198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404043, 27.168818, 32.691505>,  <31.931471, 27.703165, 32.624550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404043, 27.168818, 32.691505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.546396, 27.155348, 32.317936>,  <31.631809, 27.147266, 32.093796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.546396, 27.155348, 32.317936>,  <31.404043, 27.168818, 32.691505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546396, 27.155348, 32.317936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180979, -0.977948, 0.104228,
		-0.916838, -0.206113, -0.341942,
		0.355885, -0.033676, -0.933923,
		31.653162, 27.145245, 32.037758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131409, 26.497795, 32.502041>,  <31.404043, 27.168818, 32.691505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131409, 26.497795, 32.502041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.365084, 26.561661, 32.183739>,  <31.505289, 26.599981, 31.992756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.365084, 26.561661, 32.183739>,  <31.131409, 26.497795, 32.502041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365084, 26.561661, 32.183739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194358, -0.979452, -0.053839,
		-0.788004, -0.123209, -0.603216,
		0.584188, 0.159666, -0.795758,
		31.540340, 26.609560, 31.945011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030470, 25.938271, 31.946297>,  <31.131409, 26.497795, 32.502041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030470, 25.938271, 31.946297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.398376, 26.087549, 31.897717>,  <31.619122, 26.177116, 31.868568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.398376, 26.087549, 31.897717>,  <31.030470, 25.938271, 31.946297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398376, 26.087549, 31.897717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360379, -0.925666, -0.115196,
		-0.155413, 0.062186, -0.985891,
		0.919769, 0.373197, -0.121450,
		31.674307, 26.199509, 31.861282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270824, 25.615404, 31.286913>,  <31.030470, 25.938271, 31.946297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270824, 25.615404, 31.286913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.589590, 25.757601, 31.482281>,  <31.780849, 25.842918, 31.599501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.589590, 25.757601, 31.482281>,  <31.270824, 25.615404, 31.286913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589590, 25.757601, 31.482281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477617, -0.865823, -0.149106,
		0.369879, 0.352103, -0.859775,
		0.796914, 0.355492, 0.488420,
		31.828665, 25.864248, 31.628807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.266296, 32.789669, 48.090679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.925220, 32.623344, 47.964172>,  <34.720577, 32.523548, 47.888268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.925220, 32.623344, 47.964172>,  <35.266296, 32.789669, 48.090679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925220, 32.623344, 47.964172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403702, 0.140207, 0.904083,
		-0.331589, 0.898577, -0.287418,
		-0.852686, -0.415815, -0.316266,
		34.669415, 32.498600, 47.869293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733929, 33.241192, 48.350063>,  <35.266296, 32.789669, 48.090679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733929, 33.241192, 48.350063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.559982, 32.889610, 48.271755>,  <34.455612, 32.678661, 48.224770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.559982, 32.889610, 48.271755>,  <34.733929, 33.241192, 48.350063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559982, 32.889610, 48.271755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373297, -0.021881, 0.927454,
		-0.819474, 0.476402, -0.318596,
		-0.434870, -0.878955, -0.195771,
		34.429520, 32.625923, 48.213024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971657, 33.444267, 48.433727>,  <34.733929, 33.241192, 48.350063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971657, 33.444267, 48.433727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009583, 33.046982, 48.460693>,  <34.032337, 32.808613, 48.476871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009583, 33.046982, 48.460693>,  <33.971657, 33.444267, 48.433727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009583, 33.046982, 48.460693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531020, 0.006822, 0.847332,
		-0.842038, -0.116133, -0.526768,
		0.094810, -0.993210, 0.067413,
		34.038025, 32.749020, 48.480919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326206, 33.211662, 48.526657>,  <33.971657, 33.444267, 48.433727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326206, 33.211662, 48.526657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.539581, 32.898148, 48.653858>,  <33.667606, 32.710041, 48.730179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.539581, 32.898148, 48.653858>,  <33.326206, 33.211662, 48.526657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539581, 32.898148, 48.653858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586399, -0.071740, 0.806839,
		-0.609573, -0.616877, -0.497878,
		0.533438, -0.783783, 0.318006,
		33.699612, 32.663013, 48.749260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833866, 32.687778, 48.632366>,  <33.326206, 33.211662, 48.526657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833866, 32.687778, 48.632366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.144367, 32.592888, 48.866001>,  <33.330669, 32.535954, 49.006180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.144367, 32.592888, 48.866001>,  <32.833866, 32.687778, 48.632366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144367, 32.592888, 48.866001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630152, -0.264868, 0.729899,
		-0.018446, -0.934649, -0.355094,
		0.776253, -0.237227, 0.584085,
		33.377243, 32.521721, 49.041225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679253, 32.088242, 48.972260>,  <32.833866, 32.687778, 48.632366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679253, 32.088242, 48.972260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982960, 32.231171, 49.189823>,  <33.165184, 32.316929, 49.320362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982960, 32.231171, 49.189823>,  <32.679253, 32.088242, 48.972260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982960, 32.231171, 49.189823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457137, -0.302019, 0.836546,
		0.463187, -0.883802, -0.065968,
		0.759265, 0.357321, 0.543910,
		33.210739, 32.338367, 49.352997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728729, 31.606094, 49.532478>,  <32.679253, 32.088242, 48.972260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728729, 31.606094, 49.532478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.933475, 31.928160, 49.652287>,  <33.056324, 32.121399, 49.724171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.933475, 31.928160, 49.652287>,  <32.728729, 31.606094, 49.532478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933475, 31.928160, 49.652287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342942, -0.128152, 0.930574,
		0.787647, -0.579043, 0.210528,
		0.511862, 0.805162, 0.299517,
		33.087036, 32.169708, 49.742142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109463, 31.397842, 50.180637>,  <32.728729, 31.606094, 49.532478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109463, 31.397842, 50.180637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.099613, 31.797665, 50.187302>,  <33.093704, 32.037560, 50.191299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.099613, 31.797665, 50.187302>,  <33.109463, 31.397842, 50.180637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099613, 31.797665, 50.187302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214820, -0.021569, 0.976416,
		0.976343, 0.020462, 0.215256,
		-0.024622, 0.999558, 0.016663,
		33.092228, 32.097530, 50.192299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336655, 31.543179, 50.859386>,  <33.109463, 31.397842, 50.180637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336655, 31.543179, 50.859386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.179447, 31.892143, 50.743160>,  <33.085121, 32.101521, 50.673424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.179447, 31.892143, 50.743160>,  <33.336655, 31.543179, 50.859386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179447, 31.892143, 50.743160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363635, 0.142778, 0.920534,
		0.844572, 0.467452, 0.261124,
		-0.393023, 0.872412, -0.290569,
		33.061539, 32.153866, 50.655991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567245, 32.151321, 51.314350>,  <33.336655, 31.543179, 50.859386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567245, 32.151321, 51.314350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.233067, 32.261410, 51.124073>,  <33.032558, 32.327465, 51.009907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.233067, 32.261410, 51.124073>,  <33.567245, 32.151321, 51.314350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233067, 32.261410, 51.124073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426530, 0.221110, 0.877030,
		0.346560, 0.935608, -0.067334,
		-0.835445, 0.275223, -0.475693,
		32.982433, 32.343975, 50.981365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374504, 32.679470, 51.679142>,  <33.567245, 32.151321, 51.314350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374504, 32.679470, 51.679142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035843, 32.583656, 51.489067>,  <32.832645, 32.526169, 51.375023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035843, 32.583656, 51.489067>,  <33.374504, 32.679470, 51.679142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035843, 32.583656, 51.489067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508578, 0.101391, 0.855025,
		-0.156632, 0.965578, -0.207667,
		-0.846649, -0.239539, -0.475191,
		32.781849, 32.511795, 51.346508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870926, 33.222378, 51.865929>,  <33.374504, 32.679470, 51.679142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870926, 33.222378, 51.865929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.678310, 32.889530, 51.755878>,  <32.562740, 32.689819, 51.689846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.678310, 32.889530, 51.755878>,  <32.870926, 33.222378, 51.865929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678310, 32.889530, 51.755878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452863, -0.032526, 0.890987,
		-0.750357, 0.553640, -0.361174,
		-0.481538, -0.832121, -0.275130,
		32.533848, 32.639893, 51.673340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199463, 33.302814, 52.137783>,  <32.870926, 33.222378, 51.865929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199463, 33.302814, 52.137783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.259308, 32.915550, 52.057499>,  <32.295216, 32.683193, 52.009331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.259308, 32.915550, 52.057499>,  <32.199463, 33.302814, 52.137783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259308, 32.915550, 52.057499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371135, -0.243139, 0.896182,
		-0.916447, -0.059593, -0.395695,
		0.149615, -0.968159, -0.200707,
		32.304192, 32.625103, 51.997288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620472, 32.949768, 52.267685>,  <32.199463, 33.302814, 52.137783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620472, 32.949768, 52.267685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.954460, 32.733124, 52.306625>,  <32.154854, 32.603138, 52.329990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.954460, 32.733124, 52.306625>,  <31.620472, 32.949768, 52.267685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954460, 32.733124, 52.306625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334120, -0.358400, 0.871730,
		-0.437252, -0.760396, -0.480218,
		0.834970, -0.541616, 0.097352,
		32.204952, 32.570641, 52.335831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430267, 33.717342, 52.249928>,  <31.620472, 32.949768, 52.267685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430267, 33.717342, 52.249928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.085936, 33.870430, 52.115761>,  <30.879337, 33.962280, 52.035259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.085936, 33.870430, 52.115761>,  <31.430267, 33.717342, 52.249928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085936, 33.870430, 52.115761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392146, 0.078789, -0.916523,
		-0.324342, -0.920500, -0.217904,
		-0.860827, 0.382717, -0.335416,
		30.827688, 33.985245, 52.015137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345406, 33.537273, 51.575237>,  <31.430267, 33.717342, 52.249928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345406, 33.537273, 51.575237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.072237, 33.828892, 51.593624>,  <30.908337, 34.003864, 51.604656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.072237, 33.828892, 51.593624>,  <31.345406, 33.537273, 51.575237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072237, 33.828892, 51.593624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205462, 0.252090, -0.945640,
		-0.701003, -0.636353, -0.321948,
		-0.682921, 0.729044, 0.045970,
		30.867361, 34.047604, 51.607414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077200, 33.482414, 50.949989>,  <31.345406, 33.537273, 51.575237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077200, 33.482414, 50.949989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.986269, 33.847378, 51.086124>,  <30.931711, 34.066357, 51.167805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.986269, 33.847378, 51.086124>,  <31.077200, 33.482414, 50.949989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986269, 33.847378, 51.086124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223855, 0.389088, -0.893588,
		-0.947740, -0.126950, -0.292698,
		-0.227326, 0.912411, 0.340336,
		30.918072, 34.121101, 51.188225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694338, 33.898094, 50.491180>,  <31.077200, 33.482414, 50.949989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694338, 33.898094, 50.491180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.866562, 34.182674, 50.713337>,  <30.969896, 34.353424, 50.846630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.866562, 34.182674, 50.713337>,  <30.694338, 33.898094, 50.491180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866562, 34.182674, 50.713337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238255, 0.503929, -0.830235,
		-0.870548, 0.489790, 0.047464,
		0.430559, 0.711450, 0.555389,
		30.995729, 34.396111, 50.879955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574677, 34.591152, 50.155102>,  <30.694338, 33.898094, 50.491180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574677, 34.591152, 50.155102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.894464, 34.670979, 50.381737>,  <31.086338, 34.718872, 50.517715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.894464, 34.670979, 50.381737>,  <30.574677, 34.591152, 50.155102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894464, 34.670979, 50.381737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448462, 0.429243, -0.783985,
		-0.399658, 0.880866, 0.253671,
		0.799472, 0.199564, 0.566585,
		31.134306, 34.730846, 50.551712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706682, 35.202381, 49.884686>,  <30.574677, 34.591152, 50.155102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706682, 35.202381, 49.884686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.041346, 35.097683, 50.077137>,  <31.242144, 35.034863, 50.192608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.041346, 35.097683, 50.077137>,  <30.706682, 35.202381, 49.884686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041346, 35.097683, 50.077137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545990, 0.328758, -0.770593,
		0.043522, 0.907418, 0.417968,
		0.836661, -0.261744, 0.481133,
		31.292343, 35.019161, 50.221478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123091, 35.861923, 49.890839>,  <30.706682, 35.202381, 49.884686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123091, 35.861923, 49.890839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.350920, 35.538742, 49.951237>,  <31.487617, 35.344833, 49.987476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.350920, 35.538742, 49.951237>,  <31.123091, 35.861923, 49.890839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350920, 35.538742, 49.951237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509304, 0.202734, -0.836366,
		0.645134, 0.553271, 0.526966,
		0.569571, -0.807954, 0.150992,
		31.521791, 35.296356, 49.996536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779118, 36.134663, 49.893383>,  <31.123091, 35.861923, 49.890839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779118, 36.134663, 49.893383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.813704, 35.753868, 49.775906>,  <31.834455, 35.525391, 49.705421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.813704, 35.753868, 49.775906>,  <31.779118, 36.134663, 49.893383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813704, 35.753868, 49.775906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579494, 0.287853, -0.762448,
		0.810376, -0.104267, 0.576558,
		0.086466, -0.951982, -0.293691,
		31.839643, 35.468273, 49.687798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525764, 36.078213, 49.764748>,  <31.779118, 36.134663, 49.893383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525764, 36.078213, 49.764748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.346039, 35.765316, 49.592136>,  <32.238201, 35.577579, 49.488571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.346039, 35.765316, 49.592136>,  <32.525764, 36.078213, 49.764748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346039, 35.765316, 49.592136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588291, 0.104444, -0.801876,
		0.672329, -0.614160, 0.413256,
		-0.449318, -0.782240, -0.431526,
		32.211243, 35.530643, 49.462677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070015, 35.646378, 49.450981>,  <32.525764, 36.078213, 49.764748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070015, 35.646378, 49.450981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.727371, 35.537239, 49.275814>,  <32.521786, 35.471756, 49.170715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.727371, 35.537239, 49.275814>,  <33.070015, 35.646378, 49.450981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727371, 35.537239, 49.275814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438207, 0.063331, -0.896640,
		0.272378, -0.959971, 0.065312,
		-0.856613, -0.272846, -0.437916,
		32.470387, 35.455387, 49.144440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223816, 35.118629, 49.092590>,  <33.070015, 35.646378, 49.450981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223816, 35.118629, 49.092590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.884357, 35.216553, 48.905029>,  <32.680683, 35.275307, 48.792492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.884357, 35.216553, 48.905029>,  <33.223816, 35.118629, 49.092590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884357, 35.216553, 48.905029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463116, -0.084452, -0.882265,
		-0.255590, -0.965885, -0.041707,
		-0.848644, 0.244813, -0.468902,
		32.629765, 35.289997, 48.764359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270508, 34.683556, 48.532715>,  <33.223816, 35.118629, 49.092590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270508, 34.683556, 48.532715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.999893, 34.960693, 48.432903>,  <32.837524, 35.126976, 48.373016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.999893, 34.960693, 48.432903>,  <33.270508, 34.683556, 48.532715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999893, 34.960693, 48.432903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324644, -0.023536, -0.945543,
		-0.660987, -0.720704, -0.209005,
		-0.676537, 0.692844, -0.249529,
		32.796932, 35.168545, 48.358044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076202, 34.501583, 47.858509>,  <33.270508, 34.683556, 48.532715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076202, 34.501583, 47.858509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.941967, 34.878189, 47.870747>,  <32.861427, 35.104153, 47.878090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.941967, 34.878189, 47.870747>,  <33.076202, 34.501583, 47.858509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941967, 34.878189, 47.870747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185555, 0.097909, -0.977744,
		-0.923554, -0.322439, -0.207559,
		-0.335585, 0.941513, 0.030595,
		32.841293, 35.160645, 47.879925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636417, 34.551243, 47.244183>,  <33.076202, 34.501583, 47.858509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636417, 34.551243, 47.244183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755970, 34.911350, 47.370785>,  <32.827702, 35.127415, 47.446747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755970, 34.911350, 47.370785>,  <32.636417, 34.551243, 47.244183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755970, 34.911350, 47.370785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287659, 0.231247, -0.929396,
		-0.909902, 0.368826, -0.189856,
		0.298882, 0.900273, 0.316509,
		32.845634, 35.181431, 47.465736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013680, 34.676170, 47.160839>,  <32.636417, 34.551243, 47.244183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013680, 34.676170, 47.160839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.676395, 34.667999, 46.945965>,  <31.474024, 34.663097, 46.817039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.676395, 34.667999, 46.945965>,  <32.013680, 34.676170, 47.160839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676395, 34.667999, 46.945965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509100, -0.290574, 0.810175,
		-0.172647, 0.956634, 0.234614,
		-0.843214, -0.020432, -0.537189,
		31.423431, 34.661869, 46.784809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527702, 34.930210, 47.603523>,  <32.013680, 34.676170, 47.160839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527702, 34.930210, 47.603523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.343269, 34.715729, 47.320713>,  <31.232611, 34.587040, 47.151028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.343269, 34.715729, 47.320713>,  <31.527702, 34.930210, 47.603523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343269, 34.715729, 47.320713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596189, -0.402956, 0.694395,
		-0.657238, 0.741696, -0.133883,
		-0.461081, -0.536203, -0.707029,
		31.204945, 34.554867, 47.108604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812729, 34.909321, 47.797459>,  <31.527702, 34.930210, 47.603523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812729, 34.909321, 47.797459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.829430, 34.586739, 47.561531>,  <30.839451, 34.393188, 47.419975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.829430, 34.586739, 47.561531>,  <30.812729, 34.909321, 47.797459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829430, 34.586739, 47.561531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757341, -0.410590, 0.507790,
		-0.651684, 0.425491, -0.627905,
		0.041751, -0.806457, -0.589817,
		30.841955, 34.344803, 47.384586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094929, 34.734539, 47.555126>,  <30.812729, 34.909321, 47.797459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094929, 34.734539, 47.555126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.318645, 34.405949, 47.510628>,  <30.452875, 34.208794, 47.483929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.318645, 34.405949, 47.510628>,  <30.094929, 34.734539, 47.555126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318645, 34.405949, 47.510628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671640, -0.527700, 0.520030,
		-0.485892, -0.216136, -0.846873,
		0.559292, -0.821473, -0.111240,
		30.486433, 34.159508, 47.477257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614443, 34.181416, 47.225491>,  <30.094929, 34.734539, 47.555126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614443, 34.181416, 47.225491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.907873, 33.998676, 47.426750>,  <30.083931, 33.889034, 47.547508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.907873, 33.998676, 47.426750>,  <29.614443, 34.181416, 47.225491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907873, 33.998676, 47.426750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679502, -0.506202, 0.531071,
		0.012081, -0.731473, -0.681763,
		0.733574, -0.456844, 0.503153,
		30.127945, 33.861622, 47.577698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398006, 33.575939, 47.401962>,  <29.614443, 34.181416, 47.225491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398006, 33.575939, 47.401962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.706764, 33.594749, 47.655567>,  <29.892019, 33.606033, 47.807732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.706764, 33.594749, 47.655567>,  <29.398006, 33.575939, 47.401962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706764, 33.594749, 47.655567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550342, -0.449848, 0.703392,
		0.318285, -0.891866, -0.321356,
		0.771892, 0.047023, 0.634011,
		29.938332, 33.608856, 47.845772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408499, 32.915215, 47.769375>,  <29.398006, 33.575939, 47.401962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408499, 32.915215, 47.769375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.605930, 33.178413, 47.996857>,  <29.724390, 33.336330, 48.133347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.605930, 33.178413, 47.996857>,  <29.408499, 32.915215, 47.769375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605930, 33.178413, 47.996857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521087, -0.299797, 0.799118,
		0.696310, -0.690773, 0.194897,
		0.493579, 0.657993, 0.568704,
		29.754004, 33.375813, 48.167469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871346, 32.395390, 47.932343>,  <29.408499, 32.915215, 47.769375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871346, 32.395390, 47.932343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.483576, 32.320591, 47.868790>,  <28.250914, 32.275711, 47.830658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.483576, 32.320591, 47.868790>,  <28.871346, 32.395390, 47.932343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483576, 32.320591, 47.868790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089939, 0.331658, -0.939103,
		0.228306, -0.924681, -0.304700,
		-0.969427, -0.186999, -0.158885,
		28.192749, 32.264492, 47.821125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856840, 31.991024, 47.332958>,  <28.871346, 32.395390, 47.932343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856840, 31.991024, 47.332958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.500404, 32.170383, 47.360943>,  <28.286543, 32.278000, 47.377735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.500404, 32.170383, 47.360943>,  <28.856840, 31.991024, 47.332958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500404, 32.170383, 47.360943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054339, 0.258480, -0.964487,
		-0.450561, -0.855643, -0.254695,
		-0.891091, 0.448400, 0.069966,
		28.233078, 32.304905, 47.381931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372658, 31.747721, 46.760899>,  <28.856840, 31.991024, 47.332958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372658, 31.747721, 46.760899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.247761, 32.104393, 46.891991>,  <28.172823, 32.318398, 46.970646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.247761, 32.104393, 46.891991>,  <28.372658, 31.747721, 46.760899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247761, 32.104393, 46.891991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022058, 0.351694, -0.935855,
		-0.949746, -0.284986, -0.129483,
		-0.312244, 0.891681, 0.327734,
		28.154087, 32.371899, 46.990311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935789, 31.868816, 46.332199>,  <28.372658, 31.747721, 46.760899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935789, 31.868816, 46.332199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.036789, 32.226089, 46.481045>,  <28.097389, 32.440453, 46.570351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.036789, 32.226089, 46.481045>,  <27.935789, 31.868816, 46.332199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036789, 32.226089, 46.481045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005462, 0.383253, -0.923627,
		-0.967582, 0.235248, 0.091892,
		0.252499, 0.893183, 0.372113,
		28.112539, 32.494045, 46.592678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832985, 32.202114, 45.752071>,  <27.935789, 31.868816, 46.332199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832985, 32.202114, 45.752071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.988733, 32.492611, 45.978687>,  <28.082182, 32.666908, 46.114655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.988733, 32.492611, 45.978687>,  <27.832985, 32.202114, 45.752071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988733, 32.492611, 45.978687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252264, 0.507479, -0.823910,
		-0.885864, 0.463723, 0.014392,
		0.389370, 0.726242, 0.566537,
		28.105545, 32.710484, 46.148647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507006, 32.824799, 45.644711>,  <27.832985, 32.202114, 45.752071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507006, 32.824799, 45.644711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.880669, 32.888298, 45.772552>,  <28.104866, 32.926395, 45.849258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.880669, 32.888298, 45.772552>,  <27.507006, 32.824799, 45.644711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880669, 32.888298, 45.772552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220431, 0.447634, -0.866622,
		-0.280639, 0.880013, 0.383169,
		0.934159, 0.158746, 0.319605,
		28.160915, 32.935921, 45.868435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753288, 33.589504, 45.361908>,  <27.507006, 32.824799, 45.644711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753288, 33.589504, 45.361908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.100044, 33.435047, 45.488018>,  <28.308098, 33.342373, 45.563683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.100044, 33.435047, 45.488018>,  <27.753288, 33.589504, 45.361908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100044, 33.435047, 45.488018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447063, 0.322413, -0.834377,
		0.220537, 0.864261, 0.452125,
		0.866890, -0.386140, 0.315275,
		28.360111, 33.319206, 45.582600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.491774, 29.584326, 51.075645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.715403, 29.915972, 51.074902>,  <30.849581, 30.114960, 51.074455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.715403, 29.915972, 51.074902>,  <30.491774, 29.584326, 51.075645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715403, 29.915972, 51.074902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157101, 0.103731, -0.982120,
		-0.814098, 0.549370, 0.188248,
		0.559074, 0.829116, -0.001859,
		30.883125, 30.164707, 51.074345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104546, 30.055931, 50.638798>,  <30.491774, 29.584326, 51.075645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104546, 30.055931, 50.638798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.497515, 30.130598, 50.637981>,  <30.733295, 30.175398, 50.637489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.497515, 30.130598, 50.637981>,  <30.104546, 30.055931, 50.638798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497515, 30.130598, 50.637981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004548, 0.012990, -0.999905,
		-0.186625, 0.982337, 0.013611,
		0.982421, 0.186669, -0.002043,
		30.792240, 30.186600, 50.637367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153803, 30.533331, 50.186607>,  <30.104546, 30.055931, 50.638798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153803, 30.533331, 50.186607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.534283, 30.409908, 50.187775>,  <30.762571, 30.335855, 50.188477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.534283, 30.409908, 50.187775>,  <30.153803, 30.533331, 50.186607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534283, 30.409908, 50.187775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032513, 0.090809, -0.995337,
		0.306852, 0.946862, 0.096410,
		0.951202, -0.308556, 0.002920,
		30.819643, 30.317341, 50.188652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471334, 30.820072, 49.594505>,  <30.153803, 30.533331, 50.186607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471334, 30.820072, 49.594505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.719395, 30.513727, 49.662464>,  <30.868231, 30.329920, 49.703239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.719395, 30.513727, 49.662464>,  <30.471334, 30.820072, 49.594505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719395, 30.513727, 49.662464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201109, -0.054124, -0.978072,
		0.758265, 0.640722, 0.120457,
		0.620153, -0.765863, 0.169895,
		30.905441, 30.283968, 49.713432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170643, 31.052134, 49.216709>,  <30.471334, 30.820072, 49.594505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170643, 31.052134, 49.216709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.180328, 30.655409, 49.266872>,  <31.186140, 30.417374, 49.296970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.180328, 30.655409, 49.266872>,  <31.170643, 31.052134, 49.216709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180328, 30.655409, 49.266872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250026, -0.115448, -0.961332,
		0.967936, 0.054633, 0.245183,
		0.024215, -0.991810, 0.125406,
		31.187593, 30.357866, 49.304493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775839, 30.781347, 48.904121>,  <31.170643, 31.052134, 49.216709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775839, 30.781347, 48.904121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.557352, 30.447392, 48.931278>,  <31.426260, 30.247019, 48.947571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.557352, 30.447392, 48.931278>,  <31.775839, 30.781347, 48.904121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557352, 30.447392, 48.931278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336228, -0.292764, -0.895120,
		0.767202, -0.466101, 0.440625,
		-0.546216, -0.834889, 0.067893,
		31.393488, 30.196924, 48.951645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259853, 30.213152, 48.775097>,  <31.775839, 30.781347, 48.904121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259853, 30.213152, 48.775097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.900055, 30.052464, 48.706367>,  <31.684175, 29.956051, 48.665131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.900055, 30.052464, 48.706367>,  <32.259853, 30.213152, 48.775097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900055, 30.052464, 48.706367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327901, -0.360760, -0.873117,
		0.288765, -0.841707, 0.456228,
		-0.899497, -0.401723, -0.171822,
		31.630205, 29.931946, 48.654819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408665, 29.537806, 48.467270>,  <32.259853, 30.213152, 48.775097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408665, 29.537806, 48.467270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.023006, 29.581842, 48.370689>,  <31.791611, 29.608265, 48.312740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.023006, 29.581842, 48.370689>,  <32.408665, 29.537806, 48.467270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023006, 29.581842, 48.370689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149600, -0.526025, -0.837208,
		-0.219183, -0.843313, 0.490696,
		-0.964147, 0.110093, -0.241455,
		31.733763, 29.614870, 48.298252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096840, 28.876814, 48.243122>,  <32.408665, 29.537806, 48.467270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096840, 28.876814, 48.243122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.881321, 29.176783, 48.089600>,  <31.752008, 29.356764, 47.997486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.881321, 29.176783, 48.089600>,  <32.096840, 28.876814, 48.243122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881321, 29.176783, 48.089600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366120, -0.201870, -0.908408,
		-0.758716, -0.629970, -0.165795,
		-0.538801, 0.749924, -0.383806,
		31.719681, 29.401760, 47.974457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886330, 28.609407, 47.554634>,  <32.096840, 28.876814, 48.243122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886330, 28.609407, 47.554634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.801722, 28.998909, 47.521030>,  <31.750957, 29.232611, 47.500866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.801722, 28.998909, 47.521030>,  <31.886330, 28.609407, 47.554634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801722, 28.998909, 47.521030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267584, -0.024978, -0.963211,
		-0.940031, -0.226220, -0.255278,
		-0.211521, 0.973756, -0.084013,
		31.738266, 29.291037, 47.495827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442493, 28.684786, 47.006870>,  <31.886330, 28.609407, 47.554634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442493, 28.684786, 47.006870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.605577, 29.045420, 47.064720>,  <31.703428, 29.261801, 47.099430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.605577, 29.045420, 47.064720>,  <31.442493, 28.684786, 47.006870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605577, 29.045420, 47.064720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187762, 0.072223, -0.979556,
		-0.893598, 0.426530, -0.139837,
		0.407711, 0.901585, 0.144625,
		31.727890, 29.315895, 47.108109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172562, 29.024487, 46.384235>,  <31.442493, 28.684786, 47.006870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172562, 29.024487, 46.384235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.479784, 29.223370, 46.545666>,  <31.664118, 29.342699, 46.642525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.479784, 29.223370, 46.545666>,  <31.172562, 29.024487, 46.384235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479784, 29.223370, 46.545666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495374, -0.061928, -0.866469,
		-0.405822, 0.865419, -0.293868,
		0.768058, 0.497207, 0.403575,
		31.710201, 29.372532, 46.666737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493135, 29.468796, 46.384003>,  <31.172562, 29.024487, 46.384235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493135, 29.468796, 46.384003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.141571, 29.387354, 46.211464>,  <29.930632, 29.338488, 46.107941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.141571, 29.387354, 46.211464>,  <30.493135, 29.468796, 46.384003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141571, 29.387354, 46.211464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383528, -0.235975, 0.892873,
		-0.283581, 0.950189, 0.129313,
		-0.878913, -0.203607, -0.431342,
		29.877897, 29.326271, 46.082062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016487, 29.782503, 46.839069>,  <30.493135, 29.468796, 46.384003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016487, 29.782503, 46.839069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.793468, 29.520630, 46.634899>,  <29.659658, 29.363506, 46.512398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.793468, 29.520630, 46.634899>,  <30.016487, 29.782503, 46.839069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793468, 29.520630, 46.634899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469652, -0.258243, 0.844238,
		-0.684522, 0.710423, -0.163491,
		-0.557546, -0.654683, -0.510424,
		29.626205, 29.324224, 46.481773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441414, 29.789112, 47.167130>,  <30.016487, 29.782503, 46.839069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441414, 29.789112, 47.167130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.408283, 29.455708, 46.948624>,  <29.388405, 29.255665, 46.817520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.408283, 29.455708, 46.948624>,  <29.441414, 29.789112, 47.167130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.408283, 29.455708, 46.948624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587799, -0.401784, 0.702184,
		-0.804757, 0.379249, -0.456659,
		-0.082825, -0.833511, -0.546260,
		29.383436, 29.205654, 46.784744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715040, 29.637754, 47.078453>,  <29.441414, 29.789112, 47.167130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715040, 29.637754, 47.078453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.923723, 29.298296, 47.043530>,  <29.048933, 29.094622, 47.022575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.923723, 29.298296, 47.043530>,  <28.715040, 29.637754, 47.078453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923723, 29.298296, 47.043530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498526, -0.386311, 0.776039,
		-0.692311, -0.361337, -0.624612,
		0.521706, -0.848646, -0.087311,
		29.080235, 29.043703, 47.017338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231968, 29.122427, 47.155437>,  <28.715040, 29.637754, 47.078453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231968, 29.122427, 47.155437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.570288, 28.915604, 47.208008>,  <28.773279, 28.791510, 47.239548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.570288, 28.915604, 47.208008>,  <28.231968, 29.122427, 47.155437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570288, 28.915604, 47.208008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385395, -0.421829, 0.820689,
		-0.368899, -0.744794, -0.556054,
		0.845804, -0.517052, 0.131428,
		28.824028, 28.760487, 47.247437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004549, 28.362902, 47.287807>,  <28.231968, 29.122427, 47.155437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004549, 28.362902, 47.287807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.376547, 28.410284, 47.426994>,  <28.599745, 28.438713, 47.510506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.376547, 28.410284, 47.426994>,  <28.004549, 28.362902, 47.287807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376547, 28.410284, 47.426994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258979, -0.460623, 0.848974,
		0.260846, -0.879656, -0.397699,
		0.929994, 0.118456, 0.347964,
		28.655544, 28.445820, 47.531384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149035, 27.786057, 47.844398>,  <28.004549, 28.362902, 47.287807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149035, 27.786057, 47.844398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.438913, 28.049879, 47.924198>,  <28.612841, 28.208172, 47.972080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.438913, 28.049879, 47.924198>,  <28.149035, 27.786057, 47.844398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438913, 28.049879, 47.924198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104449, -0.181036, 0.977914,
		0.681107, -0.729528, -0.062306,
		0.724696, 0.659557, 0.199503,
		28.656322, 28.247746, 47.984051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575682, 27.574411, 48.381153>,  <28.149035, 27.786057, 47.844398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575682, 27.574411, 48.381153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.611889, 27.972551, 48.367977>,  <28.633614, 28.211435, 48.360073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.611889, 27.972551, 48.367977>,  <28.575682, 27.574411, 48.381153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611889, 27.972551, 48.367977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124821, 0.044152, 0.991196,
		0.988042, -0.085610, 0.128237,
		0.090518, 0.995350, -0.032938,
		28.639044, 28.271156, 48.358097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924858, 27.795595, 49.026638>,  <28.575682, 27.574411, 48.381153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924858, 27.795595, 49.026638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.710814, 28.110134, 48.903145>,  <28.582386, 28.298857, 48.829048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.710814, 28.110134, 48.903145>,  <28.924858, 27.795595, 49.026638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710814, 28.110134, 48.903145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367766, 0.112167, 0.923129,
		0.760528, 0.607518, 0.229169,
		-0.535112, 0.786346, -0.308731,
		28.550280, 28.346039, 48.810524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768541, 28.214321, 49.603951>,  <28.924858, 27.795595, 49.026638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768541, 28.214321, 49.603951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.504505, 28.346476, 49.334099>,  <28.346083, 28.425768, 49.172188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.504505, 28.346476, 49.334099>,  <28.768541, 28.214321, 49.603951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504505, 28.346476, 49.334099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667280, 0.154561, 0.728593,
		0.344988, 0.931105, 0.118434,
		-0.660091, 0.330385, -0.674630,
		28.306479, 28.445591, 49.131710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499275, 28.908878, 49.864346>,  <28.768541, 28.214321, 49.603951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499275, 28.908878, 49.864346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.217648, 28.763832, 49.620117>,  <28.048672, 28.676805, 49.473579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.217648, 28.763832, 49.620117>,  <28.499275, 28.908878, 49.864346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217648, 28.763832, 49.620117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702527, 0.230172, 0.673406,
		-0.103650, 0.903068, -0.416803,
		-0.704068, -0.362615, -0.610572,
		28.006428, 28.655048, 49.436947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960293, 29.268955, 50.027382>,  <28.499275, 28.908878, 49.864346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960293, 29.268955, 50.027382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.782536, 28.970823, 49.828587>,  <27.675882, 28.791945, 49.709309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.782536, 28.970823, 49.828587>,  <27.960293, 29.268955, 50.027382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782536, 28.970823, 49.828587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833758, 0.141195, 0.533771,
		-0.327664, 0.651571, -0.684172,
		-0.444391, -0.745331, -0.496988,
		27.649218, 28.747223, 49.679489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374668, 29.513416, 49.805668>,  <27.960293, 29.268955, 50.027382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374668, 29.513416, 49.805668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.302425, 29.120140, 49.794930>,  <27.259081, 28.884174, 49.788486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.302425, 29.120140, 49.794930>,  <27.374668, 29.513416, 49.805668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302425, 29.120140, 49.794930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882577, 0.149958, 0.445614,
		-0.434097, 0.104171, -0.894823,
		-0.180606, -0.983189, -0.026842,
		27.248243, 28.825184, 49.786877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066635, 29.944185, 50.325466>,  <27.374668, 29.513416, 49.805668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066635, 29.944185, 50.325466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.913958, 30.313086, 50.349991>,  <26.822351, 30.534426, 50.364708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.913958, 30.313086, 50.349991>,  <27.066635, 29.944185, 50.325466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913958, 30.313086, 50.349991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592367, 0.295008, -0.749714,
		-0.709514, -0.249840, -0.658915,
		-0.381694, 0.922253, 0.061315,
		26.799450, 30.589762, 50.368385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871365, 30.168324, 49.654987>,  <27.066635, 29.944185, 50.325466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871365, 30.168324, 49.654987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.939457, 30.495960, 49.874119>,  <26.980312, 30.692541, 50.005596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.939457, 30.495960, 49.874119>,  <26.871365, 30.168324, 49.654987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939457, 30.495960, 49.874119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570038, 0.371623, -0.732771,
		-0.803790, 0.437022, -0.403650,
		0.170231, 0.819090, 0.547826,
		26.990526, 30.741688, 50.038467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470573, 30.733196, 49.349068>,  <26.871365, 30.168324, 49.654987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470573, 30.733196, 49.349068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.767067, 30.907900, 49.552956>,  <26.944963, 31.012722, 49.675289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.767067, 30.907900, 49.552956>,  <26.470573, 30.733196, 49.349068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767067, 30.907900, 49.552956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188948, 0.592896, -0.782798,
		-0.644105, 0.676547, 0.356949,
		0.741233, 0.436760, 0.509720,
		26.989437, 31.038927, 49.705872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403315, 31.418377, 49.218994>,  <26.470573, 30.733196, 49.349068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403315, 31.418377, 49.218994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.782261, 31.390228, 49.343925>,  <27.009628, 31.373339, 49.418884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.782261, 31.390228, 49.343925>,  <26.403315, 31.418377, 49.218994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782261, 31.390228, 49.343925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287535, 0.616026, -0.733373,
		-0.140793, 0.784576, 0.603836,
		0.947365, -0.070370, 0.312325,
		27.066471, 31.369118, 49.437622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597296, 32.117367, 49.132435>,  <26.403315, 31.418377, 49.218994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597296, 32.117367, 49.132435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.922855, 31.885431, 49.147160>,  <27.118191, 31.746269, 49.155994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.922855, 31.885431, 49.147160>,  <26.597296, 32.117367, 49.132435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922855, 31.885431, 49.147160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392990, 0.502741, -0.769941,
		0.427934, 0.641122, 0.637052,
		0.813898, -0.579839, 0.036815,
		27.167025, 31.711479, 49.158203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197855, 32.587765, 49.127644>,  <26.597296, 32.117367, 49.132435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197855, 32.587765, 49.127644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.327707, 32.235237, 48.990307>,  <27.405619, 32.023720, 48.907906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.327707, 32.235237, 48.990307>,  <27.197855, 32.587765, 49.127644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327707, 32.235237, 48.990307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444137, 0.462531, -0.767337,
		0.835078, 0.096613, 0.541581,
		0.324633, -0.881323, -0.343341,
		27.425097, 31.970840, 48.887306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787857, 32.796467, 48.815178>,  <27.197855, 32.587765, 49.127644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787857, 32.796467, 48.815178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.749674, 32.423203, 48.676556>,  <27.726765, 32.199245, 48.593380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.749674, 32.423203, 48.676556>,  <27.787857, 32.796467, 48.815178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749674, 32.423203, 48.676556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410697, 0.280216, -0.867644,
		0.906761, -0.225155, 0.356496,
		-0.095458, -0.933158, -0.346560,
		27.721037, 32.143253, 48.572586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511084, 32.520905, 48.600315>,  <27.787857, 32.796467, 48.815178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511084, 32.520905, 48.600315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.211901, 32.343143, 48.403107>,  <28.032391, 32.236488, 48.284782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.211901, 32.343143, 48.403107>,  <28.511084, 32.520905, 48.600315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211901, 32.343143, 48.403107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363400, 0.347396, -0.864440,
		0.555431, -0.825727, -0.098342,
		-0.747955, -0.444400, -0.493024,
		27.987514, 32.209824, 48.255199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315313, 32.604271, 48.457684>,  <28.511084, 32.520905, 48.600315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315313, 32.604271, 48.457684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.518007, 32.930141, 48.570480>,  <29.639624, 33.125664, 48.638161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.518007, 32.930141, 48.570480>,  <29.315313, 32.604271, 48.457684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518007, 32.930141, 48.570480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250658, -0.173742, 0.952357,
		0.824857, -0.553278, 0.116164,
		0.506736, 0.814676, 0.281996,
		29.670029, 33.174545, 48.655079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661295, 32.411041, 48.963318>,  <29.315313, 32.604271, 48.457684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661295, 32.411041, 48.963318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.601864, 32.805027, 48.998558>,  <29.566206, 33.041420, 49.019703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.601864, 32.805027, 48.998558>,  <29.661295, 32.411041, 48.963318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601864, 32.805027, 48.998558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153032, -0.110916, 0.981977,
		0.976988, 0.132418, 0.167211,
		-0.148578, 0.984969, 0.088100,
		29.557291, 33.100517, 49.024986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983221, 32.659634, 49.583656>,  <29.661295, 32.411041, 48.963318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983221, 32.659634, 49.583656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.714617, 32.953835, 49.547638>,  <29.553455, 33.130356, 49.526028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.714617, 32.953835, 49.547638>,  <29.983221, 32.659634, 49.583656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714617, 32.953835, 49.547638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032380, 0.092281, 0.995206,
		0.740288, 0.671206, -0.038152,
		-0.671509, 0.735504, -0.090048,
		29.513165, 33.174484, 49.520622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142868, 33.175308, 50.071579>,  <29.983221, 32.659634, 49.583656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142868, 33.175308, 50.071579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.765825, 33.278061, 49.986252>,  <29.539600, 33.339710, 49.935055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.765825, 33.278061, 49.986252>,  <30.142868, 33.175308, 50.071579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765825, 33.278061, 49.986252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169066, 0.183737, 0.968327,
		0.287937, 0.948817, -0.129763,
		-0.942608, 0.256879, -0.213317,
		29.483044, 33.355125, 49.922256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963812, 33.749363, 50.514561>,  <30.142868, 33.175308, 50.071579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963812, 33.749363, 50.514561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.619915, 33.590485, 50.386139>,  <29.413576, 33.495155, 50.309086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.619915, 33.590485, 50.386139>,  <29.963812, 33.749363, 50.514561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619915, 33.590485, 50.386139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410848, 0.164448, 0.896750,
		-0.303392, 0.902878, -0.304572,
		-0.859742, -0.397200, -0.321054,
		29.361992, 33.471325, 50.289822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425957, 34.190601, 50.710293>,  <29.963812, 33.749363, 50.514561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425957, 34.190601, 50.710293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.249382, 33.833214, 50.677212>,  <29.143438, 33.618782, 50.657364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.249382, 33.833214, 50.677212>,  <29.425957, 34.190601, 50.710293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249382, 33.833214, 50.677212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355187, 0.089352, 0.930515,
		-0.824000, 0.440138, -0.356793,
		-0.441435, -0.893473, -0.082705,
		29.116951, 33.565170, 50.652401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927822, 34.171577, 51.186062>,  <29.425957, 34.190601, 50.710293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927822, 34.171577, 51.186062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.919304, 33.783531, 51.089382>,  <28.914192, 33.550701, 51.031376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.919304, 33.783531, 51.089382>,  <28.927822, 34.171577, 51.186062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919304, 33.783531, 51.089382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196372, -0.232982, 0.952448,
		-0.980298, 0.067747, -0.185542,
		-0.021298, -0.970118, -0.241695,
		28.912914, 33.492496, 51.016872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411469, 33.937443, 51.625374>,  <28.927822, 34.171577, 51.186062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411469, 33.937443, 51.625374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.578157, 33.587784, 51.525604>,  <28.678171, 33.377991, 51.465740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.578157, 33.587784, 51.525604>,  <28.411469, 33.937443, 51.625374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578157, 33.587784, 51.525604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244830, -0.372176, 0.895290,
		-0.875444, -0.312017, -0.369110,
		0.416720, -0.874146, -0.249428,
		28.703173, 33.325539, 51.450775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894077, 33.397366, 51.720791>,  <28.411469, 33.937443, 51.625374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894077, 33.397366, 51.720791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.268604, 33.258106, 51.739132>,  <28.493320, 33.174549, 51.750137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.268604, 33.258106, 51.739132>,  <27.894077, 33.397366, 51.720791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268604, 33.258106, 51.739132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187168, -0.384301, 0.904036,
		-0.297112, -0.855049, -0.424990,
		0.936319, -0.348144, 0.045857,
		28.549500, 33.153664, 51.752888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.473560, 35.037586, 37.064499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804657, 35.005825, 37.286682>,  <36.003315, 34.986767, 37.419994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804657, 35.005825, 37.286682>,  <35.473560, 35.037586, 37.064499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804657, 35.005825, 37.286682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543098, 0.135417, 0.828678,
		-0.141020, -0.987602, 0.068966,
		0.827743, -0.079405, 0.555461,
		36.052979, 34.982002, 37.453320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291588, 34.592709, 37.631592>,  <35.473560, 35.037586, 37.064499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291588, 34.592709, 37.631592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594276, 34.813366, 37.771908>,  <35.775890, 34.945763, 37.856098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594276, 34.813366, 37.771908>,  <35.291588, 34.592709, 37.631592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594276, 34.813366, 37.771908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378650, -0.067568, 0.923070,
		0.532911, -0.831337, 0.157750,
		0.756723, 0.551646, 0.350794,
		35.821293, 34.978859, 37.877148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458416, 34.241253, 38.166977>,  <35.291588, 34.592709, 37.631592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458416, 34.241253, 38.166977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633419, 34.594662, 38.233891>,  <35.738422, 34.806705, 38.274036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633419, 34.594662, 38.233891>,  <35.458416, 34.241253, 38.166977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633419, 34.594662, 38.233891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163865, -0.104579, 0.980924,
		0.884158, -0.456572, 0.099024,
		0.437507, 0.883519, 0.167280,
		35.764671, 34.859718, 38.284073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879997, 34.115208, 38.789524>,  <35.458416, 34.241253, 38.166977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879997, 34.115208, 38.789524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805332, 34.505184, 38.741112>,  <35.760532, 34.739170, 38.712067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805332, 34.505184, 38.741112>,  <35.879997, 34.115208, 38.789524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805332, 34.505184, 38.741112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123275, 0.098974, 0.987425,
		0.974659, 0.199233, 0.101711,
		-0.186661, 0.974941, -0.121026,
		35.749332, 34.797668, 38.704803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103977, 34.426456, 39.432911>,  <35.879997, 34.115208, 38.789524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103977, 34.426456, 39.432911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872974, 34.711338, 39.273289>,  <35.734371, 34.882267, 39.177517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872974, 34.711338, 39.273289>,  <36.103977, 34.426456, 39.432911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872974, 34.711338, 39.273289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366017, 0.211048, 0.906361,
		0.729736, 0.669493, 0.138798,
		-0.577509, 0.712207, -0.399055,
		35.699722, 34.924999, 39.153572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106365, 34.957047, 39.964943>,  <36.103977, 34.426456, 39.432911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106365, 34.957047, 39.964943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808975, 35.054836, 39.715954>,  <35.630539, 35.113510, 39.566559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808975, 35.054836, 39.715954>,  <36.106365, 34.957047, 39.964943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808975, 35.054836, 39.715954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588486, 0.202990, 0.782611,
		0.317684, 0.948170, -0.007048,
		-0.743479, 0.244475, -0.622471,
		35.585930, 35.128178, 39.529213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853287, 35.630966, 40.207100>,  <36.106365, 34.957047, 39.964943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853287, 35.630966, 40.207100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551449, 35.488468, 39.986671>,  <35.370346, 35.402969, 39.854416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551449, 35.488468, 39.986671>,  <35.853287, 35.630966, 40.207100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551449, 35.488468, 39.986671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642164, 0.228190, 0.731816,
		-0.134954, 0.906102, -0.400957,
		-0.754594, -0.356242, -0.551071,
		35.325069, 35.381596, 39.821350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344753, 36.105419, 40.263580>,  <35.853287, 35.630966, 40.207100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344753, 36.105419, 40.263580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153797, 35.771973, 40.152454>,  <35.039223, 35.571903, 40.085777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153797, 35.771973, 40.152454>,  <35.344753, 36.105419, 40.263580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153797, 35.771973, 40.152454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742762, 0.213912, 0.634466,
		-0.469475, 0.509236, -0.721299,
		-0.477387, -0.833619, -0.277815,
		35.010582, 35.521889, 40.069111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584900, 36.252998, 40.171780>,  <35.344753, 36.105419, 40.263580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584900, 36.252998, 40.171780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577278, 35.859165, 40.241341>,  <34.572704, 35.622868, 40.283077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577278, 35.859165, 40.241341>,  <34.584900, 36.252998, 40.171780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577278, 35.859165, 40.241341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713120, 0.135295, 0.687863,
		-0.700783, -0.110909, -0.704700,
		-0.019052, -0.984578, 0.173903,
		34.571564, 35.563793, 40.293510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902649, 35.991322, 40.030777>,  <34.584900, 36.252998, 40.171780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902649, 35.991322, 40.030777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066174, 35.726440, 40.281967>,  <34.164288, 35.567513, 40.432682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066174, 35.726440, 40.281967>,  <33.902649, 35.991322, 40.030777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066174, 35.726440, 40.281967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749038, 0.149630, 0.645409,
		-0.521358, -0.734230, -0.434847,
		0.408813, -0.662206, 0.627977,
		34.188816, 35.527779, 40.470360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383694, 35.645313, 40.347389>,  <33.902649, 35.991322, 40.030777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383694, 35.645313, 40.347389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669231, 35.556339, 40.613003>,  <33.840553, 35.502953, 40.772373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669231, 35.556339, 40.613003>,  <33.383694, 35.645313, 40.347389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669231, 35.556339, 40.613003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700203, -0.210681, 0.682150,
		-0.011834, -0.951912, -0.306144,
		0.713845, -0.222436, 0.664038,
		33.883385, 35.489609, 40.812214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992283, 35.170174, 40.793446>,  <33.383694, 35.645313, 40.347389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992283, 35.170174, 40.793446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330925, 35.244995, 40.992756>,  <33.534111, 35.289886, 41.112343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330925, 35.244995, 40.992756>,  <32.992283, 35.170174, 40.793446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330925, 35.244995, 40.992756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498801, -0.047681, 0.865404,
		0.185634, -0.981192, 0.052935,
		0.846603, 0.187053, 0.498271,
		33.584908, 35.301109, 41.142239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584202, 34.544773, 40.727779>,  <32.992283, 35.170174, 40.793446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584202, 34.544773, 40.727779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201397, 34.541885, 40.611797>,  <31.971714, 34.540154, 40.542210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201397, 34.541885, 40.611797>,  <32.584202, 34.544773, 40.727779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201397, 34.541885, 40.611797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287622, 0.105281, -0.951940,
		0.037396, -0.994416, -0.098679,
		-0.957014, -0.007217, -0.289953,
		31.914293, 34.539719, 40.524811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633389, 34.263191, 40.089630>,  <32.584202, 34.544773, 40.727779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633389, 34.263191, 40.089630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256260, 34.393185, 40.060036>,  <32.029984, 34.471180, 40.042278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256260, 34.393185, 40.060036>,  <32.633389, 34.263191, 40.089630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256260, 34.393185, 40.060036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143337, 0.194931, -0.970287,
		-0.300907, -0.925411, -0.230367,
		-0.942820, 0.324986, -0.073989,
		31.973413, 34.490681, 40.037838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332455, 33.992134, 39.467495>,  <32.633389, 34.263191, 40.089630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332455, 33.992134, 39.467495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121147, 34.322411, 39.546650>,  <31.994362, 34.520576, 39.594143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121147, 34.322411, 39.546650>,  <32.332455, 33.992134, 39.467495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121147, 34.322411, 39.546650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150263, 0.138473, -0.978900,
		-0.835674, -0.546860, 0.050920,
		-0.528270, 0.825694, 0.197891,
		31.962666, 34.570118, 39.606018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637445, 33.947487, 39.132206>,  <32.332455, 33.992134, 39.467495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637445, 33.947487, 39.132206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725784, 34.334755, 39.179333>,  <31.778788, 34.567116, 39.207607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725784, 34.334755, 39.179333>,  <31.637445, 33.947487, 39.132206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725784, 34.334755, 39.179333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118098, 0.146456, -0.982142,
		-0.968131, 0.202991, 0.146683,
		0.220849, 0.968166, 0.117816,
		31.792038, 34.625206, 39.214676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176987, 34.219727, 38.752037>,  <31.637445, 33.947487, 39.132206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176987, 34.219727, 38.752037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448935, 34.511105, 38.785862>,  <31.612103, 34.685932, 38.806156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448935, 34.511105, 38.785862>,  <31.176987, 34.219727, 38.752037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448935, 34.511105, 38.785862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110401, 0.215670, -0.970205,
		-0.724976, 0.650276, 0.227048,
		0.679868, 0.728442, 0.084565,
		31.652895, 34.729637, 38.811230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881758, 34.819065, 38.515038>,  <31.176987, 34.219727, 38.752037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881758, 34.819065, 38.515038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277405, 34.868095, 38.482483>,  <31.514793, 34.897514, 38.462952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277405, 34.868095, 38.482483>,  <30.881758, 34.819065, 38.515038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277405, 34.868095, 38.482483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102169, 0.174130, -0.979408,
		-0.105882, 0.977064, 0.184758,
		0.989116, 0.122578, -0.081388,
		31.574141, 34.904869, 38.458065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922932, 35.437733, 38.124897>,  <30.881758, 34.819065, 38.515038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922932, 35.437733, 38.124897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279287, 35.258404, 38.095711>,  <31.493101, 35.150806, 38.078197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279287, 35.258404, 38.095711>,  <30.922932, 35.437733, 38.124897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279287, 35.258404, 38.095711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000149, 0.160357, -0.987059,
		0.454225, 0.879369, 0.142793,
		0.890887, -0.448325, -0.072969,
		31.546553, 35.123905, 38.073818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216194, 35.674461, 37.606377>,  <30.922932, 35.437733, 38.124897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216194, 35.674461, 37.606377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495674, 35.388882, 37.624706>,  <31.663363, 35.217533, 37.635704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495674, 35.388882, 37.624706>,  <31.216194, 35.674461, 37.606377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495674, 35.388882, 37.624706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190653, 0.124079, -0.973784,
		0.689544, 0.689118, 0.222810,
		0.698699, -0.713947, 0.045824,
		31.705284, 35.174698, 37.638454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799034, 35.912434, 37.323055>,  <31.216194, 35.674461, 37.606377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799034, 35.912434, 37.323055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836121, 35.516953, 37.275955>,  <31.858374, 35.279663, 37.247696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836121, 35.516953, 37.275955>,  <31.799034, 35.912434, 37.323055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836121, 35.516953, 37.275955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325198, 0.141841, -0.934948,
		0.941090, 0.048396, 0.334676,
		0.092718, -0.988706, -0.117747,
		31.863935, 35.220341, 37.240631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272030, 35.802795, 36.704754>,  <31.799034, 35.912434, 37.323055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272030, 35.802795, 36.704754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112061, 35.437317, 36.733662>,  <32.016079, 35.218029, 36.751007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112061, 35.437317, 36.733662>,  <32.272030, 35.802795, 36.704754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112061, 35.437317, 36.733662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185360, -0.157853, -0.969909,
		0.897609, -0.374496, 0.232491,
		-0.399926, -0.913693, 0.072273,
		31.992083, 35.163208, 36.755344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743469, 35.258274, 36.464584>,  <32.272030, 35.802795, 36.704754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743469, 35.258274, 36.464584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384418, 35.082111, 36.457561>,  <32.168987, 34.976414, 36.453346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384418, 35.082111, 36.457561>,  <32.743469, 35.258274, 36.464584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384418, 35.082111, 36.457561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247498, -0.470680, -0.846880,
		0.364710, -0.764526, 0.531494,
		-0.897625, -0.440409, -0.017557,
		32.115131, 34.949989, 36.452293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898365, 34.587254, 36.158215>,  <32.743469, 35.258274, 36.464584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898365, 34.587254, 36.158215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502571, 34.635284, 36.125984>,  <32.265095, 34.664101, 36.106644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502571, 34.635284, 36.125984>,  <32.898365, 34.587254, 36.158215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502571, 34.635284, 36.125984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032358, -0.359251, -0.932680,
		-0.140938, -0.925484, 0.351589,
		-0.989490, 0.120074, -0.080579,
		32.205723, 34.671307, 36.101810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645481, 34.036709, 35.750584>,  <32.898365, 34.587254, 36.158215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645481, 34.036709, 35.750584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368664, 34.322826, 35.711735>,  <32.202572, 34.494495, 35.688427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368664, 34.322826, 35.711735>,  <32.645481, 34.036709, 35.750584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368664, 34.322826, 35.711735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150484, -0.274545, -0.949726,
		-0.705995, -0.642638, 0.297637,
		-0.692045, 0.715291, -0.097120,
		32.161049, 34.537415, 35.682598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052471, 33.678001, 35.562386>,  <32.645481, 34.036709, 35.750584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052471, 33.678001, 35.562386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012997, 34.059391, 35.448437>,  <31.989313, 34.288223, 35.380066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012997, 34.059391, 35.448437>,  <32.052471, 33.678001, 35.562386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012997, 34.059391, 35.448437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236091, -0.300533, -0.924089,
		-0.966707, -0.023936, 0.254764,
		-0.098684, 0.953471, -0.284876,
		31.983391, 34.345432, 35.362972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490509, 33.359871, 36.073357>,  <32.052471, 33.678001, 35.562386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490509, 33.359871, 36.073357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476589, 33.006172, 35.887070>,  <32.468235, 32.793953, 35.775295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476589, 33.006172, 35.887070>,  <32.490509, 33.359871, 36.073357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476589, 33.006172, 35.887070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735663, -0.292754, 0.610815,
		-0.676453, 0.363873, -0.640319,
		-0.034803, -0.884247, -0.465722,
		32.466148, 32.740898, 35.747353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750105, 33.043087, 35.831978>,  <32.490509, 33.359871, 36.073357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750105, 33.043087, 35.831978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005016, 32.753387, 35.937313>,  <32.157963, 32.579567, 36.000515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005016, 32.753387, 35.937313>,  <31.750105, 33.043087, 35.831978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005016, 32.753387, 35.937313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578405, -0.223715, 0.784473,
		-0.509239, -0.652242, -0.561476,
		0.637277, -0.724246, 0.263336,
		32.196201, 32.536114, 36.016315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375574, 32.485264, 35.971962>,  <31.750105, 33.043087, 35.831978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375574, 32.485264, 35.971962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726419, 32.473652, 36.163723>,  <31.936926, 32.466686, 36.278782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726419, 32.473652, 36.163723>,  <31.375574, 32.485264, 35.971962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726419, 32.473652, 36.163723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475439, -0.193878, 0.858120,
		0.068039, -0.980596, -0.183852,
		0.877114, -0.029025, 0.479405,
		31.989553, 32.464943, 36.307545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245178, 31.827869, 36.270523>,  <31.375574, 32.485264, 35.971962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245178, 31.827869, 36.270523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565817, 31.991209, 36.445198>,  <31.758200, 32.089214, 36.550003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565817, 31.991209, 36.445198>,  <31.245178, 31.827869, 36.270523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565817, 31.991209, 36.445198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191900, -0.516022, 0.834803,
		0.566231, -0.752974, -0.335279,
		0.801596, 0.408351, 0.436684,
		31.806295, 32.113716, 36.576202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655458, 31.257467, 36.688557>,  <31.245178, 31.827869, 36.270523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655458, 31.257467, 36.688557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725855, 31.610014, 36.863926>,  <31.768093, 31.821543, 36.969147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725855, 31.610014, 36.863926>,  <31.655458, 31.257467, 36.688557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725855, 31.610014, 36.863926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293095, -0.378264, 0.878073,
		0.939746, -0.283035, 0.191753,
		0.175992, 0.881367, 0.438428,
		31.778652, 31.874424, 36.995453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184460, 31.187023, 37.155476>,  <31.655458, 31.257467, 36.688557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184460, 31.187023, 37.155476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956663, 31.490700, 37.281528>,  <31.819984, 31.672905, 37.357159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956663, 31.490700, 37.281528>,  <32.184460, 31.187023, 37.155476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956663, 31.490700, 37.281528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201483, -0.500603, 0.841903,
		0.796922, 0.415962, 0.438053,
		-0.569491, 0.759192, 0.315133,
		31.785816, 31.718456, 37.376068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442009, 31.416609, 37.808346>,  <32.184460, 31.187023, 37.155476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442009, 31.416609, 37.808346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081257, 31.589403, 37.808628>,  <31.864805, 31.693081, 37.808796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081257, 31.589403, 37.808628>,  <32.442009, 31.416609, 37.808346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081257, 31.589403, 37.808628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149801, -0.314268, 0.937441,
		0.405184, 0.845353, 0.348144,
		-0.901879, 0.431988, 0.000702,
		31.810694, 31.719000, 37.808838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419724, 31.819269, 38.351509>,  <32.442009, 31.416609, 37.808346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419724, 31.819269, 38.351509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030830, 31.755390, 38.283089>,  <31.797495, 31.717062, 38.242035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030830, 31.755390, 38.283089>,  <32.419724, 31.819269, 38.351509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030830, 31.755390, 38.283089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135128, -0.213654, 0.967519,
		-0.191059, 0.963767, 0.186142,
		-0.972233, -0.159700, -0.171052,
		31.739161, 31.707479, 38.231773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142906, 32.108559, 38.953636>,  <32.419724, 31.819269, 38.351509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142906, 32.108559, 38.953636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841177, 31.902336, 38.791058>,  <31.660139, 31.778603, 38.693512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841177, 31.902336, 38.791058>,  <32.142906, 32.108559, 38.953636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841177, 31.902336, 38.791058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272633, -0.317189, 0.908329,
		-0.597216, 0.795984, 0.098705,
		-0.754323, -0.515559, -0.406442,
		31.614880, 31.747669, 38.669125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533693, 32.271885, 39.299103>,  <32.142906, 32.108559, 38.953636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533693, 32.271885, 39.299103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434307, 31.919697, 39.137592>,  <31.374676, 31.708384, 39.040684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434307, 31.919697, 39.137592>,  <31.533693, 32.271885, 39.299103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434307, 31.919697, 39.137592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273974, -0.335952, 0.901152,
		-0.929088, 0.334529, -0.157754,
		-0.248463, -0.880470, -0.403780,
		31.359768, 31.655556, 39.016457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885717, 32.194210, 39.454735>,  <31.533693, 32.271885, 39.299103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885717, 32.194210, 39.454735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021715, 31.822405, 39.397579>,  <31.103313, 31.599323, 39.363285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021715, 31.822405, 39.397579>,  <30.885717, 32.194210, 39.454735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021715, 31.822405, 39.397579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414132, -0.284398, 0.864646,
		-0.844334, -0.234798, -0.481633,
		0.339992, -0.929510, -0.142890,
		31.123713, 31.543552, 39.354713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367716, 31.721300, 39.710823>,  <30.885717, 32.194210, 39.454735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367716, 31.721300, 39.710823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679600, 31.470850, 39.712757>,  <30.866730, 31.320580, 39.713917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679600, 31.470850, 39.712757>,  <30.367716, 31.721300, 39.710823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679600, 31.470850, 39.712757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386034, -0.474619, 0.791021,
		-0.492979, -0.618636, -0.611769,
		0.779711, -0.626120, 0.004837,
		30.913513, 31.283012, 39.714207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109951, 31.115578, 39.820667>,  <30.367716, 31.721300, 39.710823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109951, 31.115578, 39.820667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493587, 31.067371, 39.923130>,  <30.723770, 31.038448, 39.984608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493587, 31.067371, 39.923130>,  <30.109951, 31.115578, 39.820667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493587, 31.067371, 39.923130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283027, -0.427155, 0.858740,
		0.005928, -0.896111, -0.443791,
		0.959093, -0.120515, 0.256156,
		30.781315, 31.031218, 39.999977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111641, 30.428350, 39.969181>,  <30.109951, 31.115578, 39.820667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111641, 30.428350, 39.969181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422371, 30.593929, 40.158997>,  <30.608809, 30.693277, 40.272884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422371, 30.593929, 40.158997>,  <30.111641, 30.428350, 39.969181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422371, 30.593929, 40.158997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356381, -0.332285, 0.873258,
		0.519165, -0.847487, -0.110605,
		0.776827, 0.413947, 0.474539,
		30.655418, 30.718113, 40.301357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408951, 29.924181, 40.553490>,  <30.111641, 30.428350, 39.969181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408951, 29.924181, 40.553490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580721, 30.271795, 40.651772>,  <30.683783, 30.480364, 40.710739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580721, 30.271795, 40.651772>,  <30.408951, 29.924181, 40.553490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580721, 30.271795, 40.651772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190986, -0.178523, 0.965222,
		0.882678, -0.461414, 0.089313,
		0.429423, 0.869038, 0.245702,
		30.709547, 30.532507, 40.725483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904345, 29.782518, 40.939056>,  <30.408951, 29.924181, 40.553490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904345, 29.782518, 40.939056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859262, 30.160732, 41.061214>,  <30.832212, 30.387661, 41.134510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859262, 30.160732, 41.061214>,  <30.904345, 29.782518, 40.939056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859262, 30.160732, 41.061214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035981, -0.303264, 0.952227,
		0.992977, 0.118310, 0.000159,
		-0.112706, 0.945534, 0.305391,
		30.825451, 30.444393, 41.152832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418596, 29.940325, 41.446449>,  <30.904345, 29.782518, 40.939056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418596, 29.940325, 41.446449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144506, 30.228426, 41.489719>,  <30.980053, 30.401287, 41.515682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144506, 30.228426, 41.489719>,  <31.418596, 29.940325, 41.446449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144506, 30.228426, 41.489719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013149, -0.136268, 0.990585,
		0.728213, 0.680196, 0.083904,
		-0.685225, 0.720253, 0.108176,
		30.938938, 30.444502, 41.522171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665939, 30.425238, 41.920078>,  <31.418596, 29.940325, 41.446449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665939, 30.425238, 41.920078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270582, 30.485462, 41.911983>,  <31.033367, 30.521597, 41.907127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270582, 30.485462, 41.911983>,  <31.665939, 30.425238, 41.920078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270582, 30.485462, 41.911983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042073, -0.143303, 0.988784,
		0.145973, 0.978159, 0.147974,
		-0.988393, 0.150562, -0.020236,
		30.974064, 30.530630, 41.905914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585039, 30.857468, 42.449638>,  <31.665939, 30.425238, 41.920078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585039, 30.857468, 42.449638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208399, 30.734770, 42.394077>,  <30.982414, 30.661152, 42.360741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208399, 30.734770, 42.394077>,  <31.585039, 30.857468, 42.449638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208399, 30.734770, 42.394077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110269, -0.108874, 0.987921,
		-0.318161, 0.945545, 0.068692,
		-0.941602, -0.306743, -0.138904,
		30.925919, 30.642746, 42.352406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176817, 31.195234, 42.982792>,  <31.585039, 30.857468, 42.449638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176817, 31.195234, 42.982792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972036, 30.872881, 42.863823>,  <30.849169, 30.679470, 42.792442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972036, 30.872881, 42.863823>,  <31.176817, 31.195234, 42.982792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972036, 30.872881, 42.863823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324066, -0.139467, 0.935697,
		-0.795542, 0.575417, -0.189759,
		-0.511951, -0.805881, -0.297425,
		30.818451, 30.631117, 42.774597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449518, 31.276279, 43.284958>,  <31.176817, 31.195234, 42.982792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449518, 31.276279, 43.284958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504229, 30.889523, 43.198788>,  <30.537054, 30.657469, 43.147087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504229, 30.889523, 43.198788>,  <30.449518, 31.276279, 43.284958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504229, 30.889523, 43.198788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254369, -0.244457, 0.935701,
		-0.957386, -0.073184, -0.279384,
		0.136776, -0.966894, -0.215424,
		30.545261, 30.599455, 43.134159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795547, 31.004816, 43.303009>,  <30.449518, 31.276279, 43.284958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795547, 31.004816, 43.303009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063387, 30.710911, 43.346390>,  <30.224091, 30.534567, 43.372417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063387, 30.710911, 43.346390>,  <29.795547, 31.004816, 43.303009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063387, 30.710911, 43.346390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334170, -0.167639, 0.927485,
		-0.663303, -0.657281, -0.357787,
		0.669597, -0.734765, 0.108448,
		30.264267, 30.490482, 43.378925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400770, 30.379116, 43.597797>,  <29.795547, 31.004816, 43.303009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400770, 30.379116, 43.597797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780787, 30.278843, 43.672184>,  <30.008797, 30.218679, 43.716816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780787, 30.278843, 43.672184>,  <29.400770, 30.379116, 43.597797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780787, 30.278843, 43.672184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286529, -0.464114, 0.838152,
		-0.123801, -0.849562, -0.512755,
		0.950039, -0.250683, 0.185966,
		30.065798, 30.203638, 43.727974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280376, 29.755251, 43.857182>,  <29.400770, 30.379116, 43.597797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280376, 29.755251, 43.857182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640854, 29.865740, 43.990780>,  <29.857140, 29.932034, 44.070938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640854, 29.865740, 43.990780>,  <29.280376, 29.755251, 43.857182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640854, 29.865740, 43.990780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129887, -0.563072, 0.816137,
		0.413501, -0.778878, -0.471558,
		0.901192, 0.276224, 0.333997,
		29.911211, 29.948606, 44.090981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547750, 29.112761, 44.053020>,  <29.280376, 29.755251, 43.857182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547750, 29.112761, 44.053020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746803, 29.394783, 44.255112>,  <29.866236, 29.563997, 44.376366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746803, 29.394783, 44.255112>,  <29.547750, 29.112761, 44.053020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746803, 29.394783, 44.255112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198000, -0.474758, 0.857555,
		0.844486, -0.526784, -0.096654,
		0.497634, 0.705056, 0.505230,
		29.896093, 29.606300, 44.406681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046917, 28.794346, 44.489849>,  <29.547750, 29.112761, 44.053020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046917, 28.794346, 44.489849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005987, 29.160151, 44.646412>,  <29.981428, 29.379633, 44.740349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005987, 29.160151, 44.646412>,  <30.046917, 28.794346, 44.489849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005987, 29.160151, 44.646412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077434, -0.384957, 0.919680,
		0.991732, 0.124415, -0.031423,
		-0.102326, 0.914510, 0.391408,
		29.975290, 29.434504, 44.763836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549030, 28.826202, 45.054760>,  <30.046917, 28.794346, 44.489849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549030, 28.826202, 45.054760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281860, 29.111822, 45.138680>,  <30.121559, 29.283194, 45.189030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281860, 29.111822, 45.138680>,  <30.549030, 28.826202, 45.054760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281860, 29.111822, 45.138680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074504, -0.344631, 0.935777,
		0.740491, 0.609397, 0.283387,
		-0.667924, 0.714048, 0.209794,
		30.081484, 29.326036, 45.201618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756226, 29.190165, 45.715271>,  <30.549030, 28.826202, 45.054760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756226, 29.190165, 45.715271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364016, 29.246645, 45.660667>,  <30.128691, 29.280533, 45.627903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364016, 29.246645, 45.660667>,  <30.756226, 29.190165, 45.715271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364016, 29.246645, 45.660667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161134, -0.180968, 0.970199,
		0.112287, 0.973300, 0.200195,
		-0.980524, 0.141199, -0.136511,
		30.069859, 29.289005, 45.619713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286346, 29.674849, 45.869049>,  <30.756226, 29.190165, 45.715271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286346, 29.674849, 45.869049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621473, 29.636883, 46.084103>,  <31.822550, 29.614103, 46.213135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621473, 29.636883, 46.084103>,  <31.286346, 29.674849, 45.869049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621473, 29.636883, 46.084103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545064, 0.201467, -0.813828,
		-0.031071, 0.974886, 0.220527,
		0.837818, -0.094915, 0.537635,
		31.872818, 29.608408, 46.245392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750093, 30.329206, 45.734589>,  <31.286346, 29.674849, 45.869049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750093, 30.329206, 45.734589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977852, 30.035370, 45.882191>,  <32.114506, 29.859068, 45.970753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977852, 30.035370, 45.882191>,  <31.750093, 30.329206, 45.734589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977852, 30.035370, 45.882191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734479, 0.252988, -0.629712,
		0.369226, 0.629582, 0.683592,
		0.569396, -0.734590, 0.369005,
		32.148670, 29.814993, 45.992893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324226, 30.637550, 45.659088>,  <31.750093, 30.329206, 45.734589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324226, 30.637550, 45.659088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396271, 30.244410, 45.674866>,  <32.439499, 30.008524, 45.684334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396271, 30.244410, 45.674866>,  <32.324226, 30.637550, 45.659088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396271, 30.244410, 45.674866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782029, 0.118757, -0.611823,
		0.596648, 0.141048, 0.790010,
		0.180116, -0.982854, 0.039448,
		32.450306, 29.949553, 45.686699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090187, 30.641161, 45.666645>,  <32.324226, 30.637550, 45.659088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090187, 30.641161, 45.666645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976410, 30.285349, 45.523628>,  <32.908146, 30.071861, 45.437820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976410, 30.285349, 45.523628>,  <33.090187, 30.641161, 45.666645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976410, 30.285349, 45.523628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756077, 0.021159, -0.654141,
		0.589442, -0.456390, 0.666533,
		-0.284440, -0.889528, -0.357538,
		32.891079, 30.018490, 45.416367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619717, 30.201006, 45.643440>,  <33.090187, 30.641161, 45.666645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619717, 30.201006, 45.643440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399742, 30.022903, 45.360790>,  <33.267757, 29.916042, 45.191200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399742, 30.022903, 45.360790>,  <33.619717, 30.201006, 45.643440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399742, 30.022903, 45.360790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799178, -0.034719, -0.600091,
		0.242661, -0.894730, 0.374931,
		-0.549937, -0.445256, -0.706623,
		33.234760, 29.889326, 45.148804>
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
