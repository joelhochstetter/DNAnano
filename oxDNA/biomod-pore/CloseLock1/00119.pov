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
	<24.564255, 35.099098, 34.452293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.503073, 35.204929, 34.833157>,  <24.466364, 35.268429, 35.061672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.503073, 35.204929, 34.833157>,  <24.564255, 35.099098, 34.452293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.503073, 35.204929, 34.833157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941532, -0.253673, 0.221740,
		0.300204, 0.930401, -0.210311,
		-0.152957, 0.264582, 0.952156,
		24.457186, 35.284306, 35.118805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.077631, 35.505978, 34.697151>,  <24.564255, 35.099098, 34.452293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.077631, 35.505978, 34.697151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.932453, 35.343128, 35.032417>,  <24.845346, 35.245419, 35.233578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.932453, 35.343128, 35.032417>,  <25.077631, 35.505978, 34.697151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.932453, 35.343128, 35.032417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925695, -0.054648, 0.374302,
		-0.106584, 0.911736, 0.396709,
		-0.362944, -0.407126, 0.838165,
		24.823570, 35.220989, 35.283867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.214569, 35.864056, 35.288906>,  <25.077631, 35.505978, 34.697151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.214569, 35.864056, 35.288906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184614, 35.481934, 35.403297>,  <25.166641, 35.252659, 35.471931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184614, 35.481934, 35.403297>,  <25.214569, 35.864056, 35.288906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.184614, 35.481934, 35.403297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973071, -0.007314, 0.230390,
		-0.218002, 0.295527, 0.930128,
		-0.074890, -0.955306, 0.285975,
		25.162148, 35.195343, 35.489090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.565269, 35.881111, 35.990936>,  <25.214569, 35.864056, 35.288906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.565269, 35.881111, 35.990936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558342, 35.530842, 35.797901>,  <25.554186, 35.320679, 35.682079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558342, 35.530842, 35.797901>,  <25.565269, 35.881111, 35.990936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.558342, 35.530842, 35.797901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989981, -0.082662, 0.114471,
		-0.140132, -0.475771, 0.868335,
		-0.017317, -0.875676, -0.482588,
		25.553146, 35.268139, 35.653126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791401, 35.404881, 36.404816>,  <25.565269, 35.881111, 35.990936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791401, 35.404881, 36.404816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883749, 35.365116, 36.017658>,  <25.939157, 35.341259, 35.785362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883749, 35.365116, 36.017658>,  <25.791401, 35.404881, 36.404816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883749, 35.365116, 36.017658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968764, 0.116040, 0.219159,
		0.090528, -0.988257, 0.123093,
		0.230870, -0.099408, -0.967893,
		25.953011, 35.335293, 35.727291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373278, 34.985363, 36.362595>,  <25.791401, 35.404881, 36.404816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373278, 34.985363, 36.362595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366108, 35.236217, 36.051113>,  <26.361807, 35.386730, 35.864223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366108, 35.236217, 36.051113>,  <26.373278, 34.985363, 36.362595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366108, 35.236217, 36.051113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952444, 0.247656, 0.177529,
		0.304185, -0.738491, -0.601749,
		-0.017923, 0.627134, -0.778705,
		26.360731, 35.424358, 35.817501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947226, 34.872112, 36.046253>,  <26.373278, 34.985363, 36.362595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947226, 34.872112, 36.046253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824615, 35.252110, 36.022392>,  <26.751049, 35.480106, 36.008076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824615, 35.252110, 36.022392>,  <26.947226, 34.872112, 36.046253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824615, 35.252110, 36.022392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909386, 0.310781, 0.276465,
		0.281177, 0.030499, -0.959171,
		-0.306524, 0.949992, -0.059649,
		26.732658, 35.537106, 36.004498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012672, 34.678806, 36.754372>,  <26.947226, 34.872112, 36.046253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012672, 34.678806, 36.754372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305788, 34.664032, 37.026154>,  <27.481657, 34.655167, 37.189220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305788, 34.664032, 37.026154>,  <27.012672, 34.678806, 36.754372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305788, 34.664032, 37.026154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440914, 0.786316, -0.432785,
		-0.518279, 0.616720, 0.592489,
		0.732791, -0.036933, 0.679451,
		27.525625, 34.652950, 37.229988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248140, 35.413902, 37.092548>,  <27.012672, 34.678806, 36.754372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.248140, 35.413902, 37.092548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.561960, 35.174107, 37.155907>,  <27.750252, 35.030228, 37.193924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.561960, 35.174107, 37.155907>,  <27.248140, 35.413902, 37.092548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561960, 35.174107, 37.155907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596452, 0.659805, -0.457059,
		0.169491, 0.453063, 0.875218,
		0.784549, -0.599493, 0.158399,
		27.797325, 34.994259, 37.203426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815363, 35.794868, 37.359417>,  <27.248140, 35.413902, 37.092548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815363, 35.794868, 37.359417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970781, 35.466446, 37.192135>,  <28.064032, 35.269390, 37.091766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970781, 35.466446, 37.192135>,  <27.815363, 35.794868, 37.359417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970781, 35.466446, 37.192135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720678, 0.553599, -0.417315,
		0.574157, -0.139245, 0.806817,
		0.388544, -0.821060, -0.418203,
		28.087345, 35.220127, 37.066673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526863, 35.711346, 37.578033>,  <27.815363, 35.794868, 37.359417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526863, 35.711346, 37.578033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498682, 35.491768, 37.244881>,  <28.481773, 35.360020, 37.044991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498682, 35.491768, 37.244881>,  <28.526863, 35.711346, 37.578033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498682, 35.491768, 37.244881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797424, 0.470637, -0.377646,
		0.599293, -0.690767, 0.404585,
		-0.070453, -0.548946, -0.832883,
		28.477547, 35.327084, 36.995014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240358, 35.469936, 37.418537>,  <28.526863, 35.711346, 37.578033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240358, 35.469936, 37.418537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038177, 35.449566, 37.073997>,  <28.916868, 35.437344, 36.867275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038177, 35.449566, 37.073997>,  <29.240358, 35.469936, 37.418537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038177, 35.449566, 37.073997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764470, 0.436485, -0.474411,
		0.400126, -0.898269, -0.181693,
		-0.505455, -0.050925, -0.861349,
		28.886541, 35.434288, 36.815594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759420, 35.336193, 36.945190>,  <29.240358, 35.469936, 37.418537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759420, 35.336193, 36.945190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464125, 35.431755, 36.692863>,  <29.286947, 35.489094, 36.541470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464125, 35.431755, 36.692863>,  <29.759420, 35.336193, 36.945190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464125, 35.431755, 36.692863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661011, 0.442578, -0.605961,
		0.134418, -0.864320, -0.484647,
		-0.738239, 0.238905, -0.630815,
		29.242653, 35.503426, 36.503620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963409, 35.084576, 36.251766>,  <29.759420, 35.336193, 36.945190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963409, 35.084576, 36.251766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703251, 35.386879, 36.221264>,  <29.547155, 35.568260, 36.202961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703251, 35.386879, 36.221264>,  <29.963409, 35.084576, 36.251766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703251, 35.386879, 36.221264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645139, 0.496612, -0.580665,
		-0.400972, -0.426858, -0.810564,
		-0.650397, 0.755757, -0.076255,
		29.508131, 35.613605, 36.198387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872089, 35.253391, 35.499054>,  <29.963409, 35.084576, 36.251766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872089, 35.253391, 35.499054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794170, 35.573685, 35.725643>,  <29.747419, 35.765862, 35.861595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794170, 35.573685, 35.725643>,  <29.872089, 35.253391, 35.499054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794170, 35.573685, 35.725643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497736, 0.578344, -0.646357,
		-0.845171, 0.156045, -0.511211,
		-0.194795, 0.800730, 0.566469,
		29.735731, 35.813904, 35.895584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998798, 35.865768, 35.080593>,  <29.872089, 35.253391, 35.499054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998798, 35.865768, 35.080593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935165, 36.048874, 35.430485>,  <29.896986, 36.158737, 35.640419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935165, 36.048874, 35.430485>,  <29.998798, 35.865768, 35.080593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935165, 36.048874, 35.430485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323435, 0.861279, -0.391903,
		-0.932782, 0.220572, -0.285072,
		-0.159083, 0.457762, 0.874726,
		29.887440, 36.186203, 35.692902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614115, 36.488384, 34.924213>,  <29.998798, 35.865768, 35.080593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614115, 36.488384, 34.924213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762508, 36.559380, 35.288822>,  <29.851545, 36.601978, 35.507587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762508, 36.559380, 35.288822>,  <29.614115, 36.488384, 34.924213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762508, 36.559380, 35.288822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313841, 0.899847, -0.302951,
		-0.873999, 0.398463, 0.278125,
		0.370985, 0.177492, 0.911519,
		29.873804, 36.612629, 35.562279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371469, 37.117081, 35.106060>,  <29.614115, 36.488384, 34.924213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371469, 37.117081, 35.106060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712860, 37.046089, 35.302052>,  <29.917694, 37.003494, 35.419647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712860, 37.046089, 35.302052>,  <29.371469, 37.117081, 35.106060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712860, 37.046089, 35.302052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410639, 0.807935, -0.422630,
		-0.320865, 0.561910, 0.762432,
		0.853476, -0.177477, 0.489980,
		29.968903, 36.992847, 35.449047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776554, 37.789230, 35.214691>,  <29.371469, 37.117081, 35.106060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776554, 37.789230, 35.214691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066774, 37.527630, 35.300343>,  <30.240908, 37.370670, 35.351734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066774, 37.527630, 35.300343>,  <29.776554, 37.789230, 35.214691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066774, 37.527630, 35.300343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676415, 0.620499, -0.396792,
		0.126635, 0.432735, 0.892583,
		0.725552, -0.654004, 0.214132,
		30.284439, 37.331429, 35.364582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231306, 38.184658, 35.646812>,  <29.776554, 37.789230, 35.214691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231306, 38.184658, 35.646812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417723, 37.883049, 35.461662>,  <30.529572, 37.702084, 35.350571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417723, 37.883049, 35.461662>,  <30.231306, 38.184658, 35.646812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417723, 37.883049, 35.461662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736789, 0.620395, -0.268798,
		0.489846, -0.215771, 0.844685,
		0.466040, -0.754024, -0.462876,
		30.557535, 37.656841, 35.322800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918402, 38.296749, 35.836285>,  <30.231306, 38.184658, 35.646812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918402, 38.296749, 35.836285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995499, 38.042866, 35.536953>,  <31.041758, 37.890533, 35.357353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995499, 38.042866, 35.536953>,  <30.918402, 38.296749, 35.836285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995499, 38.042866, 35.536953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798258, 0.544927, -0.256590,
		0.570644, -0.547901, 0.611695,
		0.192743, -0.634712, -0.748325,
		31.053322, 37.852451, 35.312454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615026, 38.311764, 35.752319>,  <30.918402, 38.296749, 35.836285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615026, 38.311764, 35.752319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482521, 38.142941, 35.414768>,  <31.403017, 38.041649, 35.212238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482521, 38.142941, 35.414768>,  <31.615026, 38.311764, 35.752319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482521, 38.142941, 35.414768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733107, 0.447908, -0.511795,
		0.593986, -0.788193, 0.161037,
		-0.331263, -0.422056, -0.843880,
		31.383142, 38.016323, 35.161606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191143, 38.005188, 35.412762>,  <31.615026, 38.311764, 35.752319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191143, 38.005188, 35.412762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927422, 38.064461, 35.117908>,  <31.769190, 38.100025, 34.940998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927422, 38.064461, 35.117908>,  <32.191143, 38.005188, 35.412762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927422, 38.064461, 35.117908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731533, 0.352943, -0.583344,
		0.173721, -0.923836, -0.341099,
		-0.659303, 0.148186, -0.737130,
		31.729631, 38.108917, 34.896770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463913, 37.773899, 34.837795>,  <32.191143, 38.005188, 35.412762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463913, 37.773899, 34.837795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193562, 38.035614, 34.702095>,  <32.031349, 38.192642, 34.620674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193562, 38.035614, 34.702095>,  <32.463913, 37.773899, 34.837795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193562, 38.035614, 34.702095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701605, 0.430239, -0.568019,
		-0.225692, -0.621932, -0.749843,
		-0.675880, 0.654290, -0.339249,
		31.990797, 38.231899, 34.600319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643475, 37.864326, 34.098961>,  <32.463913, 37.773899, 34.837795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643475, 37.864326, 34.098961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395153, 38.163116, 34.194141>,  <32.246159, 38.342392, 34.251251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395153, 38.163116, 34.194141>,  <32.643475, 37.864326, 34.098961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395153, 38.163116, 34.194141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473940, 0.599379, -0.645078,
		-0.624484, -0.287693, -0.726121,
		-0.620806, 0.746979, 0.237954,
		32.208912, 38.387211, 34.265526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264950, 37.951725, 33.480808>,  <32.643475, 37.864326, 34.098961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264950, 37.951725, 33.480808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265751, 38.283142, 33.704777>,  <32.266232, 38.481991, 33.839157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265751, 38.283142, 33.704777>,  <32.264950, 37.951725, 33.480808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265751, 38.283142, 33.704777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630900, 0.433378, -0.643544,
		-0.775861, 0.354547, -0.521858,
		0.002006, 0.828541, 0.559925,
		32.266354, 38.531704, 33.872753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861292, 38.407658, 33.022289>,  <32.264950, 37.951725, 33.480808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861292, 38.407658, 33.022289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170235, 38.525810, 33.247223>,  <32.355598, 38.596703, 33.382183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170235, 38.525810, 33.247223>,  <31.861292, 38.407658, 33.022289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170235, 38.525810, 33.247223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404005, 0.454697, -0.793745,
		-0.490151, 0.840237, 0.231850,
		0.772355, 0.295386, 0.562330,
		32.401939, 38.614426, 33.415920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055130, 39.024166, 32.686436>,  <31.861292, 38.407658, 33.022289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055130, 39.024166, 32.686436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360966, 38.903168, 32.914085>,  <32.544468, 38.830566, 33.050674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360966, 38.903168, 32.914085>,  <32.055130, 39.024166, 32.686436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360966, 38.903168, 32.914085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642388, 0.429458, -0.634747,
		-0.052405, 0.850917, 0.522679,
		0.764586, -0.302499, 0.569125,
		32.590340, 38.812416, 33.084824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492237, 39.597813, 32.969364>,  <32.055130, 39.024166, 32.686436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492237, 39.597813, 32.969364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727173, 39.275154, 32.942947>,  <32.868134, 39.081558, 32.927097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727173, 39.275154, 32.942947>,  <32.492237, 39.597813, 32.969364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727173, 39.275154, 32.942947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715006, 0.555381, -0.424639,
		0.379213, 0.202182, 0.902951,
		0.587336, -0.806644, -0.066046,
		32.903374, 39.033161, 32.923134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214527, 39.646576, 33.373375>,  <32.492237, 39.597813, 32.969364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214527, 39.646576, 33.373375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175179, 39.452946, 33.025585>,  <33.151569, 39.336765, 32.816910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175179, 39.452946, 33.025585>,  <33.214527, 39.646576, 33.373375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175179, 39.452946, 33.025585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623158, 0.651240, -0.433082,
		0.775884, -0.584427, 0.237591,
		-0.098376, -0.484078, -0.869477,
		33.145664, 39.307724, 32.764744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548397, 39.167503, 33.736038>,  <33.214527, 39.646576, 33.373375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548397, 39.167503, 33.736038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889896, 39.375729, 33.731552>,  <34.094795, 39.500664, 33.728863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889896, 39.375729, 33.731552>,  <33.548397, 39.167503, 33.736038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889896, 39.375729, 33.731552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257109, -0.402752, 0.878457,
		0.452775, -0.752866, -0.477690,
		0.853750, 0.520562, -0.011213,
		34.146023, 39.531898, 33.728188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258106, 38.706627, 33.723232>,  <33.548397, 39.167503, 33.736038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258106, 38.706627, 33.723232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284222, 39.067844, 33.893059>,  <34.299892, 39.284573, 33.994953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284222, 39.067844, 33.893059>,  <34.258106, 38.706627, 33.723232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284222, 39.067844, 33.893059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209444, -0.428395, 0.878983,
		0.975638, 0.031533, -0.217107,
		0.065291, 0.903041, 0.424563,
		34.303810, 39.338757, 34.020428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827354, 38.543915, 33.297131>,  <34.258106, 38.706627, 33.723232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827354, 38.543915, 33.297131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134857, 38.307106, 33.393898>,  <35.319359, 38.165020, 33.451958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134857, 38.307106, 33.393898>,  <34.827354, 38.543915, 33.297131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134857, 38.307106, 33.393898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606097, -0.553682, 0.571036,
		-0.204123, -0.585611, -0.784470,
		0.768752, -0.592026, 0.241918,
		35.365482, 38.129498, 33.466473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930035, 38.848671, 33.945629>,  <34.827354, 38.543915, 33.297131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930035, 38.848671, 33.945629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265366, 38.634487, 33.986603>,  <35.466564, 38.505978, 34.011189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265366, 38.634487, 33.986603>,  <34.930035, 38.848671, 33.945629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265366, 38.634487, 33.986603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339449, -0.365656, 0.866643,
		-0.426595, -0.761301, -0.488300,
		0.838326, -0.535459, 0.102436,
		35.516865, 38.473850, 34.017334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825947, 38.027935, 34.083858>,  <34.930035, 38.848671, 33.945629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825947, 38.027935, 34.083858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151058, 38.178684, 34.261555>,  <35.346127, 38.269135, 34.368172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151058, 38.178684, 34.261555>,  <34.825947, 38.027935, 34.083858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151058, 38.178684, 34.261555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283421, -0.410420, 0.866734,
		0.508978, -0.830372, -0.226767,
		0.812782, 0.376878, 0.444240,
		35.394894, 38.291748, 34.394825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314465, 37.455109, 34.217846>,  <34.825947, 38.027935, 34.083858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314465, 37.455109, 34.217846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355663, 37.758385, 34.475384>,  <35.380383, 37.940350, 34.629906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355663, 37.758385, 34.475384>,  <35.314465, 37.455109, 34.217846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355663, 37.758385, 34.475384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316967, -0.588524, 0.743755,
		0.942828, -0.280679, 0.179708,
		0.102994, 0.758195, 0.643843,
		35.386562, 37.985844, 34.668537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544273, 37.142849, 34.737682>,  <35.314465, 37.455109, 34.217846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544273, 37.142849, 34.737682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397831, 37.488773, 34.875130>,  <35.309963, 37.696327, 34.957600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397831, 37.488773, 34.875130>,  <35.544273, 37.142849, 34.737682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397831, 37.488773, 34.875130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259479, -0.449480, 0.854774,
		0.893664, 0.223778, 0.388957,
		-0.366108, 0.864807, 0.343618,
		35.287998, 37.748215, 34.978214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875881, 37.334965, 35.414448>,  <35.544273, 37.142849, 34.737682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875881, 37.334965, 35.414448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514568, 37.501247, 35.371990>,  <35.297779, 37.601017, 35.346516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514568, 37.501247, 35.371990>,  <35.875881, 37.334965, 35.414448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514568, 37.501247, 35.371990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258919, -0.330893, 0.907453,
		0.342106, 0.847173, 0.406524,
		-0.903285, 0.415702, -0.106148,
		35.243584, 37.625957, 35.340145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716648, 37.785080, 36.026409>,  <35.875881, 37.334965, 35.414448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716648, 37.785080, 36.026409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381470, 37.668564, 35.841805>,  <35.180363, 37.598656, 35.731041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381470, 37.668564, 35.841805>,  <35.716648, 37.785080, 36.026409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381470, 37.668564, 35.841805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322592, -0.417729, 0.849374,
		-0.440199, 0.860612, 0.256069,
		-0.837949, -0.291288, -0.461511,
		35.130085, 37.581177, 35.703350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297085, 37.507946, 36.592690>,  <35.716648, 37.785080, 36.026409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297085, 37.507946, 36.592690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060696, 37.426395, 36.280487>,  <34.918861, 37.377464, 36.093166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060696, 37.426395, 36.280487>,  <35.297085, 37.507946, 36.592690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060696, 37.426395, 36.280487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527905, -0.633854, 0.565283,
		-0.609970, 0.746100, 0.266968,
		-0.590976, -0.203872, -0.780502,
		34.883404, 37.365234, 36.046337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576134, 37.706673, 36.768120>,  <35.297085, 37.507946, 36.592690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576134, 37.706673, 36.768120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561485, 37.426388, 36.483116>,  <34.552696, 37.258217, 36.312115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561485, 37.426388, 36.483116>,  <34.576134, 37.706673, 36.768120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561485, 37.426388, 36.483116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442277, -0.627991, 0.640327,
		-0.896130, 0.338578, -0.286907,
		-0.036626, -0.700709, -0.712507,
		34.550499, 37.216175, 36.269363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889565, 37.494690, 36.876053>,  <34.576134, 37.706673, 36.768120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889565, 37.494690, 36.876053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044582, 37.209335, 36.642513>,  <34.137592, 37.038120, 36.502388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044582, 37.209335, 36.642513>,  <33.889565, 37.494690, 36.876053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044582, 37.209335, 36.642513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714747, -0.632520, 0.298422,
		-0.582188, 0.301653, -0.755025,
		0.387549, -0.713389, -0.583851,
		34.160847, 36.995319, 36.467358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288498, 37.091579, 36.572720>,  <33.889565, 37.494690, 36.876053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288498, 37.091579, 36.572720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604095, 36.850689, 36.524029>,  <33.793453, 36.706154, 36.494812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604095, 36.850689, 36.524029>,  <33.288498, 37.091579, 36.572720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604095, 36.850689, 36.524029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599426, -0.797979, 0.062589,
		-0.134831, 0.023586, -0.990588,
		0.788992, -0.602224, -0.121730,
		33.840794, 36.670021, 36.487511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147209, 36.789555, 35.950150>,  <33.288498, 37.091579, 36.572720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147209, 36.789555, 35.950150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372330, 36.551670, 36.179783>,  <33.507404, 36.408939, 36.317562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372330, 36.551670, 36.179783>,  <33.147209, 36.789555, 35.950150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372330, 36.551670, 36.179783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791607, -0.587698, 0.167238,
		0.237927, -0.548569, -0.801538,
		0.562804, -0.594713, 0.574081,
		33.541172, 36.373257, 36.352009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025826, 36.168205, 35.621059>,  <33.147209, 36.789555, 35.950150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025826, 36.168205, 35.621059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170372, 36.104374, 35.988525>,  <33.257099, 36.066074, 36.209003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170372, 36.104374, 35.988525>,  <33.025826, 36.168205, 35.621059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170372, 36.104374, 35.988525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695014, -0.702898, 0.151294,
		0.621584, -0.693159, -0.364917,
		0.361371, -0.159581, 0.918665,
		33.278782, 36.056499, 36.264126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724033, 35.507748, 35.807690>,  <33.025826, 36.168205, 35.621059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724033, 35.507748, 35.807690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864708, 35.606861, 36.168781>,  <32.949112, 35.666328, 36.385437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864708, 35.606861, 36.168781>,  <32.724033, 35.507748, 35.807690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864708, 35.606861, 36.168781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721195, -0.543094, 0.430032,
		0.596822, -0.802279, -0.012297,
		0.351684, 0.247784, 0.902730,
		32.970215, 35.681198, 36.439602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839020, 34.839355, 36.193581>,  <32.724033, 35.507748, 35.807690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839020, 34.839355, 36.193581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806538, 35.135723, 36.460247>,  <32.787048, 35.313545, 36.620247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806538, 35.135723, 36.460247>,  <32.839020, 34.839355, 36.193581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806538, 35.135723, 36.460247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707718, -0.513842, 0.484874,
		0.701813, -0.432438, 0.566088,
		-0.081202, 0.740921, 0.666665,
		32.782177, 35.357998, 36.660248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774406, 34.509979, 36.772614>,  <32.839020, 34.839355, 36.193581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774406, 34.509979, 36.772614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609070, 34.861534, 36.867863>,  <32.509869, 35.072468, 36.925014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609070, 34.861534, 36.867863>,  <32.774406, 34.509979, 36.772614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609070, 34.861534, 36.867863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749058, -0.476883, 0.459885,
		0.517746, 0.011719, 0.855454,
		-0.413341, 0.878889, 0.238126,
		32.485069, 35.125202, 36.939301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665455, 34.492092, 37.593853>,  <32.774406, 34.509979, 36.772614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665455, 34.492092, 37.593853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433952, 34.750072, 37.394222>,  <32.295052, 34.904861, 37.274445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433952, 34.750072, 37.394222>,  <32.665455, 34.492092, 37.593853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433952, 34.750072, 37.394222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811018, -0.391123, 0.435054,
		0.085391, 0.656548, 0.749435,
		-0.578756, 0.644955, -0.499074,
		32.260326, 34.943558, 37.244499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329563, 34.591290, 38.158020>,  <32.665455, 34.492092, 37.593853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329563, 34.591290, 38.158020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127613, 34.731457, 37.842472>,  <32.006443, 34.815559, 37.653145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127613, 34.731457, 37.842472>,  <32.329563, 34.591290, 38.158020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127613, 34.731457, 37.842472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851128, -0.354365, 0.387307,
		-0.143826, 0.866966, 0.477162,
		-0.504872, 0.350421, -0.788866,
		31.976151, 34.836582, 37.605812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794044, 35.069439, 38.397385>,  <32.329563, 34.591290, 38.158020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794044, 35.069439, 38.397385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684404, 34.933861, 38.037388>,  <31.618620, 34.852516, 37.821388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684404, 34.933861, 38.037388>,  <31.794044, 35.069439, 38.397385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684404, 34.933861, 38.037388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899877, -0.239731, 0.364349,
		-0.339250, 0.909751, -0.239295,
		-0.274101, -0.338942, -0.899993,
		31.602175, 34.832180, 37.767391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147331, 35.264980, 38.328476>,  <31.794044, 35.069439, 38.397385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147331, 35.264980, 38.328476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194704, 34.980560, 38.051239>,  <31.223127, 34.809910, 37.884895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194704, 34.980560, 38.051239>,  <31.147331, 35.264980, 38.328476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194704, 34.980560, 38.051239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842240, -0.441642, 0.309166,
		-0.525933, 0.547139, -0.651179,
		0.118431, -0.711049, -0.693097,
		31.230234, 34.767246, 37.843311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522913, 35.250282, 38.042210>,  <31.147331, 35.264980, 38.328476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522913, 35.250282, 38.042210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694683, 34.900501, 37.951946>,  <30.797745, 34.690632, 37.897789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694683, 34.900501, 37.951946>,  <30.522913, 35.250282, 38.042210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694683, 34.900501, 37.951946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851671, -0.475244, 0.220905,
		-0.300416, 0.097327, -0.948830,
		0.429425, -0.874455, -0.225662,
		30.823511, 34.638165, 37.884247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008312, 34.864441, 37.698009>,  <30.522913, 35.250282, 38.042210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008312, 34.864441, 37.698009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258615, 34.561077, 37.770947>,  <30.408796, 34.379059, 37.814709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258615, 34.561077, 37.770947>,  <30.008312, 34.864441, 37.698009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258615, 34.561077, 37.770947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776946, -0.585291, 0.231926,
		-0.069167, -0.286803, -0.955489,
		0.625757, -0.758405, 0.182348,
		30.446342, 34.333557, 37.825649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774183, 34.328403, 37.330311>,  <30.008312, 34.864441, 37.698009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774183, 34.328403, 37.330311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991913, 34.167660, 37.624851>,  <30.122551, 34.071213, 37.801575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991913, 34.167660, 37.624851>,  <29.774183, 34.328403, 37.330311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991913, 34.167660, 37.624851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663417, -0.743443, 0.084677,
		0.513410, -0.534603, -0.671275,
		0.544323, -0.401862, 0.736355,
		30.155210, 34.047100, 37.845757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725632, 33.609894, 37.294487>,  <29.774183, 34.328403, 37.330311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725632, 33.609894, 37.294487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824347, 33.676891, 37.676281>,  <29.883575, 33.717091, 37.905357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824347, 33.676891, 37.676281>,  <29.725632, 33.609894, 37.294487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824347, 33.676891, 37.676281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590059, -0.755342, 0.285112,
		0.768718, -0.633564, -0.087574,
		0.246785, 0.167497, 0.954485,
		29.898382, 33.727139, 37.962627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769482, 32.990257, 37.569359>,  <29.725632, 33.609894, 37.294487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769482, 32.990257, 37.569359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726717, 33.214188, 37.898033>,  <29.701057, 33.348545, 38.095238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726717, 33.214188, 37.898033>,  <29.769482, 32.990257, 37.569359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726717, 33.214188, 37.898033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614159, -0.687094, 0.388214,
		0.781907, -0.463142, 0.417279,
		-0.106912, 0.559823, 0.821686,
		29.694643, 33.382133, 38.144539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648281, 32.527515, 38.116066>,  <29.769482, 32.990257, 37.569359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648281, 32.527515, 38.116066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505568, 32.884720, 38.225784>,  <29.419939, 33.099041, 38.291615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505568, 32.884720, 38.225784>,  <29.648281, 32.527515, 38.116066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505568, 32.884720, 38.225784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834945, -0.436526, 0.335131,
		0.419013, -0.109455, 0.901358,
		-0.356784, 0.893009, 0.274299,
		29.398533, 33.152622, 38.308075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103954, 32.242176, 38.583126>,  <29.648281, 32.527515, 38.116066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103954, 32.242176, 38.583126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395901, 31.980644, 38.503323>,  <30.571068, 31.823725, 38.455441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395901, 31.980644, 38.503323>,  <30.103954, 32.242176, 38.583126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395901, 31.980644, 38.503323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682673, 0.682029, 0.262286,
		-0.035422, -0.327630, 0.944142,
		0.729865, -0.653831, -0.199505,
		30.614861, 31.784494, 38.443470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562769, 32.191540, 39.061691>,  <30.103954, 32.242176, 38.583126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562769, 32.191540, 39.061691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791809, 32.040787, 38.770462>,  <30.929234, 31.950335, 38.595726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791809, 32.040787, 38.770462>,  <30.562769, 32.191540, 39.061691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791809, 32.040787, 38.770462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694779, 0.694515, 0.186902,
		0.435215, -0.612868, 0.659530,
		0.572600, -0.376885, -0.728071,
		30.963589, 31.927721, 38.552040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285246, 31.872761, 39.359661>,  <30.562769, 32.191540, 39.061691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285246, 31.872761, 39.359661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238453, 32.089127, 39.026501>,  <31.210377, 32.218948, 38.826603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238453, 32.089127, 39.026501>,  <31.285246, 31.872761, 39.359661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238453, 32.089127, 39.026501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591513, 0.711627, 0.379077,
		0.797764, -0.448327, -0.403207,
		-0.116982, 0.540916, -0.832901,
		31.203358, 32.251400, 38.776630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832623, 32.452045, 39.244583>,  <31.285246, 31.872761, 39.359661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832623, 32.452045, 39.244583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830690, 32.335743, 39.627296>,  <31.829531, 32.265961, 39.856926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830690, 32.335743, 39.627296>,  <31.832623, 32.452045, 39.244583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830690, 32.335743, 39.627296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300628, 0.912113, 0.278699,
		-0.953729, 0.288982, 0.083003,
		-0.004831, -0.290757, 0.956785,
		31.829241, 32.248516, 39.914333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463690, 32.900368, 39.553787>,  <31.832623, 32.452045, 39.244583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463690, 32.900368, 39.553787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714266, 32.764217, 39.834278>,  <31.864611, 32.682526, 40.002571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714266, 32.764217, 39.834278>,  <31.463690, 32.900368, 39.553787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714266, 32.764217, 39.834278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280037, 0.937833, 0.205056,
		-0.727429, 0.067914, 0.682813,
		0.626439, -0.340376, 0.701226,
		31.902197, 32.662106, 40.044647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249691, 33.274399, 40.140083>,  <31.463690, 32.900368, 39.553787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249691, 33.274399, 40.140083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632351, 33.160324, 40.163727>,  <31.861946, 33.091881, 40.177914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632351, 33.160324, 40.163727>,  <31.249691, 33.274399, 40.140083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632351, 33.160324, 40.163727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269169, 0.943242, 0.194533,
		-0.111228, -0.170191, 0.979114,
		0.956649, -0.285184, 0.059105,
		31.919346, 33.074768, 40.181458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426081, 33.533207, 40.754196>,  <31.249691, 33.274399, 40.140083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426081, 33.533207, 40.754196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729374, 33.502468, 40.495220>,  <31.911350, 33.484024, 40.339836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729374, 33.502468, 40.495220>,  <31.426081, 33.533207, 40.754196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729374, 33.502468, 40.495220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242708, 0.954927, 0.170900,
		0.605124, -0.286721, 0.742709,
		0.758234, -0.076845, -0.647438,
		31.956844, 33.479416, 40.300987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906168, 33.881714, 41.062782>,  <31.426081, 33.533207, 40.754196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906168, 33.881714, 41.062782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061573, 33.846378, 40.695904>,  <32.154816, 33.825176, 40.475777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061573, 33.846378, 40.695904>,  <31.906168, 33.881714, 41.062782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061573, 33.846378, 40.695904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401669, 0.912080, 0.082293,
		0.829290, -0.400382, 0.389837,
		0.388511, -0.088341, -0.917200,
		32.178127, 33.819878, 40.420742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650078, 34.008183, 41.093433>,  <31.906168, 33.881714, 41.062782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650078, 34.008183, 41.093433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528122, 34.086628, 40.720642>,  <32.454948, 34.133694, 40.496967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528122, 34.086628, 40.720642>,  <32.650078, 34.008183, 41.093433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528122, 34.086628, 40.720642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440864, 0.896474, 0.044416,
		0.844205, -0.397334, -0.359783,
		-0.304888, 0.196111, -0.931978,
		32.436657, 34.145462, 40.441048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229412, 34.401535, 40.768620>,  <32.650078, 34.008183, 41.093433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229412, 34.401535, 40.768620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907677, 34.478699, 40.543827>,  <32.714634, 34.524998, 40.408951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907677, 34.478699, 40.543827>,  <33.229412, 34.401535, 40.768620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907677, 34.478699, 40.543827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260681, 0.964510, -0.042017,
		0.533928, -0.180293, -0.826085,
		-0.804342, 0.192911, -0.561977,
		32.666374, 34.536572, 40.375233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475880, 34.856945, 40.258667>,  <33.229412, 34.401535, 40.768620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475880, 34.856945, 40.258667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080338, 34.911079, 40.283504>,  <32.843014, 34.943562, 40.298409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080338, 34.911079, 40.283504>,  <33.475880, 34.856945, 40.258667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080338, 34.911079, 40.283504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138159, 0.989446, 0.043688,
		-0.055526, 0.051780, -0.997114,
		-0.988852, 0.135334, 0.062094,
		32.783680, 34.951679, 40.302132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385761, 35.498314, 39.916630>,  <33.475880, 34.856945, 40.258667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385761, 35.498314, 39.916630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042427, 35.445789, 40.115028>,  <32.836426, 35.414272, 40.234070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042427, 35.445789, 40.115028>,  <33.385761, 35.498314, 39.916630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042427, 35.445789, 40.115028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000779, 0.966361, 0.257188,
		-0.513086, 0.221140, -0.829361,
		-0.858337, -0.131314, 0.495999,
		32.784927, 35.406395, 40.263828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968403, 36.019669, 39.800900>,  <33.385761, 35.498314, 39.916630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968403, 36.019669, 39.800900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858814, 35.877354, 40.158302>,  <32.793060, 35.791965, 40.372746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858814, 35.877354, 40.158302>,  <32.968403, 36.019669, 39.800900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858814, 35.877354, 40.158302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036130, 0.924591, 0.379245,
		-0.961059, 0.136184, -0.240457,
		-0.273971, -0.355789, 0.893506,
		32.776623, 35.770618, 40.426353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380463, 36.497124, 39.973324>,  <32.968403, 36.019669, 39.800900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380463, 36.497124, 39.973324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520306, 36.338047, 40.312645>,  <32.604210, 36.242599, 40.516235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520306, 36.338047, 40.312645>,  <32.380463, 36.497124, 39.973324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520306, 36.338047, 40.312645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028050, 0.909474, 0.414815,
		-0.936477, -0.121226, 0.329113,
		0.349606, -0.397696, 0.848301,
		32.625187, 36.218739, 40.567135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151890, 36.962746, 40.398232>,  <32.380463, 36.497124, 39.973324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151890, 36.962746, 40.398232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403812, 36.750706, 40.625328>,  <32.554966, 36.623482, 40.761585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403812, 36.750706, 40.625328>,  <32.151890, 36.962746, 40.398232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403812, 36.750706, 40.625328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084293, 0.773249, 0.628475,
		-0.772166, -0.347960, 0.531680,
		0.629805, -0.530104, 0.567745,
		32.592754, 36.591675, 40.795650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920479, 37.022751, 41.089897>,  <32.151890, 36.962746, 40.398232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920479, 37.022751, 41.089897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304489, 36.912041, 41.106609>,  <32.534897, 36.845615, 41.116638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304489, 36.912041, 41.106609>,  <31.920479, 37.022751, 41.089897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304489, 36.912041, 41.106609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159720, 0.664259, 0.730240,
		-0.229864, -0.694376, 0.681912,
		0.960027, -0.276771, 0.041784,
		32.592499, 36.829010, 41.119144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007133, 37.106232, 41.770889>,  <31.920479, 37.022751, 41.089897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007133, 37.106232, 41.770889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384304, 37.088047, 41.638931>,  <32.610607, 37.077137, 41.559757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384304, 37.088047, 41.638931>,  <32.007133, 37.106232, 41.770889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384304, 37.088047, 41.638931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309267, 0.486919, 0.816862,
		0.123495, -0.872263, 0.473187,
		0.942922, -0.045463, -0.329894,
		32.667179, 37.074409, 41.539963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373707, 36.830517, 42.243546>,  <32.007133, 37.106232, 41.770889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373707, 36.830517, 42.243546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649940, 37.023178, 42.027729>,  <32.815681, 37.138775, 41.898239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649940, 37.023178, 42.027729>,  <32.373707, 36.830517, 42.243546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649940, 37.023178, 42.027729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368355, 0.407762, 0.835490,
		0.622417, -0.775722, 0.104178,
		0.690588, 0.481649, -0.539539,
		32.857117, 37.167671, 41.865868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028637, 36.754513, 42.670959>,  <32.373707, 36.830517, 42.243546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028637, 36.754513, 42.670959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086250, 37.061272, 42.420799>,  <33.120819, 37.245327, 42.270702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086250, 37.061272, 42.420799>,  <33.028637, 36.754513, 42.670959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086250, 37.061272, 42.420799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347722, 0.552462, 0.757545,
		0.926468, -0.326576, -0.187095,
		0.144034, 0.766899, -0.625396,
		33.129459, 37.291340, 42.233181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762508, 36.967545, 42.653461>,  <33.028637, 36.754513, 42.670959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762508, 36.967545, 42.653461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522583, 37.265980, 42.537823>,  <33.378628, 37.445042, 42.468437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522583, 37.265980, 42.537823>,  <33.762508, 36.967545, 42.653461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522583, 37.265980, 42.537823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245086, 0.515260, 0.821243,
		0.761679, 0.421740, -0.491915,
		-0.599815, 0.746085, -0.289100,
		33.342640, 37.489807, 42.451092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149094, 37.565468, 42.837250>,  <33.762508, 36.967545, 42.653461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149094, 37.565468, 42.837250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782604, 37.721718, 42.801598>,  <33.562710, 37.815468, 42.780205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782604, 37.721718, 42.801598>,  <34.149094, 37.565468, 42.837250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782604, 37.721718, 42.801598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119610, 0.478977, 0.869641,
		0.382395, 0.786126, -0.485573,
		-0.916225, 0.390625, -0.089130,
		33.507736, 37.838905, 42.774860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250793, 38.335712, 42.908112>,  <34.149094, 37.565468, 42.837250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250793, 38.335712, 42.908112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871399, 38.227238, 42.973640>,  <33.643764, 38.162155, 43.012959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871399, 38.227238, 42.973640>,  <34.250793, 38.335712, 42.908112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871399, 38.227238, 42.973640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073114, 0.690474, 0.719653,
		-0.308275, 0.670601, -0.674731,
		-0.948483, -0.271183, 0.163826,
		33.586853, 38.145882, 43.022789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027706, 38.925781, 43.155251>,  <34.250793, 38.335712, 42.908112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027706, 38.925781, 43.155251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728828, 38.677032, 43.249039>,  <33.549500, 38.527782, 43.305313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728828, 38.677032, 43.249039>,  <34.027706, 38.925781, 43.155251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728828, 38.677032, 43.249039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171425, 0.521196, 0.836043,
		-0.642114, 0.584495, -0.496040,
		-0.747197, -0.621869, 0.234470,
		33.504669, 38.490471, 43.319378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526596, 39.308079, 43.341999>,  <34.027706, 38.925781, 43.155251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526596, 39.308079, 43.341999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421207, 38.962311, 43.513283>,  <33.357975, 38.754852, 43.616055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421207, 38.962311, 43.513283>,  <33.526596, 39.308079, 43.341999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421207, 38.962311, 43.513283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246866, 0.489531, 0.836311,
		-0.932546, 0.114631, -0.342372,
		-0.263469, -0.864418, 0.428212,
		33.342167, 38.702984, 43.641747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054146, 39.526997, 43.747066>,  <33.526596, 39.308079, 43.341999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054146, 39.526997, 43.747066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135746, 39.168465, 43.904533>,  <33.184708, 38.953346, 43.999012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135746, 39.168465, 43.904533>,  <33.054146, 39.526997, 43.747066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135746, 39.168465, 43.904533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133027, 0.423773, 0.895947,
		-0.969891, -0.130404, 0.205686,
		0.203999, -0.896332, 0.393666,
		33.196945, 38.899567, 44.022633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686287, 39.465111, 44.284096>,  <33.054146, 39.526997, 43.747066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686287, 39.465111, 44.284096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970619, 39.194035, 44.359425>,  <33.141216, 39.031391, 44.404621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970619, 39.194035, 44.359425>,  <32.686287, 39.465111, 44.284096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970619, 39.194035, 44.359425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041732, 0.307910, 0.950500,
		-0.702128, -0.667781, 0.247152,
		0.710827, -0.677687, 0.188324,
		33.183868, 38.990730, 44.415920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382843, 39.180008, 44.952396>,  <32.686287, 39.465111, 44.284096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382843, 39.180008, 44.952396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762466, 39.074554, 44.883366>,  <32.990242, 39.011284, 44.841946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762466, 39.074554, 44.883366>,  <32.382843, 39.180008, 44.952396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762466, 39.074554, 44.883366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237361, 0.237938, 0.941831,
		-0.207233, -0.934818, 0.288393,
		0.949060, -0.263631, -0.172580,
		33.047184, 38.995464, 44.831593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551674, 38.695747, 45.404449>,  <32.382843, 39.180008, 44.952396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551674, 38.695747, 45.404449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885780, 38.885258, 45.292831>,  <33.086243, 38.998966, 45.225861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885780, 38.885258, 45.292831>,  <32.551674, 38.695747, 45.404449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885780, 38.885258, 45.292831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127187, 0.327247, 0.936340,
		0.534933, -0.817584, 0.213080,
		0.835266, 0.473779, -0.279041,
		33.136360, 39.027390, 45.209118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084003, 38.655991, 46.015133>,  <32.551674, 38.695747, 45.404449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084003, 38.655991, 46.015133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199970, 38.951283, 45.771507>,  <33.269550, 39.128456, 45.625332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199970, 38.951283, 45.771507>,  <33.084003, 38.655991, 46.015133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199970, 38.951283, 45.771507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199978, 0.575624, 0.792885,
		0.935925, -0.351672, 0.019254,
		0.289919, 0.738230, -0.609067,
		33.286945, 39.172752, 45.588787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710869, 38.890484, 46.372143>,  <33.084003, 38.655991, 46.015133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710869, 38.890484, 46.372143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623886, 39.193665, 46.126141>,  <33.571697, 39.375572, 45.978539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623886, 39.193665, 46.126141>,  <33.710869, 38.890484, 46.372143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623886, 39.193665, 46.126141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258683, 0.652303, 0.712449,
		0.941167, -0.004161, -0.337918,
		-0.217460, 0.757947, -0.615002,
		33.558647, 39.421047, 45.941639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302902, 39.330685, 46.295654>,  <33.710869, 38.890484, 46.372143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302902, 39.330685, 46.295654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981033, 39.547909, 46.199669>,  <33.787910, 39.678242, 46.142078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981033, 39.547909, 46.199669>,  <34.302902, 39.330685, 46.295654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981033, 39.547909, 46.199669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222999, 0.651029, 0.725557,
		0.550243, 0.530327, -0.644969,
		-0.804676, 0.543060, -0.239962,
		33.739632, 39.710827, 46.127682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548889, 40.078335, 46.440945>,  <34.302902, 39.330685, 46.295654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548889, 40.078335, 46.440945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148911, 40.082497, 46.439953>,  <33.908924, 40.084995, 46.439358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148911, 40.082497, 46.439953>,  <34.548889, 40.078335, 46.440945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148911, 40.082497, 46.439953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006276, 0.758680, 0.651433,
		0.008661, 0.651380, -0.758702,
		-0.999943, 0.010403, -0.002483,
		33.848927, 40.085617, 46.439209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422798, 40.768780, 46.394897>,  <34.548889, 40.078335, 46.440945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422798, 40.768780, 46.394897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096081, 40.588482, 46.538937>,  <33.900051, 40.480301, 46.625359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096081, 40.588482, 46.538937>,  <34.422798, 40.768780, 46.394897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096081, 40.588482, 46.538937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072977, 0.699872, 0.710531,
		-0.572293, 0.554080, -0.604547,
		-0.816796, -0.450749, 0.360097,
		33.851044, 40.453259, 46.646965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906406, 41.248104, 46.409771>,  <34.422798, 40.768780, 46.394897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906406, 41.248104, 46.409771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765572, 40.963390, 46.652882>,  <33.681072, 40.792561, 46.798748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765572, 40.963390, 46.652882>,  <33.906406, 41.248104, 46.409771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765572, 40.963390, 46.652882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331475, 0.702097, 0.630226,
		-0.875307, 0.020428, -0.483136,
		-0.352083, -0.711788, 0.607779,
		33.659946, 40.749855, 46.835217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303829, 41.560062, 46.714298>,  <33.906406, 41.248104, 46.409771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303829, 41.560062, 46.714298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411751, 41.269192, 46.966782>,  <33.476505, 41.094669, 47.118271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411751, 41.269192, 46.966782>,  <33.303829, 41.560062, 46.714298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411751, 41.269192, 46.966782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125920, 0.623247, 0.771821,
		-0.954647, -0.287722, 0.076588,
		0.269803, -0.727172, 0.631210,
		33.492691, 41.051041, 47.156143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681881, 41.499847, 47.177502>,  <33.303829, 41.560062, 46.714298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681881, 41.499847, 47.177502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987827, 41.343346, 47.382210>,  <33.171394, 41.249447, 47.505035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987827, 41.343346, 47.382210>,  <32.681881, 41.499847, 47.177502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987827, 41.343346, 47.382210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144422, 0.670065, 0.728117,
		-0.627794, -0.630821, 0.456004,
		0.764864, -0.391251, 0.511767,
		33.217285, 41.225971, 47.535740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481728, 41.497116, 47.831470>,  <32.681881, 41.499847, 47.177502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481728, 41.497116, 47.831470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862598, 41.439686, 47.939362>,  <33.091122, 41.405228, 48.004097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862598, 41.439686, 47.939362>,  <32.481728, 41.497116, 47.831470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862598, 41.439686, 47.939362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174394, 0.469485, 0.865546,
		-0.250906, -0.871188, 0.421992,
		0.952173, -0.143578, 0.269727,
		33.148251, 41.396614, 48.020279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548878, 41.228176, 48.581478>,  <32.481728, 41.497116, 47.831470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548878, 41.228176, 48.581478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909973, 41.387337, 48.516075>,  <33.126633, 41.482834, 48.476833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909973, 41.387337, 48.516075>,  <32.548878, 41.228176, 48.581478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909973, 41.387337, 48.516075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107214, 0.576196, 0.810249,
		0.416606, -0.713916, 0.562817,
		0.902743, 0.397897, -0.163505,
		33.180798, 41.506706, 48.467022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855610, 41.272869, 49.158257>,  <32.548878, 41.228176, 48.581478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855610, 41.272869, 49.158257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046833, 41.554340, 48.948002>,  <33.161568, 41.723225, 48.821850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046833, 41.554340, 48.948002>,  <32.855610, 41.272869, 49.158257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046833, 41.554340, 48.948002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010993, 0.603203, 0.797512,
		0.878259, -0.375479, 0.296102,
		0.478059, 0.703677, -0.525641,
		33.190250, 41.765442, 48.790310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340889, 41.576130, 49.637211>,  <32.855610, 41.272869, 49.158257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340889, 41.576130, 49.637211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292976, 41.828304, 49.330433>,  <33.264229, 41.979607, 49.146366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292976, 41.828304, 49.330433>,  <33.340889, 41.576130, 49.637211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292976, 41.828304, 49.330433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040611, 0.768749, 0.638260,
		0.991969, 0.107600, -0.066482,
		-0.119785, 0.630434, -0.766945,
		33.257042, 42.017433, 49.100349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923992, 41.985752, 49.690006>,  <33.340889, 41.576130, 49.637211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923992, 41.985752, 49.690006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624432, 42.175915, 49.505337>,  <33.444695, 42.290012, 49.394535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624432, 42.175915, 49.505337>,  <33.923992, 41.985752, 49.690006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624432, 42.175915, 49.505337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053988, 0.738126, 0.672500,
		0.660484, 0.478708, -0.578446,
		-0.748897, 0.475405, -0.461675,
		33.399761, 42.318535, 49.366833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131763, 42.807293, 49.744602>,  <33.923992, 41.985752, 49.690006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131763, 42.807293, 49.744602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740524, 42.750889, 49.683357>,  <33.505779, 42.717049, 49.646610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740524, 42.750889, 49.683357>,  <34.131763, 42.807293, 49.744602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740524, 42.750889, 49.683357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207889, 0.698407, 0.684844,
		0.010364, 0.701674, -0.712424,
		-0.978098, -0.141007, -0.153108,
		33.447094, 42.708588, 49.637424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833603, 43.512436, 49.787888>,  <34.131763, 42.807293, 49.744602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833603, 43.512436, 49.787888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518841, 43.268490, 49.825504>,  <33.329983, 43.122124, 49.848076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518841, 43.268490, 49.825504>,  <33.833603, 43.512436, 49.787888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518841, 43.268490, 49.825504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368348, 0.586518, 0.721330,
		-0.495070, 0.532980, -0.686177,
		-0.786909, -0.609861, 0.094045,
		33.282768, 43.085533, 49.853718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214260, 43.955883, 49.749184>,  <33.833603, 43.512436, 49.787888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214260, 43.955883, 49.749184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092621, 43.613670, 49.916798>,  <33.019638, 43.408344, 50.017368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092621, 43.613670, 49.916798>,  <33.214260, 43.955883, 49.749184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092621, 43.613670, 49.916798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436882, 0.516132, 0.736710,
		-0.846556, 0.040963, -0.530722,
		-0.304100, -0.855529, 0.419038,
		33.001392, 43.357010, 50.042511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511566, 44.056416, 49.934692>,  <33.214260, 43.955883, 49.749184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511566, 44.056416, 49.934692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666275, 43.762131, 50.157089>,  <32.759102, 43.585560, 50.290527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666275, 43.762131, 50.157089>,  <32.511566, 44.056416, 49.934692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666275, 43.762131, 50.157089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359061, 0.435188, 0.825643,
		-0.849400, -0.518974, -0.095846,
		0.386776, -0.735716, 0.555992,
		32.782307, 43.541416, 50.323887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027584, 43.983906, 50.416862>,  <32.511566, 44.056416, 49.934692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027584, 43.983906, 50.416862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313549, 43.780861, 50.609203>,  <32.485130, 43.659035, 50.724609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313549, 43.780861, 50.609203>,  <32.027584, 43.983906, 50.416862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313549, 43.780861, 50.609203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488769, 0.128971, 0.862827,
		-0.499999, -0.851878, -0.155902,
		0.714917, -0.507613, 0.480857,
		32.528023, 43.628578, 50.753460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639078, 43.570457, 50.867973>,  <32.027584, 43.983906, 50.416862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639078, 43.570457, 50.867973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013397, 43.578846, 51.008739>,  <32.237988, 43.583878, 51.093201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013397, 43.578846, 51.008739>,  <31.639078, 43.570457, 50.867973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013397, 43.578846, 51.008739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351440, 0.134265, 0.926532,
		-0.027824, -0.990724, 0.133013,
		0.935797, 0.020967, 0.351916,
		32.294136, 43.585136, 51.114315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551456, 43.170635, 51.542774>,  <31.639078, 43.570457, 50.867973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551456, 43.170635, 51.542774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862970, 43.418537, 51.503986>,  <32.049877, 43.567276, 51.480713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862970, 43.418537, 51.503986>,  <31.551456, 43.170635, 51.542774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862970, 43.418537, 51.503986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337918, 0.544719, 0.767524,
		0.528487, -0.564974, 0.633644,
		0.778789, 0.619746, -0.096962,
		32.096607, 43.604462, 51.474895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865717, 43.175484, 52.189430>,  <31.551456, 43.170635, 51.542774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865717, 43.175484, 52.189430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945662, 43.526367, 52.014812>,  <31.993629, 43.736897, 51.910042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945662, 43.526367, 52.014812>,  <31.865717, 43.175484, 52.189430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945662, 43.526367, 52.014812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319305, 0.479519, 0.817378,
		0.926337, -0.023974, 0.375934,
		0.199863, 0.877204, -0.436541,
		32.005619, 43.789528, 51.883850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540760, 43.560825, 52.320255>,  <31.865717, 43.175484, 52.189430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540760, 43.560825, 52.320255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253880, 43.820827, 52.219765>,  <32.081749, 43.976830, 52.159470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253880, 43.820827, 52.219765>,  <32.540760, 43.560825, 52.320255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253880, 43.820827, 52.219765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067064, 0.294454, 0.953310,
		0.693629, 0.700565, -0.167591,
		-0.717203, 0.650004, -0.251225,
		32.038719, 44.015827, 52.144398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695789, 44.212189, 52.444088>,  <32.540760, 43.560825, 52.320255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695789, 44.212189, 52.444088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295921, 44.221050, 52.438957>,  <32.056000, 44.226368, 52.435879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295921, 44.221050, 52.438957>,  <32.695789, 44.212189, 52.444088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295921, 44.221050, 52.438957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004786, 0.330469, 0.943805,
		0.025146, 0.943557, -0.330255,
		-0.999672, 0.022152, -0.012826,
		31.996019, 44.227695, 52.435108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481453, 44.844967, 52.780445>,  <32.695789, 44.212189, 52.444088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481453, 44.844967, 52.780445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221962, 44.549576, 52.853977>,  <32.066265, 44.372341, 52.898098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221962, 44.549576, 52.853977>,  <32.481453, 44.844967, 52.780445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221962, 44.549576, 52.853977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145910, 0.357775, 0.922338,
		-0.746899, 0.571527, -0.339852,
		-0.648732, -0.738480, 0.183830,
		32.027344, 44.328033, 52.909126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868439, 44.876911, 52.236469>,  <32.481453, 44.844967, 52.780445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868439, 44.876911, 52.236469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227062, 45.012726, 52.350239>,  <33.442234, 45.094215, 52.418499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227062, 45.012726, 52.350239>,  <32.868439, 44.876911, 52.236469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227062, 45.012726, 52.350239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381795, -0.917957, -0.107645,
		0.224539, 0.205102, -0.952636,
		0.896557, 0.339541, 0.284424,
		33.496029, 45.114590, 52.435566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338318, 44.574329, 51.832760>,  <32.868439, 44.876911, 52.236469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338318, 44.574329, 51.832760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526253, 44.680393, 52.169556>,  <33.639011, 44.744030, 52.371632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526253, 44.680393, 52.169556>,  <33.338318, 44.574329, 51.832760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526253, 44.680393, 52.169556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355714, -0.929822, 0.094329,
		0.807913, 0.255189, -0.531183,
		0.469834, 0.265160, 0.841989,
		33.667202, 44.759941, 52.422153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940472, 44.255322, 51.882504>,  <33.338318, 44.574329, 51.832760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940472, 44.255322, 51.882504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877251, 44.299347, 52.275013>,  <33.839317, 44.325764, 52.510521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877251, 44.299347, 52.275013>,  <33.940472, 44.255322, 51.882504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877251, 44.299347, 52.275013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398222, -0.902264, 0.165344,
		0.903569, 0.416900, 0.098778,
		-0.158056, 0.110064, 0.981277,
		33.829834, 44.332367, 52.569397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477459, 43.974407, 52.159428>,  <33.940472, 44.255322, 51.882504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477459, 43.974407, 52.159428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167641, 43.935661, 52.409447>,  <33.981750, 43.912415, 52.559460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167641, 43.935661, 52.409447>,  <34.477459, 43.974407, 52.159428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167641, 43.935661, 52.409447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203109, -0.973959, 0.100747,
		0.599016, 0.204988, 0.774054,
		-0.774549, -0.096868, 0.625052,
		33.935276, 43.906601, 52.596962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826729, 43.676559, 52.710575>,  <34.477459, 43.974407, 52.159428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826729, 43.676559, 52.710575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441814, 43.570007, 52.732628>,  <34.210865, 43.506077, 52.745861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441814, 43.570007, 52.732628>,  <34.826729, 43.676559, 52.710575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441814, 43.570007, 52.732628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271332, -0.954403, 0.124472,
		0.019462, 0.134738, 0.990690,
		-0.962289, -0.266383, 0.055134,
		34.153130, 43.490093, 52.749168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681267, 43.066776, 53.216843>,  <34.826729, 43.676559, 52.710575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681267, 43.066776, 53.216843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462193, 43.117073, 52.885971>,  <34.330750, 43.147251, 52.687447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462193, 43.117073, 52.885971>,  <34.681267, 43.066776, 53.216843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462193, 43.117073, 52.885971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077008, -0.976871, -0.199484,
		-0.833133, -0.172954, 0.525334,
		-0.547685, 0.125742, -0.827182,
		34.297886, 43.154797, 52.637817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084103, 42.561890, 53.061840>,  <34.681267, 43.066776, 53.216843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084103, 42.561890, 53.061840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217625, 42.681759, 52.704346>,  <34.297737, 42.753681, 52.489849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217625, 42.681759, 52.704346>,  <34.084103, 42.561890, 53.061840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217625, 42.681759, 52.704346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097657, -0.932025, -0.348988,
		-0.937570, 0.203774, -0.281850,
		0.333806, 0.299676, -0.893738,
		34.317768, 42.771660, 52.436226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667866, 42.158005, 52.629143>,  <34.084103, 42.561890, 53.061840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667866, 42.158005, 52.629143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985672, 42.259514, 52.408470>,  <34.176353, 42.320419, 52.276066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985672, 42.259514, 52.408470>,  <33.667866, 42.158005, 52.629143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985672, 42.259514, 52.408470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074875, -0.860619, -0.503715,
		-0.602612, 0.441516, -0.664772,
		0.794514, 0.253770, -0.551678,
		34.224026, 42.335644, 52.242966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462452, 41.867184, 51.924961>,  <33.667866, 42.158005, 52.629143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462452, 41.867184, 51.924961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857780, 41.926651, 51.938335>,  <34.094978, 41.962330, 51.946358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857780, 41.926651, 51.938335>,  <33.462452, 41.867184, 51.924961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857780, 41.926651, 51.938335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147592, -0.879366, -0.452695,
		-0.037902, 0.452343, -0.891038,
		0.988322, 0.148668, 0.033432,
		34.154278, 41.971252, 51.948364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637413, 41.902340, 51.191051>,  <33.462452, 41.867184, 51.924961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637413, 41.902340, 51.191051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969437, 41.802193, 51.390377>,  <34.168652, 41.742104, 51.509972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969437, 41.802193, 51.390377>,  <33.637413, 41.902340, 51.191051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969437, 41.802193, 51.390377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076310, -0.834157, -0.546222,
		0.552430, 0.491423, -0.673294,
		0.830059, -0.250371, 0.498314,
		34.218456, 41.727081, 51.539871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250187, 41.740875, 50.753780>,  <33.637413, 41.902340, 51.191051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250187, 41.740875, 50.753780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290703, 41.535713, 51.094761>,  <34.315010, 41.412617, 51.299347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290703, 41.535713, 51.094761>,  <34.250187, 41.740875, 50.753780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290703, 41.535713, 51.094761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221717, -0.823666, -0.521934,
		0.969836, 0.241868, 0.030293,
		0.101288, -0.512907, 0.852448,
		34.321091, 41.381840, 51.350494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679379, 41.181297, 50.571476>,  <34.250187, 41.740875, 50.753780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679379, 41.181297, 50.571476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578552, 41.031830, 50.928539>,  <34.518055, 40.942150, 51.142776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578552, 41.031830, 50.928539>,  <34.679379, 41.181297, 50.571476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578552, 41.031830, 50.928539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200771, -0.922565, -0.329491,
		0.946653, 0.096165, 0.307572,
		-0.252070, -0.373665, 0.892656,
		34.502930, 40.919731, 51.196335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296280, 40.884922, 50.795307>,  <34.679379, 41.181297, 50.571476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296280, 40.884922, 50.795307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984585, 40.721226, 50.985180>,  <34.797569, 40.623009, 51.099102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984585, 40.721226, 50.985180>,  <35.296280, 40.884922, 50.795307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984585, 40.721226, 50.985180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189346, -0.875715, -0.444152,
		0.597448, -0.256219, 0.759873,
		-0.779233, -0.409237, 0.474680,
		34.750816, 40.598454, 51.127583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657654, 40.229115, 51.041809>,  <35.296280, 40.884922, 50.795307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657654, 40.229115, 51.041809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265488, 40.182674, 51.105434>,  <35.030186, 40.154808, 51.143608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265488, 40.182674, 51.105434>,  <35.657654, 40.229115, 51.041809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265488, 40.182674, 51.105434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030869, -0.888334, -0.458160,
		0.194491, -0.444278, 0.874523,
		-0.980419, -0.116104, 0.159059,
		34.971363, 40.147842, 51.153152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573269, 39.576473, 51.351730>,  <35.657654, 40.229115, 51.041809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573269, 39.576473, 51.351730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206207, 39.664825, 51.219597>,  <34.985970, 39.717834, 51.140316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206207, 39.664825, 51.219597>,  <35.573269, 39.576473, 51.351730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206207, 39.664825, 51.219597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038092, -0.876356, -0.480155,
		-0.395545, -0.428034, 0.812608,
		-0.917656, 0.220877, -0.330334,
		34.930912, 39.731087, 51.120495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199734, 38.882015, 51.353966>,  <35.573269, 39.576473, 51.351730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199734, 38.882015, 51.353966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012039, 39.124836, 51.097435>,  <34.899422, 39.270531, 50.943516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012039, 39.124836, 51.097435>,  <35.199734, 38.882015, 51.353966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012039, 39.124836, 51.097435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011502, -0.730386, -0.682938,
		-0.882998, -0.313082, 0.349706,
		-0.469235, 0.607055, -0.641328,
		34.871269, 39.306953, 50.905037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653431, 38.515026, 51.069988>,  <35.199734, 38.882015, 51.353966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653431, 38.515026, 51.069988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751934, 38.801044, 50.808285>,  <34.811035, 38.972656, 50.651260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751934, 38.801044, 50.808285>,  <34.653431, 38.515026, 51.069988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751934, 38.801044, 50.808285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051163, -0.683702, -0.727966,
		-0.967852, 0.145796, -0.204954,
		0.246262, 0.715049, -0.654262,
		34.825813, 39.015560, 50.612007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371117, 38.321972, 50.422321>,  <34.653431, 38.515026, 51.069988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371117, 38.321972, 50.422321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580456, 38.624294, 50.264912>,  <34.706059, 38.805687, 50.170464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580456, 38.624294, 50.264912>,  <34.371117, 38.321972, 50.422321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580456, 38.624294, 50.264912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037962, -0.482043, -0.875325,
		-0.851274, 0.443159, -0.280967,
		0.523347, 0.755807, -0.393527,
		34.737461, 38.851036, 50.146854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075462, 38.607315, 49.820782>,  <34.371117, 38.321972, 50.422321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075462, 38.607315, 49.820782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469269, 38.672745, 49.795567>,  <34.705551, 38.712002, 49.780437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469269, 38.672745, 49.795567>,  <34.075462, 38.607315, 49.820782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469269, 38.672745, 49.795567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001802, -0.350151, -0.936691,
		-0.175289, 0.922301, -0.344434,
		0.984515, 0.163571, -0.063039,
		34.764622, 38.721817, 49.776653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076202, 38.846020, 49.146782>,  <34.075462, 38.607315, 49.820782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076202, 38.846020, 49.146782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451866, 38.735909, 49.228958>,  <34.677265, 38.669842, 49.278263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451866, 38.735909, 49.228958>,  <34.076202, 38.846020, 49.146782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451866, 38.735909, 49.228958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072931, -0.424662, -0.902410,
		0.335654, 0.862488, -0.378749,
		0.939158, -0.275275, 0.205441,
		34.733612, 38.653328, 49.290592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495522, 38.983269, 48.551590>,  <34.076202, 38.846020, 49.146782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495522, 38.983269, 48.551590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713581, 38.712433, 48.749321>,  <34.844418, 38.549931, 48.867958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713581, 38.712433, 48.749321>,  <34.495522, 38.983269, 48.551590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713581, 38.712433, 48.749321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003173, -0.591312, -0.806437,
		0.838332, 0.438061, -0.324503,
		0.545151, -0.677091, 0.494326,
		34.877125, 38.509304, 48.897617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012680, 38.757347, 48.032818>,  <34.495522, 38.983269, 48.551590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012680, 38.757347, 48.032818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036476, 38.474140, 48.314289>,  <35.050755, 38.304214, 48.483173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036476, 38.474140, 48.314289>,  <35.012680, 38.757347, 48.032818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036476, 38.474140, 48.314289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030262, -0.703328, -0.710221,
		0.997770, 0.063549, -0.020418,
		0.059494, -0.708019, 0.703683,
		35.054325, 38.261734, 48.525394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636734, 38.333923, 47.959000>,  <35.012680, 38.757347, 48.032818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636734, 38.333923, 47.959000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391487, 38.089699, 48.159523>,  <35.244339, 37.943165, 48.279839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391487, 38.089699, 48.159523>,  <35.636734, 38.333923, 47.959000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391487, 38.089699, 48.159523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180976, -0.726252, -0.663179,
		0.768987, -0.315878, 0.555770,
		-0.613113, -0.610557, 0.501312,
		35.207554, 37.906532, 48.309917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946758, 37.736744, 47.892418>,  <35.636734, 38.333923, 47.959000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946758, 37.736744, 47.892418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581676, 37.633682, 48.019276>,  <35.362625, 37.571846, 48.095390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581676, 37.633682, 48.019276>,  <35.946758, 37.736744, 47.892418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581676, 37.633682, 48.019276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055783, -0.847450, -0.527937,
		0.404791, -0.464159, 0.787845,
		-0.912706, -0.257652, 0.317148,
		35.307865, 37.556385, 48.114422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967239, 37.047604, 47.949581>,  <35.946758, 37.736744, 47.892418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967239, 37.047604, 47.949581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577831, 37.134205, 47.920254>,  <35.344185, 37.186165, 47.902657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577831, 37.134205, 47.920254>,  <35.967239, 37.047604, 47.949581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577831, 37.134205, 47.920254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127911, -0.781809, -0.610257,
		-0.189444, -0.584722, 0.788804,
		-0.973525, 0.216506, -0.073317,
		35.285774, 37.199158, 47.898258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722710, 36.391083, 47.875710>,  <35.967239, 37.047604, 47.949581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722710, 36.391083, 47.875710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436607, 36.635609, 47.740238>,  <35.264946, 36.782326, 47.658955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436607, 36.635609, 47.740238>,  <35.722710, 36.391083, 47.875710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436607, 36.635609, 47.740238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182032, -0.630848, -0.754251,
		-0.674738, -0.477833, 0.562498,
		-0.715257, 0.611315, -0.338676,
		35.222031, 36.819004, 47.638634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182819, 35.983330, 47.755108>,  <35.722710, 36.391083, 47.875710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182819, 35.983330, 47.755108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075130, 36.297581, 47.532288>,  <35.010517, 36.486134, 47.398594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075130, 36.297581, 47.532288>,  <35.182819, 35.983330, 47.755108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075130, 36.297581, 47.532288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259966, -0.616215, -0.743436,
		-0.927329, -0.055334, 0.370134,
		-0.269219, 0.785632, -0.557049,
		34.994366, 36.533272, 47.365173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505032, 35.879803, 47.563389>,  <35.182819, 35.983330, 47.755108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505032, 35.879803, 47.563389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684006, 36.130493, 47.308197>,  <34.791389, 36.280907, 47.155083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684006, 36.130493, 47.308197>,  <34.505032, 35.879803, 47.563389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684006, 36.130493, 47.308197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243041, -0.601306, -0.761158,
		-0.860658, 0.495623, -0.116725,
		0.447435, 0.626728, -0.637976,
		34.818237, 36.318512, 47.116802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995544, 35.979874, 47.071033>,  <34.505032, 35.879803, 47.563389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995544, 35.979874, 47.071033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330765, 36.092556, 46.884140>,  <34.531898, 36.160168, 46.772003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330765, 36.092556, 46.884140>,  <33.995544, 35.979874, 47.071033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330765, 36.092556, 46.884140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290644, -0.494235, -0.819303,
		-0.461727, 0.822419, -0.332319,
		0.838054, 0.281708, -0.467232,
		34.582180, 36.177067, 46.743969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817463, 36.204224, 46.383339>,  <33.995544, 35.979874, 47.071033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817463, 36.204224, 46.383339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212440, 36.141190, 46.387844>,  <34.449425, 36.103371, 46.390545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212440, 36.141190, 46.387844>,  <33.817463, 36.204224, 46.383339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212440, 36.141190, 46.387844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081957, -0.571870, -0.816240,
		0.135068, 0.805066, -0.577603,
		0.987441, -0.157586, 0.011261,
		34.508675, 36.093914, 46.391224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962517, 36.427555, 45.725319>,  <33.817463, 36.204224, 46.383339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962517, 36.427555, 45.725319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271091, 36.196331, 45.831699>,  <34.456238, 36.057598, 45.895527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271091, 36.196331, 45.831699>,  <33.962517, 36.427555, 45.725319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271091, 36.196331, 45.831699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058550, -0.480681, -0.874939,
		0.633604, 0.659390, -0.404662,
		0.771439, -0.578058, 0.265954,
		34.502522, 36.022915, 45.911484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257908, 36.301411, 45.159008>,  <33.962517, 36.427555, 45.725319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257908, 36.301411, 45.159008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400208, 36.019413, 45.404423>,  <34.485588, 35.850216, 45.551670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400208, 36.019413, 45.404423>,  <34.257908, 36.301411, 45.159008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400208, 36.019413, 45.404423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192607, -0.697694, -0.690018,
		0.914520, 0.127300, -0.383989,
		0.355746, -0.704995, 0.613537,
		34.506931, 35.807915, 45.588482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457630, 35.886917, 44.667927>,  <34.257908, 36.301411, 45.159008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457630, 35.886917, 44.667927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475857, 35.662308, 44.998409>,  <34.486794, 35.527542, 45.196697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475857, 35.662308, 44.998409>,  <34.457630, 35.886917, 44.667927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475857, 35.662308, 44.998409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005025, -0.827181, -0.561913,
		0.998949, 0.021453, -0.040515,
		0.045568, -0.561526, 0.826203,
		34.489529, 35.493851, 45.246269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940598, 35.403915, 44.575516>,  <34.457630, 35.886917, 44.667927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940598, 35.403915, 44.575516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681141, 35.241936, 44.833286>,  <34.525467, 35.144749, 44.987949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681141, 35.241936, 44.833286>,  <34.940598, 35.403915, 44.575516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681141, 35.241936, 44.833286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073077, -0.809658, -0.582335,
		0.757577, -0.424820, 0.495586,
		-0.648643, -0.404948, 0.644422,
		34.486549, 35.120453, 45.026611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169102, 34.735210, 44.711948>,  <34.940598, 35.403915, 44.575516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169102, 34.735210, 44.711948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785404, 34.723858, 44.824406>,  <34.555183, 34.717049, 44.891880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785404, 34.723858, 44.824406>,  <35.169102, 34.735210, 44.711948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785404, 34.723858, 44.824406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124916, -0.849861, -0.511988,
		0.253463, -0.526242, 0.811681,
		-0.959245, -0.028378, 0.281145,
		34.497631, 34.715343, 44.908749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963638, 33.975616, 44.800167>,  <35.169102, 34.735210, 44.711948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963638, 33.975616, 44.800167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609192, 34.157337, 44.763489>,  <34.396523, 34.266369, 44.741482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609192, 34.157337, 44.763489>,  <34.963638, 33.975616, 44.800167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609192, 34.157337, 44.763489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327260, -0.753435, -0.570295,
		-0.328174, -0.475339, 0.816306,
		-0.886117, 0.454300, -0.091698,
		34.343357, 34.293629, 44.735981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466354, 33.474995, 44.785198>,  <34.963638, 33.975616, 44.800167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466354, 33.474995, 44.785198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299980, 33.787395, 44.598850>,  <34.200157, 33.974834, 44.487041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299980, 33.787395, 44.598850>,  <34.466354, 33.474995, 44.785198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299980, 33.787395, 44.598850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450585, -0.621975, -0.640407,
		-0.789919, -0.056451, 0.610607,
		-0.415933, 0.781000, -0.465874,
		34.175201, 34.021694, 44.459087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875862, 33.286140, 44.573235>,  <34.466354, 33.474995, 44.785198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875862, 33.286140, 44.573235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891445, 33.593384, 44.317581>,  <33.900795, 33.777729, 44.164188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891445, 33.593384, 44.317581>,  <33.875862, 33.286140, 44.573235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891445, 33.593384, 44.317581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423258, -0.566719, -0.706881,
		-0.905171, 0.298058, 0.303029,
		0.038960, 0.768108, -0.639134,
		33.903133, 33.823814, 44.125839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324642, 33.177170, 44.062916>,  <33.875862, 33.286140, 44.573235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324642, 33.177170, 44.062916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548370, 33.449291, 43.873455>,  <33.682610, 33.612564, 43.759777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548370, 33.449291, 43.873455>,  <33.324642, 33.177170, 44.062916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548370, 33.449291, 43.873455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207873, -0.438025, -0.874599,
		-0.802462, 0.587644, -0.103582,
		0.559324, 0.680301, -0.473654,
		33.716167, 33.653381, 43.731358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871342, 33.448586, 43.587608>,  <33.324642, 33.177170, 44.062916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871342, 33.448586, 43.587608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250401, 33.501320, 43.471272>,  <33.477837, 33.532963, 43.401470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250401, 33.501320, 43.471272>,  <32.871342, 33.448586, 43.587608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250401, 33.501320, 43.471272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213708, -0.414934, -0.884397,
		-0.237282, 0.900249, -0.365034,
		0.947642, 0.131841, -0.290847,
		33.534695, 33.540871, 43.384018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916092, 33.806000, 42.963409>,  <32.871342, 33.448586, 43.587608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916092, 33.806000, 42.963409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256813, 33.596836, 42.976048>,  <33.461246, 33.471336, 42.983631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256813, 33.596836, 42.976048>,  <32.916092, 33.806000, 42.963409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256813, 33.596836, 42.976048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129029, -0.267881, -0.954773,
		0.507727, 0.809199, -0.295652,
		0.851801, -0.522912, 0.031600,
		33.512352, 33.439964, 42.985527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306389, 34.096886, 42.416809>,  <32.916092, 33.806000, 42.963409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306389, 34.096886, 42.416809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479721, 33.744316, 42.491985>,  <33.583721, 33.532776, 42.537090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479721, 33.744316, 42.491985>,  <33.306389, 34.096886, 42.416809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479721, 33.744316, 42.491985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179161, -0.288628, -0.940529,
		0.883248, 0.373887, -0.282987,
		0.433329, -0.881421, 0.187944,
		33.609718, 33.479889, 42.548370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767570, 34.057426, 41.932030>,  <33.306389, 34.096886, 42.416809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767570, 34.057426, 41.932030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702740, 33.678944, 42.044052>,  <33.663841, 33.451855, 42.111267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702740, 33.678944, 42.044052>,  <33.767570, 34.057426, 41.932030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702740, 33.678944, 42.044052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108361, -0.265030, -0.958132,
		0.980811, -0.185634, -0.059578,
		-0.162072, -0.946202, 0.280060,
		33.654118, 33.395084, 42.128071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280380, 33.638382, 41.573311>,  <33.767570, 34.057426, 41.932030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280380, 33.638382, 41.573311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959686, 33.414013, 41.655857>,  <33.767269, 33.279392, 41.705383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959686, 33.414013, 41.655857>,  <34.280380, 33.638382, 41.573311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959686, 33.414013, 41.655857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070794, -0.253722, -0.964683,
		0.593472, -0.788030, 0.163708,
		-0.801735, -0.560922, 0.206365,
		33.719166, 33.245735, 41.717766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667835, 33.072056, 41.225613>,  <34.280380, 33.638382, 41.573311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667835, 33.072056, 41.225613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049885, 32.962193, 41.181248>,  <35.279114, 32.896275, 41.154629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049885, 32.962193, 41.181248>,  <34.667835, 33.072056, 41.225613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049885, 32.962193, 41.181248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207030, 0.351217, 0.913118,
		-0.211844, -0.895102, 0.392319,
		0.955123, -0.274661, -0.110910,
		35.336422, 32.879795, 41.147976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807415, 32.687073, 41.788353>,  <34.667835, 33.072056, 41.225613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807415, 32.687073, 41.788353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158348, 32.813320, 41.643761>,  <35.368908, 32.889069, 41.557003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158348, 32.813320, 41.643761>,  <34.807415, 32.687073, 41.788353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158348, 32.813320, 41.643761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269078, 0.300173, 0.915147,
		0.397346, -0.900156, 0.178426,
		0.877333, 0.315619, -0.361484,
		35.421547, 32.908005, 41.535316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356438, 32.813278, 42.412495>,  <34.807415, 32.687073, 41.788353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356438, 32.813278, 42.412495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537289, 33.018654, 42.120754>,  <35.645802, 33.141880, 41.945709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537289, 33.018654, 42.120754>,  <35.356438, 32.813278, 42.412495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537289, 33.018654, 42.120754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486726, 0.543204, 0.684125,
		0.747445, -0.664309, -0.004305,
		0.452132, 0.513442, -0.729352,
		35.672928, 33.172688, 41.901947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017323, 32.772160, 42.703358>,  <35.356438, 32.813278, 42.412495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017323, 32.772160, 42.703358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019478, 33.066219, 42.432205>,  <36.020771, 33.242657, 42.269512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019478, 33.066219, 42.432205>,  <36.017323, 32.772160, 42.703358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019478, 33.066219, 42.432205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586445, 0.546762, 0.597607,
		0.809972, -0.400759, -0.428181,
		0.005383, 0.735149, -0.677884,
		36.021091, 33.286762, 42.228840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664005, 33.076302, 42.668507>,  <36.017323, 32.772160, 42.703358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664005, 33.076302, 42.668507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454899, 33.378948, 42.511406>,  <36.329437, 33.560535, 42.417145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454899, 33.378948, 42.511406>,  <36.664005, 33.076302, 42.668507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454899, 33.378948, 42.511406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586146, 0.653550, 0.478858,
		0.618993, 0.020121, -0.785139,
		-0.522762, 0.756616, -0.392749,
		36.298069, 33.605934, 42.393581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105408, 33.595631, 42.561275>,  <36.664005, 33.076302, 42.668507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105408, 33.595631, 42.561275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763073, 33.802322, 42.570572>,  <36.557674, 33.926338, 42.576149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763073, 33.802322, 42.570572>,  <37.105408, 33.595631, 42.561275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763073, 33.802322, 42.570572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437731, 0.699591, 0.564770,
		0.275575, 0.493522, -0.824921,
		-0.855833, 0.516730, 0.023240,
		36.506325, 33.957340, 42.577545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228256, 34.358822, 42.514015>,  <37.105408, 33.595631, 42.561275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228256, 34.358822, 42.514015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873474, 34.312828, 42.692940>,  <36.660606, 34.285233, 42.800297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873474, 34.312828, 42.692940>,  <37.228256, 34.358822, 42.514015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873474, 34.312828, 42.692940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292045, 0.610676, 0.736060,
		-0.357804, 0.783487, -0.508059,
		-0.886953, -0.114989, 0.447316,
		36.607388, 34.278332, 42.827133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983513, 35.009632, 42.552967>,  <37.228256, 34.358822, 42.514015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983513, 35.009632, 42.552967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788223, 34.802795, 42.834179>,  <36.671051, 34.678692, 43.002907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788223, 34.802795, 42.834179>,  <36.983513, 35.009632, 42.552967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788223, 34.802795, 42.834179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250972, 0.688350, 0.680579,
		-0.835854, 0.508715, -0.206292,
		-0.488222, -0.517091, 0.703034,
		36.641758, 34.647667, 43.045090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607693, 35.478889, 42.956692>,  <36.983513, 35.009632, 42.552967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607693, 35.478889, 42.956692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667347, 35.168873, 43.202312>,  <36.703140, 34.982861, 43.349686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667347, 35.168873, 43.202312>,  <36.607693, 35.478889, 42.956692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667347, 35.168873, 43.202312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424574, 0.611032, 0.668114,
		-0.893027, 0.161075, 0.420189,
		0.149132, -0.775045, 0.614056,
		36.712086, 34.936359, 43.386528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274601, 35.649986, 43.548859>,  <36.607693, 35.478889, 42.956692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274601, 35.649986, 43.548859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513485, 35.357899, 43.681599>,  <36.656815, 35.182648, 43.761242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513485, 35.357899, 43.681599>,  <36.274601, 35.649986, 43.548859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513485, 35.357899, 43.681599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352598, 0.610623, 0.709094,
		-0.720426, -0.306470, 0.622144,
		0.597211, -0.730216, 0.331848,
		36.692650, 35.138832, 43.781155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169250, 35.699692, 44.192085>,  <36.274601, 35.649986, 43.548859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169250, 35.699692, 44.192085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496387, 35.469528, 44.189877>,  <36.692669, 35.331429, 44.188553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496387, 35.469528, 44.189877>,  <36.169250, 35.699692, 44.192085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496387, 35.469528, 44.189877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375305, 0.526108, 0.763123,
		-0.436208, -0.626187, 0.646230,
		0.817845, -0.575413, -0.005519,
		36.741741, 35.296906, 44.188221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367962, 35.576023, 44.873592>,  <36.169250, 35.699692, 44.192085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367962, 35.576023, 44.873592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712791, 35.463169, 44.705196>,  <36.919689, 35.395458, 44.604160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712791, 35.463169, 44.705196>,  <36.367962, 35.576023, 44.873592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712791, 35.463169, 44.705196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506109, 0.522215, 0.686401,
		0.026192, -0.804794, 0.592976,
		0.862072, -0.282132, -0.420991,
		36.971413, 35.378529, 44.578899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724918, 35.234802, 45.340618>,  <36.367962, 35.576023, 44.873592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724918, 35.234802, 45.340618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995789, 35.371445, 45.079929>,  <37.158310, 35.453430, 44.923515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995789, 35.371445, 45.079929>,  <36.724918, 35.234802, 45.340618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995789, 35.371445, 45.079929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488632, 0.453459, 0.745395,
		0.550159, -0.823215, 0.140153,
		0.677174, 0.341603, -0.651724,
		37.198940, 35.473927, 44.884411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290554, 35.078037, 45.695335>,  <36.724918, 35.234802, 45.340618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290554, 35.078037, 45.695335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388130, 35.340668, 45.409847>,  <37.446674, 35.498245, 45.238552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388130, 35.340668, 45.409847>,  <37.290554, 35.078037, 45.695335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388130, 35.340668, 45.409847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700759, 0.389411, 0.597742,
		0.670395, -0.645961, -0.365109,
		0.243941, 0.656577, -0.713723,
		37.461311, 35.537640, 45.195732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056736, 35.080746, 45.725681>,  <37.290554, 35.078037, 45.695335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056736, 35.080746, 45.725681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908989, 35.418453, 45.570362>,  <37.820343, 35.621078, 45.477173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908989, 35.418453, 45.570362>,  <38.056736, 35.080746, 45.725681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908989, 35.418453, 45.570362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356815, 0.514664, 0.779618,
		0.858052, 0.149414, -0.491348,
		-0.369365, 0.844273, -0.388295,
		37.798180, 35.671734, 45.453873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610535, 35.552227, 45.810608>,  <38.056736, 35.080746, 45.725681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610535, 35.552227, 45.810608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269855, 35.758736, 45.774673>,  <38.065449, 35.882641, 45.753113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269855, 35.758736, 45.774673>,  <38.610535, 35.552227, 45.810608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269855, 35.758736, 45.774673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247264, 0.547086, 0.799723,
		0.462021, 0.658912, -0.593609,
		-0.851702, 0.516267, -0.089840,
		38.014343, 35.913616, 45.747723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769089, 36.239910, 46.011879>,  <38.610535, 35.552227, 45.810608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769089, 36.239910, 46.011879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369392, 36.254627, 46.017124>,  <38.129574, 36.263458, 46.020271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369392, 36.254627, 46.017124>,  <38.769089, 36.239910, 46.011879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369392, 36.254627, 46.017124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034008, 0.654405, 0.755379,
		0.019217, 0.755249, -0.655157,
		-0.999237, 0.036797, 0.013109,
		38.069622, 36.265667, 46.021057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517494, 37.031986, 45.916557>,  <38.769089, 36.239910, 46.011879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517494, 37.031986, 45.916557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226913, 36.813839, 46.083813>,  <38.052563, 36.682949, 46.184166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226913, 36.813839, 46.083813>,  <38.517494, 37.031986, 45.916557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226913, 36.813839, 46.083813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018496, 0.623747, 0.781408,
		-0.686966, 0.559923, -0.463211,
		-0.726454, -0.545368, 0.418136,
		38.008976, 36.650227, 46.209255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966267, 37.462669, 46.083160>,  <38.517494, 37.031986, 45.916557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966267, 37.462669, 46.083160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905544, 37.149506, 46.324493>,  <37.869110, 36.961609, 46.469292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905544, 37.149506, 46.324493>,  <37.966267, 37.462669, 46.083160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905544, 37.149506, 46.324493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181003, 0.622106, 0.761723,
		-0.971695, 0.006431, -0.236150,
		-0.151809, -0.782906, 0.603334,
		37.860001, 36.914635, 46.505493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514015, 37.780464, 46.430534>,  <37.966267, 37.462669, 46.083160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514015, 37.780464, 46.430534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598282, 37.448341, 46.636917>,  <37.648842, 37.249069, 46.760746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598282, 37.448341, 46.636917>,  <37.514015, 37.780464, 46.430534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598282, 37.448341, 46.636917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243123, 0.466712, 0.850336,
		-0.946842, -0.304577, -0.103546,
		0.210667, -0.830309, 0.515953,
		37.661484, 37.199249, 46.791702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936039, 37.651299, 46.863014>,  <37.514015, 37.780464, 46.430534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936039, 37.651299, 46.863014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264191, 37.476986, 47.011105>,  <37.461082, 37.372398, 47.099960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264191, 37.476986, 47.011105>,  <36.936039, 37.651299, 46.863014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264191, 37.476986, 47.011105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111723, 0.512827, 0.851191,
		-0.560793, -0.739666, 0.372028,
		0.820384, -0.435778, 0.370228,
		37.510307, 37.346252, 47.122173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727566, 37.520988, 47.567856>,  <36.936039, 37.651299, 46.863014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727566, 37.520988, 47.567856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127411, 37.510941, 47.572739>,  <37.367317, 37.504910, 47.575668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127411, 37.510941, 47.572739>,  <36.727566, 37.520988, 47.567856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127411, 37.510941, 47.572739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000956, 0.467520, 0.883982,
		-0.027914, -0.883625, 0.467362,
		0.999610, -0.025123, 0.012206,
		37.427296, 37.503403, 47.576401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920654, 37.251274, 48.222301>,  <36.727566, 37.520988, 47.567856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920654, 37.251274, 48.222301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244091, 37.449123, 48.094852>,  <37.438152, 37.567833, 48.018383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244091, 37.449123, 48.094852>,  <36.920654, 37.251274, 48.222301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244091, 37.449123, 48.094852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096083, 0.423267, 0.900896,
		0.580466, -0.759075, 0.294727,
		0.808596, 0.494622, -0.318626,
		37.486671, 37.597511, 47.999264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318375, 37.233936, 48.717548>,  <36.920654, 37.251274, 48.222301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318375, 37.233936, 48.717548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442146, 37.555370, 48.514179>,  <37.516411, 37.748230, 48.392159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442146, 37.555370, 48.514179>,  <37.318375, 37.233936, 48.717548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442146, 37.555370, 48.514179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059965, 0.517115, 0.853813,
		0.949029, -0.294685, 0.111825,
		0.309433, 0.803587, -0.508427,
		37.534977, 37.796448, 48.361652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964912, 37.516319, 49.100494>,  <37.318375, 37.233936, 48.717548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964912, 37.516319, 49.100494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790005, 37.803619, 48.884007>,  <37.685059, 37.975998, 48.754116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790005, 37.803619, 48.884007>,  <37.964912, 37.516319, 49.100494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790005, 37.803619, 48.884007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203598, 0.665235, 0.718338,
		0.875982, 0.203916, -0.437120,
		-0.437269, 0.718248, -0.541217,
		37.658825, 38.019093, 48.721642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232338, 38.176498, 49.356693>,  <37.964912, 37.516319, 49.100494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232338, 38.176498, 49.356693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935749, 38.323887, 49.132393>,  <37.757797, 38.412319, 48.997810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935749, 38.323887, 49.132393>,  <38.232338, 38.176498, 49.356693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935749, 38.323887, 49.132393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057633, 0.867605, 0.493903,
		0.668503, 0.333898, -0.664541,
		-0.741473, 0.368475, -0.560753,
		37.713306, 38.434429, 48.964169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441936, 38.784096, 49.156971>,  <38.232338, 38.176498, 49.356693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441936, 38.784096, 49.156971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048576, 38.801205, 49.086445>,  <37.812561, 38.811470, 49.044128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048576, 38.801205, 49.086445>,  <38.441936, 38.784096, 49.156971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048576, 38.801205, 49.086445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036341, 0.905676, 0.422411,
		0.177751, 0.421808, -0.889091,
		-0.983404, 0.042774, -0.176314,
		37.753555, 38.814037, 49.033550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306355, 39.429565, 48.811546>,  <38.441936, 38.784096, 49.156971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306355, 39.429565, 48.811546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965630, 39.311432, 48.984608>,  <37.761196, 39.240551, 49.088444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965630, 39.311432, 48.984608>,  <38.306355, 39.429565, 48.811546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965630, 39.311432, 48.984608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117202, 0.912430, 0.392092,
		-0.510566, 0.283281, -0.811834,
		-0.851814, -0.295337, 0.432654,
		37.710087, 39.222832, 49.114403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789268, 39.963181, 48.651314>,  <38.306355, 39.429565, 48.811546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789268, 39.963181, 48.651314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672745, 39.774345, 48.984123>,  <37.602829, 39.661045, 49.183811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672745, 39.774345, 48.984123>,  <37.789268, 39.963181, 48.651314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672745, 39.774345, 48.984123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194683, 0.880803, 0.431606,
		-0.936610, -0.036251, -0.348494,
		-0.291309, -0.472092, 0.832026,
		37.585354, 39.632717, 49.233730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194233, 40.215672, 48.846691>,  <37.789268, 39.963181, 48.651314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194233, 40.215672, 48.846691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334419, 40.056572, 49.185860>,  <37.418533, 39.961113, 49.389359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334419, 40.056572, 49.185860>,  <37.194233, 40.215672, 48.846691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334419, 40.056572, 49.185860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097177, 0.885011, 0.455316,
		-0.931519, -0.241972, 0.271517,
		0.350469, -0.397751, 0.847919,
		37.439560, 39.937248, 49.440235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823639, 40.440372, 49.362625>,  <37.194233, 40.215672, 48.846691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823639, 40.440372, 49.362625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126884, 40.319160, 49.593601>,  <37.308830, 40.246433, 49.732185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126884, 40.319160, 49.593601>,  <36.823639, 40.440372, 49.362625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126884, 40.319160, 49.593601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117170, 0.807769, 0.577737,
		-0.641509, -0.505649, 0.576876,
		0.758115, -0.303031, 0.577438,
		37.354321, 40.228252, 49.766834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576672, 40.560680, 49.999142>,  <36.823639, 40.440372, 49.362625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576672, 40.560680, 49.999142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974033, 40.532753, 50.035534>,  <37.212448, 40.515999, 50.057369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974033, 40.532753, 50.035534>,  <36.576672, 40.560680, 49.999142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974033, 40.532753, 50.035534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001751, 0.784026, 0.620726,
		-0.114669, -0.616790, 0.778731,
		0.993402, -0.069814, 0.090983,
		37.272053, 40.511810, 50.062828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655621, 40.846840, 50.735416>,  <36.576672, 40.560680, 49.999142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655621, 40.846840, 50.735416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020542, 40.829224, 50.572559>,  <37.239494, 40.818653, 50.474846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020542, 40.829224, 50.572559>,  <36.655621, 40.846840, 50.735416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020542, 40.829224, 50.572559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276870, 0.798877, 0.533983,
		0.301742, -0.599880, 0.741010,
		0.912302, -0.044038, -0.407144,
		37.294231, 40.816013, 50.450417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147224, 40.866978, 51.303841>,  <36.655621, 40.846840, 50.735416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147224, 40.866978, 51.303841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307732, 40.986389, 50.957462>,  <37.404037, 41.058037, 50.749634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307732, 40.986389, 50.957462>,  <37.147224, 40.866978, 51.303841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307732, 40.986389, 50.957462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201130, 0.893606, 0.401267,
		0.893606, -0.335183, 0.298531,
		-0.401267, -0.298531, 0.865947,
		37.428112, 41.075947, 50.697678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753670, 41.238865, 51.475121>,  <37.147224, 40.866978, 51.303841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753670, 41.238865, 51.475121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682163, 41.352032, 51.098186>,  <37.639259, 41.419933, 50.872025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682163, 41.352032, 51.098186>,  <37.753670, 41.238865, 51.475121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682163, 41.352032, 51.098186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025373, 0.958773, 0.283039,
		0.983565, 0.026687, -0.178572,
		-0.178763, 0.282918, -0.942338,
		37.628532, 41.436909, 50.815487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166866, 41.887150, 51.363979>,  <37.753670, 41.238865, 51.475121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166866, 41.887150, 51.363979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911316, 41.906982, 51.056896>,  <37.757984, 41.918884, 50.872646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911316, 41.906982, 51.056896>,  <38.166866, 41.887150, 51.363979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911316, 41.906982, 51.056896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058034, 0.991971, 0.112365,
		0.767119, 0.116341, -0.630868,
		-0.638875, 0.049586, -0.767711,
		37.719654, 41.921860, 50.826584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484745, 42.273312, 50.859840>,  <38.166866, 41.887150, 51.363979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484745, 42.273312, 50.859840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088764, 42.278069, 50.803471>,  <37.851177, 42.280922, 50.769650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088764, 42.278069, 50.803471>,  <38.484745, 42.273312, 50.859840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088764, 42.278069, 50.803471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023450, 0.996468, -0.080627,
		0.139469, -0.083121, -0.986732,
		-0.989949, 0.011894, -0.140926,
		37.791779, 42.281635, 50.761192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317020, 42.729767, 50.306732>,  <38.484745, 42.273312, 50.859840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317020, 42.729767, 50.306732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019669, 42.684383, 50.570400>,  <37.841255, 42.657154, 50.728603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019669, 42.684383, 50.570400>,  <38.317020, 42.729767, 50.306732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019669, 42.684383, 50.570400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040788, 0.975983, 0.213994,
		-0.667621, 0.185966, -0.720901,
		-0.743383, -0.113463, 0.659172,
		37.796654, 42.650345, 50.768150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936886, 43.313549, 50.243683>,  <38.317020, 42.729767, 50.306732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936886, 43.313549, 50.243683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872410, 43.190945, 50.618931>,  <37.833725, 43.117382, 50.844078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872410, 43.190945, 50.618931>,  <37.936886, 43.313549, 50.243683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872410, 43.190945, 50.618931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157268, 0.946382, 0.282183,
		-0.974312, -0.102051, -0.200751,
		-0.161190, -0.306506, 0.938121,
		37.824055, 43.098991, 50.900368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517063, 43.773510, 50.398743>,  <37.936886, 43.313549, 50.243683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517063, 43.773510, 50.398743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513191, 44.129028, 50.215458>,  <38.510868, 44.342339, 50.105488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513191, 44.129028, 50.215458>,  <38.517063, 43.773510, 50.398743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513191, 44.129028, 50.215458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298297, -0.439934, -0.847040,
		-0.954424, 0.128484, 0.269382,
		-0.009679, 0.888791, -0.458210,
		38.510288, 44.395664, 50.077995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765293, 44.005516, 50.221130>,  <38.517063, 43.773510, 50.398743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765293, 44.005516, 50.221130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040810, 44.168568, 49.981331>,  <38.206120, 44.266399, 49.837452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040810, 44.168568, 49.981331>,  <37.765293, 44.005516, 50.221130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040810, 44.168568, 49.981331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490885, -0.346278, -0.799452,
		-0.533474, 0.844944, -0.038415,
		0.688794, 0.407629, -0.599500,
		38.247448, 44.290855, 49.801479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440685, 44.262691, 49.640106>,  <37.765293, 44.005516, 50.221130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440685, 44.262691, 49.640106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807114, 44.255257, 49.479874>,  <38.026970, 44.250797, 49.383732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807114, 44.255257, 49.479874>,  <37.440685, 44.262691, 49.640106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807114, 44.255257, 49.479874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366957, -0.441716, -0.818675,
		-0.161728, 0.896962, -0.411464,
		0.916071, -0.018586, -0.400585,
		38.081936, 44.249680, 49.359699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343323, 44.347874, 48.976421>,  <37.440685, 44.262691, 49.640106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343323, 44.347874, 48.976421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713802, 44.197639, 48.963272>,  <37.936092, 44.107498, 48.955383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713802, 44.197639, 48.963272>,  <37.343323, 44.347874, 48.976421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713802, 44.197639, 48.963272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203946, -0.425781, -0.881542,
		0.317101, 0.823191, -0.470959,
		0.926203, -0.375588, -0.032871,
		37.991665, 44.084965, 48.953411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643593, 44.454693, 48.289070>,  <37.343323, 44.347874, 48.976421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643593, 44.454693, 48.289070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853611, 44.148998, 48.438885>,  <37.979622, 43.965584, 48.528774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853611, 44.148998, 48.438885>,  <37.643593, 44.454693, 48.289070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853611, 44.148998, 48.438885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134841, -0.509217, -0.850009,
		0.840326, 0.395788, -0.370411,
		0.525043, -0.764232, 0.374540,
		38.011124, 43.919727, 48.551247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873920, 44.203049, 47.727123>,  <37.643593, 44.454693, 48.289070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873920, 44.203049, 47.727123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921551, 43.902237, 47.986435>,  <37.950127, 43.721748, 48.142021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921551, 43.902237, 47.986435>,  <37.873920, 44.203049, 47.727123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921551, 43.902237, 47.986435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054635, -0.656899, -0.751997,
		0.991381, 0.054124, -0.119307,
		0.119073, -0.752033, 0.648280,
		37.957272, 43.676628, 48.180920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409348, 43.616688, 47.462097>,  <37.873920, 44.203049, 47.727123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409348, 43.616688, 47.462097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184475, 43.432968, 47.737198>,  <38.049553, 43.322735, 47.902256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184475, 43.432968, 47.737198>,  <38.409348, 43.616688, 47.462097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184475, 43.432968, 47.737198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064878, -0.853532, -0.516986,
		0.824468, -0.246018, 0.509634,
		-0.562177, -0.459302, 0.687749,
		38.015823, 43.295177, 47.943523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747517, 43.063984, 47.593372>,  <38.409348, 43.616688, 47.462097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747517, 43.063984, 47.593372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382183, 42.971733, 47.727612>,  <38.162983, 42.916382, 47.808155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382183, 42.971733, 47.727612>,  <38.747517, 43.063984, 47.593372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382183, 42.971733, 47.727612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069601, -0.900437, -0.429382,
		0.401215, -0.368812, 0.838453,
		-0.913336, -0.230632, 0.335599,
		38.108181, 42.902542, 47.828293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897659, 42.402363, 47.845303>,  <38.747517, 43.063984, 47.593372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897659, 42.402363, 47.845303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506348, 42.417648, 47.763798>,  <38.271561, 42.426819, 47.714897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506348, 42.417648, 47.763798>,  <38.897659, 42.402363, 47.845303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506348, 42.417648, 47.763798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046687, -0.917003, -0.396138,
		-0.201985, -0.397045, 0.895298,
		-0.978275, 0.038215, -0.203758,
		38.212864, 42.429111, 47.702671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610188, 41.771156, 47.896183>,  <38.897659, 42.402363, 47.845303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610188, 41.771156, 47.896183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342533, 41.954983, 47.662582>,  <38.181942, 42.065277, 47.522423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342533, 41.954983, 47.662582>,  <38.610188, 41.771156, 47.896183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342533, 41.954983, 47.662582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235290, -0.876442, -0.420106,
		-0.704907, -0.143700, 0.694591,
		-0.669137, 0.459566, -0.583999,
		38.141792, 42.092854, 47.487381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166451, 41.327747, 47.857063>,  <38.610188, 41.771156, 47.896183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166451, 41.327747, 47.857063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059086, 41.567490, 47.555405>,  <37.994667, 41.711334, 47.374409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059086, 41.567490, 47.555405>,  <38.166451, 41.327747, 47.857063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059086, 41.567490, 47.555405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385601, -0.784263, -0.486048,
		-0.882761, 0.160338, 0.441615,
		-0.268410, 0.599352, -0.754144,
		37.978561, 41.747295, 47.329163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557808, 41.107250, 47.658325>,  <38.166451, 41.327747, 47.857063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557808, 41.107250, 47.658325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638088, 41.318844, 47.328503>,  <37.686256, 41.445801, 47.130608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638088, 41.318844, 47.328503>,  <37.557808, 41.107250, 47.658325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638088, 41.318844, 47.328503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283023, -0.774484, -0.565750,
		-0.937879, 0.346916, -0.005725,
		0.200701, 0.528984, -0.824557,
		37.698299, 41.477539, 47.081135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011307, 41.024902, 47.197765>,  <37.557808, 41.107250, 47.658325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011307, 41.024902, 47.197765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308899, 41.124218, 46.949623>,  <37.487453, 41.183807, 46.800739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308899, 41.124218, 46.949623>,  <37.011307, 41.024902, 47.197765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308899, 41.124218, 46.949623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098263, -0.877656, -0.469110,
		-0.660933, 0.409968, -0.628565,
		0.743984, 0.248285, -0.620356,
		37.532093, 41.198704, 46.763515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783970, 40.946796, 46.507645>,  <37.011307, 41.024902, 47.197765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783970, 40.946796, 46.507645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181709, 40.928257, 46.469456>,  <37.420353, 40.917133, 46.446541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181709, 40.928257, 46.469456>,  <36.783970, 40.946796, 46.507645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181709, 40.928257, 46.469456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099186, -0.725876, -0.680637,
		-0.037759, 0.686263, -0.726373,
		0.994352, -0.046346, -0.095476,
		37.480015, 40.914352, 46.440811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902126, 40.872894, 45.693981>,  <36.783970, 40.946796, 46.507645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902126, 40.872894, 45.693981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210434, 40.760948, 45.922924>,  <37.395416, 40.693779, 46.060291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210434, 40.760948, 45.922924>,  <36.902126, 40.872894, 45.693981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210434, 40.760948, 45.922924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235401, -0.709694, -0.664018,
		0.592035, 0.646537, -0.481128,
		0.770767, -0.279864, 0.572359,
		37.441666, 40.676991, 46.094631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478157, 40.946648, 45.267406>,  <36.902126, 40.872894, 45.693981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478157, 40.946648, 45.267406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587784, 40.682632, 45.547188>,  <37.653561, 40.524223, 45.715057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587784, 40.682632, 45.547188>,  <37.478157, 40.946648, 45.267406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587784, 40.682632, 45.547188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284743, -0.638996, -0.714566,
		0.918590, 0.395005, 0.012813,
		0.274070, -0.660042, 0.699450,
		37.670006, 40.484619, 45.757023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981266, 40.616009, 44.940552>,  <37.478157, 40.946648, 45.267406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981266, 40.616009, 44.940552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934799, 40.398609, 45.273087>,  <37.906918, 40.268169, 45.472607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934799, 40.398609, 45.273087>,  <37.981266, 40.616009, 44.940552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934799, 40.398609, 45.273087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058712, -0.839295, -0.540497,
		0.991493, -0.013980, 0.129410,
		-0.116169, -0.543497, 0.831334,
		37.899948, 40.235561, 45.522488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617836, 40.183426, 44.979073>,  <37.981266, 40.616009, 44.940552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617836, 40.183426, 44.979073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291107, 40.051197, 45.168186>,  <38.095070, 39.971859, 45.281654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291107, 40.051197, 45.168186>,  <38.617836, 40.183426, 44.979073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291107, 40.051197, 45.168186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066314, -0.867913, -0.492269,
		0.573066, -0.370744, 0.730852,
		-0.816821, -0.330568, 0.472786,
		38.046062, 39.952026, 45.310020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728466, 39.502365, 45.209789>,  <38.617836, 40.183426, 44.979073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728466, 39.502365, 45.209789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330368, 39.539162, 45.196964>,  <38.091511, 39.561241, 45.189270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330368, 39.539162, 45.196964>,  <38.728466, 39.502365, 45.209789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330368, 39.539162, 45.196964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075443, -0.935994, -0.343837,
		-0.061637, -0.339782, 0.938482,
		-0.995243, 0.091995, -0.032058,
		38.031796, 39.566761, 45.187347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415268, 38.942951, 45.589508>,  <38.728466, 39.502365, 45.209789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415268, 38.942951, 45.589508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124443, 39.083393, 45.353508>,  <37.949947, 39.167660, 45.211906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124443, 39.083393, 45.353508>,  <38.415268, 38.942951, 45.589508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124443, 39.083393, 45.353508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146056, -0.918776, -0.366768,
		-0.670853, -0.180491, 0.719291,
		-0.727065, 0.351104, -0.590002,
		37.906322, 39.188725, 45.176506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851528, 38.431641, 45.477207>,  <38.415268, 38.942951, 45.589508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851528, 38.431641, 45.477207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756241, 38.665401, 45.166920>,  <37.699070, 38.805656, 44.980747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756241, 38.665401, 45.166920>,  <37.851528, 38.431641, 45.477207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756241, 38.665401, 45.166920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159635, -0.811404, -0.562264,
		-0.958004, -0.010108, 0.286578,
		-0.238213, 0.584398, -0.775714,
		37.684776, 38.840721, 44.934204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268276, 38.053108, 45.137390>,  <37.851528, 38.431641, 45.477207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268276, 38.053108, 45.137390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389240, 38.323513, 44.868599>,  <37.461819, 38.485756, 44.707325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389240, 38.323513, 44.868599>,  <37.268276, 38.053108, 45.137390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389240, 38.323513, 44.868599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152452, -0.730217, -0.665989,
		-0.940909, 0.098955, -0.323881,
		0.302406, 0.676011, -0.671982,
		37.479961, 38.526318, 44.667004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926880, 37.765182, 44.512024>,  <37.268276, 38.053108, 45.137390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926880, 37.765182, 44.512024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255013, 37.977295, 44.426373>,  <37.451893, 38.104565, 44.374981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255013, 37.977295, 44.426373>,  <36.926880, 37.765182, 44.512024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255013, 37.977295, 44.426373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247398, -0.666641, -0.703124,
		-0.515603, 0.523821, -0.678060,
		0.820334, 0.530284, -0.214129,
		37.501114, 38.136379, 44.362133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930485, 37.754578, 43.823025>,  <36.926880, 37.765182, 44.512024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930485, 37.754578, 43.823025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308842, 37.848331, 43.912781>,  <37.535854, 37.904583, 43.966633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308842, 37.848331, 43.912781>,  <36.930485, 37.754578, 43.823025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308842, 37.848331, 43.912781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319471, -0.551672, -0.770452,
		-0.056790, 0.800452, -0.596701,
		0.945893, 0.234383, 0.224391,
		37.592609, 37.918648, 43.980099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263622, 37.713299, 43.202873>,  <36.930485, 37.754578, 43.823025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263622, 37.713299, 43.202873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582989, 37.699219, 43.443302>,  <37.774609, 37.690773, 43.587559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582989, 37.699219, 43.443302>,  <37.263622, 37.713299, 43.202873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582989, 37.699219, 43.443302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464617, -0.598931, -0.652237,
		0.382957, 0.800027, -0.461845,
		0.798420, -0.035197, 0.601071,
		37.822514, 37.688660, 43.623623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849838, 37.999336, 42.815548>,  <37.263622, 37.713299, 43.202873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849838, 37.999336, 42.815548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989761, 37.753197, 43.098103>,  <38.073715, 37.605515, 43.267635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989761, 37.753197, 43.098103>,  <37.849838, 37.999336, 42.815548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989761, 37.753197, 43.098103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448095, -0.552273, -0.702997,
		0.822707, 0.562441, 0.082546,
		0.349807, -0.615349, 0.706386,
		38.094704, 37.568592, 43.310017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653049, 37.936523, 42.745628>,  <37.849838, 37.999336, 42.815548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653049, 37.936523, 42.745628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527294, 37.614697, 42.947155>,  <38.451839, 37.421600, 43.068073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527294, 37.614697, 42.947155>,  <38.653049, 37.936523, 42.745628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527294, 37.614697, 42.947155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549218, -0.587050, -0.594753,
		0.774285, 0.089722, 0.626444,
		-0.314392, -0.804563, 0.503821,
		38.432976, 37.373329, 43.098301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299213, 37.481632, 42.983166>,  <38.653049, 37.936523, 42.745628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299213, 37.481632, 42.983166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976570, 37.248035, 42.946629>,  <38.782986, 37.107876, 42.924706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976570, 37.248035, 42.946629>,  <39.299213, 37.481632, 42.983166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976570, 37.248035, 42.946629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523453, -0.633940, -0.569313,
		0.274566, -0.507025, 0.817031,
		-0.806604, -0.583991, -0.091345,
		38.734589, 37.072838, 42.919224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493847, 36.753819, 43.098885>,  <39.299213, 37.481632, 42.983166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493847, 36.753819, 43.098885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141129, 36.682686, 42.924156>,  <38.929497, 36.640007, 42.819317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141129, 36.682686, 42.924156>,  <39.493847, 36.753819, 43.098885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141129, 36.682686, 42.924156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438002, -0.652265, -0.618631,
		-0.174910, -0.736835, 0.653055,
		-0.881794, -0.177835, -0.436823,
		38.876591, 36.629337, 42.793110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503021, 36.061539, 42.940529>,  <39.493847, 36.753819, 43.098885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503021, 36.061539, 42.940529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203365, 36.206665, 42.718842>,  <39.023571, 36.293739, 42.585831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203365, 36.206665, 42.718842>,  <39.503021, 36.061539, 42.940529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203365, 36.206665, 42.718842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268187, -0.598902, -0.754581,
		-0.605716, -0.713909, 0.351342,
		-0.749122, 0.362836, -0.554226,
		38.978622, 36.315510, 42.552578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102150, 35.454159, 42.567024>,  <39.503021, 36.061539, 42.940529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102150, 35.454159, 42.567024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071945, 35.784409, 42.343369>,  <39.053822, 35.982559, 42.209175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071945, 35.784409, 42.343369>,  <39.102150, 35.454159, 42.567024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071945, 35.784409, 42.343369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274000, -0.521972, -0.807756,
		-0.958760, -0.214200, -0.186807,
		-0.075513, 0.825629, -0.559137,
		39.049290, 36.032097, 42.175629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884502, 35.254135, 42.017197>,  <39.102150, 35.454159, 42.567024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884502, 35.254135, 42.017197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945065, 35.620285, 41.867977>,  <38.981403, 35.839973, 41.778446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945065, 35.620285, 41.867977>,  <38.884502, 35.254135, 42.017197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945065, 35.620285, 41.867977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298612, -0.402125, -0.865520,
		-0.942288, 0.019650, -0.334227,
		0.151409, 0.915374, -0.373050,
		38.990486, 35.894897, 41.756062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526932, 35.230446, 41.312832>,  <38.884502, 35.254135, 42.017197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526932, 35.230446, 41.312832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784824, 35.534481, 41.280365>,  <38.939560, 35.716900, 41.260883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784824, 35.534481, 41.280365>,  <38.526932, 35.230446, 41.312832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784824, 35.534481, 41.280365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321777, -0.366189, -0.873135,
		-0.693379, 0.536823, -0.480672,
		0.644736, 0.760083, -0.081171,
		38.978245, 35.762505, 41.256012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312817, 35.645325, 40.733887>,  <38.526932, 35.230446, 41.312832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312817, 35.645325, 40.733887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695072, 35.737000, 40.807884>,  <38.924427, 35.792004, 40.852283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695072, 35.737000, 40.807884>,  <38.312817, 35.645325, 40.733887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695072, 35.737000, 40.807884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231996, -0.198775, -0.952190,
		-0.181456, 0.952871, -0.243128,
		0.955642, 0.229185, 0.184993,
		38.981766, 35.805756, 40.863380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559109, 35.996292, 40.171940>,  <38.312817, 35.645325, 40.733887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559109, 35.996292, 40.171940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902775, 35.887482, 40.345299>,  <39.108974, 35.822197, 40.449314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902775, 35.887482, 40.345299>,  <38.559109, 35.996292, 40.171940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902775, 35.887482, 40.345299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389207, -0.202452, -0.898628,
		0.332192, 0.940753, -0.068066,
		0.859166, -0.272025, 0.433400,
		39.160526, 35.805874, 40.475319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121841, 36.393757, 39.836552>,  <38.559109, 35.996292, 40.171940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121841, 36.393757, 39.836552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274261, 36.063953, 40.003876>,  <39.365711, 35.866070, 40.104271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274261, 36.063953, 40.003876>,  <39.121841, 36.393757, 39.836552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274261, 36.063953, 40.003876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436877, -0.238176, -0.867416,
		0.814826, 0.513277, 0.269454,
		0.381047, -0.824511, 0.418311,
		39.388577, 35.816601, 40.129368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859051, 36.359646, 39.635868>,  <39.121841, 36.393757, 39.836552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859051, 36.359646, 39.635868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726871, 35.994579, 39.732067>,  <39.647564, 35.775539, 39.789787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726871, 35.994579, 39.732067>,  <39.859051, 36.359646, 39.635868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726871, 35.994579, 39.732067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446068, -0.375579, -0.812382,
		0.831762, -0.161171, 0.531221,
		-0.330448, -0.912669, 0.240500,
		39.627739, 35.720779, 39.804218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429058, 35.987301, 39.570404>,  <39.859051, 36.359646, 39.635868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429058, 35.987301, 39.570404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153431, 35.697483, 39.576344>,  <39.988052, 35.523594, 39.579906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153431, 35.697483, 39.576344>,  <40.429058, 35.987301, 39.570404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153431, 35.697483, 39.576344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535641, -0.523006, -0.662988,
		0.488127, -0.448894, 0.748483,
		-0.689072, -0.724541, 0.014848,
		39.946709, 35.480122, 39.580799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761345, 35.342434, 39.732948>,  <40.429058, 35.987301, 39.570404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761345, 35.342434, 39.732948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424522, 35.256218, 39.535164>,  <40.222431, 35.204487, 39.416492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424522, 35.256218, 39.535164>,  <40.761345, 35.342434, 39.732948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424522, 35.256218, 39.535164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518643, -0.575360, -0.632432,
		-0.148175, -0.788988, 0.596274,
		-0.842054, -0.215543, -0.494457,
		40.171906, 35.191555, 39.386826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878159, 34.716774, 39.509785>,  <40.761345, 35.342434, 39.732948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878159, 34.716774, 39.509785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563084, 34.788181, 39.273926>,  <40.374039, 34.831024, 39.132412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563084, 34.788181, 39.273926>,  <40.878159, 34.716774, 39.509785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563084, 34.788181, 39.273926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409908, -0.562642, -0.717920,
		-0.459920, -0.807197, 0.370010,
		-0.787686, 0.178515, -0.589647,
		40.326778, 34.841736, 39.097031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591343, 34.559242, 39.698624>,  <40.878159, 34.716774, 39.509785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591343, 34.559242, 39.698624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778965, 34.208046, 39.736832>,  <41.891537, 33.997330, 39.759754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778965, 34.208046, 39.736832>,  <41.591343, 34.559242, 39.698624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778965, 34.208046, 39.736832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336699, 0.077789, -0.938394,
		0.816470, 0.472316, 0.332106,
		0.469052, -0.877990, 0.095516,
		41.919682, 33.944649, 39.765488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376747, 34.587376, 39.625072>,  <41.591343, 34.559242, 39.698624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376747, 34.587376, 39.625072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204849, 34.248566, 39.499943>,  <42.101711, 34.045280, 39.424866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204849, 34.248566, 39.499943>,  <42.376747, 34.587376, 39.625072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204849, 34.248566, 39.499943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361047, 0.156356, -0.919346,
		0.827626, -0.508029, 0.238625,
		-0.429744, -0.847030, -0.312827,
		42.075928, 33.994457, 39.406094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148506, 34.499905, 39.919476>,  <42.376747, 34.587376, 39.625072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148506, 34.499905, 39.919476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176208, 34.891972, 39.993752>,  <43.192829, 35.127213, 40.038319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176208, 34.891972, 39.993752>,  <43.148506, 34.499905, 39.919476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176208, 34.891972, 39.993752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962316, -0.016574, -0.271428,
		-0.262966, 0.197492, -0.944376,
		0.069257, 0.980164, 0.185691,
		43.196987, 35.186020, 40.049458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521000, 34.883759, 39.389694>,  <43.148506, 34.499905, 39.919476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521000, 34.883759, 39.389694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564758, 35.082649, 39.733974>,  <43.591015, 35.201984, 39.940544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564758, 35.082649, 39.733974>,  <43.521000, 34.883759, 39.389694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564758, 35.082649, 39.733974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973939, 0.119462, -0.192800,
		-0.198685, 0.859360, -0.471195,
		0.109395, 0.497222, 0.860699,
		43.597576, 35.231815, 39.992184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750626, 35.575958, 39.194401>,  <43.521000, 34.883759, 39.389694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750626, 35.575958, 39.194401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850971, 35.408390, 39.543472>,  <43.911179, 35.307850, 39.752914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850971, 35.408390, 39.543472>,  <43.750626, 35.575958, 39.194401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850971, 35.408390, 39.543472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951340, -0.059951, -0.302256,
		0.178939, 0.906043, 0.383493,
		0.250866, -0.418917, 0.872683,
		43.926231, 35.282715, 39.805279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985256, 35.955040, 38.533764>,  <43.750626, 35.575958, 39.194401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985256, 35.955040, 38.533764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268784, 35.733398, 38.708370>,  <44.438900, 35.600414, 38.813133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268784, 35.733398, 38.708370>,  <43.985256, 35.955040, 38.533764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268784, 35.733398, 38.708370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699558, 0.472775, -0.535820,
		0.090525, 0.685167, 0.722739,
		0.708819, -0.554103, 0.436516,
		44.481430, 35.567169, 38.839325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.222401, 36.254684, 37.992378>,  <43.985256, 35.955040, 38.533764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.222401, 36.254684, 37.992378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379673, 36.381348, 37.647091>,  <44.474037, 36.457348, 37.439919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379673, 36.381348, 37.647091>,  <44.222401, 36.254684, 37.992378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.379673, 36.381348, 37.647091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821489, -0.300714, -0.484486,
		-0.412998, 0.899609, 0.141899,
		0.393177, 0.316660, -0.863214,
		44.497627, 36.476345, 37.388126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607910, 36.304897, 37.744537>,  <44.222401, 36.254684, 37.992378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607910, 36.304897, 37.744537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838261, 36.414539, 37.436451>,  <43.976471, 36.480324, 37.251598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838261, 36.414539, 37.436451>,  <43.607910, 36.304897, 37.744537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838261, 36.414539, 37.436451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801975, 0.006455, -0.597323,
		-0.158758, 0.961678, 0.223543,
		0.575875, 0.274106, -0.770217,
		44.011024, 36.496773, 37.205387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389874, 36.902645, 37.511818>,  <43.607910, 36.304897, 37.744537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389874, 36.902645, 37.511818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.573460, 36.717361, 37.208561>,  <43.683613, 36.606190, 37.026608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.573460, 36.717361, 37.208561>,  <43.389874, 36.902645, 37.511818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573460, 36.717361, 37.208561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803118, 0.148609, -0.576989,
		0.379936, 0.873699, -0.303808,
		0.458966, -0.463212, -0.758146,
		43.711151, 36.578400, 36.981117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148754, 37.272831, 36.889008>,  <43.389874, 36.902645, 37.511818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148754, 37.272831, 36.889008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.294956, 36.919514, 36.771564>,  <43.382675, 36.707523, 36.701099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.294956, 36.919514, 36.771564>,  <43.148754, 37.272831, 36.889008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.294956, 36.919514, 36.771564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751458, -0.093867, -0.653070,
		0.549291, 0.459332, -0.698064,
		0.365501, -0.883291, -0.293609,
		43.404606, 36.654526, 36.683483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174473, 37.283039, 36.094734>,  <43.148754, 37.272831, 36.889008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174473, 37.283039, 36.094734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185116, 36.892570, 36.180882>,  <43.191502, 36.658291, 36.232571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185116, 36.892570, 36.180882>,  <43.174473, 37.283039, 36.094734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185116, 36.892570, 36.180882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776912, -0.155770, -0.610036,
		0.629047, -0.151093, -0.762542,
		0.026609, -0.976169, 0.215373,
		43.193100, 36.599720, 36.245495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223015, 36.797485, 35.371983>,  <43.174473, 37.283039, 36.094734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223015, 36.797485, 35.371983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093784, 36.552452, 35.660530>,  <43.016243, 36.405434, 35.833656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093784, 36.552452, 35.660530>,  <43.223015, 36.797485, 35.371983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093784, 36.552452, 35.660530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802058, -0.227347, -0.552283,
		0.502316, -0.757008, -0.417872,
		-0.323081, -0.612579, 0.721364,
		42.996861, 36.368679, 35.876938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230133, 36.123421, 35.058994>,  <43.223015, 36.797485, 35.371983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230133, 36.123421, 35.058994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962742, 36.149029, 35.355385>,  <42.802307, 36.164394, 35.533218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962742, 36.149029, 35.355385>,  <43.230133, 36.123421, 35.058994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962742, 36.149029, 35.355385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738458, -0.175594, -0.651034,
		0.088430, -0.982379, 0.164657,
		-0.668476, 0.064021, 0.740974,
		42.762199, 36.168236, 35.577679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607578, 35.630852, 34.929131>,  <43.230133, 36.123421, 35.058994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607578, 35.630852, 34.929131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470169, 35.894531, 35.196697>,  <42.387726, 36.052738, 35.357239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470169, 35.894531, 35.196697>,  <42.607578, 35.630852, 34.929131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470169, 35.894531, 35.196697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847209, 0.089833, -0.523610,
		-0.405254, -0.746583, 0.527620,
		-0.343520, 0.659199, 0.668917,
		42.367111, 36.092293, 35.397373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898026, 35.428474, 35.031822>,  <42.607578, 35.630852, 34.929131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898026, 35.428474, 35.031822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917789, 35.807621, 35.157745>,  <41.929646, 36.035110, 35.233299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917789, 35.807621, 35.157745>,  <41.898026, 35.428474, 35.031822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917789, 35.807621, 35.157745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798647, 0.226769, -0.557439,
		-0.599768, -0.223882, 0.768215,
		0.049407, 0.947867, 0.314812,
		41.932613, 36.091980, 35.252190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144409, 35.779144, 35.156364>,  <41.898026, 35.428474, 35.031822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144409, 35.779144, 35.156364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399307, 36.084305, 35.112728>,  <41.552246, 36.267403, 35.086544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399307, 36.084305, 35.112728>,  <41.144409, 35.779144, 35.156364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399307, 36.084305, 35.112728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718548, 0.536994, -0.441957,
		-0.278587, 0.360023, 0.890378,
		0.637243, 0.762903, -0.109094,
		41.590481, 36.313175, 35.080002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735310, 36.280308, 35.240108>,  <41.144409, 35.779144, 35.156364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735310, 36.280308, 35.240108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047195, 36.461887, 35.067608>,  <41.234325, 36.570835, 34.964108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047195, 36.461887, 35.067608>,  <40.735310, 36.280308, 35.240108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047195, 36.461887, 35.067608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619311, 0.660559, -0.424401,
		0.092210, 0.597989, 0.796183,
		0.779712, 0.453951, -0.431251,
		41.281109, 36.598072, 34.938232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702858, 36.963814, 35.460056>,  <40.735310, 36.280308, 35.240108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702858, 36.963814, 35.460056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922604, 36.991062, 35.126934>,  <41.054451, 37.007412, 34.927063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922604, 36.991062, 35.126934>,  <40.702858, 36.963814, 35.460056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922604, 36.991062, 35.126934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450419, 0.863615, -0.226478,
		0.703794, 0.499528, 0.505119,
		0.549361, 0.068121, -0.832804,
		41.087410, 37.011497, 34.877094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051128, 37.681484, 35.371544>,  <40.702858, 36.963814, 35.460056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051128, 37.681484, 35.371544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034489, 37.521816, 35.005173>,  <41.024506, 37.426014, 34.785351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034489, 37.521816, 35.005173>,  <41.051128, 37.681484, 35.371544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034489, 37.521816, 35.005173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391251, 0.850023, -0.352681,
		0.919344, 0.343689, -0.191534,
		-0.041596, -0.399173, -0.915932,
		41.022011, 37.402065, 34.730392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353817, 38.122639, 34.975471>,  <41.051128, 37.681484, 35.371544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353817, 38.122639, 34.975471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134624, 37.890625, 34.734383>,  <41.003109, 37.751415, 34.589729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134624, 37.890625, 34.734383>,  <41.353817, 38.122639, 34.975471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134624, 37.890625, 34.734383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536669, 0.796482, -0.278572,
		0.641637, 0.170807, -0.747748,
		-0.547986, -0.580036, -0.602719,
		40.970230, 37.716614, 34.553566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508415, 38.420097, 34.400772>,  <41.353817, 38.122639, 34.975471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508415, 38.420097, 34.400772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179062, 38.200264, 34.344204>,  <40.981449, 38.068363, 34.310265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179062, 38.200264, 34.344204>,  <41.508415, 38.420097, 34.400772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179062, 38.200264, 34.344204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407050, 0.745605, -0.527620,
		0.395416, -0.376867, -0.837626,
		-0.823381, -0.549585, -0.141421,
		40.932049, 38.035389, 34.301777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151608, 38.619862, 33.739613>,  <41.508415, 38.420097, 34.400772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151608, 38.619862, 33.739613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841190, 38.423241, 33.897667>,  <40.654942, 38.305267, 33.992500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841190, 38.423241, 33.897667>,  <41.151608, 38.619862, 33.739613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841190, 38.423241, 33.897667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609454, 0.745665, -0.269351,
		-0.162239, -0.449845, -0.878247,
		-0.776044, -0.491552, 0.395136,
		40.608376, 38.275776, 34.016209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535812, 38.648952, 33.242016>,  <41.151608, 38.619862, 33.739613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535812, 38.648952, 33.242016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411098, 38.591602, 33.617725>,  <40.336269, 38.557190, 33.843151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411098, 38.591602, 33.617725>,  <40.535812, 38.648952, 33.242016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411098, 38.591602, 33.617725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550326, 0.833103, -0.055503,
		-0.774554, -0.534211, -0.338652,
		-0.311783, -0.143379, 0.939273,
		40.317562, 38.548588, 33.899506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844986, 38.768143, 33.259285>,  <40.535812, 38.648952, 33.242016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844986, 38.768143, 33.259285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900875, 38.794048, 33.654514>,  <39.934410, 38.809593, 33.891651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900875, 38.794048, 33.654514>,  <39.844986, 38.768143, 33.259285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900875, 38.794048, 33.654514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576038, 0.816946, 0.027913,
		-0.805392, -0.573066, 0.151454,
		0.139725, 0.064763, 0.988070,
		39.942791, 38.813477, 33.950935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123501, 38.784611, 33.566345>,  <39.844986, 38.768143, 33.259285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123501, 38.784611, 33.566345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399662, 38.930218, 33.816410>,  <39.565361, 39.017582, 33.966450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399662, 38.930218, 33.816410>,  <39.123501, 38.784611, 33.566345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399662, 38.930218, 33.816410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529814, 0.842851, 0.094335,
		-0.492580, -0.396349, 0.774772,
		0.690407, 0.364018, 0.625163,
		39.606785, 39.039425, 34.003960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622673, 39.084030, 33.964375>,  <39.123501, 38.784611, 33.566345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622673, 39.084030, 33.964375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957809, 39.239716, 34.117493>,  <39.158890, 39.333126, 34.209362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957809, 39.239716, 34.117493>,  <38.622673, 39.084030, 33.964375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957809, 39.239716, 34.117493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509231, 0.809913, 0.291074,
		-0.196740, -0.438805, 0.876781,
		0.837841, 0.389218, 0.382795,
		39.209160, 39.356480, 34.232330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393837, 39.427910, 34.528809>,  <38.622673, 39.084030, 33.964375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393837, 39.427910, 34.528809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749424, 39.585724, 34.435791>,  <38.962776, 39.680412, 34.379982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749424, 39.585724, 34.435791>,  <38.393837, 39.427910, 34.528809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749424, 39.585724, 34.435791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330857, 0.904366, 0.269548,
		0.316647, -0.162683, 0.934489,
		0.888970, 0.394534, -0.232540,
		39.016113, 39.704082, 34.366028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551369, 39.848999, 35.095425>,  <38.393837, 39.427910, 34.528809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551369, 39.848999, 35.095425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773125, 39.983250, 34.790791>,  <38.906178, 40.063801, 34.608009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773125, 39.983250, 34.790791>,  <38.551369, 39.848999, 35.095425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773125, 39.983250, 34.790791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310229, 0.932468, 0.185100,
		0.772275, 0.133647, 0.621072,
		0.554392, 0.335623, -0.761582,
		38.939442, 40.083935, 34.562317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987179, 40.460217, 35.324093>,  <38.551369, 39.848999, 35.095425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987179, 40.460217, 35.324093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935242, 40.456905, 34.927494>,  <38.904079, 40.454918, 34.689533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935242, 40.456905, 34.927494>,  <38.987179, 40.460217, 35.324093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935242, 40.456905, 34.927494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502672, 0.862487, 0.058629,
		0.854670, 0.506012, -0.116149,
		-0.129844, -0.008276, -0.991500,
		38.896290, 40.454422, 34.630043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928749, 41.122753, 35.197220>,  <38.987179, 40.460217, 35.324093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928749, 41.122753, 35.197220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799187, 40.953125, 34.858932>,  <38.721447, 40.851349, 34.655960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799187, 40.953125, 34.858932>,  <38.928749, 41.122753, 35.197220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799187, 40.953125, 34.858932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487120, 0.841075, -0.235174,
		0.811047, 0.335794, -0.479005,
		-0.323909, -0.424070, -0.845723,
		38.702015, 40.825905, 34.605217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671719, 41.440472, 35.482891>,  <38.928749, 41.122753, 35.197220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671719, 41.440472, 35.482891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383251, 41.690273, 35.602829>,  <39.210171, 41.840153, 35.674793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383251, 41.690273, 35.602829>,  <39.671719, 41.440472, 35.482891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383251, 41.690273, 35.602829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080079, -0.354785, 0.931512,
		0.688111, 0.695793, 0.205852,
		-0.721173, 0.624500, 0.299849,
		39.166901, 41.877625, 35.692783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182106, 41.876488, 35.983749>,  <39.671719, 41.440472, 35.482891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182106, 41.876488, 35.983749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964569, 42.112186, 36.222755>,  <39.834045, 42.253605, 36.366158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964569, 42.112186, 36.222755>,  <40.182106, 41.876488, 35.983749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964569, 42.112186, 36.222755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736634, -0.005878, 0.676266,
		0.401998, 0.807934, -0.430860,
		-0.543846, 0.589244, 0.597515,
		39.801414, 42.288960, 36.402008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569500, 42.422974, 36.055405>,  <40.182106, 41.876488, 35.983749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569500, 42.422974, 36.055405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316315, 42.430050, 36.364994>,  <40.164402, 42.434296, 36.550747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316315, 42.430050, 36.364994>,  <40.569500, 42.422974, 36.055405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316315, 42.430050, 36.364994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774175, 0.010891, 0.632878,
		0.002765, 0.999784, -0.020588,
		-0.632966, 0.017688, 0.773977,
		40.126427, 42.435356, 36.597187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735508, 43.014450, 36.470928>,  <40.569500, 42.422974, 36.055405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735508, 43.014450, 36.470928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564919, 42.715958, 36.675381>,  <40.462566, 42.536861, 36.798054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564919, 42.715958, 36.675381>,  <40.735508, 43.014450, 36.470928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564919, 42.715958, 36.675381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766563, 0.001762, 0.642167,
		-0.480108, 0.665681, 0.571284,
		-0.426472, -0.746235, 0.511132,
		40.436977, 42.492088, 36.828720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034847, 43.126400, 37.229908>,  <40.735508, 43.014450, 36.470928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034847, 43.126400, 37.229908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865292, 42.769485, 37.292068>,  <40.763557, 42.555336, 37.329365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865292, 42.769485, 37.292068>,  <41.034847, 43.126400, 37.229908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865292, 42.769485, 37.292068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598834, -0.147380, 0.787195,
		-0.679498, 0.426743, 0.596803,
		-0.423887, -0.892284, 0.155404,
		40.738125, 42.501801, 37.338688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646694, 42.975780, 37.641983>,  <41.034847, 43.126400, 37.229908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646694, 42.975780, 37.641983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882359, 43.046921, 37.957264>,  <42.023758, 43.089607, 38.146431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882359, 43.046921, 37.957264>,  <41.646694, 42.975780, 37.641983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882359, 43.046921, 37.957264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522644, -0.827817, -0.203867,
		0.616228, 0.532058, -0.580670,
		0.589158, 0.177855, 0.788201,
		42.059105, 43.100277, 38.193726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427624, 43.114040, 37.464676>,  <41.646694, 42.975780, 37.641983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427624, 43.114040, 37.464676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343338, 42.934998, 37.812298>,  <42.292767, 42.827572, 38.020870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343338, 42.934998, 37.812298>,  <42.427624, 43.114040, 37.464676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343338, 42.934998, 37.812298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401483, -0.850200, -0.340547,
		0.891297, 0.277149, 0.358857,
		-0.210718, -0.447603, 0.869051,
		42.280121, 42.800716, 38.073013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105865, 42.935680, 37.819893>,  <42.427624, 43.114040, 37.464676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105865, 42.935680, 37.819893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800812, 42.682983, 37.875462>,  <42.617779, 42.531364, 37.908802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800812, 42.682983, 37.875462>,  <43.105865, 42.935680, 37.819893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800812, 42.682983, 37.875462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571034, -0.758435, -0.314159,
		0.303832, -0.160257, 0.939150,
		-0.762631, -0.631739, 0.138925,
		42.572021, 42.493462, 37.917141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299980, 42.395405, 38.339741>,  <43.105865, 42.935680, 37.819893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299980, 42.395405, 38.339741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010166, 42.250568, 38.105156>,  <42.836277, 42.163666, 37.964405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010166, 42.250568, 38.105156>,  <43.299980, 42.395405, 38.339741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010166, 42.250568, 38.105156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578242, -0.782386, -0.231318,
		-0.375081, -0.506714, 0.776244,
		-0.724535, -0.362094, -0.586461,
		42.792805, 42.141941, 37.929218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342468, 41.698151, 38.505901>,  <43.299980, 42.395405, 38.339741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342468, 41.698151, 38.505901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141476, 41.713562, 38.160408>,  <43.020882, 41.722809, 37.953114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141476, 41.713562, 38.160408>,  <43.342468, 41.698151, 38.505901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141476, 41.713562, 38.160408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545949, -0.760503, -0.351532,
		-0.670413, -0.648190, 0.361104,
		-0.502480, 0.038528, -0.863730,
		42.990730, 41.725121, 37.901291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016987, 40.957306, 38.432140>,  <43.342468, 41.698151, 38.505901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016987, 40.957306, 38.432140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094227, 41.162498, 38.097580>,  <43.140572, 41.285614, 37.896843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094227, 41.162498, 38.097580>,  <43.016987, 40.957306, 38.432140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094227, 41.162498, 38.097580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598248, -0.737213, -0.314030,
		-0.777695, -0.439735, -0.449247,
		0.193101, 0.512981, -0.836398,
		43.152157, 41.316391, 37.846661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802227, 40.484428, 37.879726>,  <43.016987, 40.957306, 38.432140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802227, 40.484428, 37.879726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061497, 40.754238, 37.738361>,  <43.217056, 40.916122, 37.653542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061497, 40.754238, 37.738361>,  <42.802227, 40.484428, 37.879726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061497, 40.754238, 37.738361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511820, -0.729529, -0.453682,
		-0.563841, 0.113181, -0.818091,
		0.648170, 0.674520, -0.353410,
		43.255947, 40.956593, 37.632339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895641, 40.235973, 37.142296>,  <42.802227, 40.484428, 37.879726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895641, 40.235973, 37.142296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190063, 40.491375, 37.232220>,  <43.366714, 40.644615, 37.286175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190063, 40.491375, 37.232220>,  <42.895641, 40.235973, 37.142296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190063, 40.491375, 37.232220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621806, -0.506477, -0.597360,
		-0.267553, 0.579479, -0.769818,
		0.736052, 0.638503, 0.224814,
		43.410881, 40.682926, 37.299664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286545, 40.157082, 36.569427>,  <42.895641, 40.235973, 37.142296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286545, 40.157082, 36.569427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523945, 40.378857, 36.802784>,  <43.666386, 40.511921, 36.942799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523945, 40.378857, 36.802784>,  <43.286545, 40.157082, 36.569427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523945, 40.378857, 36.802784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804809, -0.403435, -0.435342,
		-0.006008, 0.727899, -0.685658,
		0.593503, 0.554439, 0.583396,
		43.701996, 40.545189, 36.977802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784119, 40.479614, 36.086895>,  <43.286545, 40.157082, 36.569427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784119, 40.479614, 36.086895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.944466, 40.471973, 36.453270>,  <44.040672, 40.467388, 36.673096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.944466, 40.471973, 36.453270>,  <43.784119, 40.479614, 36.086895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.944466, 40.471973, 36.453270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762151, -0.547827, -0.344981,
		0.508364, 0.836374, -0.205049,
		0.400864, -0.019098, 0.915938,
		44.064724, 40.466244, 36.728050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529842, 40.647846, 35.959484>,  <43.784119, 40.479614, 36.086895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529842, 40.647846, 35.959484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530514, 40.460297, 36.312790>,  <44.530914, 40.347767, 36.524773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530514, 40.460297, 36.312790>,  <44.529842, 40.647846, 35.959484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530514, 40.460297, 36.312790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581501, -0.718117, -0.382313,
		0.813544, 0.514258, 0.271450,
		0.001675, -0.468877, 0.883262,
		44.531017, 40.319633, 36.577770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285763, 40.598145, 36.143295>,  <44.529842, 40.647846, 35.959484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285763, 40.598145, 36.143295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082504, 40.326900, 36.355694>,  <44.960548, 40.164154, 36.483135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082504, 40.326900, 36.355694>,  <45.285763, 40.598145, 36.143295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082504, 40.326900, 36.355694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523071, -0.732782, -0.435234,
		0.684242, 0.056589, 0.727056,
		-0.508144, -0.678107, 0.531000,
		44.930061, 40.123470, 36.514996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.841667, 40.307487, 36.523247>,  <45.285763, 40.598145, 36.143295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.841667, 40.307487, 36.523247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527050, 40.060703, 36.512604>,  <45.338280, 39.912632, 36.506218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527050, 40.060703, 36.512604>,  <45.841667, 40.307487, 36.523247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527050, 40.060703, 36.512604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617383, -0.784688, -0.055699,
		0.013483, -0.060239, 0.998093,
		-0.786547, -0.616957, -0.026611,
		45.291084, 39.875618, 36.504620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.961426, 39.898094, 37.077366>,  <45.841667, 40.307487, 36.523247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.961426, 39.898094, 37.077366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701061, 39.724892, 36.827946>,  <45.544842, 39.620968, 36.678295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701061, 39.724892, 36.827946>,  <45.961426, 39.898094, 37.077366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.701061, 39.724892, 36.827946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500547, -0.862339, 0.076321,
		-0.570760, -0.262438, 0.778048,
		-0.650911, -0.433010, -0.623552,
		45.505787, 39.594990, 36.640881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.794960, 39.325500, 37.508732>,  <45.961426, 39.898094, 37.077366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.794960, 39.325500, 37.508732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701393, 39.249115, 37.127403>,  <45.645252, 39.203285, 36.898605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701393, 39.249115, 37.127403>,  <45.794960, 39.325500, 37.508732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.701393, 39.249115, 37.127403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399779, -0.912687, 0.084728,
		-0.886262, -0.361298, 0.289832,
		-0.233914, -0.190960, -0.953320,
		45.631218, 39.191826, 36.841408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473022, 38.717842, 37.537434>,  <45.794960, 39.325500, 37.508732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473022, 38.717842, 37.537434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576305, 38.777061, 37.155563>,  <45.638275, 38.812595, 36.926441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576305, 38.777061, 37.155563>,  <45.473022, 38.717842, 37.537434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.576305, 38.777061, 37.155563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328890, -0.942633, -0.057229,
		-0.908384, -0.299207, -0.292085,
		0.258206, 0.148050, -0.954678,
		45.653767, 38.821476, 36.869160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181679, 38.162052, 37.198128>,  <45.473022, 38.717842, 37.537434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181679, 38.162052, 37.198128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491585, 38.283073, 36.976063>,  <45.677528, 38.355686, 36.842823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491585, 38.283073, 36.976063>,  <45.181679, 38.162052, 37.198128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.491585, 38.283073, 36.976063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317051, -0.945604, -0.072881,
		-0.547013, -0.119549, -0.828544,
		0.774762, 0.302558, -0.555160,
		45.724014, 38.373840, 36.809513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.197567, 37.604305, 36.691921>,  <45.181679, 38.162052, 37.198128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.197567, 37.604305, 36.691921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544907, 37.802345, 36.680305>,  <45.753311, 37.921169, 36.673336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544907, 37.802345, 36.680305>,  <45.197567, 37.604305, 36.691921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.544907, 37.802345, 36.680305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468989, -0.838781, -0.276578,
		-0.161289, 0.226549, -0.960552,
		0.868352, 0.495098, -0.029037,
		45.805412, 37.950874, 36.671593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.528431, 37.450226, 36.013367>,  <45.197567, 37.604305, 36.691921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.528431, 37.450226, 36.013367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822372, 37.567871, 36.257820>,  <45.998737, 37.638458, 36.404491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822372, 37.567871, 36.257820>,  <45.528431, 37.450226, 36.013367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.822372, 37.567871, 36.257820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551502, -0.783602, -0.286030,
		0.394762, 0.547233, -0.738037,
		0.734853, 0.294115, 0.611137,
		46.042828, 37.656105, 36.441162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.147240, 37.416599, 35.549225>,  <45.528431, 37.450226, 36.013367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.147240, 37.416599, 35.549225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.249966, 37.400059, 35.935455>,  <46.311600, 37.390133, 36.167194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.249966, 37.400059, 35.935455>,  <46.147240, 37.416599, 35.549225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.249966, 37.400059, 35.935455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664412, -0.717994, -0.207463,
		0.701858, 0.694819, -0.156912,
		0.256811, -0.041355, 0.965576,
		46.327007, 37.387653, 36.225128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.852570, 37.325634, 35.501152>,  <46.147240, 37.416599, 35.549225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.852570, 37.325634, 35.501152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.713402, 37.193275, 35.852028>,  <46.629902, 37.113861, 36.062553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.713402, 37.193275, 35.852028>,  <46.852570, 37.325634, 35.501152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.713402, 37.193275, 35.852028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411655, -0.894541, -0.174170,
		0.842312, 0.300500, 0.447450,
		-0.347924, -0.330901, 0.877185,
		46.609024, 37.094006, 36.115185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.449894, 37.247932, 35.759583>,  <46.852570, 37.325634, 35.501152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.449894, 37.247932, 35.759583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177658, 37.026302, 35.951332>,  <47.014317, 36.893326, 36.066383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177658, 37.026302, 35.951332>,  <47.449894, 37.247932, 35.759583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.177658, 37.026302, 35.951332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497362, -0.829830, -0.253007,
		0.537984, 0.066229, 0.840349,
		-0.680591, -0.554071, 0.479376,
		46.973480, 36.860081, 36.095146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.730934, 36.737480, 36.196037>,  <47.449894, 37.247932, 35.759583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.730934, 36.737480, 36.196037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.367680, 36.616623, 36.080112>,  <47.149727, 36.544109, 36.010559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.367680, 36.616623, 36.080112>,  <47.730934, 36.737480, 36.196037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.367680, 36.616623, 36.080112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359025, -0.918113, -0.167839,
		-0.215366, -0.256470, 0.942253,
		-0.908140, -0.302145, -0.289810,
		47.095238, 36.525978, 35.993168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.668995, 36.160961, 36.615372>,  <47.730934, 36.737480, 36.196037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.668995, 36.160961, 36.615372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.486088, 36.147083, 36.259911>,  <47.376343, 36.138756, 36.046635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.486088, 36.147083, 36.259911>,  <47.668995, 36.160961, 36.615372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.486088, 36.147083, 36.259911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527438, -0.815115, -0.239577,
		-0.716039, -0.578259, 0.391030,
		-0.457272, -0.034698, -0.888650,
		47.348907, 36.136673, 35.993317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.312725, 35.517056, 36.464348>,  <47.668995, 36.160961, 36.615372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.312725, 35.517056, 36.464348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.377411, 35.684467, 36.106873>,  <47.416222, 35.784916, 35.892387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.377411, 35.684467, 36.106873>,  <47.312725, 35.517056, 36.464348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.377411, 35.684467, 36.106873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290512, -0.885670, -0.362205,
		-0.943107, -0.201052, -0.264817,
		0.161718, 0.418530, -0.893689,
		47.425926, 35.810028, 35.838764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.026772, 35.105434, 36.005180>,  <47.312725, 35.517056, 36.464348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.026772, 35.105434, 36.005180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.298088, 35.303432, 35.787964>,  <47.460876, 35.422234, 35.657635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.298088, 35.303432, 35.787964>,  <47.026772, 35.105434, 36.005180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.298088, 35.303432, 35.787964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359409, -0.868103, -0.342376,
		-0.640894, 0.037055, -0.766734,
		0.678291, 0.494998, -0.543045,
		47.501575, 35.451931, 35.625050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.947353, 34.876087, 35.314049>,  <47.026772, 35.105434, 36.005180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.947353, 34.876087, 35.314049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.318707, 35.011372, 35.375648>,  <47.541519, 35.092545, 35.412609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.318707, 35.011372, 35.375648>,  <46.947353, 34.876087, 35.314049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.318707, 35.011372, 35.375648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370245, -0.877434, -0.305004,
		0.031966, 0.340178, -0.939818,
		0.928384, 0.338213, 0.153998,
		47.597221, 35.112835, 35.421848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.332546, 34.870308, 34.586708>,  <46.947353, 34.876087, 35.314049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.332546, 34.870308, 34.586708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531166, 34.833435, 34.931946>,  <47.650337, 34.811314, 35.139088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531166, 34.833435, 34.931946>,  <47.332546, 34.870308, 34.586708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.531166, 34.833435, 34.931946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470049, -0.807373, -0.356655,
		0.729718, 0.582797, -0.357574,
		0.496553, -0.092180, 0.863098,
		47.680134, 34.805782, 35.190876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.538761, 42.274849, 44.124084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.144058, 42.210102, 44.128345>,  <33.907238, 42.171253, 44.130901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.144058, 42.210102, 44.128345>,  <34.538761, 42.274849, 44.124084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144058, 42.210102, 44.128345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092176, -0.613523, -0.784279,
		0.133480, -0.772909, 0.620318,
		-0.986755, -0.161864, 0.010650,
		33.848030, 42.161545, 44.131542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401009, 41.597744, 44.187584>,  <34.538761, 42.274849, 44.124084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401009, 41.597744, 44.187584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.056515, 41.716972, 44.022934>,  <33.849819, 41.788509, 43.924145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.056515, 41.716972, 44.022934>,  <34.401009, 41.597744, 44.187584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056515, 41.716972, 44.022934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125866, -0.659609, -0.740995,
		-0.492376, -0.689979, 0.530561,
		-0.861233, 0.298068, -0.411621,
		33.798145, 41.806393, 43.899448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997551, 40.935371, 44.049023>,  <34.401009, 41.597744, 44.187584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997551, 40.935371, 44.049023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.853119, 41.230560, 43.820980>,  <33.766460, 41.407673, 43.684155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.853119, 41.230560, 43.820980>,  <33.997551, 40.935371, 44.049023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853119, 41.230560, 43.820980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189849, -0.656723, -0.729844,
		-0.913004, -0.155300, 0.377234,
		-0.361083, 0.737968, -0.570107,
		33.744793, 41.451950, 43.649948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314667, 40.625271, 43.722466>,  <33.997551, 40.935371, 44.049023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314667, 40.625271, 43.722466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.412384, 40.946259, 43.504711>,  <33.471016, 41.138851, 43.374058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.412384, 40.946259, 43.504711>,  <33.314667, 40.625271, 43.722466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412384, 40.946259, 43.504711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157603, -0.521075, -0.838834,
		-0.956808, 0.290720, -0.000824,
		0.244295, 0.802473, -0.544386,
		33.485672, 41.187000, 43.341396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802597, 40.566265, 43.173386>,  <33.314667, 40.625271, 43.722466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802597, 40.566265, 43.173386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.071095, 40.824055, 43.026920>,  <33.232193, 40.978729, 42.939041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.071095, 40.824055, 43.026920>,  <32.802597, 40.566265, 43.173386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071095, 40.824055, 43.026920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076628, -0.431013, -0.899086,
		-0.737262, 0.631568, -0.239932,
		0.671248, 0.644476, -0.366165,
		33.272469, 41.017399, 42.917072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483959, 40.738213, 42.546326>,  <32.802597, 40.566265, 43.173386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483959, 40.738213, 42.546326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.877022, 40.811539, 42.535099>,  <33.112858, 40.855534, 42.528362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.877022, 40.811539, 42.535099>,  <32.483959, 40.738213, 42.546326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877022, 40.811539, 42.535099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051274, -0.413988, -0.908837,
		-0.178219, 0.891633, -0.416207,
		0.982654, 0.183313, -0.028063,
		33.171818, 40.866531, 42.526680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595379, 40.873085, 41.867264>,  <32.483959, 40.738213, 42.546326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595379, 40.873085, 41.867264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.964001, 40.798820, 42.003654>,  <33.185173, 40.754261, 42.085487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.964001, 40.798820, 42.003654>,  <32.595379, 40.873085, 41.867264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964001, 40.798820, 42.003654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208433, -0.504367, -0.837956,
		0.327556, 0.843293, -0.426104,
		0.921555, -0.185663, 0.340978,
		33.240467, 40.743122, 42.105949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995106, 40.853653, 41.233200>,  <32.595379, 40.873085, 41.867264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995106, 40.853653, 41.233200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.218967, 40.680580, 41.515923>,  <33.353283, 40.576736, 41.685555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.218967, 40.680580, 41.515923>,  <32.995106, 40.853653, 41.233200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218967, 40.680580, 41.515923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464822, -0.542200, -0.699972,
		0.686096, 0.720280, -0.102323,
		0.559655, -0.432686, 0.706802,
		33.386864, 40.550774, 41.727962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663322, 40.966820, 41.007305>,  <32.995106, 40.853653, 41.233200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663322, 40.966820, 41.007305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.661659, 40.652477, 41.254665>,  <33.660660, 40.463871, 41.403080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.661659, 40.652477, 41.254665>,  <33.663322, 40.966820, 41.007305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661659, 40.652477, 41.254665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562119, -0.513291, -0.648503,
		0.827046, 0.344916, 0.443878,
		-0.004159, -0.785854, 0.618399,
		33.660412, 40.416721, 41.440186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216637, 40.585678, 40.855366>,  <33.663322, 40.966820, 41.007305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216637, 40.585678, 40.855366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.032764, 40.294956, 41.059502>,  <33.922440, 40.120522, 41.181984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.032764, 40.294956, 41.059502>,  <34.216637, 40.585678, 40.855366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032764, 40.294956, 41.059502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352957, -0.676832, -0.646003,
		0.814933, -0.116827, 0.567658,
		-0.459680, -0.726808, 0.510337,
		33.894859, 40.076912, 41.212605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671646, 40.053844, 40.825939>,  <34.216637, 40.585678, 40.855366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671646, 40.053844, 40.825939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.336147, 39.880035, 40.957207>,  <34.134850, 39.775749, 41.035965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.336147, 39.880035, 40.957207>,  <34.671646, 40.053844, 40.825939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336147, 39.880035, 40.957207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288644, -0.865826, -0.408693,
		0.461721, -0.248067, 0.851632,
		-0.838748, -0.434520, 0.328167,
		34.084522, 39.749680, 41.055656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843689, 39.424713, 41.236195>,  <34.671646, 40.053844, 40.825939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843689, 39.424713, 41.236195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.480530, 39.382099, 41.074028>,  <34.262634, 39.356533, 40.976727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.480530, 39.382099, 41.074028>,  <34.843689, 39.424713, 41.236195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480530, 39.382099, 41.074028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331891, -0.773468, -0.539996,
		-0.256051, -0.624819, 0.737590,
		-0.907902, -0.106533, -0.405419,
		34.208160, 39.350140, 40.952404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709026, 38.689781, 41.270260>,  <34.843689, 39.424713, 41.236195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709026, 38.689781, 41.270260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.445976, 38.810455, 40.994137>,  <34.288147, 38.882862, 40.828465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.445976, 38.810455, 40.994137>,  <34.709026, 38.689781, 41.270260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445976, 38.810455, 40.994137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295852, -0.739272, -0.604937,
		-0.692822, -0.602048, 0.396908,
		-0.657624, 0.301687, -0.690301,
		34.248692, 38.900963, 40.787045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594601, 38.076920, 40.937679>,  <34.709026, 38.689781, 41.270260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594601, 38.076920, 40.937679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.458401, 38.360321, 40.690430>,  <34.376678, 38.530361, 40.542080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.458401, 38.360321, 40.690430>,  <34.594601, 38.076920, 40.937679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458401, 38.360321, 40.690430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379609, -0.497860, -0.779764,
		-0.860206, -0.500158, -0.099432,
		-0.340502, 0.708503, -0.618127,
		34.356251, 38.572872, 40.504993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277714, 37.740284, 40.441311>,  <34.594601, 38.076920, 40.937679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277714, 37.740284, 40.441311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.357361, 38.091969, 40.268185>,  <34.405151, 38.302979, 40.164307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.357361, 38.091969, 40.268185>,  <34.277714, 37.740284, 40.441311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357361, 38.091969, 40.268185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407093, -0.475964, -0.779572,
		-0.891418, -0.020969, -0.452697,
		0.199121, 0.879215, -0.432819,
		34.417095, 38.355732, 40.138340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104061, 37.644871, 39.704494>,  <34.277714, 37.740284, 40.441311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104061, 37.644871, 39.704494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.358418, 37.949894, 39.752071>,  <34.511032, 38.132908, 39.780617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.358418, 37.949894, 39.752071>,  <34.104061, 37.644871, 39.704494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358418, 37.949894, 39.752071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506673, -0.296224, -0.809650,
		-0.582171, 0.575115, -0.574734,
		0.635892, 0.762557, 0.118942,
		34.549187, 38.178661, 39.787754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242748, 37.890987, 39.087646>,  <34.104061, 37.644871, 39.704494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242748, 37.890987, 39.087646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.555965, 38.009510, 39.306385>,  <34.743896, 38.080624, 39.437630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.555965, 38.009510, 39.306385>,  <34.242748, 37.890987, 39.087646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555965, 38.009510, 39.306385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621617, -0.343448, -0.704014,
		-0.020788, 0.891206, -0.453123,
		0.783045, 0.296304, 0.546849,
		34.790878, 38.098400, 39.470440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619251, 38.221527, 38.637394>,  <34.242748, 37.890987, 39.087646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619251, 38.221527, 38.637394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.886852, 38.129375, 38.920055>,  <35.047413, 38.074085, 39.089653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.886852, 38.129375, 38.920055>,  <34.619251, 38.221527, 38.637394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886852, 38.129375, 38.920055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631331, -0.325610, -0.703845,
		0.392246, 0.917008, -0.072388,
		0.669002, -0.230379, 0.706655,
		35.087551, 38.060261, 39.132053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264641, 38.561916, 38.425743>,  <34.619251, 38.221527, 38.637394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264641, 38.561916, 38.425743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321198, 38.257477, 38.678959>,  <35.355133, 38.074814, 38.830887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321198, 38.257477, 38.678959>,  <35.264641, 38.561916, 38.425743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321198, 38.257477, 38.678959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632202, -0.422662, -0.649367,
		0.761793, 0.492026, 0.421405,
		0.141394, -0.761096, 0.633041,
		35.363617, 38.029148, 38.868870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930683, 38.348637, 38.212585>,  <35.264641, 38.561916, 38.425743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930683, 38.348637, 38.212585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.786873, 38.047626, 38.433292>,  <35.700588, 37.867020, 38.565716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.786873, 38.047626, 38.433292>,  <35.930683, 38.348637, 38.212585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786873, 38.047626, 38.433292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607045, -0.637695, -0.474175,
		0.708690, 0.164474, 0.686081,
		-0.359521, -0.752525, 0.551771,
		35.679016, 37.821869, 38.598824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531364, 38.090488, 38.465481>,  <35.930683, 38.348637, 38.212585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531364, 38.090488, 38.465481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.242611, 37.816998, 38.508202>,  <36.069359, 37.652905, 38.533833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.242611, 37.816998, 38.508202>,  <36.531364, 38.090488, 38.465481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242611, 37.816998, 38.508202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537382, -0.651097, -0.535997,
		0.436012, -0.329534, 0.837437,
		-0.721882, -0.683725, 0.106801,
		36.026047, 37.611881, 38.540241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945496, 37.606995, 38.676979>,  <36.531364, 38.090488, 38.465481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945496, 37.606995, 38.676979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611908, 37.438076, 38.534904>,  <36.411755, 37.336723, 38.449661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611908, 37.438076, 38.534904>,  <36.945496, 37.606995, 38.676979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611908, 37.438076, 38.534904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545280, -0.729388, -0.413113,
		-0.084612, -0.538200, 0.838559,
		-0.833972, -0.422295, -0.355185,
		36.361717, 37.311386, 38.428349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157394, 36.795254, 38.654957>,  <36.945496, 37.606995, 38.676979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157394, 36.795254, 38.654957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.556210, 36.791691, 38.685532>,  <37.795498, 36.789555, 38.703876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.556210, 36.791691, 38.685532>,  <37.157394, 36.795254, 38.654957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556210, 36.791691, 38.685532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058377, 0.559597, 0.826706,
		-0.050134, -0.828717, 0.557418,
		0.997035, -0.008906, 0.076433,
		37.855320, 36.789021, 38.708462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290352, 36.763618, 39.476154>,  <37.157394, 36.795254, 38.654957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290352, 36.763618, 39.476154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620888, 36.892113, 39.291126>,  <37.819210, 36.969208, 39.180111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620888, 36.892113, 39.291126>,  <37.290352, 36.763618, 39.476154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620888, 36.892113, 39.291126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186144, 0.619410, 0.762680,
		0.531521, -0.716337, 0.452047,
		0.826339, 0.321235, -0.462572,
		37.868790, 36.988483, 39.152355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907227, 36.750984, 40.012676>,  <37.290352, 36.763618, 39.476154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907227, 36.750984, 40.012676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.030636, 37.000336, 39.725285>,  <38.104683, 37.149948, 39.552849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.030636, 37.000336, 39.725285>,  <37.907227, 36.750984, 40.012676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030636, 37.000336, 39.725285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141481, 0.716850, 0.682722,
		0.940636, -0.312286, 0.132968,
		0.308522, 0.623381, -0.718477,
		38.123192, 37.187351, 39.509743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549118, 37.122009, 40.299980>,  <37.907227, 36.750984, 40.012676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549118, 37.122009, 40.299980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.419537, 37.320995, 39.978092>,  <38.341789, 37.440388, 39.784958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.419537, 37.320995, 39.978092>,  <38.549118, 37.122009, 40.299980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419537, 37.320995, 39.978092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134276, 0.866159, 0.481393,
		0.936497, 0.047892, -0.347390,
		-0.323950, 0.497469, -0.804724,
		38.322353, 37.470238, 39.736675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089836, 37.661583, 40.210953>,  <38.549118, 37.122009, 40.299980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089836, 37.661583, 40.210953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.749096, 37.790070, 40.045464>,  <38.544651, 37.867161, 39.946171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.749096, 37.790070, 40.045464>,  <39.089836, 37.661583, 40.210953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749096, 37.790070, 40.045464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080742, 0.860965, 0.502215,
		0.517525, 0.394407, -0.759349,
		-0.851850, 0.321220, -0.413726,
		38.493542, 37.886436, 39.921345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231148, 38.441185, 40.064232>,  <39.089836, 37.661583, 40.210953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231148, 38.441185, 40.064232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832485, 38.408703, 40.060783>,  <38.593288, 38.389214, 40.058712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832485, 38.408703, 40.060783>,  <39.231148, 38.441185, 40.064232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832485, 38.408703, 40.060783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072584, 0.832508, 0.549237,
		-0.037422, 0.548029, -0.835622,
		-0.996660, -0.081206, -0.008624,
		38.533485, 38.384342, 40.058197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978443, 39.151005, 39.841118>,  <39.231148, 38.441185, 40.064232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978443, 39.151005, 39.841118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.700111, 38.943970, 40.040291>,  <38.533112, 38.819748, 40.159794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.700111, 38.943970, 40.040291>,  <38.978443, 39.151005, 39.841118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700111, 38.943970, 40.040291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215894, 0.811963, 0.542315,
		-0.684994, 0.269856, -0.676728,
		-0.695826, -0.517584, 0.497929,
		38.491364, 38.788696, 40.189671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416424, 39.640968, 39.923683>,  <38.978443, 39.151005, 39.841118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416424, 39.640968, 39.923683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.308811, 39.370499, 40.198025>,  <38.244244, 39.208214, 40.362633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.308811, 39.370499, 40.198025>,  <38.416424, 39.640968, 39.923683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308811, 39.370499, 40.198025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300876, 0.735480, 0.607078,
		-0.914928, -0.043033, -0.401316,
		-0.269035, -0.676179, 0.685859,
		38.228100, 39.167645, 40.403782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690060, 39.812565, 40.128910>,  <38.416424, 39.640968, 39.923683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690060, 39.812565, 40.128910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.857597, 39.600254, 40.423622>,  <37.958118, 39.472866, 40.600449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.857597, 39.600254, 40.423622>,  <37.690060, 39.812565, 40.128910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857597, 39.600254, 40.423622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215151, 0.730269, 0.648395,
		-0.882201, -0.430096, 0.191673,
		0.418845, -0.530777, 0.736780,
		37.983250, 39.441021, 40.644657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252071, 39.882450, 40.657928>,  <37.690060, 39.812565, 40.128910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252071, 39.882450, 40.657928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.562336, 39.740734, 40.866859>,  <37.748497, 39.655704, 40.992218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.562336, 39.740734, 40.866859>,  <37.252071, 39.882450, 40.657928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562336, 39.740734, 40.866859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084833, 0.761548, 0.642533,
		-0.625420, -0.542699, 0.560649,
		0.775663, -0.354291, 0.522326,
		37.795036, 39.634445, 41.023556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053318, 39.783348, 41.308750>,  <37.252071, 39.882450, 40.657928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053318, 39.783348, 41.308750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.448315, 39.819004, 41.360764>,  <37.685314, 39.840397, 41.391972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.448315, 39.819004, 41.360764>,  <37.053318, 39.783348, 41.308750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448315, 39.819004, 41.360764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151353, 0.766865, 0.623707,
		-0.044118, -0.635588, 0.770767,
		0.987495, 0.089141, 0.130031,
		37.744564, 39.845745, 41.399773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258587, 39.701172, 42.085121>,  <37.053318, 39.783348, 41.308750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258587, 39.701172, 42.085121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.556522, 39.908829, 41.917454>,  <37.735283, 40.033421, 41.816853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.556522, 39.908829, 41.917454>,  <37.258587, 39.701172, 42.085121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556522, 39.908829, 41.917454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110034, 0.715182, 0.690223,
		0.658104, -0.467985, 0.589821,
		0.744844, 0.519138, -0.419170,
		37.779976, 40.064571, 41.791702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682983, 40.009304, 42.619835>,  <37.258587, 39.701172, 42.085121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682983, 40.009304, 42.619835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.709930, 40.227905, 42.285938>,  <37.726097, 40.359066, 42.085598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.709930, 40.227905, 42.285938>,  <37.682983, 40.009304, 42.619835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709930, 40.227905, 42.285938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064702, 0.832491, 0.550248,
		0.995628, -0.091078, 0.020722,
		0.067367, 0.546502, -0.834744,
		37.730141, 40.391857, 42.035515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226398, 40.425491, 42.711731>,  <37.682983, 40.009304, 42.619835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226398, 40.425491, 42.711731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980316, 40.591431, 42.443573>,  <37.832668, 40.690994, 42.282681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980316, 40.591431, 42.443573>,  <38.226398, 40.425491, 42.711731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980316, 40.591431, 42.443573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162464, 0.765388, 0.622725,
		0.771445, 0.492018, -0.403473,
		-0.615206, 0.414848, -0.670390,
		37.795753, 40.715885, 42.242455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424313, 41.136784, 42.620243>,  <38.226398, 40.425491, 42.711731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424313, 41.136784, 42.620243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.039474, 41.103840, 42.516258>,  <37.808571, 41.084072, 42.453865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.039474, 41.103840, 42.516258>,  <38.424313, 41.136784, 42.620243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039474, 41.103840, 42.516258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200366, 0.860156, 0.469025,
		0.184984, 0.503337, -0.844058,
		-0.962099, -0.082358, -0.259966,
		37.750843, 41.079132, 42.438267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336845, 41.824120, 42.575726>,  <38.424313, 41.136784, 42.620243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336845, 41.824120, 42.575726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969414, 41.666027, 42.576626>,  <37.748955, 41.571171, 42.577164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969414, 41.666027, 42.576626>,  <38.336845, 41.824120, 42.575726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969414, 41.666027, 42.576626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370810, 0.863758, 0.341207,
		-0.136798, 0.312592, -0.939985,
		-0.918578, -0.395232, 0.002248,
		37.693840, 41.547459, 42.577301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865715, 42.230480, 42.318161>,  <38.336845, 41.824120, 42.575726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865715, 42.230480, 42.318161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.627373, 41.987801, 42.528633>,  <37.484367, 41.842194, 42.654919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.627373, 41.987801, 42.528633>,  <37.865715, 42.230480, 42.318161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627373, 41.987801, 42.528633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410339, 0.793216, 0.449922,
		-0.690346, 0.052175, -0.721596,
		-0.595856, -0.606701, 0.526184,
		37.448616, 41.805790, 42.686489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253304, 42.584717, 42.367142>,  <37.865715, 42.230480, 42.318161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253304, 42.584717, 42.367142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.199100, 42.290283, 42.632420>,  <37.166576, 42.113625, 42.791584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.199100, 42.290283, 42.632420>,  <37.253304, 42.584717, 42.367142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199100, 42.290283, 42.632420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474438, 0.635841, 0.608781,
		-0.869796, -0.232147, -0.435387,
		-0.135510, -0.736080, 0.663192,
		37.158447, 42.069458, 42.831379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.548229, 42.683659, 42.621380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.722309, 42.450584, 42.895920>,  <36.826756, 42.310738, 43.060642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.722309, 42.450584, 42.895920>,  <36.548229, 42.683659, 42.621380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722309, 42.450584, 42.895920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494852, 0.482045, 0.723017,
		-0.752146, -0.654298, -0.078560,
		0.435199, -0.582690, 0.686349,
		36.852867, 42.275776, 43.101826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061253, 42.268303, 43.099781>,  <36.548229, 42.683659, 42.621380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061253, 42.268303, 43.099781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.408417, 42.324841, 43.290253>,  <36.616714, 42.358765, 43.404537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.408417, 42.324841, 43.290253>,  <36.061253, 42.268303, 43.099781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408417, 42.324841, 43.290253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477204, 0.503333, 0.720369,
		-0.137857, -0.852453, 0.504300,
		0.867912, 0.141346, 0.476182,
		36.668789, 42.367245, 43.433105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809841, 42.105671, 43.716450>,  <36.061253, 42.268303, 43.099781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809841, 42.105671, 43.716450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.160934, 42.280945, 43.793995>,  <36.371590, 42.386108, 43.840523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.160934, 42.280945, 43.793995>,  <35.809841, 42.105671, 43.716450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160934, 42.280945, 43.793995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351745, 0.314518, 0.881677,
		0.325373, -0.842061, 0.430193,
		0.877729, 0.438192, 0.193855,
		36.424255, 42.412399, 43.852154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689861, 42.118904, 44.366829>,  <35.809841, 42.105671, 43.716450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689861, 42.118904, 44.366829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.983398, 42.377087, 44.282097>,  <36.159519, 42.531994, 44.231258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.983398, 42.377087, 44.282097>,  <35.689861, 42.118904, 44.366829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983398, 42.377087, 44.282097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279384, 0.570985, 0.771959,
		0.619214, -0.507312, 0.599340,
		0.733838, 0.645454, -0.211827,
		36.203548, 42.570724, 44.218548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028511, 42.226944, 44.987316>,  <35.689861, 42.118904, 44.366829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028511, 42.226944, 44.987316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.123123, 42.539291, 44.756039>,  <36.179890, 42.726700, 44.617271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.123123, 42.539291, 44.756039>,  <36.028511, 42.226944, 44.987316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123123, 42.539291, 44.756039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267168, 0.624408, 0.733986,
		0.934171, -0.019133, 0.356311,
		0.236527, 0.780864, -0.578192,
		36.194080, 42.773552, 44.582581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667610, 42.619137, 45.242855>,  <36.028511, 42.226944, 44.987316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667610, 42.619137, 45.242855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.453796, 42.878544, 45.026081>,  <36.325508, 43.034187, 44.896015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.453796, 42.878544, 45.026081>,  <36.667610, 42.619137, 45.242855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453796, 42.878544, 45.026081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028090, 0.627246, 0.778315,
		0.844678, 0.431261, -0.317069,
		-0.534537, 0.648519, -0.541935,
		36.293434, 43.073101, 44.863499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865486, 43.335213, 45.516834>,  <36.667610, 42.619137, 45.242855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865486, 43.335213, 45.516834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.516666, 43.411045, 45.336349>,  <36.307373, 43.456543, 45.228058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.516666, 43.411045, 45.336349>,  <36.865486, 43.335213, 45.516834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516666, 43.411045, 45.336349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291224, 0.539949, 0.789711,
		0.393342, 0.820070, -0.415653,
		-0.872050, 0.189579, -0.451209,
		36.255051, 43.467918, 45.200985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767128, 44.079559, 45.694149>,  <36.865486, 43.335213, 45.516834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767128, 44.079559, 45.694149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406776, 43.976856, 45.554150>,  <36.190567, 43.915234, 45.470150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406776, 43.976856, 45.554150>,  <36.767128, 44.079559, 45.694149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406776, 43.976856, 45.554150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430115, 0.636718, 0.639993,
		0.058531, 0.727095, -0.684038,
		-0.900875, -0.256755, -0.350002,
		36.136513, 43.899830, 45.449150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428154, 44.711845, 45.422138>,  <36.767128, 44.079559, 45.694149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428154, 44.711845, 45.422138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.156307, 44.436882, 45.524574>,  <35.993198, 44.271904, 45.586037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.156307, 44.436882, 45.524574>,  <36.428154, 44.711845, 45.422138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156307, 44.436882, 45.524574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342346, 0.605973, 0.718050,
		-0.648783, 0.400326, -0.647162,
		-0.679617, -0.687413, 0.256095,
		35.952423, 44.230659, 45.601402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817616, 45.032467, 45.587677>,  <36.428154, 44.711845, 45.422138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817616, 45.032467, 45.587677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.780159, 44.692581, 45.795223>,  <35.757683, 44.488651, 45.919750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.780159, 44.692581, 45.795223>,  <35.817616, 45.032467, 45.587677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780159, 44.692581, 45.795223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125965, 0.527077, 0.840430,
		-0.987605, 0.013342, -0.156392,
		-0.093643, -0.849713, 0.518863,
		35.752068, 44.437668, 45.950882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283970, 45.186237, 46.032944>,  <35.817616, 45.032467, 45.587677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283970, 45.186237, 46.032944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453430, 44.848995, 46.165424>,  <35.555107, 44.646652, 46.244915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453430, 44.848995, 46.165424>,  <35.283970, 45.186237, 46.032944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453430, 44.848995, 46.165424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054683, 0.341168, 0.938410,
		-0.904174, -0.415669, 0.098432,
		0.423650, -0.843104, 0.331205,
		35.580524, 44.596066, 46.264786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807747, 44.900146, 46.588760>,  <35.283970, 45.186237, 46.032944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807747, 44.900146, 46.588760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.160934, 44.737595, 46.682758>,  <35.372849, 44.640064, 46.739155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.160934, 44.737595, 46.682758>,  <34.807747, 44.900146, 46.588760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160934, 44.737595, 46.682758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059624, 0.399446, 0.914816,
		-0.465633, -0.821764, 0.328468,
		0.882967, -0.406383, 0.234992,
		35.425823, 44.615681, 46.753258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694332, 44.722740, 47.270992>,  <34.807747, 44.900146, 46.588760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694332, 44.722740, 47.270992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.093330, 44.712627, 47.244583>,  <35.332729, 44.706558, 47.228737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.093330, 44.712627, 47.244583>,  <34.694332, 44.722740, 47.270992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093330, 44.712627, 47.244583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070024, 0.481774, 0.873493,
		0.009725, -0.875931, 0.482339,
		0.997498, -0.025281, -0.066021,
		35.392578, 44.705044, 47.224777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929726, 44.556801, 47.920002>,  <34.694332, 44.722740, 47.270992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929726, 44.556801, 47.920002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.265732, 44.705517, 47.761944>,  <35.467335, 44.794746, 47.667107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.265732, 44.705517, 47.761944>,  <34.929726, 44.556801, 47.920002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265732, 44.705517, 47.761944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241164, 0.396540, 0.885774,
		0.486016, -0.839361, 0.243438,
		0.840017, 0.371792, -0.395148,
		35.517738, 44.817055, 47.643398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427666, 44.421516, 48.374348>,  <34.929726, 44.556801, 47.920002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427666, 44.421516, 48.374348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.588379, 44.711475, 48.150528>,  <35.684807, 44.885452, 48.016235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.588379, 44.711475, 48.150528>,  <35.427666, 44.421516, 48.374348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588379, 44.711475, 48.150528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173930, 0.539506, 0.823821,
		0.899066, -0.428319, 0.090682,
		0.401781, 0.724898, -0.559549,
		35.708912, 44.928944, 47.982662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117085, 44.559513, 48.618454>,  <35.427666, 44.421516, 48.374348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117085, 44.559513, 48.618454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.004005, 44.892078, 48.427105>,  <35.936157, 45.091618, 48.312294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.004005, 44.892078, 48.427105>,  <36.117085, 44.559513, 48.618454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004005, 44.892078, 48.427105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313665, 0.551423, 0.773012,
		0.906475, 0.068478, -0.416669,
		-0.282696, 0.831410, -0.478372,
		35.919197, 45.141502, 48.283592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679352, 44.905560, 48.717503>,  <36.117085, 44.559513, 48.618454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679352, 44.905560, 48.717503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.408123, 45.187057, 48.632694>,  <36.245384, 45.355957, 48.581810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.408123, 45.187057, 48.632694>,  <36.679352, 44.905560, 48.717503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408123, 45.187057, 48.632694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406401, 0.599350, 0.689651,
		0.612414, 0.381470, -0.692408,
		-0.678076, 0.703747, -0.212021,
		36.204700, 45.398182, 48.569088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963100, 45.628689, 48.765594>,  <36.679352, 44.905560, 48.717503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963100, 45.628689, 48.765594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.582462, 45.748966, 48.791042>,  <36.354080, 45.821133, 48.806313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.582462, 45.748966, 48.791042>,  <36.963100, 45.628689, 48.765594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582462, 45.748966, 48.791042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219693, 0.520702, 0.824987,
		0.214943, 0.799031, -0.561559,
		-0.951596, 0.300695, 0.063621,
		36.296982, 45.839176, 48.810127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840965, 46.424816, 48.756538>,  <36.963100, 45.628689, 48.765594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840965, 46.424816, 48.756538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.549065, 46.232109, 48.950600>,  <36.373924, 46.116486, 49.067036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.549065, 46.232109, 48.950600>,  <36.840965, 46.424816, 48.756538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549065, 46.232109, 48.950600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151671, 0.577834, 0.801937,
		-0.666682, 0.658795, -0.348603,
		-0.729747, -0.481764, 0.485152,
		36.330139, 46.087578, 49.096146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520172, 46.963261, 49.154114>,  <36.840965, 46.424816, 48.756538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520172, 46.963261, 49.154114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379040, 46.622505, 49.308929>,  <36.294361, 46.418053, 49.401821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379040, 46.622505, 49.308929>,  <36.520172, 46.963261, 49.154114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379040, 46.622505, 49.308929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124603, 0.367182, 0.921765,
		-0.927355, 0.373450, -0.023404,
		-0.352827, -0.851887, 0.387041,
		36.273193, 46.366940, 49.425041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051281, 47.225533, 49.692398>,  <36.520172, 46.963261, 49.154114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051281, 47.225533, 49.692398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.154247, 46.846851, 49.769840>,  <36.216026, 46.619640, 49.816307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.154247, 46.846851, 49.769840>,  <36.051281, 47.225533, 49.692398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154247, 46.846851, 49.769840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236459, 0.255983, 0.937315,
		-0.936923, -0.195498, 0.289751,
		0.257415, -0.946707, 0.193609,
		36.231472, 46.562840, 49.827923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684586, 47.078777, 50.339642>,  <36.051281, 47.225533, 49.692398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684586, 47.078777, 50.339642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.003281, 46.845371, 50.276749>,  <36.194496, 46.705330, 50.239014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.003281, 46.845371, 50.276749>,  <35.684586, 47.078777, 50.339642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003281, 46.845371, 50.276749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335984, 0.211443, 0.917827,
		-0.502317, -0.784096, 0.364515,
		0.796739, -0.583511, -0.157233,
		36.242302, 46.670319, 50.229580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765694, 46.445553, 50.850597>,  <35.684586, 47.078777, 50.339642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765694, 46.445553, 50.850597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130177, 46.543621, 50.718178>,  <36.348866, 46.602463, 50.638725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130177, 46.543621, 50.718178>,  <35.765694, 46.445553, 50.850597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130177, 46.543621, 50.718178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348497, -0.030281, 0.936821,
		0.219660, -0.969006, -0.113035,
		0.911208, 0.245175, -0.331044,
		36.403538, 46.617172, 50.618866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729050, 45.587170, 50.930233>,  <35.765694, 46.445553, 50.850597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729050, 45.587170, 50.930233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447472, 45.413792, 51.155300>,  <35.278526, 45.309765, 51.290340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447472, 45.413792, 51.155300>,  <35.729050, 45.587170, 50.930233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447472, 45.413792, 51.155300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332421, -0.499020, -0.800297,
		0.627664, -0.750405, 0.207196,
		-0.703942, -0.433441, 0.562667,
		35.236290, 45.283760, 51.324100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530994, 44.846169, 50.781712>,  <35.729050, 45.587170, 50.930233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530994, 44.846169, 50.781712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.205048, 44.961472, 50.982868>,  <35.009480, 45.030655, 51.103561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.205048, 44.961472, 50.982868>,  <35.530994, 44.846169, 50.781712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205048, 44.961472, 50.982868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572092, -0.260353, -0.777771,
		-0.093272, -0.921479, 0.377064,
		-0.814869, 0.288259, 0.502887,
		34.960587, 45.047951, 51.133736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043621, 44.325035, 50.710022>,  <35.530994, 44.846169, 50.781712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043621, 44.325035, 50.710022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.821110, 44.634048, 50.832489>,  <34.687603, 44.819458, 50.905968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.821110, 44.634048, 50.832489>,  <35.043621, 44.325035, 50.710022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821110, 44.634048, 50.832489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641940, -0.165530, -0.748674,
		-0.527698, -0.613015, 0.588003,
		-0.556281, 0.772536, 0.306169,
		34.654224, 44.865810, 50.924339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424950, 44.022469, 50.887100>,  <35.043621, 44.325035, 50.710022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424950, 44.022469, 50.887100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.360783, 44.404446, 50.787212>,  <34.322281, 44.633633, 50.727280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.360783, 44.404446, 50.787212>,  <34.424950, 44.022469, 50.887100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360783, 44.404446, 50.787212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793473, -0.275240, -0.542810,
		-0.587083, 0.111067, 0.801872,
		-0.160419, 0.954938, -0.249718,
		34.312656, 44.690926, 50.712296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739105, 43.984268, 50.682892>,  <34.424950, 44.022469, 50.887100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739105, 43.984268, 50.682892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833485, 44.339218, 50.524456>,  <33.890114, 44.552189, 50.429394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833485, 44.339218, 50.524456>,  <33.739105, 43.984268, 50.682892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833485, 44.339218, 50.524456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725465, -0.110340, -0.679357,
		-0.646552, 0.447642, 0.617728,
		0.235948, 0.887379, -0.396089,
		33.904270, 44.605431, 50.405628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147274, 44.379562, 50.591202>,  <33.739105, 43.984268, 50.682892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147274, 44.379562, 50.591202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.395882, 44.558937, 50.334263>,  <33.545048, 44.666561, 50.180099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.395882, 44.558937, 50.334263>,  <33.147274, 44.379562, 50.591202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395882, 44.558937, 50.334263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666171, -0.128920, -0.734571,
		-0.412223, 0.884467, 0.218611,
		0.621521, 0.448439, -0.642350,
		33.582336, 44.693470, 50.141560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709705, 44.746468, 49.972908>,  <33.147274, 44.379562, 50.591202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709705, 44.746468, 49.972908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.069775, 44.696453, 49.806026>,  <33.285816, 44.666443, 49.705898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.069775, 44.696453, 49.806026>,  <32.709705, 44.746468, 49.972908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069775, 44.696453, 49.806026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435345, -0.286661, -0.853405,
		-0.012886, 0.949837, -0.312479,
		0.900171, -0.125039, -0.417201,
		33.339825, 44.658943, 49.680866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611767, 44.882271, 49.216511>,  <32.709705, 44.746468, 49.972908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611767, 44.882271, 49.216511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.959251, 44.684925, 49.234070>,  <33.167744, 44.566517, 49.244606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.959251, 44.684925, 49.234070>,  <32.611767, 44.882271, 49.216511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959251, 44.684925, 49.234070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177854, -0.393423, -0.901990,
		0.462278, 0.775765, -0.429520,
		0.868716, -0.493362, 0.043898,
		33.219868, 44.536915, 49.247238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024387, 45.181095, 48.679863>,  <32.611767, 44.882271, 49.216511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024387, 45.181095, 48.679863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.180290, 44.820889, 48.756977>,  <33.273834, 44.604767, 48.803246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.180290, 44.820889, 48.756977>,  <33.024387, 45.181095, 48.679863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180290, 44.820889, 48.756977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029236, -0.221330, -0.974761,
		0.920452, 0.374286, -0.112593,
		0.389760, -0.900513, 0.192781,
		33.297218, 44.550735, 48.814812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747501, 45.150841, 48.488472>,  <33.024387, 45.181095, 48.679863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747501, 45.150841, 48.488472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.613052, 44.774242, 48.478703>,  <33.532383, 44.548283, 48.472843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.613052, 44.774242, 48.478703>,  <33.747501, 45.150841, 48.488472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613052, 44.774242, 48.478703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273586, -0.072795, -0.959089,
		0.901204, -0.329057, 0.282049,
		-0.336127, -0.941500, -0.024422,
		33.512215, 44.491791, 48.471375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166065, 44.805069, 47.995014>,  <33.747501, 45.150841, 48.488472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166065, 44.805069, 47.995014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882172, 44.529968, 48.056046>,  <33.711834, 44.364910, 48.092667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882172, 44.529968, 48.056046>,  <34.166065, 44.805069, 47.995014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882172, 44.529968, 48.056046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112849, -0.324787, -0.939031,
		0.695373, -0.649243, 0.308124,
		-0.709733, -0.687748, 0.152581,
		33.669250, 44.323643, 48.101818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371361, 44.217056, 47.641926>,  <34.166065, 44.805069, 47.995014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371361, 44.217056, 47.641926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.981323, 44.140141, 47.686146>,  <33.747303, 44.093990, 47.712677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.981323, 44.140141, 47.686146>,  <34.371361, 44.217056, 47.641926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981323, 44.140141, 47.686146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017604, -0.429755, -0.902774,
		0.221107, -0.882232, 0.415665,
		-0.975090, -0.192293, 0.110553,
		33.688797, 44.082455, 47.719311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350021, 43.601875, 47.425804>,  <34.371361, 44.217056, 47.641926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350021, 43.601875, 47.425804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.968380, 43.715809, 47.388828>,  <33.739395, 43.784168, 47.366642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.968380, 43.715809, 47.388828>,  <34.350021, 43.601875, 47.425804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968380, 43.715809, 47.388828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014213, -0.351421, -0.936109,
		-0.299124, -0.891836, 0.339342,
		-0.954108, 0.284836, -0.092443,
		33.682148, 43.801258, 47.361095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914330, 42.974148, 47.246693>,  <34.350021, 43.601875, 47.425804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914330, 42.974148, 47.246693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.760498, 43.316715, 47.108910>,  <33.668198, 43.522255, 47.026237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.760498, 43.316715, 47.108910>,  <33.914330, 42.974148, 47.246693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760498, 43.316715, 47.108910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228236, -0.449794, -0.863478,
		-0.894432, -0.253456, 0.368446,
		-0.384578, 0.856414, -0.344462,
		33.645126, 43.573639, 47.005569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264824, 42.762840, 46.847610>,  <33.914330, 42.974148, 47.246693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264824, 42.762840, 46.847610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.353157, 43.135067, 46.730801>,  <33.406158, 43.358402, 46.660717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.353157, 43.135067, 46.730801>,  <33.264824, 42.762840, 46.847610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353157, 43.135067, 46.730801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007242, -0.297840, -0.954588,
		-0.975284, 0.212922, -0.059034,
		0.220836, 0.930567, -0.292020,
		33.419407, 43.414238, 46.643196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914627, 42.829697, 46.233135>,  <33.264824, 42.762840, 46.847610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914627, 42.829697, 46.233135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116032, 43.171555, 46.182430>,  <33.236874, 43.376667, 46.152008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116032, 43.171555, 46.182430>,  <32.914627, 42.829697, 46.233135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116032, 43.171555, 46.182430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010952, -0.153018, -0.988163,
		-0.863920, 0.496161, -0.086406,
		0.503509, 0.854640, -0.126762,
		33.267086, 43.427948, 46.144402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483360, 43.252468, 45.751362>,  <32.914627, 42.829697, 46.233135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483360, 43.252468, 45.751362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.866421, 43.366199, 45.733223>,  <33.096256, 43.434437, 45.722340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.866421, 43.366199, 45.733223>,  <32.483360, 43.252468, 45.751362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866421, 43.366199, 45.733223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039338, -0.285220, -0.957655,
		-0.285220, 0.915319, -0.284327,
		0.957655, 0.284327, -0.045343,
		33.153717, 43.451496, 45.719620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543667, 43.650356, 45.140285>,  <32.483360, 43.252468, 45.751362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543667, 43.650356, 45.140285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.895325, 43.489799, 45.243038>,  <33.106319, 43.393467, 45.304688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.895325, 43.489799, 45.243038>,  <32.543667, 43.650356, 45.140285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895325, 43.489799, 45.243038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027152, -0.495972, -0.867914,
		0.475775, 0.769999, -0.425135,
		0.879148, -0.401389, 0.256879,
		33.159069, 43.369385, 45.320103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916588, 43.633877, 44.506073>,  <32.543667, 43.650356, 45.140285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916588, 43.633877, 44.506073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.148521, 43.397266, 44.730179>,  <33.287682, 43.255302, 44.864643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.148521, 43.397266, 44.730179>,  <32.916588, 43.633877, 44.506073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148521, 43.397266, 44.730179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306995, -0.478355, -0.822758,
		0.754686, 0.649058, -0.095770,
		0.579830, -0.591523, 0.560266,
		33.322472, 43.219810, 44.898258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498600, 43.419418, 44.065609>,  <32.916588, 43.633877, 44.506073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498600, 43.419418, 44.065609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.460354, 43.128361, 44.337311>,  <33.437408, 42.953724, 44.500332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.460354, 43.128361, 44.337311>,  <33.498600, 43.419418, 44.065609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460354, 43.128361, 44.337311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360052, -0.661460, -0.657900,
		0.928020, 0.181665, 0.325234,
		-0.095612, -0.727646, 0.679257,
		33.431671, 42.910069, 44.541088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129299, 42.911030, 43.996769>,  <33.498600, 43.419418, 44.065609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129299, 42.911030, 43.996769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.848869, 42.690132, 44.177227>,  <33.680611, 42.557594, 44.285500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.848869, 42.690132, 44.177227>,  <34.129299, 42.911030, 43.996769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848869, 42.690132, 44.177227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302732, -0.803307, -0.512885,
		0.645643, -0.222993, 0.730356,
		-0.701070, -0.552242, 0.451142,
		33.638550, 42.524460, 44.312569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.729877, 40.621220, 33.674774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.482635, 40.430077, 33.924446>,  <39.334290, 40.315392, 34.074249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.482635, 40.430077, 33.924446>,  <39.729877, 40.621220, 33.674774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482635, 40.430077, 33.924446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588769, -0.807535, -0.035197,
		0.520865, 0.345742, 0.780488,
		-0.618102, -0.477860, 0.624179,
		39.297203, 40.286720, 34.111698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172264, 40.177723, 33.941513>,  <39.729877, 40.621220, 33.674774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172264, 40.177723, 33.941513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.826908, 40.033321, 34.082504>,  <39.619694, 39.946682, 34.167099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.826908, 40.033321, 34.082504>,  <40.172264, 40.177723, 33.941513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826908, 40.033321, 34.082504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462975, -0.844539, 0.269087,
		0.200544, 0.395516, 0.896297,
		-0.863387, -0.360999, 0.352481,
		39.567894, 39.925022, 34.188248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350483, 39.863125, 34.578983>,  <40.172264, 40.177723, 33.941513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350483, 39.863125, 34.578983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.006310, 39.712326, 34.441856>,  <39.799805, 39.621845, 34.359581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.006310, 39.712326, 34.441856>,  <40.350483, 39.863125, 34.578983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006310, 39.712326, 34.441856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412986, -0.910034, -0.035772,
		-0.298494, -0.172360, 0.938719,
		-0.860432, -0.377000, -0.342822,
		39.748180, 39.599224, 34.339008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301872, 39.339226, 35.058880>,  <40.350483, 39.863125, 34.578983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301872, 39.339226, 35.058880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.083885, 39.254868, 34.734280>,  <39.953094, 39.204254, 34.539520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.083885, 39.254868, 34.734280>,  <40.301872, 39.339226, 35.058880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083885, 39.254868, 34.734280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465044, -0.881365, -0.083252,
		-0.697672, -0.422754, 0.578388,
		-0.544966, -0.210893, -0.811503,
		39.920395, 39.191601, 34.490829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148464, 38.774307, 35.197369>,  <40.301872, 39.339226, 35.058880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148464, 38.774307, 35.197369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.095329, 38.776489, 34.800919>,  <40.063450, 38.777798, 34.563049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.095329, 38.776489, 34.800919>,  <40.148464, 38.774307, 35.197369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095329, 38.776489, 34.800919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173271, -0.984458, -0.028645,
		-0.975875, -0.175538, 0.129824,
		-0.132834, 0.005459, -0.991123,
		40.055477, 38.778126, 34.503582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894203, 38.131207, 35.096043>,  <40.148464, 38.774307, 35.197369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894203, 38.131207, 35.096043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.997139, 38.261639, 34.732185>,  <40.058899, 38.339897, 34.513870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.997139, 38.261639, 34.732185>,  <39.894203, 38.131207, 35.096043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997139, 38.261639, 34.732185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339686, -0.911792, -0.230757,
		-0.904649, -0.249610, -0.345405,
		0.257338, 0.326084, -0.909641,
		40.074341, 38.359463, 34.459293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707600, 37.596573, 34.641777>,  <39.894203, 38.131207, 35.096043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707600, 37.596573, 34.641777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.975742, 37.806530, 34.431973>,  <40.136627, 37.932503, 34.306087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.975742, 37.806530, 34.431973>,  <39.707600, 37.596573, 34.641777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975742, 37.806530, 34.431973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454921, -0.849142, -0.268338,
		-0.586235, -0.058731, -0.808009,
		0.670355, 0.524889, -0.524515,
		40.176849, 37.963997, 34.274616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887817, 37.219589, 34.062637>,  <39.707600, 37.596573, 34.641777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887817, 37.219589, 34.062637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.192539, 37.469021, 34.132847>,  <40.375374, 37.618679, 34.174973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.192539, 37.469021, 34.132847>,  <39.887817, 37.219589, 34.062637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192539, 37.469021, 34.132847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634821, -0.772588, -0.010491,
		0.129066, 0.119418, -0.984419,
		0.761803, 0.623577, 0.175524,
		40.421082, 37.656094, 34.185505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405922, 36.933758, 33.650749>,  <39.887817, 37.219589, 34.062637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405922, 36.933758, 33.650749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.578720, 37.175747, 33.918297>,  <40.682400, 37.320938, 34.078827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.578720, 37.175747, 33.918297>,  <40.405922, 36.933758, 33.650749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578720, 37.175747, 33.918297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720861, -0.677306, 0.147025,
		0.541977, 0.418649, -0.728693,
		0.431996, 0.604971, 0.668872,
		40.708321, 37.357239, 34.118958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075832, 36.841091, 33.541199>,  <40.405922, 36.933758, 33.650749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075832, 36.841091, 33.541199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.073040, 37.014481, 33.901653>,  <41.071365, 37.118515, 34.117928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.073040, 37.014481, 33.901653>,  <41.075832, 36.841091, 33.541199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073040, 37.014481, 33.901653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763884, -0.579236, 0.284547,
		0.645316, 0.690349, -0.327086,
		-0.006977, 0.433478, 0.901137,
		41.070946, 37.144524, 34.171993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777046, 37.058975, 33.754967>,  <41.075832, 36.841091, 33.541199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777046, 37.058975, 33.754967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.572002, 37.039253, 34.097847>,  <41.448975, 37.027420, 34.303577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.572002, 37.039253, 34.097847>,  <41.777046, 37.058975, 33.754967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572002, 37.039253, 34.097847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737804, -0.535938, 0.410385,
		0.439172, 0.842817, 0.311108,
		-0.512614, -0.049307, 0.857202,
		41.418217, 37.024460, 34.355007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179256, 37.287739, 34.347694>,  <41.777046, 37.058975, 33.754967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179256, 37.287739, 34.347694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.918423, 37.049458, 34.535282>,  <41.761925, 36.906490, 34.647835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.918423, 37.049458, 34.535282>,  <42.179256, 37.287739, 34.347694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918423, 37.049458, 34.535282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744278, -0.385200, 0.545593,
		-0.144363, 0.704814, 0.694548,
		-0.652081, -0.595700, 0.468969,
		41.722797, 36.870747, 34.675972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368973, 37.317402, 34.970863>,  <42.179256, 37.287739, 34.347694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368973, 37.317402, 34.970863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.135048, 36.993332, 34.986950>,  <41.994694, 36.798889, 34.996601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.135048, 36.993332, 34.986950>,  <42.368973, 37.317402, 34.970863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135048, 36.993332, 34.986950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577190, -0.380778, 0.722399,
		-0.569954, 0.445679, 0.690306,
		-0.584811, -0.810172, 0.040216,
		41.959606, 36.750278, 34.999016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011162, 37.293514, 35.670948>,  <42.368973, 37.317402, 34.970863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011162, 37.293514, 35.670948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.991554, 36.915493, 35.541656>,  <41.979790, 36.688683, 35.464081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.991554, 36.915493, 35.541656>,  <42.011162, 37.293514, 35.670948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991554, 36.915493, 35.541656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333784, -0.320510, 0.886488,
		-0.941374, -0.064436, 0.331154,
		-0.049016, -0.945051, -0.323227,
		41.976849, 36.631977, 35.444687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832119, 36.846264, 36.254116>,  <42.011162, 37.293514, 35.670948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832119, 36.846264, 36.254116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.006733, 36.610844, 35.981926>,  <42.111500, 36.469589, 35.818611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.006733, 36.610844, 35.981926>,  <41.832119, 36.846264, 36.254116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006733, 36.610844, 35.981926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589881, -0.383853, 0.710421,
		-0.679321, -0.711521, 0.179611,
		0.436535, -0.588553, -0.680472,
		42.137695, 36.434277, 35.777782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945320, 36.220291, 36.632740>,  <41.832119, 36.846264, 36.254116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945320, 36.220291, 36.632740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.196220, 36.224377, 36.321239>,  <42.346760, 36.226830, 36.134338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.196220, 36.224377, 36.321239>,  <41.945320, 36.220291, 36.632740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196220, 36.224377, 36.321239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777288, -0.070848, 0.625143,
		-0.048788, -0.997435, -0.052379,
		0.627250, 0.010214, -0.778751,
		42.384396, 36.227440, 36.087616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418247, 35.707001, 36.780525>,  <41.945320, 36.220291, 36.632740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418247, 35.707001, 36.780525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.626732, 35.895180, 36.495705>,  <42.751823, 36.008087, 36.324814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.626732, 35.895180, 36.495705>,  <42.418247, 35.707001, 36.780525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626732, 35.895180, 36.495705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831395, -0.091554, 0.548088,
		0.192656, -0.877665, -0.438848,
		0.521216, 0.470448, -0.712048,
		42.783096, 36.036316, 36.282089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083748, 35.360844, 36.629326>,  <42.418247, 35.707001, 36.780525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083748, 35.360844, 36.629326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.141666, 35.739178, 36.513100>,  <43.176418, 35.966179, 36.443363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.141666, 35.739178, 36.513100>,  <43.083748, 35.360844, 36.629326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141666, 35.739178, 36.513100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917409, -0.018323, 0.397523,
		0.370667, -0.324127, -0.870372,
		0.144796, 0.945836, -0.290566,
		43.185104, 36.022930, 36.425930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.751511, 35.458031, 36.286606>,  <43.083748, 35.360844, 36.629326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.751511, 35.458031, 36.286606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.642639, 35.820904, 36.414944>,  <43.577316, 36.038628, 36.491947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.642639, 35.820904, 36.414944>,  <43.751511, 35.458031, 36.286606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642639, 35.820904, 36.414944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872541, 0.092096, 0.479781,
		0.405699, 0.410538, -0.816619,
		-0.272176, 0.907181, 0.320848,
		43.560986, 36.093060, 36.511196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361351, 35.881031, 36.121300>,  <43.751511, 35.458031, 36.286606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361351, 35.881031, 36.121300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.143440, 36.108631, 36.367702>,  <44.012695, 36.245190, 36.515545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.143440, 36.108631, 36.367702>,  <44.361351, 35.881031, 36.121300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.143440, 36.108631, 36.367702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836126, 0.312377, 0.450902,
		0.064138, 0.760697, -0.645931,
		-0.544774, 0.569000, 0.616004,
		43.980007, 36.279331, 36.552505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.682373, 36.554974, 36.149357>,  <44.361351, 35.881031, 36.121300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.682373, 36.554974, 36.149357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.480362, 36.512939, 36.492031>,  <44.359158, 36.487720, 36.697636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.480362, 36.512939, 36.492031>,  <44.682373, 36.554974, 36.149357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480362, 36.512939, 36.492031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788793, 0.346723, 0.507532,
		-0.350365, 0.932063, -0.092215,
		-0.505025, -0.105083, 0.856684,
		44.328854, 36.481415, 36.749035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.330395, 36.720829, 36.006912>,  <44.682373, 36.554974, 36.149357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.330395, 36.720829, 36.006912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.065220, 36.938122, 36.212982>,  <44.906113, 37.068497, 36.336624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.065220, 36.938122, 36.212982>,  <45.330395, 36.720829, 36.006912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065220, 36.938122, 36.212982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098091, -0.619167, 0.779109,
		0.742220, 0.567036, 0.357184,
		-0.662939, 0.543233, 0.515179,
		44.866337, 37.101093, 36.367535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.965965, 36.297626, 36.117012>,  <45.330395, 36.720829, 36.006912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.965965, 36.297626, 36.117012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.360847, 36.301594, 36.180660>,  <46.597778, 36.303974, 36.218849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.360847, 36.301594, 36.180660>,  <45.965965, 36.297626, 36.117012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.360847, 36.301594, 36.180660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061239, 0.945079, 0.321053,
		-0.147196, -0.326691, 0.933599,
		0.987210, 0.009915, 0.159118,
		46.657009, 36.304569, 36.228397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.032131, 36.424198, 36.804279>,  <45.965965, 36.297626, 36.117012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.032131, 36.424198, 36.804279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.356987, 36.534702, 36.598713>,  <46.551899, 36.601006, 36.475372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.356987, 36.534702, 36.598713>,  <46.032131, 36.424198, 36.804279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.356987, 36.534702, 36.598713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034060, 0.901749, 0.430916,
		0.582471, -0.332458, 0.741754,
		0.812137, 0.276260, -0.513920,
		46.600628, 36.617580, 36.444538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.451817, 36.700909, 37.330090>,  <46.032131, 36.424198, 36.804279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.451817, 36.700909, 37.330090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.496914, 36.825024, 36.952515>,  <46.523972, 36.899490, 36.725971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.496914, 36.825024, 36.952515>,  <46.451817, 36.700909, 37.330090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.496914, 36.825024, 36.952515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180445, 0.940589, 0.287632,
		0.977102, 0.137901, 0.162033,
		0.112742, 0.310284, -0.943935,
		46.530735, 36.918110, 36.669334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.722385, 37.406544, 37.478188>,  <46.451817, 36.700909, 37.330090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.722385, 37.406544, 37.478188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.624386, 37.406261, 37.090378>,  <46.565586, 37.406094, 36.857693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.624386, 37.406261, 37.090378>,  <46.722385, 37.406544, 37.478188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.624386, 37.406261, 37.090378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197444, 0.979080, 0.049181,
		0.949207, 0.203476, -0.240008,
		-0.244995, -0.000705, -0.969524,
		46.550888, 37.406052, 36.799522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.057949, 38.004276, 37.172131>,  <46.722385, 37.406544, 37.478188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.057949, 38.004276, 37.172131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.750965, 37.909504, 36.933849>,  <46.566772, 37.852642, 36.790878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.750965, 37.909504, 36.933849>,  <47.057949, 38.004276, 37.172131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.750965, 37.909504, 36.933849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357290, 0.929591, 0.090579,
		0.532303, 0.282356, -0.798078,
		-0.767462, -0.236929, -0.595706,
		46.520725, 37.838425, 36.755138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.965977, 38.488701, 36.617367>,  <47.057949, 38.004276, 37.172131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.965977, 38.488701, 36.617367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.602295, 38.325352, 36.649803>,  <46.384087, 38.227341, 36.669266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.602295, 38.325352, 36.649803>,  <46.965977, 38.488701, 36.617367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.602295, 38.325352, 36.649803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414144, 0.907084, -0.075388,
		-0.042772, -0.102127, -0.993851,
		-0.909206, -0.408373, 0.081094,
		46.329533, 38.202839, 36.674129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.620132, 38.906315, 36.083748>,  <46.965977, 38.488701, 36.617367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.620132, 38.906315, 36.083748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.332401, 38.736065, 36.303352>,  <46.159763, 38.633915, 36.435116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.332401, 38.736065, 36.303352>,  <46.620132, 38.906315, 36.083748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.332401, 38.736065, 36.303352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592813, 0.788102, -0.165735,
		-0.362140, -0.444681, -0.819215,
		-0.719324, -0.425622, 0.549016,
		46.116604, 38.608379, 36.468056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.053604, 38.804153, 35.625916>,  <46.620132, 38.906315, 36.083748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.053604, 38.804153, 35.625916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.944637, 38.822090, 36.010368>,  <45.879257, 38.832851, 36.241039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.944637, 38.822090, 36.010368>,  <46.053604, 38.804153, 35.625916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.944637, 38.822090, 36.010368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636666, 0.740560, -0.215007,
		-0.721419, -0.670493, -0.173191,
		-0.272419, 0.044845, 0.961133,
		45.862911, 38.835545, 36.298710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.382607, 39.021896, 35.577675>,  <46.053604, 38.804153, 35.625916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.382607, 39.021896, 35.577675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.419449, 39.048317, 35.975098>,  <45.441555, 39.064167, 36.213551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.419449, 39.048317, 35.975098>,  <45.382607, 39.021896, 35.577675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.419449, 39.048317, 35.975098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811689, 0.582948, 0.036497,
		-0.576781, -0.809821, 0.107306,
		0.092110, 0.066048, 0.993556,
		45.447083, 39.068130, 36.273163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688789, 38.939716, 35.894840>,  <45.382607, 39.021896, 35.577675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688789, 38.939716, 35.894840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.936016, 39.132420, 36.143322>,  <45.084354, 39.248043, 36.292412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.936016, 39.132420, 36.143322>,  <44.688789, 38.939716, 35.894840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.936016, 39.132420, 36.143322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710847, 0.679938, 0.179948,
		-0.335690, -0.552803, 0.762706,
		0.618069, 0.481760, 0.621207,
		45.121437, 39.276947, 36.329685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247433, 39.053894, 36.570362>,  <44.688789, 38.939716, 35.894840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247433, 39.053894, 36.570362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.563515, 39.294605, 36.523979>,  <44.753162, 39.439034, 36.496147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.563515, 39.294605, 36.523979>,  <44.247433, 39.053894, 36.570362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.563515, 39.294605, 36.523979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549847, 0.779723, 0.299499,
		0.270649, -0.172904, 0.947023,
		0.790201, 0.601777, -0.115960,
		44.800575, 39.475140, 36.489189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277035, 39.290138, 37.236729>,  <44.247433, 39.053894, 36.570362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277035, 39.290138, 37.236729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.489964, 39.535675, 37.003548>,  <44.617722, 39.682999, 36.863640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.489964, 39.535675, 37.003548>,  <44.277035, 39.290138, 37.236729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489964, 39.535675, 37.003548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523632, 0.779841, 0.343013,
		0.665165, 0.122658, 0.736553,
		0.532321, 0.613843, -0.582950,
		44.649658, 39.719830, 36.828663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.539055, 39.740318, 37.718540>,  <44.277035, 39.290138, 37.236729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.539055, 39.740318, 37.718540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.521114, 39.917828, 37.360535>,  <44.510349, 40.024334, 37.145729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.521114, 39.917828, 37.360535>,  <44.539055, 39.740318, 37.718540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.521114, 39.917828, 37.360535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440824, 0.795183, 0.416363,
		0.896473, 0.413217, 0.159965,
		-0.044847, 0.443774, -0.895016,
		44.507660, 40.050961, 37.092030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753742, 40.396717, 37.813580>,  <44.539055, 39.740318, 37.718540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.753742, 40.396717, 37.813580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.523163, 40.428452, 37.488270>,  <44.384815, 40.447495, 37.293083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.523163, 40.428452, 37.488270>,  <44.753742, 40.396717, 37.813580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523163, 40.428452, 37.488270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572694, 0.670702, 0.471360,
		0.582859, 0.737472, -0.341191,
		-0.576452, 0.079339, -0.813270,
		44.350227, 40.452251, 37.244289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424679, 40.972511, 37.898384>,  <44.753742, 40.396717, 37.813580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424679, 40.972511, 37.898384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.241547, 40.868195, 37.558411>,  <44.131668, 40.805607, 37.354427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.241547, 40.868195, 37.558411>,  <44.424679, 40.972511, 37.898384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241547, 40.868195, 37.558411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684470, 0.713490, 0.149778,
		0.567355, 0.650324, -0.505160,
		-0.457831, -0.260789, -0.849929,
		44.104198, 40.789959, 37.303432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322418, 41.572514, 37.420368>,  <44.424679, 40.972511, 37.898384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322418, 41.572514, 37.420368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.037819, 41.294376, 37.379814>,  <43.867062, 41.127495, 37.355484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.037819, 41.294376, 37.379814>,  <44.322418, 41.572514, 37.420368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.037819, 41.294376, 37.379814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702413, 0.699705, 0.130491,
		-0.019798, 0.164056, -0.986252,
		-0.711494, -0.695341, -0.101382,
		43.824371, 41.085773, 37.349400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.836956, 41.853001, 36.980072>,  <44.322418, 41.572514, 37.420368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.836956, 41.853001, 36.980072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.652203, 41.555908, 37.173985>,  <43.541351, 41.377651, 37.290333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.652203, 41.555908, 37.173985>,  <43.836956, 41.853001, 36.980072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652203, 41.555908, 37.173985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825289, 0.560120, 0.071858,
		-0.324905, -0.366891, -0.871681,
		-0.461882, -0.742735, 0.484777,
		43.513638, 41.333088, 37.319416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256416, 41.943413, 36.709320>,  <43.836956, 41.853001, 36.980072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256416, 41.943413, 36.709320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.209316, 41.744560, 37.053177>,  <43.181057, 41.625248, 37.259491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.209316, 41.744560, 37.053177>,  <43.256416, 41.943413, 36.709320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209316, 41.744560, 37.053177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737471, 0.623509, 0.259564,
		-0.665035, -0.603402, -0.440039,
		-0.117747, -0.497135, 0.859646,
		43.173992, 41.595421, 37.311069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523026, 41.848232, 36.688217>,  <43.256416, 41.943413, 36.709320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523026, 41.848232, 36.688217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.642002, 41.783295, 37.064552>,  <42.713387, 41.744331, 37.290352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.642002, 41.783295, 37.064552>,  <42.523026, 41.848232, 36.688217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642002, 41.783295, 37.064552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837143, 0.429454, 0.338763,
		-0.459044, -0.888376, -0.008173,
		0.297439, -0.162349, 0.940836,
		42.731236, 41.734589, 37.346802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880024, 41.658600, 37.099125>,  <42.523026, 41.848232, 36.688217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880024, 41.658600, 37.099125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.152199, 41.785622, 37.363297>,  <42.315502, 41.861835, 37.521801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.152199, 41.785622, 37.363297>,  <41.880024, 41.658600, 37.099125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152199, 41.785622, 37.363297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668629, 0.637873, 0.382168,
		-0.299910, -0.701622, 0.646359,
		0.680433, 0.317559, 0.660430,
		42.356327, 41.880890, 37.561424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.702271, 40.705341, 41.143234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433540, 40.508297, 41.364498>,  <38.272305, 40.390072, 41.497257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433540, 40.508297, 41.364498>,  <38.702271, 40.705341, 41.143234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433540, 40.508297, 41.364498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123655, -0.810908, -0.571960,
		0.730319, -0.315854, 0.605699,
		-0.671822, -0.492611, 0.553164,
		38.231995, 40.360516, 41.530449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997242, 40.082127, 41.415543>,  <38.702271, 40.705341, 41.143234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997242, 40.082127, 41.415543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604694, 40.006275, 41.403229>,  <38.369164, 39.960766, 41.395840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604694, 40.006275, 41.403229>,  <38.997242, 40.082127, 41.415543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604694, 40.006275, 41.403229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179073, -0.844924, -0.504019,
		0.069563, -0.500145, 0.863143,
		-0.981373, -0.189627, -0.030787,
		38.310284, 39.949387, 41.393993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962002, 39.327358, 41.471283>,  <38.997242, 40.082127, 41.415543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962002, 39.327358, 41.471283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586102, 39.413628, 41.365189>,  <38.360561, 39.465389, 41.301533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586102, 39.413628, 41.365189>,  <38.962002, 39.327358, 41.471283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586102, 39.413628, 41.365189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069743, -0.880511, -0.468867,
		-0.334664, -0.422121, 0.842505,
		-0.939753, 0.215671, -0.265235,
		38.304176, 39.478329, 41.285618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612499, 38.767868, 41.565105>,  <38.962002, 39.327358, 41.471283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612499, 38.767868, 41.565105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413864, 38.989590, 41.297928>,  <38.294682, 39.122623, 41.137623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413864, 38.989590, 41.297928>,  <38.612499, 38.767868, 41.565105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413864, 38.989590, 41.297928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099166, -0.800722, -0.590771,
		-0.862304, -0.227132, 0.452596,
		-0.496586, 0.554306, -0.667942,
		38.264889, 39.155880, 41.097546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868923, 38.375751, 41.348133>,  <38.612499, 38.767868, 41.565105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868923, 38.375751, 41.348133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987476, 38.614681, 41.050041>,  <38.058609, 38.758038, 40.871185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987476, 38.614681, 41.050041>,  <37.868923, 38.375751, 41.348133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987476, 38.614681, 41.050041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009580, -0.778387, -0.627712,
		-0.955022, 0.193181, -0.224977,
		0.296381, 0.597323, -0.745227,
		38.076389, 38.793877, 40.826473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420525, 38.193047, 40.721092>,  <37.868923, 38.375751, 41.348133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420525, 38.193047, 40.721092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719013, 38.396626, 40.549454>,  <37.898106, 38.518772, 40.446468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719013, 38.396626, 40.549454>,  <37.420525, 38.193047, 40.721092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719013, 38.396626, 40.549454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102151, -0.549409, -0.829286,
		-0.657814, 0.662663, -0.357991,
		0.746221, 0.508947, -0.429101,
		37.942879, 38.549309, 40.420723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244530, 38.287498, 40.042423>,  <37.420525, 38.193047, 40.721092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244530, 38.287498, 40.042423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643330, 38.308273, 40.019493>,  <37.882610, 38.320736, 40.005737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643330, 38.308273, 40.019493>,  <37.244530, 38.287498, 40.042423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643330, 38.308273, 40.019493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010424, -0.644110, -0.764862,
		-0.076643, 0.763168, -0.641639,
		0.997004, 0.051933, -0.057322,
		37.942432, 38.323853, 40.002296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475395, 38.438374, 39.368275>,  <37.244530, 38.287498, 40.042423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475395, 38.438374, 39.368275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793144, 38.250629, 39.522511>,  <37.983791, 38.137981, 39.615051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793144, 38.250629, 39.522511>,  <37.475395, 38.438374, 39.368275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793144, 38.250629, 39.522511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002625, -0.632122, -0.774864,
		0.607431, 0.616540, -0.500906,
		0.794368, -0.469361, 0.385589,
		38.031456, 38.109821, 39.638187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795284, 38.197197, 38.829651>,  <37.475395, 38.438374, 39.368275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795284, 38.197197, 38.829651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976246, 37.993908, 39.122784>,  <38.084824, 37.871933, 39.298664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976246, 37.993908, 39.122784>,  <37.795284, 38.197197, 38.829651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976246, 37.993908, 39.122784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120340, -0.779426, -0.614828,
		0.883655, 0.366341, -0.291459,
		0.452407, -0.508222, 0.732829,
		38.111969, 37.841442, 39.342632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503902, 37.989319, 38.588127>,  <37.795284, 38.197197, 38.829651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503902, 37.989319, 38.588127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375099, 37.736614, 38.870174>,  <38.297817, 37.584991, 39.039402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375099, 37.736614, 38.870174>,  <38.503902, 37.989319, 38.588127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375099, 37.736614, 38.870174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149226, -0.769348, -0.621156,
		0.934902, -0.094796, 0.342012,
		-0.322009, -0.631757, 0.705119,
		38.278496, 37.547089, 39.081711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932083, 37.345097, 38.539200>,  <38.503902, 37.989319, 38.588127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932083, 37.345097, 38.539200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604000, 37.228985, 38.736378>,  <38.407150, 37.159317, 38.854683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604000, 37.228985, 38.736378>,  <38.932083, 37.345097, 38.539200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604000, 37.228985, 38.736378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066827, -0.807176, -0.586516,
		0.568144, -0.514009, 0.642656,
		-0.820211, -0.290279, 0.492942,
		38.357937, 37.141903, 38.884262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124855, 36.687626, 38.787834>,  <38.932083, 37.345097, 38.539200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124855, 36.687626, 38.787834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727386, 36.722889, 38.760014>,  <38.488903, 36.744045, 38.743320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727386, 36.722889, 38.760014>,  <39.124855, 36.687626, 38.787834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727386, 36.722889, 38.760014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037809, -0.845897, -0.532005,
		-0.105733, -0.526010, 0.843880,
		-0.993676, 0.088157, -0.069551,
		38.429283, 36.749336, 38.739147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840908, 36.016232, 38.683376>,  <39.124855, 36.687626, 38.787834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840908, 36.016232, 38.683376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114277, 36.240135, 38.495934>,  <39.278297, 36.374477, 38.383469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114277, 36.240135, 38.495934>,  <38.840908, 36.016232, 38.683376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114277, 36.240135, 38.495934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557054, -0.814756, -0.160821,
		-0.471825, -0.151133, -0.868643,
		0.683427, 0.559761, -0.468611,
		39.319305, 36.408062, 38.355350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010353, 35.753574, 38.131046>,  <38.840908, 36.016232, 38.683376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010353, 35.753574, 38.131046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340378, 35.955753, 38.232075>,  <39.538391, 36.077061, 38.292694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340378, 35.955753, 38.232075>,  <39.010353, 35.753574, 38.131046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340378, 35.955753, 38.232075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546146, -0.827997, -0.127064,
		0.144905, 0.242778, -0.959198,
		0.825062, 0.505450, 0.252573,
		39.587898, 36.107388, 38.307846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333939, 35.105404, 38.294189>,  <39.010353, 35.753574, 38.131046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333939, 35.105404, 38.294189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632473, 35.011658, 38.543369>,  <39.811592, 34.955410, 38.692875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632473, 35.011658, 38.543369>,  <39.333939, 35.105404, 38.294189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632473, 35.011658, 38.543369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398019, 0.593003, 0.699949,
		-0.533451, -0.770339, 0.349297,
		0.746332, -0.234361, 0.622948,
		39.856373, 34.941349, 38.730255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023029, 34.780979, 38.934734>,  <39.333939, 35.105404, 38.294189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023029, 34.780979, 38.934734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375019, 34.930679, 39.051754>,  <39.586212, 35.020500, 39.121964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375019, 34.930679, 39.051754>,  <39.023029, 34.780979, 38.934734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375019, 34.930679, 39.051754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428229, 0.358446, 0.829540,
		0.205594, -0.855250, 0.475687,
		0.879972, 0.374251, 0.292548,
		39.639011, 35.042957, 39.139519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018890, 34.584438, 39.589401>,  <39.023029, 34.780979, 38.934734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018890, 34.584438, 39.589401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313763, 34.854710, 39.591522>,  <39.490685, 35.016872, 39.592796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313763, 34.854710, 39.591522>,  <39.018890, 34.584438, 39.589401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313763, 34.854710, 39.591522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304448, 0.325131, 0.895322,
		0.603224, -0.661627, 0.445388,
		0.737179, 0.675677, 0.005304,
		39.534916, 35.057411, 39.593113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389858, 34.512455, 40.205017>,  <39.018890, 34.584438, 39.589401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389858, 34.512455, 40.205017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469082, 34.885036, 40.082920>,  <39.516617, 35.108585, 40.009663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469082, 34.885036, 40.082920>,  <39.389858, 34.512455, 40.205017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469082, 34.885036, 40.082920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238147, 0.347806, 0.906817,
		0.950819, -0.106915, 0.290709,
		0.198063, 0.931450, -0.305239,
		39.528500, 35.164471, 39.991348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956619, 34.756664, 40.677612>,  <39.389858, 34.512455, 40.205017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956619, 34.756664, 40.677612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750221, 35.063663, 40.525455>,  <39.626385, 35.247864, 40.434162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750221, 35.063663, 40.525455>,  <39.956619, 34.756664, 40.677612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750221, 35.063663, 40.525455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019110, 0.433656, 0.900876,
		0.856379, 0.472115, -0.209097,
		-0.515993, 0.767496, -0.380396,
		39.595425, 35.293911, 40.411335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280815, 35.453606, 40.946346>,  <39.956619, 34.756664, 40.677612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280815, 35.453606, 40.946346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923428, 35.558823, 40.800732>,  <39.708996, 35.621952, 40.713364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923428, 35.558823, 40.800732>,  <40.280815, 35.453606, 40.946346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923428, 35.558823, 40.800732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179999, 0.532882, 0.826824,
		0.411483, 0.804266, -0.428764,
		-0.893466, 0.263047, -0.364039,
		39.655388, 35.637737, 40.691521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307526, 36.233921, 40.997547>,  <40.280815, 35.453606, 40.946346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307526, 36.233921, 40.997547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937443, 36.085541, 40.965591>,  <39.715393, 35.996513, 40.946419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937443, 36.085541, 40.965591>,  <40.307526, 36.233921, 40.997547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937443, 36.085541, 40.965591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293756, 0.566945, 0.769598,
		-0.240191, 0.735507, -0.633512,
		-0.925211, -0.370948, -0.079885,
		39.659878, 35.974255, 40.941628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920387, 36.717228, 41.250191>,  <40.307526, 36.233921, 40.997547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920387, 36.717228, 41.250191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635113, 36.436890, 41.255501>,  <39.463947, 36.268684, 41.258686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635113, 36.436890, 41.255501>,  <39.920387, 36.717228, 41.250191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635113, 36.436890, 41.255501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500987, 0.522867, 0.689653,
		-0.490283, 0.485201, -0.724018,
		-0.713186, -0.700849, 0.013274,
		39.421158, 36.226635, 41.259483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301365, 37.104603, 41.327919>,  <39.920387, 36.717228, 41.250191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301365, 37.104603, 41.327919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209641, 36.729851, 41.433506>,  <39.154606, 36.505001, 41.496857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209641, 36.729851, 41.433506>,  <39.301365, 37.104603, 41.327919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209641, 36.729851, 41.433506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584334, 0.349392, 0.732447,
		-0.778440, 0.013713, -0.627569,
		-0.229312, -0.936876, 0.263968,
		39.140846, 36.448788, 41.512695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622585, 37.018978, 41.461617>,  <39.301365, 37.104603, 41.327919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622585, 37.018978, 41.461617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763123, 36.721802, 41.689510>,  <38.847446, 36.543495, 41.826248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763123, 36.721802, 41.689510>,  <38.622585, 37.018978, 41.461617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763123, 36.721802, 41.689510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604475, 0.284698, 0.744014,
		-0.714959, -0.605797, -0.349060,
		0.351345, -0.742938, 0.569737,
		38.868526, 36.498920, 41.860432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081078, 36.798763, 41.710873>,  <38.622585, 37.018978, 41.461617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081078, 36.798763, 41.710873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370762, 36.670574, 41.955105>,  <38.544575, 36.593658, 42.101643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370762, 36.670574, 41.955105>,  <38.081078, 36.798763, 41.710873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370762, 36.670574, 41.955105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522013, 0.323767, 0.789099,
		-0.450572, -0.890208, 0.067185,
		0.724215, -0.320475, 0.610581,
		38.588028, 36.574432, 42.138279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721889, 36.583351, 42.203823>,  <38.081078, 36.798763, 41.710873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721889, 36.583351, 42.203823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085758, 36.594574, 42.369576>,  <38.304081, 36.601307, 42.469028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085758, 36.594574, 42.369576>,  <37.721889, 36.583351, 42.203823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085758, 36.594574, 42.369576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397264, 0.349818, 0.848416,
		-0.121157, -0.936398, 0.329364,
		0.909671, 0.028052, 0.414380,
		38.358658, 36.602989, 42.493889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649357, 36.325871, 42.911831>,  <37.721889, 36.583351, 42.203823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649357, 36.325871, 42.911831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963310, 36.572937, 42.892071>,  <38.151684, 36.721176, 42.880215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963310, 36.572937, 42.892071>,  <37.649357, 36.325871, 42.911831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963310, 36.572937, 42.892071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266404, 0.408355, 0.873084,
		0.559449, -0.672110, 0.485061,
		0.784886, 0.617668, -0.049401,
		38.198776, 36.758236, 42.877251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072163, 36.278580, 43.568218>,  <37.649357, 36.325871, 42.911831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072163, 36.278580, 43.568218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171371, 36.640587, 43.429981>,  <38.230896, 36.857792, 43.347038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171371, 36.640587, 43.429981>,  <38.072163, 36.278580, 43.568218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171371, 36.640587, 43.429981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226112, 0.400968, 0.887749,
		0.941998, -0.142037, 0.304082,
		0.248020, 0.905014, -0.345594,
		38.245777, 36.912090, 43.326302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138309, 35.933254, 44.140129>,  <38.072163, 36.278580, 43.568218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138309, 35.933254, 44.140129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841202, 35.802612, 44.373924>,  <37.662937, 35.724228, 44.514202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841202, 35.802612, 44.373924>,  <38.138309, 35.933254, 44.140129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841202, 35.802612, 44.373924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249862, -0.674690, -0.694523,
		0.621184, -0.661910, 0.419530,
		-0.742765, -0.326602, 0.584493,
		37.618374, 35.704632, 44.549271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116005, 35.301620, 43.998772>,  <38.138309, 35.933254, 44.140129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116005, 35.301620, 43.998772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752834, 35.320583, 44.165348>,  <37.534931, 35.331963, 44.265293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752834, 35.320583, 44.165348>,  <38.116005, 35.301620, 43.998772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752834, 35.320583, 44.165348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311248, -0.741701, -0.594141,
		0.280709, -0.669053, 0.688165,
		-0.907925, 0.047409, 0.416444,
		37.480457, 35.334805, 44.290279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931759, 34.641335, 44.157665>,  <38.116005, 35.301620, 43.998772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931759, 34.641335, 44.157665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585052, 34.840725, 44.163868>,  <37.377029, 34.960358, 44.167591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585052, 34.840725, 44.163868>,  <37.931759, 34.641335, 44.157665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585052, 34.840725, 44.163868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417713, -0.708651, -0.568620,
		-0.272454, -0.499338, 0.822454,
		-0.866767, 0.498472, 0.015505,
		37.325024, 34.990265, 44.168518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335243, 34.195957, 44.319347>,  <37.931759, 34.641335, 44.157665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335243, 34.195957, 44.319347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116871, 34.489803, 44.158203>,  <36.985847, 34.666111, 44.061516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116871, 34.489803, 44.158203>,  <37.335243, 34.195957, 44.319347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116871, 34.489803, 44.158203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521129, -0.674242, -0.523281,
		-0.656031, -0.075741, 0.750924,
		-0.545938, 0.734616, -0.402853,
		36.953091, 34.710190, 44.037346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749870, 33.868515, 44.148457>,  <37.335243, 34.195957, 44.319347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749870, 33.868515, 44.148457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722359, 34.194031, 43.917625>,  <36.705853, 34.389339, 43.779125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722359, 34.194031, 43.917625>,  <36.749870, 33.868515, 44.148457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722359, 34.194031, 43.917625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407444, -0.550924, -0.728335,
		-0.910636, 0.185033, 0.369465,
		-0.068781, 0.813785, -0.577082,
		36.701725, 34.438168, 43.744499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968704, 34.008194, 43.953083>,  <36.749870, 33.868515, 44.148457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968704, 34.008194, 43.953083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195618, 34.185329, 43.675354>,  <36.331764, 34.291611, 43.508717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195618, 34.185329, 43.675354>,  <35.968704, 34.008194, 43.953083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195618, 34.185329, 43.675354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639568, -0.294222, -0.710202,
		-0.518790, 0.846952, 0.116318,
		0.567283, 0.442839, -0.694322,
		36.365803, 34.318180, 43.467056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518345, 34.189770, 43.439510>,  <35.968704, 34.008194, 43.953083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518345, 34.189770, 43.439510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869961, 34.195900, 43.248905>,  <36.080929, 34.199577, 43.134544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869961, 34.195900, 43.248905>,  <35.518345, 34.189770, 43.439510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869961, 34.195900, 43.248905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454973, -0.271698, -0.848045,
		-0.142461, 0.962261, -0.231861,
		0.879036, 0.015323, -0.476509,
		36.133671, 34.200497, 43.105953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311939, 34.395760, 42.669353>,  <35.518345, 34.189770, 43.439510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311939, 34.395760, 42.669353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693386, 34.280479, 42.634586>,  <35.922253, 34.211311, 42.613728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693386, 34.280479, 42.634586>,  <35.311939, 34.395760, 42.669353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693386, 34.280479, 42.634586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243866, -0.570360, -0.784359,
		0.176482, 0.769173, -0.614188,
		0.953616, -0.288205, -0.086916,
		35.979469, 34.194019, 42.608513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588428, 34.437252, 41.919144>,  <35.311939, 34.395760, 42.669353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588428, 34.437252, 41.919144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768806, 34.151798, 42.133575>,  <35.877033, 33.980526, 42.262234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768806, 34.151798, 42.133575>,  <35.588428, 34.437252, 41.919144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768806, 34.151798, 42.133575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151232, -0.653018, -0.742089,
		0.879648, 0.253566, -0.402397,
		0.450941, -0.713632, 0.536079,
		35.904087, 33.937710, 42.294399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038345, 34.238781, 41.392563>,  <35.588428, 34.437252, 41.919144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038345, 34.238781, 41.392563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018143, 33.946064, 41.664425>,  <36.006023, 33.770435, 41.827541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018143, 33.946064, 41.664425>,  <36.038345, 34.238781, 41.392563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018143, 33.946064, 41.664425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189282, -0.661175, -0.725961,
		0.980623, -0.165310, -0.105124,
		-0.050504, -0.731792, 0.679654,
		36.002991, 33.726528, 41.868320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202572, 33.777359, 40.913288>,  <36.038345, 34.238781, 41.392563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202572, 33.777359, 40.913288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053474, 33.570435, 41.221432>,  <35.964016, 33.446281, 41.406319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053474, 33.570435, 41.221432>,  <36.202572, 33.777359, 40.913288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053474, 33.570435, 41.221432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166366, -0.779477, -0.603935,
		0.912898, -0.353276, 0.204484,
		-0.372747, -0.517311, 0.770357,
		35.941650, 33.415241, 41.452538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558651, 33.242275, 40.969757>,  <36.202572, 33.777359, 40.913288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558651, 33.242275, 40.969757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216194, 33.146091, 41.152710>,  <36.010719, 33.088379, 41.262482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216194, 33.146091, 41.152710>,  <36.558651, 33.242275, 40.969757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216194, 33.146091, 41.152710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095961, -0.795747, -0.597979,
		0.507752, -0.555846, 0.658198,
		-0.856143, -0.240464, 0.457381,
		35.959351, 33.073952, 41.289925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.729782, 37.484589, 47.520321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.331360, 37.480850, 47.555607>,  <38.092304, 37.478607, 47.576778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.331360, 37.480850, 47.555607>,  <38.729782, 37.484589, 47.520321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331360, 37.480850, 47.555607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036560, -0.862824, -0.504181,
		0.080825, -0.505418, 0.859080,
		-0.996057, -0.009342, 0.088216,
		38.032543, 37.478046, 47.582073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519497, 36.754623, 47.676785>,  <38.729782, 37.484589, 47.520321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519497, 36.754623, 47.676785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.197441, 36.925003, 47.511703>,  <38.004208, 37.027229, 47.412655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.197441, 36.925003, 47.511703>,  <38.519497, 36.754623, 47.676785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197441, 36.925003, 47.511703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072601, -0.761402, -0.644201,
		-0.588626, -0.488709, 0.643959,
		-0.805139, 0.425946, -0.412701,
		37.955898, 37.052788, 47.387894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004936, 36.217594, 47.633259>,  <38.519497, 36.754623, 47.676785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004936, 36.217594, 47.633259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.915554, 36.517365, 47.383965>,  <37.861927, 36.697227, 47.234386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.915554, 36.517365, 47.383965>,  <38.004936, 36.217594, 47.633259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915554, 36.517365, 47.383965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018507, -0.636026, -0.771446,
		-0.974539, -0.183916, 0.128252,
		-0.223453, 0.749430, -0.623236,
		37.848518, 36.742195, 47.196995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509083, 35.924568, 47.222347>,  <38.004936, 36.217594, 47.633259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509083, 35.924568, 47.222347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.634403, 36.240543, 47.011505>,  <37.709595, 36.430130, 46.884998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.634403, 36.240543, 47.011505>,  <37.509083, 35.924568, 47.222347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634403, 36.240543, 47.011505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169914, -0.499464, -0.849509,
		-0.934329, 0.355717, -0.022262,
		0.313303, 0.789938, -0.527105,
		37.728394, 36.477524, 46.853374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034538, 35.993542, 46.736156>,  <37.509083, 35.924568, 47.222347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034538, 35.993542, 46.736156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.339424, 36.201279, 46.581596>,  <37.522358, 36.325920, 46.488861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.339424, 36.201279, 46.581596>,  <37.034538, 35.993542, 46.736156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339424, 36.201279, 46.581596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145563, -0.444119, -0.884064,
		-0.630742, 0.730095, -0.262918,
		0.762218, 0.519346, -0.386399,
		37.568089, 36.357082, 46.465675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799095, 36.157211, 46.078815>,  <37.034538, 35.993542, 46.736156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799095, 36.157211, 46.078815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.195911, 36.206757, 46.069771>,  <37.434002, 36.236485, 46.064346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.195911, 36.206757, 46.069771>,  <36.799095, 36.157211, 46.078815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195911, 36.206757, 46.069771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033910, -0.435782, -0.899413,
		-0.121253, 0.891489, -0.436514,
		0.992042, 0.123859, -0.022610,
		37.493523, 36.243916, 46.062988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956936, 36.629917, 45.589733>,  <36.799095, 36.157211, 46.078815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956936, 36.629917, 45.589733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.286190, 36.409439, 45.644321>,  <37.483742, 36.277153, 45.677074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.286190, 36.409439, 45.644321>,  <36.956936, 36.629917, 45.589733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286190, 36.409439, 45.644321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078842, -0.348943, -0.933821,
		0.562341, 0.757904, -0.330686,
		0.823138, -0.551198, 0.136471,
		37.533131, 36.244080, 45.685265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437679, 36.837582, 45.029392>,  <36.956936, 36.629917, 45.589733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437679, 36.837582, 45.029392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.541813, 36.473610, 45.158550>,  <37.604294, 36.255226, 45.236046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.541813, 36.473610, 45.158550>,  <37.437679, 36.837582, 45.029392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541813, 36.473610, 45.158550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227008, -0.382736, -0.895533,
		0.938452, 0.159839, -0.306200,
		0.260335, -0.909926, 0.322895,
		37.619915, 36.200634, 45.255417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788925, 36.524250, 44.437569>,  <37.437679, 36.837582, 45.029392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788925, 36.524250, 44.437569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.695110, 36.217854, 44.676983>,  <37.638821, 36.034016, 44.820633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.695110, 36.217854, 44.676983>,  <37.788925, 36.524250, 44.437569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695110, 36.217854, 44.676983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317591, -0.521549, -0.791911,
		0.918764, -0.375823, -0.120949,
		-0.234538, -0.765992, 0.598539,
		37.624748, 35.988056, 44.856544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444210, 36.839443, 44.330311>,  <37.788925, 36.524250, 44.437569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444210, 36.839443, 44.330311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.362011, 37.065483, 44.010704>,  <38.312691, 37.201107, 43.818939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.362011, 37.065483, 44.010704>,  <38.444210, 36.839443, 44.330311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362011, 37.065483, 44.010704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269470, 0.752212, 0.601301,
		0.940827, 0.338879, -0.002303,
		-0.205501, 0.565100, -0.799019,
		38.300362, 37.235012, 43.771000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703663, 37.420593, 44.576126>,  <38.444210, 36.839443, 44.330311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703663, 37.420593, 44.576126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.448967, 37.521732, 44.284748>,  <38.296150, 37.582417, 44.109921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.448967, 37.521732, 44.284748>,  <38.703663, 37.420593, 44.576126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448967, 37.521732, 44.284748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300005, 0.789038, 0.536112,
		0.710322, 0.559902, -0.426558,
		-0.636741, 0.252843, -0.728444,
		38.257946, 37.597584, 44.066216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854549, 38.157677, 44.391502>,  <38.703663, 37.420593, 44.576126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854549, 38.157677, 44.391502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478802, 38.086754, 44.274105>,  <38.253353, 38.044201, 44.203667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478802, 38.086754, 44.274105>,  <38.854549, 38.157677, 44.391502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478802, 38.086754, 44.274105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289909, 0.867768, 0.403648,
		0.183114, 0.464263, -0.866562,
		-0.939373, -0.177310, -0.293495,
		38.196991, 38.033562, 44.186058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589130, 38.764339, 44.115589>,  <38.854549, 38.157677, 44.391502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589130, 38.764339, 44.115589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.264561, 38.565701, 44.238869>,  <38.069820, 38.446518, 44.312836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.264561, 38.565701, 44.238869>,  <38.589130, 38.764339, 44.115589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264561, 38.565701, 44.238869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302449, 0.807995, 0.505637,
		-0.500120, 0.317071, -0.805820,
		-0.811421, -0.496599, 0.308196,
		38.021133, 38.416721, 44.331329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075226, 39.272190, 43.837631>,  <38.589130, 38.764339, 44.115589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075226, 39.272190, 43.837631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.916199, 39.021408, 44.105621>,  <37.820782, 38.870937, 44.266415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.916199, 39.021408, 44.105621>,  <38.075226, 39.272190, 43.837631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916199, 39.021408, 44.105621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308902, 0.778990, 0.545669,
		-0.864015, 0.009981, -0.503366,
		-0.397563, -0.626957, 0.669976,
		37.796928, 38.833321, 44.306614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583584, 39.648907, 43.934704>,  <38.075226, 39.272190, 43.837631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583584, 39.648907, 43.934704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.582119, 39.391087, 44.240528>,  <37.581242, 39.236397, 44.424023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.582119, 39.391087, 44.240528>,  <37.583584, 39.648907, 43.934704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582119, 39.391087, 44.240528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225095, 0.745472, 0.627379,
		-0.974330, -0.169800, -0.147815,
		-0.003663, -0.644546, 0.764557,
		37.581020, 39.197723, 44.469894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011845, 39.795422, 44.367023>,  <37.583584, 39.648907, 43.934704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011845, 39.795422, 44.367023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.275787, 39.609810, 44.603420>,  <37.434155, 39.498444, 44.745258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.275787, 39.609810, 44.603420>,  <37.011845, 39.795422, 44.367023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275787, 39.609810, 44.603420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207304, 0.643574, 0.736775,
		-0.722229, -0.608680, 0.328472,
		0.659856, -0.464027, 0.590990,
		37.473743, 39.470600, 44.780716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777008, 39.729973, 45.059402>,  <37.011845, 39.795422, 44.367023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777008, 39.729973, 45.059402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.171829, 39.677483, 45.096306>,  <37.408722, 39.645988, 45.118450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.171829, 39.677483, 45.096306>,  <36.777008, 39.729973, 45.059402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171829, 39.677483, 45.096306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009017, 0.619614, 0.784855,
		-0.160163, -0.773859, 0.612773,
		0.987049, -0.131230, 0.092261,
		37.467945, 39.638115, 45.123985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923634, 39.469410, 45.846828>,  <36.777008, 39.729973, 45.059402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923634, 39.469410, 45.846828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.265255, 39.602455, 45.686848>,  <37.470226, 39.682281, 45.590858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.265255, 39.602455, 45.686848>,  <36.923634, 39.469410, 45.846828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265255, 39.602455, 45.686848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109341, 0.636901, 0.763152,
		0.508565, -0.695504, 0.507579,
		0.854053, 0.332613, -0.399953,
		37.521469, 39.702240, 45.566860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363358, 39.461140, 46.430122>,  <36.923634, 39.469410, 45.846828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363358, 39.461140, 46.430122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.539524, 39.702065, 46.163815>,  <37.645226, 39.846619, 46.004028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.539524, 39.702065, 46.163815>,  <37.363358, 39.461140, 46.430122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539524, 39.702065, 46.163815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181628, 0.666457, 0.723081,
		0.879230, -0.439379, 0.184121,
		0.440416, 0.602313, -0.665772,
		37.671650, 39.882759, 45.964085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952599, 39.680733, 46.747044>,  <37.363358, 39.461140, 46.430122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952599, 39.680733, 46.747044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.850056, 39.925060, 46.447395>,  <37.788528, 40.071659, 46.267609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.850056, 39.925060, 46.447395>,  <37.952599, 39.680733, 46.747044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850056, 39.925060, 46.447395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039747, 0.767700, 0.639576,
		0.965764, 0.193737, -0.172530,
		-0.256360, 0.610821, -0.749117,
		37.773148, 40.108307, 46.222660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443233, 40.194431, 46.832508>,  <37.952599, 39.680733, 46.747044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443233, 40.194431, 46.832508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.131004, 40.327984, 46.621136>,  <37.943668, 40.408115, 46.494312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.131004, 40.327984, 46.621136>,  <38.443233, 40.194431, 46.832508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131004, 40.327984, 46.621136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088076, 0.895705, 0.435838,
		0.618834, 0.293660, -0.728566,
		-0.780569, 0.333880, -0.528428,
		37.896835, 40.428146, 46.462608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717377, 40.778431, 46.497974>,  <38.443233, 40.194431, 46.832508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717377, 40.778431, 46.497974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.321022, 40.827759, 46.476311>,  <38.083210, 40.857353, 46.463310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.321022, 40.827759, 46.476311>,  <38.717377, 40.778431, 46.497974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321022, 40.827759, 46.476311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109705, 0.972255, 0.206604,
		0.078138, 0.198780, -0.976924,
		-0.990888, 0.123317, -0.054163,
		38.023754, 40.864754, 46.460060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587982, 41.429390, 46.093346>,  <38.717377, 40.778431, 46.497974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587982, 41.429390, 46.093346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.248074, 41.371044, 46.295975>,  <38.044128, 41.336037, 46.417553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.248074, 41.371044, 46.295975>,  <38.587982, 41.429390, 46.093346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248074, 41.371044, 46.295975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019344, 0.951683, 0.306471,
		-0.526803, 0.270228, -0.805888,
		-0.849767, -0.145861, 0.506577,
		37.993145, 41.327286, 46.447948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.715786, 39.926548, 47.056503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.058472, 40.085434, 46.924889>,  <33.264084, 40.180763, 46.845921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.058472, 40.085434, 46.924889>,  <32.715786, 39.926548, 47.056503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058472, 40.085434, 46.924889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219193, -0.297086, -0.929351,
		-0.466902, 0.868310, -0.167451,
		0.856713, 0.397212, -0.329038,
		33.315487, 40.204597, 46.826176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545326, 40.177284, 46.437794>,  <32.715786, 39.926548, 47.056503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545326, 40.177284, 46.437794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.944523, 40.157379, 46.422112>,  <33.184040, 40.145435, 46.412704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.944523, 40.157379, 46.422112>,  <32.545326, 40.177284, 46.437794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944523, 40.157379, 46.422112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052578, -0.305462, -0.950752,
		0.035336, 0.950903, -0.307464,
		0.997991, -0.049762, -0.039202,
		33.243919, 40.142452, 46.410351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708080, 40.450485, 45.836018>,  <32.545326, 40.177284, 46.437794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708080, 40.450485, 45.836018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.020889, 40.219196, 45.929050>,  <33.208576, 40.080421, 45.984871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.020889, 40.219196, 45.929050>,  <32.708080, 40.450485, 45.836018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020889, 40.219196, 45.929050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053089, -0.433620, -0.899531,
		0.620984, 0.691106, -0.369798,
		0.782023, -0.578227, 0.232581,
		33.255497, 40.045727, 45.998825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932186, 40.327393, 45.250504>,  <32.708080, 40.450485, 45.836018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932186, 40.327393, 45.250504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.152447, 40.055977, 45.444973>,  <33.284603, 39.893127, 45.561653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.152447, 40.055977, 45.444973>,  <32.932186, 40.327393, 45.250504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152447, 40.055977, 45.444973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071663, -0.541852, -0.837413,
		0.831651, 0.495966, -0.249747,
		0.550654, -0.678538, 0.486175,
		33.317642, 39.852417, 45.590824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510487, 40.139343, 44.793728>,  <32.932186, 40.327393, 45.250504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510487, 40.139343, 44.793728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.429054, 39.847565, 45.054943>,  <33.380196, 39.672497, 45.211674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.429054, 39.847565, 45.054943>,  <33.510487, 40.139343, 44.793728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429054, 39.847565, 45.054943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050376, -0.673928, -0.737077,
		0.977762, -0.117155, 0.173943,
		-0.203577, -0.729449, 0.653040,
		33.367981, 39.628731, 45.250854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157856, 39.688519, 44.790920>,  <33.510487, 40.139343, 44.793728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157856, 39.688519, 44.790920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.835800, 39.483364, 44.910057>,  <33.642567, 39.360271, 44.981537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.835800, 39.483364, 44.910057>,  <34.157856, 39.688519, 44.790920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835800, 39.483364, 44.910057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141059, -0.653365, -0.743785,
		0.576072, -0.556835, 0.598394,
		-0.805135, -0.512883, 0.297839,
		33.594261, 39.329498, 44.999409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378124, 39.012821, 44.764469>,  <34.157856, 39.688519, 44.790920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378124, 39.012821, 44.764469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.978355, 39.005192, 44.753273>,  <33.738495, 39.000614, 44.746555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.978355, 39.005192, 44.753273>,  <34.378124, 39.012821, 44.764469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978355, 39.005192, 44.753273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032796, -0.751309, -0.659135,
		-0.008458, -0.659675, 0.751503,
		-0.999426, -0.019072, -0.027989,
		33.678528, 38.999470, 44.744877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200180, 38.274834, 44.643154>,  <34.378124, 39.012821, 44.764469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200180, 38.274834, 44.643154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.872272, 38.490891, 44.567028>,  <33.675529, 38.620525, 44.521351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.872272, 38.490891, 44.567028>,  <34.200180, 38.274834, 44.643154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872272, 38.490891, 44.567028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108347, -0.472593, -0.874595,
		-0.562353, -0.696345, 0.445940,
		-0.819768, 0.540147, -0.190318,
		33.626343, 38.652935, 44.509933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627064, 37.786369, 44.503136>,  <34.200180, 38.274834, 44.643154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627064, 37.786369, 44.503136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.520138, 38.135883, 44.340637>,  <33.455982, 38.345592, 44.243137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.520138, 38.135883, 44.340637>,  <33.627064, 37.786369, 44.503136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520138, 38.135883, 44.340637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224909, -0.466520, -0.855438,
		-0.936994, -0.137305, 0.321232,
		-0.267317, 0.873788, -0.406245,
		33.439941, 38.398022, 44.218765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000843, 37.663143, 44.304356>,  <33.627064, 37.786369, 44.503136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000843, 37.663143, 44.304356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.137234, 37.977966, 44.098724>,  <33.219067, 38.166859, 43.975346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.137234, 37.977966, 44.098724>,  <33.000843, 37.663143, 44.304356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137234, 37.977966, 44.098724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258080, -0.447469, -0.856251,
		-0.903954, 0.424632, 0.050549,
		0.340972, 0.787057, -0.514080,
		33.239525, 38.214085, 43.944500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679008, 37.535625, 43.680351>,  <33.000843, 37.663143, 44.304356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679008, 37.535625, 43.680351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.902199, 37.853298, 43.584064>,  <33.036114, 38.043903, 43.526291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.902199, 37.853298, 43.584064>,  <32.679008, 37.535625, 43.680351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902199, 37.853298, 43.584064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122064, -0.208371, -0.970403,
		-0.820834, 0.570841, -0.019324,
		0.557972, 0.794181, -0.240717,
		33.069592, 38.091553, 43.511848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262806, 37.923363, 43.182682>,  <32.679008, 37.535625, 43.680351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262806, 37.923363, 43.182682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.653919, 37.999187, 43.146904>,  <32.888588, 38.044682, 43.125435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.653919, 37.999187, 43.146904>,  <32.262806, 37.923363, 43.182682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653919, 37.999187, 43.146904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024157, -0.321978, -0.946439,
		-0.208212, 0.927575, -0.310246,
		0.977785, 0.189565, -0.089447,
		32.947254, 38.056057, 43.120071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316914, 38.329315, 42.533909>,  <32.262806, 37.923363, 43.182682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316914, 38.329315, 42.533909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.678200, 38.179691, 42.618084>,  <32.894970, 38.089916, 42.668591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.678200, 38.179691, 42.618084>,  <32.316914, 38.329315, 42.533909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678200, 38.179691, 42.618084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100590, -0.292160, -0.951065,
		0.417237, 0.880183, -0.226256,
		0.903214, -0.374060, 0.210438,
		32.949165, 38.067474, 42.681217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769749, 38.587559, 42.020367>,  <32.316914, 38.329315, 42.533909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769749, 38.587559, 42.020367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.922993, 38.243702, 42.155563>,  <33.014938, 38.037388, 42.236683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.922993, 38.243702, 42.155563>,  <32.769749, 38.587559, 42.020367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922993, 38.243702, 42.155563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055118, -0.343987, -0.937355,
		0.922056, 0.377741, -0.084404,
		0.383111, -0.859642, 0.337996,
		33.037926, 37.985809, 42.256962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078945, 39.239079, 41.775940>,  <32.769749, 38.587559, 42.020367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078945, 39.239079, 41.775940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.312351, 39.495689, 41.576763>,  <33.452396, 39.649658, 41.457256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.312351, 39.495689, 41.576763>,  <33.078945, 39.239079, 41.775940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312351, 39.495689, 41.576763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059661, 0.577635, 0.814112,
		0.809907, -0.504755, 0.298785,
		0.583516, 0.641529, -0.497945,
		33.487408, 39.688148, 41.427380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627525, 39.344852, 42.163353>,  <33.078945, 39.239079, 41.775940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627525, 39.344852, 42.163353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648731, 39.676159, 41.940224>,  <33.661457, 39.874943, 41.806347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648731, 39.676159, 41.940224>,  <33.627525, 39.344852, 42.163353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648731, 39.676159, 41.940224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076609, 0.553585, 0.829262,
		0.995651, -0.086700, -0.034103,
		0.053018, 0.828268, -0.557819,
		33.664639, 39.924641, 41.772877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032166, 39.720356, 42.504387>,  <33.627525, 39.344852, 42.163353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032166, 39.720356, 42.504387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.842579, 39.994118, 42.282776>,  <33.728825, 40.158375, 42.149811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.842579, 39.994118, 42.282776>,  <34.032166, 39.720356, 42.504387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842579, 39.994118, 42.282776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004353, 0.627361, 0.778716,
		0.880530, 0.371500, -0.294371,
		-0.473970, 0.684401, -0.554028,
		33.700386, 40.199440, 42.116566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421009, 40.390007, 42.442993>,  <34.032166, 39.720356, 42.504387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421009, 40.390007, 42.442993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.047436, 40.500801, 42.352612>,  <33.823292, 40.567276, 42.298382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.047436, 40.500801, 42.352612>,  <34.421009, 40.390007, 42.442993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047436, 40.500801, 42.352612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049117, 0.725562, 0.686401,
		0.354066, 0.629952, -0.691228,
		-0.933930, 0.276983, -0.225956,
		33.767258, 40.583897, 42.284824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433113, 41.152630, 42.540863>,  <34.421009, 40.390007, 42.442993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433113, 41.152630, 42.540863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.045521, 41.054390, 42.529823>,  <33.812965, 40.995445, 42.523201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.045521, 41.054390, 42.529823>,  <34.433113, 41.152630, 42.540863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045521, 41.054390, 42.529823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194313, 0.688078, 0.699136,
		-0.152716, 0.682811, -0.714456,
		-0.968979, -0.245597, -0.027599,
		33.754826, 40.980709, 42.521545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258427, 41.810360, 42.509048>,  <34.433113, 41.152630, 42.540863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258427, 41.810360, 42.509048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.954155, 41.581272, 42.631271>,  <33.771591, 41.443821, 42.704605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.954155, 41.581272, 42.631271>,  <34.258427, 41.810360, 42.509048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954155, 41.581272, 42.631271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202889, 0.656903, 0.726164,
		-0.616611, 0.490380, -0.615888,
		-0.760675, -0.572718, 0.305561,
		33.725952, 41.409458, 42.722939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751362, 42.316715, 42.669636>,  <34.258427, 41.810360, 42.509048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751362, 42.316715, 42.669636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.673172, 41.977348, 42.866402>,  <33.626259, 41.773727, 42.984463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.673172, 41.977348, 42.866402>,  <33.751362, 42.316715, 42.669636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673172, 41.977348, 42.866402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205510, 0.525895, 0.825348,
		-0.958934, 0.060244, -0.277158,
		-0.195478, -0.848413, 0.491918,
		33.614529, 41.722824, 43.013977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129078, 42.422791, 43.081841>,  <33.751362, 42.316715, 42.669636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129078, 42.422791, 43.081841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.324825, 42.105869, 43.227589>,  <33.442272, 41.915714, 43.315041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.324825, 42.105869, 43.227589>,  <33.129078, 42.422791, 43.081841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324825, 42.105869, 43.227589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142743, 0.339416, 0.929743,
		-0.860316, -0.506999, 0.053003,
		0.489368, -0.792307, 0.364375,
		33.471634, 41.868176, 43.336903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601925, 42.125767, 43.491577>,  <33.129078, 42.422791, 43.081841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601925, 42.125767, 43.491577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.968987, 42.036659, 43.623203>,  <33.189224, 41.983196, 43.702179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.968987, 42.036659, 43.623203>,  <32.601925, 42.125767, 43.491577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968987, 42.036659, 43.623203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208784, 0.434289, 0.876243,
		-0.338109, -0.872793, 0.352017,
		0.917656, -0.222770, 0.329062,
		33.244282, 41.969830, 43.721920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534473, 41.887890, 44.258423>,  <32.601925, 42.125767, 43.491577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534473, 41.887890, 44.258423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.925694, 41.964943, 44.226650>,  <33.160427, 42.011173, 44.207584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.925694, 41.964943, 44.226650>,  <32.534473, 41.887890, 44.258423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925694, 41.964943, 44.226650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028169, 0.255488, 0.966402,
		0.206455, -0.947427, 0.244454,
		0.978051, 0.192632, -0.079435,
		33.219109, 42.022732, 44.202820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795414, 41.761326, 44.940037>,  <32.534473, 41.887890, 44.258423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795414, 41.761326, 44.940037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.052299, 42.015976, 44.769264>,  <33.206432, 42.168766, 44.666801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.052299, 42.015976, 44.769264>,  <32.795414, 41.761326, 44.940037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052299, 42.015976, 44.769264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077811, 0.499942, 0.862556,
		0.762566, -0.587165, 0.271533,
		0.642214, 0.636628, -0.426927,
		33.244965, 42.206963, 44.641186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322227, 41.979950, 45.411865>,  <32.795414, 41.761326, 44.940037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322227, 41.979950, 45.411865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.393848, 42.263966, 45.139458>,  <33.436821, 42.434376, 44.976013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.393848, 42.263966, 45.139458>,  <33.322227, 41.979950, 45.411865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393848, 42.263966, 45.139458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139875, 0.666805, 0.731988,
		0.973845, -0.226323, 0.020078,
		0.179054, 0.710035, -0.681022,
		33.447563, 42.476974, 44.935150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900234, 42.388416, 45.655128>,  <33.322227, 41.979950, 45.411865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900234, 42.388416, 45.655128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.725864, 42.649399, 45.407169>,  <33.621243, 42.805988, 45.258396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.725864, 42.649399, 45.407169>,  <33.900234, 42.388416, 45.655128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725864, 42.649399, 45.407169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086616, 0.716001, 0.692705,
		0.895806, 0.248273, -0.368635,
		-0.435923, 0.652459, -0.619894,
		33.595089, 42.845135, 45.221203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332108, 43.005440, 45.498272>,  <33.900234, 42.388416, 45.655128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332108, 43.005440, 45.498272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.953236, 43.126148, 45.454834>,  <33.725914, 43.198574, 45.428772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.953236, 43.126148, 45.454834>,  <34.332108, 43.005440, 45.498272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953236, 43.126148, 45.454834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137699, 0.688463, 0.712079,
		0.289649, 0.659511, -0.693649,
		-0.947176, 0.301768, -0.108599,
		33.669083, 43.216679, 45.422253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951385, 43.358738, 45.223042>,  <34.332108, 43.005440, 45.498272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951385, 43.358738, 45.223042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.306011, 43.537788, 45.269753>,  <35.518787, 43.645218, 45.297779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.306011, 43.537788, 45.269753>,  <34.951385, 43.358738, 45.223042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306011, 43.537788, 45.269753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351281, -0.487153, -0.799552,
		-0.301014, 0.749874, -0.589134,
		0.886562, 0.447628, 0.116777,
		35.571980, 43.672077, 45.304787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119610, 43.657116, 44.634861>,  <34.951385, 43.358738, 45.223042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119610, 43.657116, 44.634861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.476646, 43.601776, 44.806503>,  <35.690868, 43.568573, 44.909489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.476646, 43.601776, 44.806503>,  <35.119610, 43.657116, 44.634861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476646, 43.601776, 44.806503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366311, -0.332337, -0.869119,
		0.262852, 0.932958, -0.245963,
		0.892594, -0.138351, 0.429109,
		35.744423, 43.560272, 44.935234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642799, 43.841301, 44.069477>,  <35.119610, 43.657116, 44.634861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642799, 43.841301, 44.069477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.837719, 43.620575, 44.340191>,  <35.954670, 43.488140, 44.502617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.837719, 43.620575, 44.340191>,  <35.642799, 43.841301, 44.069477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837719, 43.620575, 44.340191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486976, -0.471596, -0.735154,
		0.724839, 0.687818, 0.038913,
		0.487301, -0.551818, 0.676782,
		35.983910, 43.455029, 44.543224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304253, 43.751308, 43.708347>,  <35.642799, 43.841301, 44.069477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304253, 43.751308, 43.708347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.288948, 43.468559, 43.990868>,  <36.279766, 43.298908, 44.160381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.288948, 43.468559, 43.990868>,  <36.304253, 43.751308, 43.708347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288948, 43.468559, 43.990868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467396, -0.637392, -0.612595,
		0.883220, 0.306686, 0.354776,
		-0.038257, -0.706877, 0.706301,
		36.277470, 43.256496, 44.202759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950928, 43.467850, 43.789078>,  <36.304253, 43.751308, 43.708347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950928, 43.467850, 43.789078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.750526, 43.177971, 43.978313>,  <36.630287, 43.004044, 44.091854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.750526, 43.177971, 43.978313>,  <36.950928, 43.467850, 43.789078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750526, 43.177971, 43.978313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557907, -0.688338, -0.463607,
		0.661619, 0.031672, 0.749171,
		-0.500999, -0.724699, 0.473087,
		36.600227, 42.960560, 44.120239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499874, 43.011986, 44.180607>,  <36.950928, 43.467850, 43.789078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499874, 43.011986, 44.180607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.175121, 42.825516, 44.040020>,  <36.980270, 42.713634, 43.955669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.175121, 42.825516, 44.040020>,  <37.499874, 43.011986, 44.180607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175121, 42.825516, 44.040020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583727, -0.637609, -0.502710,
		0.010251, -0.613303, 0.789782,
		-0.811885, -0.466171, -0.351465,
		36.931557, 42.685665, 43.934582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803860, 42.328773, 44.035267>,  <37.499874, 43.011986, 44.180607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803860, 42.328773, 44.035267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.440182, 42.343536, 43.869373>,  <37.221977, 42.352394, 43.769836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.440182, 42.343536, 43.869373>,  <37.803860, 42.328773, 44.035267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440182, 42.343536, 43.869373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290234, -0.658034, -0.694806,
		-0.298551, -0.752083, 0.587569,
		-0.909193, 0.036903, -0.414737,
		37.167423, 42.354607, 43.744953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513206, 41.708431, 44.042564>,  <37.803860, 42.328773, 44.035267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513206, 41.708431, 44.042564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.304482, 41.883892, 43.749908>,  <37.179245, 41.989170, 43.574314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.304482, 41.883892, 43.749908>,  <37.513206, 41.708431, 44.042564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304482, 41.883892, 43.749908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159803, -0.792218, -0.588942,
		-0.837959, -0.424235, 0.343291,
		-0.521811, 0.438651, -0.731641,
		37.147938, 42.015488, 43.530415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112007, 41.222130, 43.804768>,  <37.513206, 41.708431, 44.042564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112007, 41.222130, 43.804768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.143188, 41.482933, 43.503090>,  <37.161896, 41.639416, 43.322083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.143188, 41.482933, 43.503090>,  <37.112007, 41.222130, 43.804768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143188, 41.482933, 43.503090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116963, -0.757249, -0.642568,
		-0.990072, -0.038124, -0.135290,
		0.077951, 0.652012, -0.754190,
		37.166573, 41.678535, 43.276833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891003, 40.820080, 43.295246>,  <37.112007, 41.222130, 43.804768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891003, 40.820080, 43.295246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.024952, 41.153728, 43.119926>,  <37.105324, 41.353916, 43.014736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.024952, 41.153728, 43.119926>,  <36.891003, 40.820080, 43.295246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024952, 41.153728, 43.119926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308741, -0.536606, -0.785323,
		-0.890245, 0.127666, -0.437224,
		0.334876, 0.834119, -0.438296,
		37.125416, 41.403965, 42.988438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572239, 40.911079, 42.618156>,  <36.891003, 40.820080, 43.295246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572239, 40.911079, 42.618156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.918190, 41.111809, 42.613171>,  <37.125759, 41.232246, 42.610180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.918190, 41.111809, 42.613171>,  <36.572239, 40.911079, 42.618156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918190, 41.111809, 42.613171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246126, -0.445571, -0.860749,
		-0.437503, 0.741374, -0.508878,
		0.864878, 0.501828, -0.012467,
		37.177654, 41.262356, 42.609432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599651, 41.120434, 41.911839>,  <36.572239, 40.911079, 42.618156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599651, 41.120434, 41.911839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.958302, 41.096390, 42.087311>,  <37.173492, 41.081963, 42.192596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.958302, 41.096390, 42.087311>,  <36.599651, 41.120434, 41.911839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958302, 41.096390, 42.087311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338801, -0.544740, -0.767120,
		0.285081, 0.836448, -0.468064,
		0.896629, -0.060111, 0.438684,
		37.227291, 41.078358, 42.218918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004269, 41.205334, 41.362839>,  <36.599651, 41.120434, 41.911839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004269, 41.205334, 41.362839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.248650, 41.043156, 41.634823>,  <37.395279, 40.945847, 41.798016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.248650, 41.043156, 41.634823>,  <37.004269, 41.205334, 41.362839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248650, 41.043156, 41.634823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266943, -0.703094, -0.659091,
		0.745304, 0.584184, -0.321325,
		0.610952, -0.405448, 0.679963,
		37.431934, 40.921520, 41.838810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713875, 41.083256, 41.023392>,  <37.004269, 41.205334, 41.362839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713875, 41.083256, 41.023392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.676468, 40.823025, 41.324856>,  <37.654022, 40.666885, 41.505733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.676468, 40.823025, 41.324856>,  <37.713875, 41.083256, 41.023392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676468, 40.823025, 41.324856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347840, -0.730625, -0.587533,
		0.932878, 0.207206, 0.294626,
		-0.093521, -0.650579, 0.753658,
		37.648411, 40.627850, 41.550953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.509159, 39.345936, 34.659264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.660788, 39.031059, 34.464684>,  <31.751764, 38.842133, 34.347935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.660788, 39.031059, 34.464684>,  <31.509159, 39.345936, 34.659264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660788, 39.031059, 34.464684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629367, -0.604694, 0.488101,
		-0.678382, 0.121129, -0.724655,
		0.379071, -0.787193, -0.486448,
		31.774509, 38.794903, 34.318748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027193, 39.028915, 34.280209>,  <31.509159, 39.345936, 34.659264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027193, 39.028915, 34.280209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.306644, 38.744427, 34.311420>,  <31.474316, 38.573734, 34.330147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.306644, 38.744427, 34.311420>,  <31.027193, 39.028915, 34.280209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306644, 38.744427, 34.311420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647959, -0.582673, 0.490552,
		-0.303425, -0.393271, -0.867912,
		0.698628, -0.711217, 0.078026,
		31.516233, 38.531063, 34.334827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830151, 38.320232, 33.991768>,  <31.027193, 39.028915, 34.280209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830151, 38.320232, 33.991768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.117531, 38.252880, 34.261726>,  <31.289959, 38.212471, 34.423702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.117531, 38.252880, 34.261726>,  <30.830151, 38.320232, 33.991768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117531, 38.252880, 34.261726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587654, -0.666035, 0.459413,
		0.372146, -0.726668, -0.577461,
		0.718450, -0.168379, 0.674892,
		31.333065, 38.202366, 34.464195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047379, 37.616280, 33.981510>,  <30.830151, 38.320232, 33.991768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047379, 37.616280, 33.981510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.134232, 37.731956, 34.354439>,  <31.186342, 37.801361, 34.578197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.134232, 37.731956, 34.354439>,  <31.047379, 37.616280, 33.981510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134232, 37.731956, 34.354439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519193, -0.774588, 0.361182,
		0.826615, -0.562478, -0.018041,
		0.217131, 0.289192, 0.932321,
		31.199371, 37.818714, 34.634136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192890, 37.016685, 34.324005>,  <31.047379, 37.616280, 33.981510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192890, 37.016685, 34.324005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.148472, 37.279137, 34.622578>,  <31.121820, 37.436607, 34.801723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.148472, 37.279137, 34.622578>,  <31.192890, 37.016685, 34.324005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148472, 37.279137, 34.622578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639922, -0.621862, 0.451427,
		0.760374, -0.427531, 0.488927,
		-0.111047, 0.656129, 0.746434,
		31.115158, 37.475975, 34.846508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233622, 36.546505, 34.931355>,  <31.192890, 37.016685, 34.324005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233622, 36.546505, 34.931355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.046492, 36.877453, 35.055676>,  <30.934214, 37.076023, 35.130268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.046492, 36.877453, 35.055676>,  <31.233622, 36.546505, 34.931355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046492, 36.877453, 35.055676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639995, -0.559652, 0.526495,
		0.609548, 0.047394, 0.791331,
		-0.467823, 0.827371, 0.310803,
		30.906145, 37.125664, 35.148918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230976, 36.561665, 35.667309>,  <31.233622, 36.546505, 34.931355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230976, 36.561665, 35.667309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.933443, 36.817661, 35.590233>,  <30.754923, 36.971260, 35.543987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.933443, 36.817661, 35.590233>,  <31.230976, 36.561665, 35.667309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933443, 36.817661, 35.590233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627811, -0.570132, 0.529909,
		0.229281, 0.515132, 0.825875,
		-0.743831, 0.639991, -0.192685,
		30.710295, 37.009659, 35.532429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937271, 36.665020, 36.279984>,  <31.230976, 36.561665, 35.667309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937271, 36.665020, 36.279984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.649672, 36.776791, 36.025440>,  <30.477112, 36.843853, 35.872715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.649672, 36.776791, 36.025440>,  <30.937271, 36.665020, 36.279984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649672, 36.776791, 36.025440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606656, -0.699097, 0.378458,
		-0.339126, 0.658165, 0.672170,
		-0.719000, 0.279431, -0.636362,
		30.433971, 36.860619, 35.834530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421354, 36.896435, 36.712055>,  <30.937271, 36.665020, 36.279984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421354, 36.896435, 36.712055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.238991, 36.809074, 36.366932>,  <30.129572, 36.756657, 36.159859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.238991, 36.809074, 36.366932>,  <30.421354, 36.896435, 36.712055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238991, 36.809074, 36.366932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627487, -0.608627, 0.485627,
		-0.631194, 0.762806, 0.140434,
		-0.455911, -0.218404, -0.862812,
		30.102217, 36.743553, 36.108089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728233, 36.827213, 36.828514>,  <30.421354, 36.896435, 36.712055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728233, 36.827213, 36.828514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770609, 36.624355, 36.486385>,  <29.796034, 36.502640, 36.281109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770609, 36.624355, 36.486385>,  <29.728233, 36.827213, 36.828514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770609, 36.624355, 36.486385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774786, -0.581261, 0.248682,
		-0.623286, 0.636350, -0.454504,
		0.105937, -0.507143, -0.855327,
		29.802389, 36.472214, 36.229786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119209, 36.851059, 36.384621>,  <29.728233, 36.827213, 36.828514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119209, 36.851059, 36.384621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.296883, 36.529655, 36.226093>,  <29.403486, 36.336815, 36.130978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.296883, 36.529655, 36.226093>,  <29.119209, 36.851059, 36.384621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296883, 36.529655, 36.226093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770701, -0.568247, 0.288296,
		-0.456857, 0.177389, -0.871673,
		0.444185, -0.803510, -0.396322,
		29.430138, 36.288601, 36.107197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610666, 36.542587, 36.028347>,  <29.119209, 36.851059, 36.384621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610666, 36.542587, 36.028347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887905, 36.255611, 36.056347>,  <29.054249, 36.083427, 36.073147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887905, 36.255611, 36.056347>,  <28.610666, 36.542587, 36.028347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887905, 36.255611, 36.056347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698570, -0.644549, 0.310737,
		-0.177813, -0.264273, -0.947915,
		0.693097, -0.717437, 0.070004,
		29.095835, 36.040379, 36.077347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266516, 35.921444, 35.779133>,  <28.610666, 36.542587, 36.028347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266516, 35.921444, 35.779133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.579380, 35.782143, 35.985798>,  <28.767099, 35.698563, 36.109798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.579380, 35.782143, 35.985798>,  <28.266516, 35.921444, 35.779133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579380, 35.782143, 35.985798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569073, -0.736959, 0.364756,
		0.253735, -0.579319, -0.774602,
		0.782160, -0.348254, 0.516667,
		28.814028, 35.677666, 36.140797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298275, 35.173836, 35.661537>,  <28.266516, 35.921444, 35.779133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298275, 35.173836, 35.661537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.482771, 35.246513, 36.008926>,  <28.593468, 35.290119, 36.217361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.482771, 35.246513, 36.008926>,  <28.298275, 35.173836, 35.661537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482771, 35.246513, 36.008926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565420, -0.694135, 0.445507,
		0.683783, -0.696538, -0.217431,
		0.461239, 0.181690, 0.868474,
		28.621143, 35.301022, 36.269470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362617, 34.544197, 35.948471>,  <28.298275, 35.173836, 35.661537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362617, 34.544197, 35.948471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.427938, 34.774319, 36.269062>,  <28.467131, 34.912392, 36.461414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.427938, 34.774319, 36.269062>,  <28.362617, 34.544197, 35.948471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427938, 34.774319, 36.269062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485979, -0.660073, 0.572824,
		0.858578, -0.483044, 0.171792,
		0.163304, 0.575301, 0.801474,
		28.476929, 34.946911, 36.509502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587831, 34.065945, 36.448143>,  <28.362617, 34.544197, 35.948471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587831, 34.065945, 36.448143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.436825, 34.386139, 36.634354>,  <28.346222, 34.578255, 36.746078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.436825, 34.386139, 36.634354>,  <28.587831, 34.065945, 36.448143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436825, 34.386139, 36.634354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535909, -0.598845, 0.595136,
		0.755171, -0.024805, 0.655058,
		-0.377515, 0.800481, 0.465524,
		28.323570, 34.626282, 36.774010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537758, 33.821022, 37.064518>,  <28.587831, 34.065945, 36.448143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537758, 33.821022, 37.064518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.242493, 34.085571, 37.011299>,  <28.065334, 34.244301, 36.979366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.242493, 34.085571, 37.011299>,  <28.537758, 33.821022, 37.064518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242493, 34.085571, 37.011299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643245, -0.630557, 0.434320,
		0.203353, 0.406181, 0.890879,
		-0.738162, 0.661373, -0.133048,
		28.021044, 34.283985, 36.971386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280106, 33.977737, 37.629440>,  <28.537758, 33.821022, 37.064518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280106, 33.977737, 37.629440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.992943, 34.020077, 37.354221>,  <27.820644, 34.045479, 37.189091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.992943, 34.020077, 37.354221>,  <28.280106, 33.977737, 37.629440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992943, 34.020077, 37.354221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553966, -0.685420, 0.472568,
		-0.421580, 0.720413, 0.550703,
		-0.717908, 0.105846, -0.688044,
		27.777571, 34.051830, 37.147808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504976, 34.035393, 38.339348>,  <28.280106, 33.977737, 37.629440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504976, 34.035393, 38.339348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.693319, 33.720406, 38.498440>,  <28.806326, 33.531414, 38.593895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.693319, 33.720406, 38.498440>,  <28.504976, 34.035393, 38.339348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693319, 33.720406, 38.498440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877787, 0.463265, -0.121963,
		-0.088213, 0.406550, 0.909360,
		0.470858, -0.787466, 0.397731,
		28.834578, 33.484165, 38.617760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004944, 34.306747, 38.831276>,  <28.504976, 34.035393, 38.339348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004944, 34.306747, 38.831276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124134, 33.950130, 38.694824>,  <29.195648, 33.736160, 38.612953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124134, 33.950130, 38.694824>,  <29.004944, 34.306747, 38.831276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124134, 33.950130, 38.694824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899914, 0.381554, -0.211119,
		0.318381, -0.244082, 0.916001,
		0.297973, -0.891538, -0.341132,
		29.213526, 33.682671, 38.592484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661076, 34.225784, 39.096111>,  <29.004944, 34.306747, 38.831276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661076, 34.225784, 39.096111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.650024, 33.948498, 38.808029>,  <29.643394, 33.782127, 38.635181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.650024, 33.948498, 38.808029>,  <29.661076, 34.225784, 39.096111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650024, 33.948498, 38.808029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952431, 0.200494, -0.229514,
		0.303498, -0.692285, 0.654699,
		-0.027626, -0.693213, -0.720203,
		29.641737, 33.740532, 38.591969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300278, 33.747128, 39.180191>,  <29.661076, 34.225784, 39.096111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300278, 33.747128, 39.180191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.156815, 33.773899, 38.807766>,  <30.070736, 33.789963, 38.584309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.156815, 33.773899, 38.807766>,  <30.300278, 33.747128, 39.180191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156815, 33.773899, 38.807766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900550, 0.287358, -0.326245,
		0.245714, -0.955482, -0.163337,
		-0.358657, 0.066930, -0.931067,
		30.049217, 33.793980, 38.528446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901602, 33.520981, 38.845470>,  <30.300278, 33.747128, 39.180191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901602, 33.520981, 38.845470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.673965, 33.668560, 38.551529>,  <30.537384, 33.757107, 38.375164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.673965, 33.668560, 38.551529>,  <30.901602, 33.520981, 38.845470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673965, 33.668560, 38.551529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786235, 0.505832, -0.354921,
		0.240768, -0.779753, -0.577941,
		-0.569092, 0.368944, -0.734857,
		30.503239, 33.779243, 38.331070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213072, 33.375423, 38.148209>,  <30.901602, 33.520981, 38.845470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213072, 33.375423, 38.148209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.989384, 33.691204, 38.046989>,  <30.855171, 33.880672, 37.986256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.989384, 33.691204, 38.046989>,  <31.213072, 33.375423, 38.148209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989384, 33.691204, 38.046989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783275, 0.403152, -0.473232,
		-0.271577, -0.462849, -0.843811,
		-0.559219, 0.789455, -0.253051,
		30.821617, 33.928040, 37.971073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428144, 33.520855, 37.509567>,  <31.213072, 33.375423, 38.148209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428144, 33.520855, 37.509567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.247084, 33.858017, 37.625923>,  <31.138447, 34.060314, 37.695736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.247084, 33.858017, 37.625923>,  <31.428144, 33.520855, 37.509567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247084, 33.858017, 37.625923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664950, 0.536437, -0.519690,
		-0.594093, -0.041812, -0.803309,
		-0.452653, 0.842904, 0.290891,
		31.111288, 34.110889, 37.713192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331741, 33.877514, 36.846882>,  <31.428144, 33.520855, 37.509567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331741, 33.877514, 36.846882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.315283, 34.128300, 37.158066>,  <31.305407, 34.278770, 37.344776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.315283, 34.128300, 37.158066>,  <31.331741, 33.877514, 36.846882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315283, 34.128300, 37.158066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686640, 0.583372, -0.433824,
		-0.725832, 0.516329, -0.454501,
		-0.041148, 0.626962, 0.777962,
		31.302938, 34.316387, 37.391453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230968, 34.502125, 36.542984>,  <31.331741, 33.877514, 36.846882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230968, 34.502125, 36.542984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.345888, 34.603867, 36.912365>,  <31.414841, 34.664913, 37.133995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.345888, 34.603867, 36.912365>,  <31.230968, 34.502125, 36.542984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345888, 34.603867, 36.912365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755774, 0.532088, -0.381690,
		-0.588443, 0.807580, -0.039366,
		0.287299, 0.254355, 0.923452,
		31.432077, 34.680172, 37.189400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271877, 35.313992, 36.670238>,  <31.230968, 34.502125, 36.542984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271877, 35.313992, 36.670238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.508598, 35.127827, 36.933498>,  <31.650631, 35.016129, 37.091454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.508598, 35.127827, 36.933498>,  <31.271877, 35.313992, 36.670238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508598, 35.127827, 36.933498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722694, 0.667997, -0.177466,
		-0.357045, 0.580664, 0.731675,
		0.591805, -0.465414, 0.658147,
		31.686140, 34.988201, 37.130943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421093, 35.902832, 37.007648>,  <31.271877, 35.313992, 36.670238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421093, 35.902832, 37.007648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.692554, 35.620430, 37.088631>,  <31.855433, 35.450989, 37.137218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.692554, 35.620430, 37.088631>,  <31.421093, 35.902832, 37.007648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692554, 35.620430, 37.088631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733119, 0.667808, -0.128723,
		-0.044320, 0.235780, 0.970795,
		0.678655, -0.706003, 0.202452,
		31.896151, 35.408630, 37.149364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950979, 36.289574, 37.119274>,  <31.421093, 35.902832, 37.007648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950979, 36.289574, 37.119274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.120949, 35.928459, 37.092693>,  <32.222931, 35.711792, 37.076744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.120949, 35.928459, 37.092693>,  <31.950979, 36.289574, 37.119274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120949, 35.928459, 37.092693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884390, 0.429680, -0.182291,
		0.193122, 0.018693, 0.980997,
		0.424922, -0.902788, -0.066449,
		32.248425, 35.657623, 37.072758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591404, 36.448849, 37.406261>,  <31.950979, 36.289574, 37.119274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591404, 36.448849, 37.406261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.643848, 36.101826, 37.214367>,  <32.675316, 35.893612, 37.099232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.643848, 36.101826, 37.214367>,  <32.591404, 36.448849, 37.406261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643848, 36.101826, 37.214367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892091, 0.314321, -0.324616,
		0.432416, -0.385409, 0.815154,
		0.131110, -0.867561, -0.479737,
		32.683182, 35.841557, 37.070446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284203, 36.213596, 37.580795>,  <32.591404, 36.448849, 37.406261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284203, 36.213596, 37.580795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.207088, 36.022064, 37.238205>,  <33.160820, 35.907146, 37.032650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.207088, 36.022064, 37.238205>,  <33.284203, 36.213596, 37.580795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207088, 36.022064, 37.238205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925100, 0.202314, -0.321341,
		0.327144, -0.854280, 0.403958,
		-0.192789, -0.478826, -0.856480,
		33.149250, 35.878418, 36.981262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848988, 35.775455, 37.422089>,  <33.284203, 36.213596, 37.580795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848988, 35.775455, 37.422089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.659088, 35.842598, 37.076504>,  <33.545147, 35.882885, 36.869152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.659088, 35.842598, 37.076504>,  <33.848988, 35.775455, 37.422089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659088, 35.842598, 37.076504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849181, 0.345353, -0.399529,
		0.231307, -0.923338, -0.306501,
		-0.474752, 0.167861, -0.863964,
		33.516663, 35.892956, 36.817314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273396, 35.545208, 36.957047>,  <33.848988, 35.775455, 37.422089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273396, 35.545208, 36.957047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.050156, 35.829891, 36.786404>,  <33.916210, 36.000702, 36.684017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.050156, 35.829891, 36.786404>,  <34.273396, 35.545208, 36.957047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050156, 35.829891, 36.786404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816922, 0.381150, -0.432854,
		-0.145462, -0.590084, -0.794129,
		-0.558103, 0.711705, -0.426610,
		33.882725, 36.043404, 36.658421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725426, 35.777931, 36.389717>,  <34.273396, 35.545208, 36.957047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725426, 35.777931, 36.389717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.444252, 36.062122, 36.402943>,  <34.275547, 36.232639, 36.410877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.444252, 36.062122, 36.402943>,  <34.725426, 35.777931, 36.389717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444252, 36.062122, 36.402943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623285, 0.637725, -0.452573,
		-0.342628, -0.297525, -0.891114,
		-0.702938, 0.710483, 0.033060,
		34.233372, 36.275269, 36.412861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724411, 36.043530, 35.727455>,  <34.725426, 35.777931, 36.389717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724411, 36.043530, 35.727455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.552185, 36.323601, 35.955265>,  <34.448849, 36.491646, 36.091953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.552185, 36.323601, 35.955265>,  <34.724411, 36.043530, 35.727455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552185, 36.323601, 35.955265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382231, 0.713088, -0.587711,
		-0.817628, -0.035355, -0.574660,
		-0.430562, 0.700182, 0.569527,
		34.423016, 36.533657, 36.126122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387329, 36.385269, 35.272923>,  <34.724411, 36.043530, 35.727455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387329, 36.385269, 35.272923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.465729, 36.625355, 35.583103>,  <34.512768, 36.769405, 35.769211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.465729, 36.625355, 35.583103>,  <34.387329, 36.385269, 35.272923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465729, 36.625355, 35.583103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357357, 0.692691, -0.626478,
		-0.913171, 0.399902, -0.078726,
		0.195997, 0.600215, 0.775453,
		34.524529, 36.805420, 35.815739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245537, 37.043221, 34.980972>,  <34.387329, 36.385269, 35.272923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245537, 37.043221, 34.980972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.415073, 37.123421, 35.334278>,  <34.516796, 37.171543, 35.546261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.415073, 37.123421, 35.334278>,  <34.245537, 37.043221, 34.980972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415073, 37.123421, 35.334278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356235, 0.859692, -0.366096,
		-0.832737, 0.469818, 0.292950,
		0.423845, 0.200503, 0.883263,
		34.542229, 37.183571, 35.599258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894981, 37.625076, 35.224030>,  <34.245537, 37.043221, 34.980972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894981, 37.625076, 35.224030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.252972, 37.598682, 35.400517>,  <34.467766, 37.582848, 35.506409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.252972, 37.598682, 35.400517>,  <33.894981, 37.625076, 35.224030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252972, 37.598682, 35.400517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308196, 0.806511, -0.504534,
		-0.322554, 0.587525, 0.742141,
		0.894972, -0.065985, 0.441216,
		34.521461, 37.578888, 35.532883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109081, 38.298122, 35.210281>,  <33.894981, 37.625076, 35.224030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109081, 38.298122, 35.210281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.448429, 38.095657, 35.272350>,  <34.652039, 37.974178, 35.309593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.448429, 38.095657, 35.272350>,  <34.109081, 38.298122, 35.210281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448429, 38.095657, 35.272350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505830, 0.688477, -0.519746,
		0.156240, 0.519427, 0.840110,
		0.848366, -0.506158, 0.155174,
		34.702938, 37.943810, 35.318901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631020, 38.743771, 35.473373>,  <34.109081, 38.298122, 35.210281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631020, 38.743771, 35.473373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.836147, 38.441231, 35.310917>,  <34.959225, 38.259708, 35.213444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.836147, 38.441231, 35.310917>,  <34.631020, 38.743771, 35.473373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836147, 38.441231, 35.310917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567354, 0.653634, -0.500871,
		0.644301, 0.026432, 0.764315,
		0.512821, -0.756349, -0.406140,
		34.989994, 38.214325, 35.189075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332436, 38.937698, 35.519173>,  <34.631020, 38.743771, 35.473373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332436, 38.937698, 35.519173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.352345, 38.644333, 35.247990>,  <35.364288, 38.468311, 35.085281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.352345, 38.644333, 35.247990>,  <35.332436, 38.937698, 35.519173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352345, 38.644333, 35.247990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571316, 0.577679, -0.582996,
		0.819220, -0.358313, 0.447762,
		0.049768, -0.733416, -0.677956,
		35.367275, 38.424309, 35.044601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.202080, 42.096390, 46.013222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.047108, 41.920521, 46.337341>,  <37.954124, 41.814999, 46.531811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.047108, 41.920521, 46.337341>,  <38.202080, 42.096390, 46.013222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047108, 41.920521, 46.337341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124033, 0.846094, 0.518403,
		-0.913515, 0.301351, -0.273272,
		-0.387435, -0.439674, 0.810297,
		37.930878, 41.788620, 46.580429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705921, 42.505081, 46.319408>,  <38.202080, 42.096390, 46.013222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705921, 42.505081, 46.319408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.806450, 42.274147, 46.630157>,  <37.866768, 42.135586, 46.816605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.806450, 42.274147, 46.630157>,  <37.705921, 42.505081, 46.319408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806450, 42.274147, 46.630157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164204, 0.765564, 0.622053,
		-0.953874, -0.283898, 0.097600,
		0.251319, -0.577334, 0.776869,
		37.881847, 42.100948, 46.863216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208099, 42.716679, 46.823845>,  <37.705921, 42.505081, 46.319408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208099, 42.716679, 46.823845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.477985, 42.514210, 47.038712>,  <37.639915, 42.392727, 47.167633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.477985, 42.514210, 47.038712>,  <37.208099, 42.716679, 46.823845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477985, 42.514210, 47.038712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125672, 0.638380, 0.759393,
		-0.727304, -0.579878, 0.367110,
		0.674711, -0.506174, 0.537171,
		37.680397, 42.362358, 47.199863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945198, 42.680248, 47.469376>,  <37.208099, 42.716679, 46.823845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945198, 42.680248, 47.469376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.323265, 42.585888, 47.559711>,  <37.550106, 42.529274, 47.613914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.323265, 42.585888, 47.559711>,  <36.945198, 42.680248, 47.469376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323265, 42.585888, 47.559711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015270, 0.722707, 0.690986,
		-0.326218, -0.649651, 0.686684,
		0.945171, -0.235898, 0.225840,
		37.606815, 42.515118, 47.627464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929413, 42.620480, 48.151234>,  <36.945198, 42.680248, 47.469376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929413, 42.620480, 48.151234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.309807, 42.697311, 48.054298>,  <37.538044, 42.743412, 47.996136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.309807, 42.697311, 48.054298>,  <36.929413, 42.620480, 48.151234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309807, 42.697311, 48.054298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057385, 0.660453, 0.748671,
		0.303861, -0.725883, 0.617059,
		0.950987, 0.192082, -0.242341,
		37.595104, 42.754936, 47.981598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289585, 42.660019, 48.748112>,  <36.929413, 42.620480, 48.151234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289585, 42.660019, 48.748112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.553413, 42.854160, 48.518539>,  <37.711708, 42.970646, 48.380795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.553413, 42.854160, 48.518539>,  <37.289585, 42.660019, 48.748112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553413, 42.854160, 48.518539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249899, 0.578536, 0.776432,
		0.708887, -0.655535, 0.260294,
		0.659568, 0.485356, -0.573934,
		37.751286, 42.999767, 48.346359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976944, 42.767731, 49.146072>,  <37.289585, 42.660019, 48.748112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976944, 42.767731, 49.146072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.987278, 43.038338, 48.851681>,  <37.993477, 43.200703, 48.675045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.987278, 43.038338, 48.851681>,  <37.976944, 42.767731, 49.146072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987278, 43.038338, 48.851681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343938, 0.685261, 0.641969,
		0.938637, -0.269716, -0.214974,
		0.025836, 0.676513, -0.735977,
		37.995029, 43.241291, 48.630886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775768, 43.005909, 48.971996>,  <37.976944, 42.767731, 49.146072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775768, 43.005909, 48.971996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.511570, 43.283417, 48.857159>,  <38.353050, 43.449921, 48.788258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.511570, 43.283417, 48.857159>,  <38.775768, 43.005909, 48.971996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511570, 43.283417, 48.857159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437404, 0.666324, 0.603896,
		0.610264, 0.273296, -0.743564,
		-0.660496, 0.693774, -0.287093,
		38.313419, 43.491550, 48.771030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191956, 43.589687, 48.718468>,  <38.775768, 43.005909, 48.971996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191956, 43.589687, 48.718468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.824863, 43.732639, 48.787815>,  <38.604607, 43.818409, 48.829422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.824863, 43.732639, 48.787815>,  <39.191956, 43.589687, 48.718468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824863, 43.732639, 48.787815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396528, 0.849814, 0.347248,
		-0.023232, 0.387425, -0.921609,
		-0.917729, 0.357376, 0.173367,
		38.549545, 43.839851, 48.839825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252445, 44.296185, 48.819859>,  <39.191956, 43.589687, 48.718468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252445, 44.296185, 48.819859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.894760, 44.277618, 48.997952>,  <38.680149, 44.266479, 49.104809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.894760, 44.277618, 48.997952>,  <39.252445, 44.296185, 48.819859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894760, 44.277618, 48.997952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277613, 0.722743, 0.632908,
		-0.351169, 0.689556, -0.633398,
		-0.894210, -0.046418, 0.445234,
		38.626495, 44.263695, 49.131523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092918, 44.971771, 49.019928>,  <39.252445, 44.296185, 48.819859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092918, 44.971771, 49.019928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.840645, 44.752171, 49.239323>,  <38.689281, 44.620411, 49.370960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.840645, 44.752171, 49.239323>,  <39.092918, 44.971771, 49.019928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840645, 44.752171, 49.239323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037074, 0.684655, 0.727924,
		-0.775156, 0.479423, -0.411445,
		-0.630681, -0.549001, 0.548488,
		38.651440, 44.587471, 49.403870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611797, 45.499355, 49.426880>,  <39.092918, 44.971771, 49.019928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611797, 45.499355, 49.426880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.545731, 45.170452, 49.644730>,  <38.506092, 44.973110, 49.775440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.545731, 45.170452, 49.644730>,  <38.611797, 45.499355, 49.426880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545731, 45.170452, 49.644730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153324, 0.524089, 0.837749,
		-0.974275, 0.221873, 0.039509,
		-0.165167, -0.822255, 0.544625,
		38.496181, 44.923775, 49.808117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043808, 45.669147, 49.890457>,  <38.611797, 45.499355, 49.426880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043808, 45.669147, 49.890457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.261921, 45.374359, 50.050228>,  <38.392788, 45.197487, 50.146091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.261921, 45.374359, 50.050228>,  <38.043808, 45.669147, 49.890457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261921, 45.374359, 50.050228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044927, 0.501509, 0.863985,
		-0.837050, -0.453168, 0.306572,
		0.545279, -0.736972, 0.399429,
		38.425503, 45.153267, 50.170055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817322, 45.375805, 50.625019>,  <38.043808, 45.669147, 49.890457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817322, 45.375805, 50.625019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.209919, 45.352425, 50.552067>,  <38.445477, 45.338398, 50.508297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.209919, 45.352425, 50.552067>,  <37.817322, 45.375805, 50.625019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209919, 45.352425, 50.552067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178549, 0.623699, 0.761000,
		0.069270, -0.779477, 0.622590,
		0.981490, -0.058448, -0.182378,
		38.504364, 45.334888, 50.497353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171383, 45.687248, 50.189610>,  <37.817322, 45.375805, 50.625019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171383, 45.687248, 50.189610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.908401, 45.988480, 50.199543>,  <36.750610, 46.169220, 50.205502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.908401, 45.988480, 50.199543>,  <37.171383, 45.687248, 50.189610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908401, 45.988480, 50.199543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387838, -0.309971, -0.868043,
		-0.646011, -0.580332, 0.495867,
		-0.657458, 0.753082, 0.024830,
		36.711163, 46.214405, 50.206993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538918, 45.340221, 50.178329>,  <37.171383, 45.687248, 50.189610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538918, 45.340221, 50.178329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.443157, 45.715412, 50.078030>,  <36.385700, 45.940529, 50.017849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.443157, 45.715412, 50.078030>,  <36.538918, 45.340221, 50.178329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443157, 45.715412, 50.078030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439807, -0.335012, -0.833268,
		-0.865595, -0.089205, 0.492734,
		-0.239404, 0.937981, -0.250752,
		36.371334, 45.996807, 50.002804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854053, 45.272850, 49.973003>,  <36.538918, 45.340221, 50.178329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854053, 45.272850, 49.973003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.992878, 45.607250, 49.802986>,  <36.076172, 45.807888, 49.700977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.992878, 45.607250, 49.802986>,  <35.854053, 45.272850, 49.973003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992878, 45.607250, 49.802986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330986, -0.314866, -0.889555,
		-0.877496, 0.449411, 0.167426,
		0.347059, 0.835996, -0.425042,
		36.096996, 45.858047, 49.675472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313660, 45.510265, 49.571262>,  <35.854053, 45.272850, 49.973003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313660, 45.510265, 49.571262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.631779, 45.695450, 49.414715>,  <35.822651, 45.806561, 49.320786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.631779, 45.695450, 49.414715>,  <35.313660, 45.510265, 49.571262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631779, 45.695450, 49.414715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307668, -0.248027, -0.918598,
		-0.522344, 0.850971, -0.054818,
		0.795296, 0.462959, -0.391372,
		35.870369, 45.834339, 49.297302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037796, 45.724010, 48.984810>,  <35.313660, 45.510265, 49.571262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037796, 45.724010, 48.984810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.435390, 45.760639, 48.960762>,  <35.673946, 45.782616, 48.946335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.435390, 45.760639, 48.960762>,  <35.037796, 45.724010, 48.984810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435390, 45.760639, 48.960762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035804, -0.247080, -0.968333,
		-0.103522, 0.964659, -0.242315,
		0.993983, 0.091567, -0.060117,
		35.733585, 45.788109, 48.942726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173077, 46.135769, 48.415852>,  <35.037796, 45.724010, 48.984810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173077, 46.135769, 48.415852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511772, 45.926189, 48.452763>,  <35.714989, 45.800442, 48.474911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511772, 45.926189, 48.452763>,  <35.173077, 46.135769, 48.415852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511772, 45.926189, 48.452763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147157, -0.397342, -0.905795,
		0.511257, 0.753389, -0.413546,
		0.846735, -0.523950, 0.092277,
		35.765793, 45.769005, 48.480446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503700, 46.173290, 47.749065>,  <35.173077, 46.135769, 48.415852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503700, 46.173290, 47.749065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.678745, 45.856766, 47.919868>,  <35.783772, 45.666851, 48.022350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.678745, 45.856766, 47.919868>,  <35.503700, 46.173290, 47.749065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678745, 45.856766, 47.919868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069189, -0.443847, -0.893427,
		0.896499, 0.420516, -0.139481,
		0.437609, -0.791306, 0.427004,
		35.810028, 45.619373, 48.047970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036949, 45.923248, 47.246330>,  <35.503700, 46.173290, 47.749065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036949, 45.923248, 47.246330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.974972, 45.611309, 47.488926>,  <35.937786, 45.424145, 47.634483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.974972, 45.611309, 47.488926>,  <36.036949, 45.923248, 47.246330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974972, 45.611309, 47.488926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051196, -0.619419, -0.783389,
		0.986596, -0.090332, 0.135901,
		-0.154945, -0.779846, 0.606491,
		35.928490, 45.377354, 47.670872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532940, 45.405231, 47.077930>,  <36.036949, 45.923248, 47.246330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532940, 45.405231, 47.077930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.236938, 45.209515, 47.262535>,  <36.059338, 45.092087, 47.373299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.236938, 45.209515, 47.262535>,  <36.532940, 45.405231, 47.077930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236938, 45.209515, 47.262535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031064, -0.660563, -0.750127,
		0.671889, -0.569431, 0.473618,
		-0.740001, -0.489290, 0.461514,
		36.014938, 45.062729, 47.400990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680607, 44.689713, 47.074196>,  <36.532940, 45.405231, 47.077930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680607, 44.689713, 47.074196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284050, 44.688862, 47.126560>,  <36.046116, 44.688351, 47.157978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284050, 44.688862, 47.126560>,  <36.680607, 44.689713, 47.074196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284050, 44.688862, 47.126560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096633, -0.662769, -0.742563,
		0.088341, -0.748821, 0.656859,
		-0.991392, -0.002125, 0.130911,
		35.986633, 44.688225, 47.165833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533306, 43.998783, 47.109959>,  <36.680607, 44.689713, 47.074196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533306, 43.998783, 47.109959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.200790, 44.189045, 46.994923>,  <36.001282, 44.303200, 46.925900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.200790, 44.189045, 46.994923>,  <36.533306, 43.998783, 47.109959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200790, 44.189045, 46.994923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045400, -0.573777, -0.817752,
		-0.553975, -0.666736, 0.498573,
		-0.831294, 0.475649, -0.287588,
		35.951405, 44.331741, 46.908646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025120, 43.440422, 46.852249>,  <36.533306, 43.998783, 47.109959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025120, 43.440422, 46.852249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.933537, 43.797703, 46.697453>,  <35.878586, 44.012074, 46.604572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.933537, 43.797703, 46.697453>,  <36.025120, 43.440422, 46.852249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933537, 43.797703, 46.697453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023330, -0.402475, -0.915133,
		-0.973157, -0.200498, 0.112988,
		-0.228957, 0.893204, -0.386994,
		35.864849, 44.065662, 46.581356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498386, 43.307861, 46.436440>,  <36.025120, 43.440422, 46.852249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498386, 43.307861, 46.436440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.587433, 43.668102, 46.287117>,  <35.640862, 43.884247, 46.197525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.587433, 43.668102, 46.287117>,  <35.498386, 43.307861, 46.436440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587433, 43.668102, 46.287117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170936, -0.340921, -0.924421,
		-0.959804, 0.269599, 0.078053,
		0.222613, 0.900605, -0.373302,
		35.654217, 43.938282, 46.175125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027679, 43.383675, 45.960857>,  <35.498386, 43.307861, 46.436440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027679, 43.383675, 45.960857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.319042, 43.628784, 45.838261>,  <35.493858, 43.775848, 45.764702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.319042, 43.628784, 45.838261>,  <35.027679, 43.383675, 45.960857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319042, 43.628784, 45.838261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033269, -0.478444, -0.877488,
		-0.684336, 0.628972, -0.368888,
		0.728407, 0.612769, -0.306491,
		35.537563, 43.812614, 45.746315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386448, 43.829044, 45.829502>,  <35.027679, 43.383675, 45.960857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386448, 43.829044, 45.829502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.005852, 43.716072, 45.780670>,  <33.777496, 43.648289, 45.751373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.005852, 43.716072, 45.780670>,  <34.386448, 43.829044, 45.829502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005852, 43.716072, 45.780670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199257, 0.263291, 0.943914,
		-0.234453, 0.922447, -0.306795,
		-0.951487, -0.282435, -0.122075,
		33.720406, 43.631340, 45.744049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004520, 44.474117, 46.018829>,  <34.386448, 43.829044, 45.829502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004520, 44.474117, 46.018829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778534, 44.145668, 46.051235>,  <33.642941, 43.948597, 46.070679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778534, 44.145668, 46.051235>,  <34.004520, 44.474117, 46.018829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778534, 44.145668, 46.051235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406318, 0.362324, 0.838825,
		-0.718136, 0.440988, -0.538340,
		-0.564965, -0.821128, 0.081016,
		33.609043, 43.899330, 46.075539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254185, 44.642395, 46.250286>,  <34.004520, 44.474117, 46.018829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254185, 44.642395, 46.250286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.337265, 44.275276, 46.385643>,  <33.387112, 44.055004, 46.466858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.337265, 44.275276, 46.385643>,  <33.254185, 44.642395, 46.250286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337265, 44.275276, 46.385643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343988, 0.255314, 0.903597,
		-0.915715, -0.304078, -0.262683,
		0.207698, -0.917797, 0.338394,
		33.399574, 43.999939, 46.487160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808857, 44.559853, 46.771992>,  <33.254185, 44.642395, 46.250286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808857, 44.559853, 46.771992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067696, 44.266384, 46.854923>,  <33.223000, 44.090302, 46.904682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067696, 44.266384, 46.854923>,  <32.808857, 44.559853, 46.771992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067696, 44.266384, 46.854923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118383, 0.171949, 0.977967,
		-0.753160, -0.657384, 0.024414,
		0.647098, -0.733675, 0.207328,
		33.261826, 44.046280, 46.917122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446663, 44.207104, 47.224869>,  <32.808857, 44.559853, 46.771992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446663, 44.207104, 47.224869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.829723, 44.102364, 47.272778>,  <33.059559, 44.039520, 47.301521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.829723, 44.102364, 47.272778>,  <32.446663, 44.207104, 47.224869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829723, 44.102364, 47.272778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132274, -0.030581, 0.990741,
		-0.255767, -0.964623, -0.063923,
		0.957646, -0.261854, 0.119773,
		33.117016, 44.023808, 47.308708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424458, 43.746235, 47.750397>,  <32.446663, 44.207104, 47.224869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424458, 43.746235, 47.750397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.800472, 43.882408, 47.742046>,  <33.026081, 43.964111, 47.737038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.800472, 43.882408, 47.742046>,  <32.424458, 43.746235, 47.750397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800472, 43.882408, 47.742046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027602, -0.014934, 0.999507,
		0.339953, -0.940151, -0.023435,
		0.940038, 0.340432, -0.020873,
		33.082485, 43.984539, 47.735783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665192, 43.497742, 48.358120>,  <32.424458, 43.746235, 47.750397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665192, 43.497742, 48.358120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.954231, 43.759602, 48.269318>,  <33.127655, 43.916718, 48.216034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.954231, 43.759602, 48.269318>,  <32.665192, 43.497742, 48.358120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954231, 43.759602, 48.269318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143632, 0.171964, 0.974576,
		0.676181, -0.736115, 0.030233,
		0.722599, 0.654648, -0.222009,
		33.171009, 43.955997, 48.202717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192150, 42.935612, 48.160191>,  <32.665192, 43.497742, 48.358120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192150, 42.935612, 48.160191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217705, 42.658379, 48.447399>,  <33.233036, 42.492039, 48.619724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217705, 42.658379, 48.447399>,  <33.192150, 42.935612, 48.160191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217705, 42.658379, 48.447399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391240, -0.644501, -0.656925,
		0.918068, 0.322888, 0.229986,
		0.063887, -0.693081, 0.718023,
		33.236870, 42.450455, 48.662807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757267, 42.652409, 47.975147>,  <33.192150, 42.935612, 48.160191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757267, 42.652409, 47.975147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580780, 42.385544, 48.215221>,  <33.474888, 42.225426, 48.359268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580780, 42.385544, 48.215221>,  <33.757267, 42.652409, 47.975147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580780, 42.385544, 48.215221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288513, -0.738759, -0.609094,
		0.849756, -0.095582, 0.518439,
		-0.441220, -0.667158, 0.600188,
		33.448414, 42.185398, 48.395279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315052, 42.077606, 48.066528>,  <33.757267, 42.652409, 47.975147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315052, 42.077606, 48.066528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.959743, 41.929630, 48.175430>,  <33.746559, 41.840843, 48.240772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.959743, 41.929630, 48.175430>,  <34.315052, 42.077606, 48.066528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959743, 41.929630, 48.175430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171409, -0.816888, -0.550739,
		0.426147, -0.442536, 0.789025,
		-0.888267, -0.369942, 0.272259,
		33.693264, 41.818649, 48.257107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430386, 41.387608, 48.284794>,  <34.315052, 42.077606, 48.066528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430386, 41.387608, 48.284794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.039097, 41.387585, 48.201767>,  <33.804325, 41.387569, 48.151951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.039097, 41.387585, 48.201767>,  <34.430386, 41.387608, 48.284794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039097, 41.387585, 48.201767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120289, -0.815124, -0.566660,
		-0.169161, -0.579286, 0.797378,
		-0.978220, -0.000059, -0.207569,
		33.745632, 41.387566, 48.139496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196270, 40.740353, 48.226906>,  <34.430386, 41.387608, 48.284794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196270, 40.740353, 48.226906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.910336, 40.902390, 47.998901>,  <33.738777, 40.999611, 47.862099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.910336, 40.902390, 47.998901>,  <34.196270, 40.740353, 48.226906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910336, 40.902390, 47.998901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060537, -0.776213, -0.627558,
		-0.696669, -0.483106, 0.530340,
		-0.714833, 0.405095, -0.570009,
		33.695885, 41.023918, 47.827900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769196, 40.161484, 48.059040>,  <34.196270, 40.740353, 48.226906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769196, 40.161484, 48.059040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685699, 40.443016, 47.787437>,  <33.635601, 40.611935, 47.624477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685699, 40.443016, 47.787437>,  <33.769196, 40.161484, 48.059040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685699, 40.443016, 47.787437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083923, -0.678848, -0.729467,
		-0.974364, -0.209254, 0.082636,
		-0.208741, 0.703831, -0.679006,
		33.623077, 40.654167, 47.583736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142403, 39.875187, 47.680725>,  <33.769196, 40.161484, 48.059040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142403, 39.875187, 47.680725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.299744, 40.136063, 47.421520>,  <33.394150, 40.292587, 47.265995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.299744, 40.136063, 47.421520>,  <33.142403, 39.875187, 47.680725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299744, 40.136063, 47.421520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044733, -0.717574, -0.695044,
		-0.918299, 0.244409, -0.311433,
		0.393351, 0.652190, -0.648015,
		33.417747, 40.331718, 47.227116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.119606, 42.893723, 51.673126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.157501, 42.974480, 51.283199>,  <37.180241, 43.022934, 51.049244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.157501, 42.974480, 51.283199>,  <37.119606, 42.893723, 51.673126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157501, 42.974480, 51.283199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045259, -0.977333, -0.206813,
		-0.994473, 0.063713, -0.083455,
		0.094740, 0.201893, -0.974815,
		37.185925, 43.035049, 50.990753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566860, 42.510139, 51.237808>,  <37.119606, 42.893723, 51.673126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566860, 42.510139, 51.237808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.891533, 42.596218, 51.020599>,  <37.086334, 42.647865, 50.890274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.891533, 42.596218, 51.020599>,  <36.566860, 42.510139, 51.237808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891533, 42.596218, 51.020599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001720, -0.930533, -0.366203,
		-0.584103, 0.296305, -0.755663,
		0.811678, 0.215200, -0.543018,
		37.135036, 42.660778, 50.857693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499027, 42.172932, 50.617512>,  <36.566860, 42.510139, 51.237808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499027, 42.172932, 50.617512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.894905, 42.210964, 50.660332>,  <37.132431, 42.233784, 50.686024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.894905, 42.210964, 50.660332>,  <36.499027, 42.172932, 50.617512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894905, 42.210964, 50.660332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128878, -0.917322, -0.376711,
		0.062378, 0.386625, -0.920125,
		0.989697, 0.095085, 0.107048,
		37.191814, 42.239491, 50.692448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877735, 42.070053, 49.851559>,  <36.499027, 42.172932, 50.617512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877735, 42.070053, 49.851559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.141788, 42.019817, 50.147789>,  <37.300220, 41.989677, 50.325527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.141788, 42.019817, 50.147789>,  <36.877735, 42.070053, 49.851559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141788, 42.019817, 50.147789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214169, -0.913533, -0.345817,
		0.719974, 0.386892, -0.576153,
		0.660129, -0.125585, 0.740580,
		37.339828, 41.982143, 50.369965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435738, 41.690998, 49.553223>,  <36.877735, 42.070053, 49.851559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435738, 41.690998, 49.553223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.509407, 41.615974, 49.939156>,  <37.553608, 41.570961, 50.170715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.509407, 41.615974, 49.939156>,  <37.435738, 41.690998, 49.553223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509407, 41.615974, 49.939156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094557, -0.973690, -0.207334,
		0.978335, 0.129417, -0.161593,
		0.184174, -0.187562, 0.964832,
		37.564659, 41.559708, 50.228603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181484, 41.490673, 49.634483>,  <37.435738, 41.690998, 49.553223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181484, 41.490673, 49.634483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.938866, 41.364761, 49.926517>,  <37.793297, 41.289215, 50.101738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.938866, 41.364761, 49.926517>,  <38.181484, 41.490673, 49.634483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938866, 41.364761, 49.926517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130630, -0.945261, -0.299026,
		0.784246, -0.086001, 0.614460,
		-0.606542, -0.314777, 0.730084,
		37.756905, 41.270329, 50.145542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406315, 40.928852, 49.862259>,  <38.181484, 41.490673, 49.634483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406315, 40.928852, 49.862259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.053165, 40.888603, 50.045742>,  <37.841274, 40.864452, 50.155830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.053165, 40.888603, 50.045742>,  <38.406315, 40.928852, 49.862259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053165, 40.888603, 50.045742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010047, -0.972502, -0.232677,
		0.469503, -0.210033, 0.857585,
		-0.882873, -0.100626, 0.458703,
		37.788303, 40.858414, 50.183353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540665, 40.412010, 50.213379>,  <38.406315, 40.928852, 49.862259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540665, 40.412010, 50.213379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.142441, 40.437515, 50.185707>,  <37.903507, 40.452816, 50.169102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.142441, 40.437515, 50.185707>,  <38.540665, 40.412010, 50.213379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142441, 40.437515, 50.185707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050485, -0.982546, -0.179038,
		-0.079392, -0.174751, 0.981406,
		-0.995564, 0.063760, -0.069184,
		37.843773, 40.456642, 50.164951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298485, 39.792965, 50.497921>,  <38.540665, 40.412010, 50.213379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298485, 39.792965, 50.497921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.987728, 39.936314, 50.290840>,  <37.801273, 40.022324, 50.166592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.987728, 39.936314, 50.290840>,  <38.298485, 39.792965, 50.497921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987728, 39.936314, 50.290840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196074, -0.919035, -0.341949,
		-0.598327, -0.164150, 0.784258,
		-0.776891, 0.358369, -0.517698,
		37.754662, 40.043823, 50.135532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864262, 39.246323, 50.407635>,  <38.298485, 39.792965, 50.497921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864262, 39.246323, 50.407635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.695736, 39.477802, 50.128319>,  <37.594620, 39.616688, 49.960728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.695736, 39.477802, 50.128319>,  <37.864262, 39.246323, 50.407635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695736, 39.477802, 50.128319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172184, -0.806997, -0.564897,
		-0.890421, -0.117764, 0.439639,
		-0.421312, 0.578695, -0.698290,
		37.569344, 39.651409, 49.918831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313007, 38.895626, 50.303898>,  <37.864262, 39.246323, 50.407635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313007, 38.895626, 50.303898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.400211, 39.126781, 49.989315>,  <37.452534, 39.265476, 49.800564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.400211, 39.126781, 49.989315>,  <37.313007, 38.895626, 50.303898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400211, 39.126781, 49.989315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215623, -0.757404, -0.616316,
		-0.951830, 0.303940, -0.040512,
		0.218007, 0.577892, -0.786456,
		37.465614, 39.300148, 49.753380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839226, 38.807972, 49.861347>,  <37.313007, 38.895626, 50.303898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839226, 38.807972, 49.861347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.086426, 38.968578, 49.590981>,  <37.234745, 39.064941, 49.428761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.086426, 38.968578, 49.590981>,  <36.839226, 38.807972, 49.861347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086426, 38.968578, 49.590981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344147, -0.634838, -0.691768,
		-0.706855, 0.660125, -0.254147,
		0.617996, 0.401516, -0.675919,
		37.271824, 39.089031, 49.388206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998264, 38.996563, 49.828156>,  <36.839226, 38.807972, 49.861347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998264, 38.996563, 49.828156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.609257, 38.918304, 49.777664>,  <35.375854, 38.871349, 49.747368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.609257, 38.918304, 49.777664>,  <35.998264, 38.996563, 49.828156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609257, 38.918304, 49.777664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231908, 0.765540, 0.600139,
		-0.020784, 0.612918, -0.789873,
		-0.972516, -0.195651, -0.126230,
		35.317501, 38.859608, 49.739796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662758, 39.555393, 49.679684>,  <35.998264, 38.996563, 49.828156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662758, 39.555393, 49.679684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.361206, 39.333881, 49.821106>,  <35.180275, 39.200974, 49.905960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.361206, 39.333881, 49.821106>,  <35.662758, 39.555393, 49.679684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361206, 39.333881, 49.821106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253822, 0.741824, 0.620703,
		-0.606005, 0.378194, -0.699805,
		-0.753878, -0.553775, 0.353555,
		35.135044, 39.167747, 49.927174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058365, 40.016670, 49.776535>,  <35.662758, 39.555393, 49.679684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058365, 40.016670, 49.776535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.980282, 39.702988, 50.012131>,  <34.933434, 39.514778, 50.153488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.980282, 39.702988, 50.012131>,  <35.058365, 40.016670, 49.776535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980282, 39.702988, 50.012131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304418, 0.619330, 0.723713,
		-0.932321, -0.038024, -0.359626,
		-0.195209, -0.784210, 0.588989,
		34.921719, 39.467724, 50.188828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331234, 40.099949, 50.011337>,  <35.058365, 40.016670, 49.776535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331234, 40.099949, 50.011337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.513882, 39.859402, 50.273594>,  <34.623470, 39.715073, 50.430946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.513882, 39.859402, 50.273594>,  <34.331234, 40.099949, 50.011337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513882, 39.859402, 50.273594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233697, 0.629996, 0.740602,
		-0.858420, -0.491393, 0.147131,
		0.456619, -0.601363, 0.655638,
		34.650867, 39.678993, 50.470284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836880, 40.000061, 50.584011>,  <34.331234, 40.099949, 50.011337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836880, 40.000061, 50.584011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.200371, 39.916718, 50.728680>,  <34.418465, 39.866711, 50.815479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.200371, 39.916718, 50.728680>,  <33.836880, 40.000061, 50.584011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200371, 39.916718, 50.728680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204101, 0.534011, 0.820472,
		-0.364089, -0.819401, 0.442743,
		0.908726, -0.208361, 0.361668,
		34.472988, 39.854210, 50.837181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709843, 39.916222, 51.321312>,  <33.836880, 40.000061, 50.584011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709843, 39.916222, 51.321312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.098778, 39.995998, 51.272671>,  <34.332138, 40.043865, 51.243484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.098778, 39.995998, 51.272671>,  <33.709843, 39.916222, 51.321312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098778, 39.995998, 51.272671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028914, 0.619345, 0.784587,
		0.231796, -0.759365, 0.607977,
		0.972334, 0.199443, -0.121606,
		34.390476, 40.055832, 51.236191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885208, 39.968063, 51.938480>,  <33.709843, 39.916222, 51.321312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885208, 39.968063, 51.938480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.135574, 40.175045, 51.705078>,  <34.285793, 40.299236, 51.565037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.135574, 40.175045, 51.705078>,  <33.885208, 39.968063, 51.938480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135574, 40.175045, 51.705078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005121, 0.745437, 0.666557,
		0.779880, -0.420192, 0.463925,
		0.625909, 0.517458, -0.583503,
		34.323349, 40.330280, 51.530029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113293, 40.550129, 52.362888>,  <33.885208, 39.968063, 51.938480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113293, 40.550129, 52.362888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.259693, 40.671356, 52.010933>,  <34.347534, 40.744091, 51.799759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.259693, 40.671356, 52.010933>,  <34.113293, 40.550129, 52.362888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259693, 40.671356, 52.010933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141227, 0.916447, 0.374407,
		0.919844, -0.261290, 0.292601,
		0.365982, 0.303073, -0.879889,
		34.369492, 40.762276, 51.746967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744602, 40.919609, 52.447098>,  <34.113293, 40.550129, 52.362888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744602, 40.919609, 52.447098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.615143, 41.048923, 52.091404>,  <34.537468, 41.126511, 51.877987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.615143, 41.048923, 52.091404>,  <34.744602, 40.919609, 52.447098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615143, 41.048923, 52.091404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252580, 0.935234, 0.248076,
		0.911840, -0.144313, -0.384345,
		-0.323652, 0.323283, -0.889234,
		34.518047, 41.145908, 51.824635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267395, 41.401791, 52.283096>,  <34.744602, 40.919609, 52.447098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267395, 41.401791, 52.283096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.928875, 41.496639, 52.092285>,  <34.725765, 41.553547, 51.977798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.928875, 41.496639, 52.092285>,  <35.267395, 41.401791, 52.283096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928875, 41.496639, 52.092285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066221, 0.935355, 0.347457,
		0.528578, 0.262463, -0.807291,
		-0.846298, 0.237118, -0.477027,
		34.674984, 41.567776, 51.949177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434948, 42.157875, 52.071808>,  <35.267395, 41.401791, 52.283096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434948, 42.157875, 52.071808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.052532, 42.116791, 51.961948>,  <34.823082, 42.092140, 51.896034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.052532, 42.116791, 51.961948>,  <35.434948, 42.157875, 52.071808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052532, 42.116791, 51.961948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143934, 0.980423, 0.134366,
		0.255469, 0.167991, -0.952111,
		-0.956043, -0.102714, -0.274647,
		34.765720, 42.085976, 51.879555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293198, 42.726257, 51.599144>,  <35.434948, 42.157875, 52.071808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293198, 42.726257, 51.599144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.951801, 42.606995, 51.770100>,  <34.746964, 42.535439, 51.872673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.951801, 42.606995, 51.770100>,  <35.293198, 42.726257, 51.599144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951801, 42.606995, 51.770100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176074, 0.936909, 0.301993,
		-0.490464, 0.182495, -0.852139,
		-0.853489, -0.298156, 0.427387,
		34.695755, 42.517548, 51.898315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792320, 43.123459, 51.283283>,  <35.293198, 42.726257, 51.599144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792320, 43.123459, 51.283283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.681858, 43.003952, 51.648682>,  <34.615582, 42.932247, 51.867920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.681858, 43.003952, 51.648682>,  <34.792320, 43.123459, 51.283283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681858, 43.003952, 51.648682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262469, 0.937772, 0.227363,
		-0.924581, -0.176978, -0.337384,
		-0.276151, -0.298768, 0.913498,
		34.599014, 42.914322, 51.922729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091969, 43.314453, 51.432594>,  <34.792320, 43.123459, 51.283283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091969, 43.314453, 51.432594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.292393, 43.303646, 51.778591>,  <34.412647, 43.297161, 51.986191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.292393, 43.303646, 51.778591>,  <34.091969, 43.314453, 51.432594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292393, 43.303646, 51.778591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407964, 0.874111, 0.263619,
		-0.763221, -0.484974, 0.426959,
		0.501058, -0.027016, 0.864992,
		34.442711, 43.295540, 52.038090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440899, 43.604115, 51.635639>,  <34.091969, 43.314453, 51.432594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440899, 43.604115, 51.635639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.074146, 43.570515, 51.479549>,  <32.854095, 43.550354, 51.385895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.074146, 43.570515, 51.479549>,  <33.440899, 43.604115, 51.635639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074146, 43.570515, 51.479549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398089, -0.263953, -0.878552,
		-0.029200, -0.960871, 0.275454,
		-0.916882, -0.084002, -0.390220,
		32.799080, 43.545315, 51.362484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407009, 43.004261, 51.419044>,  <33.440899, 43.604115, 51.635639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407009, 43.004261, 51.419044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.126682, 43.197647, 51.209236>,  <32.958488, 43.313679, 51.083351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.126682, 43.197647, 51.209236>,  <33.407009, 43.004261, 51.419044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126682, 43.197647, 51.209236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298332, -0.469259, -0.831140,
		-0.647964, -0.738955, 0.184630,
		-0.700814, 0.483468, -0.524518,
		32.916439, 43.342686, 51.051880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223171, 42.515213, 51.064510>,  <33.407009, 43.004261, 51.419044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223171, 42.515213, 51.064510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.093033, 42.827412, 50.850975>,  <33.014950, 43.014729, 50.722855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.093033, 42.827412, 50.850975>,  <33.223171, 42.515213, 51.064510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093033, 42.827412, 50.850975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204771, -0.493004, -0.845586,
		-0.923159, -0.384419, 0.000573,
		-0.325342, 0.780492, -0.533839,
		32.995430, 43.061558, 50.690823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700439, 42.267693, 50.630138>,  <33.223171, 42.515213, 51.064510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700439, 42.267693, 50.630138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.782978, 42.612541, 50.445023>,  <32.832500, 42.819450, 50.333954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.782978, 42.612541, 50.445023>,  <32.700439, 42.267693, 50.630138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782978, 42.612541, 50.445023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175740, -0.497927, -0.849226,
		-0.962567, 0.093907, -0.254255,
		0.206349, 0.862120, -0.462785,
		32.844883, 42.871178, 50.306187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254379, 42.320057, 49.939629>,  <32.700439, 42.267693, 50.630138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254379, 42.320057, 49.939629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.577709, 42.553970, 49.912380>,  <32.771706, 42.694317, 49.896030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.577709, 42.553970, 49.912380>,  <32.254379, 42.320057, 49.939629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577709, 42.553970, 49.912380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238915, -0.431573, -0.869864,
		-0.538082, 0.686857, -0.488564,
		0.808324, 0.584783, -0.068121,
		32.820206, 42.729404, 49.891945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165291, 42.684853, 49.339893>,  <32.254379, 42.320057, 49.939629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165291, 42.684853, 49.339893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.551167, 42.684593, 49.445251>,  <32.782692, 42.684437, 49.508469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.551167, 42.684593, 49.445251>,  <32.165291, 42.684853, 49.339893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551167, 42.684593, 49.445251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234686, -0.451889, -0.860650,
		0.119587, 0.892074, -0.435778,
		0.964687, -0.000651, 0.263397,
		32.840572, 42.684399, 49.524269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521927, 42.848766, 48.580502>,  <32.165291, 42.684853, 49.339893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521927, 42.848766, 48.580502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.811470, 42.712280, 48.820370>,  <32.985195, 42.630390, 48.964291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.811470, 42.712280, 48.820370>,  <32.521927, 42.848766, 48.580502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811470, 42.712280, 48.820370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396296, -0.505862, -0.766194,
		0.564786, 0.792262, -0.230950,
		0.723855, -0.341212, 0.599674,
		33.028625, 42.609917, 49.000271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142059, 43.223381, 48.810043>,  <32.521927, 42.848766, 48.580502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142059, 43.223381, 48.810043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.245564, 43.589531, 48.686668>,  <33.307667, 43.809219, 48.612644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.245564, 43.589531, 48.686668>,  <33.142059, 43.223381, 48.810043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245564, 43.589531, 48.686668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414870, 0.183045, 0.891278,
		0.872311, -0.358591, -0.332395,
		0.258761, 0.915372, -0.308441,
		33.323193, 43.864143, 48.594135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848637, 43.383327, 49.011978>,  <33.142059, 43.223381, 48.810043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848637, 43.383327, 49.011978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.671143, 43.738167, 48.961140>,  <33.564648, 43.951073, 48.930637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.671143, 43.738167, 48.961140>,  <33.848637, 43.383327, 49.011978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671143, 43.738167, 48.961140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395404, 0.321072, 0.860563,
		0.804213, 0.331606, -0.493233,
		-0.443731, 0.887102, -0.127092,
		33.538025, 44.004299, 48.923012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312115, 43.871380, 49.099892>,  <33.848637, 43.383327, 49.011978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312115, 43.871380, 49.099892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.993336, 44.106632, 49.155006>,  <33.802071, 44.247784, 49.188076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.993336, 44.106632, 49.155006>,  <34.312115, 43.871380, 49.099892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993336, 44.106632, 49.155006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486764, 0.490202, 0.723024,
		0.357687, 0.643279, -0.676943,
		-0.796944, 0.588128, 0.137786,
		33.754253, 44.283070, 49.196342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499004, 44.596138, 49.165462>,  <34.312115, 43.871380, 49.099892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499004, 44.596138, 49.165462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.134193, 44.621941, 49.327473>,  <33.915306, 44.637421, 49.424679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.134193, 44.621941, 49.327473>,  <34.499004, 44.596138, 49.165462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134193, 44.621941, 49.327473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376250, 0.524610, 0.763689,
		-0.163219, 0.848895, -0.502729,
		-0.912028, 0.064503, 0.405023,
		33.860584, 44.641293, 49.448978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468613, 45.355206, 49.407536>,  <34.499004, 44.596138, 49.165462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468613, 45.355206, 49.407536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.198051, 45.138359, 49.606972>,  <34.035713, 45.008251, 49.726635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.198051, 45.138359, 49.606972>,  <34.468613, 45.355206, 49.407536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198051, 45.138359, 49.606972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200426, 0.515924, 0.832858,
		-0.708738, 0.663278, -0.240319,
		-0.676402, -0.542112, 0.498593,
		33.995132, 44.975727, 49.756550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192543, 45.800777, 49.916100>,  <34.468613, 45.355206, 49.407536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192543, 45.800777, 49.916100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.101818, 45.438816, 50.060158>,  <34.047382, 45.221638, 50.146595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.101818, 45.438816, 50.060158>,  <34.192543, 45.800777, 49.916100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101818, 45.438816, 50.060158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229421, 0.309741, 0.922728,
		-0.946533, 0.291908, 0.137352,
		-0.226808, -0.904903, 0.360150,
		34.033775, 45.167347, 50.168201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926132, 45.927082, 50.544403>,  <34.192543, 45.800777, 49.916100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926132, 45.927082, 50.544403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.046509, 45.547169, 50.578674>,  <34.118736, 45.319221, 50.599236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.046509, 45.547169, 50.578674>,  <33.926132, 45.927082, 50.544403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046509, 45.547169, 50.578674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346389, 0.192576, 0.918112,
		-0.888508, -0.246623, 0.386950,
		0.300945, -0.949785, 0.085678,
		34.136791, 45.262234, 50.604378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817772, 45.806473, 51.292763>,  <33.926132, 45.927082, 50.544403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817772, 45.806473, 51.292763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.063267, 45.516251, 51.168247>,  <34.210564, 45.342117, 51.093536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.063267, 45.516251, 51.168247>,  <33.817772, 45.806473, 51.292763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063267, 45.516251, 51.168247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555170, 0.116264, 0.823570,
		-0.561351, -0.678275, 0.474160,
		0.613735, -0.725552, -0.311293,
		34.247387, 45.298584, 51.074860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060150, 45.498211, 51.921684>,  <33.817772, 45.806473, 51.292763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060150, 45.498211, 51.921684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.337448, 45.351707, 51.673405>,  <34.503826, 45.263805, 51.524437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.337448, 45.351707, 51.673405>,  <34.060150, 45.498211, 51.921684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337448, 45.351707, 51.673405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686022, 0.071403, 0.724069,
		-0.220878, -0.927769, 0.300762,
		0.693244, -0.366260, -0.620698,
		34.545422, 45.241829, 51.487194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.426067, 36.585262, 37.876804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703728, 36.810242, 38.056499>,  <35.870323, 36.945229, 38.164318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703728, 36.810242, 38.056499>,  <35.426067, 36.585262, 37.876804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703728, 36.810242, 38.056499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686085, 0.328102, 0.649336,
		0.217819, -0.758951, 0.613635,
		0.694148, 0.562443, 0.449238,
		35.911972, 36.978973, 38.191269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084465, 36.750774, 38.541275>,  <35.426067, 36.585262, 37.876804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084465, 36.750774, 38.541275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368858, 37.030487, 38.511581>,  <35.539494, 37.198315, 38.493767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368858, 37.030487, 38.511581>,  <35.084465, 36.750774, 38.541275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368858, 37.030487, 38.511581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453977, 0.537042, 0.710979,
		0.537042, -0.471792, 0.699284,
		-0.710979, -0.699284, 0.074231,
		35.582153, 37.240273, 38.489311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188099, 36.823578, 39.205605>,  <35.084465, 36.750774, 38.541275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188099, 36.823578, 39.205605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329063, 37.144970, 39.013676>,  <35.413643, 37.337803, 38.898518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329063, 37.144970, 39.013676>,  <35.188099, 36.823578, 39.205605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329063, 37.144970, 39.013676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261470, 0.576833, 0.773884,
		0.898576, -0.147267, 0.413369,
		0.352412, 0.803478, -0.479822,
		35.434788, 37.386013, 38.869728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682869, 37.126175, 39.698048>,  <35.188099, 36.823578, 39.205605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682869, 37.126175, 39.698048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558006, 37.405914, 39.440842>,  <35.483089, 37.573757, 39.286518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558006, 37.405914, 39.440842>,  <35.682869, 37.126175, 39.698048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558006, 37.405914, 39.440842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081349, 0.654675, 0.751520,
		0.946543, 0.286898, -0.147467,
		-0.312153, 0.699350, -0.643017,
		35.464359, 37.615719, 39.247936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927662, 37.675156, 40.020935>,  <35.682869, 37.126175, 39.698048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927662, 37.675156, 40.020935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652443, 37.790848, 39.754719>,  <35.487312, 37.860264, 39.594990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652443, 37.790848, 39.754719>,  <35.927662, 37.675156, 40.020935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652443, 37.790848, 39.754719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424060, 0.583994, 0.692188,
		0.588871, 0.758484, -0.279163,
		-0.688043, 0.289228, -0.665540,
		35.446030, 37.877617, 39.555058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852215, 38.408966, 40.108875>,  <35.927662, 37.675156, 40.020935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852215, 38.408966, 40.108875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519344, 38.298325, 39.916637>,  <35.319622, 38.231941, 39.801296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519344, 38.298325, 39.916637>,  <35.852215, 38.408966, 40.108875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519344, 38.298325, 39.916637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546286, 0.557657, 0.624972,
		0.095138, 0.782630, -0.615175,
		-0.832178, -0.276603, -0.480594,
		35.269691, 38.215343, 39.772461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465992, 39.039627, 40.034348>,  <35.852215, 38.408966, 40.108875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465992, 39.039627, 40.034348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196728, 38.749794, 39.975250>,  <35.035168, 38.575893, 39.939793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196728, 38.749794, 39.975250>,  <35.465992, 39.039627, 40.034348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196728, 38.749794, 39.975250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661207, 0.500299, 0.559022,
		-0.331142, 0.474003, -0.815883,
		-0.673164, -0.724584, -0.147744,
		34.994778, 38.532417, 39.930927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897873, 39.520618, 39.797188>,  <35.465992, 39.039627, 40.034348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897873, 39.520618, 39.797188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740326, 39.162735, 39.881439>,  <34.645798, 38.948006, 39.931988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740326, 39.162735, 39.881439>,  <34.897873, 39.520618, 39.797188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740326, 39.162735, 39.881439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774676, 0.446450, 0.447838,
		-0.494719, 0.013223, -0.868953,
		-0.393866, -0.894711, 0.210624,
		34.622166, 38.894321, 39.944626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124271, 39.537113, 39.728851>,  <34.897873, 39.520618, 39.797188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124271, 39.537113, 39.728851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177876, 39.211815, 39.955364>,  <34.210037, 39.016636, 40.091274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177876, 39.211815, 39.955364>,  <34.124271, 39.537113, 39.728851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177876, 39.211815, 39.955364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699174, 0.327371, 0.635597,
		-0.702280, -0.481110, -0.524726,
		0.134012, -0.813242, 0.566285,
		34.218079, 38.967842, 40.125248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407986, 39.339737, 39.885094>,  <34.124271, 39.537113, 39.728851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407986, 39.339737, 39.885094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678082, 39.218185, 40.153931>,  <33.840141, 39.145256, 40.315231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678082, 39.218185, 40.153931>,  <33.407986, 39.339737, 39.885094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678082, 39.218185, 40.153931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431075, 0.576799, 0.693886,
		-0.598517, -0.758263, 0.258486,
		0.675242, -0.303876, 0.672092,
		33.880653, 39.127022, 40.355556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003696, 39.092091, 40.453117>,  <33.407986, 39.339737, 39.885094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003696, 39.092091, 40.453117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365223, 39.192253, 40.591915>,  <33.582138, 39.252350, 40.675194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365223, 39.192253, 40.591915>,  <33.003696, 39.092091, 40.453117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365223, 39.192253, 40.591915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426794, 0.586107, 0.688713,
		-0.030918, -0.770568, 0.636607,
		0.903820, 0.250406, 0.346995,
		33.636368, 39.267376, 40.696014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998947, 38.986698, 41.109119>,  <33.003696, 39.092091, 40.453117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998947, 38.986698, 41.109119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298702, 39.250622, 41.086975>,  <33.478558, 39.408978, 41.073689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298702, 39.250622, 41.086975>,  <32.998947, 38.986698, 41.109119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298702, 39.250622, 41.086975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312305, 0.425951, 0.849136,
		0.583851, -0.619044, 0.525265,
		0.749389, 0.659811, -0.055362,
		33.523518, 39.448566, 41.070366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213417, 38.344795, 41.481010>,  <32.998947, 38.986698, 41.109119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213417, 38.344795, 41.481010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156067, 38.021980, 41.710140>,  <33.121658, 37.828289, 41.847618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156067, 38.021980, 41.710140>,  <33.213417, 38.344795, 41.481010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156067, 38.021980, 41.710140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072126, -0.585787, -0.807249,
		0.987037, -0.074421, 0.142194,
		-0.143371, -0.807041, 0.572826,
		33.113056, 37.779869, 41.881989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726067, 37.772072, 41.213554>,  <33.213417, 38.344795, 41.481010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726067, 37.772072, 41.213554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448349, 37.576717, 41.424999>,  <33.281719, 37.459503, 41.551865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448349, 37.576717, 41.424999>,  <33.726067, 37.772072, 41.213554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448349, 37.576717, 41.424999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130342, -0.637023, -0.759745,
		0.707787, -0.596389, 0.378626,
		-0.694297, -0.488386, 0.528611,
		33.240059, 37.430202, 41.583584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902035, 37.152008, 41.119404>,  <33.726067, 37.772072, 41.213554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902035, 37.152008, 41.119404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524662, 37.107510, 41.244339>,  <33.298237, 37.080811, 41.319302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524662, 37.107510, 41.244339>,  <33.902035, 37.152008, 41.119404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524662, 37.107510, 41.244339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134169, -0.733361, -0.666468,
		0.303202, -0.670675, 0.676951,
		-0.943434, -0.111249, 0.312341,
		33.241631, 37.074135, 41.338039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808601, 36.501194, 41.182129>,  <33.902035, 37.152008, 41.119404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808601, 36.501194, 41.182129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424736, 36.613342, 41.173729>,  <33.194416, 36.680634, 41.168690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424736, 36.613342, 41.173729>,  <33.808601, 36.501194, 41.182129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424736, 36.613342, 41.173729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233253, -0.835624, -0.497319,
		-0.156984, -0.472359, 0.867313,
		-0.959661, 0.280374, -0.021000,
		33.136837, 36.697456, 41.167427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475307, 35.986504, 41.459999>,  <33.808601, 36.501194, 41.182129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475307, 35.986504, 41.459999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186382, 36.158993, 41.243736>,  <33.013027, 36.262486, 41.113979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186382, 36.158993, 41.243736>,  <33.475307, 35.986504, 41.459999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186382, 36.158993, 41.243736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184078, -0.873469, -0.450740,
		-0.666617, -0.226053, 0.710298,
		-0.722314, 0.431221, -0.540658,
		32.969688, 36.288361, 41.081539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902977, 35.505642, 41.646706>,  <33.475307, 35.986504, 41.459999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902977, 35.505642, 41.646706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820030, 35.733681, 41.328716>,  <32.770260, 35.870506, 41.137924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820030, 35.733681, 41.328716>,  <32.902977, 35.505642, 41.646706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820030, 35.733681, 41.328716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427784, -0.783668, -0.450405,
		-0.879772, 0.246677, 0.406390,
		-0.207370, 0.570100, -0.794974,
		32.757820, 35.904713, 41.090225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306206, 35.362610, 41.556999>,  <32.902977, 35.505642, 41.646706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306206, 35.362610, 41.556999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455627, 35.483978, 41.206367>,  <32.545280, 35.556797, 40.995987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455627, 35.483978, 41.206367>,  <32.306206, 35.362610, 41.556999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455627, 35.483978, 41.206367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325860, -0.841838, -0.430259,
		-0.868488, 0.446369, -0.215602,
		0.373556, 0.303419, -0.876580,
		32.567696, 35.575005, 40.943394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724588, 35.375317, 41.031708>,  <32.306206, 35.362610, 41.556999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724588, 35.375317, 41.031708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069695, 35.359753, 40.830067>,  <32.276756, 35.350414, 40.709080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069695, 35.359753, 40.830067>,  <31.724588, 35.375317, 41.031708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069695, 35.359753, 40.830067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341911, -0.779393, -0.525017,
		-0.372470, 0.625326, -0.685736,
		0.862765, -0.038908, -0.504106,
		32.328526, 35.348080, 40.678833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493822, 34.981743, 40.588745>,  <31.724588, 35.375317, 41.031708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493822, 34.981743, 40.588745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885460, 34.993504, 40.508236>,  <32.120441, 35.000561, 40.459930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885460, 34.993504, 40.508236>,  <31.493822, 34.981743, 40.588745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885460, 34.993504, 40.508236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082227, -0.847833, -0.523850,
		-0.186047, 0.529448, -0.827690,
		0.979094, 0.029402, -0.201272,
		32.179188, 35.002323, 40.447853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537472, 34.858482, 39.814487>,  <31.493822, 34.981743, 40.588745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537472, 34.858482, 39.814487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883785, 34.763245, 39.990547>,  <32.091572, 34.706100, 40.096184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883785, 34.763245, 39.990547>,  <31.537472, 34.858482, 39.814487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883785, 34.763245, 39.990547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018304, -0.863900, -0.503330,
		0.500086, 0.443831, -0.743591,
		0.865782, -0.238098, 0.440149,
		32.143520, 34.691814, 40.122593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839182, 34.349781, 39.310658>,  <31.537472, 34.858482, 39.814487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839182, 34.349781, 39.310658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063114, 34.296978, 39.637867>,  <32.197475, 34.265297, 39.834194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063114, 34.296978, 39.637867>,  <31.839182, 34.349781, 39.310658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063114, 34.296978, 39.637867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024493, -0.984161, -0.175576,
		0.828244, 0.118329, -0.547731,
		0.559832, -0.132004, 0.818024,
		32.231064, 34.257378, 39.883274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555889, 33.865982, 39.161224>,  <31.839182, 34.349781, 39.310658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555889, 33.865982, 39.161224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442463, 33.851978, 39.544552>,  <32.374409, 33.843575, 39.774548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442463, 33.851978, 39.544552>,  <32.555889, 33.865982, 39.161224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442463, 33.851978, 39.544552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121093, -0.990027, -0.071998,
		0.951277, -0.136461, 0.276495,
		-0.283562, -0.035008, 0.958315,
		32.357395, 33.841476, 39.832047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987759, 33.322399, 39.493557>,  <32.555889, 33.865982, 39.161224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987759, 33.322399, 39.493557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690544, 33.374813, 39.756077>,  <32.512215, 33.406261, 39.913589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690544, 33.374813, 39.756077>,  <32.987759, 33.322399, 39.493557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690544, 33.374813, 39.756077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139872, -0.989394, 0.039187,
		0.654474, -0.062681, 0.753482,
		-0.743034, 0.131038, 0.656300,
		32.467632, 33.414124, 39.952969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160580, 32.956390, 40.064583>,  <32.987759, 33.322399, 39.493557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160580, 32.956390, 40.064583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764153, 32.999786, 40.033558>,  <32.526295, 33.025822, 40.014942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764153, 32.999786, 40.033558>,  <33.160580, 32.956390, 40.064583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764153, 32.999786, 40.033558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099265, -0.988485, -0.114207,
		-0.089058, -0.105488, 0.990425,
		-0.991068, 0.108485, -0.077562,
		32.466831, 33.032333, 40.010288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457096, 32.880524, 40.721718>,  <33.160580, 32.956390, 40.064583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457096, 32.880524, 40.721718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299660, 32.542244, 40.865871>,  <33.205200, 32.339275, 40.952362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299660, 32.542244, 40.865871>,  <33.457096, 32.880524, 40.721718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299660, 32.542244, 40.865871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003152, 0.393265, 0.919420,
		-0.919282, 0.360735, -0.157449,
		-0.393586, -0.845702, 0.360385,
		33.181583, 32.288532, 40.973988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841824, 32.949162, 41.177044>,  <33.457096, 32.880524, 40.721718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841824, 32.949162, 41.177044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042103, 32.623833, 41.295567>,  <33.162270, 32.428635, 41.366680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042103, 32.623833, 41.295567>,  <32.841824, 32.949162, 41.177044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042103, 32.623833, 41.295567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094325, 0.391534, 0.915316,
		-0.860466, -0.430350, 0.272758,
		0.500700, -0.813326, 0.296309,
		33.192314, 32.379833, 41.384460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592487, 33.012096, 41.901241>,  <32.841824, 32.949162, 41.177044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592487, 33.012096, 41.901241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912189, 32.783680, 41.826294>,  <33.104012, 32.646629, 41.781326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912189, 32.783680, 41.826294>,  <32.592487, 33.012096, 41.901241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912189, 32.783680, 41.826294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478520, 0.416033, 0.773263,
		-0.363614, -0.707692, 0.605770,
		0.799252, -0.571042, -0.187370,
		33.151966, 32.612366, 41.770084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987888, 32.615215, 42.540745>,  <32.592487, 33.012096, 41.901241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987888, 32.615215, 42.540745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242558, 32.705654, 42.245850>,  <33.395359, 32.759918, 42.068913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242558, 32.705654, 42.245850>,  <32.987888, 32.615215, 42.540745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242558, 32.705654, 42.245850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640740, 0.376851, 0.668907,
		0.429068, -0.898256, 0.095062,
		0.636674, 0.226096, -0.737243,
		33.433559, 32.773483, 42.024677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540424, 32.159821, 42.534786>,  <32.987888, 32.615215, 42.540745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540424, 32.159821, 42.534786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598034, 32.534615, 42.407467>,  <33.632599, 32.759491, 42.331074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598034, 32.534615, 42.407467>,  <33.540424, 32.159821, 42.534786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598034, 32.534615, 42.407467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443161, 0.226529, 0.867348,
		0.884797, -0.265978, -0.382609,
		0.144023, 0.936985, -0.318303,
		33.641239, 32.815708, 42.311977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163548, 32.293396, 42.869598>,  <33.540424, 32.159821, 42.534786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163548, 32.293396, 42.869598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006329, 32.645233, 42.762394>,  <33.911999, 32.856335, 42.698071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006329, 32.645233, 42.762394>,  <34.163548, 32.293396, 42.869598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006329, 32.645233, 42.762394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443705, 0.436719, 0.782562,
		0.805381, 0.188666, -0.561931,
		-0.393049, 0.879592, -0.268013,
		33.888412, 32.909111, 42.681992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684662, 32.926384, 42.872105>,  <34.163548, 32.293396, 42.869598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684662, 32.926384, 42.872105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311024, 33.056496, 42.930973>,  <34.086842, 33.134563, 42.966293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311024, 33.056496, 42.930973>,  <34.684662, 32.926384, 42.872105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311024, 33.056496, 42.930973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304582, 0.510974, 0.803826,
		0.186272, 0.795674, -0.576373,
		-0.934095, 0.325283, 0.147168,
		34.030796, 33.154079, 42.975124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803173, 33.707623, 43.044804>,  <34.684662, 32.926384, 42.872105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803173, 33.707623, 43.044804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418983, 33.643513, 43.135838>,  <34.188469, 33.605049, 43.190460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418983, 33.643513, 43.135838>,  <34.803173, 33.707623, 43.044804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418983, 33.643513, 43.135838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053671, 0.695639, 0.716384,
		-0.273135, 0.700286, -0.659543,
		-0.960477, -0.160271, 0.227588,
		34.130840, 33.595432, 43.204113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500080, 34.391586, 43.014771>,  <34.803173, 33.707623, 43.044804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500080, 34.391586, 43.014771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266121, 34.170479, 43.252205>,  <34.125744, 34.037815, 43.394665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266121, 34.170479, 43.252205>,  <34.500080, 34.391586, 43.014771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266121, 34.170479, 43.252205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025198, 0.719086, 0.694464,
		-0.810715, 0.421149, -0.406664,
		-0.584899, -0.552765, 0.593585,
		34.090652, 34.004650, 43.430279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990879, 34.878571, 43.378021>,  <34.500080, 34.391586, 43.014771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990879, 34.878571, 43.378021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999615, 34.550587, 43.606823>,  <34.004856, 34.353798, 43.744106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999615, 34.550587, 43.606823>,  <33.990879, 34.878571, 43.378021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999615, 34.550587, 43.606823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012291, 0.571880, 0.820245,
		-0.999686, -0.024941, 0.002408,
		0.021835, -0.819958, 0.572007,
		34.006165, 34.304600, 43.778423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660107, 35.078938, 43.966614>,  <33.990879, 34.878571, 43.378021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660107, 35.078938, 43.966614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813709, 34.748516, 44.131622>,  <33.905872, 34.550262, 44.230625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813709, 34.748516, 44.131622>,  <33.660107, 35.078938, 43.966614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813709, 34.748516, 44.131622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173938, 0.503492, 0.846311,
		-0.906799, -0.253235, 0.337026,
		0.384005, -0.826055, 0.412519,
		33.928909, 34.500698, 44.255379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252148, 34.919121, 44.608768>,  <33.660107, 35.078938, 43.966614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252148, 34.919121, 44.608768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606163, 34.736824, 44.646709>,  <33.818573, 34.627445, 44.669472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606163, 34.736824, 44.646709>,  <33.252148, 34.919121, 44.608768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606163, 34.736824, 44.646709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142046, 0.458431, 0.877305,
		-0.443310, -0.762979, 0.470468,
		0.885042, -0.455746, 0.094849,
		33.871677, 34.600101, 44.675163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258026, 34.618786, 45.242271>,  <33.252148, 34.919121, 44.608768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258026, 34.618786, 45.242271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644020, 34.654968, 45.143787>,  <33.875618, 34.676678, 45.084698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644020, 34.654968, 45.143787>,  <33.258026, 34.618786, 45.242271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644020, 34.654968, 45.143787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158280, 0.547679, 0.821581,
		0.209164, -0.831784, 0.514185,
		0.964986, 0.090460, -0.246209,
		33.933517, 34.682106, 45.069923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612946, 34.633430, 45.891087>,  <33.258026, 34.618786, 45.242271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612946, 34.633430, 45.891087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871754, 34.775471, 45.621193>,  <34.027039, 34.860695, 45.459255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871754, 34.775471, 45.621193>,  <33.612946, 34.633430, 45.891087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871754, 34.775471, 45.621193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411195, 0.582714, 0.700973,
		0.642097, -0.730990, 0.231008,
		0.647016, 0.355103, -0.674739,
		34.065857, 34.882000, 45.418770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217621, 34.729076, 46.315845>,  <33.612946, 34.633430, 45.891087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217621, 34.729076, 46.315845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309952, 34.958435, 46.001408>,  <34.365353, 35.096050, 45.812744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309952, 34.958435, 46.001408>,  <34.217621, 34.729076, 46.315845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309952, 34.958435, 46.001408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517059, 0.612104, 0.598314,
		0.824237, -0.544564, -0.155186,
		0.230830, 0.573393, -0.786090,
		34.379200, 35.130451, 45.765579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960758, 34.844795, 46.375938>,  <34.217621, 34.729076, 46.315845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960758, 34.844795, 46.375938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819218, 35.126087, 46.129280>,  <34.734291, 35.294861, 45.981285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819218, 35.126087, 46.129280>,  <34.960758, 34.844795, 46.375938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819218, 35.126087, 46.129280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421278, 0.708476, 0.566204,
		0.835052, -0.059427, -0.546952,
		-0.353855, 0.703228, -0.616649,
		34.713062, 35.337055, 45.944286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467991, 35.300007, 46.383198>,  <34.960758, 34.844795, 46.375938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467991, 35.300007, 46.383198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178635, 35.526134, 46.224640>,  <35.005020, 35.661812, 46.129505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178635, 35.526134, 46.224640>,  <35.467991, 35.300007, 46.383198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178635, 35.526134, 46.224640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317825, 0.782319, 0.535691,
		0.612943, 0.261527, -0.745590,
		-0.723387, 0.565315, -0.396397,
		34.961620, 35.695728, 46.105721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739899, 35.970627, 46.072716>,  <35.467991, 35.300007, 46.383198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739899, 35.970627, 46.072716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358227, 36.018921, 46.182240>,  <35.129223, 36.047897, 46.247952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358227, 36.018921, 46.182240>,  <35.739899, 35.970627, 46.072716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358227, 36.018921, 46.182240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267765, 0.752991, 0.601087,
		-0.133601, 0.646859, -0.750816,
		-0.954176, 0.120736, 0.273807,
		35.071976, 36.055141, 46.264381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777069, 36.611362, 46.367435>,  <35.739899, 35.970627, 46.072716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777069, 36.611362, 46.367435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403740, 36.498085, 46.455719>,  <35.179741, 36.430119, 46.508690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403740, 36.498085, 46.455719>,  <35.777069, 36.611362, 46.367435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403740, 36.498085, 46.455719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050344, 0.711860, 0.700515,
		-0.355493, 0.642695, -0.678652,
		-0.933322, -0.283194, 0.220705,
		35.123745, 36.413128, 46.521931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201199, 37.212898, 46.259789>,  <35.777069, 36.611362, 46.367435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201199, 37.212898, 46.259789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066494, 36.944595, 46.524113>,  <34.985672, 36.783611, 46.682709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066494, 36.944595, 46.524113>,  <35.201199, 37.212898, 46.259789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066494, 36.944595, 46.524113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005591, 0.703219, 0.710951,
		-0.941575, 0.235723, -0.240565,
		-0.336758, -0.670759, 0.660815,
		34.965466, 36.743366, 46.722359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727871, 37.587570, 46.660297>,  <35.201199, 37.212898, 46.259789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727871, 37.587570, 46.660297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817314, 37.259750, 46.871326>,  <34.870979, 37.063057, 46.997944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817314, 37.259750, 46.871326>,  <34.727871, 37.587570, 46.660297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817314, 37.259750, 46.871326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038983, 0.533325, 0.845011,
		-0.973899, -0.209520, 0.087309,
		0.223610, -0.819552, 0.527572,
		34.884396, 37.013885, 47.029598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247288, 37.450493, 47.225868>,  <34.727871, 37.587570, 46.660297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247288, 37.450493, 47.225868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585423, 37.270370, 47.340851>,  <34.788303, 37.162296, 47.409840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585423, 37.270370, 47.340851>,  <34.247288, 37.450493, 47.225868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585423, 37.270370, 47.340851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021078, 0.509541, 0.860188,
		-0.533819, -0.733207, 0.421242,
		0.845336, -0.450306, 0.287457,
		34.839024, 37.135281, 47.427090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039810, 37.413345, 47.902271>,  <34.247288, 37.450493, 47.225868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039810, 37.413345, 47.902271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426617, 37.311501, 47.899239>,  <34.658699, 37.250393, 47.897419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426617, 37.311501, 47.899239>,  <34.039810, 37.413345, 47.902271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426617, 37.311501, 47.899239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146736, 0.532488, 0.833622,
		-0.208209, -0.807237, 0.552284,
		0.967015, -0.254607, -0.007582,
		34.716721, 37.235119, 47.896965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138119, 37.177090, 48.543579>,  <34.039810, 37.413345, 47.902271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138119, 37.177090, 48.543579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492397, 37.297348, 48.402069>,  <34.704964, 37.369503, 48.317162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492397, 37.297348, 48.402069>,  <34.138119, 37.177090, 48.543579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492397, 37.297348, 48.402069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135338, 0.561718, 0.816184,
		0.444106, -0.770769, 0.456821,
		0.885694, 0.300647, -0.353777,
		34.758106, 37.387543, 48.295937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520557, 37.131977, 49.125729>,  <34.138119, 37.177090, 48.543579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520557, 37.131977, 49.125729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715397, 37.367527, 48.867744>,  <34.832298, 37.508858, 48.712955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715397, 37.367527, 48.867744>,  <34.520557, 37.131977, 49.125729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715397, 37.367527, 48.867744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309206, 0.574374, 0.757948,
		0.816781, -0.568617, 0.097692,
		0.487094, 0.588870, -0.644958,
		34.861526, 37.544189, 48.674255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140907, 37.323704, 49.440735>,  <34.520557, 37.131977, 49.125729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140907, 37.323704, 49.440735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097630, 37.610355, 49.165131>,  <35.071663, 37.782349, 48.999767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097630, 37.610355, 49.165131>,  <35.140907, 37.323704, 49.440735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097630, 37.610355, 49.165131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155190, 0.696756, 0.700320,
		0.981942, -0.031155, -0.186600,
		-0.108197, 0.716631, -0.689009,
		35.065170, 37.825344, 48.958427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665283, 37.686935, 49.547279>,  <35.140907, 37.323704, 49.440735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665283, 37.686935, 49.547279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395298, 37.920910, 49.367378>,  <35.233307, 38.061295, 49.259438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395298, 37.920910, 49.367378>,  <35.665283, 37.686935, 49.547279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395298, 37.920910, 49.367378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219925, 0.741317, 0.634100,
		0.704317, 0.329081, -0.629002,
		-0.674960, 0.584940, -0.449749,
		35.192810, 38.096394, 49.232452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010109, 38.268665, 49.504772>,  <35.665283, 37.686935, 49.547279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010109, 38.268665, 49.504772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625961, 38.373093, 49.465702>,  <35.395473, 38.435749, 49.442261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625961, 38.373093, 49.465702>,  <36.010109, 38.268665, 49.504772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625961, 38.373093, 49.465702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163422, 0.811221, 0.561439,
		0.225808, 0.523226, -0.821733,
		-0.960367, 0.261067, -0.097674,
		35.337852, 38.451412, 49.436401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452389, 38.733925, 49.012753>,  <36.010109, 38.268665, 49.504772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452389, 38.733925, 49.012753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846603, 38.794449, 48.982227>,  <37.083134, 38.830765, 48.963913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846603, 38.794449, 48.982227>,  <36.452389, 38.733925, 49.012753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846603, 38.794449, 48.982227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057703, -0.723029, -0.688403,
		-0.159343, 0.674042, -0.721302,
		0.985535, 0.151314, -0.076315,
		37.142265, 38.839844, 48.959332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670971, 38.870415, 48.328407>,  <36.452389, 38.733925, 49.012753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670971, 38.870415, 48.328407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993385, 38.721199, 48.512215>,  <37.186832, 38.631668, 48.622498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993385, 38.721199, 48.512215>,  <36.670971, 38.870415, 48.328407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993385, 38.721199, 48.512215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121614, -0.655427, -0.745403,
		0.579242, 0.656703, -0.482929,
		0.806033, -0.373038, 0.459515,
		37.235195, 38.609287, 48.650070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254223, 38.976562, 47.960167>,  <36.670971, 38.870415, 48.328407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254223, 38.976562, 47.960167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386570, 38.686661, 48.201916>,  <37.465977, 38.512722, 48.346966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386570, 38.686661, 48.201916>,  <37.254223, 38.976562, 47.960167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386570, 38.686661, 48.201916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260446, -0.545434, -0.796661,
		0.907026, 0.420993, 0.008293,
		0.330866, -0.724752, 0.604369,
		37.485828, 38.469234, 48.383228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917633, 38.833824, 47.690056>,  <37.254223, 38.976562, 47.960167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917633, 38.833824, 47.690056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803638, 38.512337, 47.898987>,  <37.735241, 38.319443, 48.024345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803638, 38.512337, 47.898987>,  <37.917633, 38.833824, 47.690056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803638, 38.512337, 47.898987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173968, -0.579239, -0.796377,
		0.942613, -0.136086, 0.304895,
		-0.284983, -0.803718, 0.522324,
		37.718143, 38.271221, 48.055683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462955, 38.300819, 47.538857>,  <37.917633, 38.833824, 47.690056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462955, 38.300819, 47.538857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145351, 38.092842, 47.664845>,  <37.954788, 37.968056, 47.740437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145351, 38.092842, 47.664845>,  <38.462955, 38.300819, 47.538857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145351, 38.092842, 47.664845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104066, -0.626729, -0.772257,
		0.598933, -0.580401, 0.551737,
		-0.794008, -0.519947, 0.314968,
		37.907150, 37.936859, 47.759335>
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
