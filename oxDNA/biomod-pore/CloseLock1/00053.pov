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
	<23.880884, 35.099751, 34.948986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227844, 35.075100, 35.146500>,  <24.436020, 35.060310, 35.265007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227844, 35.075100, 35.146500>,  <23.880884, 35.099751, 34.948986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.227844, 35.075100, 35.146500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383434, 0.549700, 0.742165,
		-0.317166, -0.833086, 0.453182,
		0.867401, -0.061624, 0.493779,
		24.488064, 35.056614, 35.294632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.687571, 34.986992, 35.632671>,  <23.880884, 35.099751, 34.948986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.687571, 34.986992, 35.632671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.063076, 35.124249, 35.620129>,  <24.288380, 35.206600, 35.612602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.063076, 35.124249, 35.620129>,  <23.687571, 34.986992, 35.632671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.063076, 35.124249, 35.620129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239422, 0.715039, 0.656807,
		0.247798, -0.609078, 0.753406,
		0.938762, 0.343137, -0.031359,
		24.344704, 35.227188, 35.610722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.042599, 35.099751, 36.284973>,  <23.687571, 34.986992, 35.632671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.042599, 35.099751, 36.284973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.185835, 35.365162, 36.022217>,  <24.271776, 35.524410, 35.864563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.185835, 35.365162, 36.022217>,  <24.042599, 35.099751, 36.284973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.185835, 35.365162, 36.022217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228914, 0.744460, 0.627198,
		0.905191, -0.074221, 0.418473,
		0.358088, 0.663529, -0.656888,
		24.293262, 35.564220, 35.825150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.633873, 34.995064, 36.640053>,  <24.042599, 35.099751, 36.284973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.633873, 34.995064, 36.640053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014662, 34.895355, 36.711166>,  <25.243135, 34.835529, 36.753834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014662, 34.895355, 36.711166>,  <24.633873, 34.995064, 36.640053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.014662, 34.895355, 36.711166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266852, 0.960191, -0.082599,
		-0.150116, 0.126074, 0.980597,
		0.951974, -0.249275, 0.177784,
		25.300255, 34.820572, 36.764500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.848297, 35.618389, 36.625683>,  <24.633873, 34.995064, 36.640053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.848297, 35.618389, 36.625683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.190483, 35.436954, 36.725639>,  <25.395794, 35.328094, 36.785614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.190483, 35.436954, 36.725639>,  <24.848297, 35.618389, 36.625683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.190483, 35.436954, 36.725639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485924, 0.869907, -0.084497,
		-0.179053, 0.193711, 0.964581,
		0.855464, -0.453584, 0.249888,
		25.447123, 35.300880, 36.800606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.228064, 36.051487, 37.134335>,  <24.848297, 35.618389, 36.625683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.228064, 36.051487, 37.134335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508316, 35.811943, 36.979168>,  <25.676468, 35.668217, 36.886070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508316, 35.811943, 36.979168>,  <25.228064, 36.051487, 37.134335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.508316, 35.811943, 36.979168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566662, 0.797387, -0.207527,
		0.433597, -0.074416, 0.898029,
		0.700634, -0.598862, -0.387914,
		25.718506, 35.632286, 36.862793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.778427, 36.242989, 37.440895>,  <25.228064, 36.051487, 37.134335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.778427, 36.242989, 37.440895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923611, 36.068359, 37.111614>,  <26.010721, 35.963581, 36.914047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923611, 36.068359, 37.111614>,  <25.778427, 36.242989, 37.440895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.923611, 36.068359, 37.111614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583527, 0.795264, -0.164474,
		0.726469, -0.420664, 0.543401,
		0.362959, -0.436575, -0.823203,
		26.032499, 35.937386, 36.864655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445518, 36.443829, 37.427948>,  <25.778427, 36.242989, 37.440895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.445518, 36.443829, 37.427948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.394894, 36.342842, 37.044231>,  <26.364519, 36.282249, 36.813999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.394894, 36.342842, 37.044231>,  <26.445518, 36.443829, 37.427948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.394894, 36.342842, 37.044231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449730, 0.847365, -0.282339,
		0.884152, -0.467157, 0.006296,
		-0.126561, -0.252462, -0.959294,
		26.356926, 36.267105, 36.756443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116047, 36.363609, 37.228512>,  <26.445518, 36.443829, 37.427948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116047, 36.363609, 37.228512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878197, 36.402405, 36.909260>,  <26.735487, 36.425682, 36.717709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878197, 36.402405, 36.909260>,  <27.116047, 36.363609, 37.228512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878197, 36.402405, 36.909260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666815, 0.614115, -0.422162,
		0.449200, -0.783234, -0.429842,
		-0.594624, 0.096989, -0.798133,
		26.699810, 36.431503, 36.669819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531555, 36.261269, 36.702026>,  <27.116047, 36.363609, 37.228512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531555, 36.261269, 36.702026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224255, 36.478043, 36.565735>,  <27.039873, 36.608109, 36.483959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224255, 36.478043, 36.565735>,  <27.531555, 36.261269, 36.702026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224255, 36.478043, 36.565735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626311, 0.526270, -0.575129,
		-0.132370, -0.655244, -0.743729,
		-0.768253, 0.541936, -0.340725,
		26.993778, 36.640625, 36.463516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761843, 36.651379, 36.069275>,  <27.531555, 36.261269, 36.702026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761843, 36.651379, 36.069275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437973, 36.865734, 36.164986>,  <27.243652, 36.994347, 36.222412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437973, 36.865734, 36.164986>,  <27.761843, 36.651379, 36.069275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437973, 36.865734, 36.164986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439606, 0.823903, -0.357673,
		-0.388815, -0.184410, -0.902672,
		-0.809673, 0.535888, 0.239278,
		27.195070, 37.026501, 36.236771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718578, 37.151455, 35.475563>,  <27.761843, 36.651379, 36.069275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718578, 37.151455, 35.475563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449369, 37.324699, 35.715382>,  <27.287844, 37.428646, 35.859272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449369, 37.324699, 35.715382>,  <27.718578, 37.151455, 35.475563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449369, 37.324699, 35.715382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409771, 0.893182, -0.185238,
		-0.615734, 0.121008, -0.778607,
		-0.673022, 0.433108, 0.599548,
		27.247463, 37.454632, 35.895245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398205, 37.756447, 35.111061>,  <27.718578, 37.151455, 35.475563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398205, 37.756447, 35.111061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374353, 37.805687, 35.507301>,  <27.360043, 37.835232, 35.745045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374353, 37.805687, 35.507301>,  <27.398205, 37.756447, 35.111061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374353, 37.805687, 35.507301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461295, 0.883448, -0.082018,
		-0.885241, 0.452069, -0.109463,
		-0.059627, 0.123100, 0.990601,
		27.356464, 37.842617, 35.804482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168945, 38.456429, 35.181480>,  <27.398205, 37.756447, 35.111061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168945, 38.456429, 35.181480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325090, 38.322350, 35.524471>,  <27.418777, 38.241901, 35.730267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325090, 38.322350, 35.524471>,  <27.168945, 38.456429, 35.181480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325090, 38.322350, 35.524471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371289, 0.909587, 0.186536,
		-0.842473, 0.245554, 0.479523,
		0.390363, -0.335193, 0.857474,
		27.442200, 38.221790, 35.781715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014587, 39.002171, 35.733578>,  <27.168945, 38.456429, 35.181480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014587, 39.002171, 35.733578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320738, 38.774998, 35.854671>,  <27.504429, 38.638695, 35.927330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320738, 38.774998, 35.854671>,  <27.014587, 39.002171, 35.733578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.320738, 38.774998, 35.854671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578694, 0.813153, 0.062417,
		-0.281620, 0.127420, 0.951028,
		0.765378, -0.567932, 0.302738,
		27.550352, 38.604618, 35.945492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342875, 39.371227, 36.362415>,  <27.014587, 39.002171, 35.733578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342875, 39.371227, 36.362415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622948, 39.119583, 36.227386>,  <27.790993, 38.968597, 36.146370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622948, 39.119583, 36.227386>,  <27.342875, 39.371227, 36.362415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622948, 39.119583, 36.227386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712678, 0.644213, 0.277633,
		0.042807, -0.434977, 0.899423,
		0.700184, -0.629114, -0.337576,
		27.833002, 38.930847, 36.126114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882744, 39.394901, 36.951782>,  <27.342875, 39.371227, 36.362415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882744, 39.394901, 36.951782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049570, 39.242672, 36.621639>,  <28.149666, 39.151333, 36.423553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049570, 39.242672, 36.621639>,  <27.882744, 39.394901, 36.951782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049570, 39.242672, 36.621639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722205, 0.690099, 0.046733,
		0.551793, -0.615568, 0.562672,
		0.417067, -0.380578, -0.825358,
		28.174690, 39.128498, 36.374031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658882, 39.516987, 37.010975>,  <27.882744, 39.394901, 36.951782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658882, 39.516987, 37.010975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.613007, 39.423977, 36.624653>,  <28.585482, 39.368172, 36.392860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.613007, 39.423977, 36.624653>,  <28.658882, 39.516987, 37.010975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613007, 39.423977, 36.624653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699848, 0.671080, -0.244671,
		0.705024, -0.703978, 0.085765,
		-0.114688, -0.232522, -0.965805,
		28.578600, 39.354221, 36.334911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364855, 39.352711, 36.657001>,  <28.658882, 39.516987, 37.010975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364855, 39.352711, 36.657001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102545, 39.492523, 36.389336>,  <28.945158, 39.576412, 36.228737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102545, 39.492523, 36.389336>,  <29.364855, 39.352711, 36.657001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102545, 39.492523, 36.389336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637847, 0.730685, -0.243414,
		0.403869, -0.586451, -0.702115,
		-0.655775, 0.349534, -0.669167,
		28.905811, 39.597382, 36.188587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739353, 39.595348, 36.110786>,  <29.364855, 39.352711, 36.657001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739353, 39.595348, 36.110786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381258, 39.755791, 36.033161>,  <29.166401, 39.852058, 35.986584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381258, 39.755791, 36.033161>,  <29.739353, 39.595348, 36.110786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381258, 39.755791, 36.033161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442791, 0.752069, -0.488189,
		-0.049867, -0.522975, -0.850888,
		-0.895237, 0.401110, -0.194066,
		29.112686, 39.876125, 35.974941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635477, 39.642685, 35.407036>,  <29.739353, 39.595348, 36.110786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635477, 39.642685, 35.407036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403534, 39.930706, 35.559502>,  <29.264368, 40.103519, 35.650982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403534, 39.930706, 35.559502>,  <29.635477, 39.642685, 35.407036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403534, 39.930706, 35.559502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426580, 0.666922, -0.610938,
		-0.694114, -0.191662, -0.693882,
		-0.579858, 0.720056, 0.381160,
		29.229576, 40.146725, 35.673851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612690, 40.040287, 34.914684>,  <29.635477, 39.642685, 35.407036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612690, 40.040287, 34.914684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426291, 40.276897, 35.177879>,  <29.314451, 40.418861, 35.335796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426291, 40.276897, 35.177879>,  <29.612690, 40.040287, 34.914684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426291, 40.276897, 35.177879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132113, 0.781848, -0.609311,
		-0.874866, -0.197011, -0.442489,
		-0.466000, 0.591524, 0.657985,
		29.286491, 40.454353, 35.375275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232882, 40.407639, 34.521439>,  <29.612690, 40.040287, 34.914684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232882, 40.407639, 34.521439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250858, 40.628998, 34.854118>,  <29.261644, 40.761814, 35.053726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250858, 40.628998, 34.854118>,  <29.232882, 40.407639, 34.521439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250858, 40.628998, 34.854118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123941, 0.823021, -0.554324,
		-0.991271, 0.127995, -0.031599,
		0.044944, 0.553401, 0.831701,
		29.264341, 40.795017, 35.103630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946877, 41.048824, 34.377892>,  <29.232882, 40.407639, 34.521439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946877, 41.048824, 34.377892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171650, 41.138035, 34.696510>,  <29.306513, 41.191563, 34.887684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171650, 41.138035, 34.696510>,  <28.946877, 41.048824, 34.377892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171650, 41.138035, 34.696510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442653, 0.732405, -0.517341,
		-0.698778, 0.643305, 0.312837,
		0.561932, 0.223028, 0.796549,
		29.340229, 41.204945, 34.935474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.002304, 41.710297, 34.259182>,  <28.946877, 41.048824, 34.377892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.002304, 41.710297, 34.259182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275444, 41.652508, 34.545635>,  <29.439327, 41.617836, 34.717506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275444, 41.652508, 34.545635>,  <29.002304, 41.710297, 34.259182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275444, 41.652508, 34.545635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508356, 0.797973, -0.323749,
		-0.524682, 0.585122, 0.618337,
		0.682849, -0.144470, 0.716133,
		29.480299, 41.609165, 34.760475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146044, 42.321342, 34.713928>,  <29.002304, 41.710297, 34.259182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146044, 42.321342, 34.713928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458107, 42.075535, 34.667068>,  <29.645346, 41.928051, 34.638954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458107, 42.075535, 34.667068>,  <29.146044, 42.321342, 34.713928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458107, 42.075535, 34.667068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525702, 0.745508, -0.409701,
		0.339105, 0.258046, 0.904666,
		0.780158, -0.614516, -0.117150,
		29.692154, 41.891182, 34.631924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768812, 42.551590, 35.149593>,  <29.146044, 42.321342, 34.713928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768812, 42.551590, 35.149593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868994, 42.332203, 34.830482>,  <29.929104, 42.200569, 34.639015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868994, 42.332203, 34.830482>,  <29.768812, 42.551590, 35.149593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868994, 42.332203, 34.830482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569864, 0.749681, -0.336501,
		0.782641, -0.370347, 0.500317,
		0.250456, -0.548472, -0.797778,
		29.944130, 42.167660, 34.591148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423096, 42.353333, 35.162861>,  <29.768812, 42.551590, 35.149593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423096, 42.353333, 35.162861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267658, 42.438015, 34.804157>,  <30.174397, 42.488823, 34.588936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267658, 42.438015, 34.804157>,  <30.423096, 42.353333, 35.162861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267658, 42.438015, 34.804157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738324, 0.653802, -0.165593,
		0.551246, -0.726447, -0.410368,
		-0.388594, 0.211702, -0.896759,
		30.151079, 42.501526, 34.535130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009563, 41.961369, 35.388790>,  <30.423096, 42.353333, 35.162861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009563, 41.961369, 35.388790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195421, 41.955231, 35.034645>,  <31.306936, 41.951550, 34.822159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195421, 41.955231, 35.034645>,  <31.009563, 41.961369, 35.388790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195421, 41.955231, 35.034645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754639, -0.516241, 0.404987,
		-0.463277, -0.856306, -0.228288,
		0.464644, -0.015346, -0.885364,
		31.334814, 41.950626, 34.769035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224197, 41.171856, 35.168007>,  <31.009563, 41.961369, 35.388790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224197, 41.171856, 35.168007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490993, 41.417332, 34.999001>,  <31.651072, 41.564617, 34.897598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490993, 41.417332, 34.999001>,  <31.224197, 41.171856, 35.168007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490993, 41.417332, 34.999001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744439, -0.525611, 0.411758,
		0.030612, -0.589172, -0.807427,
		0.666989, 0.613685, -0.422512,
		31.691090, 41.601437, 34.872246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754402, 40.827503, 35.029137>,  <31.224197, 41.171856, 35.168007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754402, 40.827503, 35.029137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954205, 41.174023, 35.027538>,  <32.074085, 41.381935, 35.026577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954205, 41.174023, 35.027538>,  <31.754402, 40.827503, 35.029137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954205, 41.174023, 35.027538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708443, -0.405817, 0.577427,
		0.498603, -0.291261, -0.816433,
		0.499504, 0.866302, -0.004000,
		32.104057, 41.433914, 35.026337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514133, 40.730793, 34.731945>,  <31.754402, 40.827503, 35.029137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514133, 40.730793, 34.731945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478310, 40.982906, 35.040417>,  <32.456814, 41.134174, 35.225502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478310, 40.982906, 35.040417>,  <32.514133, 40.730793, 34.731945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478310, 40.982906, 35.040417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740808, -0.475386, 0.474564,
		0.665719, 0.613799, -0.424345,
		-0.089559, 0.630285, 0.771181,
		32.451443, 41.171993, 35.271770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082661, 40.647102, 35.083000>,  <32.514133, 40.730793, 34.731945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082661, 40.647102, 35.083000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884270, 40.886871, 35.334301>,  <32.765236, 41.030731, 35.485081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884270, 40.886871, 35.334301>,  <33.082661, 40.647102, 35.083000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884270, 40.886871, 35.334301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484264, -0.409614, 0.773114,
		0.720763, 0.687685, -0.087121,
		-0.495973, 0.599421, 0.628255,
		32.735477, 41.066696, 35.522778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623714, 40.684258, 35.646297>,  <33.082661, 40.647102, 35.083000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623714, 40.684258, 35.646297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247128, 40.739319, 35.769386>,  <33.021175, 40.772354, 35.843239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247128, 40.739319, 35.769386>,  <33.623714, 40.684258, 35.646297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247128, 40.739319, 35.769386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275985, -0.209449, 0.938064,
		0.193579, 0.968082, 0.159200,
		-0.941467, 0.137653, 0.307721,
		32.964687, 40.780613, 35.861702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783867, 41.002033, 36.253967>,  <33.623714, 40.684258, 35.646297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783867, 41.002033, 36.253967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446976, 40.788078, 36.280960>,  <33.244843, 40.659706, 36.297153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446976, 40.788078, 36.280960>,  <33.783867, 41.002033, 36.253967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446976, 40.788078, 36.280960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360816, -0.466235, 0.807736,
		-0.400587, 0.704642, 0.585671,
		-0.842224, -0.534888, 0.067478,
		33.194309, 40.627613, 36.301205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546051, 40.984077, 36.970074>,  <33.783867, 41.002033, 36.253967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546051, 40.984077, 36.970074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418533, 40.653255, 36.784882>,  <33.342022, 40.454762, 36.673767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418533, 40.653255, 36.784882>,  <33.546051, 40.984077, 36.970074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418533, 40.653255, 36.784882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193290, -0.534932, 0.822489,
		-0.927906, 0.172713, 0.330394,
		-0.318793, -0.827054, -0.462983,
		33.322895, 40.405140, 36.645988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096001, 40.829151, 37.448830>,  <33.546051, 40.984077, 36.970074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096001, 40.829151, 37.448830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872803, 40.821522, 37.116978>,  <32.738884, 40.816944, 36.917866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872803, 40.821522, 37.116978>,  <33.096001, 40.829151, 37.448830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872803, 40.821522, 37.116978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396497, -0.872112, 0.286723,
		-0.728996, 0.488934, 0.479071,
		-0.557992, -0.019070, -0.829627,
		32.705406, 40.815800, 36.868088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450455, 40.610004, 37.649757>,  <33.096001, 40.829151, 37.448830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450455, 40.610004, 37.649757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476776, 40.537640, 37.257240>,  <32.492569, 40.494221, 37.021729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476776, 40.537640, 37.257240>,  <32.450455, 40.610004, 37.649757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476776, 40.537640, 37.257240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503250, -0.855210, 0.123920,
		-0.861632, 0.485683, -0.147317,
		0.065801, -0.180911, -0.981296,
		32.496517, 40.483368, 36.962852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753181, 40.403114, 37.303246>,  <32.450455, 40.610004, 37.649757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753181, 40.403114, 37.303246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049213, 40.245670, 37.085125>,  <32.226833, 40.151203, 36.954254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049213, 40.245670, 37.085125>,  <31.753181, 40.403114, 37.303246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049213, 40.245670, 37.085125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458623, -0.888431, 0.018850,
		-0.491878, 0.236136, -0.838031,
		0.740082, -0.393612, -0.545297,
		32.271236, 40.127586, 36.921535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346813, 39.992676, 36.934883>,  <31.753181, 40.403114, 37.303246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346813, 39.992676, 36.934883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727217, 39.876537, 36.892399>,  <31.955460, 39.806854, 36.866909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727217, 39.876537, 36.892399>,  <31.346813, 39.992676, 36.934883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727217, 39.876537, 36.892399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305265, -0.936234, -0.174010,
		-0.048919, 0.197909, -0.978999,
		0.951010, -0.290342, -0.106215,
		32.012520, 39.789436, 36.860535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120420, 39.594761, 36.423714>,  <31.346813, 39.992676, 36.934883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120420, 39.594761, 36.423714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482668, 39.493404, 36.559746>,  <31.700016, 39.432590, 36.641365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482668, 39.493404, 36.559746>,  <31.120420, 39.594761, 36.423714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482668, 39.493404, 36.559746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141190, -0.936281, -0.321626,
		0.399903, 0.243255, -0.883688,
		0.905617, -0.253387, 0.340076,
		31.754353, 39.417389, 36.661770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315090, 39.131229, 35.992023>,  <31.120420, 39.594761, 36.423714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315090, 39.131229, 35.992023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563534, 39.044350, 36.293236>,  <31.712601, 38.992222, 36.473961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563534, 39.044350, 36.293236>,  <31.315090, 39.131229, 35.992023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563534, 39.044350, 36.293236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254620, -0.964632, -0.068214,
		0.741209, -0.149367, -0.654445,
		0.621109, -0.217196, 0.753026,
		31.749866, 38.979191, 36.519142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666714, 38.476742, 35.748489>,  <31.315090, 39.131229, 35.992023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666714, 38.476742, 35.748489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694954, 38.506939, 36.146347>,  <31.711899, 38.525059, 36.385063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694954, 38.506939, 36.146347>,  <31.666714, 38.476742, 35.748489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694954, 38.506939, 36.146347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284679, -0.954137, 0.092628,
		0.956020, -0.289694, -0.045871,
		0.070601, 0.075496, 0.994644,
		31.716135, 38.529587, 36.444740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134510, 37.959091, 35.949715>,  <31.666714, 38.476742, 35.748489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134510, 37.959091, 35.949715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936749, 38.058685, 36.282837>,  <31.818090, 38.118443, 36.482712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936749, 38.058685, 36.282837>,  <32.134510, 37.959091, 35.949715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936749, 38.058685, 36.282837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234035, -0.960847, 0.148327,
		0.837131, -0.121572, 0.533322,
		-0.494408, 0.248985, 0.832807,
		31.788425, 38.133381, 36.532681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322594, 37.452415, 36.535652>,  <32.134510, 37.959091, 35.949715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322594, 37.452415, 36.535652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970552, 37.625977, 36.612747>,  <31.759329, 37.730114, 36.659004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970552, 37.625977, 36.612747>,  <32.322594, 37.452415, 36.535652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970552, 37.625977, 36.612747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394787, -0.894309, 0.210604,
		0.263749, 0.109263, 0.958383,
		-0.880102, 0.433904, 0.192737,
		31.706522, 37.756149, 36.670567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036697, 36.984459, 37.101254>,  <32.322594, 37.452415, 36.535652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036697, 36.984459, 37.101254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725676, 37.180386, 36.943523>,  <31.539062, 37.297943, 36.848885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725676, 37.180386, 36.943523>,  <32.036697, 36.984459, 37.101254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725676, 37.180386, 36.943523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562041, -0.822576, 0.086485,
		-0.282002, 0.288874, 0.914892,
		-0.777551, 0.489818, -0.394327,
		31.492411, 37.327332, 36.825226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539064, 36.735889, 37.500710>,  <32.036697, 36.984459, 37.101254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539064, 36.735889, 37.500710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353283, 36.892632, 37.183037>,  <31.241814, 36.986679, 36.992432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353283, 36.892632, 37.183037>,  <31.539064, 36.735889, 37.500710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353283, 36.892632, 37.183037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684846, -0.727502, 0.041556,
		-0.561486, 0.563195, 0.606254,
		-0.464455, 0.391858, -0.794184,
		31.213947, 37.010189, 36.944782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764647, 36.504650, 37.602276>,  <31.539064, 36.735889, 37.500710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764647, 36.504650, 37.602276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764576, 36.632923, 37.223400>,  <30.764534, 36.709888, 36.996075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764576, 36.632923, 37.223400>,  <30.764647, 36.504650, 37.602276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764576, 36.632923, 37.223400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830927, -0.527043, -0.178287,
		-0.556381, 0.787011, 0.266558,
		-0.000174, 0.320686, -0.947186,
		30.764524, 36.729130, 36.939243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097324, 36.764160, 37.455273>,  <30.764647, 36.504650, 37.602276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097324, 36.764160, 37.455273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247595, 36.678646, 37.094570>,  <30.337757, 36.627338, 36.878147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247595, 36.678646, 37.094570>,  <30.097324, 36.764160, 37.455273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247595, 36.678646, 37.094570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778028, -0.601426, -0.181544,
		-0.503527, 0.769793, -0.392274,
		0.375675, -0.213788, -0.901755,
		30.360298, 36.614510, 36.824043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559967, 36.861652, 36.979305>,  <30.097324, 36.764160, 37.455273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559967, 36.861652, 36.979305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834068, 36.646431, 36.782967>,  <29.998529, 36.517300, 36.665165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834068, 36.646431, 36.782967>,  <29.559967, 36.861652, 36.979305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834068, 36.646431, 36.782967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703589, -0.663150, -0.255332,
		-0.188122, 0.520320, -0.832993,
		0.685254, -0.538051, -0.490844,
		30.039644, 36.485016, 36.635712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214336, 36.651627, 36.366695>,  <29.559967, 36.861652, 36.979305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214336, 36.651627, 36.366695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490345, 36.377411, 36.459568>,  <29.655951, 36.212883, 36.515293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490345, 36.377411, 36.459568>,  <29.214336, 36.651627, 36.366695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490345, 36.377411, 36.459568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661792, -0.727474, -0.181144,
		0.293085, -0.028662, -0.955657,
		0.690023, -0.685537, 0.232180,
		29.697351, 36.171749, 36.529221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251020, 36.082188, 35.845131>,  <29.214336, 36.651627, 36.366695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251020, 36.082188, 35.845131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424925, 35.909050, 36.161011>,  <29.529266, 35.805168, 36.350540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424925, 35.909050, 36.161011>,  <29.251020, 36.082188, 35.845131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424925, 35.909050, 36.161011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652817, -0.755536, -0.054722,
		0.620334, -0.491739, -0.611047,
		0.434759, -0.432848, 0.789700,
		29.555353, 35.779194, 36.397923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301867, 35.388004, 35.682495>,  <29.251020, 36.082188, 35.845131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301867, 35.388004, 35.682495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349489, 35.386028, 36.079643>,  <29.378063, 35.384842, 36.317932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349489, 35.386028, 36.079643>,  <29.301867, 35.388004, 35.682495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349489, 35.386028, 36.079643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619016, -0.782223, 0.070333,
		0.776302, -0.622979, -0.096190,
		0.119058, -0.004943, 0.992875,
		29.385206, 35.384544, 36.377506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351053, 34.648663, 35.794250>,  <29.301867, 35.388004, 35.682495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351053, 34.648663, 35.794250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252579, 34.828506, 36.137703>,  <29.193495, 34.936413, 36.343773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252579, 34.828506, 36.137703>,  <29.351053, 34.648663, 35.794250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252579, 34.828506, 36.137703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567431, -0.785062, 0.248394,
		0.785757, -0.426061, 0.448393,
		-0.246186, 0.449610, 0.858629,
		29.178722, 34.963390, 36.395290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363924, 34.119598, 36.245121>,  <29.351053, 34.648663, 35.794250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363924, 34.119598, 36.245121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.161076, 34.404007, 36.439964>,  <29.039366, 34.574654, 36.556870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.161076, 34.404007, 36.439964>,  <29.363924, 34.119598, 36.245121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161076, 34.404007, 36.439964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727989, -0.655912, 0.199529,
		0.461368, -0.253422, 0.850245,
		-0.507121, 0.711025, 0.487105,
		29.008940, 34.617313, 36.586098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136477, 33.797058, 36.870827>,  <29.363924, 34.119598, 36.245121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136477, 33.797058, 36.870827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901644, 34.120060, 36.847973>,  <28.760744, 34.313862, 36.834259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901644, 34.120060, 36.847973>,  <29.136477, 33.797058, 36.870827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901644, 34.120060, 36.847973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783540, -0.549079, 0.290822,
		0.203469, 0.215506, 0.955069,
		-0.587082, 0.807508, -0.057137,
		28.725519, 34.362312, 36.830833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954458, 33.943710, 37.562958>,  <29.136477, 33.797058, 36.870827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954458, 33.943710, 37.562958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702274, 34.090805, 37.289524>,  <28.550964, 34.179062, 37.125465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702274, 34.090805, 37.289524>,  <28.954458, 33.943710, 37.562958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702274, 34.090805, 37.289524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747370, -0.525451, 0.406620,
		-0.209659, 0.767247, 0.606114,
		-0.630461, 0.367740, -0.683583,
		28.513136, 34.201126, 37.084450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333513, 33.854443, 37.953091>,  <28.954458, 33.943710, 37.562958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333513, 33.854443, 37.953091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197958, 33.953377, 37.589996>,  <28.116625, 34.012737, 37.372139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197958, 33.953377, 37.589996>,  <28.333513, 33.854443, 37.953091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197958, 33.953377, 37.589996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890991, -0.394224, 0.225218,
		-0.302145, 0.885105, 0.353974,
		-0.338887, 0.247339, -0.907733,
		28.096292, 34.027580, 37.317677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760773, 34.324505, 37.983940>,  <28.333513, 33.854443, 37.953091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760773, 34.324505, 37.983940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770170, 34.044205, 37.698730>,  <27.775808, 33.876026, 37.527603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770170, 34.044205, 37.698730>,  <27.760773, 34.324505, 37.983940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770170, 34.044205, 37.698730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710553, -0.513416, 0.481163,
		-0.703251, 0.495336, -0.509980,
		0.023495, -0.700746, -0.713023,
		27.777218, 33.833981, 37.484825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460291, 34.327385, 38.462925>,  <27.760773, 34.324505, 37.983940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460291, 34.327385, 38.462925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781889, 34.107845, 38.554451>,  <28.974848, 33.976124, 38.609367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781889, 34.107845, 38.554451>,  <28.460291, 34.327385, 38.462925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781889, 34.107845, 38.554451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581380, 0.644751, -0.496279,
		0.124850, 0.532037, 0.837466,
		0.803996, -0.548847, 0.228819,
		29.023088, 33.943192, 38.623096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051331, 34.591217, 38.773041>,  <28.460291, 34.327385, 38.462925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051331, 34.591217, 38.773041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231098, 34.239296, 38.834965>,  <29.338959, 34.028141, 38.872120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231098, 34.239296, 38.834965>,  <29.051331, 34.591217, 38.773041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231098, 34.239296, 38.834965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873331, 0.396260, -0.283321,
		0.187924, 0.262526, 0.946448,
		0.449419, -0.879806, 0.154806,
		29.365923, 33.975353, 38.881405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802641, 34.773708, 38.951988>,  <29.051331, 34.591217, 38.773041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802641, 34.773708, 38.951988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809780, 34.389023, 38.842590>,  <29.814064, 34.158211, 38.776951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809780, 34.389023, 38.842590>,  <29.802641, 34.773708, 38.951988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809780, 34.389023, 38.842590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908704, 0.129702, -0.396780,
		0.417059, -0.241439, 0.876224,
		0.017849, -0.961709, -0.273490,
		29.815134, 34.100510, 38.760544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452709, 34.555187, 38.792263>,  <29.802641, 34.773708, 38.951988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452709, 34.555187, 38.792263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648552, 34.289047, 39.017685>,  <30.766058, 34.129364, 39.152939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648552, 34.289047, 39.017685>,  <30.452709, 34.555187, 38.792263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648552, 34.289047, 39.017685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278312, 0.731764, 0.622144,
		-0.826333, -0.147762, 0.543452,
		0.489608, -0.665348, 0.563557,
		30.795435, 34.089443, 39.186752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347160, 34.503319, 39.556190>,  <30.452709, 34.555187, 38.792263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347160, 34.503319, 39.556190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710625, 34.351871, 39.485783>,  <30.928703, 34.261005, 39.443539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710625, 34.351871, 39.485783>,  <30.347160, 34.503319, 39.556190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710625, 34.351871, 39.485783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389599, 0.617251, 0.683530,
		-0.150147, -0.689675, 0.708381,
		0.908663, -0.378614, -0.176018,
		30.983223, 34.238289, 39.432976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635311, 34.366573, 40.161259>,  <30.347160, 34.503319, 39.556190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635311, 34.366573, 40.161259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952898, 34.399494, 39.920315>,  <31.143450, 34.419247, 39.775749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952898, 34.399494, 39.920315>,  <30.635311, 34.366573, 40.161259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952898, 34.399494, 39.920315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479003, 0.525472, 0.703160,
		0.374392, -0.846821, 0.377789,
		0.793969, 0.082296, -0.602363,
		31.191088, 34.424183, 39.739605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219923, 34.168892, 40.522083>,  <30.635311, 34.366573, 40.161259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219923, 34.168892, 40.522083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395679, 34.357597, 40.216305>,  <31.501133, 34.470821, 40.032837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395679, 34.357597, 40.216305>,  <31.219923, 34.168892, 40.522083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395679, 34.357597, 40.216305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658244, 0.409986, 0.631369,
		0.611269, -0.780608, -0.130392,
		0.439392, 0.471766, -0.764442,
		31.527496, 34.499126, 39.986973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915783, 34.153107, 40.695202>,  <31.219923, 34.168892, 40.522083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915783, 34.153107, 40.695202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873707, 34.442955, 40.422771>,  <31.848461, 34.616863, 40.259312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873707, 34.442955, 40.422771>,  <31.915783, 34.153107, 40.695202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873707, 34.442955, 40.422771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708575, 0.535153, 0.459926,
		0.697751, -0.434214, -0.569738,
		-0.105191, 0.724616, -0.681077,
		31.842150, 34.660339, 40.218449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606899, 34.436707, 40.529579>,  <31.915783, 34.153107, 40.695202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606899, 34.436707, 40.529579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382061, 34.735340, 40.387222>,  <32.247158, 34.914520, 40.301807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382061, 34.735340, 40.387222>,  <32.606899, 34.436707, 40.529579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382061, 34.735340, 40.387222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641268, 0.665161, 0.382540,
		0.522322, -0.013196, -0.852646,
		-0.562099, 0.746584, -0.355890,
		32.213432, 34.959316, 40.280457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043480, 35.016399, 40.417439>,  <32.606899, 34.436707, 40.529579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043480, 35.016399, 40.417439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676353, 35.167381, 40.466671>,  <32.456078, 35.257969, 40.496212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676353, 35.167381, 40.466671>,  <33.043480, 35.016399, 40.417439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676353, 35.167381, 40.466671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388121, 0.787794, 0.478271,
		0.083559, 0.486735, -0.869544,
		-0.917813, 0.377452, 0.123085,
		32.401009, 35.280617, 40.503597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029877, 35.663246, 40.129551>,  <33.043480, 35.016399, 40.417439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029877, 35.663246, 40.129551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735645, 35.660633, 40.400517>,  <32.559109, 35.659065, 40.563095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735645, 35.660633, 40.400517>,  <33.029877, 35.663246, 40.129551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735645, 35.660633, 40.400517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455469, 0.735443, 0.501669,
		-0.501476, 0.677555, -0.537998,
		-0.735575, -0.006534, 0.677412,
		32.514973, 35.658672, 40.603741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849537, 36.359989, 40.174549>,  <33.029877, 35.663246, 40.129551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849537, 36.359989, 40.174549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723797, 36.195747, 40.516914>,  <32.648354, 36.097202, 40.722336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723797, 36.195747, 40.516914>,  <32.849537, 36.359989, 40.174549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723797, 36.195747, 40.516914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401332, 0.759605, 0.511795,
		-0.860302, 0.504386, -0.073990,
		-0.314346, -0.410603, 0.855916,
		32.629494, 36.072567, 40.773689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700260, 36.928677, 40.626434>,  <32.849537, 36.359989, 40.174549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700260, 36.928677, 40.626434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713493, 36.633923, 40.896519>,  <32.721432, 36.457069, 41.058567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713493, 36.633923, 40.896519>,  <32.700260, 36.928677, 40.626434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713493, 36.633923, 40.896519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274110, 0.656361, 0.702890,
		-0.961129, 0.161829, 0.223700,
		0.033080, -0.736886, 0.675207,
		32.723419, 36.412857, 41.099079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237179, 37.067104, 41.210560>,  <32.700260, 36.928677, 40.626434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237179, 37.067104, 41.210560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528591, 36.825554, 41.339909>,  <32.703438, 36.680622, 41.417519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528591, 36.825554, 41.339909>,  <32.237179, 37.067104, 41.210560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528591, 36.825554, 41.339909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277152, 0.691552, 0.667041,
		-0.626440, -0.396339, 0.671185,
		0.728533, -0.603881, 0.323370,
		32.747150, 36.644390, 41.436920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188019, 37.221962, 41.860313>,  <32.237179, 37.067104, 41.210560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188019, 37.221962, 41.860313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532619, 37.020088, 41.837997>,  <32.739380, 36.898964, 41.824608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532619, 37.020088, 41.837997>,  <32.188019, 37.221962, 41.860313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532619, 37.020088, 41.837997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348921, 0.508602, 0.787133,
		-0.368881, -0.697579, 0.614255,
		0.861499, -0.504685, -0.055786,
		32.791069, 36.868683, 41.821262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330597, 37.058052, 42.592197>,  <32.188019, 37.221962, 41.860313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330597, 37.058052, 42.592197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679909, 37.015339, 42.402050>,  <32.889496, 36.989712, 42.287960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679909, 37.015339, 42.402050>,  <32.330597, 37.058052, 42.592197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679909, 37.015339, 42.402050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446352, 0.566489, 0.692720,
		0.195324, -0.817122, 0.542366,
		0.873281, -0.106781, -0.475373,
		32.941895, 36.983303, 42.259438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767643, 36.810966, 43.078712>,  <32.330597, 37.058052, 42.592197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767643, 36.810966, 43.078712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005959, 36.967804, 42.798344>,  <33.148949, 37.061905, 42.630123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005959, 36.967804, 42.798344>,  <32.767643, 36.810966, 43.078712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005959, 36.967804, 42.798344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397055, 0.614822, 0.681425,
		0.698128, -0.684292, 0.210621,
		0.595788, 0.392094, -0.700927,
		33.184696, 37.085430, 42.588066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439285, 36.686325, 43.334663>,  <32.767643, 36.810966, 43.078712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439285, 36.686325, 43.334663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490387, 36.978683, 43.066494>,  <33.521049, 37.154099, 42.905590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490387, 36.978683, 43.066494>,  <33.439285, 36.686325, 43.334663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490387, 36.978683, 43.066494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527339, 0.522440, 0.670053,
		0.839995, -0.439145, -0.318684,
		0.127757, 0.730895, -0.670425,
		33.528713, 37.197952, 42.865368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089268, 36.803185, 43.383629>,  <33.439285, 36.686325, 43.334663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089268, 36.803185, 43.383629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956215, 37.141182, 43.216133>,  <33.876385, 37.343983, 43.115635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956215, 37.141182, 43.216133>,  <34.089268, 36.803185, 43.383629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956215, 37.141182, 43.216133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459701, 0.532977, 0.710359,
		0.823427, 0.043792, -0.565729,
		-0.332629, 0.844996, -0.418736,
		33.856426, 37.394680, 43.090511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708172, 37.165665, 43.353943>,  <34.089268, 36.803185, 43.383629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708172, 37.165665, 43.353943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395462, 37.415070, 43.357296>,  <34.207836, 37.564713, 43.359306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395462, 37.415070, 43.357296>,  <34.708172, 37.165665, 43.353943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395462, 37.415070, 43.357296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393913, 0.483392, 0.781771,
		0.483392, 0.614466, -0.623510,
		-0.781771, 0.623510, 0.008378,
		34.160931, 37.602123, 43.359810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023930, 37.855766, 43.498604>,  <34.708172, 37.165665, 43.353943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023930, 37.855766, 43.498604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636410, 37.911968, 43.580269>,  <34.403896, 37.945690, 43.629269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636410, 37.911968, 43.580269>,  <35.023930, 37.855766, 43.498604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636410, 37.911968, 43.580269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242084, 0.360085, 0.900963,
		0.053071, 0.922279, -0.382865,
		-0.968803, 0.140500, 0.204159,
		34.345768, 37.954117, 43.641518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000965, 38.507011, 43.852539>,  <35.023930, 37.855766, 43.498604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000965, 38.507011, 43.852539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654507, 38.338821, 43.960606>,  <34.446632, 38.237907, 44.025448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654507, 38.338821, 43.960606>,  <35.000965, 38.507011, 43.852539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654507, 38.338821, 43.960606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119984, 0.349821, 0.929101,
		-0.485171, 0.837155, -0.252547,
		-0.866149, -0.420471, 0.270168,
		34.394661, 38.212681, 44.041656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714996, 39.013512, 44.220757>,  <35.000965, 38.507011, 43.852539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714996, 39.013512, 44.220757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537495, 38.667393, 44.313999>,  <34.430992, 38.459721, 44.369946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537495, 38.667393, 44.313999>,  <34.714996, 39.013512, 44.220757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537495, 38.667393, 44.313999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149942, 0.184764, 0.971277,
		-0.883514, 0.465964, 0.047755,
		-0.443757, -0.865298, 0.233110,
		34.404369, 38.407803, 44.383930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234291, 39.247864, 44.653023>,  <34.714996, 39.013512, 44.220757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234291, 39.247864, 44.653023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214401, 38.856941, 44.735397>,  <34.202469, 38.622387, 44.784821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214401, 38.856941, 44.735397>,  <34.234291, 39.247864, 44.653023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214401, 38.856941, 44.735397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104799, 0.210157, 0.972034,
		-0.993250, 0.026749, -0.112870,
		-0.049722, -0.977302, 0.205935,
		34.199486, 38.563751, 44.797176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685131, 39.249432, 44.928051>,  <34.234291, 39.247864, 44.653023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685131, 39.249432, 44.928051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843693, 38.898426, 45.036007>,  <33.938831, 38.687824, 45.100780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843693, 38.898426, 45.036007>,  <33.685131, 39.249432, 44.928051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843693, 38.898426, 45.036007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264003, 0.172599, 0.948953,
		-0.879299, -0.447419, -0.163247,
		0.396403, -0.877511, 0.269886,
		33.962612, 38.635174, 45.116974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088665, 38.901917, 45.311024>,  <33.685131, 39.249432, 44.928051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088665, 38.901917, 45.311024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441814, 38.744514, 45.413548>,  <33.653702, 38.650074, 45.475060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441814, 38.744514, 45.413548>,  <33.088665, 38.901917, 45.311024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441814, 38.744514, 45.413548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110334, 0.356694, 0.927683,
		-0.456472, -0.847303, 0.271497,
		0.882870, -0.393506, 0.256307,
		33.706676, 38.626461, 45.490440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937244, 38.641876, 45.955219>,  <33.088665, 38.901917, 45.311024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937244, 38.641876, 45.955219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336658, 38.650162, 45.975212>,  <33.576305, 38.655132, 45.987206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336658, 38.650162, 45.975212>,  <32.937244, 38.641876, 45.955219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336658, 38.650162, 45.975212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053823, 0.286510, 0.956564,
		0.005494, -0.957853, 0.287205,
		0.998535, 0.020714, 0.049980,
		33.636219, 38.656376, 45.990208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084728, 38.393604, 46.635689>,  <32.937244, 38.641876, 45.955219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084728, 38.393604, 46.635689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421188, 38.576267, 46.519806>,  <33.623066, 38.685863, 46.450275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421188, 38.576267, 46.519806>,  <33.084728, 38.393604, 46.635689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421188, 38.576267, 46.519806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138745, 0.335543, 0.931751,
		0.522701, -0.823938, 0.218883,
		0.841150, 0.456659, -0.289706,
		33.673534, 38.713264, 46.432896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543839, 38.265236, 47.156841>,  <33.084728, 38.393604, 46.635689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543839, 38.265236, 47.156841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721275, 38.573711, 46.974197>,  <33.827736, 38.758797, 46.864613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721275, 38.573711, 46.974197>,  <33.543839, 38.265236, 47.156841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721275, 38.573711, 46.974197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347923, 0.321342, 0.880732,
		0.825939, -0.549552, -0.125769,
		0.443593, 0.771189, -0.456611,
		33.854355, 38.805069, 46.837215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171947, 38.342979, 47.437374>,  <33.543839, 38.265236, 47.156841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171947, 38.342979, 47.437374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092884, 38.703533, 47.283268>,  <34.045444, 38.919865, 47.190804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092884, 38.703533, 47.283268>,  <34.171947, 38.342979, 47.437374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092884, 38.703533, 47.283268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268655, 0.427788, 0.863031,
		0.942738, 0.067084, -0.326719,
		-0.197662, 0.901386, -0.385269,
		34.033585, 38.973949, 47.167686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757057, 38.773224, 47.501911>,  <34.171947, 38.342979, 47.437374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757057, 38.773224, 47.501911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447533, 39.022762, 47.458035>,  <34.261818, 39.172485, 47.431709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447533, 39.022762, 47.458035>,  <34.757057, 38.773224, 47.501911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447533, 39.022762, 47.458035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244118, 0.453519, 0.857162,
		0.584483, 0.636505, -0.503230,
		-0.773813, 0.623844, -0.109692,
		34.215389, 39.209915, 47.425125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050446, 39.439503, 47.462589>,  <34.757057, 38.773224, 47.501911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050446, 39.439503, 47.462589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672356, 39.466030, 47.590427>,  <34.445499, 39.481945, 47.667130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672356, 39.466030, 47.590427>,  <35.050446, 39.439503, 47.462589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672356, 39.466030, 47.590427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282493, 0.656726, 0.699220,
		-0.163522, 0.751208, -0.639490,
		-0.945229, 0.066314, 0.319600,
		34.388786, 39.485924, 47.686306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920406, 40.106602, 47.536182>,  <35.050446, 39.439503, 47.462589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920406, 40.106602, 47.536182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674698, 39.929268, 47.797295>,  <34.527271, 39.822868, 47.953964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674698, 39.929268, 47.797295>,  <34.920406, 40.106602, 47.536182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674698, 39.929268, 47.797295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199422, 0.713185, 0.672011,
		-0.763480, 0.542976, -0.349678,
		-0.614271, -0.443333, 0.652784,
		34.490417, 39.796268, 47.993130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761387, 40.578167, 47.921326>,  <34.920406, 40.106602, 47.536182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761387, 40.578167, 47.921326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649422, 40.274036, 48.155777>,  <34.582241, 40.091557, 48.296448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649422, 40.274036, 48.155777>,  <34.761387, 40.578167, 47.921326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649422, 40.274036, 48.155777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391572, 0.467016, 0.792822,
		-0.876538, 0.451435, 0.166999,
		-0.279916, -0.760331, 0.586126,
		34.565445, 40.045937, 48.331615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361118, 40.861725, 48.486164>,  <34.761387, 40.578167, 47.921326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361118, 40.861725, 48.486164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431362, 40.491280, 48.619717>,  <34.473507, 40.269012, 48.699848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431362, 40.491280, 48.619717>,  <34.361118, 40.861725, 48.486164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431362, 40.491280, 48.619717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254989, 0.370370, 0.893200,
		-0.950864, -0.071714, 0.301188,
		0.175606, -0.926112, 0.333885,
		34.484043, 40.213448, 48.719883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929821, 40.839520, 49.057343>,  <34.361118, 40.861725, 48.486164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929821, 40.839520, 49.057343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211750, 40.557713, 49.090546>,  <34.380905, 40.388630, 49.110466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211750, 40.557713, 49.090546>,  <33.929821, 40.839520, 49.057343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211750, 40.557713, 49.090546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300951, 0.402916, 0.864342,
		-0.642385, -0.584225, 0.496007,
		0.704820, -0.704514, 0.083004,
		34.423195, 40.346359, 49.115448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978516, 40.624241, 49.779900>,  <33.929821, 40.839520, 49.057343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978516, 40.624241, 49.779900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339722, 40.514160, 49.647949>,  <34.556446, 40.448112, 49.568779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339722, 40.514160, 49.647949>,  <33.978516, 40.624241, 49.779900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339722, 40.514160, 49.647949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394710, 0.228359, 0.889976,
		-0.169596, -0.933870, 0.314838,
		0.903018, -0.275206, -0.329879,
		34.610626, 40.431599, 49.548985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268581, 40.406464, 50.438305>,  <33.978516, 40.624241, 49.779900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268581, 40.406464, 50.438305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571587, 40.387165, 50.177891>,  <34.753391, 40.375587, 50.021641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571587, 40.387165, 50.177891>,  <34.268581, 40.406464, 50.438305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571587, 40.387165, 50.177891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651444, -0.008871, 0.758645,
		-0.042377, -0.998796, 0.024710,
		0.757513, -0.048246, -0.651036,
		34.798840, 40.372692, 49.982578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728626, 39.908466, 50.790531>,  <34.268581, 40.406464, 50.438305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728626, 39.908466, 50.790531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958889, 40.096661, 50.523018>,  <35.097046, 40.209576, 50.362511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958889, 40.096661, 50.523018>,  <34.728626, 39.908466, 50.790531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958889, 40.096661, 50.523018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702452, 0.134113, 0.698981,
		0.418550, -0.872159, -0.253289,
		0.575653, 0.470482, -0.668783,
		35.131584, 40.237804, 50.322384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326736, 39.607857, 50.945580>,  <34.728626, 39.908466, 50.790531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326736, 39.607857, 50.945580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422466, 39.936760, 50.739040>,  <35.479904, 40.134102, 50.615116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422466, 39.936760, 50.739040>,  <35.326736, 39.607857, 50.945580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422466, 39.936760, 50.739040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677994, 0.239146, 0.695078,
		0.695017, -0.516426, -0.500255,
		0.239322, 0.822261, -0.516344,
		35.494263, 40.183437, 50.584137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098213, 39.580048, 50.673370>,  <35.326736, 39.607857, 50.945580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098213, 39.580048, 50.673370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985649, 39.963810, 50.680866>,  <35.918110, 40.194065, 50.685364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985649, 39.963810, 50.680866>,  <36.098213, 39.580048, 50.673370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985649, 39.963810, 50.680866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843880, 0.238136, 0.480789,
		0.456807, 0.151118, -0.876636,
		-0.281414, 0.959403, 0.018743,
		35.901226, 40.251633, 50.686489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745899, 40.018829, 50.670280>,  <36.098213, 39.580048, 50.673370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745899, 40.018829, 50.670280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469589, 40.282326, 50.789543>,  <36.303802, 40.440422, 50.861099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469589, 40.282326, 50.789543>,  <36.745899, 40.018829, 50.670280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469589, 40.282326, 50.789543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665182, 0.417265, 0.619211,
		0.283491, 0.626059, -0.726418,
		-0.690771, 0.658741, 0.298152,
		36.262360, 40.479950, 50.878990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103664, 40.531433, 50.935410>,  <36.745899, 40.018829, 50.670280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103664, 40.531433, 50.935410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741341, 40.646332, 51.059986>,  <36.523945, 40.715271, 51.134731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741341, 40.646332, 51.059986>,  <37.103664, 40.531433, 50.935410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741341, 40.646332, 51.059986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399567, 0.334705, 0.853416,
		0.140895, 0.897477, -0.417952,
		-0.905812, 0.287242, 0.311444,
		36.469597, 40.732506, 51.153419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189594, 41.142811, 51.105839>,  <37.103664, 40.531433, 50.935410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189594, 41.142811, 51.105839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878365, 40.990879, 51.305973>,  <36.691628, 40.899719, 51.426052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878365, 40.990879, 51.305973>,  <37.189594, 41.142811, 51.105839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878365, 40.990879, 51.305973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342885, 0.410570, 0.844904,
		-0.526344, 0.828952, -0.189214,
		-0.778070, -0.379831, 0.500336,
		36.644943, 40.876930, 51.456074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956814, 41.674622, 51.598087>,  <37.189594, 41.142811, 51.105839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956814, 41.674622, 51.598087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795750, 41.334293, 51.733124>,  <36.699112, 41.130096, 51.814144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795750, 41.334293, 51.733124>,  <36.956814, 41.674622, 51.598087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795750, 41.334293, 51.733124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262658, 0.245900, 0.933030,
		-0.876854, 0.464368, 0.124460,
		-0.402664, -0.850821, 0.337588,
		36.674950, 41.079048, 51.834400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721394, 41.892590, 52.216358>,  <36.956814, 41.674622, 51.598087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721394, 41.892590, 52.216358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758354, 41.495129, 52.242050>,  <36.780529, 41.256653, 52.257465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758354, 41.495129, 52.242050>,  <36.721394, 41.892590, 52.216358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758354, 41.495129, 52.242050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393703, 0.095711, 0.914241,
		-0.914582, -0.059189, 0.400046,
		0.092402, -0.993648, 0.064233,
		36.786076, 41.197033, 52.261318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237751, 41.379322, 52.701641>,  <36.721394, 41.892590, 52.216358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237751, 41.379322, 52.701641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603191, 41.221905, 52.660713>,  <36.822456, 41.127457, 52.636158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603191, 41.221905, 52.660713>,  <36.237751, 41.379322, 52.701641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603191, 41.221905, 52.660713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178989, 0.163279, 0.970208,
		-0.365109, -0.904692, 0.219610,
		0.913597, -0.393540, -0.102315,
		36.877270, 41.103844, 52.630020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324512, 40.788681, 53.084629>,  <36.237751, 41.379322, 52.701641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324512, 40.788681, 53.084629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692417, 40.945648, 53.087048>,  <36.913162, 41.039829, 53.088501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692417, 40.945648, 53.087048>,  <36.324512, 40.788681, 53.084629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692417, 40.945648, 53.087048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094242, 0.205868, 0.974031,
		0.380985, -0.896451, 0.226333,
		0.919766, 0.392421, 0.006051,
		36.968346, 41.063374, 53.088863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620705, 40.415058, 53.611481>,  <36.324512, 40.788681, 53.084629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620705, 40.415058, 53.611481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854671, 40.727207, 53.523033>,  <36.995052, 40.914497, 53.469967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854671, 40.727207, 53.523033>,  <36.620705, 40.415058, 53.611481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854671, 40.727207, 53.523033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108115, 0.195167, 0.974793,
		0.803858, -0.594075, 0.029786,
		0.584913, 0.780375, -0.221115,
		37.030144, 40.961319, 53.456699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255886, 40.321541, 53.981674>,  <36.620705, 40.415058, 53.611481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255886, 40.321541, 53.981674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169601, 40.698284, 53.878628>,  <37.117832, 40.924332, 53.816799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169601, 40.698284, 53.878628>,  <37.255886, 40.321541, 53.981674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169601, 40.698284, 53.878628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077295, 0.279465, 0.957040,
		0.973393, 0.186533, -0.133085,
		-0.215712, 0.941862, -0.257611,
		37.104889, 40.980843, 53.801346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927067, 40.600227, 53.716576>,  <37.255886, 40.321541, 53.981674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927067, 40.600227, 53.716576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175594, 40.287338, 53.734852>,  <38.324711, 40.099606, 53.745819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175594, 40.287338, 53.734852>,  <37.927067, 40.600227, 53.716576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175594, 40.287338, 53.734852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674021, -0.503811, 0.540251,
		-0.399576, -0.366467, -0.840263,
		0.621317, -0.782226, 0.045696,
		38.361988, 40.052670, 53.748562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603825, 39.913883, 53.378426>,  <37.927067, 40.600227, 53.716576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603825, 39.913883, 53.378426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865387, 39.855930, 53.675457>,  <38.022324, 39.821159, 53.853676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865387, 39.855930, 53.675457>,  <37.603825, 39.913883, 53.378426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865387, 39.855930, 53.675457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701025, -0.485181, 0.522650,
		0.284563, -0.862327, -0.418826,
		0.653902, -0.144880, 0.742578,
		38.061558, 39.812466, 53.898232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752888, 39.131687, 53.635033>,  <37.603825, 39.913883, 53.378426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752888, 39.131687, 53.635033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766262, 39.401707, 53.929836>,  <37.774288, 39.563721, 54.106720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766262, 39.401707, 53.929836>,  <37.752888, 39.131687, 53.635033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766262, 39.401707, 53.929836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734760, -0.483284, 0.475988,
		0.677503, -0.557442, 0.479843,
		0.033435, 0.675052, 0.737012,
		37.776291, 39.604221, 54.150940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720608, 38.760662, 54.288052>,  <37.752888, 39.131687, 53.635033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720608, 38.760662, 54.288052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604485, 39.137268, 54.356480>,  <37.534813, 39.363232, 54.397537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604485, 39.137268, 54.356480>,  <37.720608, 38.760662, 54.288052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604485, 39.137268, 54.356480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781830, -0.336445, 0.524925,
		0.551784, 0.018637, 0.833779,
		-0.290304, 0.941519, 0.171074,
		37.517395, 39.419724, 54.407803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108494, 38.385536, 54.137238>,  <37.720608, 38.760662, 54.288052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108494, 38.385536, 54.137238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786964, 38.554924, 53.970127>,  <36.594048, 38.656555, 53.869862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786964, 38.554924, 53.970127>,  <37.108494, 38.385536, 54.137238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786964, 38.554924, 53.970127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050999, -0.748781, -0.660853,
		-0.592672, -0.509905, 0.623488,
		-0.803828, 0.423466, -0.417776,
		36.545815, 38.681965, 53.844795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774666, 37.887047, 53.846989>,  <37.108494, 38.385536, 54.137238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774666, 37.887047, 53.846989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572559, 38.192539, 53.686275>,  <36.451298, 38.375835, 53.589848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572559, 38.192539, 53.686275>,  <36.774666, 37.887047, 53.846989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572559, 38.192539, 53.686275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214797, -0.562228, -0.798600,
		-0.835806, -0.317202, 0.448120,
		-0.505263, 0.763730, -0.401779,
		36.420982, 38.421658, 53.565742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212135, 37.621338, 53.518738>,  <36.774666, 37.887047, 53.846989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212135, 37.621338, 53.518738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223686, 37.973724, 53.329815>,  <36.230618, 38.185154, 53.216461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223686, 37.973724, 53.329815>,  <36.212135, 37.621338, 53.518738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223686, 37.973724, 53.329815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207585, -0.456914, -0.864950,
		-0.977790, 0.123023, 0.169679,
		0.028880, 0.880962, -0.472304,
		36.232349, 38.238014, 53.188126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676586, 37.729824, 53.109619>,  <36.212135, 37.621338, 53.518738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676586, 37.729824, 53.109619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959934, 37.954433, 52.938549>,  <36.129944, 38.089199, 52.835907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959934, 37.954433, 52.938549>,  <35.676586, 37.729824, 53.109619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959934, 37.954433, 52.938549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345360, -0.252695, -0.903810,
		-0.615584, 0.787930, 0.014928,
		0.708366, 0.561527, -0.427674,
		36.172443, 38.122890, 52.810246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333706, 38.085468, 52.409042>,  <35.676586, 37.729824, 53.109619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333706, 38.085468, 52.409042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727383, 38.153606, 52.389656>,  <35.963589, 38.194489, 52.378025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727383, 38.153606, 52.389656>,  <35.333706, 38.085468, 52.409042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727383, 38.153606, 52.389656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019855, -0.165788, -0.985961,
		-0.175989, 0.971337, -0.159785,
		0.984192, 0.170345, -0.048463,
		36.022640, 38.204712, 52.375118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341030, 38.378246, 51.806637>,  <35.333706, 38.085468, 52.409042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341030, 38.378246, 51.806637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727642, 38.309658, 51.882969>,  <35.959610, 38.268505, 51.928768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727642, 38.309658, 51.882969>,  <35.341030, 38.378246, 51.806637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727642, 38.309658, 51.882969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135665, -0.289697, -0.947455,
		0.217743, 0.941633, -0.256739,
		0.966531, -0.171471, 0.190826,
		36.017601, 38.258217, 51.940216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631763, 38.621380, 51.226883>,  <35.341030, 38.378246, 51.806637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631763, 38.621380, 51.226883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924648, 38.403351, 51.390224>,  <36.100380, 38.272533, 51.488228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924648, 38.403351, 51.390224>,  <35.631763, 38.621380, 51.226883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924648, 38.403351, 51.390224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312236, -0.264199, -0.912528,
		0.605283, 0.795670, -0.023258,
		0.732216, -0.545076, 0.408352,
		36.144314, 38.239826, 51.512730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165844, 38.714565, 50.875454>,  <35.631763, 38.621380, 51.226883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165844, 38.714565, 50.875454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217236, 38.352699, 51.037971>,  <36.248070, 38.135582, 51.135483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217236, 38.352699, 51.037971>,  <36.165844, 38.714565, 50.875454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217236, 38.352699, 51.037971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069057, -0.400537, -0.913675,
		0.989305, 0.145446, 0.011013,
		0.128479, -0.904663, 0.406297,
		36.255779, 38.081299, 51.159863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622356, 38.542973, 50.417210>,  <36.165844, 38.714565, 50.875454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622356, 38.542973, 50.417210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492352, 38.217274, 50.609615>,  <36.414349, 38.021854, 50.725060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492352, 38.217274, 50.609615>,  <36.622356, 38.542973, 50.417210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492352, 38.217274, 50.609615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244409, -0.563667, -0.789014,
		0.913581, -0.138875, 0.382207,
		-0.325012, -0.814244, 0.481013,
		36.394848, 37.973000, 50.753918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050465, 38.050404, 50.250263>,  <36.622356, 38.542973, 50.417210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050465, 38.050404, 50.250263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737488, 37.837616, 50.379749>,  <36.549702, 37.709942, 50.457439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737488, 37.837616, 50.379749>,  <37.050465, 38.050404, 50.250263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737488, 37.837616, 50.379749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025361, -0.546624, -0.836994,
		0.622204, -0.646692, 0.441194,
		-0.782444, -0.531969, 0.323711,
		36.502754, 37.678024, 50.476864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264465, 37.351532, 50.280651>,  <37.050465, 38.050404, 50.250263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264465, 37.351532, 50.280651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866482, 37.323589, 50.251892>,  <36.627689, 37.306824, 50.234638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866482, 37.323589, 50.251892>,  <37.264465, 37.351532, 50.280651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866482, 37.323589, 50.251892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094706, -0.419993, -0.902572,
		0.032856, -0.904835, 0.424493,
		-0.994963, -0.069857, -0.071894,
		36.567993, 37.302631, 50.230324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119045, 36.722118, 50.011650>,  <37.264465, 37.351532, 50.280651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119045, 36.722118, 50.011650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805038, 36.957600, 49.934521>,  <36.616634, 37.098888, 49.888245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805038, 36.957600, 49.934521>,  <37.119045, 36.722118, 50.011650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805038, 36.957600, 49.934521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086072, -0.204589, -0.975056,
		-0.613464, -0.782033, 0.109935,
		-0.785018, 0.588700, -0.192819,
		36.569534, 37.134209, 49.876675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548679, 36.315102, 49.661377>,  <37.119045, 36.722118, 50.011650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548679, 36.315102, 49.661377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478085, 36.697838, 49.569016>,  <36.435726, 36.927479, 49.513599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478085, 36.697838, 49.569016>,  <36.548679, 36.315102, 49.661377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478085, 36.697838, 49.569016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202445, -0.264855, -0.942798,
		-0.963260, -0.119645, 0.240450,
		-0.176485, 0.956837, -0.230903,
		36.425140, 36.984890, 49.499744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913132, 36.335857, 49.194168>,  <36.548679, 36.315102, 49.661377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913132, 36.335857, 49.194168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152153, 36.647858, 49.119839>,  <36.295567, 36.835056, 49.075241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152153, 36.647858, 49.119839>,  <35.913132, 36.335857, 49.194168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152153, 36.647858, 49.119839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239994, -0.047146, -0.969629,
		-0.765071, 0.624001, 0.159023,
		0.597552, 0.780000, -0.185826,
		36.331417, 36.881859, 49.064091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758926, 36.441116, 48.543568>,  <35.913132, 36.335857, 49.194168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758926, 36.441116, 48.543568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023907, 36.736492, 48.593956>,  <36.182896, 36.913719, 48.624187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023907, 36.736492, 48.593956>,  <35.758926, 36.441116, 48.543568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023907, 36.736492, 48.593956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066330, 0.225323, -0.972023,
		-0.746167, 0.635558, 0.198246,
		0.662446, 0.738442, 0.125972,
		36.222641, 36.958023, 48.631748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548630, 36.998856, 48.212238>,  <35.758926, 36.441116, 48.543568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548630, 36.998856, 48.212238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947704, 37.026066, 48.212521>,  <36.187149, 37.042393, 48.212688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947704, 37.026066, 48.212521>,  <35.548630, 36.998856, 48.212238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947704, 37.026066, 48.212521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009407, 0.148202, -0.988912,
		-0.067372, 0.986615, 0.148499,
		0.997684, 0.068022, 0.000703,
		36.247009, 37.046471, 48.212730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702282, 37.631382, 47.919861>,  <35.548630, 36.998856, 48.212238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702282, 37.631382, 47.919861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000008, 37.367569, 47.877880>,  <36.178642, 37.209282, 47.852692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000008, 37.367569, 47.877880>,  <35.702282, 37.631382, 47.919861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000008, 37.367569, 47.877880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019507, 0.135621, -0.990569,
		0.667544, 0.739343, 0.088080,
		0.744315, -0.659530, -0.104955,
		36.223301, 37.169708, 47.846394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136211, 37.934975, 47.445019>,  <35.702282, 37.631382, 47.919861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136211, 37.934975, 47.445019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255779, 37.553669, 47.427383>,  <36.327518, 37.324886, 47.416801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255779, 37.553669, 47.427383>,  <36.136211, 37.934975, 47.445019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255779, 37.553669, 47.427383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196942, 0.106833, -0.974577,
		0.933736, 0.282634, 0.219671,
		0.298917, -0.953260, -0.044091,
		36.345455, 37.267693, 47.414158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689011, 37.900948, 46.952278>,  <36.136211, 37.934975, 47.445019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689011, 37.900948, 46.952278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557129, 37.525772, 46.995312>,  <36.478001, 37.300667, 47.021133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557129, 37.525772, 46.995312>,  <36.689011, 37.900948, 46.952278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557129, 37.525772, 46.995312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105619, -0.149885, -0.983046,
		0.938159, -0.312748, 0.148481,
		-0.329701, -0.937936, 0.107584,
		36.458218, 37.244392, 47.027588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937786, 37.651901, 46.376781>,  <36.689011, 37.900948, 46.952278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937786, 37.651901, 46.376781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704376, 37.345448, 46.484509>,  <36.564331, 37.161575, 46.549145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704376, 37.345448, 46.484509>,  <36.937786, 37.651901, 46.376781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704376, 37.345448, 46.484509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003283, -0.333861, -0.942617,
		0.812087, -0.549158, 0.197333,
		-0.583528, -0.766134, 0.269321,
		36.529320, 37.115608, 46.565304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244820, 37.045944, 46.034298>,  <36.937786, 37.651901, 46.376781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244820, 37.045944, 46.034298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869724, 36.945496, 46.130291>,  <36.644669, 36.885227, 46.187885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869724, 36.945496, 46.130291>,  <37.244820, 37.045944, 46.034298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869724, 36.945496, 46.130291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064386, -0.553256, -0.830519,
		0.341332, -0.794259, 0.502638,
		-0.937735, -0.251120, 0.239983,
		36.588406, 36.870159, 46.202286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218056, 36.330193, 45.998550>,  <37.244820, 37.045944, 46.034298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218056, 36.330193, 45.998550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839355, 36.444916, 45.940025>,  <36.612137, 36.513752, 45.904911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839355, 36.444916, 45.940025>,  <37.218056, 36.330193, 45.998550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839355, 36.444916, 45.940025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030202, -0.531529, -0.846501,
		-0.320553, -0.797005, 0.511887,
		-0.946749, 0.286809, -0.146312,
		36.555332, 36.530960, 45.896130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904736, 35.717697, 45.851528>,  <37.218056, 36.330193, 45.998550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904736, 35.717697, 45.851528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633644, 35.977734, 45.714088>,  <36.470989, 36.133755, 45.631622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633644, 35.977734, 45.714088>,  <36.904736, 35.717697, 45.851528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633644, 35.977734, 45.714088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273479, -0.656619, -0.702895,
		-0.682564, -0.382403, 0.622796,
		-0.677728, 0.650092, -0.343606,
		36.430325, 36.172760, 45.611008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277576, 35.317463, 45.764442>,  <36.904736, 35.717697, 45.851528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277576, 35.317463, 45.764442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246143, 35.656700, 45.554844>,  <36.227283, 35.860241, 45.429085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246143, 35.656700, 45.554844>,  <36.277576, 35.317463, 45.764442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246143, 35.656700, 45.554844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381508, -0.511191, -0.770153,
		-0.921019, 0.139388, 0.363723,
		-0.078582, 0.848089, -0.523994,
		36.222569, 35.911125, 45.397644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589382, 35.345547, 45.582603>,  <36.277576, 35.317463, 45.764442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589382, 35.345547, 45.582603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748093, 35.584217, 45.303593>,  <35.843319, 35.727417, 45.136185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748093, 35.584217, 45.303593>,  <35.589382, 35.345547, 45.582603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748093, 35.584217, 45.303593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553920, -0.450305, -0.700285,
		-0.731942, 0.664234, 0.151837,
		0.396780, 0.596673, -0.697529,
		35.867126, 35.763218, 45.094334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037228, 35.614155, 45.375492>,  <35.589382, 35.345547, 45.582603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037228, 35.614155, 45.375492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330952, 35.632797, 45.104610>,  <35.507187, 35.643982, 44.942081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330952, 35.632797, 45.104610>,  <35.037228, 35.614155, 45.375492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330952, 35.632797, 45.104610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554659, -0.533936, -0.638174,
		-0.391327, 0.844240, -0.366228,
		0.734314, 0.046603, -0.677208,
		35.551247, 35.646778, 44.901447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721195, 35.554394, 44.781620>,  <35.037228, 35.614155, 45.375492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721195, 35.554394, 44.781620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094353, 35.512844, 44.643677>,  <35.318245, 35.487915, 44.560909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094353, 35.512844, 44.643677>,  <34.721195, 35.554394, 44.781620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094353, 35.512844, 44.643677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343063, -0.547813, -0.763026,
		-0.109657, 0.830127, -0.546685,
		0.932890, -0.103876, -0.344858,
		35.374218, 35.481682, 44.540218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664631, 35.651669, 44.104080>,  <34.721195, 35.554394, 44.781620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664631, 35.651669, 44.104080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026459, 35.484272, 44.136635>,  <35.243553, 35.383835, 44.156166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026459, 35.484272, 44.136635>,  <34.664631, 35.651669, 44.104080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026459, 35.484272, 44.136635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177430, -0.543118, -0.820696,
		0.387660, 0.727933, -0.565539,
		0.904565, -0.418495, 0.081388,
		35.297829, 35.358723, 44.161053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991528, 35.645748, 43.436970>,  <34.664631, 35.651669, 44.104080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991528, 35.645748, 43.436970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185947, 35.358757, 43.636562>,  <35.302597, 35.186562, 43.756317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185947, 35.358757, 43.636562>,  <34.991528, 35.645748, 43.436970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185947, 35.358757, 43.636562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127060, -0.622906, -0.771909,
		0.864646, 0.311785, -0.393925,
		0.486048, -0.717480, 0.498978,
		35.331760, 35.143513, 43.786255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384884, 35.324516, 42.981628>,  <34.991528, 35.645748, 43.436970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384884, 35.324516, 42.981628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338078, 35.063820, 43.281372>,  <35.309994, 34.907402, 43.461220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338078, 35.063820, 43.281372>,  <35.384884, 35.324516, 42.981628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338078, 35.063820, 43.281372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310985, -0.692550, -0.650894,
		0.943183, -0.309208, -0.121639,
		-0.117020, -0.651740, 0.749361,
		35.302971, 34.868298, 43.506180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738472, 34.682510, 42.801510>,  <35.384884, 35.324516, 42.981628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738472, 34.682510, 42.801510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498283, 34.543564, 43.089611>,  <35.354168, 34.460197, 43.262470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498283, 34.543564, 43.089611>,  <35.738472, 34.682510, 42.801510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498283, 34.543564, 43.089611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332319, -0.710848, -0.619886,
		0.727319, -0.611580, 0.311410,
		-0.600476, -0.347367, 0.720253,
		35.318142, 34.439354, 43.305687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785889, 33.992859, 42.849747>,  <35.738472, 34.682510, 42.801510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785889, 33.992859, 42.849747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425209, 34.064621, 43.007099>,  <35.208801, 34.107677, 43.101513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425209, 34.064621, 43.007099>,  <35.785889, 33.992859, 42.849747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425209, 34.064621, 43.007099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382021, -0.756668, -0.530579,
		0.202473, -0.628704, 0.750823,
		-0.901701, 0.179402, 0.393383,
		35.154697, 34.118443, 43.125114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529526, 33.341209, 43.010040>,  <35.785889, 33.992859, 42.849747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529526, 33.341209, 43.010040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213463, 33.584187, 42.977402>,  <35.023823, 33.729973, 42.957817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213463, 33.584187, 42.977402>,  <35.529526, 33.341209, 43.010040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213463, 33.584187, 42.977402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385381, -0.595943, -0.704509,
		-0.476579, -0.525228, 0.704988,
		-0.790161, 0.607443, -0.081601,
		34.976414, 33.766418, 42.952923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967464, 32.858044, 42.956947>,  <35.529526, 33.341209, 43.010040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967464, 32.858044, 42.956947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817116, 33.196041, 42.804787>,  <34.726906, 33.398838, 42.713490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817116, 33.196041, 42.804787>,  <34.967464, 32.858044, 42.956947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817116, 33.196041, 42.804787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590518, -0.534771, -0.604408,
		-0.714150, -0.002543, 0.699988,
		-0.375871, 0.844994, -0.380404,
		34.704353, 33.449539, 42.690666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265011, 32.594002, 42.774925>,  <34.967464, 32.858044, 42.956947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265011, 32.594002, 42.774925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339935, 32.937126, 42.583477>,  <34.384892, 33.143002, 42.468609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339935, 32.937126, 42.583477>,  <34.265011, 32.594002, 42.774925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339935, 32.937126, 42.583477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456071, -0.355603, -0.815810,
		-0.870007, 0.371099, 0.324612,
		0.187313, 0.857807, -0.478625,
		34.396130, 33.194469, 42.439888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610931, 32.890514, 42.555401>,  <34.265011, 32.594002, 42.774925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610931, 32.890514, 42.555401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885887, 33.059570, 42.319141>,  <34.050861, 33.161003, 42.177383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885887, 33.059570, 42.319141>,  <33.610931, 32.890514, 42.555401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885887, 33.059570, 42.319141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579040, -0.171994, -0.796951,
		-0.438410, 0.889829, 0.126497,
		0.687393, 0.422638, -0.590650,
		34.092106, 33.186363, 42.141945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180576, 33.266727, 42.092491>,  <33.610931, 32.890514, 42.555401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180576, 33.266727, 42.092491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537693, 33.244320, 41.913704>,  <33.751965, 33.230877, 41.806431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537693, 33.244320, 41.913704>,  <33.180576, 33.266727, 42.092491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537693, 33.244320, 41.913704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449447, -0.177503, -0.875494,
		-0.030294, 0.982525, -0.183651,
		0.892793, -0.056019, -0.446970,
		33.805531, 33.227516, 41.779613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146160, 33.681576, 41.540791>,  <33.180576, 33.266727, 42.092491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146160, 33.681576, 41.540791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432087, 33.422394, 41.435581>,  <33.603645, 33.266884, 41.372456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432087, 33.422394, 41.435581>,  <33.146160, 33.681576, 41.540791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432087, 33.422394, 41.435581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530320, -0.257102, -0.807873,
		0.455845, 0.716971, -0.527407,
		0.714819, -0.647959, -0.263025,
		33.646534, 33.228004, 41.356674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334564, 33.890900, 40.882084>,  <33.146160, 33.681576, 41.540791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334564, 33.890900, 40.882084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493706, 33.524647, 40.905182>,  <33.589191, 33.304897, 40.919041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493706, 33.524647, 40.905182>,  <33.334564, 33.890900, 40.882084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493706, 33.524647, 40.905182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333364, -0.202917, -0.920703,
		0.854741, 0.347053, -0.385969,
		0.397852, -0.915630, 0.057747,
		33.613060, 33.249958, 40.922504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639156, 33.850529, 40.235130>,  <33.334564, 33.890900, 40.882084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639156, 33.850529, 40.235130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605362, 33.474430, 40.367073>,  <33.585087, 33.248772, 40.446239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605362, 33.474430, 40.367073>,  <33.639156, 33.850529, 40.235130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605362, 33.474430, 40.367073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341632, -0.283642, -0.896010,
		0.936029, -0.188387, -0.297254,
		-0.084483, -0.940243, 0.329856,
		33.580017, 33.192356, 40.466030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825115, 33.414932, 39.671886>,  <33.639156, 33.850529, 40.235130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825115, 33.414932, 39.671886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632961, 33.162621, 39.915638>,  <33.517670, 33.011234, 40.061890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632961, 33.162621, 39.915638>,  <33.825115, 33.414932, 39.671886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632961, 33.162621, 39.915638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429270, -0.436792, -0.790532,
		0.764827, -0.641347, -0.060949,
		-0.480383, -0.630783, 0.609381,
		33.488846, 32.973385, 40.098454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045574, 32.720707, 39.530575>,  <33.825115, 33.414932, 39.671886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045574, 32.720707, 39.530575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670395, 32.728970, 39.669037>,  <33.445286, 32.733929, 39.752113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670395, 32.728970, 39.669037>,  <34.045574, 32.720707, 39.530575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670395, 32.728970, 39.669037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301700, -0.540727, -0.785233,
		0.170953, -0.840944, 0.513408,
		-0.937951, 0.020657, 0.346151,
		33.389011, 32.735168, 39.772881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779472, 32.724571, 39.137379>,  <34.045574, 32.720707, 39.530575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779472, 32.724571, 39.137379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007500, 32.969597, 38.918369>,  <35.144318, 33.116611, 38.786964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007500, 32.969597, 38.918369>,  <34.779472, 32.724571, 39.137379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007500, 32.969597, 38.918369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678437, 0.024907, 0.734236,
		0.463403, -0.790029, -0.401387,
		0.570071, 0.612563, -0.547527,
		35.178520, 33.153366, 38.754112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482803, 32.664837, 39.251801>,  <34.779472, 32.724571, 39.137379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482803, 32.664837, 39.251801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502445, 33.027306, 39.083786>,  <35.514229, 33.244789, 38.982975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502445, 33.027306, 39.083786>,  <35.482803, 32.664837, 39.251801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502445, 33.027306, 39.083786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653179, 0.289021, 0.699875,
		0.755610, -0.308726, -0.577704,
		0.049101, 0.906176, -0.420040,
		35.517174, 33.299160, 38.957775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183960, 32.831284, 39.291695>,  <35.482803, 32.664837, 39.251801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183960, 32.831284, 39.291695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989857, 33.178783, 39.252106>,  <35.873394, 33.387283, 39.228352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989857, 33.178783, 39.252106>,  <36.183960, 32.831284, 39.291695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989857, 33.178783, 39.252106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533534, 0.383871, 0.753648,
		0.692726, 0.312907, -0.649785,
		-0.485256, 0.868753, -0.098971,
		35.844280, 33.439411, 39.222416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707966, 33.299244, 39.268955>,  <36.183960, 32.831284, 39.291695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707966, 33.299244, 39.268955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384201, 33.507618, 39.377384>,  <36.189941, 33.632641, 39.442444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384201, 33.507618, 39.377384>,  <36.707966, 33.299244, 39.268955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384201, 33.507618, 39.377384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534980, 0.463750, 0.706210,
		0.242175, 0.716635, -0.654053,
		-0.809412, 0.520931, 0.271077,
		36.141376, 33.663898, 39.458706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955460, 33.896595, 39.349655>,  <36.707966, 33.299244, 39.268955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955460, 33.896595, 39.349655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620449, 33.900600, 39.568176>,  <36.419441, 33.903004, 39.699287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620449, 33.900600, 39.568176>,  <36.955460, 33.896595, 39.349655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620449, 33.900600, 39.568176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496422, 0.431668, 0.753145,
		-0.228283, 0.901977, -0.366503,
		-0.837527, 0.010010, 0.546304,
		36.369190, 33.903603, 39.732067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932793, 34.627682, 39.590706>,  <36.955460, 33.896595, 39.349655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932793, 34.627682, 39.590706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724674, 34.368835, 39.813606>,  <36.599804, 34.213528, 39.947350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724674, 34.368835, 39.813606>,  <36.932793, 34.627682, 39.590706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724674, 34.368835, 39.813606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341534, 0.440403, 0.830301,
		-0.782715, 0.622327, -0.008131,
		-0.520300, -0.647112, 0.557256,
		36.568584, 34.174702, 39.980782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909634, 35.082272, 40.246803>,  <36.932793, 34.627682, 39.590706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909634, 35.082272, 40.246803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766773, 34.720032, 40.338314>,  <36.681057, 34.502689, 40.393219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766773, 34.720032, 40.338314>,  <36.909634, 35.082272, 40.246803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766773, 34.720032, 40.338314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280446, 0.129659, 0.951073,
		-0.890952, 0.403832, 0.207664,
		-0.357148, -0.905599, 0.228773,
		36.659630, 34.448353, 40.406944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272976, 35.162457, 40.669750>,  <36.909634, 35.082272, 40.246803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272976, 35.162457, 40.669750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475998, 34.821907, 40.722755>,  <36.597809, 34.617577, 40.754559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475998, 34.821907, 40.722755>,  <36.272976, 35.162457, 40.669750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475998, 34.821907, 40.722755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133966, 0.229901, 0.963949,
		-0.851143, -0.471501, 0.230741,
		0.507551, -0.851371, 0.132513,
		36.628262, 34.566494, 40.762508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077599, 34.902786, 41.388660>,  <36.272976, 35.162457, 40.669750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077599, 34.902786, 41.388660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421356, 34.717628, 41.301781>,  <36.627609, 34.606533, 41.249653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421356, 34.717628, 41.301781>,  <36.077599, 34.902786, 41.388660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421356, 34.717628, 41.301781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353938, 0.231976, 0.906044,
		-0.369022, -0.855519, 0.363195,
		0.859390, -0.462898, -0.217196,
		36.679173, 34.578758, 41.236622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326775, 34.468864, 41.987682>,  <36.077599, 34.902786, 41.388660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326775, 34.468864, 41.987682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651611, 34.492279, 41.755447>,  <36.846512, 34.506329, 41.616104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651611, 34.492279, 41.755447>,  <36.326775, 34.468864, 41.987682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651611, 34.492279, 41.755447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567260, 0.154142, 0.808985,
		0.136845, -0.986313, 0.091974,
		0.812090, 0.058533, -0.580590,
		36.895237, 34.509842, 41.581272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745369, 34.123230, 42.346004>,  <36.326775, 34.468864, 41.987682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745369, 34.123230, 42.346004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992958, 34.309078, 42.092709>,  <37.141514, 34.420589, 41.940731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992958, 34.309078, 42.092709>,  <36.745369, 34.123230, 42.346004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992958, 34.309078, 42.092709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643388, 0.162467, 0.748102,
		0.450467, -0.870476, -0.198370,
		0.618976, 0.464624, -0.633240,
		37.178650, 34.448467, 41.902737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444355, 33.816532, 42.402496>,  <36.745369, 34.123230, 42.346004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444355, 33.816532, 42.402496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482929, 34.190540, 42.266006>,  <37.506073, 34.414948, 42.184113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482929, 34.190540, 42.266006>,  <37.444355, 33.816532, 42.402496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482929, 34.190540, 42.266006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681130, 0.187987, 0.707617,
		0.725784, -0.300654, -0.618745,
		0.096432, 0.935023, -0.341223,
		37.511860, 34.471046, 42.163639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218651, 33.965736, 42.352188>,  <37.444355, 33.816532, 42.402496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218651, 33.965736, 42.352188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044838, 34.325840, 42.362846>,  <37.940548, 34.541904, 42.369244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044838, 34.325840, 42.362846>,  <38.218651, 33.965736, 42.352188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044838, 34.325840, 42.362846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622997, 0.279076, 0.730747,
		0.650427, 0.334136, -0.682128,
		-0.434535, 0.900261, 0.026648,
		37.914478, 34.595917, 42.370842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707493, 34.318737, 42.726849>,  <38.218651, 33.965736, 42.352188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707493, 34.318737, 42.726849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396687, 34.570312, 42.716393>,  <38.210201, 34.721256, 42.710121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396687, 34.570312, 42.716393>,  <38.707493, 34.318737, 42.726849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396687, 34.570312, 42.716393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363158, 0.481802, 0.797485,
		0.514161, 0.610167, -0.602772,
		-0.777016, 0.628938, -0.026137,
		38.163582, 34.758995, 42.708553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006615, 34.886002, 42.993137>,  <38.707493, 34.318737, 42.726849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006615, 34.886002, 42.993137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611553, 34.911743, 43.050255>,  <38.374516, 34.927189, 43.084526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611553, 34.911743, 43.050255>,  <39.006615, 34.886002, 42.993137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611553, 34.911743, 43.050255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156534, 0.436761, 0.885854,
		-0.005360, 0.897273, -0.441444,
		-0.987658, 0.064353, 0.142795,
		38.315254, 34.931049, 43.093094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905487, 35.533348, 43.148937>,  <39.006615, 34.886002, 42.993137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905487, 35.533348, 43.148937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581478, 35.351948, 43.297638>,  <38.387074, 35.243107, 43.386860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581478, 35.351948, 43.297638>,  <38.905487, 35.533348, 43.148937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581478, 35.351948, 43.297638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105611, 0.510765, 0.853209,
		-0.576809, 0.730380, -0.365837,
		-0.810023, -0.453502, 0.371750,
		38.338470, 35.215897, 43.409164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520103, 36.055138, 43.284081>,  <38.905487, 35.533348, 43.148937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520103, 36.055138, 43.284081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408875, 35.736580, 43.498905>,  <38.342136, 35.545444, 43.627800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408875, 35.736580, 43.498905>,  <38.520103, 36.055138, 43.284081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408875, 35.736580, 43.498905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198179, 0.499520, 0.843330,
		-0.939895, 0.340939, 0.018927,
		-0.278070, -0.796392, 0.537063,
		38.325455, 35.497662, 43.660023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984798, 36.282307, 43.687004>,  <38.520103, 36.055138, 43.284081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984798, 36.282307, 43.687004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107834, 35.955524, 43.882133>,  <38.181656, 35.759457, 43.999210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107834, 35.955524, 43.882133>,  <37.984798, 36.282307, 43.687004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107834, 35.955524, 43.882133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328337, 0.572323, 0.751426,
		-0.893074, -0.070962, 0.444278,
		0.307593, -0.816952, 0.487828,
		38.200111, 35.710438, 44.028481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745159, 36.495987, 44.416733>,  <37.984798, 36.282307, 43.687004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745159, 36.495987, 44.416733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984390, 36.175831, 44.433170>,  <38.127930, 35.983738, 44.443031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984390, 36.175831, 44.433170>,  <37.745159, 36.495987, 44.416733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984390, 36.175831, 44.433170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334732, 0.296052, 0.894599,
		-0.728191, -0.521280, 0.444976,
		0.598073, -0.800387, 0.041093,
		38.163811, 35.935715, 44.445499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554348, 36.255203, 45.049343>,  <37.745159, 36.495987, 44.416733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554348, 36.255203, 45.049343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928047, 36.138966, 44.966652>,  <38.152267, 36.069221, 44.917038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928047, 36.138966, 44.966652>,  <37.554348, 36.255203, 45.049343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928047, 36.138966, 44.966652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265963, 0.181569, 0.946729,
		-0.237579, -0.939461, 0.246918,
		0.934248, -0.290594, -0.206724,
		38.208321, 36.051788, 44.904636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637852, 35.789532, 45.510963>,  <37.554348, 36.255203, 45.049343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637852, 35.789532, 45.510963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997475, 35.930874, 45.407547>,  <38.213249, 36.015678, 45.345497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997475, 35.930874, 45.407547>,  <37.637852, 35.789532, 45.510963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997475, 35.930874, 45.407547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229676, 0.122122, 0.965575,
		0.372761, -0.927485, 0.028638,
		0.899054, 0.353352, -0.258544,
		38.267189, 36.036880, 45.329983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141544, 35.278469, 45.793797>,  <37.637852, 35.789532, 45.510963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141544, 35.278469, 45.793797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255169, 35.659939, 45.754173>,  <38.323345, 35.888821, 45.730400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255169, 35.659939, 45.754173>,  <38.141544, 35.278469, 45.793797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255169, 35.659939, 45.754173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331419, -0.000716, 0.943483,
		0.899705, -0.300842, -0.316269,
		0.284066, 0.953674, -0.099060,
		38.340389, 35.946041, 45.724457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589024, 35.437241, 46.358288>,  <38.141544, 35.278469, 45.793797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589024, 35.437241, 46.358288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620506, 35.804600, 46.203182>,  <38.639397, 36.025013, 46.110119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620506, 35.804600, 46.203182>,  <38.589024, 35.437241, 46.358288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620506, 35.804600, 46.203182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312448, 0.346643, 0.884430,
		0.946669, -0.190765, -0.259667,
		0.078706, 0.918394, -0.387760,
		38.644119, 36.080116, 46.086853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197502, 35.679447, 46.644592>,  <38.589024, 35.437241, 46.358288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197502, 35.679447, 46.644592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028305, 36.021282, 46.524094>,  <38.926788, 36.226383, 46.451794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028305, 36.021282, 46.524094>,  <39.197502, 35.679447, 46.644592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028305, 36.021282, 46.524094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126606, 0.384935, 0.914219,
		0.897246, 0.348566, -0.271021,
		-0.422991, 0.854592, -0.301250,
		38.901409, 36.277660, 46.433720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647602, 36.290234, 46.888695>,  <39.197502, 35.679447, 46.644592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647602, 36.290234, 46.888695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311459, 36.490459, 46.805523>,  <39.109772, 36.610596, 46.755619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311459, 36.490459, 46.805523>,  <39.647602, 36.290234, 46.888695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311459, 36.490459, 46.805523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162338, 0.598429, 0.784557,
		0.517153, 0.625553, -0.584154,
		-0.840356, 0.500566, -0.207929,
		39.059353, 36.640629, 46.743145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894611, 36.982407, 46.893967>,  <39.647602, 36.290234, 46.888695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894611, 36.982407, 46.893967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496696, 36.999557, 46.930958>,  <39.257946, 37.009850, 46.953152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496696, 36.999557, 46.930958>,  <39.894611, 36.982407, 46.893967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496696, 36.999557, 46.930958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097749, 0.658670, 0.746056,
		-0.028924, 0.751209, -0.659430,
		-0.994791, 0.042879, 0.092481,
		39.198257, 37.012421, 46.958702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644653, 37.633915, 46.874046>,  <39.894611, 36.982407, 46.893967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644653, 37.633915, 46.874046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346241, 37.456364, 47.072605>,  <39.167194, 37.349834, 47.191742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346241, 37.456364, 47.072605>,  <39.644653, 37.633915, 46.874046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346241, 37.456364, 47.072605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094972, 0.808743, 0.580444,
		-0.659107, 0.385883, -0.645501,
		-0.746028, -0.443879, 0.496400,
		39.122433, 37.323200, 47.221527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122711, 38.202995, 47.016605>,  <39.644653, 37.633915, 46.874046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122711, 38.202995, 47.016605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034931, 37.917835, 47.283024>,  <38.982262, 37.746738, 47.442875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034931, 37.917835, 47.283024>,  <39.122711, 38.202995, 47.016605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034931, 37.917835, 47.283024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108720, 0.660563, 0.742857,
		-0.969547, 0.235433, -0.067454,
		-0.219450, -0.712901, 0.666043,
		38.969097, 37.703964, 47.482838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555614, 38.432518, 47.437523>,  <39.122711, 38.202995, 47.016605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555614, 38.432518, 47.437523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724472, 38.142387, 47.655037>,  <38.825787, 37.968311, 47.785545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724472, 38.142387, 47.655037>,  <38.555614, 38.432518, 47.437523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724472, 38.142387, 47.655037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079746, 0.567812, 0.819286,
		-0.903013, -0.389224, 0.181859,
		0.422148, -0.725324, 0.543780,
		38.851116, 37.924789, 47.818172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158131, 38.319736, 47.992519>,  <38.555614, 38.432518, 47.437523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158131, 38.319736, 47.992519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522198, 38.198029, 48.104965>,  <38.740639, 38.125004, 48.172432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522198, 38.198029, 48.104965>,  <38.158131, 38.319736, 47.992519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522198, 38.198029, 48.104965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123569, 0.448293, 0.885304,
		-0.395388, -0.840509, 0.370423,
		0.910165, -0.304265, 0.281111,
		38.795246, 38.106750, 48.189297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036449, 38.072247, 48.668369>,  <38.158131, 38.319736, 47.992519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036449, 38.072247, 48.668369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427082, 38.155647, 48.647133>,  <38.661461, 38.205688, 48.634392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427082, 38.155647, 48.647133>,  <38.036449, 38.072247, 48.668369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427082, 38.155647, 48.647133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029677, 0.374938, 0.926575,
		0.213101, -0.903298, 0.372345,
		0.976579, 0.208504, -0.053093,
		38.720055, 38.218197, 48.631207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213814, 38.071888, 49.350491>,  <38.036449, 38.072247, 48.668369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213814, 38.071888, 49.350491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545586, 38.217640, 49.181126>,  <38.744648, 38.305092, 49.079506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545586, 38.217640, 49.181126>,  <38.213814, 38.071888, 49.350491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545586, 38.217640, 49.181126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223073, 0.478859, 0.849077,
		0.512146, -0.798697, 0.315893,
		0.829424, 0.364384, -0.423414,
		38.794415, 38.326954, 49.054104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825512, 37.921432, 49.790466>,  <38.213814, 38.071888, 49.350491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825512, 37.921432, 49.790466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943039, 38.232170, 49.567688>,  <39.013554, 38.418613, 49.434021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943039, 38.232170, 49.567688>,  <38.825512, 37.921432, 49.790466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943039, 38.232170, 49.567688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134359, 0.543311, 0.828710,
		0.946373, -0.318316, 0.055255,
		0.293813, 0.776845, -0.556944,
		39.031181, 38.465225, 49.400604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489136, 38.230385, 50.072075>,  <38.825512, 37.921432, 49.790466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489136, 38.230385, 50.072075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325359, 38.532909, 49.867977>,  <39.227093, 38.714424, 49.745518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325359, 38.532909, 49.867977>,  <39.489136, 38.230385, 50.072075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325359, 38.532909, 49.867977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030231, 0.547722, 0.836114,
		0.911836, 0.357764, -0.201395,
		-0.409440, 0.756310, -0.510249,
		39.202526, 38.759804, 49.714901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861645, 38.845043, 50.306145>,  <39.489136, 38.230385, 50.072075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861645, 38.845043, 50.306145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542492, 39.003277, 50.124195>,  <39.351002, 39.098217, 50.015026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542492, 39.003277, 50.124195>,  <39.861645, 38.845043, 50.306145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542492, 39.003277, 50.124195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075174, 0.683389, 0.726174,
		0.598114, 0.613592, -0.515523,
		-0.797878, 0.395580, -0.454871,
		39.303127, 39.121952, 49.987732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948269, 39.573673, 50.324993>,  <39.861645, 38.845043, 50.306145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948269, 39.573673, 50.324993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555679, 39.505062, 50.290863>,  <39.320126, 39.463894, 50.270386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555679, 39.505062, 50.290863>,  <39.948269, 39.573673, 50.324993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555679, 39.505062, 50.290863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180943, 0.683683, 0.706991,
		-0.062936, 0.709334, -0.702057,
		-0.981478, -0.171528, -0.085321,
		39.261234, 39.453606, 50.265266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624859, 40.200741, 50.296356>,  <39.948269, 39.573673, 50.324993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624859, 40.200741, 50.296356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323742, 39.966560, 50.416725>,  <39.143070, 39.826054, 50.488949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323742, 39.966560, 50.416725>,  <39.624859, 40.200741, 50.296356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323742, 39.966560, 50.416725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293293, 0.707581, 0.642891,
		-0.589307, 0.395704, -0.704368,
		-0.752792, -0.585447, 0.300925,
		39.097904, 39.790928, 50.507004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082802, 40.630619, 50.449085>,  <39.624859, 40.200741, 50.296356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082802, 40.630619, 50.449085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950348, 40.296364, 50.624382>,  <38.870876, 40.095810, 50.729561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950348, 40.296364, 50.624382>,  <39.082802, 40.630619, 50.449085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950348, 40.296364, 50.624382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264790, 0.528080, 0.806857,
		-0.905668, 0.151137, -0.396135,
		-0.331137, -0.835637, 0.438246,
		38.851006, 40.045673, 50.755856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954197, 41.133175, 50.005474>,  <39.082802, 40.630619, 50.449085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954197, 41.133175, 50.005474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337307, 41.232422, 50.063583>,  <39.567173, 41.291969, 50.098450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337307, 41.232422, 50.063583>,  <38.954197, 41.133175, 50.005474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337307, 41.232422, 50.063583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080898, 0.252295, -0.964263,
		-0.275899, 0.935300, 0.221571,
		0.957776, 0.248114, 0.145272,
		39.624641, 41.306858, 50.107166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107178, 41.782539, 49.691708>,  <38.954197, 41.133175, 50.005474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107178, 41.782539, 49.691708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441399, 41.568142, 49.739975>,  <39.641933, 41.439503, 49.768936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441399, 41.568142, 49.739975>,  <39.107178, 41.782539, 49.691708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441399, 41.568142, 49.739975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162240, 0.030878, -0.986268,
		0.524903, 0.843660, 0.112759,
		0.835557, -0.535989, 0.120667,
		39.692066, 41.407345, 49.776176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713860, 42.111614, 49.417809>,  <39.107178, 41.782539, 49.691708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713860, 42.111614, 49.417809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802876, 41.721817, 49.429394>,  <39.856285, 41.487938, 49.436344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802876, 41.721817, 49.429394>,  <39.713860, 42.111614, 49.417809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802876, 41.721817, 49.429394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194585, 0.015282, -0.980766,
		0.955308, 0.223893, 0.193023,
		0.222536, -0.974494, 0.028967,
		39.869637, 41.429470, 49.438084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241207, 42.001060, 48.823139>,  <39.713860, 42.111614, 49.417809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241207, 42.001060, 48.823139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133179, 41.630238, 48.927155>,  <40.068359, 41.407742, 48.989563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133179, 41.630238, 48.927155>,  <40.241207, 42.001060, 48.823139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133179, 41.630238, 48.927155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264350, -0.331091, -0.905814,
		0.925839, -0.175897, 0.334487,
		-0.270075, -0.927060, 0.260038,
		40.052155, 41.352119, 49.005165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759281, 41.534191, 48.516304>,  <40.241207, 42.001060, 48.823139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759281, 41.534191, 48.516304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454006, 41.287533, 48.593548>,  <40.270840, 41.139538, 48.639896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454006, 41.287533, 48.593548>,  <40.759281, 41.534191, 48.516304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454006, 41.287533, 48.593548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257239, -0.564090, -0.784621,
		0.592762, -0.549141, 0.589133,
		-0.763192, -0.616642, 0.193111,
		40.225048, 41.102539, 48.651482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064674, 40.899261, 48.451340>,  <40.759281, 41.534191, 48.516304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064674, 40.899261, 48.451340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672794, 40.833504, 48.405453>,  <40.437668, 40.794048, 48.377918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672794, 40.833504, 48.405453>,  <41.064674, 40.899261, 48.451340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672794, 40.833504, 48.405453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191490, -0.598163, -0.778160,
		0.059300, -0.784332, 0.617500,
		-0.979702, -0.164390, -0.114721,
		40.378883, 40.784187, 48.371037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006409, 40.256115, 48.351166>,  <41.064674, 40.899261, 48.451340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006409, 40.256115, 48.351166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650211, 40.374718, 48.213120>,  <40.436493, 40.445877, 48.130291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650211, 40.374718, 48.213120>,  <41.006409, 40.256115, 48.351166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650211, 40.374718, 48.213120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125852, -0.568401, -0.813069,
		-0.437242, -0.767467, 0.468842,
		-0.890495, 0.296504, -0.345116,
		40.383064, 40.463669, 48.109585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715679, 39.638729, 48.111847>,  <41.006409, 40.256115, 48.351166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715679, 39.638729, 48.111847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545925, 39.948475, 47.924122>,  <40.444073, 40.134323, 47.811485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545925, 39.948475, 47.924122>,  <40.715679, 39.638729, 48.111847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545925, 39.948475, 47.924122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041392, -0.501175, -0.864355,
		-0.904534, -0.386248, 0.180640,
		-0.424388, 0.774362, -0.469317,
		40.418610, 40.180782, 47.783325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045776, 39.352707, 47.764816>,  <40.715679, 39.638729, 48.111847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045776, 39.352707, 47.764816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174957, 39.689560, 47.592068>,  <40.252464, 39.891674, 47.488419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174957, 39.689560, 47.592068>,  <40.045776, 39.352707, 47.764816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174957, 39.689560, 47.592068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042801, -0.468852, -0.882239,
		-0.945448, 0.266433, -0.187459,
		0.322948, 0.842135, -0.431872,
		40.271843, 39.942200, 47.462505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860462, 39.258896, 47.126518>,  <40.045776, 39.352707, 47.764816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860462, 39.258896, 47.126518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079643, 39.584221, 47.048279>,  <40.211151, 39.779415, 47.001335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079643, 39.584221, 47.048279>,  <39.860462, 39.258896, 47.126518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079643, 39.584221, 47.048279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024102, -0.249082, -0.968183,
		-0.836159, 0.525808, -0.156089,
		0.547957, 0.813317, -0.195599,
		40.244030, 39.828217, 46.989597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535675, 39.533077, 46.669060>,  <39.860462, 39.258896, 47.126518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535675, 39.533077, 46.669060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913483, 39.655460, 46.621281>,  <40.140167, 39.728889, 46.592613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913483, 39.655460, 46.621281>,  <39.535675, 39.533077, 46.669060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913483, 39.655460, 46.621281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042788, -0.245944, -0.968339,
		-0.325646, 0.919729, -0.219209,
		0.944523, 0.305957, -0.119444,
		40.196838, 39.747246, 46.585449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522205, 39.978828, 46.130840>,  <39.535675, 39.533077, 46.669060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522205, 39.978828, 46.130840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892155, 39.836594, 46.184750>,  <40.114124, 39.751255, 46.217094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892155, 39.836594, 46.184750>,  <39.522205, 39.978828, 46.130840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892155, 39.836594, 46.184750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002649, -0.360422, -0.932786,
		0.380259, 0.862354, -0.334288,
		0.924876, -0.355585, 0.134770,
		40.169617, 39.729919, 46.225182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837379, 40.055576, 45.469383>,  <39.522205, 39.978828, 46.130840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837379, 40.055576, 45.469383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061287, 39.768223, 45.634594>,  <40.195633, 39.595810, 45.733719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061287, 39.768223, 45.634594>,  <39.837379, 40.055576, 45.469383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061287, 39.768223, 45.634594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050801, -0.467740, -0.882405,
		0.827091, 0.514924, -0.225331,
		0.559768, -0.718382, 0.413022,
		40.229218, 39.552708, 45.758499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408234, 39.918568, 45.006325>,  <39.837379, 40.055576, 45.469383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408234, 39.918568, 45.006325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373844, 39.586628, 45.226852>,  <40.353210, 39.387463, 45.359169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373844, 39.586628, 45.226852>,  <40.408234, 39.918568, 45.006325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373844, 39.586628, 45.226852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020225, -0.554711, -0.831797,
		0.996092, -0.060360, 0.064473,
		-0.085971, -0.829850, 0.551323,
		40.348053, 39.337673, 45.392250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831985, 39.415718, 44.759647>,  <40.408234, 39.918568, 45.006325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831985, 39.415718, 44.759647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574780, 39.191742, 44.968647>,  <40.420456, 39.057358, 45.094048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574780, 39.191742, 44.968647>,  <40.831985, 39.415718, 44.759647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574780, 39.191742, 44.968647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117652, -0.601919, -0.789843,
		0.756762, -0.569354, 0.321165,
		-0.643015, -0.559938, 0.522495,
		40.381874, 39.023762, 45.125397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098866, 38.702873, 44.665951>,  <40.831985, 39.415718, 44.759647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098866, 38.702873, 44.665951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716015, 38.669952, 44.777042>,  <40.486305, 38.650200, 44.843697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716015, 38.669952, 44.777042>,  <41.098866, 38.702873, 44.665951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716015, 38.669952, 44.777042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210911, -0.459218, -0.862922,
		0.198560, -0.884503, 0.422171,
		-0.957126, -0.082302, 0.277734,
		40.428879, 38.645264, 44.860363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935516, 38.078411, 44.469509>,  <41.098866, 38.702873, 44.665951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935516, 38.078411, 44.469509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569721, 38.230412, 44.525097>,  <40.350243, 38.321613, 44.558449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569721, 38.230412, 44.525097>,  <40.935516, 38.078411, 44.469509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569721, 38.230412, 44.525097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280729, -0.348542, -0.894265,
		-0.291380, -0.856808, 0.425414,
		-0.914488, 0.379997, 0.138973,
		40.295376, 38.344410, 44.566788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436417, 37.473843, 44.372768>,  <40.935516, 38.078411, 44.469509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436417, 37.473843, 44.372768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218674, 37.808285, 44.345654>,  <40.088028, 38.008949, 44.329384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218674, 37.808285, 44.345654>,  <40.436417, 37.473843, 44.372768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218674, 37.808285, 44.345654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608175, -0.449029, -0.654596,
		-0.577752, -0.315107, 0.752934,
		-0.544357, 0.836110, -0.067787,
		40.055367, 38.059116, 44.325317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724491, 37.229351, 44.422661>,  <40.436417, 37.473843, 44.372768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724491, 37.229351, 44.422661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721909, 37.585140, 44.239887>,  <39.720360, 37.798615, 44.130222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721909, 37.585140, 44.239887>,  <39.724491, 37.229351, 44.422661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721909, 37.585140, 44.239887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511248, -0.395646, -0.762948,
		-0.859409, 0.228685, 0.457296,
		-0.006452, 0.889476, -0.456937,
		39.719975, 37.851982, 44.102806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093056, 37.266678, 44.225456>,  <39.724491, 37.229351, 44.422661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093056, 37.266678, 44.225456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270569, 37.520092, 43.971939>,  <39.377079, 37.672142, 43.819828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270569, 37.520092, 43.971939>,  <39.093056, 37.266678, 44.225456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270569, 37.520092, 43.971939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414656, -0.481807, -0.771960,
		-0.794427, 0.605389, 0.048880,
		0.443785, 0.633534, -0.633789,
		39.403706, 37.710152, 43.781803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676064, 37.382702, 43.747467>,  <39.093056, 37.266678, 44.225456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676064, 37.382702, 43.747467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995583, 37.541252, 43.566441>,  <39.187294, 37.636383, 43.457825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995583, 37.541252, 43.566441>,  <38.676064, 37.382702, 43.747467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995583, 37.541252, 43.566441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254589, -0.458870, -0.851248,
		-0.545080, 0.795190, -0.265631,
		0.798794, 0.396372, -0.452568,
		39.235222, 37.660164, 43.430672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395554, 37.461643, 43.146652>,  <38.676064, 37.382702, 43.747467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395554, 37.461643, 43.146652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782028, 37.504784, 43.052975>,  <39.013912, 37.530670, 42.996769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782028, 37.504784, 43.052975>,  <38.395554, 37.461643, 43.146652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782028, 37.504784, 43.052975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146619, -0.517330, -0.843133,
		-0.212091, 0.848963, -0.484024,
		0.966188, 0.107854, -0.234195,
		39.071884, 37.537140, 42.982716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472168, 37.825871, 42.540573>,  <38.395554, 37.461643, 43.146652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472168, 37.825871, 42.540573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788918, 37.583706, 42.572613>,  <38.978966, 37.438408, 42.591835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788918, 37.583706, 42.572613>,  <38.472168, 37.825871, 42.540573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788918, 37.583706, 42.572613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248864, -0.439689, -0.862983,
		0.557679, 0.663438, -0.498842,
		0.791871, -0.605412, 0.080099,
		39.026478, 37.402081, 42.596642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641674, 37.682564, 41.751926>,  <38.472168, 37.825871, 42.540573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641674, 37.682564, 41.751926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884850, 37.433880, 41.949467>,  <39.030754, 37.284672, 42.067993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884850, 37.433880, 41.949467>,  <38.641674, 37.682564, 41.751926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884850, 37.433880, 41.949467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069874, -0.577688, -0.813261,
		0.790903, 0.528921, -0.307758,
		0.607939, -0.621706, 0.493853,
		39.067230, 37.247368, 42.097622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165798, 37.392605, 41.241917>,  <38.641674, 37.682564, 41.751926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165798, 37.392605, 41.241917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207924, 37.138321, 41.547802>,  <39.233200, 36.985752, 41.731331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207924, 37.138321, 41.547802>,  <39.165798, 37.392605, 41.241917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207924, 37.138321, 41.547802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144014, -0.751130, -0.644255,
		0.983956, 0.177977, 0.012447,
		0.105314, -0.635711, 0.764710,
		39.239517, 36.947609, 41.777214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863422, 37.027065, 41.242584>,  <39.165798, 37.392605, 41.241917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863422, 37.027065, 41.242584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574406, 36.809582, 41.413380>,  <39.400997, 36.679092, 41.515858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574406, 36.809582, 41.413380>,  <39.863422, 37.027065, 41.242584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574406, 36.809582, 41.413380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103309, -0.695610, -0.710953,
		0.683568, -0.469579, 0.558775,
		-0.722539, -0.543711, 0.426985,
		39.357643, 36.646469, 41.541473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081226, 36.418625, 41.176018>,  <39.863422, 37.027065, 41.242584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081226, 36.418625, 41.176018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688736, 36.376465, 41.240620>,  <39.453243, 36.351170, 41.279381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688736, 36.376465, 41.240620>,  <40.081226, 36.418625, 41.176018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688736, 36.376465, 41.240620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072038, -0.576512, -0.813907,
		0.178897, -0.810262, 0.558097,
		-0.981227, -0.105402, 0.161506,
		39.394367, 36.344845, 41.289070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916153, 35.681229, 41.129269>,  <40.081226, 36.418625, 41.176018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916153, 35.681229, 41.129269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569447, 35.860943, 41.042671>,  <39.361423, 35.968769, 40.990715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569447, 35.860943, 41.042671>,  <39.916153, 35.681229, 41.129269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569447, 35.860943, 41.042671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133530, -0.627312, -0.767235,
		-0.480511, -0.636103, 0.603723,
		-0.866763, 0.449280, -0.216491,
		39.309418, 35.995728, 40.977722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467167, 35.120014, 40.948463>,  <39.916153, 35.681229, 41.129269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467167, 35.120014, 40.948463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279884, 35.432156, 40.782654>,  <39.167515, 35.619442, 40.683170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279884, 35.432156, 40.782654>,  <39.467167, 35.120014, 40.948463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279884, 35.432156, 40.782654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267385, -0.572245, -0.775268,
		-0.842193, -0.252148, 0.476584,
		-0.468205, 0.780357, -0.414520,
		39.139423, 35.666264, 40.658298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893684, 34.810829, 40.698662>,  <39.467167, 35.120014, 40.948463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893684, 34.810829, 40.698662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895756, 35.165909, 40.514503>,  <38.896999, 35.378956, 40.404007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895756, 35.165909, 40.514503>,  <38.893684, 34.810829, 40.698662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895756, 35.165909, 40.514503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237348, -0.446158, -0.862908,
		-0.971411, 0.113745, 0.208381,
		0.005181, 0.887697, -0.460400,
		38.897308, 35.432217, 40.376385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499554, 34.732262, 40.111366>,  <38.893684, 34.810829, 40.698662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499554, 34.732262, 40.111366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675030, 35.076828, 40.008980>,  <38.780315, 35.283566, 39.947548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675030, 35.076828, 40.008980>,  <38.499554, 34.732262, 40.111366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675030, 35.076828, 40.008980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113674, -0.229353, -0.966683,
		-0.891418, 0.453174, -0.002696,
		0.438693, 0.861412, -0.255963,
		38.806637, 35.335251, 39.932190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109146, 35.071762, 39.529510>,  <38.499554, 34.732262, 40.111366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109146, 35.071762, 39.529510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466927, 35.246765, 39.492523>,  <38.681595, 35.351768, 39.470333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466927, 35.246765, 39.492523>,  <38.109146, 35.071762, 39.529510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466927, 35.246765, 39.492523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041666, -0.124333, -0.991365,
		-0.445229, 0.890576, -0.092980,
		0.894447, 0.437510, -0.092464,
		38.735260, 35.378017, 39.464783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007423, 35.488777, 39.010406>,  <38.109146, 35.071762, 39.529510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007423, 35.488777, 39.010406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401031, 35.418621, 39.022652>,  <38.637196, 35.376526, 39.029999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401031, 35.418621, 39.022652>,  <38.007423, 35.488777, 39.010406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401031, 35.418621, 39.022652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006490, -0.136486, -0.990621,
		0.177927, 0.974991, -0.133167,
		0.984022, -0.175394, 0.030612,
		38.696239, 35.366001, 39.031834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291710, 35.970490, 38.687412>,  <38.007423, 35.488777, 39.010406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291710, 35.970490, 38.687412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565601, 35.678986, 38.684780>,  <38.729939, 35.504082, 38.683201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565601, 35.678986, 38.684780>,  <38.291710, 35.970490, 38.687412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565601, 35.678986, 38.684780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000766, 0.008313, -0.999965,
		0.728794, 0.684714, 0.005134,
		0.684733, -0.728764, -0.006583,
		38.771023, 35.460358, 38.682804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885715, 36.196533, 38.338726>,  <38.291710, 35.970490, 38.687412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885715, 36.196533, 38.338726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930676, 35.800438, 38.305737>,  <38.957653, 35.562782, 38.285942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930676, 35.800438, 38.305737>,  <38.885715, 36.196533, 38.338726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930676, 35.800438, 38.305737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046936, 0.088195, -0.994997,
		0.992554, 0.107969, 0.056391,
		0.112403, -0.990235, -0.082471,
		38.964397, 35.503368, 38.280994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534912, 36.002548, 37.989609>,  <38.885715, 36.196533, 38.338726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534912, 36.002548, 37.989609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320377, 35.668575, 37.940228>,  <39.191658, 35.468193, 37.910599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320377, 35.668575, 37.940228>,  <39.534912, 36.002548, 37.989609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320377, 35.668575, 37.940228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208887, 0.010409, -0.977884,
		0.817750, -0.550259, 0.168823,
		-0.536332, -0.834929, -0.123454,
		39.159477, 35.418095, 37.903191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869568, 35.613239, 37.519680>,  <39.534912, 36.002548, 37.989609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869568, 35.613239, 37.519680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513523, 35.430965, 37.516598>,  <39.299896, 35.321602, 37.514748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513523, 35.430965, 37.516598>,  <39.869568, 35.613239, 37.519680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513523, 35.430965, 37.516598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116944, -0.212025, -0.970242,
		0.440490, -0.864521, 0.242015,
		-0.890108, -0.455684, -0.007706,
		39.246490, 35.294262, 37.514286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004185, 34.913048, 37.272209>,  <39.869568, 35.613239, 37.519680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004185, 34.913048, 37.272209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621960, 34.989063, 37.182064>,  <39.392624, 35.034672, 37.127975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621960, 34.989063, 37.182064>,  <40.004185, 34.913048, 37.272209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621960, 34.989063, 37.182064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175568, -0.247237, -0.952916,
		-0.236787, -0.950140, 0.202890,
		-0.955567, 0.190017, -0.225357,
		39.335293, 35.046074, 37.114456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925720, 34.403130, 36.729298>,  <40.004185, 34.913048, 37.272209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925720, 34.403130, 36.729298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645580, 34.685699, 36.688366>,  <39.477497, 34.855244, 36.663807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645580, 34.685699, 36.688366>,  <39.925720, 34.403130, 36.729298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645580, 34.685699, 36.688366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093060, -0.051773, -0.994313,
		-0.707708, -0.705890, -0.029480,
		-0.700350, 0.706427, -0.102330,
		39.435474, 34.897629, 36.657665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308140, 34.175842, 36.353012>,  <39.925720, 34.403130, 36.729298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308140, 34.175842, 36.353012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384594, 34.560574, 36.274673>,  <39.430466, 34.791412, 36.227669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384594, 34.560574, 36.274673>,  <39.308140, 34.175842, 36.353012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384594, 34.560574, 36.274673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158428, -0.166682, -0.973200,
		-0.968693, 0.217044, 0.120521,
		0.191139, 0.961826, -0.195850,
		39.441936, 34.849121, 36.215919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773575, 34.548473, 35.923515>,  <39.308140, 34.175842, 36.353012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773575, 34.548473, 35.923515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120403, 34.733017, 35.848316>,  <39.328499, 34.843742, 35.803196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120403, 34.733017, 35.848316>,  <38.773575, 34.548473, 35.923515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120403, 34.733017, 35.848316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063463, -0.271999, -0.960203,
		-0.494130, 0.844493, -0.206562,
		0.867069, 0.461356, -0.187997,
		39.380524, 34.871426, 35.791916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666058, 35.029144, 35.325874>,  <38.773575, 34.548473, 35.923515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666058, 35.029144, 35.325874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036224, 34.884686, 35.371777>,  <39.258324, 34.798012, 35.399319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036224, 34.884686, 35.371777>,  <38.666058, 35.029144, 35.325874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036224, 34.884686, 35.371777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020136, -0.255548, -0.966587,
		0.378405, 0.896811, -0.229218,
		0.925421, -0.361145, 0.114758,
		39.313850, 34.776340, 35.406204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092567, 35.447720, 34.865471>,  <38.666058, 35.029144, 35.325874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092567, 35.447720, 34.865471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208256, 35.070961, 34.933800>,  <39.277668, 34.844906, 34.974796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208256, 35.070961, 34.933800>,  <39.092567, 35.447720, 34.865471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208256, 35.070961, 34.933800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247000, -0.245836, -0.937313,
		0.924848, 0.228894, -0.303749,
		0.289218, -0.941898, 0.170824,
		39.295021, 34.788391, 34.985046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535915, 35.581200, 35.355999>,  <39.092567, 35.447720, 34.865471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535915, 35.581200, 35.355999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692478, 35.290123, 35.130695>,  <39.786415, 35.115475, 34.995514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692478, 35.290123, 35.130695>,  <39.535915, 35.581200, 35.355999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692478, 35.290123, 35.130695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839061, 0.533557, -0.106266,
		0.377862, -0.431020, 0.819416,
		0.391403, -0.727694, -0.563263,
		39.809898, 35.071815, 34.961716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975052, 35.155643, 35.618343>,  <39.535915, 35.581200, 35.355999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975052, 35.155643, 35.618343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064388, 35.187077, 35.229717>,  <40.117989, 35.205936, 34.996540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064388, 35.187077, 35.229717>,  <39.975052, 35.155643, 35.618343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064388, 35.187077, 35.229717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768625, 0.598778, 0.225123,
		0.599446, -0.797049, 0.073322,
		0.223337, 0.078592, -0.971568,
		40.131390, 35.210651, 34.938248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691738, 35.052502, 35.513088>,  <39.975052, 35.155643, 35.618343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691738, 35.052502, 35.513088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531948, 35.263638, 35.213272>,  <40.436073, 35.390320, 35.033382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531948, 35.263638, 35.213272>,  <40.691738, 35.052502, 35.513088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531948, 35.263638, 35.213272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685228, 0.715064, 0.138370,
		0.609004, -0.458328, -0.647340,
		-0.399471, 0.527843, -0.749536,
		40.412106, 35.421989, 34.988411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259277, 35.286613, 35.106998>,  <40.691738, 35.052502, 35.513088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259277, 35.286613, 35.106998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969254, 35.546410, 35.015392>,  <40.795238, 35.702290, 34.960430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969254, 35.546410, 35.015392>,  <41.259277, 35.286613, 35.106998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969254, 35.546410, 35.015392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652164, 0.754386, 0.074727,
		0.221299, -0.095173, -0.970551,
		-0.725058, 0.649495, -0.229013,
		40.751736, 35.741257, 34.946690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974682, 35.010921, 35.089157>,  <41.259277, 35.286613, 35.106998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974682, 35.010921, 35.089157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348629, 35.125504, 35.005287>,  <42.572998, 35.194252, 34.954964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348629, 35.125504, 35.005287>,  <41.974682, 35.010921, 35.089157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348629, 35.125504, 35.005287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005037, 0.601294, 0.799012,
		0.354959, -0.745915, 0.563573,
		0.934868, 0.286455, -0.209678,
		42.629089, 35.211441, 34.942383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306828, 34.898193, 35.611328>,  <41.974682, 35.010921, 35.089157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306828, 34.898193, 35.611328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491009, 35.198822, 35.422386>,  <42.601517, 35.379200, 35.309021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491009, 35.198822, 35.422386>,  <42.306828, 34.898193, 35.611328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491009, 35.198822, 35.422386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041985, 0.549964, 0.834132,
		0.886692, -0.364245, 0.284786,
		0.460450, 0.751575, -0.472356,
		42.629143, 35.424294, 35.280678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843906, 35.168591, 36.134903>,  <42.306828, 34.898193, 35.611328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843906, 35.168591, 36.134903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792049, 35.434853, 35.840939>,  <42.760937, 35.594612, 35.664562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792049, 35.434853, 35.840939>,  <42.843906, 35.168591, 36.134903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792049, 35.434853, 35.840939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061039, 0.745115, 0.664137,
		0.989680, 0.041242, -0.137230,
		-0.129642, 0.665660, -0.734908,
		42.753159, 35.634552, 35.620464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152534, 35.839886, 36.488796>,  <42.843906, 35.168591, 36.134903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152534, 35.839886, 36.488796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947384, 35.977955, 36.174393>,  <42.824295, 36.060799, 35.985752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947384, 35.977955, 36.174393>,  <43.152534, 35.839886, 36.488796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947384, 35.977955, 36.174393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014577, 0.911968, 0.410003,
		0.858338, 0.221739, -0.462696,
		-0.512878, 0.345176, -0.786009,
		42.793522, 36.081509, 35.938591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492290, 36.554287, 36.136345>,  <43.152534, 35.839886, 36.488796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492290, 36.554287, 36.136345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110020, 36.519600, 36.023800>,  <42.880657, 36.498787, 35.956272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110020, 36.519600, 36.023800>,  <43.492290, 36.554287, 36.136345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110020, 36.519600, 36.023800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192532, 0.907065, 0.374386,
		0.222744, 0.411962, -0.883557,
		-0.955676, -0.086721, -0.281360,
		42.823318, 36.493584, 35.939392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244534, 37.331070, 36.025459>,  <43.492290, 36.554287, 36.136345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244534, 37.331070, 36.025459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898655, 37.130192, 36.029339>,  <42.691128, 37.009666, 36.031666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898655, 37.130192, 36.029339>,  <43.244534, 37.331070, 36.025459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898655, 37.130192, 36.029339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417489, 0.729314, 0.542037,
		-0.279283, 0.464649, -0.840299,
		-0.864699, -0.502197, 0.009700,
		42.639244, 36.979534, 36.032249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695660, 37.742752, 35.726601>,  <43.244534, 37.331070, 36.025459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695660, 37.742752, 35.726601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567886, 37.488152, 36.007408>,  <42.491222, 37.335392, 36.175892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567886, 37.488152, 36.007408>,  <42.695660, 37.742752, 35.726601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567886, 37.488152, 36.007408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470750, 0.749541, 0.465385,
		-0.822410, -0.181816, -0.539060,
		-0.319433, -0.636499, 0.702020,
		42.472057, 37.297203, 36.218014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014374, 38.011604, 36.021152>,  <42.695660, 37.742752, 35.726601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014374, 38.011604, 36.021152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096542, 37.723190, 36.285851>,  <42.145844, 37.550140, 36.444668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096542, 37.723190, 36.285851>,  <42.014374, 38.011604, 36.021152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096542, 37.723190, 36.285851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512040, 0.497050, 0.700540,
		-0.834036, -0.482747, -0.267094,
		0.205424, -0.721039, 0.661743,
		42.158169, 37.506878, 36.484375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363926, 37.875488, 36.336754>,  <42.014374, 38.011604, 36.021152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363926, 37.875488, 36.336754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648613, 37.736626, 36.581028>,  <41.819427, 37.653309, 36.727592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648613, 37.736626, 36.581028>,  <41.363926, 37.875488, 36.336754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648613, 37.736626, 36.581028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363894, 0.561403, 0.743241,
		-0.600861, -0.751205, 0.273235,
		0.711721, -0.347156, 0.610684,
		41.862129, 37.632481, 36.764233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040981, 37.768085, 36.913288>,  <41.363926, 37.875488, 36.336754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040981, 37.768085, 36.913288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426197, 37.809143, 37.012901>,  <41.657326, 37.833778, 37.072670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426197, 37.809143, 37.012901>,  <41.040981, 37.768085, 36.913288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426197, 37.809143, 37.012901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238280, 0.755761, 0.609957,
		-0.125602, -0.646753, 0.752286,
		0.963040, 0.102643, 0.249033,
		41.715111, 37.839935, 37.087612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013714, 38.051426, 37.498360>,  <41.040981, 37.768085, 36.913288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013714, 38.051426, 37.498360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406464, 38.117580, 37.461319>,  <41.642113, 38.157272, 37.439095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406464, 38.117580, 37.461319>,  <41.013714, 38.051426, 37.498360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406464, 38.117580, 37.461319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112181, 0.900844, 0.419399,
		0.152783, -0.401408, 0.903067,
		0.981872, 0.165384, -0.092603,
		41.701027, 38.167194, 37.433537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284084, 38.393463, 38.196255>,  <41.013714, 38.051426, 37.498360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284084, 38.393463, 38.196255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531803, 38.489964, 37.897388>,  <41.680435, 38.547863, 37.718067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531803, 38.489964, 37.897388>,  <41.284084, 38.393463, 38.196255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531803, 38.489964, 37.897388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055937, 0.935647, 0.348475,
		0.783158, -0.257606, 0.565953,
		0.619302, 0.241253, -0.747170,
		41.717594, 38.562340, 37.673237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794071, 38.818130, 38.581192>,  <41.284084, 38.393463, 38.196255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794071, 38.818130, 38.581192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832619, 38.903088, 38.192223>,  <41.855747, 38.954060, 37.958843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832619, 38.903088, 38.192223>,  <41.794071, 38.818130, 38.581192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832619, 38.903088, 38.192223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072586, 0.972868, 0.219681,
		0.992695, -0.091756, 0.078340,
		0.096371, 0.212390, -0.972421,
		41.861530, 38.966805, 37.900497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386364, 39.357101, 38.558887>,  <41.794071, 38.818130, 38.581192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386364, 39.357101, 38.558887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170883, 39.374413, 38.222332>,  <42.041595, 39.384800, 38.020401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170883, 39.374413, 38.222332>,  <42.386364, 39.357101, 38.558887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170883, 39.374413, 38.222332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131027, 0.990832, -0.032922,
		0.832247, -0.127979, -0.539431,
		-0.538699, 0.043281, -0.841386,
		42.009274, 39.387398, 37.969917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840038, 39.675465, 38.139160>,  <42.386364, 39.357101, 38.558887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840038, 39.675465, 38.139160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468243, 39.741585, 38.007263>,  <42.245167, 39.781258, 37.928123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468243, 39.741585, 38.007263>,  <42.840038, 39.675465, 38.139160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468243, 39.741585, 38.007263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104258, 0.975243, 0.195014,
		0.353819, 0.146884, -0.923708,
		-0.929485, 0.165304, -0.329746,
		42.189396, 39.791176, 37.908340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792248, 40.283791, 37.625149>,  <42.840038, 39.675465, 38.139160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792248, 40.283791, 37.625149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429989, 40.254524, 37.792213>,  <42.212631, 40.236965, 37.892452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429989, 40.254524, 37.792213>,  <42.792248, 40.283791, 37.625149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429989, 40.254524, 37.792213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073275, 0.997187, 0.015789,
		-0.417645, -0.016305, -0.908464,
		-0.905651, -0.073162, 0.417665,
		42.158295, 40.232574, 37.917511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564217, 40.892288, 37.535137>,  <42.792248, 40.283791, 37.625149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564217, 40.892288, 37.535137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253494, 40.768890, 37.754738>,  <42.067062, 40.694851, 37.886497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253494, 40.768890, 37.754738>,  <42.564217, 40.892288, 37.535137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253494, 40.768890, 37.754738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235417, 0.950842, 0.201192,
		-0.584083, 0.027042, -0.811243,
		-0.776804, -0.308494, 0.549005,
		42.020454, 40.676342, 37.919441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951561, 41.268467, 37.308750>,  <42.564217, 40.892288, 37.535137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951561, 41.268467, 37.308750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890141, 41.150452, 37.685978>,  <41.853291, 41.079643, 37.912315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890141, 41.150452, 37.685978>,  <41.951561, 41.268467, 37.308750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890141, 41.150452, 37.685978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390156, 0.894943, 0.216460,
		-0.907856, -0.334706, -0.252529,
		-0.153548, -0.295040, 0.943066,
		41.844074, 41.061939, 37.968899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217674, 41.545910, 37.535000>,  <41.951561, 41.268467, 37.308750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217674, 41.545910, 37.535000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430748, 41.454647, 37.860992>,  <41.558594, 41.399891, 38.056587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430748, 41.454647, 37.860992>,  <41.217674, 41.545910, 37.535000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430748, 41.454647, 37.860992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298192, 0.850621, 0.433041,
		-0.792040, -0.473695, 0.385079,
		0.532686, -0.228159, 0.814978,
		41.590553, 41.386200, 38.105484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848053, 41.885597, 38.067142>,  <41.217674, 41.545910, 37.535000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848053, 41.885597, 38.067142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220825, 41.814350, 38.193493>,  <41.444489, 41.771603, 38.269302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220825, 41.814350, 38.193493>,  <40.848053, 41.885597, 38.067142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220825, 41.814350, 38.193493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005058, 0.864591, 0.502450,
		-0.362595, -0.469848, 0.804840,
		0.931933, -0.178115, 0.315873,
		41.500404, 41.760914, 38.288254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836975, 42.127892, 38.836285>,  <40.848053, 41.885597, 38.067142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836975, 42.127892, 38.836285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206287, 42.145313, 38.683624>,  <41.427876, 42.155766, 38.592030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206287, 42.145313, 38.683624>,  <40.836975, 42.127892, 38.836285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206287, 42.145313, 38.683624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145992, 0.879211, 0.453513,
		0.355300, -0.474438, 0.805401,
		0.923281, 0.043551, -0.381648,
		41.483273, 42.158379, 38.569130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243149, 42.472790, 39.373154>,  <40.836975, 42.127892, 38.836285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243149, 42.472790, 39.373154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429413, 42.532516, 39.024242>,  <41.541172, 42.568352, 38.814896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429413, 42.532516, 39.024242>,  <41.243149, 42.472790, 39.373154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429413, 42.532516, 39.024242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211854, 0.938193, 0.273701,
		0.859230, -0.312248, 0.405248,
		0.465663, 0.149319, -0.872274,
		41.569111, 42.577312, 38.762562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949261, 42.581783, 39.442333>,  <41.243149, 42.472790, 39.373154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949261, 42.581783, 39.442333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785034, 42.774635, 39.132755>,  <41.686497, 42.890347, 38.947010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785034, 42.774635, 39.132755>,  <41.949261, 42.581783, 39.442333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785034, 42.774635, 39.132755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332176, 0.869536, 0.365467,
		0.849172, -0.107036, -0.517155,
		-0.410566, 0.482131, -0.773941,
		41.661865, 42.919273, 38.900574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466370, 42.993084, 39.146133>,  <41.949261, 42.581783, 39.442333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466370, 42.993084, 39.146133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142231, 43.160789, 38.982403>,  <41.947746, 43.261414, 38.884163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142231, 43.160789, 38.982403>,  <42.466370, 42.993084, 39.146133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142231, 43.160789, 38.982403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366215, 0.907721, 0.204766,
		0.457409, 0.016029, -0.889112,
		-0.810347, 0.419269, -0.409330,
		41.899128, 43.286572, 38.859604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875931, 42.736992, 38.527912>,  <42.466370, 42.993084, 39.146133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875931, 42.736992, 38.527912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990467, 42.789005, 38.148209>,  <43.059189, 42.820213, 37.920387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990467, 42.789005, 38.148209>,  <42.875931, 42.736992, 38.527912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990467, 42.789005, 38.148209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514166, 0.856861, -0.037719,
		0.808481, 0.498878, 0.312217,
		0.286344, 0.130036, -0.949262,
		43.076370, 42.828014, 37.863430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056297, 43.505898, 38.441383>,  <42.875931, 42.736992, 38.527912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056297, 43.505898, 38.441383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884068, 43.363804, 38.109501>,  <42.780731, 43.278545, 37.910370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884068, 43.363804, 38.109501>,  <43.056297, 43.505898, 38.441383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884068, 43.363804, 38.109501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352605, 0.912436, -0.207676,
		0.830830, 0.203140, -0.518128,
		-0.430571, -0.355238, -0.829707,
		42.754898, 43.257233, 37.860588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142208, 44.161228, 38.252522>,  <43.056297, 43.505898, 38.441383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142208, 44.161228, 38.252522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882019, 43.949406, 38.034729>,  <42.725906, 43.822311, 37.904053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882019, 43.949406, 38.034729>,  <43.142208, 44.161228, 38.252522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882019, 43.949406, 38.034729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336408, 0.843585, -0.418563,
		0.680966, -0.089096, -0.726875,
		-0.650473, -0.529553, -0.544480,
		42.686878, 43.790539, 37.871384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277470, 44.546825, 37.679985>,  <43.142208, 44.161228, 38.252522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277470, 44.546825, 37.679985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.667233, 44.576527, 37.764851>,  <43.901093, 44.594345, 37.815769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.667233, 44.576527, 37.764851>,  <43.277470, 44.546825, 37.679985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.667233, 44.576527, 37.764851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103392, -0.986142, -0.129744,
		0.199589, 0.148360, -0.968583,
		0.974410, 0.074249, 0.212162,
		43.959557, 44.598801, 37.828499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.537403, 44.053619, 37.260284>,  <43.277470, 44.546825, 37.679985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.537403, 44.053619, 37.260284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813015, 44.153442, 37.532448>,  <43.978382, 44.213337, 37.695747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813015, 44.153442, 37.532448>,  <43.537403, 44.053619, 37.260284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813015, 44.153442, 37.532448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271961, -0.959268, 0.076433,
		0.671769, 0.132380, -0.728836,
		0.689031, 0.249560, 0.680409,
		44.019726, 44.228310, 37.736572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103497, 43.872696, 36.958866>,  <43.537403, 44.053619, 37.260284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103497, 43.872696, 36.958866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130222, 43.871891, 37.357971>,  <44.146255, 43.871407, 37.597435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130222, 43.871891, 37.357971>,  <44.103497, 43.872696, 36.958866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130222, 43.871891, 37.357971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297954, -0.954329, -0.021878,
		0.952239, 0.298749, -0.063159,
		0.066811, -0.002014, 0.997764,
		44.150265, 43.871288, 37.657299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.779221, 43.640171, 37.298115>,  <44.103497, 43.872696, 36.958866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.779221, 43.640171, 37.298115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476414, 43.553204, 37.544579>,  <44.294731, 43.501022, 37.692455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476414, 43.553204, 37.544579>,  <44.779221, 43.640171, 37.298115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476414, 43.553204, 37.544579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171845, -0.976065, -0.133290,
		0.630391, 0.004981, 0.776262,
		-0.757019, -0.217422, 0.616158,
		44.249310, 43.487976, 37.729427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911251, 43.223076, 37.887253>,  <44.779221, 43.640171, 37.298115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.911251, 43.223076, 37.887253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.524616, 43.168236, 37.800610>,  <44.292637, 43.135330, 37.748623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.524616, 43.168236, 37.800610>,  <44.911251, 43.223076, 37.887253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.524616, 43.168236, 37.800610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166955, -0.977872, -0.126061,
		-0.194530, -0.158013, 0.968086,
		-0.966584, -0.137104, -0.216606,
		44.234642, 43.127106, 37.735626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659492, 42.587391, 38.295113>,  <44.911251, 43.223076, 37.887253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659492, 42.587391, 38.295113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408802, 42.634159, 37.986946>,  <44.258389, 42.662220, 37.802044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408802, 42.634159, 37.986946>,  <44.659492, 42.587391, 38.295113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408802, 42.634159, 37.986946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163774, -0.946833, -0.276920,
		-0.761835, -0.299728, 0.574257,
		-0.626726, 0.116919, -0.770418,
		44.220783, 42.669235, 37.755821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.155960, 41.998692, 38.266914>,  <44.659492, 42.587391, 38.295113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.155960, 41.998692, 38.266914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.187729, 42.165264, 37.904636>,  <44.206791, 42.265209, 37.687271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.187729, 42.165264, 37.904636>,  <44.155960, 41.998692, 38.266914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187729, 42.165264, 37.904636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253662, -0.887095, -0.385639,
		-0.964027, -0.199112, -0.176086,
		0.079420, 0.416433, -0.905691,
		44.211555, 42.290195, 37.632931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708389, 41.691120, 37.851524>,  <44.155960, 41.998692, 38.266914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.708389, 41.691120, 37.851524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985153, 41.805439, 37.586319>,  <44.151211, 41.874031, 37.427197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985153, 41.805439, 37.586319>,  <43.708389, 41.691120, 37.851524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985153, 41.805439, 37.586319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066967, -0.888954, -0.453074,
		-0.718871, 0.357887, -0.595938,
		0.691911, 0.285794, -0.663009,
		44.192726, 41.891178, 37.387417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.441174, 41.363888, 37.214046>,  <43.708389, 41.691120, 37.851524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.441174, 41.363888, 37.214046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813950, 41.474987, 37.120800>,  <44.037617, 41.541649, 37.064850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813950, 41.474987, 37.120800>,  <43.441174, 41.363888, 37.214046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813950, 41.474987, 37.120800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067323, -0.764236, -0.641413,
		-0.356310, 0.582064, -0.730920,
		0.931939, 0.277750, -0.233119,
		44.093533, 41.558311, 37.050865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556202, 41.110413, 36.464081>,  <43.441174, 41.363888, 37.214046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556202, 41.110413, 36.464081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.919739, 41.213806, 36.595043>,  <44.137859, 41.275841, 36.673622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.919739, 41.213806, 36.595043>,  <43.556202, 41.110413, 36.464081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.919739, 41.213806, 36.595043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402393, -0.750132, -0.524768,
		0.109955, 0.608677, -0.785762,
		0.908840, 0.258484, 0.327408,
		44.192390, 41.291351, 36.693264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006611, 41.374832, 35.882839>,  <43.556202, 41.110413, 36.464081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006611, 41.374832, 35.882839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.253674, 41.234142, 36.164204>,  <44.401909, 41.149727, 36.333023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.253674, 41.234142, 36.164204>,  <44.006611, 41.374832, 35.882839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.253674, 41.234142, 36.164204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451051, -0.574266, -0.683207,
		0.644248, 0.739262, -0.196052,
		0.617655, -0.351726, 0.703414,
		44.438969, 41.128624, 36.375229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.776909, 41.221966, 35.625820>,  <44.006611, 41.374832, 35.882839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.776909, 41.221966, 35.625820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720036, 41.022358, 35.967758>,  <44.685913, 40.902592, 36.172920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720036, 41.022358, 35.967758>,  <44.776909, 41.221966, 35.625820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720036, 41.022358, 35.967758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502834, -0.780302, -0.371869,
		0.852609, 0.376973, 0.361870,
		-0.142183, -0.499019, 0.854847,
		44.677380, 40.872654, 36.224213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.431057, 40.850998, 35.725594>,  <44.776909, 41.221966, 35.625820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.431057, 40.850998, 35.725594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141239, 40.667831, 35.931644>,  <44.967350, 40.557930, 36.055275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141239, 40.667831, 35.931644>,  <45.431057, 40.850998, 35.725594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141239, 40.667831, 35.931644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361597, -0.888820, -0.281508,
		0.586758, -0.017698, 0.809569,
		-0.724543, -0.457915, 0.515123,
		44.923878, 40.530457, 36.086182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.768215, 40.230141, 35.856594>,  <45.431057, 40.850998, 35.725594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.768215, 40.230141, 35.856594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400719, 40.129864, 35.978622>,  <45.180222, 40.069698, 36.051838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400719, 40.129864, 35.978622>,  <45.768215, 40.230141, 35.856594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400719, 40.129864, 35.978622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253848, -0.966780, -0.029970,
		0.302448, 0.049906, 0.951858,
		-0.918742, -0.250692, 0.305069,
		45.125095, 40.054657, 36.070145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.715149, 39.758587, 36.427650>,  <45.768215, 40.230141, 35.856594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.715149, 39.758587, 36.427650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358799, 39.703793, 36.254414>,  <45.144989, 39.670914, 36.150471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358799, 39.703793, 36.254414>,  <45.715149, 39.758587, 36.427650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358799, 39.703793, 36.254414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174811, -0.983405, -0.048530,
		-0.419260, -0.118944, 0.900041,
		-0.890877, -0.136991, -0.433096,
		45.091537, 39.662697, 36.124485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415062, 39.169075, 36.811386>,  <45.715149, 39.758587, 36.427650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.415062, 39.169075, 36.811386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208279, 39.164700, 36.469009>,  <45.084209, 39.162075, 36.263584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208279, 39.164700, 36.469009>,  <45.415062, 39.169075, 36.811386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208279, 39.164700, 36.469009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027394, -0.999195, 0.029317,
		-0.855573, 0.038603, 0.516241,
		-0.516957, -0.010941, -0.855942,
		45.053192, 39.161419, 36.212227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.844269, 38.660854, 36.923546>,  <45.415062, 39.169075, 36.811386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.844269, 38.660854, 36.923546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.920258, 38.706177, 36.533455>,  <44.965851, 38.733372, 36.299400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.920258, 38.706177, 36.533455>,  <44.844269, 38.660854, 36.923546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.920258, 38.706177, 36.533455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129630, -0.981727, -0.139314,
		-0.973194, 0.152885, -0.171812,
		0.189972, 0.113308, -0.975229,
		44.977249, 38.740170, 36.240887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372082, 38.304085, 36.599060>,  <44.844269, 38.660854, 36.923546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372082, 38.304085, 36.599060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612667, 38.355827, 36.283714>,  <44.757019, 38.386871, 36.094509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612667, 38.355827, 36.283714>,  <44.372082, 38.304085, 36.599060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.612667, 38.355827, 36.283714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221279, -0.921224, -0.319971,
		-0.767647, 0.366898, -0.525456,
		0.601460, 0.129353, -0.788362,
		44.793106, 38.394634, 36.047207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.982811, 37.955364, 36.013035>,  <44.372082, 38.304085, 36.599060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.982811, 37.955364, 36.013035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374249, 37.976849, 35.933575>,  <44.609112, 37.989738, 35.885899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374249, 37.976849, 35.933575>,  <43.982811, 37.955364, 36.013035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374249, 37.976849, 35.933575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012574, -0.947931, -0.318228,
		-0.205401, 0.313915, -0.926967,
		0.978597, 0.053708, -0.198653,
		44.667828, 37.992962, 35.873978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041592, 37.537300, 35.307941>,  <43.982811, 37.955364, 36.013035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041592, 37.537300, 35.307941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.411743, 37.576591, 35.454376>,  <44.633835, 37.600166, 35.542236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.411743, 37.576591, 35.454376>,  <44.041592, 37.537300, 35.307941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.411743, 37.576591, 35.454376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205242, -0.941844, -0.266094,
		0.318657, 0.321375, -0.891726,
		0.925383, 0.098227, 0.366085,
		44.689358, 37.606060, 35.564201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.539639, 37.313843, 34.788071>,  <44.041592, 37.537300, 35.307941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.539639, 37.313843, 34.788071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.710896, 37.297512, 35.149185>,  <44.813648, 37.287712, 35.365856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.710896, 37.297512, 35.149185>,  <44.539639, 37.313843, 34.788071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.710896, 37.297512, 35.149185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386854, -0.894542, -0.223916,
		0.816726, 0.445115, -0.367193,
		0.428138, -0.040828, 0.902790,
		44.839336, 37.285263, 35.420021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138760, 37.030750, 34.597965>,  <44.539639, 37.313843, 34.788071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.138760, 37.030750, 34.597965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.123775, 36.968666, 34.992832>,  <45.114784, 36.931416, 35.229752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.123775, 36.968666, 34.992832>,  <45.138760, 37.030750, 34.597965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.123775, 36.968666, 34.992832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434162, -0.892285, -0.123817,
		0.900056, 0.423954, 0.100813,
		-0.037462, -0.155211, 0.987171,
		45.112537, 36.922104, 35.288982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.800579, 36.805706, 34.830963>,  <45.138760, 37.030750, 34.597965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.800579, 36.805706, 34.830963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535934, 36.678680, 35.102673>,  <45.377148, 36.602463, 35.265697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535934, 36.678680, 35.102673>,  <45.800579, 36.805706, 34.830963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.535934, 36.678680, 35.102673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399218, -0.916009, -0.039405,
		0.634737, 0.245108, 0.732824,
		-0.661615, -0.317569, 0.679276,
		45.337448, 36.583408, 35.306454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243652, 36.413639, 35.137886>,  <45.800579, 36.805706, 34.830963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243652, 36.413639, 35.137886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.880943, 36.278748, 35.239117>,  <45.663319, 36.197815, 35.299854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.880943, 36.278748, 35.239117>,  <46.243652, 36.413639, 35.137886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.880943, 36.278748, 35.239117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294286, -0.936052, -0.192878,
		0.301934, -0.100420, 0.948025,
		-0.906770, -0.337227, 0.253074,
		45.608913, 36.177578, 35.315041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.354836, 35.893093, 35.655518>,  <46.243652, 36.413639, 35.137886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.354836, 35.893093, 35.655518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.006371, 35.857136, 35.462437>,  <45.797291, 35.835560, 35.346588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.006371, 35.857136, 35.462437>,  <46.354836, 35.893093, 35.655518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.006371, 35.857136, 35.462437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283508, -0.894747, -0.345038,
		-0.400876, -0.437433, 0.804954,
		-0.871161, -0.089894, -0.482698,
		45.745022, 35.830166, 35.317627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.302048, 35.290627, 35.682823>,  <46.354836, 35.893093, 35.655518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.302048, 35.290627, 35.682823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.002151, 35.360809, 35.427605>,  <45.822212, 35.402920, 35.274475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.002151, 35.360809, 35.427605>,  <46.302048, 35.290627, 35.682823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.002151, 35.360809, 35.427605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164102, -0.884791, -0.436138,
		-0.641058, -0.431696, 0.634574,
		-0.749743, 0.175455, -0.638044,
		45.777229, 35.413445, 35.236191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.654385, 35.246727, 35.013607>,  <46.302048, 35.290627, 35.682823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.654385, 35.246727, 35.013607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934315, 35.218269, 34.729301>,  <47.102272, 35.201195, 34.558720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934315, 35.218269, 34.729301>,  <46.654385, 35.246727, 35.013607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.934315, 35.218269, 34.729301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649846, -0.349696, 0.674843,
		-0.296561, -0.934158, -0.198494,
		0.699823, -0.071141, -0.710765,
		47.144260, 35.196926, 34.516071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.123363, 34.619743, 35.008667>,  <46.654385, 35.246727, 35.013607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.123363, 34.619743, 35.008667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.358234, 34.868580, 34.801510>,  <47.499157, 35.017883, 34.677216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.358234, 34.868580, 34.801510>,  <47.123363, 34.619743, 35.008667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.358234, 34.868580, 34.801510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800972, -0.354142, 0.482729,
		0.116894, -0.698270, -0.706226,
		0.587180, 0.622095, -0.517897,
		47.534389, 35.055210, 34.646141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.757710, 34.311520, 35.063572>,  <47.123363, 34.619743, 35.008667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.757710, 34.311520, 35.063572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.842293, 34.689236, 34.962704>,  <47.893044, 34.915867, 34.902184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.842293, 34.689236, 34.962704>,  <47.757710, 34.311520, 35.063572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.842293, 34.689236, 34.962704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894120, -0.082690, 0.440126,
		0.394756, -0.318543, -0.861799,
		0.211462, 0.944295, -0.252174,
		47.905731, 34.972523, 34.887051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.560287, 41.356522, 44.048061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.194664, 41.249191, 44.169720>,  <35.975292, 41.184795, 44.242714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.194664, 41.249191, 44.169720>,  <36.560287, 41.356522, 44.048061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194664, 41.249191, 44.169720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101256, -0.575170, -0.811743,
		0.392743, -0.772776, 0.498568,
		-0.914057, -0.268324, 0.304142,
		35.920448, 41.168694, 44.260963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509232, 40.591248, 44.001823>,  <36.560287, 41.356522, 44.048061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509232, 40.591248, 44.001823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131157, 40.720837, 44.018181>,  <35.904312, 40.798592, 44.027996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131157, 40.720837, 44.018181>,  <36.509232, 40.591248, 44.001823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131157, 40.720837, 44.018181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190889, -0.446570, -0.874149,
		-0.264935, -0.834038, 0.483932,
		-0.945183, 0.323970, 0.040897,
		35.847603, 40.818027, 44.030449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170731, 40.046906, 43.692337>,  <36.509232, 40.591248, 44.001823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170731, 40.046906, 43.692337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.882858, 40.324551, 43.698914>,  <35.710136, 40.491138, 43.702862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.882858, 40.324551, 43.698914>,  <36.170731, 40.046906, 43.692337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882858, 40.324551, 43.698914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406308, -0.401830, -0.820638,
		-0.563011, -0.597274, 0.571212,
		-0.719675, 0.694115, 0.016443,
		35.666954, 40.532784, 43.703846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541664, 39.692413, 43.685619>,  <36.170731, 40.046906, 43.692337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541664, 39.692413, 43.685619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.453461, 40.049915, 43.529377>,  <35.400539, 40.264416, 43.435631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.453461, 40.049915, 43.529377>,  <35.541664, 39.692413, 43.685619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453461, 40.049915, 43.529377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574711, -0.442624, -0.688325,
		-0.788087, 0.072704, 0.611255,
		-0.220512, 0.893755, -0.390610,
		35.387306, 40.318043, 43.412193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848007, 39.784397, 43.671627>,  <35.541664, 39.692413, 43.685619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848007, 39.784397, 43.671627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.965027, 40.066158, 43.412945>,  <35.035236, 40.235214, 43.257736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.965027, 40.066158, 43.412945>,  <34.848007, 39.784397, 43.671627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965027, 40.066158, 43.412945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770118, -0.227353, -0.596011,
		-0.566864, 0.672402, 0.475964,
		0.292547, 0.704405, -0.646707,
		35.052792, 40.277481, 43.218933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288155, 39.929264, 43.369080>,  <34.848007, 39.784397, 43.671627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288155, 39.929264, 43.369080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.526642, 40.104080, 43.099705>,  <34.669735, 40.208969, 42.938080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.526642, 40.104080, 43.099705>,  <34.288155, 39.929264, 43.369080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526642, 40.104080, 43.099705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594388, -0.323567, -0.736212,
		-0.539657, 0.839226, 0.066856,
		0.596216, 0.437040, -0.673441,
		34.705505, 40.235191, 42.897671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827671, 40.256687, 42.985207>,  <34.288155, 39.929264, 43.369080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827671, 40.256687, 42.985207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.171356, 40.200996, 42.788284>,  <34.377567, 40.167580, 42.670132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.171356, 40.200996, 42.788284>,  <33.827671, 40.256687, 42.985207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171356, 40.200996, 42.788284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506736, -0.364196, -0.781396,
		-0.070504, 0.920856, -0.383474,
		0.859213, -0.139229, -0.492308,
		34.429119, 40.159229, 42.640591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750114, 40.479973, 42.287033>,  <33.827671, 40.256687, 42.985207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750114, 40.479973, 42.287033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.082909, 40.260132, 42.256756>,  <34.282585, 40.128227, 42.238590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.082909, 40.260132, 42.256756>,  <33.750114, 40.479973, 42.287033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082909, 40.260132, 42.256756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306864, -0.342225, -0.888097,
		0.462201, 0.762113, -0.453381,
		0.831988, -0.549606, -0.075689,
		34.332504, 40.095249, 42.234051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185520, 40.543190, 41.619022>,  <33.750114, 40.479973, 42.287033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185520, 40.543190, 41.619022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.305946, 40.195473, 41.775833>,  <34.378201, 39.986843, 41.869919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.305946, 40.195473, 41.775833>,  <34.185520, 40.543190, 41.619022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305946, 40.195473, 41.775833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203843, -0.460269, -0.864061,
		0.931562, 0.180226, -0.315770,
		0.301065, -0.869294, 0.392031,
		34.396267, 39.934685, 41.893444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557957, 40.256866, 41.096130>,  <34.185520, 40.543190, 41.619022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557957, 40.256866, 41.096130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.444839, 39.961067, 41.340481>,  <34.376968, 39.783588, 41.487091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.444839, 39.961067, 41.340481>,  <34.557957, 40.256866, 41.096130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444839, 39.961067, 41.340481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319249, -0.527998, -0.786955,
		0.904495, -0.417564, -0.086772,
		-0.282788, -0.739499, 0.610879,
		34.360004, 39.739216, 41.523743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879944, 39.627956, 40.913940>,  <34.557957, 40.256866, 41.096130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879944, 39.627956, 40.913940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.584972, 39.476200, 41.137459>,  <34.407990, 39.385147, 41.271572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.584972, 39.476200, 41.137459>,  <34.879944, 39.627956, 40.913940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584972, 39.476200, 41.137459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062562, -0.785409, -0.615807,
		0.672518, -0.489076, 0.555450,
		-0.737432, -0.379391, 0.558799,
		34.363743, 39.362381, 41.305099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166027, 38.960209, 41.075684>,  <34.879944, 39.627956, 40.913940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166027, 38.960209, 41.075684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.767578, 38.991104, 41.092518>,  <34.528507, 39.009640, 41.102619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.767578, 38.991104, 41.092518>,  <35.166027, 38.960209, 41.075684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767578, 38.991104, 41.092518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082607, -0.657058, -0.749300,
		-0.030217, -0.749873, 0.660891,
		-0.996124, 0.077236, 0.042091,
		34.468742, 39.014275, 41.105145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914207, 38.323189, 41.179146>,  <35.166027, 38.960209, 41.075684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914207, 38.323189, 41.179146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.605209, 38.525097, 41.025024>,  <34.419811, 38.646240, 40.932552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.605209, 38.525097, 41.025024>,  <34.914207, 38.323189, 41.179146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605209, 38.525097, 41.025024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077825, -0.677441, -0.731448,
		-0.630237, -0.535052, 0.562602,
		-0.772493, 0.504770, -0.385308,
		34.373463, 38.676529, 40.909431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495186, 37.766552, 40.778763>,  <34.914207, 38.323189, 41.179146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495186, 37.766552, 40.778763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355251, 38.111816, 40.633121>,  <34.271290, 38.318974, 40.545734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355251, 38.111816, 40.633121>,  <34.495186, 37.766552, 40.778763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355251, 38.111816, 40.633121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212596, -0.451673, -0.866484,
		-0.912369, -0.225720, 0.341515,
		-0.349836, 0.863158, -0.364106,
		34.250301, 38.370766, 40.523891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887260, 37.561329, 40.347488>,  <34.495186, 37.766552, 40.778763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887260, 37.561329, 40.347488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.035561, 37.919258, 40.248016>,  <34.124542, 38.134014, 40.188332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.035561, 37.919258, 40.248016>,  <33.887260, 37.561329, 40.347488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035561, 37.919258, 40.248016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138916, -0.211322, -0.967495,
		-0.918285, 0.393244, 0.045957,
		0.370750, 0.894820, -0.248681,
		34.146786, 38.187702, 40.173412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402439, 37.844147, 39.983017>,  <33.887260, 37.561329, 40.347488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402439, 37.844147, 39.983017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.719749, 38.066299, 39.883209>,  <33.910137, 38.199593, 39.823326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.719749, 38.066299, 39.883209>,  <33.402439, 37.844147, 39.983017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719749, 38.066299, 39.883209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087957, -0.300977, -0.949566,
		-0.602472, 0.775218, -0.189909,
		0.793279, 0.555383, -0.249516,
		33.957733, 38.232914, 39.808353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339783, 38.257584, 39.307060>,  <33.402439, 37.844147, 39.983017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339783, 38.257584, 39.307060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.738098, 38.264603, 39.343037>,  <33.977089, 38.268814, 39.364624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.738098, 38.264603, 39.343037>,  <33.339783, 38.257584, 39.307060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738098, 38.264603, 39.343037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091453, -0.253212, -0.963078,
		0.005874, 0.967252, -0.253752,
		0.995792, 0.017550, 0.089945,
		34.036835, 38.269867, 39.370022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591499, 38.662933, 38.683086>,  <33.339783, 38.257584, 39.307060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591499, 38.662933, 38.683086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.873093, 38.418365, 38.827629>,  <34.042049, 38.271626, 38.914356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.873093, 38.418365, 38.827629>,  <33.591499, 38.662933, 38.683086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873093, 38.418365, 38.827629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097294, -0.420978, -0.901838,
		0.703523, 0.670035, -0.236873,
		0.703981, -0.611417, 0.361358,
		34.084286, 38.234940, 38.936035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921970, 38.547699, 38.142105>,  <33.591499, 38.662933, 38.683086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921970, 38.547699, 38.142105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.044315, 38.245365, 38.373676>,  <34.117722, 38.063965, 38.512619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.044315, 38.245365, 38.373676>,  <33.921970, 38.547699, 38.142105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044315, 38.245365, 38.373676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120328, -0.572505, -0.811023,
		0.944441, 0.317725, -0.084161,
		0.305865, -0.755836, 0.578928,
		34.136074, 38.018616, 38.547356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444340, 38.174370, 37.753338>,  <33.921970, 38.547699, 38.142105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444340, 38.174370, 37.753338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.340412, 37.906361, 38.031494>,  <34.278057, 37.745556, 38.198387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.340412, 37.906361, 38.031494>,  <34.444340, 38.174370, 37.753338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340412, 37.906361, 38.031494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020518, -0.723787, -0.689719,
		0.965440, -0.164934, 0.201800,
		-0.259818, -0.670022, 0.695388,
		34.262466, 37.705353, 38.240112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917263, 37.690800, 37.773277>,  <34.444340, 38.174370, 37.753338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917263, 37.690800, 37.773277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.603794, 37.507797, 37.941349>,  <34.415714, 37.397995, 38.042194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.603794, 37.507797, 37.941349>,  <34.917263, 37.690800, 37.773277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603794, 37.507797, 37.941349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000387, -0.676788, -0.736178,
		0.621177, -0.576758, 0.530556,
		-0.783670, -0.457502, 0.420181,
		34.368694, 37.370548, 38.067402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121078, 37.034805, 37.788078>,  <34.917263, 37.690800, 37.773277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121078, 37.034805, 37.788078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.722698, 37.065121, 37.768768>,  <34.483669, 37.083309, 37.757183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.722698, 37.065121, 37.768768>,  <35.121078, 37.034805, 37.788078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722698, 37.065121, 37.768768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039631, -0.852634, -0.521004,
		-0.080648, -0.516983, 0.852188,
		-0.995954, 0.075791, -0.048275,
		34.423912, 37.087856, 37.754284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510101, 36.961830, 37.252201>,  <35.121078, 37.034805, 37.788078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510101, 36.961830, 37.252201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.873253, 36.901047, 37.095909>,  <36.091145, 36.864578, 37.002132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.873253, 36.901047, 37.095909>,  <35.510101, 36.961830, 37.252201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873253, 36.901047, 37.095909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417304, 0.416967, 0.807463,
		0.040224, -0.896130, 0.441966,
		0.907876, -0.151955, -0.390730,
		36.145615, 36.855461, 36.978691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880077, 36.626293, 37.768147>,  <35.510101, 36.961830, 37.252201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880077, 36.626293, 37.768147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.139938, 36.823421, 37.536602>,  <36.295853, 36.941700, 37.397675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.139938, 36.823421, 37.536602>,  <35.880077, 36.626293, 37.768147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139938, 36.823421, 37.536602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325980, 0.507293, 0.797741,
		0.686799, -0.706949, 0.168911,
		0.649650, 0.492826, -0.578859,
		36.334835, 36.971268, 37.362946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443123, 36.576275, 38.112240>,  <35.880077, 36.626293, 37.768147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443123, 36.576275, 38.112240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.483997, 36.895878, 37.875210>,  <36.508522, 37.087639, 37.732990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.483997, 36.895878, 37.875210>,  <36.443123, 36.576275, 38.112240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483997, 36.895878, 37.875210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233696, 0.559743, 0.795031,
		0.966925, -0.219725, -0.129526,
		0.102187, 0.799005, -0.592578,
		36.514652, 37.135578, 37.697437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070526, 36.773514, 38.323959>,  <36.443123, 36.576275, 38.112240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070526, 36.773514, 38.323959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.924919, 37.100098, 38.144684>,  <36.837555, 37.296047, 38.037117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.924919, 37.100098, 38.144684>,  <37.070526, 36.773514, 38.323959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924919, 37.100098, 38.144684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496094, 0.577233, 0.648608,
		0.788276, 0.013761, -0.615167,
		-0.364020, 0.816464, -0.448192,
		36.815712, 37.345036, 38.010227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664585, 37.273685, 38.123318>,  <37.070526, 36.773514, 38.323959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664585, 37.273685, 38.123318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.345436, 37.514736, 38.129425>,  <37.153946, 37.659367, 38.133087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.345436, 37.514736, 38.129425>,  <37.664585, 37.273685, 38.123318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345436, 37.514736, 38.129425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532648, 0.692909, 0.485967,
		0.282280, 0.395872, -0.873844,
		-0.797875, 0.602630, 0.015266,
		37.106075, 37.695526, 38.134007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840870, 37.907696, 37.890305>,  <37.664585, 37.273685, 38.123318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840870, 37.907696, 37.890305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504951, 37.973602, 38.097225>,  <37.303402, 38.013145, 38.221378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504951, 37.973602, 38.097225>,  <37.840870, 37.907696, 37.890305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504951, 37.973602, 38.097225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446498, 0.751657, 0.485439,
		-0.308847, 0.638642, -0.704805,
		-0.839794, 0.164767, 0.517299,
		37.253014, 38.023033, 38.252415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872517, 38.611710, 38.020390>,  <37.840870, 37.907696, 37.890305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872517, 38.611710, 38.020390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.563660, 38.520363, 38.257587>,  <37.378345, 38.465553, 38.399906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.563660, 38.520363, 38.257587>,  <37.872517, 38.611710, 38.020390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563660, 38.520363, 38.257587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181599, 0.814967, 0.550319,
		-0.608944, 0.532613, -0.587801,
		-0.772145, -0.228369, 0.592992,
		37.332016, 38.451851, 38.435486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496372, 39.371845, 38.069714>,  <37.872517, 38.611710, 38.020390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496372, 39.371845, 38.069714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374481, 39.129650, 38.363792>,  <37.301346, 38.984333, 38.540241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374481, 39.129650, 38.363792>,  <37.496372, 39.371845, 38.069714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374481, 39.129650, 38.363792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148265, 0.732346, 0.664595,
		-0.940828, 0.311527, -0.133394,
		-0.304730, -0.605492, 0.735200,
		37.283062, 38.948002, 38.584351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999905, 39.690010, 38.432327>,  <37.496372, 39.371845, 38.069714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999905, 39.690010, 38.432327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.158863, 39.418243, 38.679054>,  <37.254238, 39.255184, 38.827091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.158863, 39.418243, 38.679054>,  <36.999905, 39.690010, 38.432327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158863, 39.418243, 38.679054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130419, 0.707167, 0.694914,
		-0.908332, -0.195711, 0.369634,
		0.397396, -0.679420, 0.616819,
		37.278080, 39.214417, 38.864101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927750, 39.997444, 39.092617>,  <36.999905, 39.690010, 38.432327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927750, 39.997444, 39.092617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.170654, 39.690903, 39.176468>,  <37.316395, 39.506977, 39.226776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.170654, 39.690903, 39.176468>,  <36.927750, 39.997444, 39.092617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170654, 39.690903, 39.176468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162340, 0.377959, 0.911478,
		-0.777743, -0.519472, 0.353928,
		0.607257, -0.766353, 0.209623,
		37.352833, 39.460999, 39.239353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687084, 39.750095, 39.879051>,  <36.927750, 39.997444, 39.092617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687084, 39.750095, 39.879051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.059490, 39.643532, 39.779263>,  <37.282932, 39.579594, 39.719387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.059490, 39.643532, 39.779263>,  <36.687084, 39.750095, 39.879051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059490, 39.643532, 39.779263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323045, 0.283381, 0.902960,
		-0.169860, -0.921261, 0.349894,
		0.931016, -0.266408, -0.249474,
		37.338795, 39.563610, 39.704422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930485, 39.359814, 40.427956>,  <36.687084, 39.750095, 39.879051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930485, 39.359814, 40.427956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.239521, 39.513515, 40.225784>,  <37.424942, 39.605736, 40.104481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.239521, 39.513515, 40.225784>,  <36.930485, 39.359814, 40.427956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239521, 39.513515, 40.225784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407003, 0.311250, 0.858762,
		0.487294, -0.869181, 0.084078,
		0.772589, 0.384250, -0.505429,
		37.471298, 39.628792, 40.074154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606777, 39.154995, 40.769463>,  <36.930485, 39.359814, 40.427956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606777, 39.154995, 40.769463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.650623, 39.502232, 40.575798>,  <37.676929, 39.710571, 40.459599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.650623, 39.502232, 40.575798>,  <37.606777, 39.154995, 40.769463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650623, 39.502232, 40.575798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382273, 0.412812, 0.826712,
		0.917525, -0.275699, -0.286597,
		0.109613, 0.868087, -0.484158,
		37.683506, 39.762657, 40.430550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415642, 39.330635, 40.764778>,  <37.606777, 39.154995, 40.769463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415642, 39.330635, 40.764778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.175983, 39.648411, 40.724991>,  <38.032188, 39.839077, 40.701118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.175983, 39.648411, 40.724991>,  <38.415642, 39.330635, 40.764778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175983, 39.648411, 40.724991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445463, 0.434000, 0.783075,
		0.665271, 0.424869, -0.613922,
		-0.599147, 0.794437, -0.099464,
		37.996239, 39.886742, 40.695152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884644, 39.782280, 40.903053>,  <38.415642, 39.330635, 40.764778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884644, 39.782280, 40.903053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.515842, 39.933144, 40.938061>,  <38.294563, 40.023663, 40.959064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.515842, 39.933144, 40.938061>,  <38.884644, 39.782280, 40.903053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515842, 39.933144, 40.938061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281062, 0.496507, 0.821271,
		0.266297, 0.781812, -0.563786,
		-0.922003, 0.377161, 0.087519,
		38.239243, 40.046291, 40.964317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048286, 40.541534, 41.015030>,  <38.884644, 39.782280, 40.903053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048286, 40.541534, 41.015030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.673882, 40.470383, 41.136509>,  <38.449238, 40.427692, 41.209396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.673882, 40.470383, 41.136509>,  <39.048286, 40.541534, 41.015030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673882, 40.470383, 41.136509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177021, 0.507876, 0.843046,
		-0.304203, 0.842865, -0.443891,
		-0.936015, -0.177879, 0.303702,
		38.393078, 40.417019, 41.227619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866127, 41.189949, 41.287651>,  <39.048286, 40.541534, 41.015030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866127, 41.189949, 41.287651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.607491, 40.925407, 41.439724>,  <38.452309, 40.766682, 41.530968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.607491, 40.925407, 41.439724>,  <38.866127, 41.189949, 41.287651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607491, 40.925407, 41.439724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072505, 0.549398, 0.832409,
		-0.759385, 0.510662, -0.403186,
		-0.646589, -0.661352, 0.380179,
		38.413513, 40.727001, 41.553776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233009, 41.511795, 41.571968>,  <38.866127, 41.189949, 41.287651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233009, 41.511795, 41.571968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.255993, 41.165749, 41.771278>,  <38.269783, 40.958122, 41.890865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.255993, 41.165749, 41.771278>,  <38.233009, 41.511795, 41.571968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255993, 41.165749, 41.771278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053496, 0.495711, 0.866838,
		-0.996913, -0.076465, -0.017796,
		0.057462, -0.865115, 0.498272,
		38.273232, 40.906216, 41.920761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.553177, 41.484589, 42.186283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783478, 41.168575, 42.270519>,  <37.921658, 40.978966, 42.321060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783478, 41.168575, 42.270519>,  <37.553177, 41.484589, 42.186283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783478, 41.168575, 42.270519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196286, 0.383585, 0.902405,
		-0.793711, -0.478230, 0.375925,
		0.575756, -0.790037, 0.210586,
		37.956203, 40.931564, 42.333694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227173, 41.286335, 42.836811>,  <37.553177, 41.484589, 42.186283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227173, 41.286335, 42.836811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.602211, 41.149986, 42.809349>,  <37.827236, 41.068176, 42.792873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.602211, 41.149986, 42.809349>,  <37.227173, 41.286335, 42.836811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602211, 41.149986, 42.809349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143835, 0.200455, 0.969087,
		-0.316572, -0.918491, 0.236975,
		0.937600, -0.340871, -0.068653,
		37.883492, 41.047726, 42.788754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271137, 40.848186, 43.424541>,  <37.227173, 41.286335, 42.836811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271137, 40.848186, 43.424541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.641811, 40.948864, 43.312904>,  <37.864216, 41.009270, 43.245922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.641811, 40.948864, 43.312904>,  <37.271137, 40.848186, 43.424541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641811, 40.948864, 43.312904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236385, 0.186981, 0.953499,
		0.292180, -0.949571, 0.113775,
		0.926689, 0.251699, -0.279096,
		37.919819, 41.024372, 43.229176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616135, 40.642818, 43.996513>,  <37.271137, 40.848186, 43.424541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616135, 40.642818, 43.996513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.863796, 40.900311, 43.816620>,  <38.012394, 41.054806, 43.708683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.863796, 40.900311, 43.816620>,  <37.616135, 40.642818, 43.996513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863796, 40.900311, 43.816620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408812, 0.224752, 0.884511,
		0.670466, -0.731504, -0.124009,
		0.619152, 0.643730, -0.449736,
		38.049541, 41.093430, 43.681698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242184, 40.436443, 44.229805>,  <37.616135, 40.642818, 43.996513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242184, 40.436443, 44.229805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.268898, 40.818283, 44.113686>,  <38.284927, 41.047386, 44.044014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.268898, 40.818283, 44.113686>,  <38.242184, 40.436443, 44.229805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268898, 40.818283, 44.113686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354742, 0.249217, 0.901137,
		0.932576, -0.163164, -0.321994,
		0.066787, 0.954604, -0.290295,
		38.288933, 41.104664, 44.026596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836655, 40.699883, 44.553852>,  <38.242184, 40.436443, 44.229805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836655, 40.699883, 44.553852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.639233, 41.029102, 44.441433>,  <38.520779, 41.226635, 44.373981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.639233, 41.029102, 44.441433>,  <38.836655, 40.699883, 44.553852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639233, 41.029102, 44.441433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215543, 0.428828, 0.877296,
		0.842583, 0.372413, -0.389053,
		-0.493553, 0.823052, -0.281052,
		38.491165, 41.276016, 44.357117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271210, 41.221344, 44.820118>,  <38.836655, 40.699883, 44.553852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271210, 41.221344, 44.820118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.910305, 41.384178, 44.763256>,  <38.693764, 41.481876, 44.729137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.910305, 41.384178, 44.763256>,  <39.271210, 41.221344, 44.820118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910305, 41.384178, 44.763256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086309, 0.493512, 0.865446,
		0.422461, 0.768590, -0.480412,
		-0.902262, 0.407081, -0.142153,
		38.639626, 41.506302, 44.720612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362411, 41.945919, 45.005463>,  <39.271210, 41.221344, 44.820118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362411, 41.945919, 45.005463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.965740, 41.895588, 45.016376>,  <38.727737, 41.865391, 45.022926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.965740, 41.895588, 45.016376>,  <39.362411, 41.945919, 45.005463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965740, 41.895588, 45.016376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029065, 0.425221, 0.904623,
		-0.125429, 0.896300, -0.425339,
		-0.991677, -0.125829, 0.027284,
		38.668236, 41.857838, 45.024563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193428, 42.544361, 45.104145>,  <39.362411, 41.945919, 45.005463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193428, 42.544361, 45.104145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924160, 42.280373, 45.237583>,  <38.762600, 42.121979, 45.317646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924160, 42.280373, 45.237583>,  <39.193428, 42.544361, 45.104145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924160, 42.280373, 45.237583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050855, 0.491364, 0.869468,
		-0.737737, 0.568335, -0.364334,
		-0.673170, -0.659967, 0.333595,
		38.722210, 42.082382, 45.337662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588387, 42.842243, 45.394512>,  <39.193428, 42.544361, 45.104145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588387, 42.842243, 45.394512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.624691, 42.494759, 45.589287>,  <38.646473, 42.286270, 45.706150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.624691, 42.494759, 45.589287>,  <38.588387, 42.842243, 45.394512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624691, 42.494759, 45.589287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076798, 0.481394, 0.873133,
		-0.992907, -0.116644, -0.023023,
		0.090763, -0.868708, 0.486937,
		38.651920, 42.234146, 45.735367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267071, 42.959538, 46.034027>,  <38.588387, 42.842243, 45.394512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267071, 42.959538, 46.034027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.444393, 42.612259, 46.123219>,  <38.550785, 42.403893, 46.176735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.444393, 42.612259, 46.123219>,  <38.267071, 42.959538, 46.034027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444393, 42.612259, 46.123219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079150, 0.285703, 0.955044,
		-0.892869, -0.405728, 0.195371,
		0.443306, -0.868193, 0.222982,
		38.577385, 42.351803, 46.190113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931641, 42.825504, 46.604061>,  <38.267071, 42.959538, 46.034027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931641, 42.825504, 46.604061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.268353, 42.610222, 46.620708>,  <38.470379, 42.481052, 46.630695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.268353, 42.610222, 46.620708>,  <37.931641, 42.825504, 46.604061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268353, 42.610222, 46.620708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035894, 0.132735, 0.990501,
		-0.538623, -0.832293, 0.131052,
		0.841782, -0.538211, 0.041620,
		38.520885, 42.448757, 46.633194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852192, 42.464748, 47.166042>,  <37.931641, 42.825504, 46.604061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852192, 42.464748, 47.166042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.246803, 42.438549, 47.106087>,  <38.483570, 42.422829, 47.070114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.246803, 42.438549, 47.106087>,  <37.852192, 42.464748, 47.166042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246803, 42.438549, 47.106087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161430, 0.241870, 0.956786,
		-0.026414, -0.968095, 0.249186,
		0.986531, -0.065498, -0.149891,
		38.542763, 42.418900, 47.061119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072506, 42.346352, 47.807995>,  <37.852192, 42.464748, 47.166042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072506, 42.346352, 47.807995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.403870, 42.447189, 47.607918>,  <38.602688, 42.507694, 47.487873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.403870, 42.447189, 47.607918>,  <38.072506, 42.346352, 47.807995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403870, 42.447189, 47.607918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460170, 0.202824, 0.864353,
		0.319350, -0.946208, 0.052014,
		0.828408, 0.252096, -0.500188,
		38.652393, 42.522820, 47.457863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619293, 41.991245, 48.039810>,  <38.072506, 42.346352, 47.807995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619293, 41.991245, 48.039810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.755508, 42.338226, 47.894726>,  <38.837238, 42.546413, 47.807674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.755508, 42.338226, 47.894726>,  <38.619293, 41.991245, 48.039810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755508, 42.338226, 47.894726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412055, 0.209063, 0.886850,
		0.845131, -0.451460, -0.286245,
		0.340534, 0.867454, -0.362712,
		38.857670, 42.598461, 47.785912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239891, 42.124786, 48.483086>,  <38.619293, 41.991245, 48.039810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239891, 42.124786, 48.483086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.161606, 42.478874, 48.314289>,  <39.114635, 42.691326, 48.213013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.161606, 42.478874, 48.314289>,  <39.239891, 42.124786, 48.483086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161606, 42.478874, 48.314289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428787, 0.464244, 0.774997,
		0.881952, -0.029268, -0.470430,
		-0.195711, 0.885224, -0.421990,
		39.102894, 42.744442, 48.187691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715206, 42.526390, 48.677986>,  <39.239891, 42.124786, 48.483086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715206, 42.526390, 48.677986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.444508, 42.807648, 48.590710>,  <39.282089, 42.976402, 48.538345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.444508, 42.807648, 48.590710>,  <39.715206, 42.526390, 48.677986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444508, 42.807648, 48.590710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313805, 0.543592, 0.778482,
		0.665991, 0.458364, -0.588522,
		-0.676744, 0.703143, -0.218191,
		39.241486, 43.018589, 48.525253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033062, 43.088318, 48.600086>,  <39.715206, 42.526390, 48.677986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033062, 43.088318, 48.600086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.663891, 43.215931, 48.686264>,  <39.442387, 43.292500, 48.737972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.663891, 43.215931, 48.686264>,  <40.033062, 43.088318, 48.600086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663891, 43.215931, 48.686264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360572, 0.520349, 0.774096,
		0.134853, 0.792122, -0.595280,
		-0.922932, 0.319030, 0.215446,
		39.387012, 43.311642, 48.750896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087921, 43.844643, 48.840145>,  <40.033062, 43.088318, 48.600086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087921, 43.844643, 48.840145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.732510, 43.718899, 48.973831>,  <39.519264, 43.643452, 49.054043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.732510, 43.718899, 48.973831>,  <40.087921, 43.844643, 48.840145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732510, 43.718899, 48.973831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144929, 0.498823, 0.854501,
		-0.435332, 0.807684, -0.397658,
		-0.888528, -0.314359, 0.334211,
		39.465950, 43.624592, 49.074093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844307, 44.421364, 49.129433>,  <40.087921, 43.844643, 48.840145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844307, 44.421364, 49.129433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.625427, 44.135281, 49.303352>,  <39.494099, 43.963631, 49.407703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.625427, 44.135281, 49.303352>,  <39.844307, 44.421364, 49.129433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625427, 44.135281, 49.303352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284472, 0.329632, 0.900232,
		-0.787175, 0.616298, 0.023080,
		-0.547203, -0.715206, 0.434798,
		39.461266, 43.920719, 49.433792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382137, 44.727562, 49.648705>,  <39.844307, 44.421364, 49.129433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382137, 44.727562, 49.648705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.399464, 44.352345, 49.786224>,  <39.409859, 44.127213, 49.868736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.399464, 44.352345, 49.786224>,  <39.382137, 44.727562, 49.648705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399464, 44.352345, 49.786224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004786, 0.343924, 0.938985,
		-0.999050, -0.042323, 0.010410,
		0.043320, -0.938043, 0.343800,
		39.412460, 44.070930, 49.889366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913029, 44.684929, 50.070625>,  <39.382137, 44.727562, 49.648705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913029, 44.684929, 50.070625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135822, 44.386074, 50.215706>,  <39.269497, 44.206760, 50.302753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135822, 44.386074, 50.215706>,  <38.913029, 44.684929, 50.070625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135822, 44.386074, 50.215706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161631, 0.330855, 0.929737,
		-0.814646, -0.576470, 0.063519,
		0.556981, -0.747140, 0.362705,
		39.302917, 44.161934, 50.324516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548832, 44.212612, 50.622097>,  <38.913029, 44.684929, 50.070625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548832, 44.212612, 50.622097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.947304, 44.225544, 50.654549>,  <39.186386, 44.233303, 50.674019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.947304, 44.225544, 50.654549>,  <38.548832, 44.212612, 50.622097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947304, 44.225544, 50.654549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087234, 0.323644, 0.942149,
		0.004200, -0.945627, 0.325227,
		0.996179, 0.032328, 0.081132,
		39.246159, 44.235241, 50.678886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645081, 44.111759, 51.304218>,  <38.548832, 44.212612, 50.622097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645081, 44.111759, 51.304218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.007210, 44.244015, 51.197578>,  <39.224487, 44.323368, 51.133595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.007210, 44.244015, 51.197578>,  <38.645081, 44.111759, 51.304218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007210, 44.244015, 51.197578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172992, 0.286217, 0.942419,
		0.387904, -0.899310, 0.201920,
		0.905319, 0.330638, -0.266598,
		39.278805, 44.343204, 51.117599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952732, 43.696869, 51.615257>,  <38.645081, 44.111759, 51.304218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952732, 43.696869, 51.615257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.571796, 43.777939, 51.706444>,  <37.343235, 43.826580, 51.761154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.571796, 43.777939, 51.706444>,  <37.952732, 43.696869, 51.615257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571796, 43.777939, 51.706444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302536, -0.723064, -0.621008,
		0.038970, -0.660379, 0.749921,
		-0.952341, 0.202677, 0.227966,
		37.286095, 43.838741, 51.774834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743427, 43.050163, 51.511883>,  <37.952732, 43.696869, 51.615257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743427, 43.050163, 51.511883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.428364, 43.295925, 51.530228>,  <37.239326, 43.443382, 51.541233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.428364, 43.295925, 51.530228>,  <37.743427, 43.050163, 51.511883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428364, 43.295925, 51.530228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458110, -0.534258, -0.710425,
		-0.411989, -0.580579, 0.702277,
		-0.787655, 0.614407, 0.045861,
		37.192066, 43.480247, 51.543987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112320, 42.637894, 51.636028>,  <37.743427, 43.050163, 51.511883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112320, 42.637894, 51.636028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026428, 42.988342, 51.463375>,  <36.974895, 43.198612, 51.359783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026428, 42.988342, 51.463375>,  <37.112320, 42.637894, 51.636028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026428, 42.988342, 51.463375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382539, -0.482078, -0.788203,
		-0.898641, -0.004131, 0.438665,
		-0.214727, 0.876119, -0.431635,
		36.962009, 43.251179, 51.333885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457886, 42.542004, 51.430973>,  <37.112320, 42.637894, 51.636028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457886, 42.542004, 51.430973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.561714, 42.858234, 51.209122>,  <36.624012, 43.047974, 51.076012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.561714, 42.858234, 51.209122>,  <36.457886, 42.542004, 51.430973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561714, 42.858234, 51.209122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551721, -0.349964, -0.757052,
		-0.792606, 0.502513, 0.345334,
		0.259574, 0.790573, -0.554631,
		36.639587, 43.095406, 51.042732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850140, 42.788223, 50.992035>,  <36.457886, 42.542004, 51.430973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850140, 42.788223, 50.992035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.168686, 42.917435, 50.787502>,  <36.359814, 42.994961, 50.664783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.168686, 42.917435, 50.787502>,  <35.850140, 42.788223, 50.992035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168686, 42.917435, 50.787502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349147, -0.444806, -0.824769,
		-0.493866, 0.835345, -0.241443,
		0.796362, 0.323026, -0.511332,
		36.407593, 43.014343, 50.634102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630295, 42.743507, 50.329750>,  <35.850140, 42.788223, 50.992035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630295, 42.743507, 50.329750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.994942, 42.885963, 50.247669>,  <36.213730, 42.971439, 50.198421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.994942, 42.885963, 50.247669>,  <35.630295, 42.743507, 50.329750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994942, 42.885963, 50.247669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105017, -0.280861, -0.953986,
		-0.397389, 0.891223, -0.218638,
		0.911621, 0.356143, -0.205205,
		36.268429, 42.992805, 50.186108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620914, 43.329292, 49.685085>,  <35.630295, 42.743507, 50.329750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620914, 43.329292, 49.685085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.984177, 43.161903, 49.680557>,  <36.202133, 43.061470, 49.677841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.984177, 43.161903, 49.680557>,  <35.620914, 43.329292, 49.685085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984177, 43.161903, 49.680557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086822, -0.161835, -0.982991,
		0.409523, 0.893695, -0.183304,
		0.908159, -0.418473, -0.011317,
		36.256626, 43.036362, 49.677162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982662, 43.494728, 49.095970>,  <35.620914, 43.329292, 49.685085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982662, 43.494728, 49.095970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.134964, 43.140690, 49.203022>,  <36.226345, 42.928265, 49.267254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.134964, 43.140690, 49.203022>,  <35.982662, 43.494728, 49.095970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134964, 43.140690, 49.203022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163372, -0.349267, -0.922671,
		0.910130, 0.307588, -0.277585,
		0.380754, -0.885100, 0.267627,
		36.249191, 42.875160, 49.283310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329147, 43.327301, 48.574196>,  <35.982662, 43.494728, 49.095970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329147, 43.327301, 48.574196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.306770, 42.978371, 48.768478>,  <36.293343, 42.769012, 48.885048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.306770, 42.978371, 48.768478>,  <36.329147, 43.327301, 48.574196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306770, 42.978371, 48.768478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045162, -0.488181, -0.871573,
		0.997412, -0.026823, 0.066707,
		-0.055943, -0.872330, 0.485706,
		36.289986, 42.716671, 48.914188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908253, 42.900570, 48.237705>,  <36.329147, 43.327301, 48.574196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908253, 42.900570, 48.237705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.666668, 42.631947, 48.409401>,  <36.521717, 42.470772, 48.512421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.666668, 42.631947, 48.409401>,  <36.908253, 42.900570, 48.237705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666668, 42.631947, 48.409401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121775, -0.609989, -0.782997,
		0.787659, -0.420625, 0.450186,
		-0.603957, -0.671556, 0.429242,
		36.485481, 42.430481, 48.538174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281372, 42.288712, 48.219818>,  <36.908253, 42.900570, 48.237705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281372, 42.288712, 48.219818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890442, 42.205383, 48.234932>,  <36.655884, 42.155384, 48.243999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890442, 42.205383, 48.234932>,  <37.281372, 42.288712, 48.219818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890442, 42.205383, 48.234932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105755, -0.634946, -0.765284,
		0.183416, -0.743939, 0.642583,
		-0.977330, -0.208322, 0.037784,
		36.597244, 42.142887, 48.246265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193630, 41.481697, 48.191238>,  <37.281372, 42.288712, 48.219818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193630, 41.481697, 48.191238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.859081, 41.660305, 48.064053>,  <36.658352, 41.767471, 47.987743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.859081, 41.660305, 48.064053>,  <37.193630, 41.481697, 48.191238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859081, 41.660305, 48.064053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018583, -0.556619, -0.830560,
		-0.547829, -0.700575, 0.457250,
		-0.836383, 0.446508, -0.317951,
		36.608170, 41.794262, 47.968662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937447, 41.024662, 47.803570>,  <37.193630, 41.481697, 48.191238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937447, 41.024662, 47.803570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686943, 41.304897, 47.666763>,  <36.536640, 41.473038, 47.584679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686943, 41.304897, 47.666763>,  <36.937447, 41.024662, 47.803570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686943, 41.304897, 47.666763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157697, -0.543466, -0.824485,
		-0.763498, -0.462409, 0.450832,
		-0.626261, 0.700587, -0.342015,
		36.499065, 41.515072, 47.564159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305595, 40.766464, 47.566631>,  <36.937447, 41.024662, 47.803570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305595, 40.766464, 47.566631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.327084, 41.112926, 47.367882>,  <36.339977, 41.320805, 47.248634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.327084, 41.112926, 47.367882>,  <36.305595, 40.766464, 47.566631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327084, 41.112926, 47.367882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230343, -0.473421, -0.850185,
		-0.971625, 0.160127, 0.174079,
		0.053725, 0.866159, -0.496872,
		36.343201, 41.372776, 47.218819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696209, 40.852001, 47.113625>,  <36.305595, 40.766464, 47.566631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696209, 40.852001, 47.113625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.940556, 41.119896, 46.944721>,  <36.087162, 41.280632, 46.843380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.940556, 41.119896, 46.944721>,  <35.696209, 40.852001, 47.113625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940556, 41.119896, 46.944721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191630, -0.392408, -0.899608,
		-0.768196, 0.630454, -0.111366,
		0.610862, 0.669734, -0.422260,
		36.123814, 41.320816, 46.818043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256489, 41.210911, 46.574417>,  <35.696209, 40.852001, 47.113625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256489, 41.210911, 46.574417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.634228, 41.285812, 46.466228>,  <35.860870, 41.330753, 46.401318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.634228, 41.285812, 46.466228>,  <35.256489, 41.210911, 46.574417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634228, 41.285812, 46.466228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278462, 0.017273, -0.960292,
		-0.175144, 0.982160, 0.068454,
		0.944343, 0.187251, -0.270470,
		35.917530, 41.341988, 46.385086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194946, 41.836468, 46.217236>,  <35.256489, 41.210911, 46.574417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194946, 41.836468, 46.217236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.518944, 41.639915, 46.089203>,  <35.713345, 41.521984, 46.012383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.518944, 41.639915, 46.089203>,  <35.194946, 41.836468, 46.217236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518944, 41.639915, 46.089203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322205, 0.083149, -0.943011,
		0.489991, 0.866967, -0.090975,
		0.809995, -0.491380, -0.320083,
		35.761944, 41.492500, 45.993179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283001, 42.113678, 45.561699>,  <35.194946, 41.836468, 46.217236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283001, 42.113678, 45.561699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517975, 41.791752, 45.527775>,  <35.658958, 41.598595, 45.507420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517975, 41.791752, 45.527775>,  <35.283001, 42.113678, 45.561699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517975, 41.791752, 45.527775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227869, -0.063935, -0.971591,
		0.776527, 0.590074, -0.220950,
		0.587436, -0.804814, -0.084812,
		35.694206, 41.550308, 45.502331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886227, 42.202866, 44.996784>,  <35.283001, 42.113678, 45.561699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886227, 42.202866, 44.996784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.785198, 41.818474, 45.041893>,  <35.724579, 41.587837, 45.068958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.785198, 41.818474, 45.041893>,  <35.886227, 42.202866, 44.996784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785198, 41.818474, 45.041893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206741, -0.060261, -0.976538,
		0.945233, -0.269962, -0.183455,
		-0.252573, -0.960984, 0.112773,
		35.709427, 41.530178, 45.075726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239590, 42.001835, 44.454590>,  <35.886227, 42.202866, 44.996784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239590, 42.001835, 44.454590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.020142, 41.684212, 44.559265>,  <35.888474, 41.493637, 44.622070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.020142, 41.684212, 44.559265>,  <36.239590, 42.001835, 44.454590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020142, 41.684212, 44.559265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078854, -0.262464, -0.961714,
		0.832342, -0.548256, 0.081380,
		-0.548625, -0.794058, 0.261692,
		35.855553, 41.445995, 44.637772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.700859, 42.021873, 38.530579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.304817, 42.073307, 38.553089>,  <42.067192, 42.104168, 38.566597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.304817, 42.073307, 38.553089>,  <42.700859, 42.021873, 38.530579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304817, 42.073307, 38.553089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137535, -0.968800, -0.206182,
		0.028008, -0.211881, 0.976894,
		-0.990101, 0.128582, 0.056275,
		42.007786, 42.111881, 38.569973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496311, 41.586666, 39.105480>,  <42.700859, 42.021873, 38.530579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496311, 41.586666, 39.105480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.200432, 41.637867, 38.841221>,  <42.022903, 41.668587, 38.682663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.200432, 41.637867, 38.841221>,  <42.496311, 41.586666, 39.105480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200432, 41.637867, 38.841221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001916, -0.982138, -0.188151,
		-0.672934, -0.137909, 0.726733,
		-0.739700, 0.128006, -0.660650,
		41.978523, 41.676270, 38.643024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172092, 40.981121, 39.197407>,  <42.496311, 41.586666, 39.105480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172092, 40.981121, 39.197407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.986458, 41.119080, 38.871052>,  <41.875076, 41.201855, 38.675240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.986458, 41.119080, 38.871052>,  <42.172092, 40.981121, 39.197407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986458, 41.119080, 38.871052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039993, -0.911986, -0.408267,
		-0.884886, -0.222101, 0.409448,
		-0.464088, 0.344895, -0.815886,
		41.847233, 41.222549, 38.626286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566860, 40.573406, 39.133106>,  <42.172092, 40.981121, 39.197407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566860, 40.573406, 39.133106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.659058, 40.728668, 38.776184>,  <41.714375, 40.821823, 38.562031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.659058, 40.728668, 38.776184>,  <41.566860, 40.573406, 39.133106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659058, 40.728668, 38.776184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047536, -0.920394, -0.388092,
		-0.971913, 0.047035, -0.230593,
		0.230491, 0.388153, -0.892307,
		41.728207, 40.845116, 38.508492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056393, 40.413002, 38.697716>,  <41.566860, 40.573406, 39.133106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056393, 40.413002, 38.697716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.390709, 40.457798, 38.482712>,  <41.591297, 40.484676, 38.353710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.390709, 40.457798, 38.482712>,  <41.056393, 40.413002, 38.697716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390709, 40.457798, 38.482712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188599, -0.860854, -0.472611,
		-0.515645, 0.496377, -0.698370,
		0.835787, 0.111988, -0.537511,
		41.641445, 40.491394, 38.321457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935600, 40.094303, 38.130230>,  <41.056393, 40.413002, 38.697716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935600, 40.094303, 38.130230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.330864, 40.128513, 38.079277>,  <41.568024, 40.149040, 38.048706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.330864, 40.128513, 38.079277>,  <40.935600, 40.094303, 38.130230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330864, 40.128513, 38.079277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008146, -0.799806, -0.600204,
		-0.153212, 0.594135, -0.789639,
		0.988160, 0.085526, -0.127380,
		41.627312, 40.154171, 38.041061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954830, 39.884136, 37.434898>,  <40.935600, 40.094303, 38.130230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954830, 39.884136, 37.434898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.319233, 39.858337, 37.597828>,  <41.537876, 39.842857, 37.695583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.319233, 39.858337, 37.597828>,  <40.954830, 39.884136, 37.434898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319233, 39.858337, 37.597828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132328, -0.889751, -0.436844,
		0.390587, 0.451867, -0.802034,
		0.911005, -0.064494, 0.407320,
		41.592533, 39.838989, 37.720024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292381, 39.513397, 36.920330>,  <40.954830, 39.884136, 37.434898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292381, 39.513397, 36.920330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.509624, 39.474682, 37.253956>,  <41.639969, 39.451450, 37.454132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.509624, 39.474682, 37.253956>,  <41.292381, 39.513397, 36.920330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509624, 39.474682, 37.253956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475633, -0.783134, -0.400592,
		0.691961, 0.614274, -0.379287,
		0.543105, -0.096793, 0.834067,
		41.672558, 39.445644, 37.504177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882935, 39.315414, 36.615486>,  <41.292381, 39.513397, 36.920330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882935, 39.315414, 36.615486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.877411, 39.187672, 36.994499>,  <41.874096, 39.111027, 37.221909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.877411, 39.187672, 36.994499>,  <41.882935, 39.315414, 36.615486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877411, 39.187672, 36.994499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345043, -0.890939, -0.295251,
		0.938485, 0.322864, 0.122492,
		-0.013807, -0.319353, 0.947535,
		41.873268, 39.091866, 37.278759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576046, 38.967819, 36.762714>,  <41.882935, 39.315414, 36.615486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576046, 38.967819, 36.762714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.312172, 38.833405, 37.031609>,  <42.153847, 38.752758, 37.192947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.312172, 38.833405, 37.031609>,  <42.576046, 38.967819, 36.762714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312172, 38.833405, 37.031609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329720, -0.933198, -0.142919,
		0.675356, 0.127369, 0.726410,
		-0.659681, -0.336033, 0.672237,
		42.114269, 38.732594, 37.233280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946774, 38.459965, 37.189102>,  <42.576046, 38.967819, 36.762714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946774, 38.459965, 37.189102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.573086, 38.358536, 37.289444>,  <42.348873, 38.297676, 37.349648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.573086, 38.358536, 37.289444>,  <42.946774, 38.459965, 37.189102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573086, 38.358536, 37.289444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216281, -0.961955, -0.166927,
		0.283637, -0.101692, 0.953524,
		-0.934223, -0.253576, 0.250852,
		42.292820, 38.282463, 37.364700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923050, 37.828949, 37.513142>,  <42.946774, 38.459965, 37.189102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923050, 37.828949, 37.513142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.546902, 37.826389, 37.377106>,  <42.321213, 37.824856, 37.295483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.546902, 37.826389, 37.377106>,  <42.923050, 37.828949, 37.513142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546902, 37.826389, 37.377106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174687, -0.866983, -0.466717,
		-0.291867, -0.498297, 0.816403,
		-0.940371, -0.006396, -0.340089,
		42.264790, 37.824471, 37.275078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721146, 37.118176, 37.588223>,  <42.923050, 37.828949, 37.513142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721146, 37.118176, 37.588223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.465164, 37.291599, 37.334454>,  <42.311577, 37.395653, 37.182194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.465164, 37.291599, 37.334454>,  <42.721146, 37.118176, 37.588223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465164, 37.291599, 37.334454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073301, -0.787415, -0.612049,
		-0.764913, -0.438184, 0.472126,
		-0.639950, 0.433557, -0.634423,
		42.273178, 37.421665, 37.144127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388783, 36.514992, 37.313431>,  <42.721146, 37.118176, 37.588223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388783, 36.514992, 37.313431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.333057, 36.827404, 37.069927>,  <42.299622, 37.014851, 36.923824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.333057, 36.827404, 37.069927>,  <42.388783, 36.514992, 37.313431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333057, 36.827404, 37.069927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190362, -0.624410, -0.757545,
		-0.971779, 0.010349, 0.235666,
		-0.139312, 0.781029, -0.608758,
		42.291264, 37.061714, 36.887299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856918, 36.373329, 36.952194>,  <42.388783, 36.514992, 37.313431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856918, 36.373329, 36.952194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.068810, 36.629093, 36.729290>,  <42.195946, 36.782551, 36.595547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.068810, 36.629093, 36.729290>,  <41.856918, 36.373329, 36.952194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068810, 36.629093, 36.729290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111283, -0.703734, -0.701694,
		-0.840836, 0.309693, -0.443943,
		0.529727, 0.639413, -0.557261,
		42.227726, 36.820919, 36.562111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523407, 36.364452, 36.239647>,  <41.856918, 36.373329, 36.952194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523407, 36.364452, 36.239647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.883011, 36.530891, 36.185028>,  <42.098774, 36.630756, 36.152256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.883011, 36.530891, 36.185028>,  <41.523407, 36.364452, 36.239647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883011, 36.530891, 36.185028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121330, -0.536248, -0.835295,
		-0.420788, 0.734370, -0.532577,
		0.899009, 0.416099, -0.136545,
		42.152714, 36.655720, 36.144066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589966, 36.523132, 35.557465>,  <41.523407, 36.364452, 36.239647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589966, 36.523132, 35.557465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.968403, 36.504520, 35.685680>,  <42.195465, 36.493355, 35.762611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.968403, 36.504520, 35.685680>,  <41.589966, 36.523132, 35.557465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968403, 36.504520, 35.685680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234526, -0.584167, -0.777011,
		0.223405, 0.810299, -0.541762,
		0.946091, -0.046531, 0.320542,
		42.252232, 36.490562, 35.781841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135113, 36.614010, 34.978901>,  <41.589966, 36.523132, 35.557465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135113, 36.614010, 34.978901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.360134, 36.445278, 35.263321>,  <42.495148, 36.344040, 35.433971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.360134, 36.445278, 35.263321>,  <42.135113, 36.614010, 34.978901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360134, 36.445278, 35.263321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296353, -0.700008, -0.649741,
		0.771821, 0.576236, -0.268782,
		0.562554, -0.421829, 0.711051,
		42.528900, 36.318729, 35.476635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754086, 36.529816, 34.634399>,  <42.135113, 36.614010, 34.978901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754086, 36.529816, 34.634399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.753376, 36.277073, 34.944431>,  <42.752953, 36.125427, 35.130451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.753376, 36.277073, 34.944431>,  <42.754086, 36.529816, 34.634399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.753376, 36.277073, 34.944431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397476, -0.711671, -0.579256,
		0.917611, 0.307051, 0.252408,
		-0.001770, -0.631858, 0.775082,
		42.752846, 36.087517, 35.176956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481426, 36.175838, 34.704670>,  <42.754086, 36.529816, 34.634399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481426, 36.175838, 34.704670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.201225, 35.947681, 34.876225>,  <43.033104, 35.810787, 34.979156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.201225, 35.947681, 34.876225>,  <43.481426, 36.175838, 34.704670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201225, 35.947681, 34.876225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329653, -0.791646, -0.514417,
		0.632947, -0.218967, 0.742584,
		-0.700504, -0.570394, 0.428887,
		42.991074, 35.776562, 35.004890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846100, 35.645481, 34.949165>,  <43.481426, 36.175838, 34.704670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846100, 35.645481, 34.949165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.482296, 35.479591, 34.937920>,  <43.264011, 35.380058, 34.931171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.482296, 35.479591, 34.937920>,  <43.846100, 35.645481, 34.949165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482296, 35.479591, 34.937920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360787, -0.754013, -0.548906,
		0.206448, -0.509379, 0.835411,
		-0.909512, -0.414726, -0.028113,
		43.209442, 35.355175, 34.929485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596199, 35.467205, 34.991154>,  <43.846100, 35.645481, 34.949165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596199, 35.467205, 34.991154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.970100, 35.546314, 35.109219>,  <45.194443, 35.593781, 35.180058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.970100, 35.546314, 35.109219>,  <44.596199, 35.467205, 34.991154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970100, 35.546314, 35.109219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325431, 0.809964, 0.487907,
		-0.142575, -0.552128, 0.821479,
		0.934755, 0.197771, 0.295160,
		45.250526, 35.605644, 35.197765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.459435, 35.719540, 35.675892>,  <44.596199, 35.467205, 34.991154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.459435, 35.719540, 35.675892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.812981, 35.861404, 35.553913>,  <45.025108, 35.946526, 35.480724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.812981, 35.861404, 35.553913>,  <44.459435, 35.719540, 35.675892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.812981, 35.861404, 35.553913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154337, 0.836586, 0.525646,
		0.441545, -0.417535, 0.794168,
		0.883866, 0.354666, -0.304949,
		45.078140, 35.967804, 35.462429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616611, 36.061424, 36.227764>,  <44.459435, 35.719540, 35.675892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616611, 36.061424, 36.227764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.856251, 36.217846, 35.948292>,  <45.000034, 36.311699, 35.780609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.856251, 36.217846, 35.948292>,  <44.616611, 36.061424, 36.227764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.856251, 36.217846, 35.948292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225822, 0.919719, 0.321127,
		0.768169, -0.034609, 0.639311,
		0.599100, 0.391050, -0.698684,
		45.035980, 36.335159, 35.738686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.985931, 36.619793, 36.528301>,  <44.616611, 36.061424, 36.227764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.985931, 36.619793, 36.528301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.051437, 36.723141, 36.147476>,  <45.090740, 36.785149, 35.918980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.051437, 36.723141, 36.147476>,  <44.985931, 36.619793, 36.528301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.051437, 36.723141, 36.147476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054201, 0.965992, 0.252826,
		0.985009, 0.010199, 0.172199,
		0.163764, 0.258369, -0.952064,
		45.100567, 36.800652, 35.861858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.491562, 37.200783, 36.529896>,  <44.985931, 36.619793, 36.528301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.491562, 37.200783, 36.529896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.288467, 37.232613, 36.186764>,  <45.166611, 37.251709, 35.980885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.288467, 37.232613, 36.186764>,  <45.491562, 37.200783, 36.529896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.288467, 37.232613, 36.186764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026697, 0.993794, 0.107989,
		0.861101, 0.077731, -0.502457,
		-0.507733, 0.079576, -0.857832,
		45.136147, 37.256485, 35.929413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.867741, 37.493713, 35.991215>,  <45.491562, 37.200783, 36.529896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.867741, 37.493713, 35.991215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.485516, 37.548695, 35.886906>,  <45.256180, 37.581684, 35.824322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.485516, 37.548695, 35.886906>,  <45.867741, 37.493713, 35.991215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.485516, 37.548695, 35.886906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148151, 0.988726, -0.021725,
		0.254844, -0.059393, -0.965156,
		-0.955566, 0.137452, -0.260770,
		45.198845, 37.589931, 35.808674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.903320, 38.090431, 35.501652>,  <45.867741, 37.493713, 35.991215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.903320, 38.090431, 35.501652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.524021, 38.053825, 35.623276>,  <45.296440, 38.031864, 35.696251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.524021, 38.053825, 35.623276>,  <45.903320, 38.090431, 35.501652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.524021, 38.053825, 35.623276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122247, 0.988973, -0.083590,
		-0.293059, -0.116435, -0.948978,
		-0.948247, -0.091513, 0.304062,
		45.239548, 38.026371, 35.714493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709084, 38.582817, 35.128845>,  <45.903320, 38.090431, 35.501652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709084, 38.582817, 35.128845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.414852, 38.495068, 35.385220>,  <45.238312, 38.442417, 35.539043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.414852, 38.495068, 35.385220>,  <45.709084, 38.582817, 35.128845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.414852, 38.495068, 35.385220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183438, 0.975271, 0.123277,
		-0.652127, -0.026892, -0.757633,
		-0.735582, -0.219371, 0.640933,
		45.194176, 38.429256, 35.577499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125759, 39.012863, 34.975445>,  <45.709084, 38.582817, 35.128845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125759, 39.012863, 34.975445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.083473, 38.922180, 35.362728>,  <45.058102, 38.867771, 35.595097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.083473, 38.922180, 35.362728>,  <45.125759, 39.012863, 34.975445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.083473, 38.922180, 35.362728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258953, 0.946348, 0.193311,
		-0.960087, -0.230285, -0.158748,
		-0.105714, -0.226704, 0.968210,
		45.051758, 38.854168, 35.653191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474091, 39.228149, 35.086376>,  <45.125759, 39.012863, 34.975445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474091, 39.228149, 35.086376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.642113, 39.199520, 35.448242>,  <44.742928, 39.182343, 35.665363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.642113, 39.199520, 35.448242>,  <44.474091, 39.228149, 35.086376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.642113, 39.199520, 35.448242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286146, 0.935584, 0.206888,
		-0.861203, -0.345773, 0.372519,
		0.420059, -0.071578, 0.904670,
		44.768131, 39.178047, 35.719643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970852, 39.524097, 35.562534>,  <44.474091, 39.228149, 35.086376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970852, 39.524097, 35.562534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.336178, 39.541801, 35.724468>,  <44.555374, 39.552422, 35.821629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.336178, 39.541801, 35.724468>,  <43.970852, 39.524097, 35.562534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336178, 39.541801, 35.724468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159696, 0.953379, 0.256057,
		-0.374626, -0.298512, 0.877807,
		0.913319, 0.044257, 0.404832,
		44.610172, 39.555077, 35.845917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802505, 39.758102, 36.306515>,  <43.970852, 39.524097, 35.562534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802505, 39.758102, 36.306515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.192753, 39.831974, 36.259068>,  <44.426899, 39.876297, 36.230598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.192753, 39.831974, 36.259068>,  <43.802505, 39.758102, 36.306515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192753, 39.831974, 36.259068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111674, 0.882902, 0.456084,
		0.188958, -0.431716, 0.881996,
		0.975615, 0.184676, -0.118620,
		44.485435, 39.887379, 36.223480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104198, 39.811329, 36.861542>,  <43.802505, 39.758102, 36.306515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104198, 39.811329, 36.861542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.342472, 40.036549, 36.632408>,  <44.485435, 40.171680, 36.494926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.342472, 40.036549, 36.632408>,  <44.104198, 39.811329, 36.861542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342472, 40.036549, 36.632408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197215, 0.793868, 0.575222,
		0.778630, -0.229680, 0.583937,
		0.595685, 0.563046, -0.572833,
		44.521179, 40.205463, 36.460560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.691929, 40.105770, 37.255898>,  <44.104198, 39.811329, 36.861542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.691929, 40.105770, 37.255898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.657921, 40.345680, 36.937641>,  <44.637516, 40.489624, 36.746689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.657921, 40.345680, 36.937641>,  <44.691929, 40.105770, 37.255898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.657921, 40.345680, 36.937641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098954, 0.799667, 0.592233,
		0.991454, -0.028383, -0.127334,
		-0.085015, 0.599772, -0.795642,
		44.632416, 40.525612, 36.698948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.183937, 40.665165, 37.294323>,  <44.691929, 40.105770, 37.255898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.183937, 40.665165, 37.294323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.922565, 40.799885, 37.023148>,  <44.765743, 40.880718, 36.860443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.922565, 40.799885, 37.023148>,  <45.183937, 40.665165, 37.294323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922565, 40.799885, 37.023148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082079, 0.921813, 0.378845,
		0.752528, 0.191902, -0.629980,
		-0.653425, 0.336800, -0.677939,
		44.726540, 40.900925, 36.819767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.445053, 41.344845, 37.088955>,  <45.183937, 40.665165, 37.294323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.445053, 41.344845, 37.088955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.061993, 41.343910, 36.973785>,  <44.832157, 41.343349, 36.904682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.061993, 41.343910, 36.973785>,  <45.445053, 41.344845, 37.088955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.061993, 41.343910, 36.973785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062783, 0.977603, 0.200875,
		0.281009, 0.210445, -0.936347,
		-0.957649, -0.002339, -0.287928,
		44.774696, 41.343208, 36.887405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.287643, 41.953831, 36.719627>,  <45.445053, 41.344845, 37.088955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.287643, 41.953831, 36.719627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.916168, 41.848419, 36.823997>,  <44.693283, 41.785172, 36.886620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.916168, 41.848419, 36.823997>,  <45.287643, 41.953831, 36.719627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.916168, 41.848419, 36.823997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216030, 0.956314, 0.196961,
		-0.301434, 0.126548, -0.945052,
		-0.928692, -0.263531, 0.260928,
		44.637562, 41.769360, 36.902275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.876038, 42.433868, 36.376171>,  <45.287643, 41.953831, 36.719627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.876038, 42.433868, 36.376171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.668056, 42.271557, 36.676838>,  <44.543270, 42.174171, 36.857239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.668056, 42.271557, 36.676838>,  <44.876038, 42.433868, 36.376171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668056, 42.271557, 36.676838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205840, 0.913553, 0.350786,
		-0.829026, 0.027668, -0.558525,
		-0.519948, -0.405778, 0.751664,
		44.512074, 42.149822, 36.902336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191261, 42.649883, 36.406326>,  <44.876038, 42.433868, 36.376171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191261, 42.649883, 36.406326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200588, 42.543110, 36.791698>,  <44.206184, 42.479046, 37.022923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200588, 42.543110, 36.791698>,  <44.191261, 42.649883, 36.406326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200588, 42.543110, 36.791698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312391, 0.913494, 0.260654,
		-0.949667, -0.307046, -0.062085,
		0.023318, -0.266930, 0.963434,
		44.207584, 42.463032, 37.080730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513561, 42.853058, 36.708416>,  <44.191261, 42.649883, 36.406326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513561, 42.853058, 36.708416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.737362, 42.805630, 37.036537>,  <43.871643, 42.777172, 37.233410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.737362, 42.805630, 37.036537>,  <43.513561, 42.853058, 36.708416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737362, 42.805630, 37.036537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541249, 0.697276, 0.469954,
		-0.627702, -0.706928, 0.325950,
		0.559501, -0.118571, 0.820305,
		43.905212, 42.770058, 37.282627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066429, 43.054829, 37.213219>,  <43.513561, 42.853058, 36.708416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066429, 43.054829, 37.213219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.439220, 43.094250, 37.352757>,  <43.662895, 43.117901, 37.436481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.439220, 43.094250, 37.352757>,  <43.066429, 43.054829, 37.213219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439220, 43.094250, 37.352757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271902, 0.826500, 0.492917,
		-0.239745, -0.554243, 0.797081,
		0.931983, 0.098554, 0.348849,
		43.718815, 43.123817, 37.457413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.458099, 40.131512, 39.412945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176586, 39.951279, 39.632641>,  <38.007679, 39.843140, 39.764458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176586, 39.951279, 39.632641>,  <38.458099, 40.131512, 39.412945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176586, 39.951279, 39.632641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153637, -0.658298, -0.736912,
		0.693601, -0.603011, 0.394075,
		-0.703785, -0.450578, 0.549241,
		37.965450, 39.816105, 39.797413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636211, 39.463158, 39.453045>,  <38.458099, 40.131512, 39.412945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636211, 39.463158, 39.453045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241333, 39.474876, 39.515774>,  <38.004406, 39.481907, 39.553410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241333, 39.474876, 39.515774>,  <38.636211, 39.463158, 39.453045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241333, 39.474876, 39.515774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136816, -0.661011, -0.737798,
		0.082045, -0.749804, 0.656554,
		-0.987193, 0.029295, 0.156818,
		37.945175, 39.483665, 39.562820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444801, 38.810074, 39.529003>,  <38.636211, 39.463158, 39.453045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444801, 38.810074, 39.529003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102760, 39.000309, 39.446426>,  <37.897537, 39.114449, 39.396881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102760, 39.000309, 39.446426>,  <38.444801, 38.810074, 39.529003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102760, 39.000309, 39.446426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284823, -0.763626, -0.579440,
		-0.433215, -0.436682, 0.788437,
		-0.855102, 0.475588, -0.206437,
		37.846230, 39.142986, 39.384495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849304, 38.263538, 39.550327>,  <38.444801, 38.810074, 39.529003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849304, 38.263538, 39.550327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660263, 38.562374, 39.363346>,  <37.546837, 38.741676, 39.251160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660263, 38.562374, 39.363346>,  <37.849304, 38.263538, 39.550327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660263, 38.562374, 39.363346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401320, -0.654680, -0.640575,
		-0.784594, -0.115140, 0.609224,
		-0.472603, 0.747085, -0.467450,
		37.518482, 38.786499, 39.223110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224735, 38.143166, 39.603962>,  <37.849304, 38.263538, 39.550327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224735, 38.143166, 39.603962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201164, 38.386921, 39.287693>,  <37.187023, 38.533176, 39.097931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201164, 38.386921, 39.287693>,  <37.224735, 38.143166, 39.603962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201164, 38.386921, 39.287693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432922, -0.729294, -0.529820,
		-0.899503, 0.311079, 0.306796,
		-0.058928, 0.609393, -0.790675,
		37.183487, 38.569740, 39.050491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517506, 38.207729, 39.354343>,  <37.224735, 38.143166, 39.603962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517506, 38.207729, 39.354343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786079, 38.284801, 39.068111>,  <36.947224, 38.331043, 38.896374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786079, 38.284801, 39.068111>,  <36.517506, 38.207729, 39.354343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786079, 38.284801, 39.068111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405937, -0.712225, -0.572670,
		-0.619992, 0.674990, -0.399999,
		0.671435, 0.192676, -0.715577,
		36.987511, 38.342606, 38.853439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062172, 38.235466, 38.753468>,  <36.517506, 38.207729, 39.354343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062172, 38.235466, 38.753468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432972, 38.195480, 38.608871>,  <36.655453, 38.171490, 38.522114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432972, 38.195480, 38.608871>,  <36.062172, 38.235466, 38.753468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432972, 38.195480, 38.608871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354957, -0.545134, -0.759497,
		-0.121143, 0.832368, -0.540821,
		0.927001, -0.099960, -0.361494,
		36.711071, 38.165493, 38.500423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982006, 38.401215, 38.045227>,  <36.062172, 38.235466, 38.753468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982006, 38.401215, 38.045227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315182, 38.181530, 38.072273>,  <36.515087, 38.049721, 38.088501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315182, 38.181530, 38.072273>,  <35.982006, 38.401215, 38.045227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315182, 38.181530, 38.072273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225545, -0.448532, -0.864840,
		0.505307, 0.705113, -0.497474,
		0.832943, -0.549213, 0.067611,
		36.565063, 38.016766, 38.092556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159882, 38.357277, 37.419708>,  <35.982006, 38.401215, 38.045227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159882, 38.357277, 37.419708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377869, 38.065029, 37.584248>,  <36.508659, 37.889679, 37.682972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377869, 38.065029, 37.584248>,  <36.159882, 38.357277, 37.419708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377869, 38.065029, 37.584248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194259, -0.587277, -0.785729,
		0.815645, 0.348286, -0.461975,
		0.544965, -0.730618, 0.411351,
		36.541359, 37.845844, 37.707653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629986, 38.058510, 36.818424>,  <36.159882, 38.357277, 37.419708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629986, 38.058510, 36.818424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606915, 37.784985, 37.109371>,  <36.593071, 37.620869, 37.283939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606915, 37.784985, 37.109371>,  <36.629986, 38.058510, 36.818424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606915, 37.784985, 37.109371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104794, -0.728706, -0.676761,
		0.992820, 0.037188, 0.113693,
		-0.057681, -0.683816, 0.727371,
		36.589611, 37.579842, 37.327583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200977, 37.596745, 36.657272>,  <36.629986, 38.058510, 36.818424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200977, 37.596745, 36.657272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950821, 37.381718, 36.883514>,  <36.800728, 37.252701, 37.019260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950821, 37.381718, 36.883514>,  <37.200977, 37.596745, 36.657272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950821, 37.381718, 36.883514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082078, -0.675499, -0.732778,
		0.775983, -0.504696, 0.378327,
		-0.625390, -0.537571, 0.565601,
		36.763203, 37.220448, 37.053196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396523, 36.867565, 36.641193>,  <37.200977, 37.596745, 36.657272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396523, 36.867565, 36.641193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002895, 36.872093, 36.712162>,  <36.766720, 36.874809, 36.754742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002895, 36.872093, 36.712162>,  <37.396523, 36.867565, 36.641193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002895, 36.872093, 36.712162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153735, -0.555410, -0.817243,
		0.089289, -0.831500, 0.548302,
		-0.984070, 0.011322, 0.177423,
		36.707676, 36.875488, 36.765388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979847, 37.017475, 36.050774>,  <37.396523, 36.867565, 36.641193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979847, 37.017475, 36.050774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833775, 36.741909, 35.800323>,  <37.746132, 36.576569, 35.650055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833775, 36.741909, 35.800323>,  <37.979847, 37.017475, 36.050774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833775, 36.741909, 35.800323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915129, -0.142248, -0.377232,
		0.170816, -0.710746, 0.682395,
		-0.365185, -0.688917, -0.626126,
		37.724220, 36.535233, 35.612484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259853, 36.400990, 36.152897>,  <37.979847, 37.017475, 36.050774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259853, 36.400990, 36.152897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166298, 36.535511, 35.787998>,  <38.110165, 36.616222, 35.569057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166298, 36.535511, 35.787998>,  <38.259853, 36.400990, 36.152897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166298, 36.535511, 35.787998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968991, 0.003722, -0.247069,
		-0.079694, -0.941747, -0.326743,
		-0.233893, 0.336300, -0.912248,
		38.096130, 36.636402, 35.514324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942768, 36.119511, 36.411732>,  <38.259853, 36.400990, 36.152897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942768, 36.119511, 36.411732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010490, 35.735962, 36.320606>,  <39.051125, 35.505833, 36.265930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010490, 35.735962, 36.320606>,  <38.942768, 36.119511, 36.411732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010490, 35.735962, 36.320606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157480, -0.254497, 0.954165,
		-0.972900, -0.125672, -0.194091,
		0.169307, -0.958873, -0.227809,
		39.061283, 35.448299, 36.252262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344555, 35.614681, 36.470802>,  <38.942768, 36.119511, 36.411732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344555, 35.614681, 36.470802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685501, 35.414017, 36.529869>,  <38.890068, 35.293617, 36.565308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685501, 35.414017, 36.529869>,  <38.344555, 35.614681, 36.470802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685501, 35.414017, 36.529869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312867, -0.262942, 0.912675,
		-0.419029, -0.824133, -0.381077,
		0.852367, -0.501664, 0.147664,
		38.941212, 35.263519, 36.574169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101788, 34.966030, 36.836567>,  <38.344555, 35.614681, 36.470802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101788, 34.966030, 36.836567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489540, 35.021557, 36.917599>,  <38.722191, 35.054874, 36.966217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489540, 35.021557, 36.917599>,  <38.101788, 34.966030, 36.836567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489540, 35.021557, 36.917599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149410, -0.321304, 0.935115,
		0.194899, -0.936747, -0.290724,
		0.969377, 0.138816, 0.202581,
		38.780354, 35.063202, 36.978374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206818, 34.607922, 37.535316>,  <38.101788, 34.966030, 36.836567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206818, 34.607922, 37.535316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563900, 34.788116, 37.530441>,  <38.778149, 34.896233, 37.527515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563900, 34.788116, 37.530441>,  <38.206818, 34.607922, 37.535316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563900, 34.788116, 37.530441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089594, -0.150907, 0.984479,
		0.441653, -0.879938, -0.175076,
		0.892701, 0.450484, -0.012189,
		38.831711, 34.923260, 37.526783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638283, 34.238796, 37.916096>,  <38.206818, 34.607922, 37.535316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638283, 34.238796, 37.916096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797714, 34.605587, 37.922810>,  <38.893375, 34.825661, 37.926838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797714, 34.605587, 37.922810>,  <38.638283, 34.238796, 37.916096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797714, 34.605587, 37.922810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120078, -0.070321, 0.990271,
		0.909238, -0.392689, -0.138138,
		0.398582, 0.916979, 0.016785,
		38.917290, 34.880680, 37.927845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115768, 34.253513, 38.401600>,  <38.638283, 34.238796, 37.916096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115768, 34.253513, 38.401600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075199, 34.648952, 38.357079>,  <39.050858, 34.886215, 38.330364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075199, 34.648952, 38.357079>,  <39.115768, 34.253513, 38.401600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075199, 34.648952, 38.357079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284018, 0.135999, 0.949125,
		0.953439, 0.064654, -0.294574,
		-0.101426, 0.988597, -0.111304,
		39.044773, 34.945530, 38.323689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742397, 34.576744, 38.545815>,  <39.115768, 34.253513, 38.401600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742397, 34.576744, 38.545815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452770, 34.847271, 38.599945>,  <39.278992, 35.009586, 38.632423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452770, 34.847271, 38.599945>,  <39.742397, 34.576744, 38.545815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452770, 34.847271, 38.599945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315375, 0.150150, 0.937013,
		0.613400, 0.721144, -0.322013,
		-0.724072, 0.676318, 0.135329,
		39.235550, 35.050167, 38.640545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989281, 35.089409, 38.997719>,  <39.742397, 34.576744, 38.545815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989281, 35.089409, 38.997719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601776, 35.183414, 39.029388>,  <39.369274, 35.239819, 39.048389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601776, 35.183414, 39.029388>,  <39.989281, 35.089409, 38.997719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601776, 35.183414, 39.029388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174146, 0.417382, 0.891889,
		0.176560, 0.877816, -0.445271,
		-0.968762, 0.235014, 0.079176,
		39.311146, 35.253918, 39.053143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979359, 35.702171, 39.377670>,  <39.989281, 35.089409, 38.997719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979359, 35.702171, 39.377670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594421, 35.594887, 39.395359>,  <39.363461, 35.530514, 39.405972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594421, 35.594887, 39.395359>,  <39.979359, 35.702171, 39.377670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594421, 35.594887, 39.395359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077713, 0.427339, 0.900745,
		-0.260491, 0.863390, -0.432091,
		-0.962343, -0.268215, 0.044221,
		39.305717, 35.514423, 39.408627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586315, 36.304604, 39.528004>,  <39.979359, 35.702171, 39.377670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586315, 36.304604, 39.528004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330196, 36.016918, 39.635895>,  <39.176525, 35.844307, 39.700630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330196, 36.016918, 39.635895>,  <39.586315, 36.304604, 39.528004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330196, 36.016918, 39.635895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260427, 0.533617, 0.804631,
		-0.722633, 0.444957, -0.528975,
		-0.640297, -0.719212, 0.269730,
		39.138107, 35.801155, 39.716812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977051, 36.588764, 39.695225>,  <39.586315, 36.304604, 39.528004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977051, 36.588764, 39.695225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990177, 36.245541, 39.900223>,  <38.998055, 36.039604, 40.023224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990177, 36.245541, 39.900223>,  <38.977051, 36.588764, 39.695225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990177, 36.245541, 39.900223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210306, 0.495366, 0.842843,
		-0.977085, -0.135440, -0.164200,
		0.032816, -0.858061, 0.512498,
		39.000023, 35.988121, 40.053974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531528, 36.711136, 40.242004>,  <38.977051, 36.588764, 39.695225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531528, 36.711136, 40.242004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739231, 36.394276, 40.370300>,  <38.863853, 36.204159, 40.447277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739231, 36.394276, 40.370300>,  <38.531528, 36.711136, 40.242004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739231, 36.394276, 40.370300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090949, 0.321946, 0.942379,
		-0.849768, -0.518503, 0.095126,
		0.519252, -0.792152, 0.320737,
		38.895008, 36.156631, 40.466522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194778, 36.485058, 40.707329>,  <38.531528, 36.711136, 40.242004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194778, 36.485058, 40.707329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536083, 36.305328, 40.813194>,  <38.740868, 36.197491, 40.876713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536083, 36.305328, 40.813194>,  <38.194778, 36.485058, 40.707329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536083, 36.305328, 40.813194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091586, 0.370518, 0.924299,
		-0.513374, -0.812910, 0.274998,
		0.853264, -0.449325, 0.264666,
		38.792061, 36.170532, 40.892593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097519, 36.181320, 41.419674>,  <38.194778, 36.485058, 40.707329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097519, 36.181320, 41.419674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492435, 36.231625, 41.380825>,  <38.729385, 36.261806, 41.357513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492435, 36.231625, 41.380825>,  <38.097519, 36.181320, 41.419674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492435, 36.231625, 41.380825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032313, 0.439572, 0.897626,
		0.155581, -0.889360, 0.429923,
		0.987295, 0.125762, -0.097126,
		38.788624, 36.269352, 41.351688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747791, 35.608799, 41.574181>,  <38.097519, 36.181320, 41.419674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747791, 35.608799, 41.574181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670738, 35.262218, 41.758419>,  <37.624508, 35.054268, 41.868961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670738, 35.262218, 41.758419>,  <37.747791, 35.608799, 41.574181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670738, 35.262218, 41.758419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305888, -0.392981, -0.867178,
		0.932377, -0.307936, -0.189338,
		-0.192629, -0.866453, 0.460600,
		37.612949, 35.002281, 41.896599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935406, 35.140099, 41.032497>,  <37.747791, 35.608799, 41.574181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935406, 35.140099, 41.032497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708580, 34.961548, 41.309391>,  <37.572483, 34.854416, 41.475525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708580, 34.961548, 41.309391>,  <37.935406, 35.140099, 41.032497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708580, 34.961548, 41.309391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559989, -0.407374, -0.721428,
		0.604028, -0.796738, -0.018960,
		-0.567065, -0.446380, 0.692230,
		37.538460, 34.827633, 41.517059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968723, 34.473030, 40.873390>,  <37.935406, 35.140099, 41.032497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968723, 34.473030, 40.873390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640202, 34.506687, 41.099094>,  <37.443089, 34.526882, 41.234516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640202, 34.506687, 41.099094>,  <37.968723, 34.473030, 40.873390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640202, 34.506687, 41.099094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545003, -0.408083, -0.732420,
		0.168635, -0.909059, 0.381018,
		-0.821300, 0.084144, 0.564257,
		37.393810, 34.531929, 41.268372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682293, 33.827980, 40.845634>,  <37.968723, 34.473030, 40.873390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682293, 33.827980, 40.845634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391869, 34.082130, 40.950806>,  <37.217613, 34.234619, 41.013908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391869, 34.082130, 40.950806>,  <37.682293, 33.827980, 40.845634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391869, 34.082130, 40.950806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556688, -0.318674, -0.767167,
		-0.403651, -0.703380, 0.585084,
		-0.726061, 0.635377, 0.262930,
		37.174049, 34.272743, 41.029686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053345, 33.355053, 41.000210>,  <37.682293, 33.827980, 40.845634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053345, 33.355053, 41.000210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914623, 33.723606, 40.930038>,  <36.831390, 33.944740, 40.887936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914623, 33.723606, 40.930038>,  <37.053345, 33.355053, 41.000210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914623, 33.723606, 40.930038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574935, -0.356608, -0.736397,
		-0.741067, -0.154521, 0.653409,
		-0.346800, 0.921387, -0.175431,
		36.810585, 34.000023, 40.877411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301884, 33.204662, 40.806679>,  <37.053345, 33.355053, 41.000210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301884, 33.204662, 40.806679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381603, 33.584850, 40.711281>,  <36.429436, 33.812965, 40.654041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381603, 33.584850, 40.711281>,  <36.301884, 33.204662, 40.806679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381603, 33.584850, 40.711281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539948, -0.096587, -0.836138,
		-0.817763, 0.295416, 0.493957,
		0.199299, 0.950474, -0.238494,
		36.441395, 33.869991, 40.639732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724037, 33.531902, 40.725689>,  <36.301884, 33.204662, 40.806679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724037, 33.531902, 40.725689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963608, 33.765881, 40.506916>,  <36.107349, 33.906265, 40.375652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963608, 33.765881, 40.506916>,  <35.724037, 33.531902, 40.725689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963608, 33.765881, 40.506916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605767, -0.115770, -0.787174,
		-0.523769, 0.802770, 0.285002,
		0.598925, 0.584943, -0.546929,
		36.143284, 33.941364, 40.342838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250538, 33.951996, 40.366779>,  <35.724037, 33.531902, 40.725689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250538, 33.951996, 40.366779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600628, 33.943146, 40.173492>,  <35.810680, 33.937836, 40.057522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600628, 33.943146, 40.173492>,  <35.250538, 33.951996, 40.366779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600628, 33.943146, 40.173492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482161, -0.120137, -0.867807,
		-0.038852, 0.992511, -0.115814,
		0.875221, -0.022125, -0.483217,
		35.863194, 33.936508, 40.028526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185135, 34.402512, 39.855003>,  <35.250538, 33.951996, 40.366779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185135, 34.402512, 39.855003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464790, 34.140797, 39.739685>,  <35.632584, 33.983768, 39.670494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464790, 34.140797, 39.739685>,  <35.185135, 34.402512, 39.855003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464790, 34.140797, 39.739685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392513, -0.014206, -0.919637,
		0.597611, 0.756113, -0.266749,
		0.699139, -0.654287, -0.288294,
		35.674534, 33.944511, 39.653198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205173, 34.581516, 39.153904>,  <35.185135, 34.402512, 39.855003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205173, 34.581516, 39.153904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359539, 34.213955, 39.186619>,  <35.452160, 33.993420, 39.206249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359539, 34.213955, 39.186619>,  <35.205173, 34.581516, 39.153904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359539, 34.213955, 39.186619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251887, -0.190241, -0.948874,
		0.887482, 0.345581, -0.304876,
		0.385912, -0.918903, 0.081788,
		35.475311, 33.938286, 39.211155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673634, 34.499908, 38.593334>,  <35.205173, 34.581516, 39.153904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673634, 34.499908, 38.593334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618706, 34.115616, 38.689785>,  <35.585751, 33.885040, 38.747654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618706, 34.115616, 38.689785>,  <35.673634, 34.499908, 38.593334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618706, 34.115616, 38.689785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115055, -0.226315, -0.967235,
		0.983823, -0.160560, -0.079460,
		-0.137316, -0.960730, 0.241127,
		35.577511, 33.827396, 38.762123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958477, 33.978241, 38.097500>,  <35.673634, 34.499908, 38.593334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958477, 33.978241, 38.097500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701393, 33.740631, 38.291019>,  <35.547142, 33.598064, 38.407131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701393, 33.740631, 38.291019>,  <35.958477, 33.978241, 38.097500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701393, 33.740631, 38.291019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162412, -0.511497, -0.843797,
		0.748699, -0.620889, 0.232266,
		-0.642707, -0.594026, 0.483797,
		35.508579, 33.562424, 38.436157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.517189, 36.149593, 44.999557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.136833, 36.129883, 45.121788>,  <38.908619, 36.118057, 45.195126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.136833, 36.129883, 45.121788>,  <39.517189, 36.149593, 44.999557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136833, 36.129883, 45.121788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255134, -0.434183, -0.863940,
		0.175248, -0.899476, 0.400289,
		-0.950892, -0.049277, 0.305576,
		38.851566, 36.115101, 45.213459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406864, 35.592815, 44.641529>,  <39.517189, 36.149593, 44.999557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406864, 35.592815, 44.641529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.047916, 35.739071, 44.740356>,  <38.832550, 35.826824, 44.799652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.047916, 35.739071, 44.740356>,  <39.406864, 35.592815, 44.641529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047916, 35.739071, 44.740356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417759, -0.523512, -0.742572,
		-0.142172, -0.769573, 0.622531,
		-0.897366, 0.365640, 0.247067,
		38.778706, 35.848763, 44.814476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059971, 34.981434, 44.436234>,  <39.406864, 35.592815, 44.641529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059971, 34.981434, 44.436234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789295, 35.275455, 44.453178>,  <38.626892, 35.451870, 44.463345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789295, 35.275455, 44.453178>,  <39.059971, 34.981434, 44.436234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789295, 35.275455, 44.453178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482883, -0.399631, -0.779179,
		-0.555808, -0.547715, 0.625368,
		-0.676684, 0.735054, 0.042364,
		38.586288, 35.495972, 44.465889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536011, 34.564011, 44.589985>,  <39.059971, 34.981434, 44.436234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536011, 34.564011, 44.589985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.425476, 34.912952, 44.428669>,  <38.359158, 35.122318, 44.331879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.425476, 34.912952, 44.428669>,  <38.536011, 34.564011, 44.589985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425476, 34.912952, 44.428669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520683, -0.488600, -0.700114,
		-0.807793, 0.016521, 0.589235,
		-0.276333, 0.872352, -0.403290,
		38.342575, 35.174660, 44.307682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944088, 34.455536, 44.317997>,  <38.536011, 34.564011, 44.589985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944088, 34.455536, 44.317997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056995, 34.788559, 44.127346>,  <38.124741, 34.988373, 44.012955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056995, 34.788559, 44.127346>,  <37.944088, 34.455536, 44.317997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056995, 34.788559, 44.127346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374159, -0.361940, -0.853818,
		-0.883364, 0.419336, 0.209347,
		0.282265, 0.832561, -0.476623,
		38.141674, 35.038326, 43.984360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345245, 34.631268, 43.982109>,  <37.944088, 34.455536, 44.317997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345245, 34.631268, 43.982109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.643646, 34.832134, 43.807148>,  <37.822685, 34.952652, 43.702171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.643646, 34.832134, 43.807148>,  <37.345245, 34.631268, 43.982109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643646, 34.832134, 43.807148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453356, -0.098159, -0.885908,
		-0.487806, 0.859183, 0.154433,
		0.745999, 0.502164, -0.437399,
		37.867447, 34.982784, 43.675930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115795, 35.171036, 43.485420>,  <37.345245, 34.631268, 43.982109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115795, 35.171036, 43.485420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482277, 35.099617, 43.341930>,  <37.702168, 35.056767, 43.255836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482277, 35.099617, 43.341930>,  <37.115795, 35.171036, 43.485420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482277, 35.099617, 43.341930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357952, 0.037676, -0.932980,
		0.180095, 0.983210, -0.029391,
		0.916208, -0.178545, -0.358727,
		37.757141, 35.046055, 43.234314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098602, 35.567978, 42.809238>,  <37.115795, 35.171036, 43.485420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098602, 35.567978, 42.809238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.419197, 35.330986, 42.776798>,  <37.611553, 35.188789, 42.757332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.419197, 35.330986, 42.776798>,  <37.098602, 35.567978, 42.809238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419197, 35.330986, 42.776798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111953, -0.015438, -0.993594,
		0.587433, 0.805437, -0.078704,
		0.801492, -0.592481, -0.081102,
		37.659645, 35.153240, 42.752468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595692, 35.863548, 42.289684>,  <37.098602, 35.567978, 42.809238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595692, 35.863548, 42.289684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.594967, 35.466873, 42.341145>,  <37.594532, 35.228867, 42.372021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.594967, 35.466873, 42.341145>,  <37.595692, 35.863548, 42.289684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594967, 35.466873, 42.341145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071816, -0.128192, -0.989146,
		0.997416, -0.011032, -0.070987,
		-0.001813, -0.991688, 0.128653,
		37.594421, 35.169365, 42.379742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379475, 35.972744, 42.121433>,  <37.595692, 35.863548, 42.289684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379475, 35.972744, 42.121433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.671795, 36.172218, 41.934998>,  <38.847187, 36.291904, 41.823135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.671795, 36.172218, 41.934998>,  <38.379475, 35.972744, 42.121433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671795, 36.172218, 41.934998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123448, 0.575010, 0.808779,
		0.671338, -0.648592, 0.358655,
		0.730798, 0.498689, -0.466094,
		38.891033, 36.321823, 41.795170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899967, 36.069580, 42.654644>,  <38.379475, 35.972744, 42.121433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899967, 36.069580, 42.654644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.993526, 36.344006, 42.379074>,  <39.049660, 36.508659, 42.213734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.993526, 36.344006, 42.379074>,  <38.899967, 36.069580, 42.654644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993526, 36.344006, 42.379074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246949, 0.643420, 0.724587,
		0.940377, -0.339606, -0.018929,
		0.233895, 0.686060, -0.688923,
		39.063694, 36.549824, 42.172398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611500, 36.331486, 42.834030>,  <38.899967, 36.069580, 42.654644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611500, 36.331486, 42.834030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.453789, 36.616589, 42.601990>,  <39.359161, 36.787651, 42.462765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.453789, 36.616589, 42.601990>,  <39.611500, 36.331486, 42.834030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453789, 36.616589, 42.601990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376079, 0.701102, 0.605823,
		0.838515, 0.020701, -0.544485,
		-0.394281, 0.712761, -0.580099,
		39.335506, 36.830418, 42.427959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168808, 36.755054, 42.719105>,  <39.611500, 36.331486, 42.834030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168808, 36.755054, 42.719105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.828106, 36.959797, 42.674343>,  <39.623684, 37.082642, 42.647488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.828106, 36.959797, 42.674343>,  <40.168808, 36.755054, 42.719105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828106, 36.959797, 42.674343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299836, 0.651324, 0.697048,
		0.429673, 0.560159, -0.708239,
		-0.851751, 0.511858, -0.111901,
		39.572582, 37.113354, 42.640774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378239, 37.506062, 42.773083>,  <40.168808, 36.755054, 42.719105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378239, 37.506062, 42.773083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.982105, 37.499310, 42.828140>,  <39.744423, 37.495258, 42.861176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.982105, 37.499310, 42.828140>,  <40.378239, 37.506062, 42.773083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982105, 37.499310, 42.828140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100637, 0.595430, 0.797079,
		-0.095409, 0.803230, -0.587979,
		-0.990338, -0.016876, 0.137644,
		39.685005, 37.494247, 42.869434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188629, 38.169441, 42.755394>,  <40.378239, 37.506062, 42.773083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188629, 38.169441, 42.755394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.912384, 38.005291, 42.993603>,  <39.746635, 37.906803, 43.136528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.912384, 38.005291, 42.993603>,  <40.188629, 38.169441, 42.755394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912384, 38.005291, 42.993603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072505, 0.779994, 0.621573,
		-0.719580, 0.472445, -0.508921,
		-0.690614, -0.410372, 0.595522,
		39.705200, 37.882179, 43.172260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940628, 38.701859, 43.027210>,  <40.188629, 38.169441, 42.755394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940628, 38.701859, 43.027210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.784847, 38.401360, 43.240360>,  <39.691380, 38.221062, 43.368252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.784847, 38.401360, 43.240360>,  <39.940628, 38.701859, 43.027210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784847, 38.401360, 43.240360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035195, 0.565997, 0.823656,
		-0.920375, 0.339527, -0.193987,
		-0.389449, -0.751245, 0.532879,
		39.668011, 38.175987, 43.400223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561783, 39.006207, 43.528999>,  <39.940628, 38.701859, 43.027210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561783, 39.006207, 43.528999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.627243, 38.651543, 43.701996>,  <39.666519, 38.438744, 43.805794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.627243, 38.651543, 43.701996>,  <39.561783, 39.006207, 43.528999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627243, 38.651543, 43.701996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043924, 0.444520, 0.894692,
		-0.985541, -0.127417, 0.111690,
		0.163648, -0.886661, 0.432496,
		39.676338, 38.385544, 43.831745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133080, 38.960396, 44.055222>,  <39.561783, 39.006207, 43.528999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133080, 38.960396, 44.055222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.415020, 38.697506, 44.161987>,  <39.584183, 38.539772, 44.226048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.415020, 38.697506, 44.161987>,  <39.133080, 38.960396, 44.055222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415020, 38.697506, 44.161987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075253, 0.443430, 0.893144,
		-0.705351, -0.609449, 0.362011,
		0.704852, -0.657223, 0.266911,
		39.626476, 38.500340, 44.242062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051918, 38.765659, 44.696846>,  <39.133080, 38.960396, 44.055222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051918, 38.765659, 44.696846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.428745, 38.635818, 44.663052>,  <39.654842, 38.557915, 44.642773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.428745, 38.635818, 44.663052>,  <39.051918, 38.765659, 44.696846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428745, 38.635818, 44.663052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153857, 0.194371, 0.968787,
		-0.298048, -0.925664, 0.233053,
		0.942070, -0.324602, -0.084488,
		39.711365, 38.538437, 44.637707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219383, 38.409504, 45.349041>,  <39.051918, 38.765659, 44.696846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219383, 38.409504, 45.349041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.579800, 38.491314, 45.196049>,  <39.796051, 38.540401, 45.104252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.579800, 38.491314, 45.196049>,  <39.219383, 38.409504, 45.349041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579800, 38.491314, 45.196049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365236, 0.117829, 0.923428,
		0.233936, -0.971743, 0.031467,
		0.901042, 0.204530, -0.382480,
		39.850113, 38.552673, 45.081306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577206, 38.269615, 45.904919>,  <39.219383, 38.409504, 45.349041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577206, 38.269615, 45.904919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.843826, 38.474552, 45.688320>,  <40.003799, 38.597515, 45.558361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.843826, 38.474552, 45.688320>,  <39.577206, 38.269615, 45.904919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843826, 38.474552, 45.688320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409034, 0.355919, 0.840246,
		0.623219, -0.781557, 0.027674,
		0.666550, 0.512338, -0.541499,
		40.043793, 38.628254, 45.525871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250103, 38.326641, 46.210136>,  <39.577206, 38.269615, 45.904919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250103, 38.326641, 46.210136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.302200, 38.626122, 45.950138>,  <40.333458, 38.805809, 45.794140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.302200, 38.626122, 45.950138>,  <40.250103, 38.326641, 46.210136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302200, 38.626122, 45.950138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415901, 0.553854, 0.721299,
		0.900034, -0.364279, -0.239246,
		0.130247, 0.748697, -0.649992,
		40.341274, 38.850731, 45.755142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874569, 38.636383, 46.424606>,  <40.250103, 38.326641, 46.210136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874569, 38.636383, 46.424606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.694324, 38.913147, 46.198963>,  <40.586178, 39.079205, 46.063580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.694324, 38.913147, 46.198963>,  <40.874569, 38.636383, 46.424606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694324, 38.913147, 46.198963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267571, 0.707521, 0.654079,
		0.851678, 0.143796, -0.503951,
		-0.450610, 0.691907, -0.564105,
		40.559143, 39.120720, 46.029732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.120010, 39.785812, 47.961002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.498253, 39.677795, 47.888447>,  <33.725197, 39.612984, 47.844913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.498253, 39.677795, 47.888447>,  <33.120010, 39.785812, 47.961002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498253, 39.677795, 47.888447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223316, -0.133389, -0.965576,
		0.236554, 0.953563, -0.186439,
		0.945607, -0.270046, -0.181392,
		33.781937, 39.596783, 47.834030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190521, 39.954090, 47.273853>,  <33.120010, 39.785812, 47.961002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190521, 39.954090, 47.273853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.515934, 39.727627, 47.326958>,  <33.711182, 39.591747, 47.358822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.515934, 39.727627, 47.326958>,  <33.190521, 39.954090, 47.273853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515934, 39.727627, 47.326958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006245, -0.236798, -0.971539,
		0.581483, 0.789552, -0.196179,
		0.813535, -0.566158, 0.132763,
		33.759995, 39.557781, 47.366787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699764, 40.156418, 46.724239>,  <33.190521, 39.954090, 47.273853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699764, 40.156418, 46.724239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778854, 39.786201, 46.853413>,  <33.826309, 39.564072, 46.930916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778854, 39.786201, 46.853413>,  <33.699764, 40.156418, 46.724239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778854, 39.786201, 46.853413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016287, -0.332493, -0.942965,
		0.980123, 0.181184, -0.080815,
		0.197721, -0.925538, 0.322933,
		33.838169, 39.508541, 46.950291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166386, 39.870152, 46.189659>,  <33.699764, 40.156418, 46.724239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166386, 39.870152, 46.189659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.106403, 39.530010, 46.391418>,  <34.070415, 39.325928, 46.512474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.106403, 39.530010, 46.391418>,  <34.166386, 39.870152, 46.189659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106403, 39.530010, 46.391418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121211, -0.522129, -0.844209,
		0.981235, -0.065455, 0.181367,
		-0.149954, -0.850351, 0.504398,
		34.061417, 39.274906, 46.542736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698132, 39.423988, 45.978661>,  <34.166386, 39.870152, 46.189659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698132, 39.423988, 45.978661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.411404, 39.191277, 46.132389>,  <34.239368, 39.051647, 46.224628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.411404, 39.191277, 46.132389>,  <34.698132, 39.423988, 45.978661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411404, 39.191277, 46.132389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040462, -0.584968, -0.810047,
		0.696087, -0.565104, 0.442855,
		-0.716817, -0.581782, 0.384323,
		34.196358, 39.016743, 46.247684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909367, 38.674625, 46.112732>,  <34.698132, 39.423988, 45.978661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909367, 38.674625, 46.112732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.511295, 38.662563, 46.075397>,  <34.272453, 38.655327, 46.052998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.511295, 38.662563, 46.075397>,  <34.909367, 38.674625, 46.112732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511295, 38.662563, 46.075397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092897, -0.595073, -0.798285,
		-0.031467, -0.803106, 0.595005,
		-0.995178, -0.030155, -0.093331,
		34.212742, 38.653519, 46.047398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849514, 38.056885, 45.888092>,  <34.909367, 38.674625, 46.112732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849514, 38.056885, 45.888092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.507015, 38.221516, 45.763229>,  <34.301514, 38.320293, 45.688313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.507015, 38.221516, 45.763229>,  <34.849514, 38.056885, 45.888092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507015, 38.221516, 45.763229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145292, -0.388021, -0.910126,
		-0.495710, -0.824649, 0.272444,
		-0.856249, 0.411575, -0.312161,
		34.250141, 38.344986, 45.669582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435406, 37.552357, 45.655251>,  <34.849514, 38.056885, 45.888092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435406, 37.552357, 45.655251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.284618, 37.882687, 45.487480>,  <34.194145, 38.080883, 45.386818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.284618, 37.882687, 45.487480>,  <34.435406, 37.552357, 45.655251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284618, 37.882687, 45.487480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023680, -0.444089, -0.895670,
		-0.925924, -0.347570, 0.147852,
		-0.376967, 0.825821, -0.419423,
		34.171528, 38.130432, 45.361652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130478, 37.287022, 45.051281>,  <34.435406, 37.552357, 45.655251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130478, 37.287022, 45.051281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.125622, 37.678280, 44.968254>,  <34.122707, 37.913036, 44.918438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.125622, 37.678280, 44.968254>,  <34.130478, 37.287022, 45.051281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125622, 37.678280, 44.968254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084488, -0.207846, -0.974506,
		-0.996351, 0.005706, 0.085165,
		-0.012141, 0.978145, -0.207569,
		34.121979, 37.971722, 44.905983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647369, 37.368912, 44.618267>,  <34.130478, 37.287022, 45.051281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647369, 37.368912, 44.618267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.863628, 37.697392, 44.545246>,  <33.993385, 37.894482, 44.501434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.863628, 37.697392, 44.545246>,  <33.647369, 37.368912, 44.618267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863628, 37.697392, 44.545246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171060, -0.105154, -0.979633,
		-0.823673, 0.560865, 0.083623,
		0.540649, 0.821202, -0.182554,
		34.025822, 37.943752, 44.490479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221786, 37.773388, 44.320515>,  <33.647369, 37.368912, 44.618267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221786, 37.773388, 44.320515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.583626, 37.903748, 44.210609>,  <33.800728, 37.981964, 44.144669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.583626, 37.903748, 44.210609>,  <33.221786, 37.773388, 44.320515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583626, 37.903748, 44.210609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204742, -0.233164, -0.950639,
		-0.373881, 0.916199, -0.144193,
		0.904596, 0.325904, -0.274760,
		33.855003, 38.001518, 44.128181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085663, 38.231686, 43.775311>,  <33.221786, 37.773388, 44.320515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085663, 38.231686, 43.775311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.473942, 38.139393, 43.748459>,  <33.706909, 38.084019, 43.732349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.473942, 38.139393, 43.748459>,  <33.085663, 38.231686, 43.775311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473942, 38.139393, 43.748459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108610, -0.172075, -0.979078,
		0.214353, 0.957681, -0.192093,
		0.970699, -0.230732, -0.067129,
		33.765152, 38.070171, 43.728321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320045, 38.588146, 43.204048>,  <33.085663, 38.231686, 43.775311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320045, 38.588146, 43.204048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.573872, 38.283161, 43.254604>,  <33.726170, 38.100170, 43.284939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.573872, 38.283161, 43.254604>,  <33.320045, 38.588146, 43.204048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573872, 38.283161, 43.254604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246258, -0.354486, -0.902051,
		0.732584, 0.541288, -0.412708,
		0.634569, -0.762461, 0.126394,
		33.764244, 38.054424, 43.292522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373222, 38.428406, 42.558006>,  <33.320045, 38.588146, 43.204048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373222, 38.428406, 42.558006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.554276, 38.106842, 42.712330>,  <33.662907, 37.913902, 42.804924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.554276, 38.106842, 42.712330>,  <33.373222, 38.428406, 42.558006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554276, 38.106842, 42.712330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367322, -0.562354, -0.740832,
		0.812528, 0.193605, -0.549833,
		0.452629, -0.803912, 0.385813,
		33.690063, 37.865669, 42.828075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943211, 38.810829, 42.386101>,  <33.373222, 38.428406, 42.558006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943211, 38.810829, 42.386101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057812, 39.084019, 42.117336>,  <34.126572, 39.247932, 41.956078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057812, 39.084019, 42.117336>,  <33.943211, 38.810829, 42.386101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057812, 39.084019, 42.117336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506914, 0.487048, 0.711212,
		0.812992, -0.544363, -0.206670,
		0.286500, 0.682974, -0.671912,
		34.143761, 39.288910, 41.915764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673489, 38.831371, 42.372627>,  <33.943211, 38.810829, 42.386101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673489, 38.831371, 42.372627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.521790, 39.174450, 42.233757>,  <34.430771, 39.380299, 42.150436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.521790, 39.174450, 42.233757>,  <34.673489, 38.831371, 42.372627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521790, 39.174450, 42.233757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670728, 0.513293, 0.535401,
		0.637413, -0.029811, -0.769945,
		-0.379247, 0.857696, -0.347175,
		34.408016, 39.431759, 42.129604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230961, 39.249519, 42.154770>,  <34.673489, 38.831371, 42.372627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230961, 39.249519, 42.154770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.926838, 39.501163, 42.219463>,  <34.744366, 39.652149, 42.258278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.926838, 39.501163, 42.219463>,  <35.230961, 39.249519, 42.154770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926838, 39.501163, 42.219463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617549, 0.622856, 0.480295,
		0.201424, 0.465047, -0.862067,
		-0.760303, 0.629112, 0.161732,
		34.698746, 39.689896, 42.267982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494831, 39.864010, 41.983994>,  <35.230961, 39.249519, 42.154770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494831, 39.864010, 41.983994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.181683, 39.934120, 42.222790>,  <34.993793, 39.976185, 42.366066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.181683, 39.934120, 42.222790>,  <35.494831, 39.864010, 41.983994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181683, 39.934120, 42.222790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522723, 0.705688, 0.478295,
		-0.337454, 0.686501, -0.644081,
		-0.782870, 0.175273, 0.596987,
		34.946823, 39.986702, 42.401886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652363, 40.627991, 42.115368>,  <35.494831, 39.864010, 41.983994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652363, 40.627991, 42.115368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.369877, 40.484211, 42.359352>,  <35.200386, 40.397942, 42.505741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.369877, 40.484211, 42.359352>,  <35.652363, 40.627991, 42.115368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369877, 40.484211, 42.359352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384905, 0.528168, 0.756893,
		-0.594226, 0.769309, -0.234648,
		-0.706218, -0.359448, 0.609962,
		35.158012, 40.376377, 42.542339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423058, 41.212875, 42.442467>,  <35.652363, 40.627991, 42.115368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423058, 41.212875, 42.442467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.295811, 40.913475, 42.675209>,  <35.219463, 40.733837, 42.814854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.295811, 40.913475, 42.675209>,  <35.423058, 41.212875, 42.442467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295811, 40.913475, 42.675209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369694, 0.467212, 0.803144,
		-0.873000, 0.470599, 0.128089,
		-0.318114, -0.748498, 0.581854,
		35.200375, 40.688927, 42.849766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247131, 41.564308, 43.016483>,  <35.423058, 41.212875, 42.442467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247131, 41.564308, 43.016483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.277107, 41.179771, 43.122475>,  <35.295094, 40.949051, 43.186069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.277107, 41.179771, 43.122475>,  <35.247131, 41.564308, 43.016483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277107, 41.179771, 43.122475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427294, 0.271053, 0.862526,
		-0.901002, 0.048584, 0.431087,
		0.074943, -0.961337, 0.264979,
		35.299591, 40.891369, 43.201969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896275, 41.560017, 43.584019>,  <35.247131, 41.564308, 43.016483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896275, 41.560017, 43.584019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.128109, 41.235920, 43.618866>,  <35.267208, 41.041462, 43.639774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.128109, 41.235920, 43.618866>,  <34.896275, 41.560017, 43.584019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128109, 41.235920, 43.618866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266453, 0.289448, 0.919360,
		-0.770118, -0.509637, 0.383651,
		0.579587, -0.810241, 0.087115,
		35.301987, 40.992847, 43.645000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632473, 41.267715, 44.140205>,  <34.896275, 41.560017, 43.584019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632473, 41.267715, 44.140205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.006897, 41.130795, 44.107632>,  <35.231552, 41.048641, 44.088089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.006897, 41.130795, 44.107632>,  <34.632473, 41.267715, 44.140205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006897, 41.130795, 44.107632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147266, 0.170949, 0.974212,
		-0.319551, -0.923909, 0.210427,
		0.936056, -0.342299, -0.081434,
		35.287712, 41.028107, 44.083202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761082, 40.742764, 44.616524>,  <34.632473, 41.267715, 44.140205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761082, 40.742764, 44.616524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.132015, 40.868839, 44.535816>,  <35.354576, 40.944485, 44.487392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.132015, 40.868839, 44.535816>,  <34.761082, 40.742764, 44.616524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132015, 40.868839, 44.535816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155786, 0.165095, 0.973897,
		0.340275, -0.934557, 0.103995,
		0.927331, 0.315192, -0.201768,
		35.410213, 40.963398, 44.475285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227482, 40.424561, 45.015526>,  <34.761082, 40.742764, 44.616524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227482, 40.424561, 45.015526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.434669, 40.749855, 44.909428>,  <35.558983, 40.945030, 44.845768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.434669, 40.749855, 44.909428>,  <35.227482, 40.424561, 45.015526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434669, 40.749855, 44.909428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354757, 0.077936, 0.931704,
		0.778368, -0.576692, -0.248133,
		0.517968, 0.813236, -0.265248,
		35.590061, 40.993824, 44.829853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788193, 40.258831, 45.210629>,  <35.227482, 40.424561, 45.015526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788193, 40.258831, 45.210629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.756351, 40.655945, 45.174744>,  <35.737247, 40.894211, 45.153214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.756351, 40.655945, 45.174744>,  <35.788193, 40.258831, 45.210629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756351, 40.655945, 45.174744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293688, 0.109358, 0.949625,
		0.952581, 0.049246, -0.300274,
		-0.079602, 0.992782, -0.089710,
		35.732471, 40.953781, 45.147831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400017, 40.492065, 45.522408>,  <35.788193, 40.258831, 45.210629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400017, 40.492065, 45.522408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.167381, 40.817459, 45.523022>,  <36.027798, 41.012695, 45.523388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.167381, 40.817459, 45.523022>,  <36.400017, 40.492065, 45.522408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167381, 40.817459, 45.523022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440296, 0.313201, 0.841454,
		0.684026, 0.490056, -0.540327,
		-0.581590, 0.813480, 0.001532,
		35.992905, 41.061504, 45.523479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865280, 40.997749, 45.591534>,  <36.400017, 40.492065, 45.522408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865280, 40.997749, 45.591534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.516991, 41.143593, 45.723541>,  <36.308018, 41.231098, 45.802746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.516991, 41.143593, 45.723541>,  <36.865280, 40.997749, 45.591534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516991, 41.143593, 45.723541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474404, 0.445927, 0.759006,
		0.129573, 0.817443, -0.561247,
		-0.870719, 0.364604, 0.330019,
		36.255775, 41.252975, 45.822548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433395, 41.502846, 45.271618>,  <36.865280, 40.997749, 45.591534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433395, 41.502846, 45.271618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.806141, 41.620800, 45.187080>,  <38.029789, 41.691574, 45.136360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.806141, 41.620800, 45.187080>,  <37.433395, 41.502846, 45.271618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806141, 41.620800, 45.187080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175292, -0.144060, -0.973920,
		-0.317642, 0.944610, -0.082553,
		0.931867, 0.294887, -0.211342,
		38.085701, 41.709267, 45.123676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423107, 41.916203, 44.651211>,  <37.433395, 41.502846, 45.271618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423107, 41.916203, 44.651211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.812069, 41.823627, 44.662952>,  <38.045448, 41.768082, 44.669998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.812069, 41.823627, 44.662952>,  <37.423107, 41.916203, 44.651211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812069, 41.823627, 44.662952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026250, -0.233590, -0.971981,
		0.231808, 0.944391, -0.233220,
		0.972407, -0.231435, 0.029358,
		38.103790, 41.754196, 44.671761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891243, 42.413830, 44.149876>,  <37.423107, 41.916203, 44.651211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891243, 42.413830, 44.149876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.080147, 42.067204, 44.214413>,  <38.193489, 41.859226, 44.253136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.080147, 42.067204, 44.214413>,  <37.891243, 42.413830, 44.149876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080147, 42.067204, 44.214413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078749, -0.140828, -0.986897,
		0.877936, 0.478775, 0.001735,
		0.472257, -0.866569, 0.161341,
		38.221825, 41.807232, 44.262814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324291, 42.327858, 43.582581>,  <37.891243, 42.413830, 44.149876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324291, 42.327858, 43.582581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.325615, 41.950466, 43.715141>,  <38.326408, 41.724030, 43.794678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.325615, 41.950466, 43.715141>,  <38.324291, 42.327858, 43.582581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325615, 41.950466, 43.715141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140701, -0.328548, -0.933948,
		0.990047, -0.043537, -0.133836,
		0.003310, -0.943483, 0.331403,
		38.326607, 41.667419, 43.814564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761913, 42.044575, 43.149708>,  <38.324291, 42.327858, 43.582581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761913, 42.044575, 43.149708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.547024, 41.744095, 43.303116>,  <38.418091, 41.563808, 43.395161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.547024, 41.744095, 43.303116>,  <38.761913, 42.044575, 43.149708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547024, 41.744095, 43.303116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061996, -0.418316, -0.906183,
		0.841156, -0.510603, 0.178160,
		-0.537227, -0.751196, 0.383525,
		38.385857, 41.518738, 43.418175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161362, 41.400795, 42.986195>,  <38.761913, 42.044575, 43.149708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161362, 41.400795, 42.986195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.779976, 41.303226, 43.057076>,  <38.551144, 41.244686, 43.099606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.779976, 41.303226, 43.057076>,  <39.161362, 41.400795, 42.986195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779976, 41.303226, 43.057076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030554, -0.506550, -0.861669,
		0.299947, -0.826987, 0.475526,
		-0.953466, -0.243926, 0.177206,
		38.493935, 41.230049, 43.110237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109329, 40.660728, 42.786072>,  <39.161362, 41.400795, 42.986195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109329, 40.660728, 42.786072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.720692, 40.755375, 42.788155>,  <38.487511, 40.812160, 42.789402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.720692, 40.755375, 42.788155>,  <39.109329, 40.660728, 42.786072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720692, 40.755375, 42.788155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140980, -0.560954, -0.815754,
		-0.190099, -0.793312, 0.578375,
		-0.971590, 0.236613, 0.005204,
		38.429214, 40.826359, 42.789715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832016, 40.059975, 42.761162>,  <39.109329, 40.660728, 42.786072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832016, 40.059975, 42.761162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.552677, 40.310463, 42.622509>,  <38.385075, 40.460758, 42.539318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.552677, 40.310463, 42.622509>,  <38.832016, 40.059975, 42.761162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552677, 40.310463, 42.622509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042513, -0.519723, -0.853277,
		-0.714494, -0.581148, 0.389570,
		-0.698349, 0.626223, -0.346632,
		38.343174, 40.498329, 42.518520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224358, 39.728981, 42.437180>,  <38.832016, 40.059975, 42.761162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224358, 39.728981, 42.437180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.244144, 40.094990, 42.277031>,  <38.256016, 40.314594, 42.180943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.244144, 40.094990, 42.277031>,  <38.224358, 39.728981, 42.437180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244144, 40.094990, 42.277031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243766, -0.377675, -0.893274,
		-0.968572, 0.141782, 0.204368,
		0.049465, 0.915019, -0.400367,
		38.258984, 40.369495, 42.156921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651134, 39.851833, 42.113903>,  <38.224358, 39.728981, 42.437180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651134, 39.851833, 42.113903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.885178, 40.122883, 41.935699>,  <38.025604, 40.285511, 41.828777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.885178, 40.122883, 41.935699>,  <37.651134, 39.851833, 42.113903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885178, 40.122883, 41.935699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253850, -0.368717, -0.894208,
		-0.770203, 0.636298, -0.043724,
		0.585105, 0.677622, -0.445511,
		38.060711, 40.326168, 41.802048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171501, 40.182007, 41.600864>,  <37.651134, 39.851833, 42.113903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171501, 40.182007, 41.600864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.545925, 40.279217, 41.499100>,  <37.770580, 40.337543, 41.438042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.545925, 40.279217, 41.499100>,  <37.171501, 40.182007, 41.600864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545925, 40.279217, 41.499100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214612, -0.178586, -0.960234,
		-0.278797, 0.953439, -0.115011,
		0.936063, 0.243028, -0.254408,
		37.826744, 40.352123, 41.422779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143951, 40.722351, 41.065506>,  <37.171501, 40.182007, 41.600864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143951, 40.722351, 41.065506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.477089, 40.501461, 41.050434>,  <37.676971, 40.368927, 41.041393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.477089, 40.501461, 41.050434>,  <37.143951, 40.722351, 41.065506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477089, 40.501461, 41.050434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173882, -0.196407, -0.964981,
		0.525483, 0.810233, -0.259598,
		0.832846, -0.552220, -0.037677,
		37.726944, 40.335796, 41.039131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456795, 41.018497, 40.452366>,  <37.143951, 40.722351, 41.065506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456795, 41.018497, 40.452366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.625549, 40.666882, 40.541176>,  <37.726803, 40.455910, 40.594463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.625549, 40.666882, 40.541176>,  <37.456795, 41.018497, 40.452366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625549, 40.666882, 40.541176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150009, -0.309189, -0.939095,
		0.894152, 0.362888, -0.262307,
		0.421889, -0.879042, 0.222026,
		37.752117, 40.403168, 40.607784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931808, 40.881824, 39.886131>,  <37.456795, 41.018497, 40.452366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931808, 40.881824, 39.886131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.825813, 40.538059, 40.061031>,  <37.762215, 40.331799, 40.165970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.825813, 40.538059, 40.061031>,  <37.931808, 40.881824, 39.886131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825813, 40.538059, 40.061031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137777, -0.415059, -0.899302,
		0.954358, -0.298548, -0.008422,
		-0.264989, -0.859416, 0.437248,
		37.746315, 40.280235, 40.192207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.464817, 41.459667, 35.439678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.103289, 41.584190, 35.322243>,  <29.886372, 41.658905, 35.251781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.103289, 41.584190, 35.322243>,  <30.464817, 41.459667, 35.439678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103289, 41.584190, 35.322243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421790, -0.763770, 0.488619,
		-0.072126, 0.565458, 0.821617,
		-0.903821, 0.311308, -0.293592,
		29.832142, 41.677582, 35.234165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051264, 41.361843, 36.095993>,  <30.464817, 41.459667, 35.439678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051264, 41.361843, 36.095993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.824879, 41.353920, 35.766315>,  <29.689047, 41.349167, 35.568508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.824879, 41.353920, 35.766315>,  <30.051264, 41.361843, 36.095993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824879, 41.353920, 35.766315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504841, -0.782029, 0.365468,
		-0.651782, 0.622928, 0.432599,
		-0.565965, -0.019812, -0.824191,
		29.655088, 41.347977, 35.519058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379509, 41.385479, 36.266323>,  <30.051264, 41.361843, 36.095993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379509, 41.385479, 36.266323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.348740, 41.218472, 35.904160>,  <29.330278, 41.118267, 35.686863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.348740, 41.218472, 35.904160>,  <29.379509, 41.385479, 36.266323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348740, 41.218472, 35.904160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514052, -0.761489, 0.394821,
		-0.854303, 0.495798, -0.156049,
		-0.076922, -0.417514, -0.905409,
		29.325663, 41.093216, 35.632538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696991, 41.183277, 36.264103>,  <29.379509, 41.385479, 36.266323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696991, 41.183277, 36.264103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.885067, 40.959900, 35.990734>,  <28.997913, 40.825874, 35.826714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.885067, 40.959900, 35.990734>,  <28.696991, 41.183277, 36.264103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885067, 40.959900, 35.990734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478005, -0.812082, 0.334714,
		-0.741910, 0.169296, -0.648774,
		0.470192, -0.558445, -0.683417,
		29.026125, 40.792366, 35.785709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197992, 40.792114, 36.146145>,  <28.696991, 41.183277, 36.264103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197992, 40.792114, 36.146145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.521894, 40.607021, 36.001827>,  <28.716236, 40.495964, 35.915237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.521894, 40.607021, 36.001827>,  <28.197992, 40.792114, 36.146145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.521894, 40.607021, 36.001827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449184, -0.884475, 0.126247,
		-0.377532, 0.059834, -0.924061,
		0.809755, -0.462736, -0.360794,
		28.764820, 40.468201, 35.893589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929857, 40.358212, 35.642689>,  <28.197992, 40.792114, 36.146145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929857, 40.358212, 35.642689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.293795, 40.212749, 35.722630>,  <28.512157, 40.125473, 35.770596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.293795, 40.212749, 35.722630>,  <27.929857, 40.358212, 35.642689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293795, 40.212749, 35.722630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383649, -0.920731, 0.071188,
		0.158121, -0.141443, -0.977237,
		0.909841, -0.363660, 0.199851,
		28.566748, 40.103653, 35.782585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105198, 39.880257, 35.183899>,  <27.929857, 40.358212, 35.642689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105198, 39.880257, 35.183899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.338921, 39.802933, 35.499168>,  <28.479155, 39.756538, 35.688332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.338921, 39.802933, 35.499168>,  <28.105198, 39.880257, 35.183899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338921, 39.802933, 35.499168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500937, -0.850018, 0.162887,
		0.638475, -0.490001, -0.593505,
		0.584305, -0.193310, 0.788175,
		28.514212, 39.744938, 35.735622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354900, 39.188190, 35.020351>,  <28.105198, 39.880257, 35.183899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354900, 39.188190, 35.020351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.413481, 39.224792, 35.414341>,  <28.448629, 39.246754, 35.650734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.413481, 39.224792, 35.414341>,  <28.354900, 39.188190, 35.020351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413481, 39.224792, 35.414341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399120, -0.905604, 0.143477,
		0.905128, -0.414136, -0.096103,
		0.146450, 0.091509, 0.984977,
		28.457417, 39.252247, 35.709835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605961, 38.555759, 35.259274>,  <28.354900, 39.188190, 35.020351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605961, 38.555759, 35.259274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.472071, 38.735779, 35.590435>,  <28.391737, 38.843788, 35.789131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.472071, 38.735779, 35.590435>,  <28.605961, 38.555759, 35.259274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472071, 38.735779, 35.590435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396579, -0.864264, 0.309472,
		0.854801, -0.224739, 0.467769,
		-0.334726, 0.450044, 0.827900,
		28.371653, 38.870792, 35.838806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807917, 38.118221, 35.807457>,  <28.605961, 38.555759, 35.259274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807917, 38.118221, 35.807457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.502832, 38.363190, 35.890602>,  <28.319782, 38.510170, 35.940487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.502832, 38.363190, 35.890602>,  <28.807917, 38.118221, 35.807457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502832, 38.363190, 35.890602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579314, -0.789832, 0.201398,
		0.287515, 0.033193, 0.957201,
		-0.762713, 0.612424, 0.207860,
		28.274019, 38.546917, 35.952961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497189, 37.876781, 36.390198>,  <28.807917, 38.118221, 35.807457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497189, 37.876781, 36.390198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.223818, 38.095577, 36.196815>,  <28.059795, 38.226856, 36.080788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.223818, 38.095577, 36.196815>,  <28.497189, 37.876781, 36.390198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223818, 38.095577, 36.196815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724318, -0.590680, 0.355612,
		-0.091051, 0.593210, 0.799883,
		-0.683427, 0.546991, -0.483455,
		28.018789, 38.259674, 36.051781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052107, 38.107452, 36.888710>,  <28.497189, 37.876781, 36.390198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052107, 38.107452, 36.888710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.871225, 38.133881, 36.532925>,  <27.762697, 38.149738, 36.319454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.871225, 38.133881, 36.532925>,  <28.052107, 38.107452, 36.888710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871225, 38.133881, 36.532925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791432, -0.489571, 0.365999,
		-0.411276, 0.869457, 0.273673,
		-0.452203, 0.066068, -0.889465,
		27.735565, 38.153702, 36.266087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300173, 37.965694, 37.107643>,  <28.052107, 38.107452, 36.888710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300173, 37.965694, 37.107643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.323084, 37.918182, 36.711136>,  <27.336830, 37.889675, 36.473232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.323084, 37.918182, 36.711136>,  <27.300173, 37.965694, 37.107643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323084, 37.918182, 36.711136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714513, -0.698337, 0.042394,
		-0.697275, 0.705845, -0.124867,
		0.057275, -0.118779, -0.991268,
		27.340267, 37.882549, 36.413757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604269, 37.903000, 36.892002>,  <27.300173, 37.965694, 37.107643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604269, 37.903000, 36.892002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.824034, 37.743908, 36.598076>,  <26.955893, 37.648453, 36.421719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.824034, 37.743908, 36.598076>,  <26.604269, 37.903000, 36.892002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824034, 37.743908, 36.598076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608522, -0.793121, -0.025698,
		-0.572580, 0.461273, -0.677776,
		0.549412, -0.397727, -0.734819,
		26.988857, 37.624588, 36.377628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146139, 37.757568, 36.396416>,  <26.604269, 37.903000, 36.892002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146139, 37.757568, 36.396416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.468864, 37.525150, 36.353630>,  <26.662500, 37.385700, 36.327957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.468864, 37.525150, 36.353630>,  <26.146139, 37.757568, 36.396416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.468864, 37.525150, 36.353630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588456, -0.806458, -0.057836,
		-0.052657, 0.109606, -0.992579,
		0.806813, -0.581044, -0.106964,
		26.710909, 37.350838, 36.321541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907175, 37.222988, 35.873047>,  <26.146139, 37.757568, 36.396416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907175, 37.222988, 35.873047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.241453, 37.069218, 36.029934>,  <26.442020, 36.976955, 36.124065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.241453, 37.069218, 36.029934>,  <25.907175, 37.222988, 35.873047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.241453, 37.069218, 36.029934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462496, -0.877747, 0.125132,
		0.296164, -0.285971, -0.911322,
		0.835694, -0.384423, 0.392217,
		26.492161, 36.953892, 36.147598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954742, 36.535583, 35.604134>,  <25.907175, 37.222988, 35.873047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954742, 36.535583, 35.604134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.190531, 36.499355, 35.925213>,  <26.332003, 36.477619, 36.117859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.190531, 36.499355, 35.925213>,  <25.954742, 36.535583, 35.604134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.190531, 36.499355, 35.925213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447974, -0.863544, 0.231542,
		0.672194, -0.496074, -0.549604,
		0.589469, -0.090567, 0.802698,
		26.367373, 36.472183, 36.166023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256617, 35.922623, 35.493835>,  <25.954742, 36.535583, 35.604134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.256617, 35.922623, 35.493835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.271051, 36.021465, 35.881161>,  <26.279713, 36.080772, 36.113556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.271051, 36.021465, 35.881161>,  <26.256617, 35.922623, 35.493835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271051, 36.021465, 35.881161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370306, -0.896665, 0.242623,
		0.928208, -0.367329, 0.059145,
		0.036089, 0.247106, 0.968316,
		26.281878, 36.095596, 36.171654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508003, 35.356209, 35.811916>,  <26.256617, 35.922623, 35.493835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508003, 35.356209, 35.811916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.329178, 35.529400, 36.125008>,  <26.221884, 35.633312, 36.312862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.329178, 35.529400, 36.125008>,  <26.508003, 35.356209, 35.811916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329178, 35.529400, 36.125008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199285, -0.901264, 0.384718,
		0.872021, 0.016006, 0.489206,
		-0.447062, 0.432974, 0.782732,
		26.195059, 35.659290, 36.359829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.705898, 34.951984, 36.351311>,  <26.508003, 35.356209, 35.811916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.705898, 34.951984, 36.351311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.394373, 35.150223, 36.505104>,  <26.207457, 35.269165, 36.597382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.394373, 35.150223, 36.505104>,  <26.705898, 34.951984, 36.351311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.394373, 35.150223, 36.505104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283122, -0.824722, 0.489566,
		0.559723, 0.272424, 0.782621,
		-0.778815, 0.495599, 0.384486,
		26.160728, 35.298901, 36.620449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546274, 34.871704, 36.392147>,  <26.705898, 34.951984, 36.351311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546274, 34.871704, 36.392147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.801468, 34.660339, 36.616199>,  <27.954584, 34.533520, 36.750633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.801468, 34.660339, 36.616199>,  <27.546274, 34.871704, 36.392147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801468, 34.660339, 36.616199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602973, 0.795236, 0.063425,
		-0.478953, 0.297282, 0.825970,
		0.637986, -0.528416, 0.560134,
		27.992865, 34.501816, 36.784241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937590, 35.349628, 36.672756>,  <27.546274, 34.871704, 36.392147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937590, 35.349628, 36.672756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.179277, 35.041218, 36.753189>,  <28.324289, 34.856171, 36.801449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.179277, 35.041218, 36.753189>,  <27.937590, 35.349628, 36.672756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179277, 35.041218, 36.753189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791217, 0.610424, -0.036867,
		-0.094321, 0.181377, 0.978880,
		0.604218, -0.771029, 0.201084,
		28.360542, 34.809910, 36.813515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338919, 35.582130, 37.220524>,  <27.937590, 35.349628, 36.672756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338919, 35.582130, 37.220524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.542135, 35.289394, 37.038841>,  <28.664064, 35.113754, 36.929832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.542135, 35.289394, 37.038841>,  <28.338919, 35.582130, 37.220524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542135, 35.289394, 37.038841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793627, 0.602667, -0.083356,
		0.334740, -0.318125, 0.886987,
		0.508040, -0.731839, -0.454209,
		28.694548, 35.069843, 36.902580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989588, 35.462765, 37.620178>,  <28.338919, 35.582130, 37.220524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989588, 35.462765, 37.620178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.027779, 35.352154, 37.237679>,  <29.050694, 35.285786, 37.008179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.027779, 35.352154, 37.237679>,  <28.989588, 35.462765, 37.620178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027779, 35.352154, 37.237679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899819, 0.434785, -0.035886,
		0.425687, -0.857026, 0.290338,
		0.095479, -0.276528, -0.956251,
		29.056423, 35.269196, 36.950802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744490, 35.280563, 37.568256>,  <28.989588, 35.462765, 37.620178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744490, 35.280563, 37.568256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.599371, 35.314888, 37.197094>,  <29.512300, 35.335484, 36.974396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.599371, 35.314888, 37.197094>,  <29.744490, 35.280563, 37.568256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599371, 35.314888, 37.197094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721536, 0.656010, -0.221442,
		0.589716, -0.749858, -0.299913,
		-0.362797, 0.085810, -0.927909,
		29.490532, 35.340630, 36.918720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286316, 35.081955, 37.202778>,  <29.744490, 35.280563, 37.568256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286316, 35.081955, 37.202778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.067688, 35.326084, 36.973423>,  <29.936512, 35.472561, 36.835812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.067688, 35.326084, 36.973423>,  <30.286316, 35.081955, 37.202778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067688, 35.326084, 36.973423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789228, 0.604342, -0.109041,
		0.279969, -0.512127, -0.811999,
		-0.546568, 0.610324, -0.573382,
		29.903717, 35.509182, 36.801407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698044, 35.327244, 36.726803>,  <30.286316, 35.081955, 37.202778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698044, 35.327244, 36.726803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.394569, 35.582962, 36.676689>,  <30.212484, 35.736393, 36.646622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.394569, 35.582962, 36.676689>,  <30.698044, 35.327244, 36.726803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394569, 35.582962, 36.676689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651433, 0.746071, -0.137889,
		0.005317, -0.186227, -0.982492,
		-0.758687, 0.639295, -0.125281,
		30.166964, 35.774750, 36.639103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897123, 35.591393, 36.138954>,  <30.698044, 35.327244, 36.726803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897123, 35.591393, 36.138954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.655569, 35.873829, 36.286877>,  <30.510637, 36.043293, 36.375629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.655569, 35.873829, 36.286877>,  <30.897123, 35.591393, 36.138954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655569, 35.873829, 36.286877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667087, 0.701650, -0.250366,
		-0.436254, 0.095499, -0.894741,
		-0.603885, 0.706093, 0.369804,
		30.474403, 36.085655, 36.397820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105896, 36.158806, 35.847824>,  <30.897123, 35.591393, 36.138954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105896, 36.158806, 35.847824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.851198, 36.307873, 36.117840>,  <30.698380, 36.397312, 36.279850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.851198, 36.307873, 36.117840>,  <31.105896, 36.158806, 35.847824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851198, 36.307873, 36.117840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554785, 0.829418, 0.065418,
		-0.535510, 0.416156, -0.734876,
		-0.636744, 0.372666, 0.675039,
		30.660175, 36.419674, 36.320351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672928, 36.899540, 35.667229>,  <31.105896, 36.158806, 35.847824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672928, 36.899540, 35.667229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.732307, 36.863159, 36.061119>,  <30.767935, 36.841331, 36.297455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.732307, 36.863159, 36.061119>,  <30.672928, 36.899540, 35.667229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732307, 36.863159, 36.061119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498370, 0.866950, 0.004946,
		-0.854161, 0.490026, 0.174024,
		0.148446, -0.090953, 0.984729,
		30.776842, 36.835873, 36.356537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804131, 37.551258, 35.793823>,  <30.672928, 36.899540, 35.667229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804131, 37.551258, 35.793823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.881647, 37.399063, 36.155525>,  <30.928156, 37.307747, 36.372547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.881647, 37.399063, 36.155525>,  <30.804131, 37.551258, 35.793823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881647, 37.399063, 36.155525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380940, 0.878585, 0.288049,
		-0.904063, 0.288646, 0.315205,
		0.193790, -0.380488, 0.904253,
		30.939785, 37.284916, 36.426800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555464, 38.051216, 36.314480>,  <30.804131, 37.551258, 35.793823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555464, 38.051216, 36.314480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.835823, 37.821148, 36.483204>,  <31.004038, 37.683109, 36.584438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.835823, 37.821148, 36.483204>,  <30.555464, 38.051216, 36.314480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835823, 37.821148, 36.483204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412403, 0.809303, 0.418274,
		-0.581952, -0.119209, 0.804439,
		0.700897, -0.575168, 0.421813,
		31.046091, 37.648598, 36.609749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581604, 38.277443, 36.991066>,  <30.555464, 38.051216, 36.314480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581604, 38.277443, 36.991066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.934126, 38.118275, 36.889111>,  <31.145639, 38.022774, 36.827938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.934126, 38.118275, 36.889111>,  <30.581604, 38.277443, 36.991066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934126, 38.118275, 36.889111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465431, 0.824218, 0.322550,
		0.081733, -0.402896, 0.911589,
		0.881302, -0.397919, -0.254886,
		31.198517, 37.998898, 36.812645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051159, 38.470528, 37.570671>,  <30.581604, 38.277443, 36.991066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051159, 38.470528, 37.570671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.287544, 38.344234, 37.273735>,  <31.429375, 38.268459, 37.095573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.287544, 38.344234, 37.273735>,  <31.051159, 38.470528, 37.570671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287544, 38.344234, 37.273735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549455, 0.831307, 0.083836,
		0.590645, -0.457428, 0.664754,
		0.590964, -0.315735, -0.742343,
		31.464834, 38.249516, 37.051033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747732, 38.543671, 37.794167>,  <31.051159, 38.470528, 37.570671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747732, 38.543671, 37.794167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.733000, 38.556595, 37.394646>,  <31.724161, 38.564350, 37.154934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.733000, 38.556595, 37.394646>,  <31.747732, 38.543671, 37.794167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733000, 38.556595, 37.394646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586144, 0.810194, 0.004598,
		0.809369, -0.585271, -0.048781,
		-0.036831, 0.032315, -0.998799,
		31.721951, 38.566288, 37.095005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438431, 38.690529, 37.582272>,  <31.747732, 38.543671, 37.794167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438431, 38.690529, 37.582272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.222382, 38.780312, 37.257832>,  <32.092751, 38.834183, 37.063168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.222382, 38.780312, 37.257832>,  <32.438431, 38.690529, 37.582272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222382, 38.780312, 37.257832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374156, 0.927336, 0.007466,
		0.753840, -0.299447, -0.584856,
		-0.540122, 0.224455, -0.811103,
		32.060345, 38.847649, 37.014500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900032, 38.875866, 37.078625>,  <32.438431, 38.690529, 37.582272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900032, 38.875866, 37.078625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.561234, 39.066898, 36.985226>,  <32.357956, 39.181519, 36.929188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.561234, 39.066898, 36.985226>,  <32.900032, 38.875866, 37.078625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561234, 39.066898, 36.985226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505702, 0.859275, -0.076884,
		0.163921, -0.183201, -0.969313,
		-0.846992, 0.477581, -0.233498,
		32.307137, 39.210171, 36.915176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306641, 39.338634, 36.716507>,  <32.900032, 38.875866, 37.078625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306641, 39.338634, 36.716507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.931648, 39.467381, 36.769463>,  <32.706654, 39.544628, 36.801235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.931648, 39.467381, 36.769463>,  <33.306641, 39.338634, 36.716507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931648, 39.467381, 36.769463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284225, 0.927589, -0.242478,
		-0.200847, -0.189691, -0.961082,
		-0.937484, 0.321864, 0.132388,
		32.650402, 39.563938, 36.809177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149540, 39.794559, 36.105453>,  <33.306641, 39.338634, 36.716507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149540, 39.794559, 36.105453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.863232, 39.880520, 36.371231>,  <32.691444, 39.932098, 36.530697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.863232, 39.880520, 36.371231>,  <33.149540, 39.794559, 36.105453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863232, 39.880520, 36.371231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112873, 0.903357, -0.413771,
		-0.689151, -0.371164, -0.622341,
		-0.715773, 0.214905, 0.664443,
		32.648499, 39.944992, 36.570564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669830, 40.097908, 35.696983>,  <33.149540, 39.794559, 36.105453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669830, 40.097908, 35.696983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.619286, 40.219448, 36.074703>,  <32.588959, 40.292370, 36.301334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.619286, 40.219448, 36.074703>,  <32.669830, 40.097908, 35.696983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619286, 40.219448, 36.074703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094933, 0.951269, -0.293385,
		-0.987431, 0.052574, -0.149048,
		-0.126360, 0.303848, 0.944304,
		32.581379, 40.310604, 36.357994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090652, 40.497772, 35.717522>,  <32.669830, 40.097908, 35.696983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090652, 40.497772, 35.717522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.294781, 40.614990, 36.040928>,  <32.417259, 40.685322, 36.234970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.294781, 40.614990, 36.040928>,  <32.090652, 40.497772, 35.717522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294781, 40.614990, 36.040928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074705, 0.951702, -0.297795,
		-0.856733, 0.091571, 0.507566,
		0.510321, 0.293049, 0.808514,
		32.447876, 40.702904, 36.283482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778559, 41.081558, 35.991146>,  <32.090652, 40.497772, 35.717522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778559, 41.081558, 35.991146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.118813, 41.090935, 36.201241>,  <32.322964, 41.096561, 36.327297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.118813, 41.090935, 36.201241>,  <31.778559, 41.081558, 35.991146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118813, 41.090935, 36.201241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139843, 0.952931, -0.269010,
		-0.506818, 0.302280, 0.807318,
		0.850635, 0.023441, 0.525234,
		32.374004, 41.097965, 36.358810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.453228, 39.546700, 46.411884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.067215, 39.586834, 46.315018>,  <40.835606, 39.610912, 46.256897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.067215, 39.586834, 46.315018>,  <41.453228, 39.546700, 46.411884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067215, 39.586834, 46.315018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173867, 0.446383, 0.877789,
		0.196171, 0.889200, -0.413329,
		-0.965032, 0.100332, -0.242169,
		40.777706, 39.616932, 46.242367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334824, 40.281845, 46.419178>,  <41.453228, 39.546700, 46.411884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334824, 40.281845, 46.419178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.975620, 40.115307, 46.476082>,  <40.760098, 40.015385, 46.510223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.975620, 40.115307, 46.476082>,  <41.334824, 40.281845, 46.419178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975620, 40.115307, 46.476082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127362, 0.555483, 0.821717,
		-0.421142, 0.719789, -0.551854,
		-0.898008, -0.416345, 0.142264,
		40.706219, 39.990402, 46.518761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882359, 40.774353, 46.437271>,  <41.334824, 40.281845, 46.419178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882359, 40.774353, 46.437271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.690048, 40.487442, 46.639011>,  <40.574661, 40.315296, 46.760056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.690048, 40.487442, 46.639011>,  <40.882359, 40.774353, 46.437271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690048, 40.487442, 46.639011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288834, 0.672636, 0.681275,
		-0.827909, 0.181862, -0.530558,
		-0.480771, -0.717277, 0.504354,
		40.545818, 40.272259, 46.790318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514557, 41.089241, 46.885178>,  <40.882359, 40.774353, 46.437271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514557, 41.089241, 46.885178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.432514, 40.732220, 47.045815>,  <40.383289, 40.518005, 47.142197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.432514, 40.732220, 47.045815>,  <40.514557, 41.089241, 46.885178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432514, 40.732220, 47.045815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362747, 0.450420, 0.815804,
		-0.909037, 0.021646, -0.416153,
		-0.205102, -0.892555, 0.401596,
		40.370983, 40.464455, 47.166294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804874, 41.077042, 47.105618>,  <40.514557, 41.089241, 46.885178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804874, 41.077042, 47.105618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.965000, 40.774513, 47.312588>,  <40.061077, 40.592995, 47.436768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.965000, 40.774513, 47.312588>,  <39.804874, 41.077042, 47.105618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965000, 40.774513, 47.312588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460024, 0.322478, 0.827276,
		-0.792544, -0.569198, -0.218833,
		0.400315, -0.756321, 0.517423,
		40.085094, 40.547619, 47.467815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305782, 40.902458, 47.565880>,  <39.804874, 41.077042, 47.105618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305782, 40.902458, 47.565880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.638409, 40.757324, 47.734093>,  <39.837986, 40.670246, 47.835022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.638409, 40.757324, 47.734093>,  <39.305782, 40.902458, 47.565880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638409, 40.757324, 47.734093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302090, 0.339902, 0.890622,
		-0.466085, -0.867652, 0.173045,
		0.831569, -0.362831, 0.420532,
		39.887878, 40.648476, 47.860252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095116, 40.699200, 48.239517>,  <39.305782, 40.902458, 47.565880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095116, 40.699200, 48.239517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.490864, 40.724823, 48.291740>,  <39.728313, 40.740196, 48.323074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.490864, 40.724823, 48.291740>,  <39.095116, 40.699200, 48.239517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490864, 40.724823, 48.291740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140092, 0.178922, 0.973838,
		0.039023, -0.981775, 0.185994,
		0.989369, 0.064058, 0.130557,
		39.787674, 40.744041, 48.330906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225517, 40.360489, 48.867447>,  <39.095116, 40.699200, 48.239517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225517, 40.360489, 48.867447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.547295, 40.588242, 48.799713>,  <39.740360, 40.724892, 48.759075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.547295, 40.588242, 48.799713>,  <39.225517, 40.360489, 48.867447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547295, 40.588242, 48.799713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017652, 0.307843, 0.951273,
		0.593766, -0.762257, 0.257693,
		0.804444, 0.569383, -0.169331,
		39.788628, 40.759056, 48.748913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724010, 40.097351, 49.292965>,  <39.225517, 40.360489, 48.867447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724010, 40.097351, 49.292965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.822235, 40.474865, 49.204441>,  <39.881168, 40.701374, 49.151325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.822235, 40.474865, 49.204441>,  <39.724010, 40.097351, 49.292965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822235, 40.474865, 49.204441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134831, 0.192829, 0.971925,
		0.959959, -0.268506, -0.079900,
		0.245561, 0.943781, -0.221310,
		39.895905, 40.757999, 49.138046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395748, 40.260826, 49.553329>,  <39.724010, 40.097351, 49.292965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395748, 40.260826, 49.553329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.189262, 40.601257, 49.514999>,  <40.065372, 40.805515, 49.492001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.189262, 40.601257, 49.514999>,  <40.395748, 40.260826, 49.553329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189262, 40.601257, 49.514999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243964, 0.253367, 0.936102,
		0.820977, 0.459853, -0.338425,
		-0.516215, 0.851082, -0.095821,
		40.034397, 40.856583, 49.486252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884212, 40.781677, 49.730019>,  <40.395748, 40.260826, 49.553329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884212, 40.781677, 49.730019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.514305, 40.929241, 49.767345>,  <40.292362, 41.017780, 49.789742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.514305, 40.929241, 49.767345>,  <40.884212, 40.781677, 49.730019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514305, 40.929241, 49.767345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281949, 0.499586, 0.819096,
		0.255554, 0.783785, -0.566016,
		-0.924769, 0.368911, 0.093316,
		40.236874, 41.039913, 49.795341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915497, 41.539093, 49.800667>,  <40.884212, 40.781677, 49.730019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915497, 41.539093, 49.800667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.579887, 41.397602, 49.966034>,  <40.378521, 41.312706, 50.065254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.579887, 41.397602, 49.966034>,  <40.915497, 41.539093, 49.800667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579887, 41.397602, 49.966034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138154, 0.596423, 0.790691,
		-0.526259, 0.720526, -0.451546,
		-0.839026, -0.353726, 0.413417,
		40.328178, 41.291485, 50.090057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395565, 42.054775, 49.935616>,  <40.915497, 41.539093, 49.800667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395565, 42.054775, 49.935616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.299423, 41.747894, 50.173481>,  <40.241737, 41.563766, 50.316200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.299423, 41.747894, 50.173481>,  <40.395565, 42.054775, 49.935616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299423, 41.747894, 50.173481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206827, 0.639035, 0.740848,
		-0.948395, 0.055070, -0.312271,
		-0.240351, -0.767203, 0.594668,
		40.227318, 41.517735, 50.351883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958096, 42.313900, 50.360916>,  <40.395565, 42.054775, 49.935616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958096, 42.313900, 50.360916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.069321, 41.991230, 50.569515>,  <40.136055, 41.797626, 50.694675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.069321, 41.991230, 50.569515>,  <39.958096, 42.313900, 50.360916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069321, 41.991230, 50.569515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145573, 0.501245, 0.852973,
		-0.949469, -0.313092, 0.021946,
		0.278060, -0.806676, 0.521494,
		40.152740, 41.749226, 50.725964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030922, 43.064251, 50.479446>,  <39.958096, 42.313900, 50.360916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030922, 43.064251, 50.479446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.754929, 43.353489, 50.492428>,  <39.589333, 43.527031, 50.500217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.754929, 43.353489, 50.492428>,  <40.030922, 43.064251, 50.479446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754929, 43.353489, 50.492428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311927, -0.256588, -0.914803,
		-0.653165, -0.641321, 0.402595,
		-0.689983, 0.723098, 0.032451,
		39.547932, 43.570419, 50.502163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286121, 42.857750, 50.326729>,  <40.030922, 43.064251, 50.479446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286121, 42.857750, 50.326729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.338814, 43.229450, 50.188660>,  <39.370430, 43.452469, 50.105820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.338814, 43.229450, 50.188660>,  <39.286121, 42.857750, 50.326729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338814, 43.229450, 50.188660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374896, -0.275644, -0.885140,
		-0.917660, 0.246005, 0.312061,
		0.131731, 0.929248, -0.345174,
		39.378334, 43.508224, 50.085106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693260, 42.956066, 49.933563>,  <39.286121, 42.857750, 50.326729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693260, 42.956066, 49.933563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.926411, 43.249573, 49.793938>,  <39.066299, 43.425674, 49.710163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.926411, 43.249573, 49.793938>,  <38.693260, 42.956066, 49.933563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926411, 43.249573, 49.793938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305636, -0.200054, -0.930894,
		-0.752889, 0.649282, 0.107658,
		0.582876, 0.733765, -0.349063,
		39.101273, 43.469704, 49.689220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305248, 43.476936, 49.589577>,  <38.693260, 42.956066, 49.933563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305248, 43.476936, 49.589577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.658619, 43.521034, 49.407410>,  <38.870640, 43.547493, 49.298111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.658619, 43.521034, 49.407410>,  <38.305248, 43.476936, 49.589577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658619, 43.521034, 49.407410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437608, -0.153321, -0.885998,
		-0.167506, 0.982007, -0.087202,
		0.883426, 0.110249, -0.455416,
		38.923645, 43.554108, 49.270786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152958, 43.689396, 48.899559>,  <38.305248, 43.476936, 49.589577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152958, 43.689396, 48.899559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.524662, 43.558670, 48.830658>,  <38.747684, 43.480236, 48.789318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.524662, 43.558670, 48.830658>,  <38.152958, 43.689396, 48.899559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524662, 43.558670, 48.830658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266320, -0.269466, -0.925453,
		0.256030, 0.905861, -0.337439,
		0.929259, -0.326810, -0.172257,
		38.803440, 43.460629, 48.778980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291691, 43.830414, 48.246719>,  <38.152958, 43.689396, 48.899559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291691, 43.830414, 48.246719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.550632, 43.537354, 48.330765>,  <38.705997, 43.361515, 48.381191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.550632, 43.537354, 48.330765>,  <38.291691, 43.830414, 48.246719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550632, 43.537354, 48.330765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072030, -0.333250, -0.940083,
		0.758776, 0.593434, -0.268505,
		0.647357, -0.732653, 0.210117,
		38.744839, 43.317558, 48.393799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793156, 43.871998, 47.710045>,  <38.291691, 43.830414, 48.246719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793156, 43.871998, 47.710045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.912426, 43.515190, 47.845928>,  <38.983990, 43.301105, 47.927456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.912426, 43.515190, 47.845928>,  <38.793156, 43.871998, 47.710045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912426, 43.515190, 47.845928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159774, -0.397516, -0.903578,
		0.941044, 0.215150, -0.261051,
		0.298176, -0.892016, 0.339704,
		39.001881, 43.247585, 47.947838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271660, 43.677147, 47.288677>,  <38.793156, 43.871998, 47.710045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271660, 43.677147, 47.288677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.143154, 43.331360, 47.443325>,  <39.066051, 43.123886, 47.536114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.143154, 43.331360, 47.443325>,  <39.271660, 43.677147, 47.288677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143154, 43.331360, 47.443325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230173, -0.324741, -0.917368,
		0.918590, -0.383712, -0.094649,
		-0.321268, -0.864470, 0.386624,
		39.046772, 43.072018, 47.559311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520210, 43.216122, 46.836609>,  <39.271660, 43.677147, 47.288677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520210, 43.216122, 46.836609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.265598, 42.988541, 47.044888>,  <39.112831, 42.851994, 47.169853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.265598, 42.988541, 47.044888>,  <39.520210, 43.216122, 46.836609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265598, 42.988541, 47.044888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014288, -0.666316, -0.745533,
		0.771117, -0.481996, 0.416003,
		-0.636533, -0.568949, 0.520695,
		39.074638, 42.817856, 47.201096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826416, 42.491264, 46.957153>,  <39.520210, 43.216122, 46.836609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826416, 42.491264, 46.957153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.427593, 42.467216, 46.976170>,  <39.188301, 42.452785, 46.987579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.427593, 42.467216, 46.976170>,  <39.826416, 42.491264, 46.957153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427593, 42.467216, 46.976170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007139, -0.690405, -0.723388,
		0.076316, -0.720921, 0.688803,
		-0.997058, -0.060123, 0.047542,
		39.128475, 42.449181, 46.990433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678497, 41.843334, 46.672443>,  <39.826416, 42.491264, 46.957153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678497, 41.843334, 46.672443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.315651, 42.010853, 46.655720>,  <39.097942, 42.111362, 46.645687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.315651, 42.010853, 46.655720>,  <39.678497, 41.843334, 46.672443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315651, 42.010853, 46.655720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151439, -0.417467, -0.895984,
		-0.392682, -0.806434, 0.442114,
		-0.907120, 0.418790, -0.041807,
		39.043514, 42.136494, 46.643177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173477, 41.288548, 46.430534>,  <39.678497, 41.843334, 46.672443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173477, 41.288548, 46.430534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.985733, 41.632137, 46.348701>,  <38.873085, 41.838291, 46.299603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.985733, 41.632137, 46.348701>,  <39.173477, 41.288548, 46.430534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985733, 41.632137, 46.348701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236280, -0.345423, -0.908215,
		-0.850805, -0.377944, 0.365089,
		-0.469365, 0.858977, -0.204587,
		38.844925, 41.889832, 46.287327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422466, 41.155437, 46.310612>,  <39.173477, 41.288548, 46.430534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422466, 41.155437, 46.310612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.512100, 41.501747, 46.131626>,  <38.565880, 41.709534, 46.024235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.512100, 41.501747, 46.131626>,  <38.422466, 41.155437, 46.310612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512100, 41.501747, 46.131626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404228, -0.335212, -0.851019,
		-0.886783, 0.371582, 0.274852,
		0.224090, 0.865771, -0.447464,
		38.579327, 41.761478, 45.997387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829140, 41.354843, 45.958488>,  <38.422466, 41.155437, 46.310612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829140, 41.354843, 45.958488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.098579, 41.565521, 45.751087>,  <38.260242, 41.691929, 45.626644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.098579, 41.565521, 45.751087>,  <37.829140, 41.354843, 45.958488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098579, 41.565521, 45.751087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246616, -0.501163, -0.829468,
		-0.696735, 0.686604, -0.207692,
		0.673603, 0.526698, -0.518505,
		38.300659, 41.723530, 45.595535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131313, 41.539951, 46.036961>,  <37.829140, 41.354843, 45.958488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131313, 41.539951, 46.036961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.744259, 41.509552, 46.133213>,  <36.512028, 41.491310, 46.190964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.744259, 41.509552, 46.133213>,  <37.131313, 41.539951, 46.036961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744259, 41.509552, 46.133213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200367, 0.348287, 0.915724,
		-0.153405, 0.934302, -0.321787,
		-0.967636, -0.076001, 0.240632,
		36.453968, 41.486752, 46.205402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962654, 42.197445, 46.415497>,  <37.131313, 41.539951, 46.036961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962654, 42.197445, 46.415497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.679546, 41.934414, 46.518757>,  <36.509682, 41.776596, 46.580715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.679546, 41.934414, 46.518757>,  <36.962654, 42.197445, 46.415497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679546, 41.934414, 46.518757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045611, 0.322131, 0.945596,
		-0.704966, 0.681042, -0.198002,
		-0.707773, -0.657582, 0.258154,
		36.467213, 41.737141, 46.596203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347836, 42.522972, 46.659775>,  <36.962654, 42.197445, 46.415497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347836, 42.522972, 46.659775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.350288, 42.153519, 46.813065>,  <36.351761, 41.931847, 46.905037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.350288, 42.153519, 46.813065>,  <36.347836, 42.522972, 46.659775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350288, 42.153519, 46.813065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032241, 0.382849, 0.923248,
		-0.999461, -0.018020, -0.027430,
		0.006135, -0.923635, 0.383223,
		36.352127, 41.876427, 46.928032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822765, 42.469273, 47.080650>,  <36.347836, 42.522972, 46.659775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822765, 42.469273, 47.080650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034111, 42.174435, 47.249184>,  <36.160919, 41.997532, 47.350304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034111, 42.174435, 47.249184>,  <35.822765, 42.469273, 47.080650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034111, 42.174435, 47.249184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216780, 0.362685, 0.906348,
		-0.820879, -0.570214, 0.031840,
		0.528360, -0.737099, 0.421331,
		36.192619, 41.953304, 47.375584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462791, 42.284332, 47.700630>,  <35.822765, 42.469273, 47.080650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462791, 42.284332, 47.700630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818588, 42.119381, 47.779373>,  <36.032066, 42.020409, 47.826618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818588, 42.119381, 47.779373>,  <35.462791, 42.284332, 47.700630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818588, 42.119381, 47.779373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088912, 0.266388, 0.959756,
		-0.448225, -0.871195, 0.200284,
		0.889488, -0.412380, 0.196861,
		36.085434, 41.995667, 47.838432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357380, 41.810776, 48.306583>,  <35.462791, 42.284332, 47.700630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357380, 41.810776, 48.306583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750217, 41.886032, 48.310509>,  <35.985920, 41.931187, 48.312862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750217, 41.886032, 48.310509>,  <35.357380, 41.810776, 48.306583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750217, 41.886032, 48.310509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083363, 0.387270, 0.918190,
		0.168946, -0.902566, 0.396020,
		0.982094, 0.188138, 0.009813,
		36.044846, 41.942474, 48.313454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649742, 41.580658, 48.986835>,  <35.357380, 41.810776, 48.306583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649742, 41.580658, 48.986835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.910225, 41.851685, 48.850113>,  <36.066517, 42.014301, 48.768082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.910225, 41.851685, 48.850113>,  <35.649742, 41.580658, 48.986835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910225, 41.851685, 48.850113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069245, 0.395465, 0.915867,
		0.755733, -0.620089, 0.210612,
		0.651210, 0.677567, -0.341804,
		36.105587, 42.054955, 48.747570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883774, 40.880669, 49.446083>,  <35.649742, 41.580658, 48.986835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883774, 40.880669, 49.446083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.655148, 40.683533, 49.708508>,  <35.517971, 40.565250, 49.865963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.655148, 40.683533, 49.708508>,  <35.883774, 40.880669, 49.446083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655148, 40.683533, 49.708508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531535, -0.386739, -0.753594,
		0.625130, -0.779447, -0.040919,
		-0.571562, -0.492845, 0.656065,
		35.483681, 40.535679, 49.905327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847065, 40.309437, 49.192390>,  <35.883774, 40.880669, 49.446083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847065, 40.309437, 49.192390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.531269, 40.326118, 49.437328>,  <35.341793, 40.336128, 49.584290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.531269, 40.326118, 49.437328>,  <35.847065, 40.309437, 49.192390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531269, 40.326118, 49.437328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563782, -0.443629, -0.696666,
		0.242604, -0.895240, 0.373750,
		-0.789490, 0.041699, 0.612346,
		35.294422, 40.338627, 49.621033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614159, 39.694931, 49.127254>,  <35.847065, 40.309437, 49.192390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614159, 39.694931, 49.127254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.307331, 39.921482, 49.247807>,  <35.123234, 40.057411, 49.320137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.307331, 39.921482, 49.247807>,  <35.614159, 39.694931, 49.127254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307331, 39.921482, 49.247807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637532, -0.620321, -0.456896,
		-0.071824, -0.542607, 0.836910,
		-0.767068, 0.566373, 0.301376,
		35.077209, 40.091393, 49.338219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117954, 39.330093, 49.607868>,  <35.614159, 39.694931, 49.127254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117954, 39.330093, 49.607868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932606, 39.596569, 49.374123>,  <34.821396, 39.756454, 49.233875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932606, 39.596569, 49.374123>,  <35.117954, 39.330093, 49.607868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932606, 39.596569, 49.374123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520145, -0.738347, -0.429293,
		-0.717452, 0.105031, 0.688645,
		-0.463370, 0.666192, -0.584360,
		34.793594, 39.796425, 49.198814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506248, 39.033016, 49.355129>,  <35.117954, 39.330093, 49.607868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506248, 39.033016, 49.355129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495682, 39.379677, 49.155842>,  <34.489342, 39.587673, 49.036270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495682, 39.379677, 49.155842>,  <34.506248, 39.033016, 49.355129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495682, 39.379677, 49.155842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452461, -0.454781, -0.767107,
		-0.891393, 0.205161, 0.404138,
		-0.026414, 0.866651, -0.498215,
		34.487759, 39.639671, 49.006378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011257, 39.016689, 48.926929>,  <34.506248, 39.033016, 49.355129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011257, 39.016689, 48.926929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.190380, 39.333168, 48.760330>,  <34.297855, 39.523056, 48.660370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.190380, 39.333168, 48.760330>,  <34.011257, 39.016689, 48.926929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190380, 39.333168, 48.760330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491888, -0.170999, -0.853701,
		-0.746668, 0.587166, 0.312607,
		0.447809, 0.791199, -0.416500,
		34.324722, 39.570526, 48.635380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435677, 39.386646, 48.604561>,  <34.011257, 39.016689, 48.926929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435677, 39.386646, 48.604561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777824, 39.501457, 48.432072>,  <33.983112, 39.570343, 48.328579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777824, 39.501457, 48.432072>,  <33.435677, 39.386646, 48.604561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777824, 39.501457, 48.432072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379528, -0.219320, -0.898809,
		-0.352559, 0.932477, -0.078665,
		0.855372, 0.287027, -0.431225,
		34.034435, 39.587566, 48.302704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.569359, 38.973175, 51.393581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.624287, 39.307838, 51.181488>,  <38.657246, 39.508636, 51.054234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.624287, 39.307838, 51.181488>,  <38.569359, 38.973175, 51.393581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624287, 39.307838, 51.181488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015032, -0.537000, -0.843448,
		-0.990412, 0.107855, -0.086320,
		0.137324, 0.836659, -0.530230,
		38.665485, 39.558838, 51.022419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188992, 38.901821, 50.816143>,  <38.569359, 38.973175, 51.393581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188992, 38.901821, 50.816143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.478115, 39.168148, 50.742130>,  <38.651588, 39.327946, 50.697723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.478115, 39.168148, 50.742130>,  <38.188992, 38.901821, 50.816143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478115, 39.168148, 50.742130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088516, -0.354747, -0.930763,
		-0.685360, 0.656381, -0.315349,
		0.722804, 0.665821, -0.185029,
		38.694958, 39.367893, 50.686623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019718, 39.183048, 50.202633>,  <38.188992, 38.901821, 50.816143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019718, 39.183048, 50.202633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.406647, 39.283268, 50.218243>,  <38.638802, 39.343399, 50.227608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.406647, 39.283268, 50.218243>,  <38.019718, 39.183048, 50.202633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406647, 39.283268, 50.218243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116182, -0.301142, -0.946475,
		-0.225386, 0.920076, -0.320409,
		0.967317, 0.250548, 0.039023,
		38.696842, 39.358433, 50.229950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168194, 39.610935, 49.637730>,  <38.019718, 39.183048, 50.202633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168194, 39.610935, 49.637730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.522228, 39.452633, 49.735710>,  <38.734650, 39.357651, 49.794498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.522228, 39.452633, 49.735710>,  <38.168194, 39.610935, 49.637730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522228, 39.452633, 49.735710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045501, -0.450201, -0.891767,
		0.463204, 0.800433, -0.380458,
		0.885083, -0.395759, 0.244956,
		38.787754, 39.333904, 49.809196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534203, 39.615044, 48.983913>,  <38.168194, 39.610935, 49.637730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534203, 39.615044, 48.983913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.753460, 39.364109, 49.205181>,  <38.885014, 39.213551, 49.337940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.753460, 39.364109, 49.205181>,  <38.534203, 39.615044, 48.983913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753460, 39.364109, 49.205181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182724, -0.555585, -0.811134,
		0.816183, 0.545691, -0.189909,
		0.548139, -0.627333, 0.553170,
		38.917900, 39.175911, 49.371132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097176, 39.439819, 48.567089>,  <38.534203, 39.615044, 48.983913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097176, 39.439819, 48.567089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.072960, 39.141594, 48.832561>,  <39.058430, 38.962658, 48.991844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.072960, 39.141594, 48.832561>,  <39.097176, 39.439819, 48.567089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072960, 39.141594, 48.832561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269384, -0.652428, -0.708357,
		0.961128, 0.135902, 0.240340,
		-0.060537, -0.745565, 0.663677,
		39.054798, 38.917923, 49.031666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731869, 38.972202, 48.431335>,  <39.097176, 39.439819, 48.567089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731869, 38.972202, 48.431335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.440815, 38.775490, 48.622627>,  <39.266182, 38.657463, 48.737400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.440815, 38.775490, 48.622627>,  <39.731869, 38.972202, 48.431335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440815, 38.775490, 48.622627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198361, -0.818219, -0.539601,
		0.656660, -0.297770, 0.692914,
		-0.727633, -0.491782, 0.478226,
		39.222527, 38.627956, 48.766094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028309, 38.351601, 48.542347>,  <39.731869, 38.972202, 48.431335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028309, 38.351601, 48.542347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.631710, 38.303963, 48.563305>,  <39.393749, 38.275379, 48.575878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.631710, 38.303963, 48.563305>,  <40.028309, 38.351601, 48.542347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631710, 38.303963, 48.563305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043741, -0.684333, -0.727857,
		0.122539, -0.719378, 0.683725,
		-0.991499, -0.119098, 0.052392,
		39.334259, 38.268234, 48.579021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909424, 37.548340, 48.572914>,  <40.028309, 38.351601, 48.542347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909424, 37.548340, 48.572914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.565788, 37.717327, 48.457333>,  <39.359608, 37.818718, 48.387981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.565788, 37.717327, 48.457333>,  <39.909424, 37.548340, 48.572914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565788, 37.717327, 48.457333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131118, -0.727364, -0.673610,
		-0.494751, -0.540802, 0.680261,
		-0.859087, 0.422463, -0.288955,
		39.308064, 37.844067, 48.370647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527981, 37.001896, 48.367027>,  <39.909424, 37.548340, 48.572914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527981, 37.001896, 48.367027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.332062, 37.304401, 48.193512>,  <39.214512, 37.485905, 48.089405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.332062, 37.304401, 48.193512>,  <39.527981, 37.001896, 48.367027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332062, 37.304401, 48.193512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362303, -0.629115, -0.687714,
		-0.792991, -0.179679, 0.582135,
		-0.489798, 0.756260, -0.433784,
		39.185123, 37.531281, 48.063377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875286, 36.681099, 48.218483>,  <39.527981, 37.001896, 48.367027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875286, 36.681099, 48.218483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.878067, 37.010441, 47.991489>,  <38.879738, 37.208046, 47.855293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.878067, 37.010441, 47.991489>,  <38.875286, 36.681099, 48.218483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878067, 37.010441, 47.991489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568481, -0.463618, -0.679623,
		-0.822667, 0.327330, 0.464837,
		0.006954, 0.823355, -0.567484,
		38.880154, 37.257446, 47.821243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156780, 36.926109, 48.005070>,  <38.875286, 36.681099, 48.218483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156780, 36.926109, 48.005070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.439075, 37.043056, 47.746941>,  <38.608452, 37.113224, 47.592064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.439075, 37.043056, 47.746941>,  <38.156780, 36.926109, 48.005070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439075, 37.043056, 47.746941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492171, -0.452869, -0.743423,
		-0.509603, 0.842277, -0.175713,
		0.705743, 0.292369, -0.645327,
		38.650799, 37.130768, 47.553341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521519, 37.126736, 48.227531>,  <38.156780, 36.926109, 48.005070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521519, 37.126736, 48.227531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.125027, 37.075794, 48.213455>,  <36.887131, 37.045231, 48.205009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.125027, 37.075794, 48.213455>,  <37.521519, 37.126736, 48.227531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125027, 37.075794, 48.213455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054520, 0.151667, 0.986927,
		-0.120348, 0.980193, -0.157281,
		-0.991234, -0.127349, -0.035187,
		36.827656, 37.037590, 48.202900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295628, 37.672421, 48.659431>,  <37.521519, 37.126736, 48.227531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295628, 37.672421, 48.659431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.967491, 37.443672, 48.658886>,  <36.770607, 37.306423, 48.658558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.967491, 37.443672, 48.658886>,  <37.295628, 37.672421, 48.659431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967491, 37.443672, 48.658886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152548, 0.216539, 0.964282,
		-0.551147, 0.791251, -0.264874,
		-0.820345, -0.571867, -0.001359,
		36.721386, 37.272114, 48.658478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721016, 38.119888, 48.894657>,  <37.295628, 37.672421, 48.659431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721016, 38.119888, 48.894657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.629745, 37.735210, 48.955418>,  <36.574986, 37.504402, 48.991875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.629745, 37.735210, 48.955418>,  <36.721016, 38.119888, 48.894657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629745, 37.735210, 48.955418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173202, 0.193623, 0.965666,
		-0.958091, 0.194029, -0.210747,
		-0.228173, -0.961698, 0.151903,
		36.561295, 37.446701, 49.000988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101257, 38.209278, 49.287724>,  <36.721016, 38.119888, 48.894657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101257, 38.209278, 49.287724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.197731, 37.825294, 49.344715>,  <36.255615, 37.594902, 49.378910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.197731, 37.825294, 49.344715>,  <36.101257, 38.209278, 49.287724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197731, 37.825294, 49.344715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330634, 0.056752, 0.942051,
		-0.912421, -0.274316, -0.303709,
		0.241183, -0.959964, 0.142480,
		36.270084, 37.537304, 49.387459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548229, 37.824467, 49.602184>,  <36.101257, 38.209278, 49.287724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548229, 37.824467, 49.602184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.882919, 37.627636, 49.698307>,  <36.083733, 37.509537, 49.755981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.882919, 37.627636, 49.698307>,  <35.548229, 37.824467, 49.602184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882919, 37.627636, 49.698307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316995, -0.077398, 0.945264,
		-0.446548, -0.867102, -0.220748,
		0.836725, -0.492081, 0.240305,
		36.133938, 37.480011, 49.770397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248650, 37.438118, 50.178600>,  <35.548229, 37.824467, 49.602184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248650, 37.438118, 50.178600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.644104, 37.381744, 50.199520>,  <35.881378, 37.347919, 50.212074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.644104, 37.381744, 50.199520>,  <35.248650, 37.438118, 50.178600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644104, 37.381744, 50.199520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008675, 0.293862, 0.955809,
		-0.150078, -0.945401, 0.289300,
		0.988636, -0.140936, 0.052304,
		35.940697, 37.339462, 50.215210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378910, 37.089241, 50.879005>,  <35.248650, 37.438118, 50.178600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378910, 37.089241, 50.879005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.716675, 37.269703, 50.763474>,  <35.919334, 37.377979, 50.694153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.716675, 37.269703, 50.763474>,  <35.378910, 37.089241, 50.879005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716675, 37.269703, 50.763474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182715, 0.264275, 0.946982,
		0.503568, -0.852418, 0.140724,
		0.844414, 0.451157, -0.288830,
		35.969997, 37.405048, 50.676823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047478, 36.778324, 51.138382>,  <35.378910, 37.089241, 50.879005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047478, 36.778324, 51.138382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.116650, 37.163578, 51.055958>,  <36.158154, 37.394730, 51.006504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.116650, 37.163578, 51.055958>,  <36.047478, 36.778324, 51.138382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116650, 37.163578, 51.055958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224722, 0.165116, 0.960332,
		0.958956, -0.212374, -0.187886,
		0.172927, 0.963138, -0.206064,
		36.168530, 37.452518, 50.994137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525410, 36.896175, 51.588261>,  <36.047478, 36.778324, 51.138382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525410, 36.896175, 51.588261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.460453, 37.267651, 51.454887>,  <36.421478, 37.490536, 51.374863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.460453, 37.267651, 51.454887>,  <36.525410, 36.896175, 51.588261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460453, 37.267651, 51.454887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095619, 0.351137, 0.931429,
		0.982083, 0.119372, -0.145821,
		-0.162389, 0.928683, -0.333432,
		36.411736, 37.546257, 51.354858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949184, 37.271576, 51.984238>,  <36.525410, 36.896175, 51.588261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949184, 37.271576, 51.984238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.707455, 37.562672, 51.854507>,  <36.562416, 37.737328, 51.776669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.707455, 37.562672, 51.854507>,  <36.949184, 37.271576, 51.984238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707455, 37.562672, 51.854507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059622, 0.447239, 0.892425,
		0.794502, 0.519981, -0.313668,
		-0.604328, 0.727735, -0.324330,
		36.526157, 37.780991, 51.757210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267910, 37.821602, 52.111122>,  <36.949184, 37.271576, 51.984238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267910, 37.821602, 52.111122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.893963, 37.953270, 52.057938>,  <36.669594, 38.032269, 52.026028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.893963, 37.953270, 52.057938>,  <37.267910, 37.821602, 52.111122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893963, 37.953270, 52.057938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021404, 0.321579, 0.946641,
		0.354358, 0.887827, -0.293587,
		-0.934865, 0.329166, -0.132957,
		36.613503, 38.052021, 52.018051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277363, 38.481529, 52.420849>,  <37.267910, 37.821602, 52.111122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277363, 38.481529, 52.420849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.889084, 38.394020, 52.381065>,  <36.656116, 38.341515, 52.357197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.889084, 38.394020, 52.381065>,  <37.277363, 38.481529, 52.420849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889084, 38.394020, 52.381065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186073, 0.422279, 0.887163,
		-0.152090, 0.879669, -0.450612,
		-0.970693, -0.218775, -0.099458,
		36.597878, 38.328388, 52.351227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912376, 39.121098, 52.411823>,  <37.277363, 38.481529, 52.420849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912376, 39.121098, 52.411823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.683949, 38.819920, 52.542637>,  <36.546890, 38.639214, 52.621124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.683949, 38.819920, 52.542637>,  <36.912376, 39.121098, 52.411823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683949, 38.819920, 52.542637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069359, 0.441218, 0.894716,
		-0.817964, 0.488265, -0.304190,
		-0.571072, -0.752944, 0.327035,
		36.512627, 38.594036, 52.640747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561871, 39.477055, 52.818344>,  <36.912376, 39.121098, 52.411823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561871, 39.477055, 52.818344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.491600, 39.102791, 52.940773>,  <36.449440, 38.878231, 53.014229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.491600, 39.102791, 52.940773>,  <36.561871, 39.477055, 52.818344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491600, 39.102791, 52.940773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091253, 0.325044, 0.941286,
		-0.980210, 0.137428, -0.142483,
		-0.175672, -0.935660, 0.306071,
		36.438900, 38.822094, 53.032593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008545, 39.936092, 52.433620>,  <36.561871, 39.477055, 52.818344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008545, 39.936092, 52.433620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.899120, 40.317951, 52.386608>,  <36.833466, 40.547066, 52.358402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.899120, 40.317951, 52.386608>,  <37.008545, 39.936092, 52.433620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899120, 40.317951, 52.386608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515311, -0.248637, -0.820143,
		-0.812169, -0.163794, 0.559958,
		-0.273561, 0.954647, -0.117530,
		36.817051, 40.604347, 52.351349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338692, 39.958324, 52.320187>,  <37.008545, 39.936092, 52.433620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338692, 39.958324, 52.320187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.421638, 40.315815, 52.161064>,  <36.471405, 40.530312, 52.065590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.421638, 40.315815, 52.161064>,  <36.338692, 39.958324, 52.320187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421638, 40.315815, 52.161064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503947, -0.250944, -0.826477,
		-0.838473, 0.371854, 0.398356,
		0.207364, 0.893729, -0.397805,
		36.483849, 40.583935, 52.041721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668530, 40.266739, 52.058796>,  <36.338692, 39.958324, 52.320187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668530, 40.266739, 52.058796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.958355, 40.465778, 51.868046>,  <36.132248, 40.585201, 51.753597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.958355, 40.465778, 51.868046>,  <35.668530, 40.266739, 52.058796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958355, 40.465778, 51.868046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501177, -0.094564, -0.860163,
		-0.473109, 0.862239, 0.180867,
		0.724562, 0.497597, -0.476873,
		36.175724, 40.615059, 51.724983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335461, 40.821758, 51.703701>,  <35.668530, 40.266739, 52.058796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335461, 40.821758, 51.703701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.693409, 40.777874, 51.530647>,  <35.908176, 40.751541, 51.426815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.693409, 40.777874, 51.530647>,  <35.335461, 40.821758, 51.703701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693409, 40.777874, 51.530647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421873, 0.108517, -0.900137,
		0.145706, 0.988022, 0.050823,
		0.894870, -0.109715, -0.432631,
		35.961868, 40.744961, 51.400856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253300, 41.256939, 51.204887>,  <35.335461, 40.821758, 51.703701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253300, 41.256939, 51.204887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.577545, 41.040287, 51.115860>,  <35.772095, 40.910297, 51.062443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.577545, 41.040287, 51.115860>,  <35.253300, 41.256939, 51.204887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577545, 41.040287, 51.115860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341353, -0.128251, -0.931145,
		0.475792, 0.830776, -0.288849,
		0.810617, -0.541630, -0.222567,
		35.820732, 40.877796, 51.049091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573631, 41.542431, 50.588112>,  <35.253300, 41.256939, 51.204887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573631, 41.542431, 50.588112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.660793, 41.152977, 50.615089>,  <35.713089, 40.919304, 50.631275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.660793, 41.152977, 50.615089>,  <35.573631, 41.542431, 50.588112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660793, 41.152977, 50.615089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480269, -0.167129, -0.861051,
		0.849624, 0.155233, -0.504026,
		0.217901, -0.973638, 0.067444,
		35.726162, 40.860886, 50.635323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702003, 41.386219, 49.999191>,  <35.573631, 41.542431, 50.588112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702003, 41.386219, 49.999191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.638477, 41.018688, 50.143707>,  <35.600361, 40.798168, 50.230415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.638477, 41.018688, 50.143707>,  <35.702003, 41.386219, 49.999191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638477, 41.018688, 50.143707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462853, -0.253938, -0.849284,
		0.872092, -0.302103, -0.384954,
		-0.158817, -0.918831, 0.361287,
		35.590832, 40.743038, 50.252094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225250, 41.631172, 49.555847>,  <35.702003, 41.386219, 49.999191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225250, 41.631172, 49.555847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.276203, 41.971142, 49.351341>,  <36.306774, 42.175125, 49.228638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.276203, 41.971142, 49.351341>,  <36.225250, 41.631172, 49.555847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276203, 41.971142, 49.351341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286133, 0.462064, 0.839419,
		0.949685, -0.253215, -0.184335,
		0.127379, 0.849928, -0.511269,
		36.314419, 42.226120, 49.197960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020912, 41.874783, 49.627480>,  <36.225250, 41.631172, 49.555847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020912, 41.874783, 49.627480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.786148, 42.186424, 49.539356>,  <36.645290, 42.373409, 49.486481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.786148, 42.186424, 49.539356>,  <37.020912, 41.874783, 49.627480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786148, 42.186424, 49.539356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339080, 0.483611, 0.806936,
		0.735231, 0.398894, -0.548014,
		-0.586907, 0.779105, -0.220309,
		36.610077, 42.420155, 49.473263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370098, 42.387859, 49.753113>,  <37.020912, 41.874783, 49.627480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370098, 42.387859, 49.753113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.022278, 42.585087, 49.742069>,  <36.813583, 42.703423, 49.735443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.022278, 42.585087, 49.742069>,  <37.370098, 42.387859, 49.753113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022278, 42.585087, 49.742069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271885, 0.524662, 0.806727,
		0.412255, 0.693986, -0.590279,
		-0.869554, 0.493065, -0.027610,
		36.761410, 42.733006, 49.733788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547619, 43.025539, 50.010159>,  <37.370098, 42.387859, 49.753113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547619, 43.025539, 50.010159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.150818, 43.007591, 50.057346>,  <36.912739, 42.996822, 50.085659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.150818, 43.007591, 50.057346>,  <37.547619, 43.025539, 50.010159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150818, 43.007591, 50.057346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074130, 0.549357, 0.832293,
		-0.102155, 0.834382, -0.541637,
		-0.992003, -0.044871, 0.117972,
		36.853218, 42.994129, 50.092739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406574, 43.681763, 50.129425>,  <37.547619, 43.025539, 50.010159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406574, 43.681763, 50.129425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.084404, 43.487194, 50.264881>,  <36.891102, 43.370453, 50.346157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.084404, 43.487194, 50.264881>,  <37.406574, 43.681763, 50.129425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084404, 43.487194, 50.264881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046395, 0.621357, 0.782153,
		-0.590872, 0.614258, -0.523027,
		-0.805430, -0.486418, 0.338644,
		36.842773, 43.341270, 50.366474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826096, 44.150169, 50.282661>,  <37.406574, 43.681763, 50.129425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826096, 44.150169, 50.282661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.800571, 43.819305, 50.505993>,  <36.785255, 43.620789, 50.639992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.800571, 43.819305, 50.505993>,  <36.826096, 44.150169, 50.282661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800571, 43.819305, 50.505993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066110, 0.554739, 0.829394,
		-0.995770, 0.089838, 0.019283,
		-0.063814, -0.827160, 0.558331,
		36.781425, 43.571156, 50.673492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423069, 44.428959, 50.940613>,  <36.826096, 44.150169, 50.282661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423069, 44.428959, 50.940613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.596794, 44.081898, 51.037399>,  <36.701031, 43.873661, 51.095470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.596794, 44.081898, 51.037399>,  <36.423069, 44.428959, 50.940613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596794, 44.081898, 51.037399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207927, 0.357942, 0.910299,
		-0.876435, -0.345044, 0.335868,
		0.434314, -0.867653, 0.241969,
		36.727089, 43.821602, 51.109989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089817, 44.247417, 51.570103>,  <36.423069, 44.428959, 50.940613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089817, 44.247417, 51.570103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.419334, 44.020660, 51.570278>,  <36.617046, 43.884605, 51.570385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.419334, 44.020660, 51.570278>,  <36.089817, 44.247417, 51.570103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419334, 44.020660, 51.570278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162423, 0.236770, 0.957893,
		-0.543124, -0.789035, 0.287125,
		0.823793, -0.566890, 0.000437,
		36.666473, 43.850594, 51.570408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084702, 43.896881, 52.177929>,  <36.089817, 44.247417, 51.570103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084702, 43.896881, 52.177929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.465343, 43.891743, 52.055103>,  <36.693729, 43.888660, 51.981407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.465343, 43.891743, 52.055103>,  <36.084702, 43.896881, 52.177929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465343, 43.891743, 52.055103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294886, 0.319648, 0.900482,
		0.086589, -0.947449, 0.307965,
		0.951601, -0.012843, -0.307067,
		36.750824, 43.887890, 51.962982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.154789, 37.012417, 38.012684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549995, 36.990005, 37.955147>,  <33.787117, 36.976559, 37.920624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549995, 36.990005, 37.955147>,  <33.154789, 37.012417, 38.012684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549995, 36.990005, 37.955147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152515, 0.498154, 0.853570,
		0.023835, -0.865277, 0.500728,
		0.988014, -0.056024, -0.143841,
		33.846401, 36.973198, 37.911995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423256, 36.720615, 38.644989>,  <33.154789, 37.012417, 38.012684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423256, 36.720615, 38.644989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706783, 36.926041, 38.451565>,  <33.876900, 37.049294, 38.335510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706783, 36.926041, 38.451565>,  <33.423256, 36.720615, 38.644989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706783, 36.926041, 38.451565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149075, 0.560977, 0.814298,
		0.689459, -0.649276, 0.321072,
		0.708819, 0.513561, -0.483561,
		33.919430, 37.080109, 38.306496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877823, 36.809528, 39.160652>,  <33.423256, 36.720615, 38.644989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877823, 36.809528, 39.160652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986435, 37.074574, 38.881451>,  <34.051601, 37.233601, 38.713928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986435, 37.074574, 38.881451>,  <33.877823, 36.809528, 39.160652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986435, 37.074574, 38.881451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165326, 0.682363, 0.712073,
		0.948123, -0.308749, 0.075735,
		0.271531, 0.662612, -0.698009,
		34.067894, 37.273357, 38.672047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574421, 36.935036, 39.263470>,  <33.877823, 36.809528, 39.160652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574421, 36.935036, 39.263470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445183, 37.260555, 39.070244>,  <34.367641, 37.455868, 38.954308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445183, 37.260555, 39.070244>,  <34.574421, 36.935036, 39.263470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445183, 37.260555, 39.070244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357421, 0.577564, 0.733942,
		0.876278, 0.064474, -0.477473,
		-0.323092, 0.813795, -0.483062,
		34.348255, 37.504692, 38.925323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092781, 37.417820, 39.291691>,  <34.574421, 36.935036, 39.263470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092781, 37.417820, 39.291691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768425, 37.645756, 39.238415>,  <34.573811, 37.782516, 39.206448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768425, 37.645756, 39.238415>,  <35.092781, 37.417820, 39.291691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768425, 37.645756, 39.238415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235987, 0.526689, 0.816645,
		0.535506, 0.630778, -0.561562,
		-0.810890, 0.569840, -0.133190,
		34.525158, 37.816708, 39.198460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327095, 38.123062, 39.426899>,  <35.092781, 37.417820, 39.291691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327095, 38.123062, 39.426899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927822, 38.147079, 39.429306>,  <34.688259, 38.161491, 39.430748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927822, 38.147079, 39.429306>,  <35.327095, 38.123062, 39.426899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927822, 38.147079, 39.429306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040638, 0.595170, 0.802571,
		0.044609, 0.801353, -0.596526,
		-0.998178, 0.060044, 0.006015,
		34.628368, 38.165092, 39.431110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186790, 38.798122, 39.685112>,  <35.327095, 38.123062, 39.426899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186790, 38.798122, 39.685112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832088, 38.614136, 39.703426>,  <34.619267, 38.503746, 39.714417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832088, 38.614136, 39.703426>,  <35.186790, 38.798122, 39.685112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832088, 38.614136, 39.703426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161815, 0.401691, 0.901366,
		-0.432988, 0.791883, -0.430631,
		-0.886757, -0.459963, 0.045789,
		34.566063, 38.476147, 39.717163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685665, 39.376991, 39.928333>,  <35.186790, 38.798122, 39.685112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685665, 39.376991, 39.928333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493362, 39.028946, 39.971722>,  <34.377979, 38.820118, 39.997753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493362, 39.028946, 39.971722>,  <34.685665, 39.376991, 39.928333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493362, 39.028946, 39.971722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322531, 0.290507, 0.900877,
		-0.815378, 0.398123, -0.420305,
		-0.480761, -0.870117, 0.108466,
		34.349133, 38.767910, 40.004261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967598, 39.547070, 40.088833>,  <34.685665, 39.376991, 39.928333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967598, 39.547070, 40.088833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053074, 39.181534, 40.226948>,  <34.104359, 38.962212, 40.309818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053074, 39.181534, 40.226948>,  <33.967598, 39.547070, 40.088833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053074, 39.181534, 40.226948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366198, 0.252747, 0.895555,
		-0.905668, -0.317818, -0.280638,
		0.213693, -0.913844, 0.345289,
		34.117184, 38.907379, 40.330536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410095, 39.402641, 40.487499>,  <33.967598, 39.547070, 40.088833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410095, 39.402641, 40.487499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724239, 39.180252, 40.596394>,  <33.912724, 39.046818, 40.661732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724239, 39.180252, 40.596394>,  <33.410095, 39.402641, 40.487499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724239, 39.180252, 40.596394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157958, 0.245241, 0.956507,
		-0.598553, -0.794201, 0.104781,
		0.785355, -0.555969, 0.272240,
		33.959846, 39.013462, 40.678066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182343, 39.156765, 41.097542>,  <33.410095, 39.402641, 40.487499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182343, 39.156765, 41.097542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579678, 39.110706, 41.096073>,  <33.818081, 39.083069, 41.095192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579678, 39.110706, 41.096073>,  <33.182343, 39.156765, 41.097542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579678, 39.110706, 41.096073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058342, 0.475257, 0.877911,
		-0.099345, -0.872279, 0.478810,
		0.993341, -0.115150, -0.003676,
		33.877682, 39.076160, 41.094971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298702, 38.811371, 41.811775>,  <33.182343, 39.156765, 41.097542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298702, 38.811371, 41.811775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617569, 38.997211, 41.657539>,  <33.808887, 39.108715, 41.564999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617569, 38.997211, 41.657539>,  <33.298702, 38.811371, 41.811775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617569, 38.997211, 41.657539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071516, 0.561484, 0.824391,
		0.599518, -0.684748, 0.414366,
		0.797160, 0.464603, -0.385590,
		33.856716, 39.136593, 41.541862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645359, 38.101849, 41.962521>,  <33.298702, 38.811371, 41.811775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645359, 38.101849, 41.962521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636951, 37.812202, 42.238266>,  <33.631905, 37.638416, 42.403713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636951, 37.812202, 42.238266>,  <33.645359, 38.101849, 41.962521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636951, 37.812202, 42.238266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097058, -0.684777, -0.722261,
		0.995057, -0.082092, -0.055885,
		-0.021023, -0.724114, 0.689360,
		33.630646, 37.594967, 42.445072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944458, 37.561584, 41.643536>,  <33.645359, 38.101849, 41.962521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944458, 37.561584, 41.643536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741276, 37.385426, 41.939651>,  <33.619366, 37.279728, 42.117321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741276, 37.385426, 41.939651>,  <33.944458, 37.561584, 41.643536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741276, 37.385426, 41.939651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244203, -0.750531, -0.614059,
		0.826040, -0.492698, 0.273692,
		-0.507960, -0.440401, 0.740286,
		33.588886, 37.253304, 42.161739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146023, 36.912056, 41.667774>,  <33.944458, 37.561584, 41.643536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146023, 36.912056, 41.667774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786346, 36.896843, 41.842136>,  <33.570541, 36.887714, 41.946754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786346, 36.896843, 41.842136>,  <34.146023, 36.912056, 41.667774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786346, 36.896843, 41.842136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206103, -0.841964, -0.498616,
		0.385976, -0.538192, 0.749248,
		-0.899190, -0.038032, 0.435901,
		33.516590, 36.885433, 41.972908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976162, 36.268105, 41.643089>,  <34.146023, 36.912056, 41.667774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976162, 36.268105, 41.643089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619854, 36.442165, 41.695499>,  <33.406067, 36.546600, 41.726944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619854, 36.442165, 41.695499>,  <33.976162, 36.268105, 41.643089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619854, 36.442165, 41.695499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443477, -0.769387, -0.459752,
		-0.099251, -0.467642, 0.878328,
		-0.890774, 0.435149, 0.131026,
		33.352623, 36.572712, 41.734806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508270, 35.755165, 41.931889>,  <33.976162, 36.268105, 41.643089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508270, 35.755165, 41.931889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287582, 36.046589, 41.769501>,  <33.155170, 36.221443, 41.672070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287582, 36.046589, 41.769501>,  <33.508270, 35.755165, 41.931889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287582, 36.046589, 41.769501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464064, -0.672609, -0.576404,
		-0.693003, -0.129616, 0.709188,
		-0.551717, 0.728558, -0.405970,
		33.122066, 36.265156, 41.647709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771923, 35.463242, 41.885277>,  <33.508270, 35.755165, 41.931889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771923, 35.463242, 41.885277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828918, 35.758320, 41.621307>,  <32.863117, 35.935368, 41.462925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828918, 35.758320, 41.621307>,  <32.771923, 35.463242, 41.885277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828918, 35.758320, 41.621307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498540, -0.522494, -0.691706,
		-0.855076, 0.427561, 0.293320,
		0.142488, 0.737693, -0.659928,
		32.871666, 35.979630, 41.423328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109787, 35.653465, 41.875011>,  <32.771923, 35.463242, 41.885277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109787, 35.653465, 41.875011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298546, 35.763538, 41.539967>,  <32.411800, 35.829582, 41.338940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298546, 35.763538, 41.539967>,  <32.109787, 35.653465, 41.875011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298546, 35.763538, 41.539967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633130, -0.555386, -0.539160,
		-0.613565, 0.784741, -0.087854,
		0.471894, 0.275187, -0.837609,
		32.440113, 35.846096, 41.288685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530428, 35.524555, 41.440113>,  <32.109787, 35.653465, 41.875011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530428, 35.524555, 41.440113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848740, 35.569836, 41.202148>,  <32.039726, 35.597004, 41.059368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848740, 35.569836, 41.202148>,  <31.530428, 35.524555, 41.440113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848740, 35.569836, 41.202148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437081, -0.572594, -0.693611,
		-0.419158, 0.811987, -0.406183,
		0.795781, 0.113198, -0.594911,
		32.087475, 35.603794, 41.023674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326670, 35.902142, 40.847137>,  <31.530428, 35.524555, 41.440113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326670, 35.902142, 40.847137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643194, 35.696171, 40.715271>,  <31.833109, 35.572590, 40.636150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643194, 35.696171, 40.715271>,  <31.326670, 35.902142, 40.847137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643194, 35.696171, 40.715271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573766, -0.439101, -0.691363,
		0.211242, 0.736235, -0.642911,
		0.791309, -0.514925, -0.329670,
		31.880587, 35.541695, 40.616371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326551, 35.882145, 40.151230>,  <31.326670, 35.902142, 40.847137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326551, 35.882145, 40.151230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599836, 35.593731, 40.197411>,  <31.763807, 35.420681, 40.225121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599836, 35.593731, 40.197411>,  <31.326551, 35.882145, 40.151230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599836, 35.593731, 40.197411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374159, -0.481446, -0.792600,
		0.627079, 0.498313, -0.598711,
		0.683210, -0.721036, 0.115456,
		31.804800, 35.377419, 40.232048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607946, 35.724777, 39.489063>,  <31.326551, 35.882145, 40.151230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607946, 35.724777, 39.489063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648134, 35.395489, 39.712566>,  <31.672247, 35.197914, 39.846668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648134, 35.395489, 39.712566>,  <31.607946, 35.724777, 39.489063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648134, 35.395489, 39.712566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446470, -0.539186, -0.714103,
		0.889140, -0.177726, -0.421714,
		0.100468, -0.823220, 0.558761,
		31.678274, 35.148521, 39.880196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935217, 35.219345, 39.060265>,  <31.607946, 35.724777, 39.489063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935217, 35.219345, 39.060265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761370, 34.992188, 39.339867>,  <31.657061, 34.855892, 39.507629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761370, 34.992188, 39.339867>,  <31.935217, 35.219345, 39.060265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761370, 34.992188, 39.339867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229111, -0.680889, -0.695628,
		0.870985, -0.462482, 0.165817,
		-0.434618, -0.567891, 0.699004,
		31.630983, 34.821819, 39.549568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095085, 34.573746, 38.810780>,  <31.935217, 35.219345, 39.060265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095085, 34.573746, 38.810780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841576, 34.509178, 39.113377>,  <31.689470, 34.470440, 39.294933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841576, 34.509178, 39.113377>,  <32.095085, 34.573746, 38.810780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841576, 34.509178, 39.113377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332301, -0.826328, -0.454707,
		0.698508, -0.539563, 0.470063,
		-0.633769, -0.161414, 0.756493,
		31.651445, 34.460754, 39.340324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138664, 33.747643, 39.039291>,  <32.095085, 34.573746, 38.810780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138664, 33.747643, 39.039291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806543, 33.935436, 39.159412>,  <31.607271, 34.048111, 39.231483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806543, 33.935436, 39.159412>,  <32.138664, 33.747643, 39.039291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806543, 33.935436, 39.159412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556733, -0.723319, -0.408483,
		0.025439, -0.506354, 0.861951,
		-0.830302, 0.469485, 0.300304,
		31.557453, 34.076283, 39.249504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894178, 33.332253, 39.416969>,  <32.138664, 33.747643, 39.039291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894178, 33.332253, 39.416969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623932, 33.571896, 39.245102>,  <31.461784, 33.715679, 39.141979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623932, 33.571896, 39.245102>,  <31.894178, 33.332253, 39.416969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623932, 33.571896, 39.245102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330951, -0.767233, -0.549387,
		-0.658798, -0.228974, 0.716628,
		-0.675616, 0.599104, -0.429672,
		31.421247, 33.751625, 39.116199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217751, 33.168636, 40.011330>,  <31.894178, 33.332253, 39.416969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217751, 33.168636, 40.011330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488384, 32.930855, 39.837498>,  <32.650764, 32.788185, 39.733200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488384, 32.930855, 39.837498>,  <32.217751, 33.168636, 40.011330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488384, 32.930855, 39.837498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483199, -0.086921, 0.871185,
		-0.555651, -0.799420, 0.228428,
		0.676588, -0.594451, -0.434577,
		32.691360, 32.752518, 39.707123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250999, 32.500626, 40.432934>,  <32.217751, 33.168636, 40.011330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250999, 32.500626, 40.432934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591930, 32.596703, 40.247097>,  <32.796490, 32.654350, 40.135597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591930, 32.596703, 40.247097>,  <32.250999, 32.500626, 40.432934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591930, 32.596703, 40.247097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462399, 0.068994, 0.883984,
		0.244382, -0.968270, -0.052261,
		0.852329, 0.240195, -0.464588,
		32.847630, 32.668762, 40.107719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678993, 32.320415, 40.861794>,  <32.250999, 32.500626, 40.432934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678993, 32.320415, 40.861794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949955, 32.493973, 40.624184>,  <33.112530, 32.598106, 40.481617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949955, 32.493973, 40.624184>,  <32.678993, 32.320415, 40.861794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949955, 32.493973, 40.624184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558065, 0.222989, 0.799274,
		0.479260, -0.872934, -0.091087,
		0.677402, 0.433892, -0.594023,
		33.153175, 32.624142, 40.445976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375328, 31.998026, 41.067200>,  <32.678993, 32.320415, 40.861794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375328, 31.998026, 41.067200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430424, 32.345440, 40.876759>,  <33.463482, 32.553890, 40.762493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430424, 32.345440, 40.876759>,  <33.375328, 31.998026, 41.067200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430424, 32.345440, 40.876759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741792, 0.228069, 0.630657,
		0.656333, -0.440032, -0.612861,
		0.137734, 0.868537, -0.476102,
		33.471745, 32.606003, 40.733929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064930, 32.037655, 41.128902>,  <33.375328, 31.998026, 41.067200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064930, 32.037655, 41.128902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908398, 32.400967, 41.069721>,  <33.814480, 32.618954, 41.034210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908398, 32.400967, 41.069721>,  <34.064930, 32.037655, 41.128902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908398, 32.400967, 41.069721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617525, 0.378386, 0.689556,
		0.682292, 0.178479, -0.708959,
		-0.391331, 0.908278, -0.147955,
		33.790997, 32.673450, 41.025333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645798, 32.433941, 41.003784>,  <34.064930, 32.037655, 41.128902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645798, 32.433941, 41.003784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351322, 32.682743, 41.110462>,  <34.174637, 32.832024, 41.174469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351322, 32.682743, 41.110462>,  <34.645798, 32.433941, 41.003784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351322, 32.682743, 41.110462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619327, 0.460303, 0.636047,
		0.272864, 0.633426, -0.724097,
		-0.736193, 0.622007, 0.266698,
		34.130463, 32.869347, 41.190472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909184, 33.081539, 41.090340>,  <34.645798, 32.433941, 41.003784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909184, 33.081539, 41.090340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576904, 33.119732, 41.309731>,  <34.377537, 33.142647, 41.441364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576904, 33.119732, 41.309731>,  <34.909184, 33.081539, 41.090340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576904, 33.119732, 41.309731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540230, 0.376303, 0.752694,
		-0.134529, 0.921564, -0.364173,
		-0.830694, 0.095478, 0.548480,
		34.327698, 33.148376, 41.474274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986256, 33.746639, 41.415813>,  <34.909184, 33.081539, 41.090340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986256, 33.746639, 41.415813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714230, 33.563385, 41.644768>,  <34.551014, 33.453430, 41.782139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714230, 33.563385, 41.644768>,  <34.986256, 33.746639, 41.415813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714230, 33.563385, 41.644768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322183, 0.514540, 0.794636,
		-0.658566, 0.724816, -0.202317,
		-0.680065, -0.458138, 0.572382,
		34.510208, 33.425945, 41.816483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609501, 34.329811, 41.727409>,  <34.986256, 33.746639, 41.415813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609501, 34.329811, 41.727409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535233, 34.005409, 41.949326>,  <34.490669, 33.810768, 42.082474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535233, 34.005409, 41.949326>,  <34.609501, 34.329811, 41.727409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535233, 34.005409, 41.949326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247340, 0.507852, 0.825172,
		-0.950972, 0.290434, 0.106300,
		-0.185673, -0.811008, 0.554789,
		34.479530, 33.762108, 42.115761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172237, 34.538860, 42.288700>,  <34.609501, 34.329811, 41.727409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172237, 34.538860, 42.288700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348728, 34.201862, 42.412331>,  <34.454620, 33.999664, 42.486511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348728, 34.201862, 42.412331>,  <34.172237, 34.538860, 42.288700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348728, 34.201862, 42.412331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207266, 0.430778, 0.878335,
		-0.873133, -0.323481, 0.364690,
		0.441224, -0.842491, 0.309080,
		34.481094, 33.949116, 42.505054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960762, 34.543926, 42.942783>,  <34.172237, 34.538860, 42.288700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960762, 34.543926, 42.942783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280212, 34.303223, 42.939285>,  <34.471882, 34.158798, 42.937187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280212, 34.303223, 42.939285>,  <33.960762, 34.543926, 42.942783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280212, 34.303223, 42.939285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391490, 0.508420, 0.766971,
		-0.457089, -0.615947, 0.641622,
		0.798627, -0.601763, -0.008744,
		34.519802, 34.122692, 42.936661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990986, 34.370182, 43.668674>,  <33.960762, 34.543926, 42.942783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990986, 34.370182, 43.668674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337536, 34.305374, 43.479725>,  <34.545467, 34.266487, 43.366356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337536, 34.305374, 43.479725>,  <33.990986, 34.370182, 43.668674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337536, 34.305374, 43.479725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464882, 0.607181, 0.644372,
		0.182414, -0.777868, 0.601370,
		0.866377, -0.162024, -0.472375,
		34.597450, 34.256767, 43.338013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444336, 34.142380, 44.231644>,  <33.990986, 34.370182, 43.668674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444336, 34.142380, 44.231644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700314, 34.248535, 43.943188>,  <34.853901, 34.312229, 43.770115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700314, 34.248535, 43.943188>,  <34.444336, 34.142380, 44.231644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700314, 34.248535, 43.943188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507189, 0.559129, 0.655846,
		0.577271, -0.785455, 0.223200,
		0.639935, 0.265396, -0.721143,
		34.892296, 34.328152, 43.726845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119923, 33.968235, 44.441620>,  <34.444336, 34.142380, 44.231644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119923, 33.968235, 44.441620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164749, 34.262314, 44.174210>,  <35.191647, 34.438763, 44.013763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164749, 34.262314, 44.174210>,  <35.119923, 33.968235, 44.441620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164749, 34.262314, 44.174210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654278, 0.451758, 0.606494,
		0.747905, -0.505369, -0.430396,
		0.112068, 0.735199, -0.668524,
		35.198368, 34.482872, 43.973652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807838, 34.202106, 44.556065>,  <35.119923, 33.968235, 44.441620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807838, 34.202106, 44.556065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675495, 34.484066, 44.305099>,  <35.596088, 34.653244, 44.154522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675495, 34.484066, 44.305099>,  <35.807838, 34.202106, 44.556065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675495, 34.484066, 44.305099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489274, 0.696652, 0.524677,
		0.806935, -0.133384, -0.575383,
		-0.330858, 0.704900, -0.627414,
		35.576237, 34.695538, 44.116875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319927, 34.569523, 44.420174>,  <35.807838, 34.202106, 44.556065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319927, 34.569523, 44.420174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004360, 34.803028, 44.343399>,  <35.815022, 34.943130, 44.297333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004360, 34.803028, 44.343399>,  <36.319927, 34.569523, 44.420174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004360, 34.803028, 44.343399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411982, 0.734202, 0.539647,
		0.455947, 0.346659, -0.819720,
		-0.788913, 0.583760, -0.191940,
		35.767685, 34.978157, 44.285816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583035, 35.153107, 44.195152>,  <36.319927, 34.569523, 44.420174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583035, 35.153107, 44.195152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211475, 35.255295, 44.302395>,  <35.988541, 35.316608, 44.366741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211475, 35.255295, 44.302395>,  <36.583035, 35.153107, 44.195152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211475, 35.255295, 44.302395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367353, 0.727270, 0.579767,
		-0.046877, 0.637036, -0.769408,
		-0.928899, 0.255467, 0.268109,
		35.932804, 35.331936, 44.382828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560631, 35.901669, 44.120029>,  <36.583035, 35.153107, 44.195152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560631, 35.901669, 44.120029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232594, 35.838684, 44.340084>,  <36.035770, 35.800892, 44.472118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232594, 35.838684, 44.340084>,  <36.560631, 35.901669, 44.120029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232594, 35.838684, 44.340084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172732, 0.848427, 0.500336,
		-0.545536, 0.505349, -0.668590,
		-0.820094, -0.157464, 0.550137,
		35.986565, 35.791447, 44.505127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321056, 36.537167, 44.178623>,  <36.560631, 35.901669, 44.120029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321056, 36.537167, 44.178623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181541, 36.313938, 44.479797>,  <36.097832, 36.180000, 44.660503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181541, 36.313938, 44.479797>,  <36.321056, 36.537167, 44.178623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181541, 36.313938, 44.479797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226836, 0.729231, 0.645575,
		-0.909338, 0.395959, -0.127754,
		-0.348783, -0.558067, 0.752935,
		36.076908, 36.146519, 44.705677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076092, 36.996113, 44.670357>,  <36.321056, 36.537167, 44.178623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076092, 36.996113, 44.670357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095875, 36.664608, 44.893322>,  <36.107742, 36.465706, 45.027103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095875, 36.664608, 44.893322>,  <36.076092, 36.996113, 44.670357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095875, 36.664608, 44.893322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032440, 0.559136, 0.828441,
		-0.998249, -0.022887, 0.054536,
		0.049454, -0.828760, 0.557415,
		36.110710, 36.415981, 45.060547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599846, 37.074833, 45.154850>,  <36.076092, 36.996113, 44.670357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599846, 37.074833, 45.154850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848381, 36.793114, 45.292202>,  <35.997501, 36.624084, 45.374615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848381, 36.793114, 45.292202>,  <35.599846, 37.074833, 45.154850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848381, 36.793114, 45.292202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138633, 0.332509, 0.932855,
		-0.771182, -0.627221, 0.108962,
		0.621337, -0.704295, 0.343379,
		36.034782, 36.581825, 45.395214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331249, 36.869450, 45.741421>,  <35.599846, 37.074833, 45.154850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331249, 36.869450, 45.741421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717060, 36.775742, 45.790085>,  <35.948547, 36.719517, 45.819283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717060, 36.775742, 45.790085>,  <35.331249, 36.869450, 45.741421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717060, 36.775742, 45.790085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091746, 0.134633, 0.986639,
		-0.247519, -0.962804, 0.108364,
		0.964529, -0.234270, 0.121657,
		36.006420, 36.705460, 45.826584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342094, 36.426704, 46.348934>,  <35.331249, 36.869450, 45.741421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342094, 36.426704, 46.348934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711666, 36.577831, 46.324902>,  <35.933411, 36.668507, 46.310482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711666, 36.577831, 46.324902>,  <35.342094, 36.426704, 46.348934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711666, 36.577831, 46.324902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001527, 0.153402, 0.988163,
		0.382559, -0.913085, 0.141156,
		0.923930, 0.377815, -0.060080,
		35.988846, 36.691177, 46.306877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577538, 36.242611, 46.908413>,  <35.342094, 36.426704, 46.348934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577538, 36.242611, 46.908413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876842, 36.486450, 46.803726>,  <36.056427, 36.632751, 46.740913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876842, 36.486450, 46.803726>,  <35.577538, 36.242611, 46.908413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876842, 36.486450, 46.803726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302618, 0.037426, 0.952377,
		0.590358, -0.791830, -0.156470,
		0.748264, 0.609594, -0.261716,
		36.101322, 36.669327, 46.725212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171654, 35.990154, 47.127892>,  <35.577538, 36.242611, 46.908413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171654, 35.990154, 47.127892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239868, 36.381332, 47.079647>,  <36.280796, 36.616039, 47.050701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239868, 36.381332, 47.079647>,  <36.171654, 35.990154, 47.127892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239868, 36.381332, 47.079647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280945, 0.069068, 0.957235,
		0.944451, -0.197126, -0.262970,
		0.170534, 0.977942, -0.120613,
		36.291027, 36.674717, 47.043465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731152, 36.068233, 47.436085>,  <36.171654, 35.990154, 47.127892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731152, 36.068233, 47.436085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588837, 36.441994, 47.428932>,  <36.503448, 36.666248, 47.424641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588837, 36.441994, 47.428932>,  <36.731152, 36.068233, 47.436085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588837, 36.441994, 47.428932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553942, 0.226252, 0.801223,
		0.752706, 0.275158, -0.598099,
		-0.355784, 0.934397, -0.017880,
		36.482101, 36.722313, 47.423569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340702, 36.522923, 47.599049>,  <36.731152, 36.068233, 47.436085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340702, 36.522923, 47.599049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000366, 36.718559, 47.675846>,  <36.796165, 36.835941, 47.721924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000366, 36.718559, 47.675846>,  <37.340702, 36.522923, 47.599049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000366, 36.718559, 47.675846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296261, 0.144793, 0.944068,
		0.433940, 0.860128, -0.268095,
		-0.850838, 0.489095, 0.191992,
		36.745113, 36.865288, 47.733444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922001, 36.865726, 47.195038>,  <37.340702, 36.522923, 47.599049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922001, 36.865726, 47.195038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308376, 36.915222, 47.104122>,  <38.540199, 36.944920, 47.049572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308376, 36.915222, 47.104122>,  <37.922001, 36.865726, 47.195038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308376, 36.915222, 47.104122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173009, -0.344377, -0.922752,
		-0.192448, 0.930642, -0.311239,
		0.965936, 0.123735, -0.227284,
		38.598156, 36.952343, 47.035938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880146, 37.148479, 46.597645>,  <37.922001, 36.865726, 47.195038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880146, 37.148479, 46.597645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239456, 36.976574, 46.634319>,  <38.455040, 36.873428, 46.656322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239456, 36.976574, 46.634319>,  <37.880146, 37.148479, 46.597645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239456, 36.976574, 46.634319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119750, -0.440136, -0.889910,
		0.422807, 0.788403, -0.446827,
		0.898273, -0.429768, 0.091682,
		38.508938, 36.847645, 46.661823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247276, 37.321415, 46.020878>,  <37.880146, 37.148479, 46.597645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247276, 37.321415, 46.020878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460228, 37.005493, 46.142719>,  <38.587997, 36.815941, 46.215824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460228, 37.005493, 46.142719>,  <38.247276, 37.321415, 46.020878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460228, 37.005493, 46.142719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037076, -0.381250, -0.923728,
		0.845694, 0.480480, -0.232252,
		0.532379, -0.789802, 0.304606,
		38.619942, 36.768551, 46.234100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752159, 37.313751, 45.568729>,  <38.247276, 37.321415, 46.020878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752159, 37.313751, 45.568729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740341, 36.946644, 45.727131>,  <38.733250, 36.726379, 45.822174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740341, 36.946644, 45.727131>,  <38.752159, 37.313751, 45.568729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740341, 36.946644, 45.727131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128561, -0.396379, -0.909041,
		0.991261, 0.024058, 0.129699,
		-0.029541, -0.917772, 0.396008,
		38.731480, 36.671310, 45.845932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313805, 36.850636, 45.320492>,  <38.752159, 37.313751, 45.568729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313805, 36.850636, 45.320492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048950, 36.588409, 45.465714>,  <38.890038, 36.431072, 45.552845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048950, 36.588409, 45.465714>,  <39.313805, 36.850636, 45.320492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048950, 36.588409, 45.465714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029132, -0.506619, -0.861678,
		0.748817, -0.559972, 0.354548,
		-0.662136, -0.655568, 0.363052,
		38.850307, 36.391739, 45.574631>
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
