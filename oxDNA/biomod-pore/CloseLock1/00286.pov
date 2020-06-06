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
	<24.047579, 35.043556, 34.418686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.257618, 35.127666, 34.748547>,  <24.383642, 35.178131, 34.946465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.257618, 35.127666, 34.748547>,  <24.047579, 35.043556, 34.418686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.257618, 35.127666, 34.748547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835420, -0.312161, -0.452358,
		0.162304, 0.926466, -0.339585,
		0.525100, 0.210277, 0.824654,
		24.415148, 35.190750, 34.995941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.564915, 35.591282, 34.379192>,  <24.047579, 35.043556, 34.418686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.564915, 35.591282, 34.379192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695972, 35.333649, 34.655685>,  <24.774607, 35.179070, 34.821583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695972, 35.333649, 34.655685>,  <24.564915, 35.591282, 34.379192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.695972, 35.333649, 34.655685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837321, -0.140952, -0.528230,
		0.437656, 0.751855, 0.493124,
		0.327645, -0.644086, 0.691232,
		24.794266, 35.140423, 34.863056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.264381, 35.857109, 34.618599>,  <24.564915, 35.591282, 34.379192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.264381, 35.857109, 34.618599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223450, 35.461834, 34.664219>,  <25.198891, 35.224667, 34.691589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223450, 35.461834, 34.664219>,  <25.264381, 35.857109, 34.618599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.223450, 35.461834, 34.664219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868851, -0.144616, -0.473482,
		0.484383, 0.050639, 0.873389,
		-0.102329, -0.988191, 0.114047,
		25.192751, 35.165375, 34.698433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.852411, 35.430153, 35.050243>,  <25.264381, 35.857109, 34.618599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.852411, 35.430153, 35.050243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.697104, 35.196655, 34.765011>,  <25.603918, 35.056557, 34.593872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.697104, 35.196655, 34.765011>,  <25.852411, 35.430153, 35.050243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.697104, 35.196655, 34.765011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920780, -0.214195, -0.326015,
		0.037571, -0.783173, 0.620667,
		-0.388270, -0.583746, -0.713082,
		25.580622, 35.021530, 34.551086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.194410, 34.798908, 34.958729>,  <25.852411, 35.430153, 35.050243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.194410, 34.798908, 34.958729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052639, 34.916225, 34.603569>,  <25.967575, 34.986614, 34.390472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052639, 34.916225, 34.603569>,  <26.194410, 34.798908, 34.958729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052639, 34.916225, 34.603569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900111, -0.150243, -0.408935,
		-0.253338, -0.944143, -0.210746,
		-0.354430, 0.293293, -0.887895,
		25.946310, 35.004215, 34.337200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617706, 34.245007, 35.231339>,  <26.194410, 34.798908, 34.958729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617706, 34.245007, 35.231339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962877, 34.433029, 35.305538>,  <27.169979, 34.545841, 35.350056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962877, 34.433029, 35.305538>,  <26.617706, 34.245007, 35.231339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962877, 34.433029, 35.305538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148279, -0.586454, 0.796295,
		0.483086, -0.659639, -0.575765,
		0.862926, 0.470052, 0.185497,
		27.221756, 34.574043, 35.361187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105484, 33.823311, 35.292377>,  <26.617706, 34.245007, 35.231339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105484, 33.823311, 35.292377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252468, 34.132130, 35.499809>,  <27.340658, 34.317421, 35.624268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252468, 34.132130, 35.499809>,  <27.105484, 33.823311, 35.292377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252468, 34.132130, 35.499809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226601, -0.615105, 0.755181,
		0.902011, -0.159989, -0.400973,
		0.367461, 0.772042, 0.518578,
		27.362707, 34.363743, 35.655384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.794167, 33.600414, 35.455444>,  <27.105484, 33.823311, 35.292377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.794167, 33.600414, 35.455444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659060, 33.879040, 35.708652>,  <27.577995, 34.046215, 35.860577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659060, 33.879040, 35.708652>,  <27.794167, 33.600414, 35.455444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659060, 33.879040, 35.708652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169605, -0.616491, 0.768878,
		0.925823, 0.367064, 0.090090,
		-0.337767, 0.696565, 0.633018,
		27.557730, 34.088009, 35.898560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345114, 33.740376, 35.875446>,  <27.794167, 33.600414, 35.455444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345114, 33.740376, 35.875446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016857, 33.818321, 36.090324>,  <27.819902, 33.865089, 36.219250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016857, 33.818321, 36.090324>,  <28.345114, 33.740376, 35.875446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016857, 33.818321, 36.090324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272076, -0.693434, 0.667177,
		0.502515, 0.693670, 0.516043,
		-0.820642, 0.194863, 0.537192,
		27.770664, 33.876781, 36.251480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538031, 33.601871, 36.614029>,  <28.345114, 33.740376, 35.875446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538031, 33.601871, 36.614029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140909, 33.613346, 36.660538>,  <27.902636, 33.620232, 36.688442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140909, 33.613346, 36.660538>,  <28.538031, 33.601871, 36.614029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140909, 33.613346, 36.660538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067362, -0.668928, 0.740269,
		0.099013, 0.742773, 0.662182,
		-0.992804, 0.028691, 0.116267,
		27.843067, 33.621952, 36.695419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387457, 33.682903, 37.409637>,  <28.538031, 33.601871, 36.614029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387457, 33.682903, 37.409637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047453, 33.575069, 37.228615>,  <27.843451, 33.510368, 37.119999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047453, 33.575069, 37.228615>,  <28.387457, 33.682903, 37.409637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047453, 33.575069, 37.228615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188058, -0.647215, 0.738747,
		-0.492057, 0.713049, 0.499441,
		-0.850008, -0.269581, -0.452561,
		27.792450, 33.494194, 37.092846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853411, 33.850632, 37.817795>,  <28.387457, 33.682903, 37.409637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853411, 33.850632, 37.817795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723747, 33.553349, 37.583679>,  <27.645950, 33.374977, 37.443211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723747, 33.553349, 37.583679>,  <27.853411, 33.850632, 37.817795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723747, 33.553349, 37.583679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225087, -0.540336, 0.810785,
		-0.918835, 0.394563, 0.007868,
		-0.324157, -0.743207, -0.585291,
		27.626501, 33.330387, 37.408092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380280, 33.535957, 38.318214>,  <27.853411, 33.850632, 37.817795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380280, 33.535957, 38.318214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440516, 33.279644, 38.017094>,  <27.476656, 33.125854, 37.836422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440516, 33.279644, 38.017094>,  <27.380280, 33.535957, 38.318214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440516, 33.279644, 38.017094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025963, -0.758663, 0.650966,
		-0.988256, -0.117572, -0.097609,
		0.150587, -0.640787, -0.752805,
		27.485691, 33.087406, 37.791252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916855, 33.025379, 38.413776>,  <27.380280, 33.535957, 38.318214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916855, 33.025379, 38.413776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221878, 32.872993, 38.204636>,  <27.404892, 32.781563, 38.079151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221878, 32.872993, 38.204636>,  <26.916855, 33.025379, 38.413776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221878, 32.872993, 38.204636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056929, -0.765566, 0.640834,
		-0.644413, -0.518437, -0.562099,
		0.762555, -0.380963, -0.522855,
		27.450645, 32.758705, 38.047779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706560, 32.309261, 38.262894>,  <26.916855, 33.025379, 38.413776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706560, 32.309261, 38.262894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105022, 32.332851, 38.236996>,  <27.344101, 32.347004, 38.221455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105022, 32.332851, 38.236996>,  <26.706560, 32.309261, 38.262894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105022, 32.332851, 38.236996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087456, -0.709019, 0.699746,
		-0.004641, -0.702719, -0.711452,
		0.996157, 0.058973, -0.064747,
		27.403870, 32.350544, 38.217571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806936, 31.622263, 38.321320>,  <26.706560, 32.309261, 38.262894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806936, 31.622263, 38.321320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156033, 31.812950, 38.363388>,  <27.365490, 31.927362, 38.388630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156033, 31.812950, 38.363388>,  <26.806936, 31.622263, 38.321320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156033, 31.812950, 38.363388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259729, -0.635836, 0.726811,
		0.413354, -0.607003, -0.678738,
		0.872742, 0.476718, 0.105169,
		27.417856, 31.955965, 38.394939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301138, 31.037617, 38.310604>,  <26.806936, 31.622263, 38.321320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301138, 31.037617, 38.310604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468218, 31.354557, 38.488461>,  <27.568466, 31.544722, 38.595177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468218, 31.354557, 38.488461>,  <27.301138, 31.037617, 38.310604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468218, 31.354557, 38.488461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294148, -0.580953, 0.758927,
		0.859654, -0.186212, -0.475731,
		0.417699, 0.792351, 0.444645,
		27.593527, 31.592262, 38.621853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987925, 30.798296, 38.602016>,  <27.301138, 31.037617, 38.310604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987925, 30.798296, 38.602016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910950, 31.139542, 38.795990>,  <27.864765, 31.344290, 38.912376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910950, 31.139542, 38.795990>,  <27.987925, 30.798296, 38.602016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910950, 31.139542, 38.795990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304267, -0.417946, 0.856004,
		0.932947, 0.312278, -0.179146,
		-0.192438, 0.853114, 0.484937,
		27.853218, 31.395475, 38.941471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487898, 31.003803, 38.890057>,  <27.987925, 30.798296, 38.602016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487898, 31.003803, 38.890057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236773, 31.195007, 39.135773>,  <28.086098, 31.309731, 39.283203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236773, 31.195007, 39.135773>,  <28.487898, 31.003803, 38.890057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236773, 31.195007, 39.135773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494107, -0.365053, 0.789047,
		0.601423, 0.798900, -0.007004,
		-0.627812, 0.478012, 0.614293,
		28.048429, 31.338411, 39.320061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916771, 31.341473, 39.399818>,  <28.487898, 31.003803, 38.890057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916771, 31.341473, 39.399818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552998, 31.328806, 39.565678>,  <28.334734, 31.321207, 39.665192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552998, 31.328806, 39.565678>,  <28.916771, 31.341473, 39.399818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552998, 31.328806, 39.565678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402781, -0.315109, 0.859345,
		0.103448, 0.948527, 0.299324,
		-0.909432, -0.031665, 0.414646,
		28.280169, 31.319307, 39.690071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011868, 31.681141, 40.000877>,  <28.916771, 31.341473, 39.399818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011868, 31.681141, 40.000877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699762, 31.432837, 40.031467>,  <28.512499, 31.283854, 40.049820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699762, 31.432837, 40.031467>,  <29.011868, 31.681141, 40.000877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699762, 31.432837, 40.031467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393644, -0.392375, 0.831316,
		-0.486040, 0.678749, 0.550514,
		-0.780263, -0.620759, 0.076475,
		28.465683, 31.246609, 40.054409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975201, 31.797417, 40.648987>,  <29.011868, 31.681141, 40.000877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975201, 31.797417, 40.648987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764915, 31.477846, 40.532131>,  <28.638744, 31.286104, 40.462017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764915, 31.477846, 40.532131>,  <28.975201, 31.797417, 40.648987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764915, 31.477846, 40.532131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280948, -0.487221, 0.826852,
		-0.802930, 0.352609, 0.480594,
		-0.525711, -0.798926, -0.292139,
		28.607203, 31.238169, 40.444489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519993, 31.531931, 41.225227>,  <28.975201, 31.797417, 40.648987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519993, 31.531931, 41.225227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553307, 31.214785, 40.983757>,  <28.573294, 31.024498, 40.838875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553307, 31.214785, 40.983757>,  <28.519993, 31.531931, 41.225227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553307, 31.214785, 40.983757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294202, -0.559221, 0.775060,
		-0.952108, -0.242153, 0.186689,
		0.083282, -0.792864, -0.603680,
		28.578291, 30.976925, 40.802654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109619, 30.918352, 41.552612>,  <28.519993, 31.531931, 41.225227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109619, 30.918352, 41.552612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390631, 30.775408, 41.306442>,  <28.559238, 30.689642, 41.158741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390631, 30.775408, 41.306442>,  <28.109619, 30.918352, 41.552612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390631, 30.775408, 41.306442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333904, -0.598159, 0.728501,
		-0.628460, -0.717285, -0.300899,
		0.702529, -0.357362, -0.615423,
		28.601389, 30.668200, 41.121815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942709, 30.291443, 41.554905>,  <28.109619, 30.918352, 41.552612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942709, 30.291443, 41.554905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332836, 30.336308, 41.478825>,  <28.566912, 30.363226, 41.433178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332836, 30.336308, 41.478825>,  <27.942709, 30.291443, 41.554905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332836, 30.336308, 41.478825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220723, -0.471167, 0.853981,
		0.006169, -0.874884, -0.484294,
		0.975317, 0.112163, -0.190200,
		28.625431, 30.369957, 41.421764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995047, 29.812538, 42.167843>,  <27.942709, 30.291443, 41.554905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995047, 29.812538, 42.167843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898951, 29.916965, 42.541821>,  <27.841293, 29.979622, 42.766209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898951, 29.916965, 42.541821>,  <27.995047, 29.812538, 42.167843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898951, 29.916965, 42.541821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952326, -0.123190, 0.279105,
		0.188041, 0.957428, -0.219025,
		-0.240242, 0.261067, 0.934948,
		27.826878, 29.995285, 42.822304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527678, 30.343973, 42.408096>,  <27.995047, 29.812538, 42.167843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527678, 30.343973, 42.408096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374937, 30.124918, 42.705898>,  <28.283293, 29.993484, 42.884579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374937, 30.124918, 42.705898>,  <28.527678, 30.343973, 42.408096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374937, 30.124918, 42.705898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924108, -0.239027, 0.298146,
		0.014680, 0.801847, 0.597349,
		-0.381850, -0.547638, 0.744502,
		28.260382, 29.960627, 42.929249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227304, 30.051346, 42.686508>,  <28.527678, 30.343973, 42.408096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227304, 30.051346, 42.686508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946394, 30.002962, 42.967129>,  <28.777847, 29.973932, 43.135502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946394, 30.002962, 42.967129>,  <29.227304, 30.051346, 42.686508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946394, 30.002962, 42.967129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429587, 0.713817, 0.553100,
		-0.567684, 0.689807, -0.449334,
		-0.702275, -0.120958, 0.701555,
		28.735712, 29.966675, 43.177597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746401, 30.589756, 42.979069>,  <29.227304, 30.051346, 42.686508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746401, 30.589756, 42.979069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486542, 30.538137, 43.278751>,  <29.330626, 30.507166, 43.458561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486542, 30.538137, 43.278751>,  <29.746401, 30.589756, 42.979069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486542, 30.538137, 43.278751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396249, 0.898515, -0.188830,
		-0.648803, -0.419544, -0.634853,
		-0.649648, -0.129046, 0.749203,
		29.291647, 30.499424, 43.503513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224279, 30.863777, 42.714619>,  <29.746401, 30.589756, 42.979069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224279, 30.863777, 42.714619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163425, 30.851158, 43.109760>,  <29.126913, 30.843588, 43.346848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163425, 30.851158, 43.109760>,  <29.224279, 30.863777, 42.714619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163425, 30.851158, 43.109760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273905, 0.961688, -0.011472,
		-0.949648, -0.272324, -0.154947,
		-0.152135, -0.031546, 0.987856,
		29.117785, 30.841694, 43.406116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538988, 31.054703, 42.909985>,  <29.224279, 30.863777, 42.714619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538988, 31.054703, 42.909985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809950, 31.156729, 43.185974>,  <28.972527, 31.217943, 43.351566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809950, 31.156729, 43.185974>,  <28.538988, 31.054703, 42.909985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809950, 31.156729, 43.185974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134830, 0.965124, -0.224404,
		-0.723147, 0.058984, 0.688171,
		0.677406, 0.255064, 0.689974,
		29.013172, 31.233248, 43.392967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437183, 31.462193, 43.521313>,  <28.538988, 31.054703, 42.909985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437183, 31.462193, 43.521313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772615, 31.586641, 43.342434>,  <28.973875, 31.661310, 43.235107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772615, 31.586641, 43.342434>,  <28.437183, 31.462193, 43.521313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772615, 31.586641, 43.342434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278143, 0.950342, 0.139593,
		0.468425, 0.007326, 0.883473,
		0.838579, 0.311121, -0.447202,
		29.024189, 31.679977, 43.208275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783907, 31.874647, 43.615864>,  <28.437183, 31.462193, 43.521313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783907, 31.874647, 43.615864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131323, 32.045139, 43.717026>,  <28.339773, 32.147434, 43.777721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131323, 32.045139, 43.717026>,  <27.783907, 31.874647, 43.615864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131323, 32.045139, 43.717026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000287, 0.509852, -0.860262,
		-0.495615, 0.747247, 0.442706,
		0.868542, 0.426232, 0.252905,
		28.391886, 32.173008, 43.792896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714691, 32.586250, 43.642365>,  <27.783907, 31.874647, 43.615864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714691, 32.586250, 43.642365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096247, 32.500862, 43.557964>,  <28.325180, 32.449627, 43.507324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096247, 32.500862, 43.557964>,  <27.714691, 32.586250, 43.642365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096247, 32.500862, 43.557964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111702, 0.400019, -0.909674,
		0.278598, 0.891299, 0.357729,
		0.953890, -0.213474, -0.211004,
		28.382414, 32.436821, 43.494663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055771, 33.273304, 43.433693>,  <27.714691, 32.586250, 43.642365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055771, 33.273304, 43.433693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267740, 32.959053, 43.305962>,  <28.394922, 32.770504, 43.229321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267740, 32.959053, 43.305962>,  <28.055771, 33.273304, 43.433693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267740, 32.959053, 43.305962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419334, 0.570039, -0.706551,
		0.737117, 0.240510, 0.631517,
		0.529922, -0.785627, -0.319331,
		28.426716, 32.723366, 43.210163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783209, 33.555450, 43.235813>,  <28.055771, 33.273304, 43.433693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783209, 33.555450, 43.235813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703119, 33.204502, 43.061401>,  <28.655066, 32.993931, 42.956753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703119, 33.204502, 43.061401>,  <28.783209, 33.555450, 43.235813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.703119, 33.204502, 43.061401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357243, 0.349026, -0.866348,
		0.912298, -0.329233, 0.243553,
		-0.200224, -0.877375, -0.436032,
		28.643051, 32.941288, 42.930592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320507, 33.256001, 42.756588>,  <28.783209, 33.555450, 43.235813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320507, 33.256001, 42.756588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989109, 33.083851, 42.613270>,  <28.790270, 32.980560, 42.527279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989109, 33.083851, 42.613270>,  <29.320507, 33.256001, 42.756588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989109, 33.083851, 42.613270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268487, 0.256221, -0.928583,
		0.491441, -0.865523, -0.096727,
		-0.828493, -0.430374, -0.358299,
		28.740561, 32.954739, 42.505779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606909, 33.074844, 42.145889>,  <29.320507, 33.256001, 42.756588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606909, 33.074844, 42.145889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.209351, 33.053711, 42.107151>,  <28.970816, 33.041031, 42.083908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.209351, 33.053711, 42.107151>,  <29.606909, 33.074844, 42.145889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209351, 33.053711, 42.107151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080768, 0.249532, -0.964992,
		0.075151, -0.966924, -0.243741,
		-0.993896, -0.052834, -0.096849,
		28.911182, 33.037861, 42.078094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454620, 32.718086, 41.458035>,  <29.606909, 33.074844, 42.145889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454620, 32.718086, 41.458035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114481, 32.907810, 41.549191>,  <28.910397, 33.021645, 41.603886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114481, 32.907810, 41.549191>,  <29.454620, 32.718086, 41.458035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114481, 32.907810, 41.549191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009945, 0.418511, -0.908157,
		-0.526123, -0.774518, -0.351164,
		-0.850350, 0.474310, 0.227891,
		28.859375, 33.050102, 41.617558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069685, 32.545280, 40.917336>,  <29.454620, 32.718086, 41.458035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069685, 32.545280, 40.917336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917831, 32.882294, 41.070183>,  <28.826719, 33.084503, 41.161892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917831, 32.882294, 41.070183>,  <29.069685, 32.545280, 40.917336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917831, 32.882294, 41.070183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043345, 0.396388, -0.917059,
		-0.924120, -0.364710, -0.113963,
		-0.379634, 0.842533, 0.382119,
		28.803942, 33.135056, 41.184818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499014, 32.815434, 40.497540>,  <29.069685, 32.545280, 40.917336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499014, 32.815434, 40.497540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605024, 33.143333, 40.700623>,  <28.668631, 33.340073, 40.822472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605024, 33.143333, 40.700623>,  <28.499014, 32.815434, 40.497540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605024, 33.143333, 40.700623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144346, 0.554328, -0.819686,
		-0.953375, 0.143955, 0.265241,
		0.265028, 0.819754, 0.507703,
		28.684532, 33.389259, 40.852932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186325, 33.233185, 40.153095>,  <28.499014, 32.815434, 40.497540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186325, 33.233185, 40.153095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436180, 33.477417, 40.347836>,  <28.586092, 33.623955, 40.464680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436180, 33.477417, 40.347836>,  <28.186325, 33.233185, 40.153095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436180, 33.477417, 40.347836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005063, 0.626591, -0.779332,
		-0.780899, 0.484334, 0.394483,
		0.624636, 0.610577, 0.486852,
		28.623571, 33.660591, 40.493893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900309, 33.930824, 40.190876>,  <28.186325, 33.233185, 40.153095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900309, 33.930824, 40.190876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.293962, 33.991646, 40.227448>,  <28.530155, 34.028141, 40.249390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.293962, 33.991646, 40.227448>,  <27.900309, 33.930824, 40.190876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293962, 33.991646, 40.227448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046652, 0.718922, -0.693523,
		-0.171185, 0.678254, 0.714610,
		0.984134, 0.152059, 0.091427,
		28.589203, 34.037262, 40.254875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007822, 34.597061, 40.258045>,  <27.900309, 33.930824, 40.190876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.007822, 34.597061, 40.258045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359962, 34.467590, 40.119358>,  <28.571247, 34.389908, 40.036144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359962, 34.467590, 40.119358>,  <28.007822, 34.597061, 40.258045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359962, 34.467590, 40.119358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054252, 0.657466, -0.751529,
		0.471210, 0.680419, 0.561240,
		0.880351, -0.323680, -0.346719,
		28.624067, 34.370487, 40.015343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294346, 35.283146, 40.057148>,  <28.007822, 34.597061, 40.258045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294346, 35.283146, 40.057148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538393, 35.023014, 39.876114>,  <28.684822, 34.866936, 39.767494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538393, 35.023014, 39.876114>,  <28.294346, 35.283146, 40.057148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538393, 35.023014, 39.876114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327671, 0.727188, -0.603183,
		0.721377, 0.219716, 0.656765,
		0.610120, -0.650325, -0.452582,
		28.721430, 34.827915, 39.740337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859520, 35.704754, 39.865551>,  <28.294346, 35.283146, 40.057148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859520, 35.704754, 39.865551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883947, 35.376560, 39.638191>,  <28.898603, 35.179646, 39.501774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883947, 35.376560, 39.638191>,  <28.859520, 35.704754, 39.865551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883947, 35.376560, 39.638191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138910, 0.570911, -0.809175,
		0.988420, -0.029540, 0.148839,
		0.061071, -0.820480, -0.568403,
		28.902269, 35.130417, 39.467670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506807, 35.748249, 39.468163>,  <28.859520, 35.704754, 39.865551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506807, 35.748249, 39.468163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276560, 35.467686, 39.300026>,  <29.138411, 35.299347, 39.199142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276560, 35.467686, 39.300026>,  <29.506807, 35.748249, 39.468163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276560, 35.467686, 39.300026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285041, 0.309689, -0.907108,
		0.766429, -0.641964, 0.021667,
		-0.575620, -0.701409, -0.420340,
		29.103874, 35.257263, 39.173923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041363, 35.402554, 39.007851>,  <29.506807, 35.748249, 39.468163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041363, 35.402554, 39.007851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655199, 35.349876, 38.917835>,  <29.423500, 35.318272, 38.863827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655199, 35.349876, 38.917835>,  <30.041363, 35.402554, 39.007851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655199, 35.349876, 38.917835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193682, 0.215601, -0.957081,
		0.174554, -0.967561, -0.182638,
		-0.965411, -0.131688, -0.225033,
		29.365576, 35.310368, 38.850327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995781, 35.045803, 38.411938>,  <30.041363, 35.402554, 39.007851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995781, 35.045803, 38.411938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627478, 35.201607, 38.420780>,  <29.406496, 35.295090, 38.426086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627478, 35.201607, 38.420780>,  <29.995781, 35.045803, 38.411938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627478, 35.201607, 38.420780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055892, 0.187771, -0.980621,
		-0.386111, -0.901679, -0.194662,
		-0.920757, 0.389509, 0.022104,
		29.351250, 35.318459, 38.427410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611921, 34.668903, 37.876930>,  <29.995781, 35.045803, 38.411938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611921, 34.668903, 37.876930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420214, 35.010983, 37.955868>,  <29.305189, 35.216228, 38.003231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420214, 35.010983, 37.955868>,  <29.611921, 34.668903, 37.876930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420214, 35.010983, 37.955868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122020, 0.157737, -0.979913,
		-0.869145, -0.493720, 0.028753,
		-0.479267, 0.855196, 0.197340,
		29.276434, 35.267540, 38.015068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866163, 34.720520, 37.570854>,  <29.611921, 34.668903, 37.876930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866163, 34.720520, 37.570854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028032, 35.082912, 37.620548>,  <29.125154, 35.300346, 37.650364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028032, 35.082912, 37.620548>,  <28.866163, 34.720520, 37.570854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028032, 35.082912, 37.620548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059563, 0.109456, -0.992205,
		-0.912519, 0.408920, -0.009669,
		0.404674, 0.905982, 0.124237,
		29.149435, 35.354706, 37.657818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619139, 35.067951, 36.943466>,  <28.866163, 34.720520, 37.570854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619139, 35.067951, 36.943466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877911, 35.351238, 37.056538>,  <29.033175, 35.521210, 37.124382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877911, 35.351238, 37.056538>,  <28.619139, 35.067951, 36.943466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877911, 35.351238, 37.056538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246762, 0.156325, -0.956384,
		-0.721520, 0.688467, -0.073631,
		0.646929, 0.708220, 0.282679,
		29.071989, 35.563705, 37.141342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395750, 35.695286, 36.605286>,  <28.619139, 35.067951, 36.943466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395750, 35.695286, 36.605286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784744, 35.722507, 36.694405>,  <29.018141, 35.738842, 36.747875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784744, 35.722507, 36.694405>,  <28.395750, 35.695286, 36.605286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784744, 35.722507, 36.694405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219005, 0.058929, -0.973943,
		-0.079412, 0.995940, 0.042403,
		0.972487, 0.068056, 0.222795,
		29.076490, 35.742924, 36.761242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638737, 36.203548, 36.128468>,  <28.395750, 35.695286, 36.605286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638737, 36.203548, 36.128468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971521, 36.022915, 36.257412>,  <29.171192, 35.914536, 36.334778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971521, 36.022915, 36.257412>,  <28.638737, 36.203548, 36.128468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971521, 36.022915, 36.257412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365205, 0.008303, -0.930890,
		0.417695, 0.892192, 0.171826,
		0.831960, -0.451580, 0.322365,
		29.221109, 35.887440, 36.354122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195564, 36.530724, 35.771675>,  <28.638737, 36.203548, 36.128468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195564, 36.530724, 35.771675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342085, 36.185829, 35.911606>,  <29.429998, 35.978893, 35.995564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342085, 36.185829, 35.911606>,  <29.195564, 36.530724, 35.771675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342085, 36.185829, 35.911606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321064, -0.235746, -0.917247,
		0.873350, 0.448306, 0.190477,
		0.366303, -0.862233, 0.349823,
		29.451977, 35.927158, 36.016552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843130, 36.459938, 35.395657>,  <29.195564, 36.530724, 35.771675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843130, 36.459938, 35.395657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681229, 36.112690, 35.510574>,  <29.584087, 35.904343, 35.579525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681229, 36.112690, 35.510574>,  <29.843130, 36.459938, 35.395657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681229, 36.112690, 35.510574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357831, -0.439494, -0.823894,
		0.841505, -0.230672, 0.488528,
		-0.404755, -0.868122, 0.287295,
		29.559803, 35.852253, 35.596764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465973, 36.041107, 35.370895>,  <29.843130, 36.459938, 35.395657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465973, 36.041107, 35.370895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177980, 35.763546, 35.375240>,  <30.005184, 35.597008, 35.377850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177980, 35.763546, 35.375240>,  <30.465973, 36.041107, 35.370895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177980, 35.763546, 35.375240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520314, -0.550093, -0.653201,
		0.459237, -0.464640, 0.757107,
		-0.719982, -0.693907, 0.010864,
		29.961987, 35.555374, 35.378498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756481, 35.422905, 35.536243>,  <30.465973, 36.041107, 35.370895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756481, 35.422905, 35.536243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420181, 35.364437, 35.327717>,  <30.218401, 35.329357, 35.202602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420181, 35.364437, 35.327717>,  <30.756481, 35.422905, 35.536243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420181, 35.364437, 35.327717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461816, -0.696187, -0.549590,
		-0.282600, -0.702821, 0.652824,
		-0.840751, -0.146171, -0.521317,
		30.167955, 35.320587, 35.171322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568941, 34.702568, 35.272198>,  <30.756481, 35.422905, 35.536243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568941, 34.702568, 35.272198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463984, 34.734097, 34.887505>,  <30.401009, 34.753014, 34.656689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463984, 34.734097, 34.887505>,  <30.568941, 34.702568, 35.272198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463984, 34.734097, 34.887505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239131, 0.960259, 0.143943,
		0.934862, 0.267751, -0.233117,
		-0.262393, 0.078822, -0.961736,
		30.385265, 34.757744, 34.598984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788210, 34.115330, 35.795498>,  <30.568941, 34.702568, 35.272198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788210, 34.115330, 35.795498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972364, 34.333374, 35.515240>,  <31.082857, 34.464199, 35.347084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972364, 34.333374, 35.515240>,  <30.788210, 34.115330, 35.795498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972364, 34.333374, 35.515240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326360, -0.837923, -0.437463,
		-0.825551, -0.027261, -0.563668,
		0.460385, 0.545107, -0.700646,
		31.110479, 34.496906, 35.305046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599951, 33.889206, 35.129528>,  <30.788210, 34.115330, 35.795498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599951, 33.889206, 35.129528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942406, 34.092621, 35.092831>,  <31.147879, 34.214672, 35.070812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942406, 34.092621, 35.092831>,  <30.599951, 33.889206, 35.129528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942406, 34.092621, 35.092831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389977, -0.752316, -0.530979,
		-0.339042, 0.418814, -0.842405,
		0.856136, 0.508542, -0.091739,
		31.199247, 34.245182, 35.065308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807562, 34.042294, 34.447075>,  <30.599951, 33.889206, 35.129528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807562, 34.042294, 34.447075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139925, 34.018581, 34.668373>,  <31.339342, 34.004353, 34.801151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139925, 34.018581, 34.668373>,  <30.807562, 34.042294, 34.447075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139925, 34.018581, 34.668373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336818, -0.737845, -0.584926,
		0.442882, 0.672362, -0.593114,
		0.830908, -0.059282, 0.553242,
		31.389198, 34.000797, 34.834347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412548, 34.219475, 34.093998>,  <30.807562, 34.042294, 34.447075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412548, 34.219475, 34.093998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526628, 33.941776, 34.358326>,  <31.595078, 33.775158, 34.516922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526628, 33.941776, 34.358326>,  <31.412548, 34.219475, 34.093998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526628, 33.941776, 34.358326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269247, -0.603662, -0.750399,
		0.919872, 0.391940, 0.014757,
		0.285203, -0.694244, 0.660821,
		31.612190, 33.733501, 34.556572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214993, 34.016792, 34.130287>,  <31.412548, 34.219475, 34.093998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214993, 34.016792, 34.130287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935900, 33.737541, 34.194523>,  <31.768444, 33.569992, 34.233063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935900, 33.737541, 34.194523>,  <32.214993, 34.016792, 34.130287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935900, 33.737541, 34.194523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270486, -0.464330, -0.843348,
		0.663329, -0.544995, 0.512812,
		-0.697734, -0.698125, 0.160590,
		31.726580, 33.528103, 34.242699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045860, 33.836525, 34.076889>,  <32.214993, 34.016792, 34.130287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045860, 33.836525, 34.076889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070007, 33.854698, 33.678032>,  <33.084496, 33.865601, 33.438717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070007, 33.854698, 33.678032>,  <33.045860, 33.836525, 34.076889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070007, 33.854698, 33.678032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799155, 0.600757, -0.021009,
		0.598086, 0.798140, 0.072569,
		0.060365, 0.045429, -0.997142,
		33.088116, 33.868328, 33.378891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633633, 33.468189, 34.229366>,  <33.045860, 33.836525, 34.076889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633633, 33.468189, 34.229366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027245, 33.483528, 34.298897>,  <34.263412, 33.492729, 34.340614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027245, 33.483528, 34.298897>,  <33.633633, 33.468189, 34.229366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027245, 33.483528, 34.298897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099724, -0.690129, 0.716782,
		0.147446, -0.722670, -0.675284,
		0.984030, 0.038345, 0.173825,
		34.322453, 33.495033, 34.351044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802513, 32.808987, 34.512451>,  <33.633633, 33.468189, 34.229366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802513, 32.808987, 34.512451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117908, 33.026836, 34.626759>,  <34.307148, 33.157547, 34.695343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117908, 33.026836, 34.626759>,  <33.802513, 32.808987, 34.512451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117908, 33.026836, 34.626759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015035, -0.481556, 0.876286,
		0.614861, -0.686649, -0.387892,
		0.788492, 0.544626, 0.285766,
		34.354458, 33.190224, 34.712490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137432, 32.332817, 34.875877>,  <33.802513, 32.808987, 34.512451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137432, 32.332817, 34.875877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283722, 32.687756, 34.988205>,  <34.371494, 32.900719, 35.055599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283722, 32.687756, 34.988205>,  <34.137432, 32.332817, 34.875877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283722, 32.687756, 34.988205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126335, -0.346254, 0.929595,
		0.922109, -0.304499, -0.238737,
		0.365724, 0.887349, 0.280815,
		34.393440, 32.953960, 35.072449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763226, 32.137894, 35.249447>,  <34.137432, 32.332817, 34.875877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763226, 32.137894, 35.249447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632885, 32.495899, 35.371277>,  <34.554680, 32.710701, 35.444374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632885, 32.495899, 35.371277>,  <34.763226, 32.137894, 35.249447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632885, 32.495899, 35.371277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024885, -0.330169, 0.943594,
		0.945093, 0.299894, 0.129860,
		-0.325854, 0.895015, 0.304577,
		34.535130, 32.764404, 35.462650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074753, 32.370926, 35.915421>,  <34.763226, 32.137894, 35.249447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074753, 32.370926, 35.915421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726372, 32.565975, 35.891220>,  <34.517342, 32.683002, 35.876698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726372, 32.565975, 35.891220>,  <35.074753, 32.370926, 35.915421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726372, 32.565975, 35.891220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223347, -0.283202, 0.932691,
		0.437663, 0.825847, 0.355565,
		-0.870957, 0.487619, -0.060504,
		34.465084, 32.712261, 35.873070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971748, 32.850739, 36.491535>,  <35.074753, 32.370926, 35.915421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971748, 32.850739, 36.491535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593830, 32.852322, 36.360477>,  <34.367081, 32.853271, 36.281841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593830, 32.852322, 36.360477>,  <34.971748, 32.850739, 36.491535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593830, 32.852322, 36.360477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327238, 0.039973, 0.944096,
		0.016830, 0.999193, -0.036472,
		-0.944792, 0.003954, -0.327647,
		34.310394, 32.853508, 36.262184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653358, 33.379730, 36.888187>,  <34.971748, 32.850739, 36.491535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653358, 33.379730, 36.888187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361492, 33.142399, 36.752220>,  <34.186371, 33.000000, 36.670639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361492, 33.142399, 36.752220>,  <34.653358, 33.379730, 36.888187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361492, 33.142399, 36.752220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389887, -0.047392, 0.919642,
		-0.561764, 0.803561, -0.196752,
		-0.729664, -0.593333, -0.339921,
		34.142593, 32.964397, 36.650246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965641, 33.625027, 37.250401>,  <34.653358, 33.379730, 36.888187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965641, 33.625027, 37.250401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916847, 33.256966, 37.101574>,  <33.887573, 33.036129, 37.012280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916847, 33.256966, 37.101574>,  <33.965641, 33.625027, 37.250401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916847, 33.256966, 37.101574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533928, -0.255171, 0.806107,
		-0.836685, 0.296988, -0.460170,
		-0.121983, -0.920156, -0.372068,
		33.880253, 32.980919, 36.989952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227455, 33.492790, 37.231987>,  <33.965641, 33.625027, 37.250401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227455, 33.492790, 37.231987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406990, 33.136894, 37.265255>,  <33.514709, 32.923359, 37.285217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406990, 33.136894, 37.265255>,  <33.227455, 33.492790, 37.231987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406990, 33.136894, 37.265255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554331, -0.204215, 0.806854,
		-0.700904, -0.408246, -0.584867,
		0.448834, -0.889737, 0.083169,
		33.541641, 32.869972, 37.290207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668194, 33.043732, 37.392033>,  <33.227455, 33.492790, 37.231987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668194, 33.043732, 37.392033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992836, 32.825371, 37.475246>,  <33.187622, 32.694355, 37.525177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992836, 32.825371, 37.475246>,  <32.668194, 33.043732, 37.392033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992836, 32.825371, 37.475246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386546, -0.234797, 0.891882,
		-0.438038, -0.804273, -0.401581,
		0.811607, -0.545908, 0.208038,
		33.236317, 32.661598, 37.537659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448963, 32.450741, 37.627415>,  <32.668194, 33.043732, 37.392033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448963, 32.450741, 37.627415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816887, 32.457020, 37.784237>,  <33.037640, 32.460789, 37.878330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816887, 32.457020, 37.784237>,  <32.448963, 32.450741, 37.627415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816887, 32.457020, 37.784237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372617, -0.278059, 0.885347,
		0.122911, -0.960436, -0.249912,
		0.919809, 0.015698, 0.392052,
		33.092831, 32.461731, 37.901852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483852, 31.933405, 37.980938>,  <32.448963, 32.450741, 37.627415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483852, 31.933405, 37.980938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820312, 32.098885, 38.120258>,  <33.022190, 32.198174, 38.203850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820312, 32.098885, 38.120258>,  <32.483852, 31.933405, 37.980938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820312, 32.098885, 38.120258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119530, -0.485896, 0.865805,
		0.527422, -0.769907, -0.359263,
		0.841153, 0.413701, 0.348299,
		33.072659, 32.222996, 38.224747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979801, 31.356632, 38.231804>,  <32.483852, 31.933405, 37.980938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979801, 31.356632, 38.231804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044365, 31.708475, 38.410797>,  <33.083103, 31.919580, 38.518192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044365, 31.708475, 38.410797>,  <32.979801, 31.356632, 38.231804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044365, 31.708475, 38.410797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093706, -0.437722, 0.894214,
		0.982429, -0.186265, 0.011773,
		0.161408, 0.879605, 0.447485,
		33.092789, 31.972357, 38.545044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542965, 31.244389, 38.732601>,  <32.979801, 31.356632, 38.231804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542965, 31.244389, 38.732601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361996, 31.574223, 38.868465>,  <33.253414, 31.772123, 38.949986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361996, 31.574223, 38.868465>,  <33.542965, 31.244389, 38.732601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361996, 31.574223, 38.868465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029003, -0.394275, 0.918535,
		0.891330, 0.405718, 0.202296,
		-0.452426, 0.824585, 0.339662,
		33.226269, 31.821598, 38.970364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702892, 31.212263, 39.349110>,  <33.542965, 31.244389, 38.732601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702892, 31.212263, 39.349110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430618, 31.503704, 39.379597>,  <33.267254, 31.678568, 39.397888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430618, 31.503704, 39.379597>,  <33.702892, 31.212263, 39.349110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430618, 31.503704, 39.379597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214169, -0.297420, 0.930416,
		0.700571, 0.616995, 0.358492,
		-0.680685, 0.728600, 0.076222,
		33.226414, 31.722284, 39.402462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789970, 31.496590, 39.936119>,  <33.702892, 31.212263, 39.349110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789970, 31.496590, 39.936119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412716, 31.607258, 39.862427>,  <33.186363, 31.673658, 39.818211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412716, 31.607258, 39.862427>,  <33.789970, 31.496590, 39.936119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412716, 31.607258, 39.862427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238049, -0.175362, 0.955291,
		0.231992, 0.944830, 0.231252,
		-0.943140, 0.276669, -0.184233,
		33.129772, 31.690258, 39.807156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698753, 31.972078, 40.443256>,  <33.789970, 31.496590, 39.936119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698753, 31.972078, 40.443256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342453, 31.817743, 40.347187>,  <33.128674, 31.725142, 40.289543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342453, 31.817743, 40.347187>,  <33.698753, 31.972078, 40.443256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342453, 31.817743, 40.347187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223575, -0.088094, 0.970698,
		-0.395690, 0.918351, -0.007794,
		-0.890755, -0.385837, -0.240178,
		33.075226, 31.701992, 40.275135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152065, 32.287090, 40.893909>,  <33.698753, 31.972078, 40.443256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152065, 32.287090, 40.893909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967468, 31.962042, 40.751545>,  <32.856709, 31.767014, 40.666126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967468, 31.962042, 40.751545>,  <33.152065, 32.287090, 40.893909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967468, 31.962042, 40.751545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308944, -0.228866, 0.923133,
		-0.831610, 0.535979, -0.145432,
		-0.461496, -0.812617, -0.355915,
		32.829021, 31.718256, 40.644772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487560, 32.259979, 41.097858>,  <33.152065, 32.287090, 40.893909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487560, 32.259979, 41.097858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542686, 31.874384, 41.006882>,  <32.575760, 31.643026, 40.952297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542686, 31.874384, 41.006882>,  <32.487560, 32.259979, 41.097858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542686, 31.874384, 41.006882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283992, -0.258448, 0.923338,
		-0.948871, -0.062658, -0.309383,
		0.137814, -0.963991, -0.227440,
		32.584030, 31.585186, 40.938648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953384, 31.946938, 41.540100>,  <32.487560, 32.259979, 41.097858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953384, 31.946938, 41.540100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222000, 31.665449, 41.447311>,  <32.383171, 31.496557, 41.391636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222000, 31.665449, 41.447311>,  <31.953384, 31.946938, 41.540100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222000, 31.665449, 41.447311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221111, -0.489125, 0.843722,
		-0.707209, -0.515301, -0.484067,
		0.671539, -0.703720, -0.231975,
		32.423462, 31.454332, 41.377720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576601, 31.350925, 41.637169>,  <31.953384, 31.946938, 41.540100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576601, 31.350925, 41.637169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948162, 31.204460, 41.659317>,  <32.171097, 31.116581, 41.672607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948162, 31.204460, 41.659317>,  <31.576601, 31.350925, 41.637169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948162, 31.204460, 41.659317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290606, -0.628061, 0.721864,
		-0.229542, -0.686633, -0.689816,
		0.928902, -0.366163, 0.055373,
		32.226833, 31.094612, 41.675930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493494, 30.584963, 41.688686>,  <31.576601, 31.350925, 41.637169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493494, 30.584963, 41.688686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867764, 30.675486, 41.796982>,  <32.092323, 30.729799, 41.861961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867764, 30.675486, 41.796982>,  <31.493494, 30.584963, 41.688686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867764, 30.675486, 41.796982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086238, -0.597340, 0.797338,
		0.342168, -0.769396, -0.539399,
		0.935673, 0.226307, 0.270742,
		32.148464, 30.743378, 41.878204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781404, 29.986048, 41.850704>,  <31.493494, 30.584963, 41.688686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781404, 29.986048, 41.850704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010597, 30.243515, 42.053638>,  <32.148113, 30.397995, 42.175400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010597, 30.243515, 42.053638>,  <31.781404, 29.986048, 41.850704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010597, 30.243515, 42.053638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214340, -0.479791, 0.850799,
		0.791044, -0.596233, -0.136947,
		0.572981, 0.643666, 0.507333,
		32.182491, 30.436615, 42.205837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140011, 29.529928, 42.221195>,  <31.781404, 29.986048, 41.850704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140011, 29.529928, 42.221195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171696, 29.879307, 42.413368>,  <32.190708, 30.088934, 42.528671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171696, 29.879307, 42.413368>,  <32.140011, 29.529928, 42.221195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171696, 29.879307, 42.413368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072654, -0.475607, 0.876652,
		0.994207, -0.104347, 0.025785,
		0.079213, 0.873447, 0.480433,
		32.195461, 30.141340, 42.557499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389332, 29.292160, 42.776573>,  <32.140011, 29.529928, 42.221195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389332, 29.292160, 42.776573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271976, 29.657555, 42.889328>,  <32.201561, 29.876791, 42.956982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271976, 29.657555, 42.889328>,  <32.389332, 29.292160, 42.776573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271976, 29.657555, 42.889328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084666, -0.318535, 0.944122,
		0.952236, 0.253132, 0.170797,
		-0.293392, 0.913488, 0.281889,
		32.183960, 29.931601, 42.973896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822735, 29.492510, 43.425907>,  <32.389332, 29.292160, 42.776573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822735, 29.492510, 43.425907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499382, 29.727934, 43.430325>,  <32.305370, 29.869188, 43.432976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499382, 29.727934, 43.430325>,  <32.822735, 29.492510, 43.425907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499382, 29.727934, 43.430325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094822, -0.148711, 0.984324,
		0.580976, 0.794659, 0.176023,
		-0.808378, 0.588560, 0.011046,
		32.256870, 29.904501, 43.433640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975502, 29.875204, 44.032570>,  <32.822735, 29.492510, 43.425907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975502, 29.875204, 44.032570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583191, 29.882711, 43.954887>,  <32.347805, 29.887215, 43.908279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583191, 29.882711, 43.954887>,  <32.975502, 29.875204, 44.032570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583191, 29.882711, 43.954887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191942, -0.271502, 0.943104,
		-0.035029, 0.962255, 0.269886,
		-0.980781, 0.018766, -0.194207,
		32.288956, 29.888342, 43.896626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652821, 30.211731, 44.608997>,  <32.975502, 29.875204, 44.032570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652821, 30.211731, 44.608997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323067, 30.043056, 44.457966>,  <32.125214, 29.941851, 44.367348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323067, 30.043056, 44.457966>,  <32.652821, 30.211731, 44.608997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323067, 30.043056, 44.457966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274624, -0.285313, 0.918247,
		-0.494942, 0.860683, 0.119402,
		-0.824387, -0.421688, -0.377578,
		32.075752, 29.916550, 44.344692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189812, 30.433365, 45.068348>,  <32.652821, 30.211731, 44.608997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189812, 30.433365, 45.068348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011307, 30.125446, 44.885803>,  <31.904203, 29.940695, 44.776276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011307, 30.125446, 44.885803>,  <32.189812, 30.433365, 45.068348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011307, 30.125446, 44.885803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318897, -0.339684, 0.884827,
		-0.836156, 0.540395, -0.093898,
		-0.446260, -0.769797, -0.456359,
		31.877428, 29.894506, 44.748894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535568, 30.238516, 45.382408>,  <32.189812, 30.433365, 45.068348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535568, 30.238516, 45.382408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608004, 29.895699, 45.189457>,  <31.651464, 29.690008, 45.073689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608004, 29.895699, 45.189457>,  <31.535568, 30.238516, 45.382408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608004, 29.895699, 45.189457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305553, -0.515242, 0.800727,
		-0.934796, 0.002388, -0.355176,
		0.181090, -0.857041, -0.482376,
		31.662331, 29.638586, 45.044743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893736, 29.740810, 45.473595>,  <31.535568, 30.238516, 45.382408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893736, 29.740810, 45.473595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183886, 29.486778, 45.367386>,  <31.357975, 29.334358, 45.303661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183886, 29.486778, 45.367386>,  <30.893736, 29.740810, 45.473595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183886, 29.486778, 45.367386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292098, -0.633270, 0.716693,
		-0.623302, -0.442316, -0.644865,
		0.725378, -0.635080, -0.265519,
		31.401499, 29.296253, 45.287727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566521, 29.087231, 45.356819>,  <30.893736, 29.740810, 45.473595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566521, 29.087231, 45.356819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951040, 29.038229, 45.455532>,  <31.181751, 29.008827, 45.514759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951040, 29.038229, 45.455532>,  <30.566521, 29.087231, 45.356819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951040, 29.038229, 45.455532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272182, -0.561158, 0.781677,
		0.042725, -0.818593, -0.572783,
		0.961297, -0.122504, 0.246782,
		31.239429, 29.001478, 45.529568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652935, 28.365919, 45.645462>,  <30.566521, 29.087231, 45.356819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652935, 28.365919, 45.645462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001423, 28.518953, 45.768494>,  <31.210516, 28.610773, 45.842312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001423, 28.518953, 45.768494>,  <30.652935, 28.365919, 45.645462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001423, 28.518953, 45.768494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020363, -0.597868, 0.801335,
		0.490472, -0.704402, -0.513084,
		0.871219, 0.382585, 0.307582,
		31.262789, 28.633728, 45.860767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133644, 27.767958, 45.759354>,  <30.652935, 28.365919, 45.645462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133644, 27.767958, 45.759354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278715, 28.065908, 45.983364>,  <31.365757, 28.244678, 46.117771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278715, 28.065908, 45.983364>,  <31.133644, 27.767958, 45.759354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278715, 28.065908, 45.983364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020116, -0.594541, 0.803814,
		0.931698, -0.302789, -0.200642,
		0.362676, 0.744876, 0.560024,
		31.387518, 28.289371, 46.151371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435095, 27.337282, 46.185223>,  <31.133644, 27.767958, 45.759354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435095, 27.337282, 46.185223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420403, 27.704975, 46.342022>,  <31.411587, 27.925591, 46.436100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420403, 27.704975, 46.342022>,  <31.435095, 27.337282, 46.185223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420403, 27.704975, 46.342022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044486, -0.390370, 0.919583,
		0.998335, 0.051217, -0.026554,
		-0.036732, 0.919233, 0.391998,
		31.409384, 27.980745, 46.459621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968431, 27.384764, 46.597294>,  <31.435095, 27.337282, 46.185223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968431, 27.384764, 46.597294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724176, 27.672205, 46.730400>,  <31.577623, 27.844669, 46.810265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724176, 27.672205, 46.730400>,  <31.968431, 27.384764, 46.597294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724176, 27.672205, 46.730400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056344, -0.379714, 0.923387,
		0.789902, 0.582605, 0.191379,
		-0.610639, 0.718602, 0.332763,
		31.540985, 27.887785, 46.830231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295033, 27.583675, 47.297028>,  <31.968431, 27.384764, 46.597294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295033, 27.583675, 47.297028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909519, 27.689487, 47.283463>,  <31.678211, 27.752975, 47.275326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909519, 27.689487, 47.283463>,  <32.295033, 27.583675, 47.297028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909519, 27.689487, 47.283463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106988, -0.267024, 0.957733,
		0.244297, 0.926672, 0.285654,
		-0.963780, 0.264532, -0.033910,
		31.620384, 27.768847, 47.273289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208557, 28.025650, 47.844994>,  <32.295033, 27.583675, 47.297028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208557, 28.025650, 47.844994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833347, 27.910143, 47.768345>,  <31.608221, 27.840837, 47.722355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833347, 27.910143, 47.768345>,  <32.208557, 28.025650, 47.844994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833347, 27.910143, 47.768345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138821, -0.193535, 0.971222,
		-0.317544, 0.937633, 0.141454,
		-0.938027, -0.288769, -0.191619,
		31.551939, 27.823513, 47.710857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836967, 28.343588, 48.283478>,  <32.208557, 28.025650, 47.844994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836967, 28.343588, 48.283478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583641, 28.051102, 48.182098>,  <31.431644, 27.875610, 48.121273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583641, 28.051102, 48.182098>,  <31.836967, 28.343588, 48.283478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583641, 28.051102, 48.182098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248131, -0.118345, 0.961470,
		-0.733034, 0.671805, -0.106487,
		-0.633318, -0.731213, -0.253447,
		31.393646, 27.831738, 48.106064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042688, 28.470085, 48.567436>,  <31.836967, 28.343588, 48.283478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042688, 28.470085, 48.567436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163012, 28.091127, 48.523693>,  <31.235205, 27.863752, 48.497448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163012, 28.091127, 48.523693>,  <31.042688, 28.470085, 48.567436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163012, 28.091127, 48.523693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142877, -0.158141, 0.977025,
		-0.942922, -0.278272, -0.182930,
		0.300808, -0.947394, -0.109356,
		31.253254, 27.806910, 48.490887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740463, 27.993723, 49.114189>,  <31.042688, 28.470085, 48.567436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740463, 27.993723, 49.114189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488951, 27.757624, 48.911709>,  <30.338043, 27.615965, 48.790222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488951, 27.757624, 48.911709>,  <30.740463, 27.993723, 49.114189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488951, 27.757624, 48.911709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184446, -0.745633, 0.640321,
		-0.755388, 0.309256, 0.577710,
		-0.628783, -0.590247, -0.506202,
		30.300316, 27.580549, 48.759850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728798, 27.466871, 49.558933>,  <30.740463, 27.993723, 49.114189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728798, 27.466871, 49.558933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537148, 27.303684, 49.248062>,  <30.422157, 27.205772, 49.061539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537148, 27.303684, 49.248062>,  <30.728798, 27.466871, 49.558933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537148, 27.303684, 49.248062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213860, -0.912996, 0.347421,
		-0.851295, 0.000251, 0.524687,
		-0.479125, -0.407968, -0.777175,
		30.393410, 27.181293, 49.014908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267118, 27.042555, 49.939697>,  <30.728798, 27.466871, 49.558933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267118, 27.042555, 49.939697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362434, 26.926863, 49.568848>,  <30.419624, 26.857447, 49.346336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362434, 26.926863, 49.568848>,  <30.267118, 27.042555, 49.939697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362434, 26.926863, 49.568848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229198, -0.910914, 0.343081,
		-0.943763, -0.294247, -0.150768,
		0.238287, -0.289231, -0.927127,
		30.433920, 26.840094, 49.290710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798508, 26.455856, 49.751213>,  <30.267118, 27.042555, 49.939697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798508, 26.455856, 49.751213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150316, 26.452465, 49.560902>,  <30.361403, 26.450430, 49.446716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150316, 26.452465, 49.560902>,  <29.798508, 26.455856, 49.751213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150316, 26.452465, 49.560902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183998, -0.916013, 0.356463,
		-0.438842, -0.401060, -0.804095,
		0.879524, -0.008479, -0.475779,
		30.414173, 26.449921, 49.418167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831085, 25.948532, 49.271389>,  <29.798508, 26.455856, 49.751213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831085, 25.948532, 49.271389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199924, 26.009306, 49.413742>,  <30.421228, 26.045771, 49.499153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199924, 26.009306, 49.413742>,  <29.831085, 25.948532, 49.271389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199924, 26.009306, 49.413742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049135, -0.958221, 0.281776,
		0.383823, -0.242340, -0.891040,
		0.922099, 0.151933, 0.355880,
		30.476555, 26.054886, 49.520508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384197, 25.721483, 48.681530>,  <29.831085, 25.948532, 49.271389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384197, 25.721483, 48.681530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711622, 25.510286, 48.772026>,  <29.908077, 25.383568, 48.826324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711622, 25.510286, 48.772026>,  <29.384197, 25.721483, 48.681530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711622, 25.510286, 48.772026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337675, 0.123689, -0.933101,
		0.464685, 0.840195, 0.279536,
		0.818562, -0.527990, 0.226236,
		29.957191, 25.351889, 48.839897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994844, 26.140142, 48.435040>,  <29.384197, 25.721483, 48.681530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994844, 26.140142, 48.435040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089695, 25.752140, 48.456417>,  <30.146605, 25.519339, 48.469246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089695, 25.752140, 48.456417>,  <29.994844, 26.140142, 48.435040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089695, 25.752140, 48.456417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569324, 0.094177, -0.816701,
		0.787173, 0.224090, 0.574580,
		0.237127, -0.970008, 0.053446,
		30.160833, 25.461138, 48.472450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707100, 26.020782, 48.429333>,  <29.994844, 26.140142, 48.435040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707100, 26.020782, 48.429333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513474, 25.717112, 48.255283>,  <30.397297, 25.534910, 48.150856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513474, 25.717112, 48.255283>,  <30.707100, 26.020782, 48.429333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513474, 25.717112, 48.255283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474601, 0.189980, -0.859454,
		0.735141, -0.622543, 0.268343,
		-0.484067, -0.759176, -0.435121,
		30.368254, 25.489359, 48.124748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165350, 25.461098, 48.174389>,  <30.707100, 26.020782, 48.429333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165350, 25.461098, 48.174389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842278, 25.471157, 47.938755>,  <30.648434, 25.477192, 47.797375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842278, 25.471157, 47.938755>,  <31.165350, 25.461098, 48.174389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842278, 25.471157, 47.938755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589489, 0.013489, -0.807664,
		-0.012374, -0.999593, -0.025726,
		-0.807681, 0.025159, -0.589082,
		30.599974, 25.478703, 47.762032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130627, 24.939114, 47.646881>,  <31.165350, 25.461098, 48.174389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130627, 24.939114, 47.646881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893112, 25.229353, 47.507782>,  <30.750603, 25.403496, 47.424324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893112, 25.229353, 47.507782>,  <31.130627, 24.939114, 47.646881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893112, 25.229353, 47.507782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341724, -0.163855, -0.925406,
		-0.728452, -0.668326, -0.150659,
		-0.593787, 0.725598, -0.347743,
		30.714975, 25.447033, 47.403458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678635, 24.789949, 46.967289>,  <31.130627, 24.939114, 47.646881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678635, 24.789949, 46.967289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751753, 25.183159, 46.960976>,  <30.795624, 25.419085, 46.957188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751753, 25.183159, 46.960976>,  <30.678635, 24.789949, 46.967289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751753, 25.183159, 46.960976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511259, -0.108756, -0.852518,
		-0.839762, 0.147768, -0.522460,
		0.182796, 0.983024, -0.015782,
		30.806591, 25.478065, 46.956242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768270, 24.859781, 46.265240>,  <30.678635, 24.789949, 46.967289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768270, 24.859781, 46.265240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915735, 25.202032, 46.410561>,  <31.004215, 25.407383, 46.497753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915735, 25.202032, 46.410561>,  <30.768270, 24.859781, 46.265240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915735, 25.202032, 46.410561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517283, 0.135895, -0.844956,
		-0.772338, 0.499437, -0.392501,
		0.368664, 0.855626, 0.363307,
		31.026335, 25.458719, 46.519554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708120, 25.428471, 45.644207>,  <30.768270, 24.859781, 46.265240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708120, 25.428471, 45.644207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965235, 25.552355, 45.924465>,  <31.119503, 25.626686, 46.092621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965235, 25.552355, 45.924465>,  <30.708120, 25.428471, 45.644207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965235, 25.552355, 45.924465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655880, 0.250054, -0.712246,
		-0.395790, 0.917362, -0.042402,
		0.642785, 0.309710, 0.700648,
		31.158070, 25.645267, 46.134659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786909, 26.158070, 45.428116>,  <30.708120, 25.428471, 45.644207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786909, 26.158070, 45.428116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095749, 26.009203, 45.634167>,  <31.281054, 25.919884, 45.757797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095749, 26.009203, 45.634167>,  <30.786909, 26.158070, 45.428116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095749, 26.009203, 45.634167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635091, 0.480910, -0.604470,
		-0.022765, 0.793863, 0.607670,
		0.772101, -0.372165, 0.515124,
		31.327379, 25.897552, 45.788704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263630, 26.620289, 45.455212>,  <30.786909, 26.158070, 45.428116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263630, 26.620289, 45.455212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507498, 26.322762, 45.564781>,  <31.653818, 26.144245, 45.630524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507498, 26.322762, 45.564781>,  <31.263630, 26.620289, 45.455212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507498, 26.322762, 45.564781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705019, 0.350903, -0.616291,
		0.362288, 0.568857, 0.738342,
		0.609668, -0.743820, 0.273927,
		31.690399, 26.099615, 45.646957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892805, 26.867870, 45.806240>,  <31.263630, 26.620289, 45.455212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892805, 26.867870, 45.806240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986269, 26.501553, 45.675564>,  <32.042347, 26.281761, 45.597160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986269, 26.501553, 45.675564>,  <31.892805, 26.867870, 45.806240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986269, 26.501553, 45.675564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782163, 0.376627, -0.496360,
		0.577603, -0.139544, 0.804302,
		0.233659, -0.915794, -0.326687,
		32.056366, 26.226814, 45.577557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605919, 26.909170, 45.778233>,  <31.892805, 26.867870, 45.806240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605919, 26.909170, 45.778233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536449, 26.583027, 45.557316>,  <32.494766, 26.387341, 45.424767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536449, 26.583027, 45.557316>,  <32.605919, 26.909170, 45.778233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536449, 26.583027, 45.557316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669684, 0.313402, -0.673277,
		0.722052, -0.486794, 0.491602,
		-0.173678, -0.815359, -0.552291,
		32.484344, 26.338419, 45.391628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217709, 26.681240, 45.578815>,  <32.605919, 26.909170, 45.778233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217709, 26.681240, 45.578815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966019, 26.496634, 45.328671>,  <32.815006, 26.385870, 45.178585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966019, 26.496634, 45.328671>,  <33.217709, 26.681240, 45.578815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966019, 26.496634, 45.328671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558873, 0.290489, -0.776709,
		0.540125, -0.838223, 0.075146,
		-0.629226, -0.461518, -0.625361,
		32.777252, 26.358179, 45.141064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629200, 26.254837, 45.112965>,  <33.217709, 26.681240, 45.578815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629200, 26.254837, 45.112965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275616, 26.320959, 44.938019>,  <33.063465, 26.360632, 44.833050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275616, 26.320959, 44.938019>,  <33.629200, 26.254837, 45.112965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275616, 26.320959, 44.938019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467340, 0.341251, -0.815562,
		0.014435, -0.925322, -0.378906,
		-0.883960, 0.165305, -0.437366,
		33.010429, 26.370550, 44.806808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789551, 26.096745, 44.515202>,  <33.629200, 26.254837, 45.112965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789551, 26.096745, 44.515202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449383, 26.298519, 44.455437>,  <33.245281, 26.419584, 44.419579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449383, 26.298519, 44.455437>,  <33.789551, 26.096745, 44.515202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449383, 26.298519, 44.455437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384849, 0.402834, -0.830431,
		-0.358711, -0.763719, -0.536711,
		-0.850422, 0.504438, -0.149416,
		33.194256, 26.449850, 44.410610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547928, 25.940144, 43.765373>,  <33.789551, 26.096745, 44.515202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547928, 25.940144, 43.765373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426895, 26.295969, 43.902267>,  <33.354275, 26.509464, 43.984402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426895, 26.295969, 43.902267>,  <33.547928, 25.940144, 43.765373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426895, 26.295969, 43.902267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190963, 0.408365, -0.892621,
		-0.933797, -0.204737, -0.293437,
		-0.302582, 0.889562, 0.342233,
		33.336121, 26.562838, 44.004936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123928, 26.146551, 43.296356>,  <33.547928, 25.940144, 43.765373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123928, 26.146551, 43.296356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199455, 26.498859, 43.470066>,  <33.244770, 26.710245, 43.574291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199455, 26.498859, 43.470066>,  <33.123928, 26.146551, 43.296356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199455, 26.498859, 43.470066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265145, 0.380078, -0.886137,
		-0.945541, 0.282461, -0.161767,
		0.188815, 0.880770, 0.434273,
		33.256100, 26.763090, 43.600349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875751, 26.503464, 42.753643>,  <33.123928, 26.146551, 43.296356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875751, 26.503464, 42.753643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078884, 26.747028, 42.997391>,  <33.200764, 26.893166, 43.143639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078884, 26.747028, 42.997391>,  <32.875751, 26.503464, 42.753643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078884, 26.747028, 42.997391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160063, 0.628363, -0.761276,
		-0.846455, 0.484138, 0.221640,
		0.507833, 0.608909, 0.609373,
		33.231236, 26.929701, 43.180202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594250, 27.080784, 42.499573>,  <32.875751, 26.503464, 42.753643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594250, 27.080784, 42.499573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955273, 27.162399, 42.651230>,  <33.171886, 27.211369, 42.742226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955273, 27.162399, 42.651230>,  <32.594250, 27.080784, 42.499573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955273, 27.162399, 42.651230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192562, 0.596320, -0.779308,
		-0.385101, 0.776383, 0.498926,
		0.902561, 0.204038, 0.379146,
		33.226040, 27.223610, 42.764973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810856, 27.758350, 42.211475>,  <32.594250, 27.080784, 42.499573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810856, 27.758350, 42.211475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168831, 27.633478, 42.338993>,  <33.383617, 27.558556, 42.415504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168831, 27.633478, 42.338993>,  <32.810856, 27.758350, 42.211475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168831, 27.633478, 42.338993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446002, 0.605131, -0.659468,
		0.012961, 0.732366, 0.680788,
		0.894938, -0.312180, 0.318794,
		33.437313, 27.539824, 42.434631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219429, 28.379520, 42.427639>,  <32.810856, 27.758350, 42.211475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219429, 28.379520, 42.427639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460995, 28.076591, 42.328243>,  <33.605934, 27.894835, 42.268604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460995, 28.076591, 42.328243>,  <33.219429, 28.379520, 42.427639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460995, 28.076591, 42.328243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519283, 0.610364, -0.598165,
		0.604673, 0.232204, 0.761874,
		0.603917, -0.757322, -0.248491,
		33.642170, 27.849394, 42.253696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867470, 28.589949, 42.316040>,  <33.219429, 28.379520, 42.427639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867470, 28.589949, 42.316040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906837, 28.235361, 42.135159>,  <33.930458, 28.022610, 42.026630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906837, 28.235361, 42.135159>,  <33.867470, 28.589949, 42.316040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906837, 28.235361, 42.135159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452303, 0.444611, -0.773138,
		0.886417, -0.128442, 0.444710,
		0.098420, -0.886467, -0.452206,
		33.936363, 27.969421, 41.999496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588444, 28.575035, 42.219452>,  <33.867470, 28.589949, 42.316040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588444, 28.575035, 42.219452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405216, 28.328667, 41.963074>,  <34.295280, 28.180845, 41.809246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405216, 28.328667, 41.963074>,  <34.588444, 28.575035, 42.219452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405216, 28.328667, 41.963074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459822, 0.452895, -0.763839,
		0.760745, -0.644615, 0.075754,
		-0.458073, -0.615920, -0.640946,
		34.267796, 28.143890, 41.770790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099304, 28.496792, 41.664207>,  <34.588444, 28.575035, 42.219452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099304, 28.496792, 41.664207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757893, 28.370230, 41.498615>,  <34.553047, 28.294292, 41.399258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757893, 28.370230, 41.498615>,  <35.099304, 28.496792, 41.664207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757893, 28.370230, 41.498615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354556, 0.229528, -0.906425,
		0.381818, -0.920437, -0.083725,
		-0.853525, -0.316404, -0.413985,
		34.501835, 28.275309, 41.374420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287468, 28.155439, 41.075504>,  <35.099304, 28.496792, 41.664207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287468, 28.155439, 41.075504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896343, 28.199751, 41.004383>,  <34.661667, 28.226337, 40.961708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896343, 28.199751, 41.004383>,  <35.287468, 28.155439, 41.075504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896343, 28.199751, 41.004383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193732, 0.155197, -0.968701,
		-0.079716, -0.981652, -0.173215,
		-0.977810, 0.110778, -0.177805,
		34.603001, 28.232985, 40.951042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108147, 27.778257, 40.570148>,  <35.287468, 28.155439, 41.075504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108147, 27.778257, 40.570148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823593, 28.056734, 40.531693>,  <34.652859, 28.223820, 40.508617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823593, 28.056734, 40.531693>,  <35.108147, 27.778257, 40.570148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823593, 28.056734, 40.531693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254333, 0.127495, -0.958676,
		-0.655165, -0.706443, -0.267763,
		-0.711389, 0.696192, -0.096142,
		34.610176, 28.265593, 40.502850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566544, 27.622284, 39.909916>,  <35.108147, 27.778257, 40.570148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566544, 27.622284, 39.909916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573914, 28.010942, 40.004200>,  <34.578335, 28.244139, 40.060772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573914, 28.010942, 40.004200>,  <34.566544, 27.622284, 39.909916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573914, 28.010942, 40.004200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420311, 0.206382, -0.883598,
		-0.907193, 0.115350, -0.404592,
		0.018423, 0.971648, 0.235712,
		34.579441, 28.302437, 40.074913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388363, 27.976469, 39.372288>,  <34.566544, 27.622284, 39.909916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388363, 27.976469, 39.372288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562359, 28.295240, 39.539948>,  <34.666756, 28.486504, 39.640541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562359, 28.295240, 39.539948>,  <34.388363, 27.976469, 39.372288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562359, 28.295240, 39.539948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327088, 0.293844, -0.898148,
		-0.838925, 0.527785, -0.132846,
		0.434993, 0.796931, 0.419145,
		34.692856, 28.534319, 39.665691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144608, 28.493458, 38.995792>,  <34.388363, 27.976469, 39.372288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144608, 28.493458, 38.995792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484982, 28.598915, 39.177521>,  <34.689205, 28.662189, 39.286556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484982, 28.598915, 39.177521>,  <34.144608, 28.493458, 38.995792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484982, 28.598915, 39.177521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330708, 0.403078, -0.853323,
		-0.408096, 0.876368, 0.255805,
		0.850935, 0.263641, 0.454316,
		34.740261, 28.678007, 39.313816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222412, 29.105282, 38.770851>,  <34.144608, 28.493458, 38.995792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222412, 29.105282, 38.770851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587727, 29.011532, 38.904106>,  <34.806915, 28.955282, 38.984058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587727, 29.011532, 38.904106>,  <34.222412, 29.105282, 38.770851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587727, 29.011532, 38.904106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400486, 0.367497, -0.839379,
		0.074302, 0.900008, 0.429493,
		0.913285, -0.234374, 0.333135,
		34.861713, 28.941219, 39.004047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761536, 29.717350, 38.570026>,  <34.222412, 29.105282, 38.770851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761536, 29.717350, 38.570026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014748, 29.434977, 38.697105>,  <35.166676, 29.265553, 38.773354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014748, 29.434977, 38.697105>,  <34.761536, 29.717350, 38.570026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014748, 29.434977, 38.697105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655079, 0.269811, -0.705744,
		0.412490, 0.654873, 0.633240,
		0.633028, -0.705934, 0.317699,
		35.204655, 29.223196, 38.792416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489922, 30.057184, 38.624001>,  <34.761536, 29.717350, 38.570026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489922, 30.057184, 38.624001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533047, 29.663221, 38.569836>,  <35.558922, 29.426844, 38.537334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533047, 29.663221, 38.569836>,  <35.489922, 30.057184, 38.624001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533047, 29.663221, 38.569836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614059, 0.173093, -0.770046,
		0.781862, -0.000132, 0.623452,
		0.107813, -0.984905, -0.135416,
		35.565392, 29.367750, 38.529209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244480, 29.917196, 38.744873>,  <35.489922, 30.057184, 38.624001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244480, 29.917196, 38.744873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082291, 29.633324, 38.514416>,  <35.984978, 29.462999, 38.376141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082291, 29.633324, 38.514416>,  <36.244480, 29.917196, 38.744873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082291, 29.633324, 38.514416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578150, 0.289099, -0.762997,
		0.708048, -0.642473, 0.293081,
		-0.405475, -0.709683, -0.576141,
		35.960648, 29.420418, 38.341572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776718, 29.528063, 38.429611>,  <36.244480, 29.917196, 38.744873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776718, 29.528063, 38.429611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453217, 29.495028, 38.196682>,  <36.259117, 29.475206, 38.056927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453217, 29.495028, 38.196682>,  <36.776718, 29.528063, 38.429611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453217, 29.495028, 38.196682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555243, 0.219312, -0.802252,
		0.193959, -0.972153, -0.131519,
		-0.808756, -0.082579, -0.582319,
		36.210590, 29.470251, 38.021984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056328, 29.283211, 37.735249>,  <36.776718, 29.528063, 38.429611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056328, 29.283211, 37.735249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687382, 29.393166, 37.626671>,  <36.466015, 29.459139, 37.561523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687382, 29.393166, 37.626671>,  <37.056328, 29.283211, 37.735249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687382, 29.393166, 37.626671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347634, 0.284095, -0.893555,
		-0.168511, -0.918546, -0.357599,
		-0.922363, 0.274888, -0.271445,
		36.410671, 29.475632, 37.545238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962700, 29.063570, 37.077839>,  <37.056328, 29.283211, 37.735249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962700, 29.063570, 37.077839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676708, 29.341522, 37.108704>,  <36.505116, 29.508293, 37.127220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676708, 29.341522, 37.108704>,  <36.962700, 29.063570, 37.077839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676708, 29.341522, 37.108704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234142, 0.341966, -0.910075,
		-0.658778, -0.632615, -0.407197,
		-0.714975, 0.694880, 0.077158,
		36.462215, 29.549986, 37.131851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641335, 29.100916, 36.378380>,  <36.962700, 29.063570, 37.077839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641335, 29.100916, 36.378380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526798, 29.444084, 36.549019>,  <36.458076, 29.649984, 36.651402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526798, 29.444084, 36.549019>,  <36.641335, 29.100916, 36.378380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526798, 29.444084, 36.549019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049674, 0.457933, -0.887598,
		-0.956840, -0.232964, -0.173741,
		-0.286340, 0.857919, 0.426596,
		36.440895, 29.701460, 36.676998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129547, 29.436630, 35.974174>,  <36.641335, 29.100916, 36.378380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129547, 29.436630, 35.974174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283020, 29.739666, 36.185394>,  <36.375103, 29.921488, 36.312126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283020, 29.739666, 36.185394>,  <36.129547, 29.436630, 35.974174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283020, 29.739666, 36.185394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123553, 0.524563, -0.842359,
		-0.915161, 0.388444, 0.107665,
		0.383686, 0.757591, 0.528053,
		36.398125, 29.966944, 36.343811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826691, 29.999561, 35.629520>,  <36.129547, 29.436630, 35.974174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826691, 29.999561, 35.629520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132656, 30.168705, 35.823883>,  <36.316235, 30.270191, 35.940498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132656, 30.168705, 35.823883>,  <35.826691, 29.999561, 35.629520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132656, 30.168705, 35.823883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160146, 0.605820, -0.779317,
		-0.623912, 0.673923, 0.395679,
		0.764910, 0.422859, 0.485904,
		36.362129, 30.295563, 35.969654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805626, 30.716181, 35.521103>,  <35.826691, 29.999561, 35.629520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805626, 30.716181, 35.521103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179482, 30.716047, 35.663345>,  <36.403793, 30.715967, 35.748692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179482, 30.716047, 35.663345>,  <35.805626, 30.716181, 35.521103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179482, 30.716047, 35.663345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281085, 0.613223, -0.738206,
		-0.217818, 0.789910, 0.573234,
		0.934637, -0.000333, 0.355603,
		36.459873, 30.715948, 35.770027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011757, 31.382008, 35.544701>,  <35.805626, 30.716181, 35.521103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011757, 31.382008, 35.544701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357754, 31.181454, 35.536709>,  <36.565353, 31.061121, 35.531914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357754, 31.181454, 35.536709>,  <36.011757, 31.382008, 35.544701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357754, 31.181454, 35.536709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312367, 0.569212, -0.760543,
		0.392698, 0.651623, 0.648980,
		0.864994, -0.501384, -0.019983,
		36.617252, 31.031038, 35.530712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553574, 31.868799, 35.441624>,  <36.011757, 31.382008, 35.544701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553574, 31.868799, 35.441624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725525, 31.526712, 35.325829>,  <36.828697, 31.321461, 35.256351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725525, 31.526712, 35.325829>,  <36.553574, 31.868799, 35.441624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725525, 31.526712, 35.325829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488586, 0.489969, -0.721952,
		0.759266, 0.168916, 0.628477,
		0.429883, -0.855218, -0.289487,
		36.854488, 31.270147, 35.238983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233730, 32.008801, 35.404495>,  <36.553574, 31.868799, 35.441624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233730, 32.008801, 35.404495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144104, 31.702950, 35.162788>,  <37.090328, 31.519440, 35.017765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144104, 31.702950, 35.162788>,  <37.233730, 32.008801, 35.404495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144104, 31.702950, 35.162788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380248, 0.502303, -0.776597,
		0.897332, -0.403783, 0.178197,
		-0.224068, -0.764625, -0.604271,
		37.076885, 31.473562, 34.981506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822124, 31.895123, 34.932133>,  <37.233730, 32.008801, 35.404495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822124, 31.895123, 34.932133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493298, 31.734659, 34.770504>,  <37.296001, 31.638382, 34.673527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493298, 31.734659, 34.770504>,  <37.822124, 31.895123, 34.932133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493298, 31.734659, 34.770504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284136, 0.325963, -0.901673,
		0.493425, -0.856050, -0.153982,
		-0.822070, -0.401157, -0.404073,
		37.246677, 31.614313, 34.649281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008141, 31.320690, 34.454041>,  <37.822124, 31.895123, 34.932133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008141, 31.320690, 34.454041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692791, 31.554724, 34.377998>,  <37.503582, 31.695145, 34.332375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692791, 31.554724, 34.377998>,  <38.008141, 31.320690, 34.454041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692791, 31.554724, 34.377998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368056, 0.200972, -0.907824,
		-0.492948, -0.785676, -0.373785,
		-0.788376, 0.585084, -0.190104,
		37.456280, 31.730249, 34.320969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263268, 30.674234, 34.731228>,  <38.008141, 31.320690, 34.454041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263268, 30.674234, 34.731228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620808, 30.795671, 34.863209>,  <38.835331, 30.868534, 34.942398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620808, 30.795671, 34.863209>,  <38.263268, 30.674234, 34.731228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620808, 30.795671, 34.863209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182615, -0.425586, 0.886300,
		0.409498, -0.852471, -0.324968,
		0.893847, 0.303594, 0.329950,
		38.888962, 30.886749, 34.962193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417747, 30.209951, 35.264877>,  <38.263268, 30.674234, 34.731228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417747, 30.209951, 35.264877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701138, 30.479879, 35.347519>,  <38.871170, 30.641836, 35.397102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701138, 30.479879, 35.347519>,  <38.417747, 30.209951, 35.264877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701138, 30.479879, 35.347519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032125, -0.261610, 0.964639,
		0.705006, -0.690058, -0.163665,
		0.708473, 0.674819, 0.206605,
		38.913681, 30.682325, 35.409500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916981, 29.843027, 35.495773>,  <38.417747, 30.209951, 35.264877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916981, 29.843027, 35.495773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943199, 30.215576, 35.639023>,  <38.958931, 30.439106, 35.724972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943199, 30.215576, 35.639023>,  <38.916981, 29.843027, 35.495773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943199, 30.215576, 35.639023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217256, -0.363602, 0.905866,
		0.973911, 0.018426, -0.226180,
		0.065548, 0.931372, 0.358119,
		38.962864, 30.494987, 35.746460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421062, 29.709949, 36.097702>,  <38.916981, 29.843027, 35.495773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421062, 29.709949, 36.097702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274921, 30.081709, 36.118607>,  <39.187237, 30.304766, 36.131149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274921, 30.081709, 36.118607>,  <39.421062, 29.709949, 36.097702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274921, 30.081709, 36.118607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089078, -0.020978, 0.995804,
		0.926596, 0.368478, -0.075125,
		-0.365356, 0.929400, 0.052261,
		39.165314, 30.360529, 36.134285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942520, 30.045897, 36.495853>,  <39.421062, 29.709949, 36.097702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942520, 30.045897, 36.495853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601109, 30.253489, 36.514359>,  <39.396259, 30.378044, 36.525463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601109, 30.253489, 36.514359>,  <39.942520, 30.045897, 36.495853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601109, 30.253489, 36.514359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115857, 0.102470, 0.987966,
		0.507993, 0.848622, -0.147590,
		-0.853534, 0.518980, 0.046265,
		39.345047, 30.409182, 36.528236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992535, 30.508173, 37.075829>,  <39.942520, 30.045897, 36.495853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992535, 30.508173, 37.075829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596336, 30.481173, 37.027885>,  <39.358620, 30.464972, 36.999119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596336, 30.481173, 37.027885>,  <39.992535, 30.508173, 37.075829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596336, 30.481173, 37.027885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121729, 0.024280, 0.992266,
		-0.064070, 0.997424, -0.032266,
		-0.990493, -0.067502, -0.119860,
		39.299187, 30.460922, 36.991928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699886, 30.953915, 37.591782>,  <39.992535, 30.508173, 37.075829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699886, 30.953915, 37.591782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387676, 30.728569, 37.483414>,  <39.200352, 30.593361, 37.418392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387676, 30.728569, 37.483414>,  <39.699886, 30.953915, 37.591782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387676, 30.728569, 37.483414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250856, -0.114689, 0.961206,
		-0.572582, 0.818209, -0.051806,
		-0.780526, -0.563366, -0.270922,
		39.153519, 30.559559, 37.402138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122955, 31.197515, 37.964016>,  <39.699886, 30.953915, 37.591782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122955, 31.197515, 37.964016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016762, 30.824099, 37.867668>,  <38.953045, 30.600048, 37.809860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016762, 30.824099, 37.867668>,  <39.122955, 31.197515, 37.964016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016762, 30.824099, 37.867668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414968, -0.114860, 0.902557,
		-0.870240, 0.339569, -0.356896,
		-0.265488, -0.933542, -0.240866,
		38.937115, 30.544037, 37.795410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477436, 31.095280, 38.147274>,  <39.122955, 31.197515, 37.964016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477436, 31.095280, 38.147274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588886, 30.712528, 38.114399>,  <38.655754, 30.482878, 38.094673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588886, 30.712528, 38.114399>,  <38.477436, 31.095280, 38.147274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588886, 30.712528, 38.114399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489061, -0.215007, 0.845335,
		-0.826553, -0.195335, -0.527877,
		0.278621, -0.956878, -0.082184,
		38.672474, 30.425465, 38.089745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948174, 30.690968, 38.322250>,  <38.477436, 31.095280, 38.147274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948174, 30.690968, 38.322250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245399, 30.426159, 38.361397>,  <38.423737, 30.267275, 38.384884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245399, 30.426159, 38.361397>,  <37.948174, 30.690968, 38.322250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245399, 30.426159, 38.361397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479560, -0.424759, 0.767856,
		-0.466769, -0.617500, -0.633103,
		0.743067, -0.662022, 0.097864,
		38.468319, 30.227552, 38.390759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618069, 30.038542, 38.422180>,  <37.948174, 30.690968, 38.322250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618069, 30.038542, 38.422180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987534, 29.994791, 38.569092>,  <38.209213, 29.968540, 38.657238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987534, 29.994791, 38.569092>,  <37.618069, 30.038542, 38.422180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987534, 29.994791, 38.569092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372290, -0.483344, 0.792325,
		0.090857, -0.868571, -0.487165,
		0.923659, -0.109378, 0.367275,
		38.264629, 29.961977, 38.679276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658726, 29.393177, 38.599373>,  <37.618069, 30.038542, 38.422180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658726, 29.393177, 38.599373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952717, 29.547085, 38.822712>,  <38.129112, 29.639429, 38.956715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952717, 29.547085, 38.822712>,  <37.658726, 29.393177, 38.599373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952717, 29.547085, 38.822712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204308, -0.659498, 0.723409,
		0.646578, -0.645767, -0.406107,
		0.734980, 0.384769, 0.558352,
		38.173210, 29.662516, 38.990219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842087, 28.841091, 39.066135>,  <37.658726, 29.393177, 38.599373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842087, 28.841091, 39.066135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015457, 29.151562, 39.249302>,  <38.119480, 29.337845, 39.359203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015457, 29.151562, 39.249302>,  <37.842087, 28.841091, 39.066135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015457, 29.151562, 39.249302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023002, -0.498435, 0.866622,
		0.900897, -0.386147, -0.198179,
		0.433423, 0.776178, 0.457921,
		38.145485, 29.384415, 39.386677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323833, 28.557919, 39.417343>,  <37.842087, 28.841091, 39.066135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323833, 28.557919, 39.417343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247219, 28.910875, 39.589249>,  <38.201252, 29.122650, 39.692394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247219, 28.910875, 39.589249>,  <38.323833, 28.557919, 39.417343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247219, 28.910875, 39.589249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012212, -0.439981, 0.897924,
		0.981410, 0.166732, 0.095046,
		-0.191531, 0.882393, 0.429766,
		38.189758, 29.175592, 39.718178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701923, 28.564808, 40.052094>,  <38.323833, 28.557919, 39.417343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701923, 28.564808, 40.052094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424919, 28.847343, 40.110771>,  <38.258717, 29.016865, 40.145977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424919, 28.847343, 40.110771>,  <38.701923, 28.564808, 40.052094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424919, 28.847343, 40.110771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200696, -0.383943, 0.901282,
		0.692933, 0.594703, 0.407642,
		-0.692507, 0.706340, 0.146692,
		38.217167, 29.059246, 40.154778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789417, 28.853569, 40.828178>,  <38.701923, 28.564808, 40.052094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789417, 28.853569, 40.828178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428612, 28.955626, 40.688881>,  <38.212128, 29.016859, 40.605301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428612, 28.955626, 40.688881>,  <38.789417, 28.853569, 40.828178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428612, 28.955626, 40.688881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426571, -0.402659, 0.809878,
		0.066407, 0.879073, 0.472039,
		-0.902013, 0.255140, -0.348248,
		38.158009, 29.032167, 40.584408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457634, 29.021313, 41.372974>,  <38.789417, 28.853569, 40.828178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457634, 29.021313, 41.372974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139324, 28.965527, 41.137249>,  <37.948338, 28.932055, 40.995811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139324, 28.965527, 41.137249>,  <38.457634, 29.021313, 41.372974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139324, 28.965527, 41.137249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527427, -0.318595, 0.787602,
		-0.297598, 0.937574, 0.179971,
		-0.795774, -0.139467, -0.589316,
		37.900593, 28.923687, 40.960453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923840, 29.071053, 41.791409>,  <38.457634, 29.021313, 41.372974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923840, 29.071053, 41.791409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714096, 28.918192, 41.487038>,  <37.588249, 28.826475, 41.304417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714096, 28.918192, 41.487038>,  <37.923840, 29.071053, 41.791409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714096, 28.918192, 41.487038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656010, -0.388422, 0.647132,
		-0.542862, 0.838505, -0.047023,
		-0.524358, -0.382150, -0.760927,
		37.556789, 28.803547, 41.258759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162800, 29.287479, 41.797009>,  <37.923840, 29.071053, 41.791409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162800, 29.287479, 41.797009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205540, 28.945545, 41.593895>,  <37.231182, 28.740385, 41.472027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205540, 28.945545, 41.593895>,  <37.162800, 29.287479, 41.797009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205540, 28.945545, 41.593895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758538, -0.400261, 0.514210,
		-0.642809, 0.330228, -0.691191,
		0.106850, -0.854834, -0.507782,
		37.237595, 28.689095, 41.441559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537476, 29.127777, 41.580631>,  <37.162800, 29.287479, 41.797009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537476, 29.127777, 41.580631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752876, 28.790758, 41.585129>,  <36.882118, 28.588547, 41.587830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752876, 28.790758, 41.585129>,  <36.537476, 29.127777, 41.580631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752876, 28.790758, 41.585129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694938, -0.436529, 0.571406,
		-0.476528, -0.315519, -0.820591,
		0.538501, -0.842550, 0.011248,
		36.914429, 28.537994, 41.588505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076393, 28.580530, 41.498337>,  <36.537476, 29.127777, 41.580631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076393, 28.580530, 41.498337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399132, 28.387985, 41.635330>,  <36.592773, 28.272459, 41.717525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399132, 28.387985, 41.635330>,  <36.076393, 28.580530, 41.498337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399132, 28.387985, 41.635330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586860, -0.586542, 0.558180,
		-0.067808, -0.651352, -0.755740,
		0.806844, -0.481362, 0.342480,
		36.641186, 28.243576, 41.738075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923870, 27.801268, 41.520599>,  <36.076393, 28.580530, 41.498337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923870, 27.801268, 41.520599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232891, 27.849712, 41.769917>,  <36.418304, 27.878778, 41.919506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232891, 27.849712, 41.769917>,  <35.923870, 27.801268, 41.520599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232891, 27.849712, 41.769917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444091, -0.598538, 0.666735,
		0.453813, -0.791887, -0.408618,
		0.772553, 0.121110, 0.623294,
		36.464657, 27.886045, 41.956905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153568, 27.078442, 41.740913>,  <35.923870, 27.801268, 41.520599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153568, 27.078442, 41.740913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259048, 27.356268, 42.008656>,  <36.322334, 27.522964, 42.169300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259048, 27.356268, 42.008656>,  <36.153568, 27.078442, 41.740913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259048, 27.356268, 42.008656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383383, -0.561292, 0.733463,
		0.885144, -0.450034, 0.118274,
		0.263697, 0.694565, 0.669360,
		36.338158, 27.564638, 42.209465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387848, 26.741550, 42.274181>,  <36.153568, 27.078442, 41.740913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387848, 26.741550, 42.274181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373692, 27.099480, 42.452187>,  <36.365200, 27.314238, 42.558990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373692, 27.099480, 42.452187>,  <36.387848, 26.741550, 42.274181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373692, 27.099480, 42.452187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059438, -0.446387, 0.892864,
		0.997605, 0.005145, 0.068982,
		-0.035386, 0.894826, 0.445012,
		36.363075, 27.367928, 42.585690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806919, 26.721933, 42.894314>,  <36.387848, 26.741550, 42.274181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806919, 26.721933, 42.894314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541782, 27.018921, 42.933067>,  <36.382702, 27.197113, 42.956318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541782, 27.018921, 42.933067>,  <36.806919, 26.721933, 42.894314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541782, 27.018921, 42.933067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239978, -0.333222, 0.911797,
		0.709263, 0.581125, 0.399048,
		-0.662840, 0.742467, 0.096884,
		36.342930, 27.241661, 42.962132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961533, 26.999430, 43.452816>,  <36.806919, 26.721933, 42.894314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961533, 26.999430, 43.452816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578892, 27.107212, 43.408455>,  <36.349308, 27.171881, 43.381840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578892, 27.107212, 43.408455>,  <36.961533, 26.999430, 43.452816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578892, 27.107212, 43.408455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178193, -0.239832, 0.954321,
		0.230550, 0.932670, 0.277440,
		-0.956605, 0.269456, -0.110902,
		36.291908, 27.188049, 43.375183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795475, 27.341251, 44.030121>,  <36.961533, 26.999430, 43.452816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795475, 27.341251, 44.030121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424923, 27.243788, 43.915268>,  <36.202591, 27.185308, 43.846355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424923, 27.243788, 43.915268>,  <36.795475, 27.341251, 44.030121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424923, 27.243788, 43.915268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221162, -0.265099, 0.938515,
		-0.304797, 0.932926, 0.191694,
		-0.926383, -0.243661, -0.287129,
		36.147007, 27.170689, 43.829128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352589, 27.739986, 44.452923>,  <36.795475, 27.341251, 44.030121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352589, 27.739986, 44.452923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131931, 27.432060, 44.324501>,  <35.999538, 27.247305, 44.247448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131931, 27.432060, 44.324501>,  <36.352589, 27.739986, 44.452923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131931, 27.432060, 44.324501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359078, -0.128232, 0.924456,
		-0.752830, 0.625252, -0.205685,
		-0.551643, -0.769816, -0.321051,
		35.966438, 27.201115, 44.228188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673939, 27.781376, 44.932846>,  <36.352589, 27.739986, 44.452923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673939, 27.781376, 44.932846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692440, 27.422497, 44.757168>,  <35.703541, 27.207169, 44.651760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692440, 27.422497, 44.757168>,  <35.673939, 27.781376, 44.932846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692440, 27.422497, 44.757168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334847, -0.428157, 0.839380,
		-0.941137, 0.108245, -0.320226,
		0.046248, -0.897198, -0.439199,
		35.706314, 27.153337, 44.625408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056122, 27.511850, 45.098392>,  <35.673939, 27.781376, 44.932846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056122, 27.511850, 45.098392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286373, 27.204325, 44.986980>,  <35.424522, 27.019810, 44.920135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286373, 27.204325, 44.986980>,  <35.056122, 27.511850, 45.098392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286373, 27.204325, 44.986980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266334, -0.498316, 0.825074,
		-0.773124, -0.400754, -0.491606,
		0.575626, -0.768816, -0.278526,
		35.459061, 26.973680, 44.903423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685215, 26.845516, 45.220562>,  <35.056122, 27.511850, 45.098392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685215, 26.845516, 45.220562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076214, 26.762184, 45.233768>,  <35.310814, 26.712185, 45.241692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076214, 26.762184, 45.233768>,  <34.685215, 26.845516, 45.220562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076214, 26.762184, 45.233768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161993, -0.641214, 0.750068,
		-0.135089, -0.738542, -0.660536,
		0.977502, -0.208328, 0.033017,
		35.369465, 26.699686, 45.243675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731201, 26.166334, 45.342854>,  <34.685215, 26.845516, 45.220562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731201, 26.166334, 45.342854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087017, 26.306438, 45.460186>,  <35.300507, 26.390501, 45.530586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087017, 26.306438, 45.460186>,  <34.731201, 26.166334, 45.342854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087017, 26.306438, 45.460186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075155, -0.521113, 0.850173,
		0.450640, -0.778305, -0.437225,
		0.889537, 0.350262, 0.293328,
		35.353878, 26.411516, 45.548183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990574, 25.593988, 45.520931>,  <34.731201, 26.166334, 45.342854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990574, 25.593988, 45.520931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199612, 25.873114, 45.716873>,  <35.325035, 26.040588, 45.834438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199612, 25.873114, 45.716873>,  <34.990574, 25.593988, 45.520931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199612, 25.873114, 45.716873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006926, -0.571054, 0.820883,
		0.852555, -0.432379, -0.293595,
		0.522591, 0.697815, 0.489850,
		35.356388, 26.082458, 45.863827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415016, 25.247641, 45.945011>,  <34.990574, 25.593988, 45.520931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415016, 25.247641, 45.945011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463673, 25.605070, 46.117859>,  <35.492867, 25.819529, 46.221569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463673, 25.605070, 46.117859>,  <35.415016, 25.247641, 45.945011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463673, 25.605070, 46.117859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223263, -0.399568, 0.889100,
		0.967139, -0.204626, 0.150899,
		0.121638, 0.893573, 0.432123,
		35.500164, 25.873142, 46.247498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811012, 25.139330, 46.608494>,  <35.415016, 25.247641, 45.945011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811012, 25.139330, 46.608494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633385, 25.496611, 46.636757>,  <35.526810, 25.710979, 46.653717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633385, 25.496611, 46.636757>,  <35.811012, 25.139330, 46.608494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633385, 25.496611, 46.636757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133766, -0.144070, 0.980485,
		0.885952, 0.425948, 0.183457,
		-0.444066, 0.893203, 0.070662,
		35.500164, 25.764572, 46.657955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062756, 25.345367, 47.213116>,  <35.811012, 25.139330, 46.608494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062756, 25.345367, 47.213116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733330, 25.559240, 47.137367>,  <35.535675, 25.687563, 47.091919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733330, 25.559240, 47.137367>,  <36.062756, 25.345367, 47.213116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733330, 25.559240, 47.137367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275504, -0.085218, 0.957515,
		0.495826, 0.840747, 0.217489,
		-0.823562, 0.534680, -0.189376,
		35.486259, 25.719645, 47.080555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013016, 25.894817, 47.664051>,  <36.062756, 25.345367, 47.213116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013016, 25.894817, 47.664051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634865, 25.815536, 47.560532>,  <35.407974, 25.767967, 47.498421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634865, 25.815536, 47.560532>,  <36.013016, 25.894817, 47.664051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634865, 25.815536, 47.560532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242152, -0.104483, 0.964596,
		-0.218227, 0.974576, 0.050780,
		-0.945378, -0.198204, -0.258797,
		35.351250, 25.756075, 47.482891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554863, 26.318022, 48.013653>,  <36.013016, 25.894817, 47.664051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554863, 26.318022, 48.013653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325409, 26.006653, 47.911671>,  <35.187737, 25.819832, 47.850483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325409, 26.006653, 47.911671>,  <35.554863, 26.318022, 48.013653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325409, 26.006653, 47.911671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270159, -0.114045, 0.956037,
		-0.773278, 0.617293, -0.144879,
		-0.573633, -0.778423, -0.254956,
		35.153320, 25.773127, 47.835182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594742, 26.730564, 48.737434>,  <35.554863, 26.318022, 48.013653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594742, 26.730564, 48.737434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724308, 27.070385, 48.903973>,  <35.802048, 27.274277, 49.003895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724308, 27.070385, 48.903973>,  <35.594742, 26.730564, 48.737434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724308, 27.070385, 48.903973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154744, 0.386569, -0.909186,
		-0.933345, 0.358926, -0.006247,
		0.323916, 0.849551, 0.416344,
		35.821484, 27.325251, 49.028877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175938, 27.285124, 48.570438>,  <35.594742, 26.730564, 48.737434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175938, 27.285124, 48.570438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520645, 27.464083, 48.666092>,  <35.727470, 27.571457, 48.723484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520645, 27.464083, 48.666092>,  <35.175938, 27.285124, 48.570438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520645, 27.464083, 48.666092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025406, 0.432733, -0.901164,
		-0.506657, 0.782674, 0.361551,
		0.861773, 0.447396, 0.239132,
		35.779179, 27.598301, 48.737831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158649, 28.052084, 48.315968>,  <35.175938, 27.285124, 48.570438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158649, 28.052084, 48.315968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544949, 27.953056, 48.347073>,  <35.776726, 27.893641, 48.365734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544949, 27.953056, 48.347073>,  <35.158649, 28.052084, 48.315968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544949, 27.953056, 48.347073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196825, 0.503558, -0.841243,
		0.169105, 0.827732, 0.535036,
		0.965745, -0.247567, 0.077764,
		35.834671, 27.878786, 48.370403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490685, 28.687382, 48.167755>,  <35.158649, 28.052084, 48.315968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490685, 28.687382, 48.167755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804916, 28.441032, 48.143879>,  <35.993454, 28.293222, 48.129551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804916, 28.441032, 48.143879>,  <35.490685, 28.687382, 48.167755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804916, 28.441032, 48.143879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390437, 0.568231, -0.724343,
		0.480025, 0.545722, 0.686850,
		0.785579, -0.615875, -0.059695,
		36.040588, 28.256269, 48.125969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058952, 29.093319, 48.099434>,  <35.490685, 28.687382, 48.167755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058952, 29.093319, 48.099434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166874, 28.738096, 47.950539>,  <36.231628, 28.524963, 47.861202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166874, 28.738096, 47.950539>,  <36.058952, 29.093319, 48.099434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166874, 28.738096, 47.950539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386653, 0.453958, -0.802759,
		0.881876, 0.072658, 0.465849,
		0.269803, -0.888056, -0.372241,
		36.247814, 28.471680, 47.838867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725159, 29.191122, 47.830410>,  <36.058952, 29.093319, 48.099434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725159, 29.191122, 47.830410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597996, 28.860617, 47.644409>,  <36.521698, 28.662313, 47.532810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597996, 28.860617, 47.644409>,  <36.725159, 29.191122, 47.830410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597996, 28.860617, 47.644409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359678, 0.348681, -0.865478,
		0.877248, -0.442394, 0.186339,
		-0.317910, -0.826262, -0.465000,
		36.502625, 28.612738, 47.504910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239025, 29.029644, 47.360973>,  <36.725159, 29.191122, 47.830410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239025, 29.029644, 47.360973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933533, 28.824913, 47.203621>,  <36.750237, 28.702074, 47.109211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933533, 28.824913, 47.203621>,  <37.239025, 29.029644, 47.360973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933533, 28.824913, 47.203621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168534, 0.430156, -0.886884,
		0.623147, -0.743637, -0.242262,
		-0.763730, -0.511830, -0.393378,
		36.704414, 28.671364, 47.085606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502010, 28.745260, 46.684456>,  <37.239025, 29.029644, 47.360973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502010, 28.745260, 46.684456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103439, 28.763212, 46.655823>,  <36.864296, 28.773983, 46.638641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103439, 28.763212, 46.655823>,  <37.502010, 28.745260, 46.684456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103439, 28.763212, 46.655823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083275, 0.378629, -0.921795,
		-0.014268, -0.924460, -0.381013,
		-0.996424, 0.044881, -0.071582,
		36.804512, 28.776676, 46.634350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395092, 28.712652, 46.014595>,  <37.502010, 28.745260, 46.684456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395092, 28.712652, 46.014595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029179, 28.842237, 46.111111>,  <36.809631, 28.919989, 46.169022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029179, 28.842237, 46.111111>,  <37.395092, 28.712652, 46.014595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029179, 28.842237, 46.111111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075532, 0.449613, -0.890024,
		-0.396822, -0.832404, -0.386829,
		-0.914782, 0.323963, 0.241289,
		36.754745, 28.939426, 46.183498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978779, 28.517921, 45.471058>,  <37.395092, 28.712652, 46.014595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978779, 28.517921, 45.471058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799606, 28.823578, 45.656723>,  <36.692104, 29.006973, 45.768120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799606, 28.823578, 45.656723>,  <36.978779, 28.517921, 45.471058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799606, 28.823578, 45.656723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024245, 0.508582, -0.860672,
		-0.893740, -0.396774, -0.209282,
		-0.447929, 0.764144, 0.464160,
		36.665226, 29.052820, 45.795971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513641, 28.681835, 45.019653>,  <36.978779, 28.517921, 45.471058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513641, 28.681835, 45.019653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524849, 29.005465, 45.254471>,  <36.531574, 29.199642, 45.395359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524849, 29.005465, 45.254471>,  <36.513641, 28.681835, 45.019653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524849, 29.005465, 45.254471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161408, 0.583225, -0.796113,
		-0.986490, -0.072450, 0.146930,
		0.028015, 0.809074, 0.587039,
		36.533253, 29.248186, 45.430584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065723, 29.224773, 44.670273>,  <36.513641, 28.681835, 45.019653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065723, 29.224773, 44.670273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317112, 29.419380, 44.913029>,  <36.467945, 29.536144, 45.058681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317112, 29.419380, 44.913029>,  <36.065723, 29.224773, 44.670273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317112, 29.419380, 44.913029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154068, 0.686917, -0.710217,
		-0.762419, 0.539856, 0.356753,
		0.628475, 0.486519, 0.606893,
		36.505653, 29.565336, 45.095097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888760, 29.935940, 44.538052>,  <36.065723, 29.224773, 44.670273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888760, 29.935940, 44.538052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250713, 29.926718, 44.708061>,  <36.467888, 29.921185, 44.810066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250713, 29.926718, 44.708061>,  <35.888760, 29.935940, 44.538052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250713, 29.926718, 44.708061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314502, 0.709067, -0.631120,
		-0.286821, 0.704764, 0.648876,
		0.904888, -0.023055, 0.425025,
		36.522179, 29.919802, 44.835567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171921, 30.620131, 44.421654>,  <35.888760, 29.935940, 44.538052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171921, 30.620131, 44.421654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500500, 30.417292, 44.526020>,  <36.697647, 30.295588, 44.588642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500500, 30.417292, 44.526020>,  <36.171921, 30.620131, 44.421654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500500, 30.417292, 44.526020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562528, 0.645282, -0.516889,
		0.093747, 0.571370, 0.815321,
		0.821446, -0.507098, 0.260918,
		36.746933, 30.265162, 44.604294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578636, 31.171125, 44.447197>,  <36.171921, 30.620131, 44.421654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578636, 31.171125, 44.447197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812336, 30.847246, 44.425148>,  <36.952557, 30.652918, 44.411919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812336, 30.847246, 44.425148>,  <36.578636, 31.171125, 44.447197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812336, 30.847246, 44.425148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548471, 0.443991, -0.708556,
		0.598189, 0.383743, 0.703499,
		0.584251, -0.809699, -0.055119,
		36.987610, 30.604336, 44.408611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303001, 31.370073, 44.495918>,  <36.578636, 31.171125, 44.447197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303001, 31.370073, 44.495918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277256, 31.020628, 44.302982>,  <37.261806, 30.810961, 44.187222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277256, 31.020628, 44.302982>,  <37.303001, 31.370073, 44.495918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277256, 31.020628, 44.302982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547667, 0.373128, -0.748890,
		0.834217, -0.312366, 0.454433,
		-0.064366, -0.873615, -0.482342,
		37.257946, 30.758543, 44.158279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052685, 31.099514, 44.349522>,  <37.303001, 31.370073, 44.495918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052685, 31.099514, 44.349522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833553, 30.895226, 44.084480>,  <37.702076, 30.772652, 43.925453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833553, 30.895226, 44.084480>,  <38.052685, 31.099514, 44.349522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833553, 30.895226, 44.084480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612554, 0.294564, -0.733491,
		0.569790, -0.807710, 0.151474,
		-0.547829, -0.510722, -0.662606,
		37.669205, 30.742008, 43.885700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515099, 30.857544, 43.928932>,  <38.052685, 31.099514, 44.349522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515099, 30.857544, 43.928932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179440, 30.839966, 43.712082>,  <37.978043, 30.829418, 43.581974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179440, 30.839966, 43.712082>,  <38.515099, 30.857544, 43.928932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179440, 30.839966, 43.712082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526557, 0.184056, -0.829976,
		0.136256, -0.981932, -0.131310,
		-0.839149, -0.043947, -0.542122,
		37.927696, 30.826782, 43.549446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630562, 30.300447, 43.428932>,  <38.515099, 30.857544, 43.928932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630562, 30.300447, 43.428932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350590, 30.543337, 43.278526>,  <38.182606, 30.689070, 43.188282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350590, 30.543337, 43.278526>,  <38.630562, 30.300447, 43.428932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350590, 30.543337, 43.278526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468434, -0.007124, -0.883469,
		-0.539141, -0.794500, -0.279457,
		-0.699926, 0.607222, -0.376012,
		38.140614, 30.725504, 43.165722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624119, 30.148094, 42.766510>,  <38.630562, 30.300447, 43.428932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624119, 30.148094, 42.766510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403038, 30.481289, 42.756283>,  <38.270390, 30.681206, 42.750145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403038, 30.481289, 42.756283>,  <38.624119, 30.148094, 42.766510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403038, 30.481289, 42.756283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258684, 0.142316, -0.955421,
		-0.792214, -0.534677, -0.294138,
		-0.552702, 0.832987, -0.025568,
		38.237228, 30.731184, 42.748611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176254, 30.030785, 42.266861>,  <38.624119, 30.148094, 42.766510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176254, 30.030785, 42.266861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219681, 30.426466, 42.306244>,  <38.245735, 30.663874, 42.329872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219681, 30.426466, 42.306244>,  <38.176254, 30.030785, 42.266861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219681, 30.426466, 42.306244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294599, 0.062577, -0.953570,
		-0.949434, 0.132528, -0.284625,
		0.108563, 0.989202, 0.098455,
		38.252251, 30.723227, 42.335781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025589, 30.273769, 41.615818>,  <38.176254, 30.030785, 42.266861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025589, 30.273769, 41.615818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213757, 30.577412, 41.795803>,  <38.326656, 30.759596, 41.903793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213757, 30.577412, 41.795803>,  <38.025589, 30.273769, 41.615818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213757, 30.577412, 41.795803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474434, 0.212375, -0.854289,
		-0.744055, 0.615352, -0.260239,
		0.470420, 0.759104, 0.449962,
		38.354881, 30.805143, 41.930790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888630, 30.824444, 41.148602>,  <38.025589, 30.273769, 41.615818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888630, 30.824444, 41.148602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199203, 30.963577, 41.358803>,  <38.385548, 31.047058, 41.484924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199203, 30.963577, 41.358803>,  <37.888630, 30.824444, 41.148602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199203, 30.963577, 41.358803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378399, 0.409499, -0.830136,
		-0.503944, 0.843399, 0.186330,
		0.776437, 0.347835, 0.525505,
		38.432137, 31.067928, 41.516453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911751, 31.552473, 40.974964>,  <37.888630, 30.824444, 41.148602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911751, 31.552473, 40.974964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273602, 31.429905, 41.093464>,  <38.490711, 31.356365, 41.164566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273602, 31.429905, 41.093464>,  <37.911751, 31.552473, 40.974964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273602, 31.429905, 41.093464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403218, 0.390042, -0.827818,
		0.138107, 0.868317, 0.476394,
		0.904622, -0.306419, 0.296254,
		38.544987, 31.337980, 41.182339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397495, 32.122166, 40.850662>,  <37.911751, 31.552473, 40.974964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397495, 32.122166, 40.850662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632462, 31.799757, 40.879711>,  <38.773441, 31.606312, 40.897141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632462, 31.799757, 40.879711>,  <38.397495, 32.122166, 40.850662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632462, 31.799757, 40.879711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569095, 0.347600, -0.745188,
		0.575393, 0.479065, 0.662888,
		0.587413, -0.806022, 0.072627,
		38.808685, 31.557951, 40.901501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051098, 32.379158, 40.982899>,  <38.397495, 32.122166, 40.850662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051098, 32.379158, 40.982899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092911, 32.005795, 40.845592>,  <39.118000, 31.781778, 40.763210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092911, 32.005795, 40.845592>,  <39.051098, 32.379158, 40.982899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092911, 32.005795, 40.845592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678075, 0.319381, -0.661974,
		0.727521, -0.163558, 0.666305,
		0.104534, -0.933405, -0.343261,
		39.124271, 31.725773, 40.742615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701126, 32.404850, 40.852673>,  <39.051098, 32.379158, 40.982899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701126, 32.404850, 40.852673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594151, 32.090435, 40.629742>,  <39.529964, 31.901785, 40.495983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594151, 32.090435, 40.629742>,  <39.701126, 32.404850, 40.852673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594151, 32.090435, 40.629742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606196, 0.312350, -0.731412,
		0.749003, -0.533456, 0.392963,
		-0.267434, -0.786042, -0.557330,
		39.513920, 31.854622, 40.462543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355553, 32.043751, 40.483910>,  <39.701126, 32.404850, 40.852673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355553, 32.043751, 40.483910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004860, 32.001305, 40.296261>,  <39.794445, 31.975838, 40.183670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004860, 32.001305, 40.296261>,  <40.355553, 32.043751, 40.483910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004860, 32.001305, 40.296261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405290, 0.362224, -0.839365,
		0.258995, -0.926031, -0.274568,
		-0.876733, -0.106112, -0.469126,
		39.741840, 31.969471, 40.155521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520267, 31.605871, 39.943657>,  <40.355553, 32.043751, 40.483910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520267, 31.605871, 39.943657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175762, 31.782757, 39.843517>,  <39.969059, 31.888887, 39.783432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175762, 31.782757, 39.843517>,  <40.520267, 31.605871, 39.943657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175762, 31.782757, 39.843517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334430, 0.122326, -0.934448,
		-0.382601, -0.888529, -0.253244,
		-0.861263, 0.442213, -0.250348,
		39.917385, 31.915421, 39.768414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547615, 31.455473, 39.180489>,  <40.520267, 31.605871, 39.943657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547615, 31.455473, 39.180489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272404, 31.738567, 39.244637>,  <40.107277, 31.908424, 39.283127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272404, 31.738567, 39.244637>,  <40.547615, 31.455473, 39.180489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272404, 31.738567, 39.244637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084114, 0.297280, -0.951078,
		-0.720788, -0.640883, -0.264069,
		-0.688033, 0.707738, 0.160369,
		40.065994, 31.950890, 39.292747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179371, 31.438126, 38.635380>,  <40.547615, 31.455473, 39.180489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179371, 31.438126, 38.635380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107872, 31.801439, 38.786682>,  <40.064972, 32.019428, 38.877464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107872, 31.801439, 38.786682>,  <40.179371, 31.438126, 38.635380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107872, 31.801439, 38.786682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006104, 0.385459, -0.922705,
		-0.983877, -0.162618, -0.074442,
		-0.178742, 0.908283, 0.378251,
		40.054249, 32.073925, 38.900158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627029, 31.683895, 38.171638>,  <40.179371, 31.438126, 38.635380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627029, 31.683895, 38.171638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808128, 31.985741, 38.361618>,  <39.916786, 32.166847, 38.475605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808128, 31.985741, 38.361618>,  <39.627029, 31.683895, 38.171638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808128, 31.985741, 38.361618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178391, 0.445241, -0.877461,
		-0.873611, 0.481996, 0.066966,
		0.452748, 0.754613, 0.474951,
		39.943954, 32.212124, 38.504105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378231, 32.212891, 37.716515>,  <39.627029, 31.683895, 38.171638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378231, 32.212891, 37.716515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663113, 32.344154, 37.964733>,  <39.834042, 32.422913, 38.113663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663113, 32.344154, 37.964733>,  <39.378231, 32.212891, 37.716515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663113, 32.344154, 37.964733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419945, 0.509195, -0.751243,
		-0.562506, 0.795634, 0.224841,
		0.712203, 0.328158, 0.620548,
		39.876774, 32.442600, 38.150898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327492, 32.778248, 37.687763>,  <39.378231, 32.212891, 37.716515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327492, 32.778248, 37.687763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706654, 32.756580, 37.813328>,  <39.934151, 32.743580, 37.888668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706654, 32.756580, 37.813328>,  <39.327492, 32.778248, 37.687763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706654, 32.756580, 37.813328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278280, 0.620399, -0.733256,
		-0.155031, 0.782413, 0.603154,
		0.947906, -0.054169, 0.313911,
		39.991024, 32.740330, 37.907501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626591, 33.490051, 37.731544>,  <39.327492, 32.778248, 37.687763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626591, 33.490051, 37.731544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920731, 33.225170, 37.673923>,  <40.097214, 33.066242, 37.639351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920731, 33.225170, 37.673923>,  <39.626591, 33.490051, 37.731544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920731, 33.225170, 37.673923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421673, 0.613494, -0.667696,
		0.530526, 0.430245, 0.730364,
		0.735346, -0.662205, -0.144052,
		40.141335, 33.026508, 37.630707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195076, 33.947811, 37.668427>,  <39.626591, 33.490051, 37.731544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195076, 33.947811, 37.668427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350750, 33.603443, 37.537373>,  <40.444153, 33.396820, 37.458740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350750, 33.603443, 37.537373>,  <40.195076, 33.947811, 37.668427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350750, 33.603443, 37.537373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463993, 0.490477, -0.737660,
		0.795769, 0.135061, 0.590348,
		0.389182, -0.860924, -0.327639,
		40.467503, 33.345165, 37.439079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930397, 34.041534, 37.733105>,  <40.195076, 33.947811, 37.668427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930397, 34.041534, 37.733105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856926, 33.772423, 37.446430>,  <40.812843, 33.610954, 37.274426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856926, 33.772423, 37.446430>,  <40.930397, 34.041534, 37.733105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856926, 33.772423, 37.446430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395441, 0.616917, -0.680470,
		0.899939, -0.408390, 0.152733,
		-0.183674, -0.672779, -0.716682,
		40.801823, 33.570591, 37.231426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557690, 33.842667, 37.436104>,  <40.930397, 34.041534, 37.733105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557690, 33.842667, 37.436104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282261, 33.775730, 37.153866>,  <41.117004, 33.735569, 36.984524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282261, 33.775730, 37.153866>,  <41.557690, 33.842667, 37.436104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282261, 33.775730, 37.153866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548199, 0.516824, -0.657550,
		0.474701, -0.839578, -0.264137,
		-0.688577, -0.167340, -0.705592,
		41.075687, 33.725529, 36.942188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972099, 33.634846, 36.820778>,  <41.557690, 33.842667, 37.436104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972099, 33.634846, 36.820778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606007, 33.692448, 36.670250>,  <41.386353, 33.727009, 36.579933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606007, 33.692448, 36.670250>,  <41.972099, 33.634846, 36.820778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606007, 33.692448, 36.670250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402926, 0.324114, -0.855921,
		-0.001287, -0.934994, -0.354663,
		-0.915231, 0.144004, -0.376316,
		41.331436, 33.735649, 36.557354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041462, 33.438179, 36.109024>,  <41.972099, 33.634846, 36.820778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041462, 33.438179, 36.109024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720650, 33.676285, 36.128662>,  <41.528164, 33.819149, 36.140446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720650, 33.676285, 36.128662>,  <42.041462, 33.438179, 36.109024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720650, 33.676285, 36.128662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291387, 0.461701, -0.837810,
		-0.521385, -0.657642, -0.543750,
		-0.802029, 0.595264, 0.049096,
		41.480042, 33.854862, 36.143391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854156, 33.541538, 35.439041>,  <42.041462, 33.438179, 36.109024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854156, 33.541538, 35.439041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745537, 33.848640, 35.671181>,  <41.680367, 34.032902, 35.810467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745537, 33.848640, 35.671181>,  <41.854156, 33.541538, 35.439041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745537, 33.848640, 35.671181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161617, 0.630824, -0.758908,
		-0.948758, -0.112286, -0.295382,
		-0.271548, 0.767758, 0.580352,
		41.664074, 34.078968, 35.845287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520653, 33.961224, 35.009602>,  <41.854156, 33.541538, 35.439041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520653, 33.961224, 35.009602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588257, 34.197540, 35.325169>,  <41.628819, 34.339333, 35.514511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588257, 34.197540, 35.325169>,  <41.520653, 33.961224, 35.009602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588257, 34.197540, 35.325169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074182, 0.790541, -0.607900,
		-0.982818, 0.161266, 0.089784,
		0.169011, 0.590795, 0.788921,
		41.638962, 34.374779, 35.561844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057442, 34.500298, 35.023098>,  <41.520653, 33.961224, 35.009602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057442, 34.500298, 35.023098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410805, 34.583248, 35.191193>,  <41.622822, 34.633018, 35.292049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410805, 34.583248, 35.191193>,  <41.057442, 34.500298, 35.023098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410805, 34.583248, 35.191193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054460, 0.845247, -0.531594,
		-0.465439, 0.492497, 0.735400,
		0.883403, 0.207375, 0.420232,
		41.675827, 34.645462, 35.317261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030083, 35.179337, 35.318081>,  <41.057442, 34.500298, 35.023098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030083, 35.179337, 35.318081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408627, 35.095592, 35.219643>,  <41.635754, 35.045345, 35.160580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408627, 35.095592, 35.219643>,  <41.030083, 35.179337, 35.318081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408627, 35.095592, 35.219643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031183, 0.817290, -0.575382,
		0.321599, 0.536845, 0.779981,
		0.946362, -0.209364, -0.246100,
		41.692535, 35.032784, 35.145813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337975, 35.730900, 35.472267>,  <41.030083, 35.179337, 35.318081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337975, 35.730900, 35.472267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544567, 35.524052, 35.199261>,  <41.668522, 35.399940, 35.035458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544567, 35.524052, 35.199261>,  <41.337975, 35.730900, 35.472267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544567, 35.524052, 35.199261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200222, 0.847892, -0.490908,
		0.832563, 0.116887, 0.541457,
		0.516478, -0.517124, -0.682520,
		41.699509, 35.368916, 34.994503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030670, 36.135368, 35.410179>,  <41.337975, 35.730900, 35.472267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.030670, 36.135368, 35.410179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921944, 35.956165, 35.069496>,  <41.856709, 35.848644, 34.865086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921944, 35.956165, 35.069496>,  <42.030670, 36.135368, 35.410179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921944, 35.956165, 35.069496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279251, 0.810230, -0.515311,
		0.920943, -0.377909, -0.095125,
		-0.271814, -0.448008, -0.851708,
		41.840401, 35.821762, 34.813984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606171, 36.190758, 34.969177>,  <42.030670, 36.135368, 35.410179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606171, 36.190758, 34.969177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281544, 36.171543, 34.736263>,  <42.086769, 36.160015, 34.596516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281544, 36.171543, 34.736263>,  <42.606171, 36.190758, 34.969177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281544, 36.171543, 34.736263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331970, 0.782201, -0.527217,
		0.480793, -0.621172, -0.618857,
		-0.811563, -0.048040, -0.582287,
		42.038074, 36.157131, 34.561577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104656, 36.045097, 34.459877>,  <42.606171, 36.190758, 34.969177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104656, 36.045097, 34.459877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488792, 36.082672, 34.354866>,  <43.719273, 36.105217, 34.291859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488792, 36.082672, 34.354866>,  <43.104656, 36.045097, 34.459877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488792, 36.082672, 34.354866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245081, 0.733371, -0.634115,
		0.132960, 0.673307, 0.727309,
		0.960342, 0.093938, -0.262524,
		43.776894, 36.110855, 34.276108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250881, 36.707237, 34.487995>,  <43.104656, 36.045097, 34.459877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250881, 36.707237, 34.487995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541798, 36.570465, 34.249962>,  <43.716347, 36.488400, 34.107140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541798, 36.570465, 34.249962>,  <43.250881, 36.707237, 34.487995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541798, 36.570465, 34.249962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270648, 0.653910, -0.706507,
		0.630712, 0.674896, 0.383039,
		0.727291, -0.341933, -0.595087,
		43.759987, 36.467884, 34.071434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646126, 37.373035, 34.254871>,  <43.250881, 36.707237, 34.487995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646126, 37.373035, 34.254871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.713356, 37.079735, 33.991329>,  <43.753693, 36.903755, 33.833202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.713356, 37.079735, 33.991329>,  <43.646126, 37.373035, 34.254871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.713356, 37.079735, 33.991329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185338, 0.632939, -0.751690,
		0.968195, 0.248451, -0.029519,
		0.168075, -0.733253, -0.658855,
		43.763779, 36.859760, 33.793674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171623, 37.601017, 33.817886>,  <43.646126, 37.373035, 34.254871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171623, 37.601017, 33.817886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990963, 37.303314, 33.621075>,  <43.882568, 37.124691, 33.502987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990963, 37.303314, 33.621075>,  <44.171623, 37.601017, 33.817886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990963, 37.303314, 33.621075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001511, 0.550845, -0.834606,
		0.892193, -0.377695, -0.247665,
		-0.451651, -0.744256, -0.492030,
		43.855469, 37.080036, 33.473465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573742, 37.559647, 33.200462>,  <44.171623, 37.601017, 33.817886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573742, 37.559647, 33.200462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238258, 37.364662, 33.103344>,  <44.036968, 37.247673, 33.045071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238258, 37.364662, 33.103344>,  <44.573742, 37.559647, 33.200462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238258, 37.364662, 33.103344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016875, 0.422370, -0.906267,
		0.544319, -0.764191, -0.346019,
		-0.838709, -0.487459, -0.242799,
		43.986645, 37.218426, 33.030506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676357, 37.217278, 32.559464>,  <44.573742, 37.559647, 33.200462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676357, 37.217278, 32.559464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281216, 37.261597, 32.603043>,  <44.044132, 37.288189, 32.629189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281216, 37.261597, 32.603043>,  <44.676357, 37.217278, 32.559464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.281216, 37.261597, 32.603043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043589, 0.475362, -0.878709,
		-0.149150, -0.872785, -0.464759,
		-0.987853, 0.110801, 0.108944,
		43.984859, 37.294838, 32.635727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453003, 37.064434, 31.955118>,  <44.676357, 37.217278, 32.559464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453003, 37.064434, 31.955118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135956, 37.270679, 32.085293>,  <43.945728, 37.394428, 32.163399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135956, 37.270679, 32.085293>,  <44.453003, 37.064434, 31.955118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135956, 37.270679, 32.085293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124354, 0.385820, -0.914155,
		-0.596909, -0.765040, -0.241687,
		-0.792613, 0.515613, 0.325435,
		43.898170, 37.425362, 32.182922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014107, 37.078838, 31.360134>,  <44.453003, 37.064434, 31.955118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014107, 37.078838, 31.360134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844044, 37.350750, 31.599178>,  <43.742008, 37.513897, 31.742605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844044, 37.350750, 31.599178>,  <44.014107, 37.078838, 31.360134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844044, 37.350750, 31.599178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234271, 0.555112, -0.798103,
		-0.874277, -0.479321, -0.076756,
		-0.425155, 0.679781, 0.597612,
		43.716496, 37.554684, 31.778461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392284, 37.108028, 31.080065>,  <44.014107, 37.078838, 31.360134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392284, 37.108028, 31.080065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414188, 37.455536, 31.276941>,  <43.427330, 37.664040, 31.395067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414188, 37.455536, 31.276941>,  <43.392284, 37.108028, 31.080065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414188, 37.455536, 31.276941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296086, 0.484887, -0.822933,
		-0.953591, -0.100666, 0.283781,
		0.054761, 0.868764, 0.492189,
		43.430618, 37.716164, 31.424599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723232, 37.479229, 30.855295>,  <43.392284, 37.108028, 31.080065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723232, 37.479229, 30.855295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009968, 37.734135, 30.968460>,  <43.182011, 37.887077, 31.036360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009968, 37.734135, 30.968460>,  <42.723232, 37.479229, 30.855295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009968, 37.734135, 30.968460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206343, 0.581481, -0.786958,
		-0.666008, 0.505744, 0.548322,
		0.716838, 0.637262, 0.282914,
		43.225018, 37.925312, 31.053333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489628, 38.085480, 30.837879>,  <42.723232, 37.479229, 30.855295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489628, 38.085480, 30.837879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875935, 38.189182, 30.834133>,  <43.107719, 38.251404, 30.831886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875935, 38.189182, 30.834133>,  <42.489628, 38.085480, 30.837879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875935, 38.189182, 30.834133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169842, 0.604566, -0.778238,
		-0.196103, 0.753183, 0.627900,
		0.965762, 0.259259, -0.009365,
		43.165665, 38.266960, 30.831324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505440, 38.770248, 30.657682>,  <42.489628, 38.085480, 30.837879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505440, 38.770248, 30.657682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886349, 38.677887, 30.577826>,  <43.114895, 38.622471, 30.529911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886349, 38.677887, 30.577826>,  <42.505440, 38.770248, 30.657682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886349, 38.677887, 30.577826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070017, 0.471374, -0.879149,
		0.297106, 0.851169, 0.432710,
		0.952274, -0.230904, -0.199644,
		43.172031, 38.608616, 30.517933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750126, 39.338558, 30.338829>,  <42.505440, 38.770248, 30.657682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750126, 39.338558, 30.338829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019081, 39.064560, 30.226629>,  <43.180454, 38.900162, 30.159309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019081, 39.064560, 30.226629>,  <42.750126, 39.338558, 30.338829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019081, 39.064560, 30.226629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057218, 0.425919, -0.902950,
		0.737984, 0.591084, 0.325577,
		0.672389, -0.684991, -0.280501,
		43.220798, 38.859062, 30.142479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351124, 39.693504, 30.080906>,  <42.750126, 39.338558, 30.338829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351124, 39.693504, 30.080906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347729, 39.337914, 29.897758>,  <43.345692, 39.124557, 29.787870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347729, 39.337914, 29.897758>,  <43.351124, 39.693504, 30.080906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347729, 39.337914, 29.897758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052717, 0.457646, -0.887570,
		0.998573, 0.016602, -0.050750,
		-0.008490, -0.888979, -0.457869,
		43.345181, 39.071220, 29.760397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812225, 39.814034, 29.546757>,  <43.351124, 39.693504, 30.080906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812225, 39.814034, 29.546757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641438, 39.468380, 29.440191>,  <43.538963, 39.260990, 29.376253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641438, 39.468380, 29.440191>,  <43.812225, 39.814034, 29.546757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641438, 39.468380, 29.440191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002652, 0.293419, -0.955980,
		0.904261, -0.408882, -0.122990,
		-0.426971, -0.864130, -0.266412,
		43.513348, 39.209141, 29.360268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251762, 39.581608, 29.203207>,  <43.812225, 39.814034, 29.546757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251762, 39.581608, 29.203207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.913467, 39.407909, 29.079166>,  <43.710491, 39.303692, 29.004742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.913467, 39.407909, 29.079166>,  <44.251762, 39.581608, 29.203207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.913467, 39.407909, 29.079166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152548, 0.360128, -0.920346,
		0.511333, -0.825675, -0.238330,
		-0.845735, -0.434246, -0.310100,
		43.659748, 39.277637, 28.986137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403065, 39.234196, 28.557941>,  <44.251762, 39.581608, 29.203207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403065, 39.234196, 28.557941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005898, 39.281624, 28.561073>,  <43.767597, 39.310081, 28.562952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005898, 39.281624, 28.561073>,  <44.403065, 39.234196, 28.557941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005898, 39.281624, 28.561073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026947, 0.288842, -0.956998,
		-0.115731, -0.950006, -0.289991,
		-0.992915, 0.118569, 0.007829,
		43.708023, 39.317196, 28.563421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093044, 38.943817, 27.945553>,  <44.403065, 39.234196, 28.557941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093044, 38.943817, 27.945553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797634, 39.184391, 28.067444>,  <43.620388, 39.328735, 28.140577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797634, 39.184391, 28.067444>,  <44.093044, 38.943817, 27.945553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.797634, 39.184391, 28.067444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136457, 0.309278, -0.941131,
		-0.660275, -0.736629, -0.146339,
		-0.738524, 0.601436, 0.304726,
		43.576077, 39.364822, 28.158861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.360146, 38.858849, 27.551870>,  <44.093044, 38.943817, 27.945553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.360146, 38.858849, 27.551870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381638, 39.229218, 27.701424>,  <43.394535, 39.451439, 27.791155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381638, 39.229218, 27.701424>,  <43.360146, 38.858849, 27.551870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381638, 39.229218, 27.701424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109769, 0.377630, -0.919427,
		-0.992504, 0.008363, 0.121929,
		0.053733, 0.925919, 0.373881,
		43.397758, 39.506992, 27.813587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718632, 39.259476, 27.225042>,  <43.360146, 38.858849, 27.551870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718632, 39.259476, 27.225042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986916, 39.531052, 27.344498>,  <43.147888, 39.693996, 27.416170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986916, 39.531052, 27.344498>,  <42.718632, 39.259476, 27.225042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986916, 39.531052, 27.344498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024494, 0.382135, -0.923782,
		-0.741314, 0.626906, 0.239672,
		0.670711, 0.678942, 0.298638,
		43.188129, 39.734734, 27.434090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479031, 39.915443, 26.911776>,  <42.718632, 39.259476, 27.225042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479031, 39.915443, 26.911776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872044, 39.947578, 26.978930>,  <43.107849, 39.966858, 27.019222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872044, 39.947578, 26.978930>,  <42.479031, 39.915443, 26.911776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872044, 39.947578, 26.978930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124001, 0.390108, -0.912381,
		-0.138788, 0.917258, 0.373330,
		0.982528, 0.080334, 0.167883,
		43.166801, 39.971680, 27.029295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707821, 40.578781, 26.838295>,  <42.479031, 39.915443, 26.911776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707821, 40.578781, 26.838295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036846, 40.364540, 26.761866>,  <43.234261, 40.235996, 26.716007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036846, 40.364540, 26.761866>,  <42.707821, 40.578781, 26.838295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036846, 40.364540, 26.761866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072935, 0.432592, -0.898635,
		0.563970, 0.725252, 0.394901,
		0.822568, -0.535605, -0.191073,
		43.283615, 40.203857, 26.704544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391071, 40.996185, 26.565901>,  <42.707821, 40.578781, 26.838295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391071, 40.996185, 26.565901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.426437, 40.621063, 26.431612>,  <43.447659, 40.395992, 26.351038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.426437, 40.621063, 26.431612>,  <43.391071, 40.996185, 26.565901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.426437, 40.621063, 26.431612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419143, 0.340780, -0.841539,
		0.903604, -0.066308, 0.423205,
		0.088419, -0.937802, -0.335722,
		43.452965, 40.339722, 26.330894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084766, 40.904003, 26.337780>,  <43.391071, 40.996185, 26.565901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084766, 40.904003, 26.337780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890743, 40.622795, 26.129751>,  <43.774330, 40.454071, 26.004934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890743, 40.622795, 26.129751>,  <44.084766, 40.904003, 26.337780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890743, 40.622795, 26.129751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595768, 0.169680, -0.785028,
		0.640137, -0.690630, 0.336532,
		-0.485061, -0.703021, -0.520073,
		43.745224, 40.411888, 25.973728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631493, 40.689579, 26.021002>,  <44.084766, 40.904003, 26.337780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631493, 40.689579, 26.021002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333431, 40.544250, 25.797308>,  <44.154594, 40.457054, 25.663092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333431, 40.544250, 25.797308>,  <44.631493, 40.689579, 26.021002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333431, 40.544250, 25.797308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587442, 0.039355, -0.808309,
		0.315686, -0.930832, 0.184106,
		-0.745154, -0.363324, -0.559233,
		44.109886, 40.435253, 25.629538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875618, 40.111500, 25.571871>,  <44.631493, 40.689579, 26.021002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875618, 40.111500, 25.571871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553112, 40.314243, 25.449863>,  <44.359608, 40.435890, 25.376659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553112, 40.314243, 25.449863>,  <44.875618, 40.111500, 25.571871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553112, 40.314243, 25.449863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450869, 0.192722, -0.871536,
		-0.382965, -0.840208, -0.383912,
		-0.806260, 0.506862, -0.305018,
		44.311234, 40.466301, 25.358358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707737, 40.014194, 24.880939>,  <44.875618, 40.111500, 25.571871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707737, 40.014194, 24.880939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549377, 40.374557, 24.952072>,  <44.454361, 40.590775, 24.994751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549377, 40.374557, 24.952072>,  <44.707737, 40.014194, 24.880939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549377, 40.374557, 24.952072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397836, 0.342806, -0.851006,
		-0.827642, -0.266163, -0.494131,
		-0.395897, 0.900911, 0.177832,
		44.430607, 40.644833, 25.005423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531994, 39.188210, 24.837086>,  <44.707737, 40.014194, 24.880939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531994, 39.188210, 24.837086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552883, 38.930386, 24.531981>,  <44.565418, 38.775692, 24.348917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552883, 38.930386, 24.531981>,  <44.531994, 39.188210, 24.837086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552883, 38.930386, 24.531981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648341, 0.602832, -0.465023,
		0.759556, -0.470246, 0.449380,
		0.052225, -0.644563, -0.762765,
		44.568550, 38.737015, 24.303150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230724, 39.027233, 25.112066>,  <44.531994, 39.188210, 24.837086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230724, 39.027233, 25.112066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.518139, 39.272736, 25.242920>,  <45.690586, 39.420036, 25.321432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.518139, 39.272736, 25.242920>,  <45.230724, 39.027233, 25.112066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.518139, 39.272736, 25.242920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072006, -0.533481, 0.842742,
		0.691756, -0.581981, -0.427517,
		0.718532, 0.613756, 0.327132,
		45.733700, 39.456863, 25.341059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.867306, 38.607510, 25.322073>,  <45.230724, 39.027233, 25.112066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.867306, 38.607510, 25.322073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.827923, 38.945282, 25.532686>,  <45.804291, 39.147945, 25.659054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.827923, 38.945282, 25.532686>,  <45.867306, 38.607510, 25.322073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.827923, 38.945282, 25.532686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027248, -0.526619, 0.849665,
		0.994768, 0.098006, 0.028842,
		-0.098461, 0.844433, 0.526534,
		45.798386, 39.198612, 25.690647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.449593, 38.800587, 25.796299>,  <45.867306, 38.607510, 25.322073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.449593, 38.800587, 25.796299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.102524, 38.950920, 25.926466>,  <45.894283, 39.041119, 26.004566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.102524, 38.950920, 25.926466>,  <46.449593, 38.800587, 25.796299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.102524, 38.950920, 25.926466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091278, -0.523018, 0.847420,
		0.488688, 0.764985, 0.419502,
		-0.867671, 0.375832, 0.325419,
		45.842224, 39.063671, 26.024092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.528637, 39.191814, 26.402321>,  <46.449593, 38.800587, 25.796299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.528637, 39.191814, 26.402321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.156784, 39.044891, 26.390543>,  <45.933674, 38.956738, 26.383476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.156784, 39.044891, 26.390543>,  <46.528637, 39.191814, 26.402321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.156784, 39.044891, 26.390543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071556, -0.258336, 0.963401,
		-0.361472, 0.893503, 0.266441,
		-0.929633, -0.367308, -0.029446,
		45.877895, 38.934700, 26.381710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.203159, 39.379730, 27.076010>,  <46.528637, 39.191814, 26.402321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.203159, 39.379730, 27.076010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925224, 39.120739, 26.950808>,  <45.758465, 38.965343, 26.875687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925224, 39.120739, 26.950808>,  <46.203159, 39.379730, 27.076010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.925224, 39.120739, 26.950808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041032, -0.470213, 0.881598,
		-0.717999, 0.599721, 0.353288,
		-0.694834, -0.647483, -0.313005,
		45.716774, 38.926495, 26.856907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593536, 39.478329, 27.535330>,  <46.203159, 39.379730, 27.076010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593536, 39.478329, 27.535330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.610439, 39.109520, 27.381403>,  <45.620579, 38.888233, 27.289047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.610439, 39.109520, 27.381403>,  <45.593536, 39.478329, 27.535330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.610439, 39.109520, 27.381403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080983, -0.380731, 0.921133,
		-0.995820, -0.070086, 0.058581,
		0.042255, -0.922026, -0.384816,
		45.623116, 38.832912, 27.265959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201740, 39.083542, 27.986061>,  <45.593536, 39.478329, 27.535330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201740, 39.083542, 27.986061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.430584, 38.817471, 27.794132>,  <45.567890, 38.657829, 27.678974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.430584, 38.817471, 27.794132>,  <45.201740, 39.083542, 27.986061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.430584, 38.817471, 27.794132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195682, -0.457428, 0.867450,
		-0.796494, -0.590166, -0.131534,
		0.572107, -0.665179, -0.479823,
		45.602215, 38.617916, 27.650185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.979652, 38.563232, 28.312790>,  <45.201740, 39.083542, 27.986061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.979652, 38.563232, 28.312790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327732, 38.433537, 28.164402>,  <45.536579, 38.355721, 28.075369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327732, 38.433537, 28.164402>,  <44.979652, 38.563232, 28.312790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.327732, 38.433537, 28.164402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163527, -0.520184, 0.838253,
		-0.464762, -0.790114, -0.399646,
		0.870204, -0.324235, -0.370966,
		45.588791, 38.336266, 28.053112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.950588, 37.827908, 28.527025>,  <44.979652, 38.563232, 28.312790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.950588, 37.827908, 28.527025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.326401, 37.911343, 28.418375>,  <45.551888, 37.961403, 28.353186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.326401, 37.911343, 28.418375>,  <44.950588, 37.827908, 28.527025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.326401, 37.911343, 28.418375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339190, -0.457135, 0.822179,
		0.047328, -0.864591, -0.500242,
		0.939527, 0.208589, -0.271626,
		45.608257, 37.973919, 28.336887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.280022, 37.213570, 28.574970>,  <44.950588, 37.827908, 28.527025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.280022, 37.213570, 28.574970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.582333, 37.475094, 28.589529>,  <45.763721, 37.632008, 28.598265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.582333, 37.475094, 28.589529>,  <45.280022, 37.213570, 28.574970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.582333, 37.475094, 28.589529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430473, -0.537957, 0.724772,
		0.493446, -0.532100, -0.688027,
		0.755780, 0.653813, 0.036398,
		45.809067, 37.671238, 28.600449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919868, 36.850060, 28.761082>,  <45.280022, 37.213570, 28.574970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.919868, 36.850060, 28.761082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.961853, 37.226845, 28.888634>,  <45.987041, 37.452915, 28.965164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.961853, 37.226845, 28.888634>,  <45.919868, 36.850060, 28.761082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.961853, 37.226845, 28.888634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359805, -0.334896, 0.870853,
		0.927105, 0.023331, -0.374074,
		0.104958, 0.941966, 0.318878,
		45.993340, 37.509434, 28.984297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.513290, 36.822117, 29.163422>,  <45.919868, 36.850060, 28.761082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.513290, 36.822117, 29.163422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.337631, 37.165482, 29.269463>,  <46.232235, 37.371502, 29.333088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.337631, 37.165482, 29.269463>,  <46.513290, 36.822117, 29.163422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.337631, 37.165482, 29.269463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164557, -0.213234, 0.963043,
		0.883217, 0.466541, -0.047617,
		-0.439145, 0.858412, 0.265104,
		46.205887, 37.423004, 29.348993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.008373, 37.073612, 29.569736>,  <46.513290, 36.822117, 29.163422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.008373, 37.073612, 29.569736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.669052, 37.268867, 29.651810>,  <46.465458, 37.386021, 29.701054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.669052, 37.268867, 29.651810>,  <47.008373, 37.073612, 29.569736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.669052, 37.268867, 29.651810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223790, -0.020669, 0.974418,
		0.479888, 0.872523, -0.091706,
		-0.848307, 0.488135, 0.205181,
		46.414558, 37.415310, 29.713364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.199913, 37.528316, 30.075785>,  <47.008373, 37.073612, 29.569736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.199913, 37.528316, 30.075785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.804684, 37.483753, 30.118305>,  <46.567547, 37.457016, 30.143818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.804684, 37.483753, 30.118305>,  <47.199913, 37.528316, 30.075785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.804684, 37.483753, 30.118305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127114, -0.200492, 0.971414,
		-0.086909, 0.973340, 0.212262,
		-0.988073, -0.111406, 0.106301,
		46.508263, 37.450333, 30.150196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.160671, 37.890659, 30.685976>,  <47.199913, 37.528316, 30.075785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.160671, 37.890659, 30.685976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.824970, 37.681950, 30.624763>,  <46.623550, 37.556725, 30.588036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.824970, 37.681950, 30.624763>,  <47.160671, 37.890659, 30.685976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.824970, 37.681950, 30.624763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053408, -0.359178, 0.931740,
		-0.541120, 0.773787, 0.329307,
		-0.839248, -0.521770, -0.153032,
		46.573196, 37.525417, 30.578854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.818817, 38.132591, 31.300877>,  <47.160671, 37.890659, 30.685976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.818817, 38.132591, 31.300877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.656284, 37.801140, 31.146854>,  <46.558765, 37.602268, 31.054441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.656284, 37.801140, 31.146854>,  <46.818817, 38.132591, 31.300877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.656284, 37.801140, 31.146854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009700, -0.417480, 0.908634,
		-0.913673, 0.372943, 0.161599,
		-0.406333, -0.828628, -0.385058,
		46.534386, 37.552551, 31.031338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.127678, 38.059063, 31.575491>,  <46.818817, 38.132591, 31.300877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.127678, 38.059063, 31.575491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.208775, 37.682178, 31.468815>,  <46.257435, 37.456047, 31.404808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.208775, 37.682178, 31.468815>,  <46.127678, 38.059063, 31.575491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.208775, 37.682178, 31.468815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203883, -0.306997, 0.929615,
		-0.957772, -0.134099, -0.254343,
		0.202744, -0.942216, -0.266693,
		46.269596, 37.399513, 31.388807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.659374, 37.633362, 31.914566>,  <46.127678, 38.059063, 31.575491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.659374, 37.633362, 31.914566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.958988, 37.387951, 31.814543>,  <46.138756, 37.240704, 31.754528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.958988, 37.387951, 31.814543>,  <45.659374, 37.633362, 31.914566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.958988, 37.387951, 31.814543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068603, -0.447229, 0.891785,
		-0.658965, -0.650826, -0.377081,
		0.749039, -0.613524, -0.250060,
		46.183701, 37.203896, 31.739525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.461174, 36.966595, 32.144650>,  <45.659374, 37.633362, 31.914566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.461174, 36.966595, 32.144650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857170, 36.931099, 32.100750>,  <46.094769, 36.909801, 32.074409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857170, 36.931099, 32.100750>,  <45.461174, 36.966595, 32.144650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.857170, 36.931099, 32.100750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047801, -0.520862, 0.852301,
		-0.132794, -0.849016, -0.511407,
		0.989990, -0.088735, -0.109751,
		46.154167, 36.904480, 32.067825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655579, 36.247738, 32.413887>,  <45.461174, 36.966595, 32.144650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655579, 36.247738, 32.413887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.003189, 36.445621, 32.416969>,  <46.211754, 36.564350, 32.418819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.003189, 36.445621, 32.416969>,  <45.655579, 36.247738, 32.413887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.003189, 36.445621, 32.416969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276564, -0.498623, 0.821515,
		0.410253, -0.711786, -0.570134,
		0.869025, 0.494707, 0.007707,
		46.263897, 36.594032, 32.419281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.126770, 35.670036, 32.409225>,  <45.655579, 36.247738, 32.413887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.126770, 35.670036, 32.409225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343693, 35.991173, 32.508305>,  <46.473846, 36.183853, 32.567753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343693, 35.991173, 32.508305>,  <46.126770, 35.670036, 32.409225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.343693, 35.991173, 32.508305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533618, -0.556838, 0.636540,
		0.648968, -0.213022, -0.730385,
		0.542303, 0.802840, 0.247697,
		46.506382, 36.232025, 32.582615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.854340, 35.479759, 32.496269>,  <46.126770, 35.670036, 32.409225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.854340, 35.479759, 32.496269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807262, 35.803173, 32.726894>,  <46.779018, 35.997219, 32.865269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807262, 35.803173, 32.726894>,  <46.854340, 35.479759, 32.496269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.807262, 35.803173, 32.726894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343807, -0.511519, 0.787493,
		0.931636, 0.290906, -0.217779,
		-0.117688, 0.808531, 0.576565,
		46.771957, 36.045731, 32.899864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.437607, 35.624062, 32.933437>,  <46.854340, 35.479759, 32.496269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.437607, 35.624062, 32.933437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.143700, 35.787281, 33.150181>,  <46.967354, 35.885212, 33.280228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.143700, 35.787281, 33.150181>,  <47.437607, 35.624062, 32.933437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.143700, 35.787281, 33.150181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373420, -0.423548, 0.825327,
		0.566277, 0.808765, 0.158835,
		-0.734770, 0.408052, 0.541855,
		46.923267, 35.909698, 33.312737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.709461, 35.891209, 33.575779>,  <47.437607, 35.624062, 32.933437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.709461, 35.891209, 33.575779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.331089, 35.887745, 33.705482>,  <47.104065, 35.885666, 33.783306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.331089, 35.887745, 33.705482>,  <47.709461, 35.891209, 33.575779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.331089, 35.887745, 33.705482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292196, -0.456857, 0.840180,
		0.140865, 0.889498, 0.434684,
		-0.945927, -0.008661, 0.324263,
		47.047310, 35.885147, 33.802761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.471729, 36.421127, 34.113480>,  <47.709461, 35.891209, 33.575779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.471729, 36.421127, 34.113480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.297432, 36.063095, 34.151325>,  <47.192852, 35.848274, 34.174030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.297432, 36.063095, 34.151325>,  <47.471729, 36.421127, 34.113480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.297432, 36.063095, 34.151325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642285, -0.235584, 0.729363,
		-0.630552, 0.378584, 0.677553,
		-0.435746, -0.895083, 0.094611,
		47.166710, 35.794571, 34.179707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.374943, 36.154892, 34.919411>,  <47.471729, 36.421127, 34.113480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.374943, 36.154892, 34.919411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451397, 35.859386, 34.660892>,  <47.497269, 35.682083, 34.505783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451397, 35.859386, 34.660892>,  <47.374943, 36.154892, 34.919411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.451397, 35.859386, 34.660892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691653, -0.365828, 0.622724,
		-0.696479, -0.566035, 0.441046,
		0.191137, -0.738765, -0.646291,
		47.508739, 35.637756, 34.467007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.378082, 35.607124, 35.265793>,  <47.374943, 36.154892, 34.919411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.378082, 35.607124, 35.265793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.595867, 35.529629, 34.939350>,  <47.726540, 35.483131, 34.743484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.595867, 35.529629, 34.939350>,  <47.378082, 35.607124, 35.265793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.595867, 35.529629, 34.939350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708515, -0.414550, 0.571099,
		-0.448960, -0.889164, -0.088439,
		0.544463, -0.193740, -0.816103,
		47.759205, 35.471508, 34.694519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.467857, 34.926083, 35.415916>,  <47.378082, 35.607124, 35.265793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.467857, 34.926083, 35.415916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.743618, 35.111050, 35.192886>,  <47.909077, 35.222031, 35.059067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.743618, 35.111050, 35.192886>,  <47.467857, 34.926083, 35.415916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.743618, 35.111050, 35.192886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703724, -0.245055, 0.666874,
		0.171735, -0.852127, -0.494355,
		0.689405, 0.462415, -0.557578,
		47.950439, 35.249775, 35.025612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.220821, 33.621246, 43.795662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.945271, 33.382484, 43.631149>,  <33.779942, 33.239227, 43.532440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.945271, 33.382484, 43.631149>,  <34.220821, 33.621246, 43.795662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945271, 33.382484, 43.631149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422412, 0.130533, -0.896955,
		0.589084, -0.791621, 0.162220,
		-0.688874, -0.596906, -0.411285,
		33.738609, 33.203411, 43.507763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653679, 33.275249, 43.193069>,  <34.220821, 33.621246, 43.795662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653679, 33.275249, 43.193069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.262211, 33.244514, 43.116856>,  <34.027328, 33.226074, 43.071129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.262211, 33.244514, 43.116856>,  <34.653679, 33.275249, 43.193069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262211, 33.244514, 43.116856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179747, 0.128881, -0.975234,
		0.099483, -0.988679, -0.112322,
		-0.978670, -0.076830, -0.190534,
		33.968609, 33.221462, 43.059696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512684, 32.673916, 42.666790>,  <34.653679, 33.275249, 43.193069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512684, 32.673916, 42.666790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.195534, 32.916351, 42.641476>,  <34.005245, 33.061813, 42.626286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.195534, 32.916351, 42.641476>,  <34.512684, 32.673916, 42.666790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195534, 32.916351, 42.641476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030550, -0.064193, -0.997470,
		-0.608616, -0.792804, 0.032381,
		-0.792876, 0.606087, -0.063289,
		33.957672, 33.098179, 42.622490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066807, 32.482418, 42.042458>,  <34.512684, 32.673916, 42.666790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066807, 32.482418, 42.042458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.956608, 32.853542, 42.143078>,  <33.890488, 33.076218, 42.203449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.956608, 32.853542, 42.143078>,  <34.066807, 32.482418, 42.042458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956608, 32.853542, 42.143078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109499, 0.229683, -0.967086,
		-0.955046, -0.293972, 0.038317,
		-0.275496, 0.927807, 0.251548,
		33.873959, 33.131886, 42.218544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523544, 32.725975, 41.603691>,  <34.066807, 32.482418, 42.042458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523544, 32.725975, 41.603691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.690697, 33.077770, 41.694798>,  <33.790989, 33.288849, 41.749462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.690697, 33.077770, 41.694798>,  <33.523544, 32.725975, 41.603691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690697, 33.077770, 41.694798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086916, 0.288256, -0.953601,
		-0.904337, 0.378691, 0.196897,
		0.417876, 0.879490, 0.227766,
		33.816059, 33.341618, 41.763126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148502, 33.162460, 41.171261>,  <33.523544, 32.725975, 41.603691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148502, 33.162460, 41.171261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.458115, 33.383080, 41.295635>,  <33.643883, 33.515450, 41.370258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.458115, 33.383080, 41.295635>,  <33.148502, 33.162460, 41.171261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458115, 33.383080, 41.295635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121128, 0.353026, -0.927740,
		-0.621456, 0.755759, 0.206445,
		0.774028, 0.551543, 0.310934,
		33.690323, 33.548542, 41.388916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986034, 33.940231, 40.886333>,  <33.148502, 33.162460, 41.171261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986034, 33.940231, 40.886333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.378887, 33.916248, 40.957684>,  <33.614601, 33.901859, 41.000492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.378887, 33.916248, 40.957684>,  <32.986034, 33.940231, 40.886333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378887, 33.916248, 40.957684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177701, 0.607388, -0.774275,
		-0.061921, 0.792140, 0.607190,
		0.982134, -0.059955, 0.178374,
		33.673527, 33.898262, 41.011196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317890, 34.642063, 40.671558>,  <32.986034, 33.940231, 40.886333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317890, 34.642063, 40.671558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.634090, 34.397179, 40.678520>,  <33.823811, 34.250248, 40.682697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.634090, 34.397179, 40.678520>,  <33.317890, 34.642063, 40.671558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634090, 34.397179, 40.678520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450141, 0.561486, -0.694339,
		0.415311, 0.556710, 0.719437,
		0.790500, -0.612215, 0.017407,
		33.871239, 34.213512, 40.683743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944717, 35.058506, 40.436714>,  <33.317890, 34.642063, 40.671558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944717, 35.058506, 40.436714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.024731, 34.667789, 40.406067>,  <34.072739, 34.433361, 40.387680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.024731, 34.667789, 40.406067>,  <33.944717, 35.058506, 40.436714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024731, 34.667789, 40.406067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492106, 0.167781, -0.854214,
		0.847241, 0.133169, 0.514246,
		0.200036, -0.976788, -0.076618,
		34.084740, 34.374752, 40.383083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692745, 35.112568, 40.287647>,  <33.944717, 35.058506, 40.436714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692745, 35.112568, 40.287647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.564934, 34.752300, 40.169872>,  <34.488247, 34.536140, 40.099205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.564934, 34.752300, 40.169872>,  <34.692745, 35.112568, 40.287647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564934, 34.752300, 40.169872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580049, 0.059796, -0.812384,
		0.749297, -0.430368, 0.503326,
		-0.319527, -0.900671, -0.294439,
		34.469074, 34.482098, 40.081539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198116, 34.572567, 40.305645>,  <34.692745, 35.112568, 40.287647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198116, 34.572567, 40.305645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.961304, 34.425285, 40.018890>,  <34.819218, 34.336918, 39.846836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.961304, 34.425285, 40.018890>,  <35.198116, 34.572567, 40.305645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961304, 34.425285, 40.018890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697585, 0.211321, -0.684630,
		0.403577, -0.905411, 0.131746,
		-0.592031, -0.368205, -0.716886,
		34.783695, 34.314823, 39.803825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675697, 34.211979, 39.862503>,  <35.198116, 34.572567, 40.305645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675697, 34.211979, 39.862503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.354279, 34.219959, 39.624538>,  <35.161427, 34.224747, 39.481762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.354279, 34.219959, 39.624538>,  <35.675697, 34.211979, 39.862503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354279, 34.219959, 39.624538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595166, 0.010695, -0.803532,
		-0.009681, -0.999743, -0.020478,
		-0.803545, 0.019967, -0.594909,
		35.113216, 34.225945, 39.446064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717262, 33.563606, 39.368515>,  <35.675697, 34.211979, 39.862503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717262, 33.563606, 39.368515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.469196, 33.836926, 39.214375>,  <35.320354, 34.000916, 39.121891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.469196, 33.836926, 39.214375>,  <35.717262, 33.563606, 39.368515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469196, 33.836926, 39.214375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571753, 0.057379, -0.818417,
		-0.537112, -0.727882, -0.426262,
		-0.620169, 0.683298, -0.385350,
		35.283146, 34.041916, 39.098770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640633, 33.368416, 38.628723>,  <35.717262, 33.563606, 39.368515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640633, 33.368416, 38.628723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.525822, 33.751038, 38.649223>,  <35.456936, 33.980610, 38.661526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.525822, 33.751038, 38.649223>,  <35.640633, 33.368416, 38.628723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525822, 33.751038, 38.649223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603638, 0.222154, -0.765681,
		-0.743800, -0.188829, -0.641175,
		-0.287023, 0.956552, 0.051254,
		35.439716, 34.038002, 38.664600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380367, 33.544006, 37.976479>,  <35.640633, 33.368416, 38.628723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380367, 33.544006, 37.976479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.477264, 33.888462, 38.155254>,  <35.535404, 34.095135, 38.262520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.477264, 33.888462, 38.155254>,  <35.380367, 33.544006, 37.976479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477264, 33.888462, 38.155254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490466, 0.288767, -0.822226,
		-0.837114, 0.418388, -0.352408,
		0.242246, 0.861142, 0.446936,
		35.549938, 34.146805, 38.289337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273075, 34.102409, 37.496040>,  <35.380367, 33.544006, 37.976479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273075, 34.102409, 37.496040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.504856, 34.282745, 37.767624>,  <35.643925, 34.390945, 37.930573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.504856, 34.282745, 37.767624>,  <35.273075, 34.102409, 37.496040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504856, 34.282745, 37.767624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432721, 0.535762, -0.725060,
		-0.690645, 0.713934, 0.115359,
		0.579451, 0.450841, 0.678955,
		35.678692, 34.417999, 37.971310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263260, 34.738960, 37.289391>,  <35.273075, 34.102409, 37.496040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263260, 34.738960, 37.289391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.596428, 34.721466, 37.510056>,  <35.796329, 34.710968, 37.642452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.596428, 34.721466, 37.510056>,  <35.263260, 34.738960, 37.289391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596428, 34.721466, 37.510056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491623, 0.516151, -0.701352,
		-0.254062, 0.855380, 0.451417,
		0.832922, -0.043740, 0.551659,
		35.846306, 34.708344, 37.675552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550571, 35.401226, 37.171909>,  <35.263260, 34.738960, 37.289391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550571, 35.401226, 37.171909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.858387, 35.191925, 37.318344>,  <36.043076, 35.066345, 37.406204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.858387, 35.191925, 37.318344>,  <35.550571, 35.401226, 37.171909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858387, 35.191925, 37.318344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606218, 0.418328, -0.676388,
		0.200774, 0.742437, 0.639122,
		0.769539, -0.523249, 0.366089,
		36.089249, 35.034950, 37.428169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012669, 35.809658, 37.474655>,  <35.550571, 35.401226, 37.171909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012669, 35.809658, 37.474655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249638, 35.500793, 37.382744>,  <36.391819, 35.315475, 37.327599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249638, 35.500793, 37.382744>,  <36.012669, 35.809658, 37.474655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249638, 35.500793, 37.382744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610371, 0.616352, -0.497552,
		0.525815, 0.154511, 0.836447,
		0.592423, -0.772164, -0.229778,
		36.427364, 35.269146, 37.313812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654655, 36.138084, 37.506042>,  <36.012669, 35.809658, 37.474655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654655, 36.138084, 37.506042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.715916, 35.800610, 37.300232>,  <36.752670, 35.598125, 37.176746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.715916, 35.800610, 37.300232>,  <36.654655, 36.138084, 37.506042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715916, 35.800610, 37.300232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624121, 0.486264, -0.611572,
		0.766171, -0.227463, 0.601035,
		0.153152, -0.843687, -0.514526,
		36.761860, 35.547504, 37.145874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291229, 36.104008, 37.418930>,  <36.654655, 36.138084, 37.506042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291229, 36.104008, 37.418930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165958, 35.873859, 37.116707>,  <37.090794, 35.735771, 36.935371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165958, 35.873859, 37.116707>,  <37.291229, 36.104008, 37.418930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165958, 35.873859, 37.116707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502216, 0.574899, -0.645964,
		0.806038, -0.581756, 0.108914,
		-0.313179, -0.575370, -0.755558,
		37.072006, 35.701248, 36.890038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866169, 35.796993, 36.978954>,  <37.291229, 36.104008, 37.418930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866169, 35.796993, 36.978954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.535946, 35.846577, 36.758739>,  <37.337811, 35.876328, 36.626610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.535946, 35.846577, 36.758739>,  <37.866169, 35.796993, 36.978954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535946, 35.846577, 36.758739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470028, 0.690933, -0.549259,
		0.312296, -0.712212, -0.628670,
		-0.825557, 0.123961, -0.550535,
		37.288280, 35.883766, 36.593578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675533, 35.698437, 36.749306>,  <37.866169, 35.796993, 36.978954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675533, 35.698437, 36.749306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.994698, 35.720448, 36.989410>,  <39.186195, 35.733654, 37.133472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.994698, 35.720448, 36.989410>,  <38.675533, 35.698437, 36.749306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994698, 35.720448, 36.989410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561754, -0.293206, 0.773604,
		0.218573, -0.954464, -0.203037,
		0.797909, 0.055032, 0.600261,
		39.234070, 35.736958, 37.169487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730042, 35.102104, 37.188408>,  <38.675533, 35.698437, 36.749306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730042, 35.102104, 37.188408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.952175, 35.382042, 37.368107>,  <39.085457, 35.550007, 37.475925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.952175, 35.382042, 37.368107>,  <38.730042, 35.102104, 37.188408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952175, 35.382042, 37.368107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451990, -0.199450, 0.869439,
		0.698076, -0.685882, 0.205562,
		0.555333, 0.699847, 0.449244,
		39.118774, 35.591995, 37.502880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102814, 34.798496, 37.678730>,  <38.730042, 35.102104, 37.188408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102814, 34.798496, 37.678730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.115314, 35.183121, 37.787857>,  <39.122814, 35.413895, 37.853333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.115314, 35.183121, 37.787857>,  <39.102814, 34.798496, 37.678730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115314, 35.183121, 37.787857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258424, -0.255898, 0.931522,
		0.965526, -0.099618, 0.240491,
		0.031255, 0.961557, 0.272820,
		39.124691, 35.471588, 37.869701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476540, 34.811970, 38.344105>,  <39.102814, 34.798496, 37.678730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476540, 34.811970, 38.344105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.245888, 35.137691, 38.317562>,  <39.107494, 35.333126, 38.301636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.245888, 35.137691, 38.317562>,  <39.476540, 34.811970, 38.344105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245888, 35.137691, 38.317562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249972, -0.098518, 0.963228,
		0.777824, 0.572015, 0.260362,
		-0.576631, 0.814305, -0.066358,
		39.072899, 35.381985, 38.297653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502048, 35.166668, 39.007214>,  <39.476540, 34.811970, 38.344105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502048, 35.166668, 39.007214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.172993, 35.303997, 38.825935>,  <38.975559, 35.386395, 38.717167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.172993, 35.303997, 38.825935>,  <39.502048, 35.166668, 39.007214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172993, 35.303997, 38.825935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497393, -0.048428, 0.866173,
		0.275431, 0.937967, 0.210606,
		-0.822641, 0.343325, -0.453200,
		38.926201, 35.406994, 38.689976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251812, 35.605354, 39.553654>,  <39.502048, 35.166668, 39.007214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251812, 35.605354, 39.553654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.929173, 35.582615, 39.318310>,  <38.735588, 35.568970, 39.177105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.929173, 35.582615, 39.318310>,  <39.251812, 35.605354, 39.553654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929173, 35.582615, 39.318310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562375, -0.232703, 0.793463,
		-0.182021, 0.970885, 0.155727,
		-0.806600, -0.056850, -0.588358,
		38.687191, 35.565559, 39.141804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770935, 35.986355, 39.840569>,  <39.251812, 35.605354, 39.553654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770935, 35.986355, 39.840569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.574375, 35.729996, 39.604679>,  <38.456440, 35.576180, 39.463146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.574375, 35.729996, 39.604679>,  <38.770935, 35.986355, 39.840569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574375, 35.729996, 39.604679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642584, -0.190265, 0.742216,
		-0.587892, 0.743669, -0.318338,
		-0.491395, -0.640902, -0.589725,
		38.426956, 35.537724, 39.427761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039467, 36.180336, 39.857121>,  <38.770935, 35.986355, 39.840569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039467, 36.180336, 39.857121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079472, 35.793739, 39.762558>,  <38.103474, 35.561783, 39.705818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079472, 35.793739, 39.762558>,  <38.039467, 36.180336, 39.857121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079472, 35.793739, 39.762558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558181, -0.251191, 0.790783,
		-0.823670, 0.052870, -0.564600,
		0.100013, -0.966493, -0.236409,
		38.109474, 35.503792, 39.691635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442532, 35.911545, 39.919853>,  <38.039467, 36.180336, 39.857121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442532, 35.911545, 39.919853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.626808, 35.557056, 39.900360>,  <37.737373, 35.344364, 39.888664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.626808, 35.557056, 39.900360>,  <37.442532, 35.911545, 39.919853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626808, 35.557056, 39.900360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621699, -0.361399, 0.694896,
		-0.633443, -0.289837, -0.717456,
		0.460695, -0.886219, -0.048735,
		37.765018, 35.291191, 39.885738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917152, 35.474937, 39.960510>,  <37.442532, 35.911545, 39.919853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917152, 35.474937, 39.960510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.239227, 35.267265, 40.075138>,  <37.432472, 35.142662, 40.143913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.239227, 35.267265, 40.075138>,  <36.917152, 35.474937, 39.960510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239227, 35.267265, 40.075138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554568, -0.488050, 0.673989,
		-0.210061, -0.701611, -0.680893,
		0.805189, -0.519181, 0.286571,
		37.480785, 35.111511, 40.161110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712173, 34.826759, 39.976589>,  <36.917152, 35.474937, 39.960510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712173, 34.826759, 39.976589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.020794, 34.818447, 40.230923>,  <37.205967, 34.813461, 40.383522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.020794, 34.818447, 40.230923>,  <36.712173, 34.826759, 39.976589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020794, 34.818447, 40.230923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554537, -0.511790, 0.656171,
		0.311777, -0.858859, -0.406394,
		0.771547, -0.020782, 0.635833,
		37.252258, 34.812214, 40.421673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666145, 34.122517, 40.356926>,  <36.712173, 34.826759, 39.976589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666145, 34.122517, 40.356926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.892433, 34.362110, 40.583614>,  <37.028206, 34.505867, 40.719627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.892433, 34.362110, 40.583614>,  <36.666145, 34.122517, 40.356926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892433, 34.362110, 40.583614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423682, -0.378476, 0.822952,
		0.707429, -0.705671, 0.039668,
		0.565720, 0.598987, 0.566725,
		37.062149, 34.541805, 40.753632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959896, 33.713402, 40.906551>,  <36.666145, 34.122517, 40.356926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959896, 33.713402, 40.906551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968288, 34.089027, 41.043793>,  <36.973324, 34.314404, 41.126137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968288, 34.089027, 41.043793>,  <36.959896, 33.713402, 40.906551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968288, 34.089027, 41.043793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335343, -0.316687, 0.887274,
		0.941862, -0.133673, 0.308264,
		0.020982, 0.939064, 0.343102,
		36.974583, 34.370747, 41.146725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443298, 33.726818, 41.495533>,  <36.959896, 33.713402, 40.906551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443298, 33.726818, 41.495533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.193871, 34.035042, 41.548294>,  <37.044212, 34.219978, 41.579952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.193871, 34.035042, 41.548294>,  <37.443298, 33.726818, 41.495533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193871, 34.035042, 41.548294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057719, -0.213643, 0.975205,
		0.779636, 0.600493, 0.177697,
		-0.623568, 0.770561, 0.131903,
		37.006802, 34.266209, 41.587864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575638, 33.935875, 42.160225>,  <37.443298, 33.726818, 41.495533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575638, 33.935875, 42.160225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246361, 34.155029, 42.100662>,  <37.048794, 34.286522, 42.064922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246361, 34.155029, 42.100662>,  <37.575638, 33.935875, 42.160225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246361, 34.155029, 42.100662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255699, -0.123586, 0.958825,
		0.506926, 0.827372, 0.241829,
		-0.823191, 0.547889, -0.148909,
		36.999405, 34.319397, 42.055988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588985, 34.456234, 42.747551>,  <37.575638, 33.935875, 42.160225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588985, 34.456234, 42.747551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.222103, 34.478313, 42.589722>,  <37.001972, 34.491562, 42.495026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.222103, 34.478313, 42.589722>,  <37.588985, 34.456234, 42.747551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222103, 34.478313, 42.589722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392957, 0.037977, 0.918772,
		0.065704, 0.997753, -0.013140,
		-0.917207, 0.055203, -0.394569,
		36.946941, 34.494873, 42.471352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316952, 35.086376, 42.926617>,  <37.588985, 34.456234, 42.747551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316952, 35.086376, 42.926617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.038467, 34.806904, 42.860725>,  <36.871376, 34.639221, 42.821190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.038467, 34.806904, 42.860725>,  <37.316952, 35.086376, 42.926617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038467, 34.806904, 42.860725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332674, 0.110696, 0.936522,
		-0.636100, 0.706813, -0.309502,
		-0.696207, -0.698686, -0.164725,
		36.829605, 34.597298, 42.811310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888748, 35.163799, 43.493969>,  <37.316952, 35.086376, 42.926617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888748, 35.163799, 43.493969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.738239, 34.822681, 43.349106>,  <36.647934, 34.618011, 43.262188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.738239, 34.822681, 43.349106>,  <36.888748, 35.163799, 43.493969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738239, 34.822681, 43.349106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320829, -0.246769, 0.914425,
		-0.869187, 0.460265, -0.180749,
		-0.376275, -0.852796, -0.362155,
		36.625359, 34.566841, 43.240459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.576305, 35.016212, 43.531605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.806137, 34.693493, 43.476559>,  <35.944035, 34.499863, 43.443531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.806137, 34.693493, 43.476559>,  <35.576305, 35.016212, 43.531605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806137, 34.693493, 43.476559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412189, -0.430517, 0.802967,
		-0.707077, -0.404644, -0.579919,
		0.574580, -0.806795, -0.137619,
		35.978512, 34.451454, 43.435272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106804, 34.525341, 43.582939>,  <35.576305, 35.016212, 43.531605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106804, 34.525341, 43.582939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.470245, 34.367062, 43.636391>,  <35.688313, 34.272095, 43.668461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.470245, 34.367062, 43.636391>,  <35.106804, 34.525341, 43.582939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470245, 34.367062, 43.636391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324230, -0.466614, 0.822889,
		-0.263264, -0.791008, -0.552266,
		0.908607, -0.395698, 0.133626,
		35.742828, 34.248352, 43.676479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976746, 33.818886, 43.688141>,  <35.106804, 34.525341, 43.582939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976746, 33.818886, 43.688141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322773, 33.915726, 43.863892>,  <35.530388, 33.973827, 43.969341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322773, 33.915726, 43.863892>,  <34.976746, 33.818886, 43.688141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322773, 33.915726, 43.863892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306377, -0.438562, 0.844865,
		0.397230, -0.865479, -0.305213,
		0.865067, 0.242096, 0.439372,
		35.582294, 33.988354, 43.995705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205696, 33.201149, 44.009743>,  <34.976746, 33.818886, 43.688141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205696, 33.201149, 44.009743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.445850, 33.445103, 44.216656>,  <35.589943, 33.591473, 44.340805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.445850, 33.445103, 44.216656>,  <35.205696, 33.201149, 44.009743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445850, 33.445103, 44.216656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091396, -0.694927, 0.713249,
		0.794471, -0.380946, -0.472964,
		0.600385, 0.609883, 0.517282,
		35.625965, 33.628067, 44.371841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923412, 32.941994, 44.173203>,  <35.205696, 33.201149, 44.009743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923412, 32.941994, 44.173203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839939, 33.209835, 44.458324>,  <35.789856, 33.370541, 44.629398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839939, 33.209835, 44.458324>,  <35.923412, 32.941994, 44.173203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839939, 33.209835, 44.458324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059713, -0.718763, 0.692686,
		0.976159, 0.187114, 0.110009,
		-0.208681, 0.669603, 0.712801,
		35.777336, 33.410717, 44.672165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310421, 32.712898, 44.720390>,  <35.923412, 32.941994, 44.173203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310421, 32.712898, 44.720390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.038822, 32.925240, 44.923237>,  <35.875862, 33.052643, 45.044945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.038822, 32.925240, 44.923237>,  <36.310421, 32.712898, 44.720390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038822, 32.925240, 44.923237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061409, -0.647267, 0.759786,
		0.731569, 0.547033, 0.406893,
		-0.678996, 0.530849, 0.507113,
		35.835125, 33.084496, 45.075371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435234, 32.506218, 45.363789>,  <36.310421, 32.712898, 44.720390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435234, 32.506218, 45.363789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079144, 32.685131, 45.398258>,  <35.865490, 32.792480, 45.418938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079144, 32.685131, 45.398258>,  <36.435234, 32.506218, 45.363789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079144, 32.685131, 45.398258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197540, -0.549554, 0.811769,
		0.410448, 0.705639, 0.577586,
		-0.890230, 0.447286, 0.086172,
		35.812073, 32.819317, 45.424110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392365, 32.544445, 46.095345>,  <36.435234, 32.506218, 45.363789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392365, 32.544445, 46.095345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.011696, 32.609142, 45.990921>,  <35.783295, 32.647961, 45.928268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.011696, 32.609142, 45.990921>,  <36.392365, 32.544445, 46.095345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011696, 32.609142, 45.990921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302289, -0.643284, 0.703425,
		-0.054163, 0.748348, 0.661091,
		-0.951676, 0.161741, -0.261060,
		35.726192, 32.657665, 45.912601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045670, 32.741226, 46.682739>,  <36.392365, 32.544445, 46.095345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045670, 32.741226, 46.682739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768784, 32.593861, 46.434509>,  <35.602654, 32.505440, 46.285572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768784, 32.593861, 46.434509>,  <36.045670, 32.741226, 46.682739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768784, 32.593861, 46.434509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367177, -0.560490, 0.742315,
		-0.621307, 0.741700, 0.252704,
		-0.692213, -0.368418, -0.620571,
		35.561119, 32.483334, 46.248337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439743, 32.894417, 47.021519>,  <36.045670, 32.741226, 46.682739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439743, 32.894417, 47.021519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.349674, 32.595486, 46.771465>,  <35.295631, 32.416126, 46.621433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.349674, 32.595486, 46.771465>,  <35.439743, 32.894417, 47.021519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349674, 32.595486, 46.771465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511998, -0.455122, 0.728507,
		-0.828949, 0.484107, -0.280151,
		-0.225172, -0.747331, -0.625135,
		35.282124, 32.371284, 46.583923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742722, 32.822441, 47.042042>,  <35.439743, 32.894417, 47.021519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742722, 32.822441, 47.042042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.855888, 32.454937, 46.931889>,  <34.923790, 32.234436, 46.865795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.855888, 32.454937, 46.931889>,  <34.742722, 32.822441, 47.042042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855888, 32.454937, 46.931889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339393, -0.364434, 0.867180,
		-0.897090, -0.151876, -0.414925,
		0.282916, -0.918761, -0.275385,
		34.940762, 32.179310, 46.849274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146168, 32.309822, 47.241302>,  <34.742722, 32.822441, 47.042042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146168, 32.309822, 47.241302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.478497, 32.091049, 47.200111>,  <34.677895, 31.959785, 47.175396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.478497, 32.091049, 47.200111>,  <34.146168, 32.309822, 47.241302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478497, 32.091049, 47.200111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308443, -0.606522, 0.732799,
		-0.463250, -0.577060, -0.672608,
		0.830820, -0.546930, -0.102981,
		34.727741, 31.926970, 47.169216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060234, 31.612055, 47.362892>,  <34.146168, 32.309822, 47.241302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060234, 31.612055, 47.362892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.458374, 31.602886, 47.400318>,  <34.697258, 31.597385, 47.422771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.458374, 31.602886, 47.400318>,  <34.060234, 31.612055, 47.362892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458374, 31.602886, 47.400318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084734, -0.670323, 0.737216,
		0.045818, -0.741715, -0.669148,
		0.995349, -0.022922, 0.093561,
		34.756977, 31.596010, 47.428387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164673, 30.978678, 47.525703>,  <34.060234, 31.612055, 47.362892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164673, 30.978678, 47.525703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.526535, 31.122915, 47.616535>,  <34.743652, 31.209457, 47.671032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.526535, 31.122915, 47.616535>,  <34.164673, 30.978678, 47.525703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526535, 31.122915, 47.616535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037152, -0.597581, 0.800947,
		0.424515, -0.716147, -0.554004,
		0.904658, 0.360596, 0.227076,
		34.797932, 31.231094, 47.684658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486031, 30.452885, 47.550499>,  <34.164673, 30.978678, 47.525703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486031, 30.452885, 47.550499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.695450, 30.706184, 47.778496>,  <34.821102, 30.858164, 47.915295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.695450, 30.706184, 47.778496>,  <34.486031, 30.452885, 47.550499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695450, 30.706184, 47.778496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048096, -0.645976, 0.761841,
		0.850635, -0.426277, -0.307745,
		0.523551, 0.633247, 0.569993,
		34.852516, 30.896158, 47.949493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970833, 30.056599, 47.834038>,  <34.486031, 30.452885, 47.550499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970833, 30.056599, 47.834038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.913670, 30.377308, 48.066154>,  <34.879372, 30.569733, 48.205425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.913670, 30.377308, 48.066154>,  <34.970833, 30.056599, 47.834038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913670, 30.377308, 48.066154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151393, -0.561704, 0.813369,
		0.978089, 0.204087, -0.041112,
		-0.142905, 0.801771, 0.580294,
		34.870800, 30.617840, 48.240242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608654, 30.183971, 48.252754>,  <34.970833, 30.056599, 47.834038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608654, 30.183971, 48.252754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.326630, 30.392496, 48.445053>,  <35.157413, 30.517611, 48.560432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.326630, 30.392496, 48.445053>,  <35.608654, 30.183971, 48.252754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326630, 30.392496, 48.445053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111582, -0.587924, 0.801183,
		0.700309, 0.618529, 0.356356,
		-0.705065, 0.521313, 0.480745,
		35.115108, 30.548889, 48.589275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867893, 30.008646, 48.914986>,  <35.608654, 30.183971, 48.252754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867893, 30.008646, 48.914986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504623, 30.163458, 48.978771>,  <35.286663, 30.256344, 49.017044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504623, 30.163458, 48.978771>,  <35.867893, 30.008646, 48.914986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504623, 30.163458, 48.978771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002943, -0.386844, 0.922141,
		0.418581, 0.836995, 0.352461,
		-0.908175, 0.387028, 0.159462,
		35.232170, 30.279566, 49.026611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900875, 30.292393, 49.510262>,  <35.867893, 30.008646, 48.914986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900875, 30.292393, 49.510262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.508850, 30.223625, 49.470421>,  <35.273636, 30.182364, 49.446518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.508850, 30.223625, 49.470421>,  <35.900875, 30.292393, 49.510262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508850, 30.223625, 49.470421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015224, -0.434841, 0.900379,
		-0.198104, 0.883944, 0.423554,
		-0.980063, -0.171921, -0.099601,
		35.214832, 30.172049, 49.440540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618622, 30.554585, 50.160583>,  <35.900875, 30.292393, 49.510262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618622, 30.554585, 50.160583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.376183, 30.288010, 49.986912>,  <35.230721, 30.128065, 49.882710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.376183, 30.288010, 49.986912>,  <35.618622, 30.554585, 50.160583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376183, 30.288010, 49.986912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166035, -0.427829, 0.888479,
		-0.777867, 0.610593, 0.148654,
		-0.606098, -0.666437, -0.434174,
		35.194355, 30.088079, 49.856659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137177, 30.467709, 50.618553>,  <35.618622, 30.554585, 50.160583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137177, 30.467709, 50.618553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.046421, 30.153507, 50.388248>,  <34.991966, 29.964987, 50.250065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.046421, 30.153507, 50.388248>,  <35.137177, 30.467709, 50.618553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046421, 30.153507, 50.388248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234706, -0.529660, 0.815091,
		-0.945217, 0.320070, -0.064190,
		-0.226887, -0.785503, -0.575766,
		34.978355, 29.917856, 50.215519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472775, 30.128441, 50.842365>,  <35.137177, 30.467709, 50.618553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472775, 30.128441, 50.842365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.683083, 29.857033, 50.637165>,  <34.809269, 29.694189, 50.514046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.683083, 29.857033, 50.637165>,  <34.472775, 30.128441, 50.842365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683083, 29.857033, 50.637165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040781, -0.622505, 0.781552,
		-0.849647, -0.389998, -0.354967,
		0.525773, -0.678519, -0.513005,
		34.840813, 29.653477, 50.483265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058140, 29.420885, 50.856384>,  <34.472775, 30.128441, 50.842365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058140, 29.420885, 50.856384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.444847, 29.353054, 50.779850>,  <34.676872, 29.312355, 50.733929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.444847, 29.353054, 50.779850>,  <34.058140, 29.420885, 50.856384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444847, 29.353054, 50.779850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016078, -0.706568, 0.707463,
		-0.255160, -0.687027, -0.680359,
		0.966765, -0.169577, -0.191334,
		34.734879, 29.302181, 50.722450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106731, 29.348734, 50.077805>,  <34.058140, 29.420885, 50.856384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106731, 29.348734, 50.077805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.372105, 29.640896, 50.012856>,  <34.531330, 29.816193, 49.973888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.372105, 29.640896, 50.012856>,  <34.106731, 29.348734, 50.077805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372105, 29.640896, 50.012856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723734, -0.681497, -0.108498,
		-0.189901, -0.045530, -0.980747,
		0.663436, 0.730404, -0.162368,
		34.571136, 29.860018, 49.964146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811310, 28.730415, 50.002140>,  <34.106731, 29.348734, 50.077805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811310, 28.730415, 50.002140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.451508, 28.615015, 49.870899>,  <33.235626, 28.545774, 49.792156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.451508, 28.615015, 49.870899>,  <33.811310, 28.730415, 50.002140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451508, 28.615015, 49.870899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095341, 0.603260, -0.791825,
		0.426372, -0.743536, -0.515132,
		-0.899509, -0.288499, -0.328103,
		33.181656, 28.528465, 49.772469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837936, 28.686066, 49.270962>,  <33.811310, 28.730415, 50.002140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837936, 28.686066, 49.270962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.453827, 28.729988, 49.373585>,  <33.223362, 28.756342, 49.435158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.453827, 28.729988, 49.373585>,  <33.837936, 28.686066, 49.270962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453827, 28.729988, 49.373585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120880, 0.664956, -0.737036,
		-0.251530, -0.738767, -0.625265,
		-0.960271, 0.109804, 0.256558,
		33.165745, 28.762930, 49.450554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615257, 28.567945, 48.649662>,  <33.837936, 28.686066, 49.270962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615257, 28.567945, 48.649662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.332394, 28.765060, 48.852478>,  <33.162678, 28.883329, 48.974167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.332394, 28.765060, 48.852478>,  <33.615257, 28.567945, 48.649662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332394, 28.765060, 48.852478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176610, 0.571275, -0.801532,
		-0.684644, -0.656357, -0.316950,
		-0.707157, 0.492788, 0.507039,
		33.120247, 28.912897, 49.004589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947906, 28.514221, 48.295723>,  <33.615257, 28.567945, 48.649662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947906, 28.514221, 48.295723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.928589, 28.837954, 48.529869>,  <32.916996, 29.032194, 48.670357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.928589, 28.837954, 48.529869>,  <32.947906, 28.514221, 48.295723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928589, 28.837954, 48.529869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301966, 0.546792, -0.780919,
		-0.952094, -0.214476, 0.217982,
		-0.048297, 0.809332, 0.585362,
		32.914101, 29.080753, 48.705479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322460, 28.816437, 48.049389>,  <32.947906, 28.514221, 48.295723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322460, 28.816437, 48.049389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.507977, 29.104280, 48.256100>,  <32.619286, 29.276987, 48.380127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.507977, 29.104280, 48.256100>,  <32.322460, 28.816437, 48.049389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507977, 29.104280, 48.256100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221646, 0.659007, -0.718737,
		-0.857772, 0.218800, 0.465139,
		0.463790, 0.719608, 0.516782,
		32.647114, 29.320164, 48.411133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860985, 29.306955, 48.071850>,  <32.322460, 28.816437, 48.049389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860985, 29.306955, 48.071850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.213535, 29.477774, 48.152653>,  <32.425064, 29.580265, 48.201134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.213535, 29.477774, 48.152653>,  <31.860985, 29.306955, 48.071850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213535, 29.477774, 48.152653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202333, 0.727637, -0.655443,
		-0.426890, 0.536820, 0.727729,
		0.881377, 0.427046, 0.202005,
		32.477947, 29.605886, 48.213253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701202, 30.007282, 48.252224>,  <31.860985, 29.306955, 48.071850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701202, 30.007282, 48.252224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088139, 29.982864, 48.153812>,  <32.320301, 29.968214, 48.094765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088139, 29.982864, 48.153812>,  <31.701202, 30.007282, 48.252224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088139, 29.982864, 48.153812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158530, 0.611650, -0.775082,
		0.197795, 0.788770, 0.581996,
		0.967339, -0.061043, -0.246025,
		32.378342, 29.964552, 48.080006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929983, 30.744236, 48.192947>,  <31.701202, 30.007282, 48.252224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929983, 30.744236, 48.192947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.198044, 30.521603, 47.996536>,  <32.358879, 30.388023, 47.878689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.198044, 30.521603, 47.996536>,  <31.929983, 30.744236, 48.192947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198044, 30.521603, 47.996536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031599, 0.639574, -0.768080,
		0.741550, 0.530247, 0.411025,
		0.670153, -0.556582, -0.491031,
		32.399090, 30.354628, 47.849228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438187, 31.212727, 47.985458>,  <31.929983, 30.744236, 48.192947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438187, 31.212727, 47.985458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.457878, 30.893402, 47.745369>,  <32.469692, 30.701807, 47.601315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.457878, 30.893402, 47.745369>,  <32.438187, 31.212727, 47.985458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457878, 30.893402, 47.745369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152605, 0.599912, -0.785377,
		0.987060, -0.052932, 0.151362,
		0.049232, -0.798313, -0.600227,
		32.472649, 30.653908, 47.565300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887142, 31.464298, 47.501522>,  <32.438187, 31.212727, 47.985458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887142, 31.464298, 47.501522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760975, 31.148090, 47.291534>,  <32.685276, 30.958364, 47.165543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760975, 31.148090, 47.291534>,  <32.887142, 31.464298, 47.501522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760975, 31.148090, 47.291534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266516, 0.457144, -0.848521,
		0.910760, -0.407547, 0.066497,
		-0.315414, -0.790522, -0.524966,
		32.666351, 30.910934, 47.134045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429558, 31.332266, 47.102303>,  <32.887142, 31.464298, 47.501522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429558, 31.332266, 47.102303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.117493, 31.168564, 46.913052>,  <32.930252, 31.070343, 46.799500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.117493, 31.168564, 46.913052>,  <33.429558, 31.332266, 47.102303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117493, 31.168564, 46.913052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368488, 0.310539, -0.876232,
		0.505529, -0.857948, -0.091466,
		-0.780165, -0.409257, -0.473130,
		32.883442, 31.045788, 46.771114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719360, 31.145061, 46.445080>,  <33.429558, 31.332266, 47.102303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719360, 31.145061, 46.445080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326260, 31.111725, 46.379040>,  <33.090401, 31.091722, 46.339417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326260, 31.111725, 46.379040>,  <33.719360, 31.145061, 46.445080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326260, 31.111725, 46.379040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136230, 0.277531, -0.951009,
		0.125075, -0.957095, -0.261390,
		-0.982749, -0.083339, -0.165098,
		33.031433, 31.086723, 46.329510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627357, 30.656033, 45.850346>,  <33.719360, 31.145061, 46.445080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627357, 30.656033, 45.850346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352669, 30.941971, 45.903130>,  <33.187855, 31.113533, 45.934799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352669, 30.941971, 45.903130>,  <33.627357, 30.656033, 45.850346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352669, 30.941971, 45.903130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260416, 0.411413, -0.873455,
		-0.678674, -0.565454, -0.468683,
		-0.686720, 0.714844, 0.131962,
		33.146652, 31.156424, 45.942719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296314, 30.676441, 45.274399>,  <33.627357, 30.656033, 45.850346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296314, 30.676441, 45.274399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.149185, 31.011971, 45.434940>,  <33.060909, 31.213289, 45.531265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.149185, 31.011971, 45.434940>,  <33.296314, 30.676441, 45.274399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149185, 31.011971, 45.434940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184545, 0.488869, -0.852614,
		-0.911401, -0.239542, -0.334617,
		-0.367820, 0.838825, 0.401349,
		33.038837, 31.263618, 45.555344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887642, 31.008163, 44.695004>,  <33.296314, 30.676441, 45.274399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887642, 31.008163, 44.695004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.954769, 31.306971, 44.952312>,  <32.995045, 31.486256, 45.106697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.954769, 31.306971, 44.952312>,  <32.887642, 31.008163, 44.695004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954769, 31.306971, 44.952312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153600, 0.624746, -0.765572,
		-0.973779, 0.227282, -0.009899,
		0.167816, 0.747018, 0.643274,
		33.005116, 31.531076, 45.145294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402332, 31.411951, 44.602242>,  <32.887642, 31.008163, 44.695004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402332, 31.411951, 44.602242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.701805, 31.616243, 44.771301>,  <32.881489, 31.738819, 44.872738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.701805, 31.616243, 44.771301>,  <32.402332, 31.411951, 44.602242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701805, 31.616243, 44.771301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111757, 0.531188, -0.839851,
		-0.653447, 0.676011, 0.340611,
		0.748677, 0.510732, 0.422652,
		32.926407, 31.769463, 44.898098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229362, 32.193073, 44.582947>,  <32.402332, 31.411951, 44.602242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229362, 32.193073, 44.582947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.623009, 32.150627, 44.639866>,  <32.859196, 32.125160, 44.674019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.623009, 32.150627, 44.639866>,  <32.229362, 32.193073, 44.582947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623009, 32.150627, 44.639866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177242, 0.631372, -0.754954,
		-0.009735, 0.768186, 0.640153,
		0.984119, -0.106112, 0.142301,
		32.918243, 32.118793, 44.682556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480865, 32.910183, 44.568871>,  <32.229362, 32.193073, 44.582947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480865, 32.910183, 44.568871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.829231, 32.728050, 44.494907>,  <33.038250, 32.618771, 44.450531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.829231, 32.728050, 44.494907>,  <32.480865, 32.910183, 44.568871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829231, 32.728050, 44.494907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193337, 0.663360, -0.722893,
		0.451814, 0.593825, 0.665759,
		0.870910, -0.455329, -0.184907,
		33.090504, 32.591450, 44.439434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903080, 33.446438, 44.393623>,  <32.480865, 32.910183, 44.568871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903080, 33.446438, 44.393623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.106300, 33.129139, 44.259377>,  <33.228233, 32.938759, 44.178829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.106300, 33.129139, 44.259377>,  <32.903080, 33.446438, 44.393623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106300, 33.129139, 44.259377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167862, 0.473363, -0.864726,
		0.844810, 0.382990, 0.373650,
		0.508053, -0.793250, -0.335612,
		33.258717, 32.891163, 44.158691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579197, 33.669754, 44.194950>,  <32.903080, 33.446438, 44.393623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579197, 33.669754, 44.194950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.522579, 33.328098, 43.994785>,  <33.488609, 33.123104, 43.874687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.522579, 33.328098, 43.994785>,  <33.579197, 33.669754, 44.194950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522579, 33.328098, 43.994785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220323, 0.465645, -0.857107,
		0.965103, -0.231572, 0.122277,
		-0.141544, -0.854137, -0.500416,
		33.480114, 33.071857, 43.844662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.276466, 40.124714, 27.430136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.380302, 39.738434, 27.432703>,  <44.442604, 39.506668, 27.434244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.380302, 39.738434, 27.432703>,  <44.276466, 40.124714, 27.430136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380302, 39.738434, 27.432703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343350, 0.086082, -0.935254,
		0.902619, 0.244991, 0.353919,
		0.259595, -0.965696, 0.006418,
		44.458179, 39.448727, 27.434628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008381, 40.660053, 27.853701>,  <44.276466, 40.124714, 27.430136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008381, 40.660053, 27.853701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.756527, 40.378109, 27.723022>,  <43.605415, 40.208942, 27.644615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.756527, 40.378109, 27.723022>,  <44.008381, 40.660053, 27.853701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756527, 40.378109, 27.723022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188144, -0.269655, 0.944398,
		-0.753766, 0.656091, 0.037168,
		-0.629634, -0.704862, -0.326697,
		43.567638, 40.166649, 27.625013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551872, 40.613140, 28.329124>,  <44.008381, 40.660053, 27.853701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551872, 40.613140, 28.329124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.469082, 40.267521, 28.145569>,  <43.419407, 40.060150, 28.035435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.469082, 40.267521, 28.145569>,  <43.551872, 40.613140, 28.329124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469082, 40.267521, 28.145569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348390, -0.373205, 0.859850,
		-0.914214, 0.337837, -0.223784,
		-0.206972, -0.864051, -0.458889,
		43.406990, 40.008305, 28.007902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770954, 40.304546, 28.585739>,  <43.551872, 40.613140, 28.329124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770954, 40.304546, 28.585739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.979496, 40.005447, 28.421268>,  <43.104622, 39.825989, 28.322586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.979496, 40.005447, 28.421268>,  <42.770954, 40.304546, 28.585739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979496, 40.005447, 28.421268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335900, -0.622766, 0.706635,
		-0.784452, -0.230290, -0.575848,
		0.521350, -0.747749, -0.411176,
		43.135902, 39.781124, 28.297916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384640, 39.540775, 28.528553>,  <42.770954, 40.304546, 28.585739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384640, 39.540775, 28.528553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.780510, 39.487309, 28.549252>,  <43.018032, 39.455231, 28.561670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.780510, 39.487309, 28.549252>,  <42.384640, 39.540775, 28.528553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780510, 39.487309, 28.549252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133699, -0.730822, 0.669346,
		-0.051650, -0.669353, -0.741147,
		0.989675, -0.133662, 0.051745,
		43.077412, 39.447208, 28.564775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466648, 38.779160, 28.596384>,  <42.384640, 39.540775, 28.528553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466648, 38.779160, 28.596384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.821861, 38.918472, 28.716450>,  <43.034988, 39.002060, 28.788490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.821861, 38.918472, 28.716450>,  <42.466648, 38.779160, 28.596384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821861, 38.918472, 28.716450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037376, -0.705364, 0.707859,
		0.458261, -0.617382, -0.639403,
		0.888032, 0.348283, 0.300166,
		43.088272, 39.022957, 28.806499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911552, 38.179554, 28.864349>,  <42.466648, 38.779160, 28.596384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911552, 38.179554, 28.864349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.089092, 38.507797, 29.008347>,  <43.195618, 38.704742, 29.094744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.089092, 38.507797, 29.008347>,  <42.911552, 38.179554, 28.864349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089092, 38.507797, 29.008347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267134, -0.504633, 0.820966,
		0.855357, -0.268221, -0.443195,
		0.443851, 0.820611, 0.359991,
		43.222248, 38.753979, 29.116344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.471878, 37.828266, 29.216305>,  <42.911552, 38.179554, 28.864349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.471878, 37.828266, 29.216305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.432907, 38.197487, 29.365160>,  <43.409523, 38.419018, 29.454473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.432907, 38.197487, 29.365160>,  <43.471878, 37.828266, 29.216305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.432907, 38.197487, 29.365160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258145, -0.337682, 0.905169,
		0.961181, 0.184255, -0.205381,
		-0.097428, 0.923050, 0.372138,
		43.403679, 38.474403, 29.476801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136623, 38.078518, 29.658361>,  <43.471878, 37.828266, 29.216305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136623, 38.078518, 29.658361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.850216, 38.314167, 29.808165>,  <43.678371, 38.455555, 29.898046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.850216, 38.314167, 29.808165>,  <44.136623, 38.078518, 29.658361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850216, 38.314167, 29.808165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285113, -0.242907, 0.927204,
		0.637206, 0.770670, 0.005960,
		-0.716016, 0.589121, 0.374510,
		43.635410, 38.490902, 29.920517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403698, 38.380173, 30.244305>,  <44.136623, 38.078518, 29.658361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403698, 38.380173, 30.244305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.016174, 38.412952, 30.337847>,  <43.783661, 38.432621, 30.393972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.016174, 38.412952, 30.337847>,  <44.403698, 38.380173, 30.244305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016174, 38.412952, 30.337847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212043, -0.214183, 0.953501,
		0.128228, 0.973350, 0.190126,
		-0.968811, 0.081951, 0.233856,
		43.725533, 38.437538, 30.408003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392010, 38.568951, 30.938341>,  <44.403698, 38.380173, 30.244305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392010, 38.568951, 30.938341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.998203, 38.508263, 30.903215>,  <43.761921, 38.471851, 30.882139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.998203, 38.508263, 30.903215>,  <44.392010, 38.568951, 30.938341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998203, 38.508263, 30.903215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043614, -0.273192, 0.960970,
		-0.169787, 0.949920, 0.262345,
		-0.984515, -0.151719, -0.087814,
		43.702850, 38.462746, 30.876871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136787, 38.700783, 31.587891>,  <44.392010, 38.568951, 30.938341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136787, 38.700783, 31.587891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.832321, 38.505554, 31.417051>,  <43.649643, 38.388416, 31.314547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.832321, 38.505554, 31.417051>,  <44.136787, 38.700783, 31.587891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832321, 38.505554, 31.417051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192577, -0.458752, 0.867445,
		-0.619308, 0.742518, 0.255195,
		-0.761165, -0.488071, -0.427101,
		43.603973, 38.359135, 31.288921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606194, 38.870724, 32.008461>,  <44.136787, 38.700783, 31.587891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606194, 38.870724, 32.008461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.569065, 38.513168, 31.833035>,  <43.546787, 38.298634, 31.727777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.569065, 38.513168, 31.833035>,  <43.606194, 38.870724, 32.008461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.569065, 38.513168, 31.833035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013652, -0.441572, 0.897121,
		-0.995589, 0.077287, 0.053192,
		-0.092824, -0.893891, -0.438569,
		43.541218, 38.245003, 31.701464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.116768, 38.537239, 32.398140>,  <43.606194, 38.870724, 32.008461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.116768, 38.537239, 32.398140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.288647, 38.223946, 32.218403>,  <43.391773, 38.035969, 32.110561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.288647, 38.223946, 32.218403>,  <43.116768, 38.537239, 32.398140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288647, 38.223946, 32.218403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070003, -0.467232, 0.881359,
		-0.900257, -0.410171, -0.145938,
		0.429694, -0.783234, -0.449342,
		43.417557, 37.988976, 32.083599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916023, 37.995293, 32.753693>,  <43.116768, 38.537239, 32.398140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916023, 37.995293, 32.753693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.216038, 37.821487, 32.554237>,  <43.396046, 37.717205, 32.434563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.216038, 37.821487, 32.554237>,  <42.916023, 37.995293, 32.753693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.216038, 37.821487, 32.554237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038481, -0.723974, 0.688753,
		-0.660274, -0.535780, -0.526288,
		0.750039, -0.434513, -0.498638,
		43.441048, 37.691132, 32.404644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650589, 37.351475, 32.823673>,  <42.916023, 37.995293, 32.753693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650589, 37.351475, 32.823673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043262, 37.337326, 32.748802>,  <43.278870, 37.328838, 32.703880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043262, 37.337326, 32.748802>,  <42.650589, 37.351475, 32.823673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043262, 37.337326, 32.748802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090553, -0.777837, 0.621909,
		-0.167594, -0.627470, -0.760390,
		0.981689, -0.035372, -0.187181,
		43.337769, 37.326714, 32.692650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802711, 36.686939, 32.701733>,  <42.650589, 37.351475, 32.823673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802711, 36.686939, 32.701733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.151566, 36.848701, 32.811882>,  <43.360878, 36.945759, 32.877972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.151566, 36.848701, 32.811882>,  <42.802711, 36.686939, 32.701733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151566, 36.848701, 32.811882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076173, -0.668212, 0.740061,
		0.483296, -0.624458, -0.613577,
		0.872137, 0.404407, 0.275378,
		43.413208, 36.970024, 32.894497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418427, 36.181976, 32.616123>,  <42.802711, 36.686939, 32.701733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418427, 36.181976, 32.616123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.514122, 36.451042, 32.896202>,  <43.571541, 36.612484, 33.064251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.514122, 36.451042, 32.896202>,  <43.418427, 36.181976, 32.616123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.514122, 36.451042, 32.896202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234044, -0.739831, 0.630772,
		0.942331, 0.012972, -0.334432,
		0.239241, 0.672667, 0.700202,
		43.585896, 36.652843, 33.106262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004677, 35.881771, 32.938049>,  <43.418427, 36.181976, 32.616123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004677, 35.881771, 32.938049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.940269, 36.186363, 33.189198>,  <43.901627, 36.369118, 33.339886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.940269, 36.186363, 33.189198>,  <44.004677, 35.881771, 32.938049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940269, 36.186363, 33.189198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376199, -0.540790, 0.752344,
		0.912440, 0.357347, -0.199390,
		-0.161019, 0.761479, 0.627872,
		43.891964, 36.414806, 33.377560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.656887, 35.997128, 33.244537>,  <44.004677, 35.881771, 32.938049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.656887, 35.997128, 33.244537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.365456, 36.140743, 33.477867>,  <44.190598, 36.226913, 33.617867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.365456, 36.140743, 33.477867>,  <44.656887, 35.997128, 33.244537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365456, 36.140743, 33.477867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370319, -0.509953, 0.776409,
		0.576232, 0.781688, 0.238579,
		-0.728574, 0.359042, 0.583326,
		44.146885, 36.248455, 33.652866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072388, 36.059216, 34.052784>,  <44.656887, 35.997128, 33.244537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072388, 36.059216, 34.052784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.674713, 36.063118, 34.095692>,  <44.436108, 36.065460, 34.121437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.674713, 36.063118, 34.095692>,  <45.072388, 36.059216, 34.052784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.674713, 36.063118, 34.095692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078719, -0.613903, 0.785447,
		0.073519, 0.789321, 0.609563,
		-0.994182, 0.009761, 0.107268,
		44.376457, 36.066048, 34.127872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.814926, 35.982845, 34.042419>,  <45.072388, 36.059216, 34.052784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.814926, 35.982845, 34.042419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.208805, 35.948296, 33.981869>,  <46.445133, 35.927567, 33.945538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.208805, 35.948296, 33.981869>,  <45.814926, 35.982845, 34.042419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.208805, 35.948296, 33.981869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067351, 0.612498, -0.787598,
		0.160752, 0.785739, 0.597305,
		0.984694, -0.086379, -0.151380,
		46.504215, 35.922382, 33.936455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.070843, 36.595127, 33.990757>,  <45.814926, 35.982845, 34.042419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.070843, 36.595127, 33.990757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.326576, 36.366982, 33.784481>,  <46.480019, 36.230095, 33.660713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.326576, 36.366982, 33.784481>,  <46.070843, 36.595127, 33.990757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.326576, 36.366982, 33.784481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001223, 0.671417, -0.741079,
		0.768927, 0.473167, 0.429959,
		0.639336, -0.570361, -0.515692,
		46.518375, 36.195873, 33.629772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.518623, 37.114777, 33.561409>,  <46.070843, 36.595127, 33.990757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.518623, 37.114777, 33.561409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.610970, 36.776833, 33.368362>,  <46.666378, 36.574066, 33.252533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.610970, 36.776833, 33.368362>,  <46.518623, 37.114777, 33.561409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.610970, 36.776833, 33.368362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088962, 0.475612, -0.875145,
		0.968911, 0.244974, 0.034642,
		0.230864, -0.844855, -0.482619,
		46.680229, 36.523376, 33.223576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.164185, 37.226791, 33.111912>,  <46.518623, 37.114777, 33.561409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.164185, 37.226791, 33.111912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.938915, 36.939110, 32.949150>,  <46.803753, 36.766499, 32.851494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.938915, 36.939110, 32.949150>,  <47.164185, 37.226791, 33.111912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.938915, 36.939110, 32.949150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019311, 0.480834, -0.876599,
		0.826112, -0.501536, -0.256904,
		-0.563174, -0.719208, -0.406908,
		46.769962, 36.723347, 32.827076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.494473, 37.045891, 32.456715>,  <47.164185, 37.226791, 33.111912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.494473, 37.045891, 32.456715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.124798, 36.894688, 32.434864>,  <46.902992, 36.803967, 32.421753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.124798, 36.894688, 32.434864>,  <47.494473, 37.045891, 32.456715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.124798, 36.894688, 32.434864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107059, 0.393694, -0.912986,
		0.366616, -0.837926, -0.404317,
		-0.924192, -0.378001, -0.054627,
		46.847542, 36.781284, 32.418476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.491699, 36.849922, 31.829365>,  <47.494473, 37.045891, 32.456715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.491699, 36.849922, 31.829365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.101677, 36.865337, 31.916801>,  <46.867664, 36.874584, 31.969263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.101677, 36.865337, 31.916801>,  <47.491699, 36.849922, 31.829365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.101677, 36.865337, 31.916801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203863, 0.234044, -0.950612,
		-0.087791, -0.971462, -0.220350,
		-0.975055, 0.038534, 0.218592,
		46.809162, 36.876896, 31.982380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.170959, 36.436623, 31.394575>,  <47.491699, 36.849922, 31.829365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.170959, 36.436623, 31.394575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.886929, 36.701965, 31.489021>,  <46.716511, 36.861172, 31.545689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.886929, 36.701965, 31.489021>,  <47.170959, 36.436623, 31.394575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.886929, 36.701965, 31.489021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177040, 0.156362, -0.971704,
		-0.681508, -0.731783, 0.006412,
		-0.710074, 0.663358, 0.236117,
		46.673908, 36.900974, 31.559856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.669865, 36.187733, 31.065872>,  <47.170959, 36.436623, 31.394575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.669865, 36.187733, 31.065872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.565815, 36.564423, 31.151180>,  <46.503384, 36.790436, 31.202364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.565815, 36.564423, 31.151180>,  <46.669865, 36.187733, 31.065872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.565815, 36.564423, 31.151180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203299, 0.162506, -0.965537,
		-0.943931, -0.294517, 0.149181,
		-0.260124, 0.941728, 0.213269,
		46.487778, 36.846943, 31.215160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.152763, 36.396755, 30.576180>,  <46.669865, 36.187733, 31.065872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.152763, 36.396755, 30.576180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.252048, 36.760902, 30.708612>,  <46.311619, 36.979393, 30.788073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.252048, 36.760902, 30.708612>,  <46.152763, 36.396755, 30.576180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.252048, 36.760902, 30.708612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411576, 0.408503, -0.814696,
		-0.876924, 0.065951, 0.476082,
		0.248211, 0.910371, 0.331082,
		46.326511, 37.034012, 30.807938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.530914, 36.785446, 30.537016>,  <46.152763, 36.396755, 30.576180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.530914, 36.785446, 30.537016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.848698, 37.027618, 30.517899>,  <46.039368, 37.172924, 30.506428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.848698, 37.027618, 30.517899>,  <45.530914, 36.785446, 30.537016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.848698, 37.027618, 30.517899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382116, 0.437145, -0.814182,
		-0.472039, 0.665098, 0.578640,
		0.794460, 0.605433, -0.047795,
		46.087036, 37.209248, 30.503559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229610, 37.363430, 30.323914>,  <45.530914, 36.785446, 30.537016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229610, 37.363430, 30.323914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.620842, 37.371807, 30.241051>,  <45.855583, 37.376835, 30.191332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.620842, 37.371807, 30.241051>,  <45.229610, 37.363430, 30.323914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.620842, 37.371807, 30.241051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179638, 0.587941, -0.788705,
		0.105278, 0.808633, 0.578817,
		0.978083, 0.020944, -0.207158,
		45.914268, 37.378090, 30.178904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.424610, 38.106602, 30.176905>,  <45.229610, 37.363430, 30.323914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.424610, 38.106602, 30.176905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.715736, 37.880009, 30.022308>,  <45.890411, 37.744053, 29.929550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.715736, 37.880009, 30.022308>,  <45.424610, 38.106602, 30.176905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.715736, 37.880009, 30.022308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125449, 0.444094, -0.887154,
		0.674196, 0.694174, 0.252156,
		0.727820, -0.566483, -0.386490,
		45.934082, 37.710064, 29.906361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.735645, 38.540340, 29.774208>,  <45.424610, 38.106602, 30.176905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.735645, 38.540340, 29.774208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.888641, 38.196468, 29.638771>,  <45.980438, 37.990143, 29.557508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.888641, 38.196468, 29.638771>,  <45.735645, 38.540340, 29.774208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.888641, 38.196468, 29.638771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012649, 0.371294, -0.928429,
		0.923872, 0.350834, 0.152891,
		0.382492, -0.859684, -0.338590,
		46.003387, 37.938564, 29.537193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.266987, 38.714027, 29.373880>,  <45.735645, 38.540340, 29.774208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.266987, 38.714027, 29.373880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.188545, 38.349792, 29.228350>,  <46.141479, 38.131252, 29.141031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.188545, 38.349792, 29.228350>,  <46.266987, 38.714027, 29.373880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.188545, 38.349792, 29.228350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074800, 0.356058, -0.931465,
		0.977726, -0.209878, -0.001712,
		-0.196104, -0.910590, -0.363826,
		46.129715, 38.076614, 29.119202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.750092, 38.603344, 28.743153>,  <46.266987, 38.714027, 29.373880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.750092, 38.603344, 28.743153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.478046, 38.312023, 28.709650>,  <46.314819, 38.137230, 28.689548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.478046, 38.312023, 28.709650>,  <46.750092, 38.603344, 28.743153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.478046, 38.312023, 28.709650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184143, 0.280302, -0.942084,
		0.709600, -0.625303, -0.324751,
		-0.680117, -0.728304, -0.083757,
		46.274010, 38.093533, 28.684523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.906681, 38.188690, 28.151653>,  <46.750092, 38.603344, 28.743153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.906681, 38.188690, 28.151653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.512012, 38.148594, 28.202940>,  <46.275211, 38.124535, 28.233711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.512012, 38.148594, 28.202940>,  <46.906681, 38.188690, 28.151653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.512012, 38.148594, 28.202940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151933, 0.284884, -0.946445,
		0.058345, -0.953306, -0.296315,
		-0.986667, -0.100240, 0.128218,
		46.216011, 38.118523, 28.241405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.680202, 38.021404, 27.475342>,  <46.906681, 38.188690, 28.151653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.680202, 38.021404, 27.475342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.331890, 38.102608, 27.654467>,  <46.122902, 38.151329, 27.761942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.331890, 38.102608, 27.654467>,  <46.680202, 38.021404, 27.475342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331890, 38.102608, 27.654467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390160, 0.268938, -0.880595,
		-0.299203, -0.941520, -0.154978,
		-0.870777, 0.203010, 0.447810,
		46.070656, 38.163509, 27.788809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.211319, 37.718693, 26.989828>,  <46.680202, 38.021404, 27.475342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.211319, 37.718693, 26.989828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.048176, 37.996864, 27.226480>,  <45.950291, 38.163769, 27.368471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.048176, 37.996864, 27.226480>,  <46.211319, 37.718693, 26.989828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.048176, 37.996864, 27.226480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395266, 0.449627, -0.801000,
		-0.823055, -0.560543, 0.091499,
		-0.407854, 0.695433, 0.591631,
		45.925819, 38.205494, 27.403971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.508652, 37.676369, 26.705099>,  <46.211319, 37.718693, 26.989828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.508652, 37.676369, 26.705099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.543697, 38.032692, 26.883438>,  <45.564724, 38.246487, 26.990442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.543697, 38.032692, 26.883438>,  <45.508652, 37.676369, 26.705099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.543697, 38.032692, 26.883438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296361, 0.450613, -0.842091,
		-0.951048, -0.058350, 0.303483,
		0.087617, 0.890811, 0.445848,
		45.569981, 38.299934, 27.017193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892338, 37.994358, 26.491760>,  <45.508652, 37.676369, 26.705099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892338, 37.994358, 26.491760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.155159, 38.275379, 26.601084>,  <45.312851, 38.443993, 26.666677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.155159, 38.275379, 26.601084>,  <44.892338, 37.994358, 26.491760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.155159, 38.275379, 26.601084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190050, 0.505217, -0.841805,
		-0.729496, 0.501167, 0.465475,
		0.657051, 0.702558, 0.273307,
		45.352276, 38.486145, 26.683077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616024, 38.613934, 26.296139>,  <44.892338, 37.994358, 26.491760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616024, 38.613934, 26.296139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.010616, 38.675648, 26.318268>,  <45.247372, 38.712677, 26.331545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.010616, 38.675648, 26.318268>,  <44.616024, 38.613934, 26.296139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.010616, 38.675648, 26.318268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033787, 0.521708, -0.852454,
		-0.160383, 0.839057, 0.519866,
		0.986476, 0.154284, 0.055324,
		45.306561, 38.721931, 26.334866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.810562, 35.330112, 41.444214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593334, 35.061359, 41.242764>,  <37.462997, 34.900108, 41.121891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593334, 35.061359, 41.242764>,  <37.810562, 35.330112, 41.444214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593334, 35.061359, 41.242764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576932, 0.137222, -0.805183,
		0.610101, -0.727831, 0.313111,
		-0.543071, -0.671887, -0.503628,
		37.430412, 34.859795, 41.091675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169174, 34.694324, 41.247627>,  <37.810562, 35.330112, 41.444214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169174, 34.694324, 41.247627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883408, 34.764153, 40.976589>,  <37.711948, 34.806049, 40.813965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883408, 34.764153, 40.976589>,  <38.169174, 34.694324, 41.247627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883408, 34.764153, 40.976589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697248, 0.096242, -0.710340,
		-0.058791, -0.979930, -0.190475,
		-0.714415, 0.174570, -0.677597,
		37.669083, 34.816525, 40.773312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482944, 34.471104, 40.597664>,  <38.169174, 34.694324, 41.247627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482944, 34.471104, 40.597664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162239, 34.649269, 40.438278>,  <37.969814, 34.756168, 40.342648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162239, 34.649269, 40.438278>,  <38.482944, 34.471104, 40.597664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162239, 34.649269, 40.438278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501844, 0.139714, -0.853599,
		-0.324533, -0.884357, -0.335546,
		-0.801767, 0.445413, -0.398468,
		37.921707, 34.782894, 40.318737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444664, 34.193222, 39.936329>,  <38.482944, 34.471104, 40.597664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444664, 34.193222, 39.936329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229538, 34.530231, 39.924259>,  <38.100460, 34.732437, 39.917019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229538, 34.530231, 39.924259>,  <38.444664, 34.193222, 39.936329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229538, 34.530231, 39.924259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272207, 0.139669, -0.952048,
		-0.797907, -0.520241, -0.304456,
		-0.537818, 0.842521, -0.030171,
		38.068192, 34.782990, 39.915207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085312, 34.255299, 39.294292>,  <38.444664, 34.193222, 39.936329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085312, 34.255299, 39.294292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100590, 34.632328, 39.427010>,  <38.109756, 34.858547, 39.506641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100590, 34.632328, 39.427010>,  <38.085312, 34.255299, 39.294292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100590, 34.632328, 39.427010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188251, 0.319304, -0.928766,
		-0.981378, 0.097936, -0.165245,
		0.038197, 0.942578, 0.331794,
		38.112049, 34.915100, 39.526546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615131, 34.669113, 38.828995>,  <38.085312, 34.255299, 39.294292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615131, 34.669113, 38.828995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865967, 34.931950, 38.996326>,  <38.016468, 35.089649, 39.096725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865967, 34.931950, 38.996326>,  <37.615131, 34.669113, 38.828995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865967, 34.931950, 38.996326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281658, 0.309432, -0.908251,
		-0.726245, 0.687377, 0.008967,
		0.627086, 0.657088, 0.418329,
		38.054092, 35.129074, 39.121826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623016, 35.338295, 38.409519>,  <37.615131, 34.669113, 38.828995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623016, 35.338295, 38.409519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952232, 35.418285, 38.622169>,  <38.149761, 35.466278, 38.749760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952232, 35.418285, 38.622169>,  <37.623016, 35.338295, 38.409519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952232, 35.418285, 38.622169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377561, 0.506629, -0.775097,
		-0.424334, 0.838652, 0.341472,
		0.823036, 0.199973, 0.531622,
		38.199142, 35.478279, 38.781654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916077, 35.900753, 38.133587>,  <37.623016, 35.338295, 38.409519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916077, 35.900753, 38.133587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231937, 35.765717, 38.338516>,  <38.421455, 35.684692, 38.461475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231937, 35.765717, 38.338516>,  <37.916077, 35.900753, 38.133587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231937, 35.765717, 38.338516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603012, 0.272899, -0.749602,
		0.113249, 0.900864, 0.419069,
		0.789653, -0.337595, 0.512326,
		38.468834, 35.664436, 38.492214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426956, 36.466251, 38.224922>,  <37.916077, 35.900753, 38.133587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426956, 36.466251, 38.224922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641479, 36.129219, 38.244663>,  <38.770191, 35.926998, 38.256508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641479, 36.129219, 38.244663>,  <38.426956, 36.466251, 38.224922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641479, 36.129219, 38.244663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619826, 0.353486, -0.700616,
		0.572882, 0.406331, 0.711830,
		0.536304, -0.842581, 0.049349,
		38.802372, 35.876446, 38.259468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041206, 36.733784, 38.215336>,  <38.426956, 36.466251, 38.224922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041206, 36.733784, 38.215336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057625, 36.345657, 38.119999>,  <39.067478, 36.112782, 38.062798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057625, 36.345657, 38.119999>,  <39.041206, 36.733784, 38.215336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057625, 36.345657, 38.119999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621996, 0.211500, -0.753916,
		0.781944, -0.117297, 0.612214,
		0.041051, -0.970314, -0.238339,
		39.069939, 36.054562, 38.048496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672356, 36.605797, 38.053558>,  <39.041206, 36.733784, 38.215336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672356, 36.605797, 38.053558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501060, 36.278515, 37.900116>,  <39.398285, 36.082146, 37.808052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501060, 36.278515, 37.900116>,  <39.672356, 36.605797, 38.053558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501060, 36.278515, 37.900116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654518, 0.011850, -0.755954,
		0.623072, -0.574802, 0.530456,
		-0.428238, -0.818207, -0.383602,
		39.372589, 36.033054, 37.785034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229233, 36.015202, 37.918282>,  <39.672356, 36.605797, 38.053558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229233, 36.015202, 37.918282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913784, 35.965237, 37.677460>,  <39.724514, 35.935257, 37.532967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913784, 35.965237, 37.677460>,  <40.229233, 36.015202, 37.918282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913784, 35.965237, 37.677460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609630, -0.031248, -0.792070,
		0.080125, -0.991676, 0.100792,
		-0.788626, -0.124911, -0.602051,
		39.677197, 35.927765, 37.496845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445675, 35.476173, 37.458073>,  <40.229233, 36.015202, 37.918282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445675, 35.476173, 37.458073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142906, 35.691063, 37.309231>,  <39.961246, 35.819996, 37.219925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142906, 35.691063, 37.309231>,  <40.445675, 35.476173, 37.458073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142906, 35.691063, 37.309231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458409, 0.030657, -0.888213,
		-0.465764, -0.842881, -0.269474,
		-0.756918, 0.537226, -0.372105,
		39.915833, 35.852230, 37.197598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485828, 35.274281, 36.736538>,  <40.445675, 35.476173, 37.458073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485828, 35.274281, 36.736538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346573, 35.644508, 36.796036>,  <40.263020, 35.866646, 36.831734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346573, 35.644508, 36.796036>,  <40.485828, 35.274281, 36.736538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346573, 35.644508, 36.796036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351118, 0.275861, -0.894772,
		-0.869203, -0.259280, -0.421022,
		-0.348140, 0.925567, 0.148741,
		40.242130, 35.922180, 36.840656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499187, 34.617184, 36.374214>,  <40.485828, 35.274281, 36.736538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499187, 34.617184, 36.374214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794632, 34.360317, 36.292171>,  <40.971901, 34.206196, 36.242947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794632, 34.360317, 36.292171>,  <40.499187, 34.617184, 36.374214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794632, 34.360317, 36.292171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422714, -0.678198, 0.601132,
		-0.525130, -0.357304, -0.772381,
		0.738615, -0.642169, -0.205104,
		41.016216, 34.167667, 36.230640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148312, 34.113598, 36.048775>,  <40.499187, 34.617184, 36.374214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148312, 34.113598, 36.048775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498611, 33.990665, 36.197701>,  <40.708790, 33.916908, 36.287056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498611, 33.990665, 36.197701>,  <40.148312, 34.113598, 36.048775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498611, 33.990665, 36.197701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477199, -0.667910, 0.571120,
		0.073153, -0.677825, -0.731575,
		0.875745, -0.307327, 0.372317,
		40.761333, 33.898468, 36.309395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239552, 33.342392, 36.051403>,  <40.148312, 34.113598, 36.048775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239552, 33.342392, 36.051403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511730, 33.460949, 36.319473>,  <40.675037, 33.532082, 36.480316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511730, 33.460949, 36.319473>,  <40.239552, 33.342392, 36.051403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511730, 33.460949, 36.319473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286053, -0.734560, 0.615301,
		0.674658, -0.610388, -0.415046,
		0.680449, 0.296393, 0.670180,
		40.715866, 33.549866, 36.520527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458622, 32.708527, 36.342873>,  <40.239552, 33.342392, 36.051403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458622, 32.708527, 36.342873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579391, 32.976974, 36.613705>,  <40.651855, 33.138042, 36.776203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579391, 32.976974, 36.613705>,  <40.458622, 32.708527, 36.342873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579391, 32.976974, 36.613705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262996, -0.624026, 0.735816,
		0.916337, -0.400231, -0.011907,
		0.301926, 0.671124, 0.677077,
		40.669968, 33.178310, 36.816826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819092, 32.285118, 36.900013>,  <40.458622, 32.708527, 36.342873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819092, 32.285118, 36.900013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732895, 32.627995, 37.087109>,  <40.681179, 32.833721, 37.199368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732895, 32.627995, 37.087109>,  <40.819092, 32.285118, 36.900013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732895, 32.627995, 37.087109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207616, -0.508259, 0.835804,
		0.954181, 0.082995, 0.287491,
		-0.215488, 0.857196, 0.467740,
		40.668247, 32.885155, 37.227432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177914, 32.231861, 37.608936>,  <40.819092, 32.285118, 36.900013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177914, 32.231861, 37.608936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888950, 32.507931, 37.625820>,  <40.715572, 32.673573, 37.635948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888950, 32.507931, 37.625820>,  <41.177914, 32.231861, 37.608936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888950, 32.507931, 37.625820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313826, -0.381654, 0.869398,
		0.616145, 0.614818, 0.492306,
		-0.722412, 0.690173, 0.042208,
		40.672226, 32.714981, 37.638481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191463, 32.395458, 38.205574>,  <41.177914, 32.231861, 37.608936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191463, 32.395458, 38.205574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819820, 32.518108, 38.122890>,  <40.596832, 32.591698, 38.073280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819820, 32.518108, 38.122890>,  <41.191463, 32.395458, 38.205574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819820, 32.518108, 38.122890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335720, -0.465019, 0.819176,
		0.155058, 0.830504, 0.534996,
		-0.929112, 0.306629, -0.206712,
		40.541088, 32.610096, 38.060879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940872, 32.998611, 38.652687>,  <41.191463, 32.395458, 38.205574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940872, 32.998611, 38.652687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608143, 32.813919, 38.529476>,  <40.408504, 32.703106, 38.455547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608143, 32.813919, 38.529476>,  <40.940872, 32.998611, 38.652687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608143, 32.813919, 38.529476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319734, -0.055029, 0.945908,
		-0.453703, 0.885313, -0.101856,
		-0.831820, -0.461728, -0.308031,
		40.358597, 32.675400, 38.437065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473415, 33.311581, 39.064274>,  <40.940872, 32.998611, 38.652687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473415, 33.311581, 39.064274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309269, 32.980007, 38.912239>,  <40.210781, 32.781063, 38.821018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309269, 32.980007, 38.912239>,  <40.473415, 33.311581, 39.064274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309269, 32.980007, 38.912239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330288, -0.253397, 0.909231,
		-0.850005, 0.498658, -0.169801,
		-0.410368, -0.828933, -0.380089,
		40.186157, 32.731327, 38.798214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919655, 33.175121, 39.410557>,  <40.473415, 33.311581, 39.064274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919655, 33.175121, 39.410557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907074, 32.828777, 39.210838>,  <39.899525, 32.620972, 39.091007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907074, 32.828777, 39.210838>,  <39.919655, 33.175121, 39.410557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907074, 32.828777, 39.210838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514950, -0.414106, 0.750562,
		-0.856643, 0.280722, -0.432849,
		-0.031454, -0.865859, -0.499298,
		39.897636, 32.569019, 39.061050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216171, 32.936413, 39.356403>,  <39.919655, 33.175121, 39.410557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216171, 32.936413, 39.356403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460800, 32.620342, 39.340405>,  <39.607578, 32.430698, 39.330803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460800, 32.620342, 39.340405>,  <39.216171, 32.936413, 39.356403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460800, 32.620342, 39.340405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538332, -0.452633, 0.710860,
		-0.579812, -0.413207, -0.702195,
		0.611569, -0.790179, -0.040000,
		39.644272, 32.383289, 39.328403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773796, 32.384174, 39.302078>,  <39.216171, 32.936413, 39.356403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773796, 32.384174, 39.302078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117371, 32.233082, 39.440380>,  <39.323517, 32.142426, 39.523361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117371, 32.233082, 39.440380>,  <38.773796, 32.384174, 39.302078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117371, 32.233082, 39.440380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506593, -0.528228, 0.681424,
		-0.074754, -0.760459, -0.645069,
		0.858938, -0.377726, 0.345756,
		39.375053, 32.119762, 39.544106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655849, 31.664185, 39.447746>,  <38.773796, 32.384174, 39.302078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655849, 31.664185, 39.447746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990715, 31.741158, 39.652542>,  <39.191635, 31.787340, 39.775421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990715, 31.741158, 39.652542>,  <38.655849, 31.664185, 39.447746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990715, 31.741158, 39.652542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314184, -0.597045, 0.738123,
		0.447720, -0.778786, -0.439363,
		0.837159, 0.192431, 0.511991,
		39.241863, 31.798887, 39.806141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012650, 31.028631, 39.649109>,  <38.655849, 31.664185, 39.447746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012650, 31.028631, 39.649109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138096, 31.304617, 39.910057>,  <39.213364, 31.470209, 40.066628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138096, 31.304617, 39.910057>,  <39.012650, 31.028631, 39.649109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138096, 31.304617, 39.910057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392040, -0.531660, 0.750761,
		0.864839, -0.491210, 0.103754,
		0.313620, 0.689964, 0.652374,
		39.232182, 31.511606, 40.105770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215912, 30.258205, 39.554340>,  <39.012650, 31.028631, 39.649109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215912, 30.258205, 39.554340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896214, 30.069578, 39.405296>,  <38.704395, 29.956402, 39.315872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896214, 30.069578, 39.405296>,  <39.215912, 30.258205, 39.554340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896214, 30.069578, 39.405296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217997, 0.350283, -0.910922,
		0.560080, -0.809274, -0.177161,
		-0.799242, -0.471568, -0.372606,
		38.656441, 29.928108, 39.293514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471161, 29.836523, 39.080959>,  <39.215912, 30.258205, 39.554340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471161, 29.836523, 39.080959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090084, 29.884668, 38.969326>,  <38.861439, 29.913555, 38.902348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090084, 29.884668, 38.969326>,  <39.471161, 29.836523, 39.080959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090084, 29.884668, 38.969326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293554, 0.126477, -0.947539,
		-0.078753, -0.984640, -0.155828,
		-0.952693, 0.120365, -0.279085,
		38.804276, 29.920778, 38.885601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379925, 29.388285, 38.553017>,  <39.471161, 29.836523, 39.080959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379925, 29.388285, 38.553017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097328, 29.664814, 38.492435>,  <38.927769, 29.830732, 38.456085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097328, 29.664814, 38.492435>,  <39.379925, 29.388285, 38.553017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097328, 29.664814, 38.492435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228764, 0.020564, -0.973265,
		-0.669726, -0.722252, -0.172679,
		-0.706494, 0.691324, -0.151453,
		38.885380, 29.872211, 38.446999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169785, 29.218630, 37.924519>,  <39.379925, 29.388285, 38.553017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169785, 29.218630, 37.924519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978840, 29.563835, 37.990654>,  <38.864273, 29.770958, 38.030334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978840, 29.563835, 37.990654>,  <39.169785, 29.218630, 37.924519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978840, 29.563835, 37.990654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080428, 0.230283, -0.969794,
		-0.875018, -0.449645, -0.179339,
		-0.477361, 0.863012, 0.165338,
		38.835632, 29.822739, 38.040257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680920, 29.258608, 37.451050>,  <39.169785, 29.218630, 37.924519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680920, 29.258608, 37.451050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747787, 29.638788, 37.555889>,  <38.787907, 29.866896, 37.618793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747787, 29.638788, 37.555889>,  <38.680920, 29.258608, 37.451050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747787, 29.638788, 37.555889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116102, 0.245013, -0.962543,
		-0.979068, 0.191338, -0.069391,
		0.167170, 0.950452, 0.262100,
		38.797939, 29.923923, 37.634518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361565, 29.683500, 37.041512>,  <38.680920, 29.258608, 37.451050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361565, 29.683500, 37.041512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608753, 29.962893, 37.185863>,  <38.757069, 30.130527, 37.272476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608753, 29.962893, 37.185863>,  <38.361565, 29.683500, 37.041512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608753, 29.962893, 37.185863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158494, 0.338913, -0.927372,
		-0.770056, 0.630290, 0.098736,
		0.617976, 0.698479, 0.360879,
		38.794147, 30.172436, 37.294128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068840, 30.228121, 36.777519>,  <38.361565, 29.683500, 37.041512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068840, 30.228121, 36.777519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452824, 30.317125, 36.845608>,  <38.683212, 30.370527, 36.886459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452824, 30.317125, 36.845608>,  <38.068840, 30.228121, 36.777519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452824, 30.317125, 36.845608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085854, 0.344703, -0.934777,
		-0.266672, 0.911959, 0.311796,
		0.959956, 0.222510, 0.170218,
		38.740810, 30.383879, 36.896675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148514, 30.945637, 36.693356>,  <38.068840, 30.228121, 36.777519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148514, 30.945637, 36.693356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509136, 30.782789, 36.634762>,  <38.725510, 30.685081, 36.599606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509136, 30.782789, 36.634762>,  <38.148514, 30.945637, 36.693356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509136, 30.782789, 36.634762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024949, 0.386908, -0.921781,
		0.431947, 0.827380, 0.358976,
		0.901554, -0.407117, -0.146481,
		38.779602, 30.660654, 36.590816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516777, 31.521200, 36.424889>,  <38.148514, 30.945637, 36.693356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516777, 31.521200, 36.424889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705017, 31.181414, 36.329433>,  <38.817959, 30.977541, 36.272160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705017, 31.181414, 36.329433>,  <38.516777, 31.521200, 36.424889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705017, 31.181414, 36.329433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280924, 0.400627, -0.872112,
		0.836434, 0.343374, 0.427169,
		0.470596, -0.849466, -0.238636,
		38.846195, 30.926575, 36.257843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171120, 31.686853, 36.243671>,  <38.516777, 31.521200, 36.424889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171120, 31.686853, 36.243671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118759, 31.324078, 36.083508>,  <39.087341, 31.106413, 35.987411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118759, 31.324078, 36.083508>,  <39.171120, 31.686853, 36.243671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118759, 31.324078, 36.083508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416843, 0.316096, -0.852247,
		0.899503, -0.278471, 0.336673,
		-0.130905, -0.906938, -0.400408,
		39.079487, 31.051996, 35.963387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840496, 31.426723, 35.876450>,  <39.171120, 31.686853, 36.243671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840496, 31.426723, 35.876450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546379, 31.201078, 35.726181>,  <39.369911, 31.065691, 35.636021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546379, 31.201078, 35.726181>,  <39.840496, 31.426723, 35.876450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546379, 31.201078, 35.726181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411199, 0.069315, -0.908906,
		0.538764, -0.822784, 0.180995,
		-0.735288, -0.564111, -0.375673,
		39.325794, 31.031845, 35.613480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149845, 30.916618, 35.391258>,  <39.840496, 31.426723, 35.876450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149845, 30.916618, 35.391258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764847, 30.949091, 35.287712>,  <39.533848, 30.968575, 35.225586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764847, 30.949091, 35.287712>,  <40.149845, 30.916618, 35.391258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764847, 30.949091, 35.287712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269279, 0.169709, -0.947991,
		-0.033030, -0.982144, -0.185206,
		-0.962495, 0.081185, -0.258865,
		39.476097, 30.973446, 35.210052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.729099, 27.666170, 42.144287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.391182, 27.845530, 42.027485>,  <37.188431, 27.953144, 41.957405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.391182, 27.845530, 42.027485>,  <37.729099, 27.666170, 42.144287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391182, 27.845530, 42.027485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448220, 0.294907, -0.843877,
		-0.292277, -0.843783, -0.450115,
		-0.844792, 0.448397, -0.292005,
		37.137745, 27.980049, 41.939884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475365, 27.382303, 41.540653>,  <37.729099, 27.666170, 42.144287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475365, 27.382303, 41.540653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327175, 27.753660, 41.552208>,  <37.238262, 27.976475, 41.559139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327175, 27.753660, 41.552208>,  <37.475365, 27.382303, 41.540653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327175, 27.753660, 41.552208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405684, 0.189707, -0.894109,
		-0.835564, -0.319529, -0.446916,
		-0.370477, 0.928393, 0.028885,
		37.216034, 28.032179, 41.560875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410629, 27.542969, 40.865993>,  <37.475365, 27.382303, 41.540653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410629, 27.542969, 40.865993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.343918, 27.894783, 41.044250>,  <37.303890, 28.105871, 41.151207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.343918, 27.894783, 41.044250>,  <37.410629, 27.542969, 40.865993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343918, 27.894783, 41.044250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442555, 0.470666, -0.763295,
		-0.881096, 0.069921, -0.467741,
		-0.166780, 0.879536, 0.445645,
		37.293884, 28.158644, 41.177944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284355, 27.999954, 40.302967>,  <37.410629, 27.542969, 40.865993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284355, 27.999954, 40.302967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327438, 28.273401, 40.591705>,  <37.353291, 28.437469, 40.764950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327438, 28.273401, 40.591705>,  <37.284355, 27.999954, 40.302967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327438, 28.273401, 40.591705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408371, 0.631570, -0.659054,
		-0.906439, 0.365769, -0.211143,
		0.107710, 0.683617, 0.721849,
		37.359753, 28.478487, 40.808262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850964, 28.692148, 40.305695>,  <37.284355, 27.999954, 40.302967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850964, 28.692148, 40.305695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.207233, 28.746330, 40.479294>,  <37.420994, 28.778839, 40.583454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.207233, 28.746330, 40.479294>,  <36.850964, 28.692148, 40.305695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207233, 28.746330, 40.479294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308794, 0.520392, -0.796140,
		-0.333692, 0.843116, 0.421670,
		0.890671, 0.135456, 0.434000,
		37.474434, 28.786966, 40.609493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006516, 29.306005, 40.046074>,  <36.850964, 28.692148, 40.305695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006516, 29.306005, 40.046074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.354652, 29.203985, 40.214577>,  <37.563534, 29.142773, 40.315678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.354652, 29.203985, 40.214577>,  <37.006516, 29.306005, 40.046074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354652, 29.203985, 40.214577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483377, 0.605929, -0.631820,
		-0.094109, 0.753525, 0.650648,
		0.870339, -0.255048, 0.421260,
		37.615753, 29.127470, 40.340954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289139, 29.960606, 40.212982>,  <37.006516, 29.306005, 40.046074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289139, 29.960606, 40.212982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.585407, 29.691936, 40.206570>,  <37.763168, 29.530735, 40.202721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.585407, 29.691936, 40.206570>,  <37.289139, 29.960606, 40.212982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585407, 29.691936, 40.206570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474927, 0.540298, -0.694638,
		0.475232, 0.506886, 0.719181,
		0.740675, -0.671673, -0.016033,
		37.807610, 29.490435, 40.201759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994022, 30.310251, 40.241173>,  <37.289139, 29.960606, 40.212982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994022, 30.310251, 40.241173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.065125, 29.951529, 40.079117>,  <38.107784, 29.736296, 39.981884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.065125, 29.951529, 40.079117>,  <37.994022, 30.310251, 40.241173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065125, 29.951529, 40.079117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480796, 0.438362, -0.759391,
		0.858626, -0.059804, 0.509102,
		0.177756, -0.896807, -0.405142,
		38.118450, 29.682486, 39.957573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622070, 30.443987, 39.951488>,  <37.994022, 30.310251, 40.241173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622070, 30.443987, 39.951488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.467812, 30.120657, 39.773548>,  <38.375256, 29.926659, 39.666786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.467812, 30.120657, 39.773548>,  <38.622070, 30.443987, 39.951488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467812, 30.120657, 39.773548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445122, 0.259325, -0.857098,
		0.808174, -0.528546, 0.259796,
		-0.385644, -0.808325, -0.444847,
		38.352119, 29.878159, 39.640095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315750, 30.539896, 40.237324>,  <38.622070, 30.443987, 39.951488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315750, 30.539896, 40.237324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.254028, 30.903774, 40.391541>,  <39.216995, 31.122101, 40.484070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.254028, 30.903774, 40.391541>,  <39.315750, 30.539896, 40.237324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254028, 30.903774, 40.391541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504926, -0.408017, 0.760639,
		0.849259, -0.077304, 0.522287,
		-0.154301, 0.909696, 0.385545,
		39.207737, 31.176683, 40.507206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476299, 30.493092, 40.939789>,  <39.315750, 30.539896, 40.237324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476299, 30.493092, 40.939789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.269638, 30.834917, 40.918686>,  <39.145641, 31.040012, 40.906025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.269638, 30.834917, 40.918686>,  <39.476299, 30.493092, 40.939789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269638, 30.834917, 40.918686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342707, -0.149946, 0.927399,
		0.784613, 0.497226, 0.370336,
		-0.516657, 0.854566, -0.052753,
		39.114639, 31.091288, 40.902859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630016, 30.783430, 41.604557>,  <39.476299, 30.493092, 40.939789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630016, 30.783430, 41.604557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.308582, 30.985308, 41.478363>,  <39.115723, 31.106434, 41.402645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.308582, 30.985308, 41.478363>,  <39.630016, 30.783430, 41.604557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308582, 30.985308, 41.478363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375368, -0.018396, 0.926693,
		0.461892, 0.863103, 0.204229,
		-0.803588, 0.504693, -0.315484,
		39.067505, 31.136715, 41.383717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526337, 31.384212, 42.069130>,  <39.630016, 30.783430, 41.604557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526337, 31.384212, 42.069130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.178726, 31.277664, 41.902351>,  <38.970161, 31.213736, 41.802284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.178726, 31.277664, 41.902351>,  <39.526337, 31.384212, 42.069130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178726, 31.277664, 41.902351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444513, 0.050259, 0.894361,
		-0.217275, 0.962560, -0.162081,
		-0.869022, -0.266370, -0.416950,
		38.918018, 31.197754, 41.777267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972523, 31.868132, 42.393845>,  <39.526337, 31.384212, 42.069130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972523, 31.868132, 42.393845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.787663, 31.547728, 42.241634>,  <38.676746, 31.355486, 42.150311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.787663, 31.547728, 42.241634>,  <38.972523, 31.868132, 42.393845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787663, 31.547728, 42.241634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594848, -0.038229, 0.802928,
		-0.657701, 0.597429, -0.458812,
		-0.462153, -0.801010, -0.380523,
		38.649017, 31.307425, 42.127476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274643, 31.976353, 42.610699>,  <38.972523, 31.868132, 42.393845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274643, 31.976353, 42.610699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.293915, 31.587334, 42.519630>,  <38.305477, 31.353922, 42.464989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.293915, 31.587334, 42.519630>,  <38.274643, 31.976353, 42.610699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293915, 31.587334, 42.519630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628594, -0.206660, 0.749774,
		-0.776240, 0.106986, -0.621294,
		0.048182, -0.972546, -0.227668,
		38.308369, 31.295570, 42.451328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630119, 31.840223, 42.697342>,  <38.274643, 31.976353, 42.610699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630119, 31.840223, 42.697342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.836006, 31.498291, 42.723640>,  <37.959538, 31.293131, 42.739418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.836006, 31.498291, 42.723640>,  <37.630119, 31.840223, 42.697342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836006, 31.498291, 42.723640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576369, -0.288240, 0.764668,
		-0.634713, -0.431484, -0.641062,
		0.514722, -0.854833, 0.065744,
		37.990421, 31.241840, 42.743362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151035, 31.312761, 42.580112>,  <37.630119, 31.840223, 42.697342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151035, 31.312761, 42.580112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.460930, 31.146664, 42.770844>,  <37.646866, 31.047005, 42.885281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.460930, 31.146664, 42.770844>,  <37.151035, 31.312761, 42.580112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460930, 31.146664, 42.770844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622386, -0.367883, 0.690867,
		-0.111460, -0.832008, -0.543452,
		0.774734, -0.415241, 0.476826,
		37.693352, 31.022091, 42.913891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999237, 30.606787, 42.678093>,  <37.151035, 31.312761, 42.580112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999237, 30.606787, 42.678093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.258759, 30.692070, 42.970284>,  <37.414471, 30.743240, 43.145599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.258759, 30.692070, 42.970284>,  <36.999237, 30.606787, 42.678093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258759, 30.692070, 42.970284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541320, -0.545350, 0.639973,
		0.534814, -0.810638, -0.238411,
		0.648804, 0.213210, 0.730476,
		37.453400, 30.756033, 43.189426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983822, 30.022711, 43.100422>,  <36.999237, 30.606787, 42.678093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983822, 30.022711, 43.100422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203098, 30.245678, 43.349831>,  <37.334663, 30.379457, 43.499474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203098, 30.245678, 43.349831>,  <36.983822, 30.022711, 43.100422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203098, 30.245678, 43.349831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434575, -0.447133, 0.781804,
		0.714587, -0.699540, -0.002873,
		0.548188, 0.557419, 0.623518,
		37.367554, 30.412903, 43.536884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269333, 29.558714, 43.542969>,  <36.983822, 30.022711, 43.100422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269333, 29.558714, 43.542969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.263832, 29.919863, 43.714844>,  <37.260532, 30.136551, 43.817970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.263832, 29.919863, 43.714844>,  <37.269333, 29.558714, 43.542969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263832, 29.919863, 43.714844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529671, -0.371066, 0.762731,
		0.848091, -0.217102, 0.483330,
		-0.013757, 0.902871, 0.429691,
		37.259705, 30.190723, 43.843750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712330, 29.441027, 44.214050>,  <37.269333, 29.558714, 43.542969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712330, 29.441027, 44.214050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.494308, 29.769812, 44.280132>,  <37.363495, 29.967083, 44.319782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.494308, 29.769812, 44.280132>,  <37.712330, 29.441027, 44.214050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494308, 29.769812, 44.280132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285312, -0.367140, 0.885328,
		0.788359, 0.435418, 0.434628,
		-0.545057, 0.821961, 0.165208,
		37.330791, 30.016399, 44.329693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857044, 29.589663, 44.890053>,  <37.712330, 29.441027, 44.214050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857044, 29.589663, 44.890053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517750, 29.780115, 44.797279>,  <37.314171, 29.894386, 44.741615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517750, 29.780115, 44.797279>,  <37.857044, 29.589663, 44.890053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517750, 29.780115, 44.797279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387621, -0.259717, 0.884476,
		0.360891, 0.840147, 0.404860,
		-0.848238, 0.476131, -0.231929,
		37.263279, 29.922955, 44.727699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735291, 29.998722, 45.411060>,  <37.857044, 29.589663, 44.890053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735291, 29.998722, 45.411060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.371075, 29.960222, 45.250233>,  <37.152546, 29.937122, 45.153736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.371075, 29.960222, 45.250233>,  <37.735291, 29.998722, 45.411060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371075, 29.960222, 45.250233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363224, -0.278248, 0.889183,
		-0.197458, 0.955675, 0.218395,
		-0.910538, -0.096250, -0.402066,
		37.097912, 29.931347, 45.129612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.235544, 30.704420, 43.626011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.547970, 30.461512, 43.567829>,  <31.735426, 30.315767, 43.532921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.547970, 30.461512, 43.567829>,  <31.235544, 30.704420, 43.626011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547970, 30.461512, 43.567829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301326, 0.570559, -0.763980,
		0.546935, 0.552888, 0.628631,
		0.781066, -0.607271, -0.145459,
		31.782290, 30.279331, 43.524193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837812, 31.121841, 43.453152>,  <31.235544, 30.704420, 43.626011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837812, 31.121841, 43.453152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.940722, 30.762962, 43.309570>,  <32.002468, 30.547634, 43.223423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.940722, 30.762962, 43.309570>,  <31.837812, 31.121841, 43.453152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940722, 30.762962, 43.309570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376578, 0.435176, -0.817809,
		0.889943, 0.075228, 0.449825,
		0.257275, -0.897197, -0.358952,
		32.017902, 30.493803, 43.201885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510365, 31.157623, 43.258133>,  <31.837812, 31.121841, 43.453152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510365, 31.157623, 43.258133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.391659, 30.842505, 43.042240>,  <32.320435, 30.653433, 42.912704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.391659, 30.842505, 43.042240>,  <32.510365, 31.157623, 43.258133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391659, 30.842505, 43.042240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406817, 0.407046, -0.817810,
		0.863963, -0.462266, 0.199694,
		-0.296761, -0.787797, -0.539731,
		32.302631, 30.606165, 42.880322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012333, 31.183735, 42.897106>,  <32.510365, 31.157623, 43.258133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012333, 31.183735, 42.897106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.746162, 30.969297, 42.689335>,  <32.586460, 30.840635, 42.564674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.746162, 30.969297, 42.689335>,  <33.012333, 31.183735, 42.897106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746162, 30.969297, 42.689335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370765, 0.366573, -0.853321,
		0.647869, -0.760411, -0.045163,
		-0.665431, -0.536096, -0.519426,
		32.546532, 30.808468, 42.533508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400520, 30.921804, 42.353638>,  <33.012333, 31.183735, 42.897106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400520, 30.921804, 42.353638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.018459, 30.877378, 42.243839>,  <32.789223, 30.850723, 42.177959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.018459, 30.877378, 42.243839>,  <33.400520, 30.921804, 42.353638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018459, 30.877378, 42.243839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232240, 0.294132, -0.927120,
		0.183710, -0.949290, -0.255146,
		-0.955152, -0.111066, -0.274498,
		32.731915, 30.844059, 42.161491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472351, 30.723450, 41.716370>,  <33.400520, 30.921804, 42.353638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472351, 30.723450, 41.716370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.091869, 30.845634, 41.698936>,  <32.863579, 30.918945, 41.688477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.091869, 30.845634, 41.698936>,  <33.472351, 30.723450, 41.716370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091869, 30.845634, 41.698936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114092, 0.216957, -0.969491,
		-0.286689, -0.927158, -0.241221,
		-0.951206, 0.305464, -0.043582,
		32.806507, 30.937273, 41.685863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156639, 30.412392, 41.103172>,  <33.472351, 30.723450, 41.716370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156639, 30.412392, 41.103172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.906330, 30.719542, 41.157990>,  <32.756145, 30.903831, 41.190880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.906330, 30.719542, 41.157990>,  <33.156639, 30.412392, 41.103172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906330, 30.719542, 41.157990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012122, 0.185250, -0.982617,
		-0.779915, -0.613229, -0.125232,
		-0.625768, 0.767875, 0.137045,
		32.718601, 30.949903, 41.199104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654114, 30.364634, 40.580429>,  <33.156639, 30.412392, 41.103172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654114, 30.364634, 40.580429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.640762, 30.744696, 40.704422>,  <32.632751, 30.972733, 40.778816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.640762, 30.744696, 40.704422>,  <32.654114, 30.364634, 40.580429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640762, 30.744696, 40.704422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044037, 0.308451, -0.950220,
		-0.998472, -0.045371, 0.031545,
		-0.033382, 0.950158, 0.309978,
		32.630749, 31.029743, 40.797417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245499, 30.683657, 40.055721>,  <32.654114, 30.364634, 40.580429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245499, 30.683657, 40.055721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.425083, 30.987316, 40.244244>,  <32.532833, 31.169512, 40.357357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.425083, 30.987316, 40.244244>,  <32.245499, 30.683657, 40.055721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425083, 30.987316, 40.244244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085843, 0.488366, -0.868406,
		-0.889417, 0.430340, 0.154091,
		0.448963, 0.759148, 0.471303,
		32.559772, 31.215061, 40.385635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929272, 31.237869, 39.879051>,  <32.245499, 30.683657, 40.055721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929272, 31.237869, 39.879051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.262032, 31.424179, 39.999714>,  <32.461689, 31.535965, 40.072113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.262032, 31.424179, 39.999714>,  <31.929272, 31.237869, 39.879051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262032, 31.424179, 39.999714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096602, 0.413747, -0.905252,
		-0.546456, 0.782218, 0.299200,
		0.831898, 0.465777, 0.301658,
		32.511600, 31.563911, 40.090210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897842, 31.861305, 39.695457>,  <31.929272, 31.237869, 39.879051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897842, 31.861305, 39.695457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.287434, 31.776297, 39.726963>,  <32.521187, 31.725290, 39.745869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.287434, 31.776297, 39.726963>,  <31.897842, 31.861305, 39.695457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287434, 31.776297, 39.726963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137585, 0.278215, -0.950614,
		0.180113, 0.936712, 0.300215,
		0.973976, -0.212523, 0.078767,
		32.579628, 31.712540, 39.750591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141033, 32.414780, 39.417900>,  <31.897842, 31.861305, 39.695457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141033, 32.414780, 39.417900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.499382, 32.237137, 39.423306>,  <32.714390, 32.130550, 39.426548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.499382, 32.237137, 39.423306>,  <32.141033, 32.414780, 39.417900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499382, 32.237137, 39.423306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255067, 0.489149, -0.834071,
		0.363810, 0.750666, 0.551492,
		0.895870, -0.444110, 0.013513,
		32.768143, 32.103905, 39.427361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705158, 32.936039, 39.352634>,  <32.141033, 32.414780, 39.417900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705158, 32.936039, 39.352634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.852818, 32.583694, 39.234104>,  <32.941414, 32.372288, 39.162987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.852818, 32.583694, 39.234104>,  <32.705158, 32.936039, 39.352634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852818, 32.583694, 39.234104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299675, 0.414633, -0.859229,
		0.879729, 0.228384, 0.417034,
		0.369151, -0.880863, -0.296324,
		32.963562, 32.319435, 39.145206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330074, 33.105148, 39.160324>,  <32.705158, 32.936039, 39.352634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330074, 33.105148, 39.160324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.255939, 32.762524, 38.967678>,  <33.211460, 32.556950, 38.852089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.255939, 32.762524, 38.967678>,  <33.330074, 33.105148, 39.160324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255939, 32.762524, 38.967678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315601, 0.412260, -0.854657,
		0.930616, -0.310398, 0.193925,
		-0.185336, -0.856560, -0.481618,
		33.200340, 32.505554, 38.823193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958805, 33.324684, 39.586849>,  <33.330074, 33.105148, 39.160324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958805, 33.324684, 39.586849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.126259, 33.657349, 39.732777>,  <34.226730, 33.856945, 39.820332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.126259, 33.657349, 39.732777>,  <33.958805, 33.324684, 39.586849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126259, 33.657349, 39.732777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268236, -0.270554, 0.924581,
		0.867638, -0.484916, 0.109818,
		0.418632, 0.831659, 0.364815,
		34.251850, 33.906845, 39.842220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358166, 33.145874, 40.174240>,  <33.958805, 33.324684, 39.586849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358166, 33.145874, 40.174240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.275318, 33.534046, 40.223831>,  <34.225609, 33.766949, 40.253586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.275318, 33.534046, 40.223831>,  <34.358166, 33.145874, 40.174240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275318, 33.534046, 40.223831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261145, -0.176972, 0.948939,
		0.942818, 0.164167, 0.290077,
		-0.207119, 0.970428, 0.123981,
		34.213181, 33.825176, 40.261024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859921, 33.365910, 40.628353>,  <34.358166, 33.145874, 40.174240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859921, 33.365910, 40.628353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.546364, 33.612465, 40.658237>,  <34.358231, 33.760399, 40.676167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.546364, 33.612465, 40.658237>,  <34.859921, 33.365910, 40.628353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546364, 33.612465, 40.658237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052951, -0.186247, 0.981075,
		0.618639, 0.765098, 0.178636,
		-0.783889, 0.616390, 0.074707,
		34.311195, 33.797382, 40.680649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944752, 33.849087, 41.192261>,  <34.859921, 33.365910, 40.628353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944752, 33.849087, 41.192261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.550201, 33.854137, 41.126652>,  <34.313473, 33.857166, 41.087288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.550201, 33.854137, 41.126652>,  <34.944752, 33.849087, 41.192261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550201, 33.854137, 41.126652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164273, -0.128872, 0.977960,
		-0.008788, 0.991581, 0.129191,
		-0.986376, 0.012628, -0.164023,
		34.254288, 33.857925, 41.077446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705517, 34.353523, 41.707424>,  <34.944752, 33.849087, 41.192261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705517, 34.353523, 41.707424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410831, 34.099232, 41.615250>,  <34.234020, 33.946655, 41.559944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410831, 34.099232, 41.615250>,  <34.705517, 34.353523, 41.707424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410831, 34.099232, 41.615250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038591, -0.300691, 0.952940,
		-0.675100, 0.710939, 0.196991,
		-0.736716, -0.635728, -0.230433,
		34.189816, 33.908512, 41.546120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313473, 34.352001, 42.294209>,  <34.705517, 34.353523, 41.707424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313473, 34.352001, 42.294209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.112282, 34.053650, 42.119541>,  <33.991566, 33.874638, 42.014740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.112282, 34.053650, 42.119541>,  <34.313473, 34.352001, 42.294209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112282, 34.053650, 42.119541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288698, -0.331222, 0.898301,
		-0.814658, 0.577890, -0.048737,
		-0.502977, -0.745879, -0.436669,
		33.961388, 33.829887, 41.988541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583527, 34.325882, 42.613953>,  <34.313473, 34.352001, 42.294209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583527, 34.325882, 42.613953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.676865, 33.957237, 42.489895>,  <33.732868, 33.736050, 42.415459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.676865, 33.957237, 42.489895>,  <33.583527, 34.325882, 42.613953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676865, 33.957237, 42.489895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262058, -0.366750, 0.892648,
		-0.936416, -0.127020, -0.327094,
		0.233346, -0.921607, -0.310144,
		33.746868, 33.680756, 42.396851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907707, 33.894176, 42.794601>,  <33.583527, 34.325882, 42.613953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907707, 33.894176, 42.794601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.224030, 33.655773, 42.738892>,  <33.413822, 33.512730, 42.705467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.224030, 33.655773, 42.738892>,  <32.907707, 33.894176, 42.794601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224030, 33.655773, 42.738892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051969, -0.292113, 0.954971,
		-0.609854, -0.747961, -0.261979,
		0.790808, -0.596007, -0.139275,
		33.461273, 33.476971, 42.697109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699821, 33.074028, 42.829391>,  <32.907707, 33.894176, 42.794601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699821, 33.074028, 42.829391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.092648, 33.121689, 42.887833>,  <33.328342, 33.150284, 42.922897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.092648, 33.121689, 42.887833>,  <32.699821, 33.074028, 42.829391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092648, 33.121689, 42.887833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071905, -0.479676, 0.874495,
		0.174278, -0.869319, -0.462507,
		0.982068, 0.119149, 0.146105,
		33.387268, 33.157433, 42.931664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845051, 32.422722, 42.996857>,  <32.699821, 33.074028, 42.829391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845051, 32.422722, 42.996857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.124702, 32.673141, 43.135010>,  <33.292492, 32.823391, 43.217899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.124702, 32.673141, 43.135010>,  <32.845051, 32.422722, 42.996857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124702, 32.673141, 43.135010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076608, -0.414682, 0.906736,
		0.710880, -0.660383, -0.241956,
		0.699128, 0.626045, 0.345380,
		33.334442, 32.860954, 43.238625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391273, 31.958832, 43.239799>,  <32.845051, 32.422722, 42.996857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391273, 31.958832, 43.239799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.383305, 32.316021, 43.419666>,  <33.378521, 32.530334, 43.527588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.383305, 32.316021, 43.419666>,  <33.391273, 31.958832, 43.239799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383305, 32.316021, 43.419666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122518, -0.448546, 0.885322,
		0.992266, -0.037450, 0.118344,
		-0.019927, 0.892975, 0.449666,
		33.377327, 32.583912, 43.554565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960636, 31.853563, 43.707047>,  <33.391273, 31.958832, 43.239799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960636, 31.853563, 43.707047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.732903, 32.163704, 43.816368>,  <33.596264, 32.349789, 43.881962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.732903, 32.163704, 43.816368>,  <33.960636, 31.853563, 43.707047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732903, 32.163704, 43.816368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166600, -0.434356, 0.885200,
		0.805049, 0.458441, 0.376466,
		-0.569333, 0.775349, 0.273301,
		33.562103, 32.396309, 43.898357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110783, 31.847374, 44.350262>,  <33.960636, 31.853563, 43.707047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110783, 31.847374, 44.350262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.810780, 32.110054, 44.381859>,  <33.630779, 32.267662, 44.400818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.810780, 32.110054, 44.381859>,  <34.110783, 31.847374, 44.350262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810780, 32.110054, 44.381859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173544, -0.310620, 0.934557,
		0.638260, 0.687214, 0.346932,
		-0.750005, 0.656698, 0.078995,
		33.585777, 32.307064, 44.405556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220219, 32.250771, 44.888775>,  <34.110783, 31.847374, 44.350262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220219, 32.250771, 44.888775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.827988, 32.214981, 44.818966>,  <33.592648, 32.193508, 44.777081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.827988, 32.214981, 44.818966>,  <34.220219, 32.250771, 44.888775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827988, 32.214981, 44.818966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121340, -0.422348, 0.898275,
		-0.154081, 0.902007, 0.403289,
		-0.980579, -0.089472, -0.174526,
		33.533813, 32.188141, 44.766609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554947, 32.733509, 45.316433>,  <34.220219, 32.250771, 44.888775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554947, 32.733509, 45.316433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.907566, 32.723797, 45.505024>,  <35.119137, 32.717968, 45.618179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.907566, 32.723797, 45.505024>,  <34.554947, 32.733509, 45.316433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907566, 32.723797, 45.505024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259354, 0.859389, -0.440666,
		-0.394480, 0.510746, 0.763888,
		0.881545, -0.024284, 0.471475,
		35.172031, 32.716511, 45.646465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656158, 33.404312, 45.765450>,  <34.554947, 32.733509, 45.316433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656158, 33.404312, 45.765450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.002655, 33.238708, 45.653572>,  <35.210552, 33.139347, 45.586445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.002655, 33.238708, 45.653572>,  <34.656158, 33.404312, 45.765450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002655, 33.238708, 45.653572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152838, 0.752540, -0.640566,
		0.475683, 0.512133, 0.715154,
		0.866237, -0.414009, -0.279697,
		35.262527, 33.114506, 45.569664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015480, 33.962635, 45.596722>,  <34.656158, 33.404312, 45.765450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015480, 33.962635, 45.596722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.277020, 33.705276, 45.437466>,  <35.433945, 33.550861, 45.341911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.277020, 33.705276, 45.437466>,  <35.015480, 33.962635, 45.596722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277020, 33.705276, 45.437466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349204, 0.723424, -0.595579,
		0.671217, 0.250389, 0.697691,
		0.653853, -0.643399, -0.398138,
		35.473175, 33.512257, 45.318024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700539, 34.305038, 45.564598>,  <35.015480, 33.962635, 45.596722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700539, 34.305038, 45.564598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.722580, 34.018364, 45.286510>,  <35.735806, 33.846359, 45.119659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.722580, 34.018364, 45.286510>,  <35.700539, 34.305038, 45.564598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722580, 34.018364, 45.286510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470282, 0.632838, -0.615103,
		0.880794, -0.293053, 0.371916,
		0.055105, -0.716684, -0.695217,
		35.739113, 33.803360, 45.077946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332413, 34.441586, 45.124088>,  <35.700539, 34.305038, 45.564598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332413, 34.441586, 45.124088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107853, 34.209000, 44.888554>,  <35.973118, 34.069450, 44.747234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107853, 34.209000, 44.888554>,  <36.332413, 34.441586, 45.124088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107853, 34.209000, 44.888554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379505, 0.451418, -0.807588,
		0.735393, -0.676849, -0.032760,
		-0.561403, -0.581461, -0.588837,
		35.939430, 34.034561, 44.711903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777344, 34.237038, 44.430634>,  <36.332413, 34.441586, 45.124088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777344, 34.237038, 44.430634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.405960, 34.137234, 44.320572>,  <36.183128, 34.077351, 44.254536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.405960, 34.137234, 44.320572>,  <36.777344, 34.237038, 44.430634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405960, 34.137234, 44.320572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200690, 0.286353, -0.936870,
		0.312561, -0.925063, -0.215789,
		-0.928455, -0.249522, -0.275154,
		36.127422, 34.062378, 44.238026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811672, 33.597450, 43.937214>,  <36.777344, 34.237038, 44.430634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811672, 33.597450, 43.937214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.479870, 33.812714, 43.877472>,  <36.280788, 33.941872, 43.841625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.479870, 33.812714, 43.877472>,  <36.811672, 33.597450, 43.937214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479870, 33.812714, 43.877472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312962, 0.226400, -0.922387,
		-0.462578, -0.811866, -0.356223,
		-0.829503, 0.538161, -0.149355,
		36.231018, 33.974163, 43.832664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722870, 33.411976, 43.305649>,  <36.811672, 33.597450, 43.937214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722870, 33.411976, 43.305649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.504265, 33.745079, 43.341061>,  <36.373100, 33.944942, 43.362309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.504265, 33.745079, 43.341061>,  <36.722870, 33.411976, 43.305649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504265, 33.745079, 43.341061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119835, 0.182392, -0.975896,
		-0.828831, -0.522732, -0.199473,
		-0.546515, 0.832757, 0.088531,
		36.340309, 33.994907, 43.367619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244843, 33.414265, 42.781536>,  <36.722870, 33.411976, 43.305649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244843, 33.414265, 42.781536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347919, 33.774689, 42.921070>,  <36.409767, 33.990944, 43.004791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347919, 33.774689, 42.921070>,  <36.244843, 33.414265, 42.781536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347919, 33.774689, 42.921070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147975, 0.319963, -0.935803,
		-0.954829, 0.292769, -0.050882,
		0.257693, 0.901061, 0.348832,
		36.425228, 34.045006, 43.025719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839832, 33.777367, 42.353676>,  <36.244843, 33.414265, 42.781536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839832, 33.777367, 42.353676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.136852, 33.998550, 42.504860>,  <36.315063, 34.131260, 42.595570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.136852, 33.998550, 42.504860>,  <35.839832, 33.777367, 42.353676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136852, 33.998550, 42.504860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166825, 0.393830, -0.903918,
		-0.648679, 0.734260, 0.200193,
		0.742552, 0.552956, 0.377963,
		36.359619, 34.164436, 42.618248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723751, 34.505051, 42.153828>,  <35.839832, 33.777367, 42.353676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723751, 34.505051, 42.153828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.113369, 34.452057, 42.227238>,  <36.347141, 34.420261, 42.271282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.113369, 34.452057, 42.227238>,  <35.723751, 34.505051, 42.153828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113369, 34.452057, 42.227238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218697, 0.341835, -0.913959,
		0.058353, 0.930374, 0.361937,
		0.974047, -0.132487, 0.183523,
		36.405582, 34.412312, 42.282295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955017, 35.026760, 41.941246>,  <35.723751, 34.505051, 42.153828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955017, 35.026760, 41.941246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.289200, 34.808014, 41.962978>,  <36.489708, 34.676765, 41.976017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.289200, 34.808014, 41.962978>,  <35.955017, 35.026760, 41.941246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289200, 34.808014, 41.962978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357249, 0.465318, -0.809847,
		0.417595, 0.696002, 0.584119,
		0.835456, -0.546864, 0.054331,
		36.539837, 34.643955, 41.979279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453083, 35.432644, 41.860287>,  <35.955017, 35.026760, 41.941246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453083, 35.432644, 41.860287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.618984, 35.081223, 41.765522>,  <36.718525, 34.870369, 41.708664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.618984, 35.081223, 41.765522>,  <36.453083, 35.432644, 41.860287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618984, 35.081223, 41.765522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430572, 0.418859, -0.799478,
		0.801615, 0.229578, 0.552003,
		0.414754, -0.878550, -0.236914,
		36.743412, 34.817657, 41.694447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126034, 35.605309, 41.558567>,  <36.453083, 35.432644, 41.860287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126034, 35.605309, 41.558567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.113152, 35.218906, 41.455963>,  <37.105423, 34.987064, 41.394402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.113152, 35.218906, 41.455963>,  <37.126034, 35.605309, 41.558567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113152, 35.218906, 41.455963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524244, 0.202177, -0.827220,
		0.850959, -0.161113, 0.499912,
		-0.032205, -0.966006, -0.256507,
		37.103489, 34.929104, 41.379009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.839268, 30.219584, 40.828873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.477154, 30.234924, 40.998100>,  <29.259886, 30.244129, 41.099636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.477154, 30.234924, 40.998100>,  <29.839268, 30.219584, 40.828873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477154, 30.234924, 40.998100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405706, 0.217201, -0.887821,
		-0.125940, -0.975373, -0.181070,
		-0.905286, 0.038351, 0.423069,
		29.205568, 30.246429, 41.125019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360317, 30.013285, 40.308537>,  <29.839268, 30.219584, 40.828873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360317, 30.013285, 40.308537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131613, 30.224909, 40.559353>,  <28.994390, 30.351883, 40.709843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131613, 30.224909, 40.559353>,  <29.360317, 30.013285, 40.308537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131613, 30.224909, 40.559353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577994, 0.282655, -0.765525,
		-0.582247, -0.800125, 0.144183,
		-0.571761, 0.529062, 0.627043,
		28.960085, 30.383627, 40.747467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647570, 29.946424, 39.943157>,  <29.360317, 30.013285, 40.308537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647570, 29.946424, 39.943157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.637415, 30.240402, 40.214218>,  <28.631321, 30.416788, 40.376854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.637415, 30.240402, 40.214218>,  <28.647570, 29.946424, 39.943157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637415, 30.240402, 40.214218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642961, 0.507058, -0.574015,
		-0.765478, -0.450277, 0.459666,
		-0.025388, 0.734944, 0.677653,
		28.629799, 30.460886, 40.417515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934040, 30.083956, 40.000736>,  <28.647570, 29.946424, 39.943157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934040, 30.083956, 40.000736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.128809, 30.409164, 40.128422>,  <28.245670, 30.604290, 40.205032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.128809, 30.409164, 40.128422>,  <27.934040, 30.083956, 40.000736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128809, 30.409164, 40.128422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579534, 0.574159, -0.578344,
		-0.653487, 0.096614, 0.750746,
		0.486924, 0.813024, 0.319215,
		28.274885, 30.653072, 40.224186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374880, 30.524399, 40.182083>,  <27.934040, 30.083956, 40.000736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374880, 30.524399, 40.182083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.694313, 30.763779, 40.156399>,  <27.885973, 30.907408, 40.140987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.694313, 30.763779, 40.156399>,  <27.374880, 30.524399, 40.182083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.694313, 30.763779, 40.156399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499799, 0.599909, -0.624748,
		-0.335362, 0.531004, 0.778182,
		0.798582, 0.598451, -0.064208,
		27.933887, 30.943314, 40.137135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059105, 31.235956, 40.144493>,  <27.374880, 30.524399, 40.182083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059105, 31.235956, 40.144493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.437952, 31.257275, 40.017921>,  <27.665260, 31.270065, 39.941978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.437952, 31.257275, 40.017921>,  <27.059105, 31.235956, 40.144493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437952, 31.257275, 40.017921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272769, 0.653105, -0.706435,
		0.169013, 0.755389, 0.633105,
		0.947117, 0.053295, -0.316430,
		27.722088, 31.273264, 39.922993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202040, 31.975168, 40.050785>,  <27.059105, 31.235956, 40.144493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202040, 31.975168, 40.050785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.453091, 31.768856, 39.817528>,  <27.603722, 31.645069, 39.677574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.453091, 31.768856, 39.817528>,  <27.202040, 31.975168, 40.050785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453091, 31.768856, 39.817528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117040, 0.678020, -0.725665,
		0.769666, 0.523698, 0.365177,
		0.627627, -0.515780, -0.583143,
		27.641378, 31.614122, 39.642586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549505, 32.463314, 39.678211>,  <27.202040, 31.975168, 40.050785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549505, 32.463314, 39.678211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.663614, 32.159611, 39.444241>,  <27.732079, 31.977388, 39.303856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.663614, 32.159611, 39.444241>,  <27.549505, 32.463314, 39.678211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663614, 32.159611, 39.444241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007280, 0.608554, -0.793479,
		0.958419, 0.230615, 0.168076,
		0.285272, -0.759262, -0.584929,
		27.749195, 31.931831, 39.268761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167892, 32.639259, 39.145424>,  <27.549505, 32.463314, 39.678211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167892, 32.639259, 39.145424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.007704, 32.298794, 39.009689>,  <27.911591, 32.094513, 38.928249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.007704, 32.298794, 39.009689>,  <28.167892, 32.639259, 39.145424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007704, 32.298794, 39.009689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048554, 0.350092, -0.935456,
		0.915023, -0.391098, -0.098874,
		-0.400470, -0.851163, -0.339332,
		27.887564, 32.043446, 38.907890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595184, 32.527702, 38.562981>,  <28.167892, 32.639259, 39.145424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595184, 32.527702, 38.562981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.251461, 32.327755, 38.519676>,  <28.045227, 32.207787, 38.493694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.251461, 32.327755, 38.519676>,  <28.595184, 32.527702, 38.562981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251461, 32.327755, 38.519676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099527, 0.371061, -0.923260,
		0.501679, -0.782591, -0.368606,
		-0.859310, -0.499866, -0.108265,
		27.993668, 32.177795, 38.487198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664333, 32.229786, 37.922428>,  <28.595184, 32.527702, 38.562981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664333, 32.229786, 37.922428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.288151, 32.293339, 38.042629>,  <28.062441, 32.331470, 38.114750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.288151, 32.293339, 38.042629>,  <28.664333, 32.229786, 37.922428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288151, 32.293339, 38.042629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193649, 0.476130, -0.857788,
		-0.279363, -0.864903, -0.417012,
		-0.940455, 0.158881, 0.300501,
		28.006014, 32.341003, 38.132778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280720, 32.156761, 37.301186>,  <28.664333, 32.229786, 37.922428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280720, 32.156761, 37.301186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.025061, 32.353172, 37.537960>,  <27.871666, 32.471020, 37.680023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.025061, 32.353172, 37.537960>,  <28.280720, 32.156761, 37.301186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025061, 32.353172, 37.537960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302166, 0.547443, -0.780385,
		-0.707239, -0.677644, -0.201526,
		-0.639147, 0.491024, 0.591934,
		27.833317, 32.500481, 37.715542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751614, 32.218830, 36.914017>,  <28.280720, 32.156761, 37.301186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751614, 32.218830, 36.914017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.679296, 32.505890, 37.183025>,  <27.635906, 32.678127, 37.344433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.679296, 32.505890, 37.183025>,  <27.751614, 32.218830, 36.914017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679296, 32.505890, 37.183025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340558, 0.595811, -0.727344,
		-0.922678, -0.360532, 0.136684,
		-0.180793, 0.717653, 0.672523,
		27.625059, 32.721188, 37.384781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078310, 32.441532, 36.715752>,  <27.751614, 32.218830, 36.914017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078310, 32.441532, 36.715752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.244778, 32.725571, 36.942932>,  <27.344658, 32.895992, 37.079239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.244778, 32.725571, 36.942932>,  <27.078310, 32.441532, 36.715752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244778, 32.725571, 36.942932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227855, 0.686124, -0.690881,
		-0.880275, 0.158114, 0.447344,
		0.416171, 0.710094, 0.567950,
		27.369629, 32.938599, 37.113316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686729, 32.968357, 36.645721>,  <27.078310, 32.441532, 36.715752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686729, 32.968357, 36.645721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.030762, 33.134037, 36.764851>,  <27.237181, 33.233444, 36.836330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.030762, 33.134037, 36.764851>,  <26.686729, 32.968357, 36.645721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030762, 33.134037, 36.764851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181163, 0.793714, -0.580688,
		-0.476910, 0.445482, 0.757695,
		0.860079, 0.414202, 0.297825,
		27.288786, 33.258297, 36.854198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577208, 33.700775, 36.895123>,  <26.686729, 32.968357, 36.645721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577208, 33.700775, 36.895123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.963734, 33.668331, 36.797421>,  <27.195648, 33.648865, 36.738800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.963734, 33.668331, 36.797421>,  <26.577208, 33.700775, 36.895123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963734, 33.668331, 36.797421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061595, 0.848573, -0.525481,
		0.249888, 0.522824, 0.814991,
		0.966314, -0.081112, -0.244252,
		27.253628, 33.643997, 36.724144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.736382, 34.455944, 36.831223>,  <26.577208, 33.700775, 36.895123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.736382, 34.455944, 36.831223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.056038, 34.271572, 36.676865>,  <27.247831, 34.160950, 36.584248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.056038, 34.271572, 36.676865>,  <26.736382, 34.455944, 36.831223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056038, 34.271572, 36.676865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151770, 0.775842, -0.612401,
		0.581671, 0.430826, 0.689962,
		0.799140, -0.460932, -0.385899,
		27.295780, 34.133293, 36.561096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246670, 35.042831, 36.764275>,  <26.736382, 34.455944, 36.831223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246670, 35.042831, 36.764275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.355160, 34.757404, 36.505894>,  <27.420254, 34.586147, 36.350864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.355160, 34.757404, 36.505894>,  <27.246670, 35.042831, 36.764275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355160, 34.757404, 36.505894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061403, 0.682567, -0.728239,
		0.960555, 0.157854, 0.228945,
		0.271225, -0.713571, -0.645951,
		27.436527, 34.543331, 36.312107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876818, 35.236778, 36.378063>,  <27.246670, 35.042831, 36.764275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876818, 35.236778, 36.378063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.682375, 34.969753, 36.152477>,  <27.565708, 34.809536, 36.017128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.682375, 34.969753, 36.152477>,  <27.876818, 35.236778, 36.378063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682375, 34.969753, 36.152477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125558, 0.691997, -0.710898,
		0.864831, -0.274764, -0.420204,
		-0.486109, -0.667567, -0.563962,
		27.536543, 34.769482, 35.983288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273428, 35.216427, 35.687778>,  <27.876818, 35.236778, 36.378063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273428, 35.216427, 35.687778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.890648, 35.103130, 35.662418>,  <27.660980, 35.035152, 35.647202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.890648, 35.103130, 35.662418>,  <28.273428, 35.216427, 35.687778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890648, 35.103130, 35.662418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148588, 0.665699, -0.731277,
		0.249334, -0.690375, -0.679128,
		-0.956951, -0.283242, -0.063400,
		27.603563, 35.018158, 35.643398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877491, 34.795750, 35.492947>,  <28.273428, 35.216427, 35.687778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877491, 34.795750, 35.492947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.221937, 34.994682, 35.450718>,  <29.428604, 35.114040, 35.425381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.221937, 34.994682, 35.450718>,  <28.877491, 34.795750, 35.492947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221937, 34.994682, 35.450718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182111, 0.495604, 0.849242,
		0.474668, -0.712072, 0.517342,
		0.861119, 0.497322, -0.105571,
		29.480272, 35.143879, 35.419044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473185, 34.601868, 36.042255>,  <28.877491, 34.795750, 35.492947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473185, 34.601868, 36.042255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.511667, 34.978268, 35.912476>,  <29.534758, 35.204109, 35.834610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.511667, 34.978268, 35.912476>,  <29.473185, 34.601868, 36.042255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511667, 34.978268, 35.912476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023952, 0.328053, 0.944356,
		0.995073, -0.083082, 0.054100,
		0.096206, 0.940999, -0.324446,
		29.540529, 35.260567, 35.815140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891895, 34.788967, 36.475716>,  <29.473185, 34.601868, 36.042255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891895, 34.788967, 36.475716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.760008, 35.135429, 36.325481>,  <29.680876, 35.343307, 36.235340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.760008, 35.135429, 36.325481>,  <29.891895, 34.788967, 36.475716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760008, 35.135429, 36.325481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007006, 0.400065, 0.916460,
		0.944054, 0.299541, -0.137976,
		-0.329717, 0.866154, -0.375585,
		29.661093, 35.395275, 36.212807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338745, 35.330334, 36.672874>,  <29.891895, 34.788967, 36.475716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338745, 35.330334, 36.672874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.989122, 35.507439, 36.592884>,  <29.779348, 35.613701, 36.544891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.989122, 35.507439, 36.592884>,  <30.338745, 35.330334, 36.672874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989122, 35.507439, 36.592884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068694, 0.294854, 0.953070,
		0.480944, 0.846774, -0.227304,
		-0.874056, 0.442759, -0.199976,
		29.726906, 35.640266, 36.532890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338150, 35.769390, 37.149406>,  <30.338745, 35.330334, 36.672874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338150, 35.769390, 37.149406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.959213, 35.784908, 37.022263>,  <29.731850, 35.794220, 36.945976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.959213, 35.784908, 37.022263>,  <30.338150, 35.769390, 37.149406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959213, 35.784908, 37.022263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297548, 0.260183, 0.918570,
		0.118339, 0.964780, -0.234939,
		-0.947344, 0.038797, -0.317858,
		29.675011, 35.796547, 36.926907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927277, 36.440838, 37.426811>,  <30.338150, 35.769390, 37.149406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927277, 36.440838, 37.426811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.647089, 36.163078, 37.360893>,  <29.478977, 35.996422, 37.321342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.647089, 36.163078, 37.360893>,  <29.927277, 36.440838, 37.426811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647089, 36.163078, 37.360893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358312, 0.142473, 0.922667,
		-0.617215, 0.705350, -0.348607,
		-0.700470, -0.694394, -0.164799,
		29.436949, 35.954762, 37.311455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308100, 36.665440, 37.847084>,  <29.927277, 36.440838, 37.426811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308100, 36.665440, 37.847084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.272034, 36.276760, 37.759754>,  <29.250395, 36.043552, 37.707355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.272034, 36.276760, 37.759754>,  <29.308100, 36.665440, 37.847084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272034, 36.276760, 37.759754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251456, -0.189902, 0.949056,
		-0.963660, 0.140471, -0.227218,
		-0.090166, -0.971702, -0.218323,
		29.244984, 35.985249, 37.694256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682863, 36.440121, 38.254025>,  <29.308100, 36.665440, 37.847084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682863, 36.440121, 38.254025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.875404, 36.099785, 38.169769>,  <28.990929, 35.895584, 38.119217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.875404, 36.099785, 38.169769>,  <28.682863, 36.440121, 38.254025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875404, 36.099785, 38.169769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263932, -0.369850, 0.890814,
		-0.835847, -0.373201, -0.402593,
		0.481352, -0.850842, -0.210638,
		29.019810, 35.844532, 38.106579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223610, 35.949387, 38.452572>,  <28.682863, 36.440121, 38.254025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223610, 35.949387, 38.452572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.555862, 35.726978, 38.440628>,  <28.755213, 35.593533, 38.433464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.555862, 35.726978, 38.440628>,  <28.223610, 35.949387, 38.452572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555862, 35.726978, 38.440628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311202, -0.508019, 0.803163,
		-0.461743, -0.657841, -0.595011,
		0.830631, -0.556023, -0.029853,
		28.805052, 35.560169, 38.431671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087358, 35.277134, 38.506790>,  <28.223610, 35.949387, 38.452572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087358, 35.277134, 38.506790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.471935, 35.266891, 38.616314>,  <28.702681, 35.260746, 38.682030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.471935, 35.266891, 38.616314>,  <28.087358, 35.277134, 38.506790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471935, 35.266891, 38.616314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227023, -0.635829, 0.737687,
		0.155206, -0.771405, -0.617127,
		0.961442, -0.025608, 0.273811,
		28.760368, 35.259209, 38.698456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195915, 34.570660, 38.602901>,  <28.087358, 35.277134, 38.506790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195915, 34.570660, 38.602901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.491285, 34.775703, 38.778152>,  <28.668507, 34.898731, 38.883305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.491285, 34.775703, 38.778152>,  <28.195915, 34.570660, 38.602901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491285, 34.775703, 38.778152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074969, -0.583287, 0.808799,
		0.670154, -0.630084, -0.392284,
		0.738426, 0.512611, 0.438129,
		28.712812, 34.929485, 38.909592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746319, 33.971363, 38.791718>,  <28.195915, 34.570660, 38.602901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746319, 33.971363, 38.791718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.822557, 34.313854, 38.983776>,  <28.868301, 34.519348, 39.099010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.822557, 34.313854, 38.983776>,  <28.746319, 33.971363, 38.791718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822557, 34.313854, 38.983776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340963, -0.516402, 0.785540,
		0.920552, 0.013991, -0.390368,
		0.190597, 0.856232, 0.480145,
		28.879736, 34.570724, 39.127819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417343, 33.897507, 39.199883>,  <28.746319, 33.971363, 38.791718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417343, 33.897507, 39.199883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.197985, 34.190876, 39.360561>,  <29.066370, 34.366898, 39.456966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.197985, 34.190876, 39.360561>,  <29.417343, 33.897507, 39.199883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197985, 34.190876, 39.360561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131939, -0.398463, 0.907645,
		0.825745, 0.550747, 0.121749,
		-0.548395, 0.733420, 0.401694,
		29.033466, 34.410900, 39.481071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819738, 34.114742, 39.668251>,  <29.417343, 33.897507, 39.199883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819738, 34.114742, 39.668251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.449903, 34.215347, 39.782711>,  <29.228003, 34.275711, 39.851387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.449903, 34.215347, 39.782711>,  <29.819738, 34.114742, 39.668251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449903, 34.215347, 39.782711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216718, -0.270518, 0.938005,
		0.313328, 0.929281, 0.195610,
		-0.924586, 0.251511, 0.286153,
		29.172527, 34.290802, 39.868557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828508, 34.139393, 40.397205>,  <29.819738, 34.114742, 39.668251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828508, 34.139393, 40.397205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.429184, 34.141323, 40.374039>,  <29.189590, 34.142479, 40.360138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.429184, 34.141323, 40.374039>,  <29.828508, 34.139393, 40.397205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429184, 34.141323, 40.374039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056604, -0.306363, 0.950230,
		-0.013161, 0.951902, 0.306118,
		-0.998310, 0.004821, -0.057913,
		29.129690, 34.142769, 40.356663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460112, 34.474209, 41.042004>,  <29.828508, 34.139393, 40.397205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460112, 34.474209, 41.042004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.216318, 34.199539, 40.883511>,  <29.070042, 34.034737, 40.788414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.216318, 34.199539, 40.883511>,  <29.460112, 34.474209, 41.042004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216318, 34.199539, 40.883511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284839, -0.276755, 0.917755,
		-0.739861, 0.672221, -0.026915,
		-0.609485, -0.686677, -0.396235,
		29.033472, 33.993534, 40.764641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826138, 34.497204, 41.466785>,  <29.460112, 34.474209, 41.042004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826138, 34.497204, 41.466785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.836235, 34.138905, 41.289249>,  <28.842295, 33.923923, 41.182728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.836235, 34.138905, 41.289249>,  <28.826138, 34.497204, 41.466785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836235, 34.138905, 41.289249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460619, -0.404466, 0.790087,
		-0.887239, 0.184496, -0.422810,
		0.025244, -0.895750, -0.443840,
		28.843809, 33.870178, 41.156097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267555, 34.175903, 41.759205>,  <28.826138, 34.497204, 41.466785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267555, 34.175903, 41.759205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.437737, 33.858059, 41.585957>,  <28.539845, 33.667355, 41.482010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.437737, 33.858059, 41.585957>,  <28.267555, 34.175903, 41.759205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437737, 33.858059, 41.585957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313032, -0.578266, 0.753406,
		-0.849119, -0.184957, -0.494761,
		0.425451, -0.794606, -0.433119,
		28.565372, 33.619678, 41.456020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780003, 33.757530, 41.919147>,  <28.267555, 34.175903, 41.759205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780003, 33.757530, 41.919147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.104202, 33.542316, 41.826534>,  <28.298721, 33.413189, 41.770966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.104202, 33.542316, 41.826534>,  <27.780003, 33.757530, 41.919147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104202, 33.542316, 41.826534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202402, -0.628192, 0.751271,
		-0.549659, -0.562042, -0.618048,
		0.810499, -0.538037, -0.231533,
		28.347351, 33.380905, 41.757072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565636, 33.113026, 41.967022>,  <27.780003, 33.757530, 41.919147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565636, 33.113026, 41.967022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.964296, 33.086624, 41.986336>,  <28.203493, 33.070786, 41.997925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.964296, 33.086624, 41.986336>,  <27.565636, 33.113026, 41.967022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964296, 33.086624, 41.986336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076522, -0.544476, 0.835279,
		-0.028838, -0.836176, -0.547703,
		0.996651, -0.065999, 0.048284,
		28.263292, 33.066826, 42.000820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704306, 32.352112, 42.062122>,  <27.565636, 33.113026, 41.967022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704306, 32.352112, 42.062122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.023304, 32.558819, 42.186668>,  <28.214703, 32.682842, 42.261398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.023304, 32.558819, 42.186668>,  <27.704306, 32.352112, 42.062122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023304, 32.558819, 42.186668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079332, -0.601425, 0.794980,
		0.598086, -0.609292, -0.520631,
		0.797495, 0.516770, 0.311367,
		28.262552, 32.713848, 42.280079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217388, 31.944120, 42.096451>,  <27.704306, 32.352112, 42.062122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217388, 31.944120, 42.096451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.303957, 32.240543, 42.350693>,  <28.355898, 32.418396, 42.503239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.303957, 32.240543, 42.350693>,  <28.217388, 31.944120, 42.096451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303957, 32.240543, 42.350693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149275, -0.668498, 0.728579,
		0.964821, -0.062800, -0.255298,
		0.216421, 0.741058, 0.635606,
		28.368883, 32.462860, 42.541374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.197533, 30.318428, 45.873745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.972740, 30.084116, 45.640152>,  <36.837864, 29.943529, 45.499996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.972740, 30.084116, 45.640152>,  <37.197533, 30.318428, 45.873745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972740, 30.084116, 45.640152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336614, -0.482947, 0.808365,
		-0.755556, 0.650866, 0.074227,
		-0.561985, -0.585779, -0.583983,
		36.804146, 29.908382, 45.464958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565468, 30.315372, 46.151344>,  <37.197533, 30.318428, 45.873745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565468, 30.315372, 46.151344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590897, 29.971468, 45.948654>,  <36.606155, 29.765125, 45.827042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590897, 29.971468, 45.948654>,  <36.565468, 30.315372, 46.151344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590897, 29.971468, 45.948654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295463, -0.501200, 0.813326,
		-0.953237, 0.098013, -0.285891,
		0.063572, -0.859763, -0.506722,
		36.609970, 29.713539, 45.796638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885437, 29.972389, 46.304768>,  <36.565468, 30.315372, 46.151344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885437, 29.972389, 46.304768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.146336, 29.698832, 46.174004>,  <36.302876, 29.534697, 46.095547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.146336, 29.698832, 46.174004>,  <35.885437, 29.972389, 46.304768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146336, 29.698832, 46.174004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257525, -0.605544, 0.752992,
		-0.712926, -0.406944, -0.571080,
		0.652240, -0.683896, -0.326910,
		36.342007, 29.493664, 46.075932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614285, 29.375549, 46.581242>,  <35.885437, 29.972389, 46.304768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614285, 29.375549, 46.581242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969929, 29.238691, 46.459637>,  <36.183315, 29.156576, 46.386673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969929, 29.238691, 46.459637>,  <35.614285, 29.375549, 46.581242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969929, 29.238691, 46.459637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073549, -0.762394, 0.642919,
		-0.451749, -0.549265, -0.703015,
		0.889108, -0.342144, -0.304013,
		36.236660, 29.136047, 46.368431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540806, 28.714048, 46.379051>,  <35.614285, 29.375549, 46.581242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540806, 28.714048, 46.379051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931183, 28.718870, 46.466129>,  <36.165409, 28.721764, 46.518375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931183, 28.718870, 46.466129>,  <35.540806, 28.714048, 46.379051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931183, 28.718870, 46.466129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151169, -0.682086, 0.715477,
		0.157111, -0.731173, -0.663854,
		0.975943, 0.012055, 0.217694,
		36.223965, 28.722486, 46.531437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681812, 28.000282, 46.505493>,  <35.540806, 28.714048, 46.379051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681812, 28.000282, 46.505493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.965279, 28.220079, 46.682514>,  <36.135357, 28.351957, 46.788727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.965279, 28.220079, 46.682514>,  <35.681812, 28.000282, 46.505493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965279, 28.220079, 46.682514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054263, -0.582944, 0.810698,
		0.703458, -0.598525, -0.383294,
		0.708662, 0.549494, 0.442555,
		36.177876, 28.384928, 46.815281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892384, 27.573084, 46.999859>,  <35.681812, 28.000282, 46.505493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892384, 27.573084, 46.999859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095184, 27.889221, 47.137440>,  <36.216866, 28.078903, 47.219990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095184, 27.889221, 47.137440>,  <35.892384, 27.573084, 46.999859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095184, 27.889221, 47.137440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086292, -0.443579, 0.892072,
		0.857614, -0.422603, -0.293096,
		0.507003, 0.790345, 0.343952,
		36.247284, 28.126324, 47.240623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494411, 27.301329, 47.401615>,  <35.892384, 27.573084, 46.999859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494411, 27.301329, 47.401615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.438198, 27.671494, 47.542393>,  <36.404472, 27.893593, 47.626862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.438198, 27.671494, 47.542393>,  <36.494411, 27.301329, 47.401615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438198, 27.671494, 47.542393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009507, -0.354198, 0.935122,
		0.990031, 0.134758, 0.040978,
		-0.140530, 0.925410, 0.351948,
		36.396038, 27.949116, 47.647976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956944, 27.329052, 47.965523>,  <36.494411, 27.301329, 47.401615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956944, 27.329052, 47.965523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.687313, 27.619722, 48.018532>,  <36.525536, 27.794125, 48.050339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.687313, 27.619722, 48.018532>,  <36.956944, 27.329052, 47.965523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687313, 27.619722, 48.018532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197042, -0.349805, 0.915866,
		0.711893, 0.591253, 0.378982,
		-0.674079, 0.726675, 0.132522,
		36.485088, 27.837725, 48.058289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091492, 27.652090, 48.618282>,  <36.956944, 27.329052, 47.965523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091492, 27.652090, 48.618282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.712135, 27.748867, 48.536282>,  <36.484524, 27.806932, 48.487083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.712135, 27.748867, 48.536282>,  <37.091492, 27.652090, 48.618282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712135, 27.748867, 48.536282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240625, -0.127993, 0.962142,
		0.206543, 0.961812, 0.179604,
		-0.948388, 0.241941, -0.205000,
		36.427620, 27.821449, 48.474781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834641, 28.255047, 48.975460>,  <37.091492, 27.652090, 48.618282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834641, 28.255047, 48.975460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.523064, 28.020195, 48.887344>,  <36.336117, 27.879284, 48.834473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.523064, 28.020195, 48.887344>,  <36.834641, 28.255047, 48.975460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523064, 28.020195, 48.887344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171787, -0.138067, 0.975411,
		-0.603108, 0.797632, 0.006685,
		-0.778942, -0.587130, -0.220292,
		36.289383, 27.844055, 48.821259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435993, 28.464827, 49.468407>,  <36.834641, 28.255047, 48.975460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435993, 28.464827, 49.468407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.269695, 28.121069, 49.349342>,  <36.169918, 27.914814, 49.277905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.269695, 28.121069, 49.349342>,  <36.435993, 28.464827, 49.468407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269695, 28.121069, 49.349342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262053, -0.200209, 0.944058,
		-0.870911, 0.470487, -0.141971,
		-0.415743, -0.859394, -0.297656,
		36.144974, 27.863251, 49.260044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966572, 28.333078, 50.004417>,  <36.435993, 28.464827, 49.468407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966572, 28.333078, 50.004417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.978973, 27.991745, 49.796242>,  <35.986412, 27.786945, 49.671337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.978973, 27.991745, 49.796242>,  <35.966572, 28.333078, 50.004417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978973, 27.991745, 49.796242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302955, -0.504222, 0.808690,
		-0.952501, 0.132601, -0.274152,
		0.031000, -0.853333, -0.520443,
		35.988274, 27.735744, 49.640110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876766, 29.016495, 50.366127>,  <35.966572, 28.333078, 50.004417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876766, 29.016495, 50.366127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.491131, 29.061470, 50.462368>,  <35.259750, 29.088455, 50.520115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.491131, 29.061470, 50.462368>,  <35.876766, 29.016495, 50.366127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491131, 29.061470, 50.462368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183467, 0.373072, -0.909482,
		-0.192023, -0.920964, -0.339046,
		-0.964089, 0.112438, 0.240605,
		35.201904, 29.095201, 50.534550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460621, 28.795547, 49.734093>,  <35.876766, 29.016495, 50.366127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460621, 28.795547, 49.734093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.280155, 29.060633, 49.973179>,  <35.171875, 29.219685, 50.116631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.280155, 29.060633, 49.973179>,  <35.460621, 28.795547, 49.734093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280155, 29.060633, 49.973179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259541, 0.543368, -0.798367,
		-0.853866, -0.515327, -0.073147,
		-0.451166, 0.662714, 0.597712,
		35.144806, 29.259447, 50.152493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749844, 28.922705, 49.444695>,  <35.460621, 28.795547, 49.734093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749844, 28.922705, 49.444695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833672, 29.233856, 49.681671>,  <34.883968, 29.420547, 49.823856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833672, 29.233856, 49.681671>,  <34.749844, 28.922705, 49.444695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833672, 29.233856, 49.681671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137214, 0.623298, -0.769851,
		-0.968118, 0.080046, 0.237360,
		0.209569, 0.777876, 0.592443,
		34.896542, 29.467218, 49.859406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214069, 29.382561, 49.266487>,  <34.749844, 28.922705, 49.444695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214069, 29.382561, 49.266487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.511585, 29.582428, 49.444077>,  <34.690094, 29.702349, 49.550629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.511585, 29.582428, 49.444077>,  <34.214069, 29.382561, 49.266487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511585, 29.582428, 49.444077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084483, 0.729166, -0.679102,
		-0.663053, 0.467600, 0.584560,
		0.743789, 0.499666, 0.443972,
		34.734722, 29.732328, 49.577267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930099, 29.982988, 49.339424>,  <34.214069, 29.382561, 49.266487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930099, 29.982988, 49.339424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324203, 30.044888, 49.368576>,  <34.560665, 30.082027, 49.386066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324203, 30.044888, 49.368576>,  <33.930099, 29.982988, 49.339424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324203, 30.044888, 49.368576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068209, 0.746157, -0.662267,
		-0.156863, 0.647535, 0.745715,
		0.985262, 0.154750, 0.072877,
		34.619781, 30.091312, 49.390438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957733, 30.634165, 49.082176>,  <33.930099, 29.982988, 49.339424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957733, 30.634165, 49.082176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344810, 30.533377, 49.085823>,  <34.577057, 30.472904, 49.088009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344810, 30.533377, 49.085823>,  <33.957733, 30.634165, 49.082176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344810, 30.533377, 49.085823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174733, 0.644135, -0.744687,
		0.181768, 0.722220, 0.667352,
		0.967693, -0.251968, 0.009113,
		34.635117, 30.457787, 49.088558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201416, 31.262287, 49.209572>,  <33.957733, 30.634165, 49.082176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201416, 31.262287, 49.209572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477844, 31.036598, 49.028877>,  <34.643703, 30.901184, 48.920460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477844, 31.036598, 49.028877>,  <34.201416, 31.262287, 49.209572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477844, 31.036598, 49.028877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191395, 0.745540, -0.638387,
		0.696982, 0.354712, 0.623214,
		0.691074, -0.564224, -0.451738,
		34.685165, 30.867331, 48.893356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882679, 31.569553, 49.053524>,  <34.201416, 31.262287, 49.209572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882679, 31.569553, 49.053524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871857, 31.284426, 48.773193>,  <34.865364, 31.113350, 48.604996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871857, 31.284426, 48.773193>,  <34.882679, 31.569553, 49.053524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871857, 31.284426, 48.773193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236424, 0.676630, -0.697335,
		0.971273, -0.184558, 0.150222,
		-0.027054, -0.712818, -0.700827,
		34.863739, 31.070580, 48.562946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475853, 31.712112, 48.731998>,  <34.882679, 31.569553, 49.053524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475853, 31.712112, 48.731998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.277409, 31.462101, 48.490929>,  <35.158344, 31.312094, 48.346287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.277409, 31.462101, 48.490929>,  <35.475853, 31.712112, 48.731998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277409, 31.462101, 48.490929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288679, 0.535888, -0.793403,
		0.818866, -0.567592, -0.085425,
		-0.496107, -0.625030, -0.602673,
		35.128574, 31.274591, 48.310127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678478, 32.024525, 48.135658>,  <35.475853, 31.712112, 48.731998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678478, 32.024525, 48.135658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.446941, 31.723171, 48.010849>,  <35.308018, 31.542360, 47.935963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.446941, 31.723171, 48.010849>,  <35.678478, 32.024525, 48.135658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446941, 31.723171, 48.010849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120798, 0.299204, -0.946512,
		0.806443, -0.585573, -0.082185,
		-0.578842, -0.753380, -0.312027,
		35.273289, 31.497158, 47.917240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030895, 31.647236, 47.487041>,  <35.678478, 32.024525, 48.135658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030895, 31.647236, 47.487041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.631805, 31.620983, 47.480854>,  <35.392353, 31.605232, 47.477142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.631805, 31.620983, 47.480854>,  <36.030895, 31.647236, 47.487041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631805, 31.620983, 47.480854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002488, 0.265044, -0.964233,
		0.067382, -0.962000, -0.264604,
		-0.997724, -0.065631, -0.015466,
		35.332489, 31.601294, 47.476215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811958, 31.126024, 46.970295>,  <36.030895, 31.647236, 47.487041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811958, 31.126024, 46.970295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.504452, 31.380272, 46.998535>,  <35.319946, 31.532822, 47.015480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.504452, 31.380272, 46.998535>,  <35.811958, 31.126024, 46.970295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504452, 31.380272, 46.998535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028997, 0.144923, -0.989018,
		-0.638872, -0.758277, -0.129843,
		-0.768767, 0.635621, 0.070599,
		35.273823, 31.570957, 47.019714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287571, 31.042004, 46.400291>,  <35.811958, 31.126024, 46.970295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287571, 31.042004, 46.400291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.184574, 31.402294, 46.540230>,  <35.122776, 31.618469, 46.624191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.184574, 31.402294, 46.540230>,  <35.287571, 31.042004, 46.400291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184574, 31.402294, 46.540230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088145, 0.338646, -0.936776,
		-0.962251, -0.272051, -0.007805,
		-0.257494, 0.900726, 0.349843,
		35.107327, 31.672512, 46.645184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882404, 31.411955, 45.857639>,  <35.287571, 31.042004, 46.400291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882404, 31.411955, 45.857639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.000137, 31.714186, 46.091724>,  <35.070778, 31.895523, 46.232174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.000137, 31.714186, 46.091724>,  <34.882404, 31.411955, 45.857639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000137, 31.714186, 46.091724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039053, 0.602316, -0.797302,
		-0.954904, 0.257529, 0.147777,
		0.294337, 0.755575, 0.585211,
		35.088440, 31.940859, 46.267288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668381, 31.927954, 45.490299>,  <34.882404, 31.411955, 45.857639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668381, 31.927954, 45.490299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.931248, 32.113297, 45.728100>,  <35.088970, 32.224503, 45.870781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.931248, 32.113297, 45.728100>,  <34.668381, 31.927954, 45.490299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931248, 32.113297, 45.728100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048571, 0.761056, -0.646865,
		-0.752176, 0.453976, 0.477638,
		0.657170, 0.463357, 0.594498,
		35.128399, 32.252304, 45.906448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909168, 32.321430, 45.528229>,  <34.668381, 31.927954, 45.490299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909168, 32.321430, 45.528229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.591946, 32.194454, 45.320267>,  <33.401611, 32.118267, 45.195492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.591946, 32.194454, 45.320267>,  <33.909168, 32.321430, 45.528229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591946, 32.194454, 45.320267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394999, -0.381746, 0.835611,
		-0.463729, 0.868044, 0.177355,
		-0.793052, -0.317442, -0.519903,
		33.354031, 32.099220, 45.164295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374523, 32.480801, 45.989964>,  <33.909168, 32.321430, 45.528229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374523, 32.480801, 45.989964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.236732, 32.217552, 45.722168>,  <33.154060, 32.059605, 45.561489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.236732, 32.217552, 45.722168>,  <33.374523, 32.480801, 45.989964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236732, 32.217552, 45.722168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546707, -0.439106, 0.712950,
		-0.763183, 0.611606, -0.208539,
		-0.344474, -0.658121, -0.669488,
		33.133389, 32.020115, 45.521320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674747, 32.415340, 46.048615>,  <33.374523, 32.480801, 45.989964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674747, 32.415340, 46.048615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.807621, 32.064381, 45.910156>,  <32.887344, 31.853804, 45.827084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.807621, 32.064381, 45.910156>,  <32.674747, 32.415340, 46.048615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807621, 32.064381, 45.910156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390435, -0.461976, 0.796328,
		-0.858610, -0.129383, -0.496032,
		0.332187, -0.877404, -0.346142,
		32.907276, 31.801159, 45.806313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109940, 31.940340, 46.040054>,  <32.674747, 32.415340, 46.048615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109940, 31.940340, 46.040054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.428738, 31.698755, 46.038136>,  <32.620018, 31.553804, 46.036983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.428738, 31.698755, 46.038136>,  <32.109940, 31.940340, 46.040054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428738, 31.698755, 46.038136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481312, -0.639905, 0.599049,
		-0.364872, -0.475133, -0.800698,
		0.796999, -0.603962, -0.004796,
		32.667839, 31.517567, 46.036697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756031, 31.272114, 46.183174>,  <32.109940, 31.940340, 46.040054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756031, 31.272114, 46.183174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.146461, 31.202328, 46.235073>,  <32.380722, 31.160456, 46.266212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.146461, 31.202328, 46.235073>,  <31.756031, 31.272114, 46.183174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146461, 31.202328, 46.235073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216835, -0.737376, 0.639734,
		-0.015941, -0.652563, -0.757567,
		0.976078, -0.174465, 0.129744,
		32.439285, 31.149988, 46.273994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877272, 30.585871, 46.151211>,  <31.756031, 31.272114, 46.183174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877272, 30.585871, 46.151211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204781, 30.704533, 46.347824>,  <32.401287, 30.775730, 46.465794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204781, 30.704533, 46.347824>,  <31.877272, 30.585871, 46.151211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204781, 30.704533, 46.347824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158578, -0.705989, 0.690241,
		0.551780, -0.643097, -0.531003,
		0.818774, 0.296656, 0.491532,
		32.450413, 30.793530, 46.495285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347080, 29.969841, 46.314777>,  <31.877272, 30.585871, 46.151211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347080, 29.969841, 46.314777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.438351, 30.263889, 46.570129>,  <32.493114, 30.440319, 46.723339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.438351, 30.263889, 46.570129>,  <32.347080, 29.969841, 46.314777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438351, 30.263889, 46.570129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160405, -0.618334, 0.769372,
		0.960315, -0.277954, -0.023173,
		0.228179, 0.735122, 0.638380,
		32.506805, 30.484426, 46.761642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332703, 29.163387, 46.269588>,  <32.347080, 29.969841, 46.314777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332703, 29.163387, 46.269588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.989376, 29.003399, 46.141018>,  <31.783381, 28.907406, 46.063873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.989376, 29.003399, 46.141018>,  <32.332703, 29.163387, 46.269588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989376, 29.003399, 46.141018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201117, 0.314067, -0.927855,
		0.472065, -0.861037, -0.189128,
		-0.858316, -0.399971, -0.321429,
		31.731880, 28.883408, 46.044590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542328, 28.925001, 45.747723>,  <32.332703, 29.163387, 46.269588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542328, 28.925001, 45.747723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.148083, 28.922874, 45.680138>,  <31.911537, 28.921598, 45.639587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.148083, 28.922874, 45.680138>,  <32.542328, 28.925001, 45.747723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148083, 28.922874, 45.680138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161285, 0.269745, -0.949329,
		0.050625, -0.962917, -0.265005,
		-0.985609, -0.005318, -0.168960,
		31.852400, 28.921278, 45.629448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402546, 28.532722, 44.997772>,  <32.542328, 28.925001, 45.747723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402546, 28.532722, 44.997772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.111568, 28.793238, 45.084164>,  <31.936981, 28.949547, 45.135998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.111568, 28.793238, 45.084164>,  <32.402546, 28.532722, 44.997772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111568, 28.793238, 45.084164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048872, 0.363137, -0.930453,
		-0.684421, -0.666301, -0.295993,
		-0.727447, 0.651287, 0.215975,
		31.893333, 28.988625, 45.148956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022434, 28.611452, 44.318810>,  <32.402546, 28.532722, 44.997772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022434, 28.611452, 44.318810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.896687, 28.911400, 44.551659>,  <31.821239, 29.091370, 44.691368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.896687, 28.911400, 44.551659>,  <32.022434, 28.611452, 44.318810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896687, 28.911400, 44.551659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065610, 0.594583, -0.801353,
		-0.947032, -0.290111, -0.137717,
		-0.314365, 0.749871, 0.582123,
		31.802378, 29.136362, 44.726295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313583, 28.856419, 44.240063>,  <32.022434, 28.611452, 44.318810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313583, 28.856419, 44.240063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.507887, 29.170685, 44.393303>,  <31.624470, 29.359245, 44.485245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.507887, 29.170685, 44.393303>,  <31.313583, 28.856419, 44.240063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507887, 29.170685, 44.393303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050663, 0.462850, -0.884988,
		-0.872623, 0.410483, 0.264638,
		0.485760, 0.785668, 0.383097,
		31.653614, 29.406385, 44.508232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063845, 29.319420, 43.814419>,  <31.313583, 28.856419, 44.240063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063845, 29.319420, 43.814419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.363934, 29.527203, 43.978043>,  <31.543987, 29.651873, 44.076218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.363934, 29.527203, 43.978043>,  <31.063845, 29.319420, 43.814419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363934, 29.527203, 43.978043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090938, 0.531736, -0.842014,
		-0.654903, 0.668896, 0.351681,
		0.750221, 0.519456, 0.409064,
		31.589001, 29.683039, 44.100761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954922, 29.981281, 43.687630>,  <31.063845, 29.319420, 43.814419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954922, 29.981281, 43.687630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.348276, 29.940273, 43.747551>,  <31.584290, 29.915668, 43.783504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.348276, 29.940273, 43.747551>,  <30.954922, 29.981281, 43.687630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348276, 29.940273, 43.747551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180799, 0.479617, -0.858650,
		0.016183, 0.871469, 0.490184,
		0.983387, -0.102520, 0.149799,
		31.643291, 29.909517, 43.792492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.564438, 25.038342, 47.436275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.677059, 25.404497, 47.551369>,  <34.744633, 25.624189, 47.620426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.677059, 25.404497, 47.551369>,  <34.564438, 25.038342, 47.436275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677059, 25.404497, 47.551369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252949, 0.218451, -0.942494,
		-0.925604, 0.338148, -0.170040,
		0.281557, 0.915388, 0.287733,
		34.761528, 25.679113, 47.637688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156509, 25.629305, 47.060902>,  <34.564438, 25.038342, 47.436275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156509, 25.629305, 47.060902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.524952, 25.716295, 47.190060>,  <34.746017, 25.768490, 47.267555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.524952, 25.716295, 47.190060>,  <34.156509, 25.629305, 47.060902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524952, 25.716295, 47.190060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289977, 0.170125, -0.941791,
		-0.259752, 0.961125, 0.093640,
		0.921109, 0.217478, 0.322895,
		34.801285, 25.781538, 47.286926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318939, 26.337498, 46.807236>,  <34.156509, 25.629305, 47.060902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318939, 26.337498, 46.807236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.672905, 26.172983, 46.894661>,  <34.885284, 26.074274, 46.947117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.672905, 26.172983, 46.894661>,  <34.318939, 26.337498, 46.807236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672905, 26.172983, 46.894661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357378, 0.298673, -0.884915,
		0.298673, 0.861185, 0.411285,
		0.884915, -0.411285, 0.218563,
		34.938381, 26.049597, 46.960228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848591, 26.883066, 46.781818>,  <34.318939, 26.337498, 46.807236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848591, 26.883066, 46.781818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.025497, 26.526667, 46.740784>,  <35.131641, 26.312826, 46.716164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.025497, 26.526667, 46.740784>,  <34.848591, 26.883066, 46.781818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025497, 26.526667, 46.740784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405692, 0.300746, -0.863114,
		0.799885, 0.340107, 0.494480,
		0.442264, -0.890999, -0.102584,
		35.158176, 26.259367, 46.710007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433495, 27.094191, 46.591251>,  <34.848591, 26.883066, 46.781818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433495, 27.094191, 46.591251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.429504, 26.709648, 46.481201>,  <35.427113, 26.478922, 46.415173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.429504, 26.709648, 46.481201>,  <35.433495, 27.094191, 46.591251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429504, 26.709648, 46.481201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505895, 0.232479, -0.830677,
		0.862538, -0.147467, 0.484028,
		-0.009971, -0.961357, -0.275125,
		35.426514, 26.421242, 46.398663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118649, 27.012508, 46.356052>,  <35.433495, 27.094191, 46.591251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118649, 27.012508, 46.356052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.901993, 26.714769, 46.199806>,  <35.771999, 26.536127, 46.106060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.901993, 26.714769, 46.199806>,  <36.118649, 27.012508, 46.356052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901993, 26.714769, 46.199806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436065, 0.148469, -0.887583,
		0.718662, -0.651081, 0.244166,
		-0.541638, -0.744345, -0.390613,
		35.739502, 26.491467, 46.082623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595699, 26.771757, 45.708702>,  <36.118649, 27.012508, 46.356052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595699, 26.771757, 45.708702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.211239, 26.663649, 45.686283>,  <35.980564, 26.598783, 45.672832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.211239, 26.663649, 45.686283>,  <36.595699, 26.771757, 45.708702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211239, 26.663649, 45.686283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012257, 0.244644, -0.969535,
		0.275751, -0.931183, -0.238453,
		-0.961151, -0.270273, -0.056047,
		35.922894, 26.582567, 45.669468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573341, 26.311401, 45.229763>,  <36.595699, 26.771757, 45.708702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573341, 26.311401, 45.229763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.198940, 26.451994, 45.237427>,  <35.974300, 26.536348, 45.242023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.198940, 26.451994, 45.237427>,  <36.573341, 26.311401, 45.229763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198940, 26.451994, 45.237427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055821, 0.201955, -0.977803,
		-0.347547, -0.914153, -0.208650,
		-0.935999, 0.351480, 0.019160,
		35.918140, 26.557438, 45.243176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219910, 25.972872, 44.607899>,  <36.573341, 26.311401, 45.229763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219910, 25.972872, 44.607899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.975574, 26.273775, 44.706680>,  <35.828972, 26.454317, 44.765949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.975574, 26.273775, 44.706680>,  <36.219910, 25.972872, 44.607899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975574, 26.273775, 44.706680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074094, 0.256224, -0.963774,
		-0.788281, -0.607008, -0.100774,
		-0.610839, 0.752257, 0.246952,
		35.792324, 26.499453, 44.780766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870758, 26.017159, 43.974266>,  <36.219910, 25.972872, 44.607899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870758, 26.017159, 43.974266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.797966, 26.346674, 44.189026>,  <35.754292, 26.544384, 44.317883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.797966, 26.346674, 44.189026>,  <35.870758, 26.017159, 43.974266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797966, 26.346674, 44.189026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018763, 0.543003, -0.839521,
		-0.983123, -0.162848, -0.083358,
		-0.181978, 0.823789, 0.536895,
		35.743374, 26.593811, 44.350094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265942, 26.197470, 43.694324>,  <35.870758, 26.017159, 43.974266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265942, 26.197470, 43.694324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.474941, 26.495075, 43.860909>,  <35.600342, 26.673637, 43.960861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.474941, 26.495075, 43.860909>,  <35.265942, 26.197470, 43.694324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474941, 26.495075, 43.860909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073081, 0.447563, -0.891261,
		-0.849503, 0.496118, 0.179477,
		0.522498, 0.744012, 0.416463,
		35.631691, 26.718279, 43.985847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944107, 26.881130, 43.439453>,  <35.265942, 26.197470, 43.694324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944107, 26.881130, 43.439453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.317200, 26.952272, 43.564915>,  <35.541054, 26.994959, 43.640190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.317200, 26.952272, 43.564915>,  <34.944107, 26.881130, 43.439453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317200, 26.952272, 43.564915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193449, 0.487250, -0.851566,
		-0.304285, 0.854959, 0.420068,
		0.932732, 0.177857, 0.313653,
		35.597019, 27.005629, 43.659012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376617, 27.403542, 43.390007>,  <34.944107, 26.881130, 43.439453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376617, 27.403542, 43.390007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.032944, 27.346897, 43.193336>,  <33.826740, 27.312910, 43.075336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.032944, 27.346897, 43.193336>,  <34.376617, 27.403542, 43.390007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032944, 27.346897, 43.193336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474812, -0.137397, 0.869296,
		-0.190658, 0.980341, 0.050811,
		-0.859188, -0.141613, -0.491673,
		33.775188, 27.304413, 43.045834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901768, 27.831772, 43.739563>,  <34.376617, 27.403542, 43.390007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901768, 27.831772, 43.739563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.701641, 27.524841, 43.579117>,  <33.581566, 27.340683, 43.482849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.701641, 27.524841, 43.579117>,  <33.901768, 27.831772, 43.739563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701641, 27.524841, 43.579117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456244, -0.160089, 0.875336,
		-0.735883, 0.620951, -0.269993,
		-0.500317, -0.767327, -0.401112,
		33.551544, 27.294643, 43.458782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528622, 27.830643, 44.274895>,  <33.901768, 27.831772, 43.739563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528622, 27.830643, 44.274895> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.431652, 27.511133, 44.054646>,  <33.373470, 27.319427, 43.922497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.431652, 27.511133, 44.054646>,  <33.528622, 27.830643, 44.274895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431652, 27.511133, 44.054646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597464, -0.324243, 0.733418,
		-0.764373, 0.506780, -0.398633,
		-0.242428, -0.798774, -0.550626,
		33.358925, 27.271502, 43.889458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739872, 27.722759, 44.235180>,  <33.528622, 27.830643, 44.274895>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739872, 27.722759, 44.235180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.924435, 27.371244, 44.186459>,  <33.035172, 27.160336, 44.157227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.924435, 27.371244, 44.186459>,  <32.739872, 27.722759, 44.235180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924435, 27.371244, 44.186459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514715, -0.376979, 0.770036,
		-0.722613, -0.292610, -0.626267,
		0.461409, -0.878787, -0.121800,
		33.062859, 27.107609, 44.149918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161682, 27.240328, 44.215073>,  <32.739872, 27.722759, 44.235180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161682, 27.240328, 44.215073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.478004, 27.003525, 44.277245>,  <32.667797, 26.861443, 44.314548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.478004, 27.003525, 44.277245>,  <32.161682, 27.240328, 44.215073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478004, 27.003525, 44.277245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571904, -0.624216, 0.532240,
		-0.218071, -0.509786, -0.832204,
		0.790804, -0.592007, 0.155425,
		32.715244, 26.825922, 44.323872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906317, 26.594698, 44.095463>,  <32.161682, 27.240328, 44.215073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906317, 26.594698, 44.095463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.227020, 26.550570, 44.330414>,  <32.419441, 26.524094, 44.471386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.227020, 26.550570, 44.330414>,  <31.906317, 26.594698, 44.095463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227020, 26.550570, 44.330414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566962, -0.451276, 0.689133,
		0.189045, -0.885539, -0.424360,
		0.801758, -0.110319, 0.587379,
		32.467548, 26.517473, 44.506626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934322, 25.943409, 44.298885>,  <31.906317, 26.594698, 44.095463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934322, 25.943409, 44.298885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.205944, 26.050877, 44.572147>,  <32.368916, 26.115358, 44.736107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.205944, 26.050877, 44.572147>,  <31.934322, 25.943409, 44.298885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205944, 26.050877, 44.572147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469440, -0.556531, 0.685492,
		0.564369, -0.786186, -0.251790,
		0.679053, 0.268670, 0.683157,
		32.409660, 26.131477, 44.777096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231335, 25.340534, 44.639210>,  <31.934322, 25.943409, 44.298885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231335, 25.340534, 44.639210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.316730, 25.645802, 44.883175>,  <32.367970, 25.828962, 45.029552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.316730, 25.645802, 44.883175>,  <32.231335, 25.340534, 44.639210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316730, 25.645802, 44.883175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349394, -0.523369, 0.777180,
		0.912330, -0.379020, 0.154913,
		0.213490, 0.763170, 0.609912,
		32.380779, 25.874752, 45.066147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546432, 25.077824, 45.253258>,  <32.231335, 25.340534, 44.639210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546432, 25.077824, 45.253258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.380695, 25.426361, 45.358395>,  <32.281254, 25.635483, 45.421474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.380695, 25.426361, 45.358395>,  <32.546432, 25.077824, 45.253258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380695, 25.426361, 45.358395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442785, -0.445304, 0.778232,
		0.795150, 0.206073, 0.570325,
		-0.414341, 0.871343, 0.262838,
		32.256393, 25.687763, 45.437244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470867, 25.109518, 46.004372>,  <32.546432, 25.077824, 45.253258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470867, 25.109518, 46.004372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.232067, 25.418674, 45.918373>,  <32.088787, 25.604168, 45.866776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.232067, 25.418674, 45.918373>,  <32.470867, 25.109518, 46.004372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232067, 25.418674, 45.918373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578087, -0.228641, 0.783287,
		0.556240, 0.591912, 0.583298,
		-0.597003, 0.772893, -0.214997,
		32.052967, 25.650543, 45.853874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300003, 25.484064, 46.640190>,  <32.470867, 25.109518, 46.004372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300003, 25.484064, 46.640190> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.019135, 25.602249, 46.381065>,  <31.850613, 25.673161, 46.225590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.019135, 25.602249, 46.381065>,  <32.300003, 25.484064, 46.640190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019135, 25.602249, 46.381065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661540, 0.065703, 0.747026,
		0.263280, 0.953093, 0.149325,
		-0.702174, 0.295461, -0.647807,
		31.808483, 25.690887, 46.186722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113243, 26.110371, 46.865490>,  <32.300003, 25.484064, 46.640190>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113243, 26.110371, 46.865490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.803196, 25.987759, 46.644497>,  <31.617168, 25.914190, 46.511902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.803196, 25.987759, 46.644497>,  <32.113243, 26.110371, 46.865490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803196, 25.987759, 46.644497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616531, 0.175764, 0.767461,
		-0.138145, 0.935492, -0.325224,
		-0.775116, -0.306532, -0.552479,
		31.570662, 25.895800, 46.478752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603992, 26.556116, 47.033943>,  <32.113243, 26.110371, 46.865490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603992, 26.556116, 47.033943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.434723, 26.222692, 46.891903>,  <31.333160, 26.022638, 46.806679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.434723, 26.222692, 46.891903>,  <31.603992, 26.556116, 47.033943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434723, 26.222692, 46.891903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615408, -0.023216, 0.787867,
		-0.664979, 0.551939, -0.503156,
		-0.423174, -0.833561, -0.355105,
		31.307772, 25.972624, 46.785370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873055, 26.736652, 46.909122>,  <31.603992, 26.556116, 47.033943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873055, 26.736652, 46.909122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.945131, 26.356293, 47.009773>,  <30.988377, 26.128077, 47.070164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.945131, 26.356293, 47.009773>,  <30.873055, 26.736652, 46.909122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945131, 26.356293, 47.009773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560676, 0.110897, 0.820575,
		-0.808191, -0.288945, -0.513165,
		0.180193, -0.950901, 0.251630,
		30.999189, 26.071022, 47.085262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284712, 26.387144, 47.150150>,  <30.873055, 26.736652, 46.909122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284712, 26.387144, 47.150150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.602819, 26.205307, 47.310596>,  <30.793684, 26.096205, 47.406864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.602819, 26.205307, 47.310596>,  <30.284712, 26.387144, 47.150150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602819, 26.205307, 47.310596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384635, 0.133087, 0.913424,
		-0.468619, -0.880700, -0.069012,
		0.795268, -0.454593, 0.401116,
		30.841400, 26.068930, 47.430931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662077, 26.878237, 47.636486>,  <30.284712, 26.387144, 47.150150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662077, 26.878237, 47.636486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.852999, 27.197159, 47.784260>,  <30.967552, 27.388512, 47.872925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.852999, 27.197159, 47.784260>,  <30.662077, 26.878237, 47.636486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852999, 27.197159, 47.784260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166041, 0.331011, -0.928904,
		-0.862907, 0.504713, 0.025608,
		0.477306, 0.797306, 0.369435,
		30.996191, 27.436350, 47.895092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342926, 27.500643, 47.443298>,  <30.662077, 26.878237, 47.636486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342926, 27.500643, 47.443298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.711636, 27.616543, 47.546349>,  <30.932861, 27.686083, 47.608181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.711636, 27.616543, 47.546349>,  <30.342926, 27.500643, 47.443298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711636, 27.616543, 47.546349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077531, 0.513298, -0.854701,
		-0.379891, 0.807817, 0.450682,
		0.921776, 0.289751, 0.257629,
		30.988169, 27.703468, 47.623638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316891, 28.127428, 47.273243>,  <30.342926, 27.500643, 47.443298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316891, 28.127428, 47.273243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.708696, 28.047489, 47.283123>,  <30.943781, 27.999525, 47.289051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.708696, 28.047489, 47.283123>,  <30.316891, 28.127428, 47.273243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708696, 28.047489, 47.283123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148012, 0.631359, -0.761235,
		0.136537, 0.749297, 0.648005,
		0.979515, -0.199849, 0.024701,
		31.002550, 27.987534, 47.290535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639471, 28.714005, 47.101585>,  <30.316891, 28.127428, 47.273243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639471, 28.714005, 47.101585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.960022, 28.480108, 47.051197>,  <31.152353, 28.339771, 47.020962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.960022, 28.480108, 47.051197>,  <30.639471, 28.714005, 47.101585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960022, 28.480108, 47.051197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312063, 0.588380, -0.745939,
		0.510302, 0.558468, 0.653991,
		0.801379, -0.584741, -0.125974,
		31.200436, 28.304686, 47.013405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297300, 29.129709, 47.078964>,  <30.639471, 28.714005, 47.101585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297300, 29.129709, 47.078964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.355383, 28.788113, 46.879120>,  <31.390232, 28.583155, 46.759212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.355383, 28.788113, 46.879120>,  <31.297300, 29.129709, 47.078964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355383, 28.788113, 46.879120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460747, 0.505234, -0.729692,
		0.875572, -0.124237, 0.466839,
		0.145208, -0.853993, -0.499611,
		31.398945, 28.531916, 46.729237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933455, 29.287605, 46.829704>,  <31.297300, 29.129709, 47.078964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933455, 29.287605, 46.829704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.775450, 28.990120, 46.613979>,  <31.680647, 28.811628, 46.484547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.775450, 28.990120, 46.613979>,  <31.933455, 29.287605, 46.829704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775450, 28.990120, 46.613979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404642, 0.386187, -0.828930,
		0.824762, -0.545663, 0.148390,
		-0.395010, -0.743715, -0.539311,
		31.656946, 28.767006, 46.452187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647591, 29.519440, 46.850994>,  <31.933455, 29.287605, 46.829704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647591, 29.519440, 46.850994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.605137, 29.871208, 47.036617>,  <32.579662, 30.082270, 47.147991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.605137, 29.871208, 47.036617>,  <32.647591, 29.519440, 46.850994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605137, 29.871208, 47.036617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043634, -0.462125, 0.885741,
		0.993394, 0.114260, 0.010677,
		-0.106139, 0.879423, 0.464058,
		32.573296, 30.135035, 47.175835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263325, 29.654083, 47.252277>,  <32.647591, 29.519440, 46.850994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263325, 29.654083, 47.252277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.004520, 29.899843, 47.432896>,  <32.849239, 30.047298, 47.541267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.004520, 29.899843, 47.432896>,  <33.263325, 29.654083, 47.252277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004520, 29.899843, 47.432896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332509, -0.305568, 0.892225,
		0.686161, 0.727420, -0.006588,
		-0.647009, 0.614401, 0.451543,
		32.810417, 30.084164, 47.568359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636902, 30.029955, 47.770298>,  <33.263325, 29.654083, 47.252277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636902, 30.029955, 47.770298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.244759, 30.002966, 47.844421>,  <33.009472, 29.986773, 47.888897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.244759, 30.002966, 47.844421>,  <33.636902, 30.029955, 47.770298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244759, 30.002966, 47.844421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196982, -0.380220, 0.903676,
		0.009484, 0.922431, 0.386044,
		-0.980361, -0.067473, 0.185309,
		32.950649, 29.982723, 47.900013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562664, 30.269417, 48.470718>,  <33.636902, 30.029955, 47.770298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562664, 30.269417, 48.470718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.217461, 30.078197, 48.405376>,  <33.010338, 29.963467, 48.366169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.217461, 30.078197, 48.405376>,  <33.562664, 30.269417, 48.470718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217461, 30.078197, 48.405376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117065, -0.503796, 0.855854,
		-0.491439, 0.719485, 0.490743,
		-0.863008, -0.478049, -0.163359,
		32.958557, 29.934782, 48.356369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213493, 30.270288, 49.099545>,  <33.562664, 30.269417, 48.470718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213493, 30.270288, 49.099545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.039715, 29.963678, 48.910358>,  <32.935448, 29.779713, 48.796848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.039715, 29.963678, 48.910358>,  <33.213493, 30.270288, 49.099545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039715, 29.963678, 48.910358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106637, -0.565190, 0.818039,
		-0.894362, 0.304960, 0.327285,
		-0.434448, -0.766524, -0.472965,
		32.909382, 29.733721, 48.768471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864365, 30.002449, 49.585011>,  <33.213493, 30.270288, 49.099545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864365, 30.002449, 49.585011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.848946, 29.720734, 49.301464>,  <32.839695, 29.551704, 49.131336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.848946, 29.720734, 49.301464>,  <32.864365, 30.002449, 49.585011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848946, 29.720734, 49.301464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031955, -0.708160, 0.705328,
		-0.998746, 0.049842, 0.004795,
		-0.038550, -0.704291, -0.708864,
		32.837379, 29.509447, 49.088806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204090, 29.595913, 49.682789>,  <32.864365, 30.002449, 49.585011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204090, 29.595913, 49.682789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.481621, 29.386797, 49.484680>,  <32.648140, 29.261328, 49.365814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.481621, 29.386797, 49.484680>,  <32.204090, 29.595913, 49.682789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481621, 29.386797, 49.484680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211594, -0.805383, 0.553702,
		-0.688354, -0.279376, -0.669416,
		0.693827, -0.522788, -0.495274,
		32.689770, 29.229961, 49.336098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935169, 28.898886, 49.796207>,  <32.204090, 29.595913, 49.682789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935169, 28.898886, 49.796207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.304188, 28.832678, 49.656773>,  <32.525600, 28.792953, 49.573112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.304188, 28.832678, 49.656773>,  <31.935169, 28.898886, 49.796207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304188, 28.832678, 49.656773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005067, -0.898066, 0.439832,
		-0.385856, -0.407531, -0.827667,
		0.922545, -0.165519, -0.348589,
		32.580952, 28.783022, 49.552197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942062, 28.266806, 49.428673>,  <31.935169, 28.898886, 49.796207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942062, 28.266806, 49.428673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.315662, 28.349459, 49.545258>,  <32.539822, 28.399050, 49.615208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.315662, 28.349459, 49.545258>,  <31.942062, 28.266806, 49.428673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315662, 28.349459, 49.545258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054310, -0.888422, 0.455804,
		0.353124, -0.409891, -0.841007,
		0.933999, 0.206631, 0.291462,
		32.595863, 28.411448, 49.632694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.723675, 35.219093, 35.321087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663910, 35.194492, 34.926342>,  <36.628052, 35.179729, 34.689495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663910, 35.194492, 34.926342>,  <36.723675, 35.219093, 35.321087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663910, 35.194492, 34.926342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261680, -0.960017, 0.099451,
		-0.953520, 0.273101, 0.127342,
		-0.149410, -0.061506, -0.986860,
		36.619087, 35.176041, 34.630283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602348, 34.908966, 36.015896>,  <36.723675, 35.219093, 35.321087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602348, 34.908966, 36.015896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810501, 35.114552, 36.288673>,  <36.935390, 35.237904, 36.452339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810501, 35.114552, 36.288673>,  <36.602348, 34.908966, 36.015896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810501, 35.114552, 36.288673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382845, -0.573418, 0.724308,
		0.763306, -0.637994, -0.101628,
		0.520379, 0.513961, 0.681946,
		36.966614, 35.268742, 36.493256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018253, 34.440403, 36.468174>,  <36.602348, 34.908966, 36.015896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018253, 34.440403, 36.468174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931396, 34.750305, 36.705696>,  <36.879284, 34.936245, 36.848209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931396, 34.750305, 36.705696>,  <37.018253, 34.440403, 36.468174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931396, 34.750305, 36.705696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362261, -0.628834, 0.687993,
		0.906431, -0.065721, 0.417209,
		-0.217140, 0.774757, 0.593803,
		36.866253, 34.982731, 36.883839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018017, 34.157211, 37.123867>,  <37.018253, 34.440403, 36.468174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018017, 34.157211, 37.123867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850811, 34.514042, 37.192524>,  <36.750488, 34.728142, 37.233719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850811, 34.514042, 37.192524>,  <37.018017, 34.157211, 37.123867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850811, 34.514042, 37.192524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355408, -0.334480, 0.872816,
		0.836030, 0.303849, 0.456869,
		-0.418018, 0.892075, 0.171645,
		36.725407, 34.781666, 37.244019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184330, 34.511662, 37.819271>,  <37.018017, 34.157211, 37.123867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184330, 34.511662, 37.819271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829472, 34.656700, 37.705082>,  <36.616558, 34.743721, 37.636566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829472, 34.656700, 37.705082>,  <37.184330, 34.511662, 37.819271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829472, 34.656700, 37.705082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390569, -0.260422, 0.882970,
		0.245815, 0.894822, 0.372650,
		-0.887148, 0.362593, -0.285475,
		36.563328, 34.765476, 37.619438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898224, 34.655163, 38.405933>,  <37.184330, 34.511662, 37.819271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898224, 34.655163, 38.405933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566139, 34.666206, 38.183224>,  <36.366890, 34.672832, 38.049599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566139, 34.666206, 38.183224>,  <36.898224, 34.655163, 38.405933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566139, 34.666206, 38.183224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527256, -0.363165, 0.768187,
		-0.180988, 0.931316, 0.316062,
		-0.830207, 0.027613, -0.556770,
		36.317078, 34.674492, 38.016193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453583, 34.975063, 38.824757>,  <36.898224, 34.655163, 38.405933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453583, 34.975063, 38.824757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224636, 34.776123, 38.563976>,  <36.087269, 34.656757, 38.407509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224636, 34.776123, 38.563976>,  <36.453583, 34.975063, 38.824757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224636, 34.776123, 38.563976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522173, -0.391946, 0.757439,
		-0.632243, 0.773963, -0.035368,
		-0.572367, -0.497353, -0.651948,
		36.052925, 34.626919, 38.368393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909672, 35.273430, 38.955521>,  <36.453583, 34.975063, 38.824757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909672, 35.273430, 38.955521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797138, 34.944973, 38.756889>,  <35.729618, 34.747898, 38.637711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797138, 34.944973, 38.756889>,  <35.909672, 35.273430, 38.955521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797138, 34.944973, 38.756889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722614, -0.159212, 0.672667,
		-0.631413, 0.548073, -0.548574,
		-0.281331, -0.821138, -0.496574,
		35.712738, 34.698631, 38.607918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198929, 35.272236, 38.962307>,  <35.909672, 35.273430, 38.955521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198929, 35.272236, 38.962307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288349, 34.894897, 38.864231>,  <35.342003, 34.668495, 38.805386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288349, 34.894897, 38.864231>,  <35.198929, 35.272236, 38.962307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288349, 34.894897, 38.864231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698189, -0.330516, 0.635051,
		-0.680114, 0.029221, -0.732524,
		0.223554, -0.943348, -0.245191,
		35.355415, 34.611893, 38.790672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530010, 34.986301, 38.676392>,  <35.198929, 35.272236, 38.962307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530010, 34.986301, 38.676392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763889, 34.681126, 38.786697>,  <34.904217, 34.498020, 38.852882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763889, 34.681126, 38.786697>,  <34.530010, 34.986301, 38.676392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763889, 34.681126, 38.786697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728384, -0.344043, 0.592530,
		-0.357201, -0.547302, -0.756881,
		0.584692, -0.762952, 0.275753,
		34.939297, 34.452244, 38.869427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039551, 34.460037, 38.766979>,  <34.530010, 34.986301, 38.676392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039551, 34.460037, 38.766979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371136, 34.362976, 38.968552>,  <34.570087, 34.304741, 39.089497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371136, 34.362976, 38.968552>,  <34.039551, 34.460037, 38.766979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371136, 34.362976, 38.968552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559076, -0.385511, 0.734041,
		0.016154, -0.890225, -0.455234,
		0.828959, -0.242653, 0.503931,
		34.619823, 34.290180, 39.119732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999825, 33.708248, 38.971439>,  <34.039551, 34.460037, 38.766979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999825, 33.708248, 38.971439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232864, 33.907692, 39.228180>,  <34.372688, 34.027359, 39.382225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232864, 33.907692, 39.228180>,  <33.999825, 33.708248, 38.971439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232864, 33.907692, 39.228180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515857, -0.383412, 0.766086,
		0.628068, -0.777423, 0.033835,
		0.582600, 0.498608, 0.641848,
		34.407642, 34.057274, 39.420734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045334, 32.973595, 38.684242>,  <33.999825, 33.708248, 38.971439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045334, 32.973595, 38.684242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740032, 32.749859, 38.554890>,  <33.556850, 32.615616, 38.477276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740032, 32.749859, 38.554890>,  <34.045334, 32.973595, 38.684242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740032, 32.749859, 38.554890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215999, 0.250816, -0.943629,
		0.608922, -0.790080, -0.070619,
		-0.763255, -0.559343, -0.323384,
		33.511055, 32.582054, 38.457874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315178, 32.481243, 38.346603>,  <34.045334, 32.973595, 38.684242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315178, 32.481243, 38.346603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940662, 32.468166, 38.206718>,  <33.715954, 32.460320, 38.122787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940662, 32.468166, 38.206718>,  <34.315178, 32.481243, 38.346603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940662, 32.468166, 38.206718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348512, 0.037332, -0.936561,
		0.043692, -0.998767, -0.023553,
		-0.936285, -0.032711, -0.349714,
		33.659775, 32.458359, 38.101803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302624, 31.999359, 37.811069>,  <34.315178, 32.481243, 38.346603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302624, 31.999359, 37.811069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976246, 32.214088, 37.725227>,  <33.780418, 32.342926, 37.673721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976246, 32.214088, 37.725227>,  <34.302624, 31.999359, 37.811069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976246, 32.214088, 37.725227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279138, 0.040738, -0.959386,
		-0.506278, -0.842711, -0.183087,
		-0.815944, 0.536823, -0.214608,
		33.731464, 32.375134, 37.660847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997772, 31.633392, 37.227493>,  <34.302624, 31.999359, 37.811069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997772, 31.633392, 37.227493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883732, 32.016125, 37.250099>,  <33.815308, 32.245766, 37.263664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883732, 32.016125, 37.250099>,  <33.997772, 31.633392, 37.227493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883732, 32.016125, 37.250099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149868, 0.102738, -0.983354,
		-0.946708, -0.271885, -0.172689,
		-0.285101, 0.956830, 0.056516,
		33.798203, 32.303173, 37.267056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616417, 31.739798, 36.664288>,  <33.997772, 31.633392, 37.227493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616417, 31.739798, 36.664288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715820, 32.118046, 36.748234>,  <33.775463, 32.344994, 36.798603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715820, 32.118046, 36.748234>,  <33.616417, 31.739798, 36.664288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715820, 32.118046, 36.748234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048278, 0.204305, -0.977716,
		-0.967425, 0.253104, 0.005119,
		0.248510, 0.945620, 0.209870,
		33.790375, 32.401733, 36.811195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307861, 32.089317, 36.188663>,  <33.616417, 31.739798, 36.664288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307861, 32.089317, 36.188663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561459, 32.365398, 36.328182>,  <33.713619, 32.531048, 36.411896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561459, 32.365398, 36.328182>,  <33.307861, 32.089317, 36.188663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561459, 32.365398, 36.328182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195262, 0.293548, -0.935789,
		-0.748278, 0.661395, 0.051337,
		0.633997, 0.690207, 0.348801,
		33.751659, 32.572460, 36.432823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119190, 32.698093, 35.843281>,  <33.307861, 32.089317, 36.188663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119190, 32.698093, 35.843281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494152, 32.759338, 35.968395>,  <33.719128, 32.796085, 36.043465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494152, 32.759338, 35.968395>,  <33.119190, 32.698093, 35.843281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494152, 32.759338, 35.968395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243409, 0.354265, -0.902911,
		-0.249053, 0.922526, 0.294820,
		0.937403, 0.153111, 0.312782,
		33.775372, 32.805271, 36.062229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398727, 33.458675, 35.680744>,  <33.119190, 32.698093, 35.843281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398727, 33.458675, 35.680744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734406, 33.251076, 35.745735>,  <33.935814, 33.126518, 35.784729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734406, 33.251076, 35.745735>,  <33.398727, 33.458675, 35.680744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734406, 33.251076, 35.745735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412316, 0.412383, -0.812364,
		0.354611, 0.748722, 0.560059,
		0.839194, -0.518995, 0.162474,
		33.986164, 33.095379, 35.794479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926773, 33.926601, 35.685352>,  <33.398727, 33.458675, 35.680744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926773, 33.926601, 35.685352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099960, 33.570889, 35.626408>,  <34.203873, 33.357460, 35.591042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099960, 33.570889, 35.626408>,  <33.926773, 33.926601, 35.685352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099960, 33.570889, 35.626408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410876, 0.340208, -0.845837,
		0.802319, 0.305676, 0.512685,
		0.432972, -0.889281, -0.147360,
		34.229851, 33.304104, 35.582199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659683, 34.039173, 35.634998>,  <33.926773, 33.926601, 35.685352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659683, 34.039173, 35.634998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613686, 33.688000, 35.449089>,  <34.586086, 33.477295, 35.337543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613686, 33.688000, 35.449089>,  <34.659683, 34.039173, 35.634998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613686, 33.688000, 35.449089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441679, 0.373901, -0.815547,
		0.889773, -0.299063, 0.344767,
		-0.114992, -0.877929, -0.464777,
		34.579189, 33.424622, 35.309654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231319, 33.978561, 35.182129>,  <34.659683, 34.039173, 35.634998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231319, 33.978561, 35.182129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963181, 33.715080, 35.045460>,  <34.802296, 33.556992, 34.963459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963181, 33.715080, 35.045460>,  <35.231319, 33.978561, 35.182129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963181, 33.715080, 35.045460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270738, 0.211598, -0.939110,
		0.690891, -0.722038, 0.036491,
		-0.670351, -0.658702, -0.341673,
		34.762074, 33.517471, 34.942959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555328, 33.685585, 34.635948>,  <35.231319, 33.978561, 35.182129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555328, 33.685585, 34.635948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165836, 33.655113, 34.550121>,  <34.932140, 33.636829, 34.498627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165836, 33.655113, 34.550121>,  <35.555328, 33.685585, 34.635948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165836, 33.655113, 34.550121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177292, 0.337605, -0.924441,
		0.142863, -0.938200, -0.315231,
		-0.973734, -0.076180, -0.214567,
		34.873714, 33.632259, 34.485752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060658, 33.193069, 34.592560>,  <35.555328, 33.685585, 34.635948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060658, 33.193069, 34.592560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430786, 33.177055, 34.743385>,  <36.652863, 33.167446, 34.833881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430786, 33.177055, 34.743385>,  <36.060658, 33.193069, 34.592560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430786, 33.177055, 34.743385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053459, -0.998252, 0.025206,
		0.375392, -0.043481, -0.925846,
		0.925323, -0.040033, 0.377060,
		36.708382, 33.165047, 34.856503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457642, 32.685940, 34.271622>,  <36.060658, 33.193069, 34.592560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457642, 32.685940, 34.271622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646660, 32.728180, 34.621605>,  <36.760071, 32.753525, 34.831596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646660, 32.728180, 34.621605>,  <36.457642, 32.685940, 34.271622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646660, 32.728180, 34.621605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053742, -0.987495, 0.148205,
		0.879666, -0.117055, -0.460962,
		0.472546, 0.105598, 0.874957,
		36.788425, 32.759861, 34.884090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033562, 32.335766, 34.201508>,  <36.457642, 32.685940, 34.271622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033562, 32.335766, 34.201508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960148, 32.339001, 34.594700>,  <36.916100, 32.340942, 34.830616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960148, 32.339001, 34.594700>,  <37.033562, 32.335766, 34.201508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960148, 32.339001, 34.594700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130124, -0.991366, -0.016135,
		0.974363, -0.130871, 0.183000,
		-0.183532, 0.008091, 0.982980,
		36.905087, 32.341427, 34.889595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522564, 32.170170, 33.609642>,  <37.033562, 32.335766, 34.201508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522564, 32.170170, 33.609642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787682, 31.875410, 33.556454>,  <36.946751, 31.698555, 33.524540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787682, 31.875410, 33.556454>,  <36.522564, 32.170170, 33.609642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787682, 31.875410, 33.556454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003318, -0.174688, 0.984618,
		-0.748794, -0.653041, -0.113337,
		0.662795, -0.736900, -0.132972,
		36.986519, 31.654341, 33.516563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313087, 31.485992, 33.762768>,  <36.522564, 32.170170, 33.609642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313087, 31.485992, 33.762768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702904, 31.467707, 33.850559>,  <36.936794, 31.456736, 33.903236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702904, 31.467707, 33.850559>,  <36.313087, 31.485992, 33.762768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702904, 31.467707, 33.850559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223905, -0.248043, 0.942518,
		0.011356, -0.967670, -0.251965,
		0.974545, -0.045713, 0.219483,
		36.995266, 31.453993, 33.916405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446674, 30.884800, 33.986401>,  <36.313087, 31.485992, 33.762768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446674, 30.884800, 33.986401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734692, 31.089636, 34.173721>,  <36.907501, 31.212538, 34.286114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734692, 31.089636, 34.173721>,  <36.446674, 30.884800, 33.986401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734692, 31.089636, 34.173721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225948, -0.465066, 0.855957,
		0.656116, -0.722136, -0.219161,
		0.720041, 0.512088, 0.468302,
		36.950703, 31.243261, 34.314213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972271, 30.456192, 34.197552>,  <36.446674, 30.884800, 33.986401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972271, 30.456192, 34.197552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999649, 30.775829, 34.436470>,  <37.016075, 30.967611, 34.579823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999649, 30.775829, 34.436470>,  <36.972271, 30.456192, 34.197552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999649, 30.775829, 34.436470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167665, -0.580971, 0.796468,
		0.983465, -0.154663, 0.094212,
		0.068450, 0.799095, 0.597296,
		37.020184, 31.015558, 34.615658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261925, 30.144463, 34.828533>,  <36.972271, 30.456192, 34.197552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261925, 30.144463, 34.828533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156822, 30.506344, 34.962681>,  <37.093761, 30.723473, 35.043171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156822, 30.506344, 34.962681>,  <37.261925, 30.144463, 34.828533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156822, 30.506344, 34.962681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215854, -0.393888, 0.893453,
		0.940409, 0.162366, 0.298779,
		-0.262752, 0.904704, 0.335369,
		37.077995, 30.777756, 35.063290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675076, 30.328638, 35.481663>,  <37.261925, 30.144463, 34.828533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675076, 30.328638, 35.481663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341461, 30.548336, 35.502506>,  <37.141293, 30.680155, 35.515015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341461, 30.548336, 35.502506>,  <37.675076, 30.328638, 35.481663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341461, 30.548336, 35.502506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170809, -0.346874, 0.922227,
		0.524605, 0.760268, 0.383121,
		-0.834035, 0.549246, 0.052111,
		37.091251, 30.713110, 35.518139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688393, 30.706383, 36.163670>,  <37.675076, 30.328638, 35.481663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688393, 30.706383, 36.163670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309704, 30.714054, 36.035080>,  <37.082489, 30.718657, 35.957928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309704, 30.714054, 36.035080>,  <37.688393, 30.706383, 36.163670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309704, 30.714054, 36.035080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314125, -0.274999, 0.908681,
		-0.070976, 0.961253, 0.266373,
		-0.946725, 0.019180, -0.321472,
		37.025688, 30.719809, 35.938637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306271, 30.927530, 36.624737>,  <37.688393, 30.706383, 36.163670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306271, 30.927530, 36.624737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024078, 30.725691, 36.425671>,  <36.854763, 30.604588, 36.306229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024078, 30.725691, 36.425671>,  <37.306271, 30.927530, 36.624737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024078, 30.725691, 36.425671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306143, -0.416340, 0.856118,
		-0.639194, 0.756335, 0.139241,
		-0.705483, -0.504598, -0.497669,
		36.812435, 30.574312, 36.276371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817013, 30.948423, 37.044788>,  <37.306271, 30.927530, 36.624737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817013, 30.948423, 37.044788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690960, 30.643253, 36.818996>,  <36.615330, 30.460152, 36.683521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690960, 30.643253, 36.818996>,  <36.817013, 30.948423, 37.044788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690960, 30.643253, 36.818996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463079, -0.395570, 0.793147,
		-0.828403, 0.511344, -0.228638,
		-0.315129, -0.762923, -0.564484,
		36.596420, 30.414377, 36.649651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137802, 30.905434, 37.187054>,  <36.817013, 30.948423, 37.044788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137802, 30.905434, 37.187054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226269, 30.538681, 37.054138>,  <36.279350, 30.318630, 36.974388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226269, 30.538681, 37.054138>,  <36.137802, 30.905434, 37.187054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226269, 30.538681, 37.054138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468929, -0.398731, 0.788111,
		-0.855096, -0.018487, -0.518139,
		0.221168, -0.916882, -0.332284,
		36.292618, 30.263617, 36.954453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538452, 30.470024, 37.319088>,  <36.137802, 30.905434, 37.187054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538452, 30.470024, 37.319088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808262, 30.192734, 37.217533>,  <35.970146, 30.026360, 37.156601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808262, 30.192734, 37.217533>,  <35.538452, 30.470024, 37.319088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808262, 30.192734, 37.217533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297485, -0.569971, 0.765922,
		-0.675663, -0.441105, -0.590682,
		0.674524, -0.693224, -0.253886,
		36.010620, 29.984766, 37.141369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214371, 29.862276, 37.150101>,  <35.538452, 30.470024, 37.319088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214371, 29.862276, 37.150101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574661, 29.749331, 37.282135>,  <35.790836, 29.681562, 37.361355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574661, 29.749331, 37.282135>,  <35.214371, 29.862276, 37.150101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574661, 29.749331, 37.282135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426653, -0.432398, 0.794355,
		-0.081569, -0.856331, -0.509945,
		0.900729, -0.282365, 0.330086,
		35.844879, 29.664621, 37.381161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174110, 29.181459, 37.369320>,  <35.214371, 29.862276, 37.150101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174110, 29.181459, 37.369320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491558, 29.309088, 37.576534>,  <35.682026, 29.385666, 37.700863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491558, 29.309088, 37.576534>,  <35.174110, 29.181459, 37.369320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491558, 29.309088, 37.576534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325395, -0.496846, 0.804526,
		0.514085, -0.807054, -0.290484,
		0.793622, 0.319073, 0.518032,
		35.729645, 29.404810, 37.731945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439732, 28.475130, 37.626930>,  <35.174110, 29.181459, 37.369320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439732, 28.475130, 37.626930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601273, 28.760235, 37.856319>,  <35.698196, 28.931297, 37.993954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601273, 28.760235, 37.856319>,  <35.439732, 28.475130, 37.626930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601273, 28.760235, 37.856319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402055, -0.424796, 0.811110,
		0.821739, -0.558137, 0.115015,
		0.403853, 0.712763, 0.573473,
		35.722427, 28.974064, 38.028362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822777, 28.163164, 38.187031>,  <35.439732, 28.475130, 37.626930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822777, 28.163164, 38.187031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717670, 28.526205, 38.318005>,  <35.654606, 28.744030, 38.396591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717670, 28.526205, 38.318005>,  <35.822777, 28.163164, 38.187031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717670, 28.526205, 38.318005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303435, -0.399876, 0.864885,
		0.915905, 0.127904, 0.380471,
		-0.262763, 0.907601, 0.327438,
		35.638840, 28.798485, 38.416237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884674, 28.122725, 38.926174>,  <35.822777, 28.163164, 38.187031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884674, 28.122725, 38.926174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675377, 28.460386, 38.879490>,  <35.549797, 28.662983, 38.851479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675377, 28.460386, 38.879490>,  <35.884674, 28.122725, 38.926174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675377, 28.460386, 38.879490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491673, -0.187188, 0.850422,
		0.696041, 0.502360, 0.512993,
		-0.523245, 0.844153, -0.116706,
		35.518402, 28.713633, 38.844479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990440, 28.608093, 39.522141>,  <35.884674, 28.122725, 38.926174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990440, 28.608093, 39.522141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644772, 28.722385, 39.356461>,  <35.437370, 28.790960, 39.257053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644772, 28.722385, 39.356461>,  <35.990440, 28.608093, 39.522141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644772, 28.722385, 39.356461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479776, -0.219690, 0.849442,
		0.151718, 0.932788, 0.326938,
		-0.864174, 0.285733, -0.414198,
		35.385521, 28.808105, 39.232201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788033, 29.177879, 39.943920>,  <35.990440, 28.608093, 39.522141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788033, 29.177879, 39.943920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470493, 29.022736, 39.756573>,  <35.279972, 28.929649, 39.644165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470493, 29.022736, 39.756573>,  <35.788033, 29.177879, 39.943920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470493, 29.022736, 39.756573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471192, -0.094577, 0.876945,
		-0.384429, 0.916853, -0.107677,
		-0.793846, -0.387860, -0.468372,
		35.232338, 28.906378, 39.616062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285526, 29.388845, 40.420837>,  <35.788033, 29.177879, 39.943920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285526, 29.388845, 40.420837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106674, 29.126705, 40.177334>,  <34.999363, 28.969421, 40.031231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106674, 29.126705, 40.177334>,  <35.285526, 29.388845, 40.420837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106674, 29.126705, 40.177334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626818, -0.255940, 0.735931,
		-0.638099, 0.710639, -0.296348,
		-0.447134, -0.655353, -0.608756,
		34.972534, 28.930099, 39.994705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576313, 29.551069, 40.306217>,  <35.285526, 29.388845, 40.420837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576313, 29.551069, 40.306217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583050, 29.157900, 40.232922>,  <34.587093, 28.921999, 40.188942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583050, 29.157900, 40.232922>,  <34.576313, 29.551069, 40.306217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583050, 29.157900, 40.232922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704722, -0.141678, 0.695194,
		-0.709283, 0.117424, -0.695075,
		0.016845, -0.982924, -0.183241,
		34.588104, 28.863022, 40.177948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822472, 29.317427, 40.507835>,  <34.576313, 29.551069, 40.306217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822472, 29.317427, 40.507835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069752, 29.003098, 40.500744>,  <34.218121, 28.814501, 40.496490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069752, 29.003098, 40.500744>,  <33.822472, 29.317427, 40.507835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069752, 29.003098, 40.500744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483836, -0.398212, 0.779314,
		-0.619460, -0.473195, -0.626383,
		0.618200, -0.785821, -0.017727,
		34.255211, 28.767351, 40.495426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390133, 28.801311, 40.870384>,  <33.822472, 29.317427, 40.507835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390133, 28.801311, 40.870384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749172, 28.625284, 40.860081>,  <33.964596, 28.519669, 40.853901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749172, 28.625284, 40.860081>,  <33.390133, 28.801311, 40.870384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749172, 28.625284, 40.860081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219820, -0.497476, 0.839164,
		-0.382100, -0.747569, -0.543268,
		0.897596, -0.440066, -0.025755,
		34.018452, 28.493265, 40.852356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310318, 28.036875, 40.888042>,  <33.390133, 28.801311, 40.870384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310318, 28.036875, 40.888042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683525, 28.095928, 41.019302>,  <33.907448, 28.131361, 41.098061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683525, 28.095928, 41.019302>,  <33.310318, 28.036875, 40.888042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683525, 28.095928, 41.019302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171804, -0.618524, 0.766754,
		0.316170, -0.771772, -0.551728,
		0.933017, 0.147636, 0.328152,
		33.963428, 28.140219, 41.117748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582489, 27.312674, 40.985016>,  <33.310318, 28.036875, 40.888042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582489, 27.312674, 40.985016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797615, 27.550356, 41.224239>,  <33.926689, 27.692965, 41.367775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797615, 27.550356, 41.224239>,  <33.582489, 27.312674, 40.985016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797615, 27.550356, 41.224239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172491, -0.616828, 0.767965,
		0.825231, -0.516181, -0.229242,
		0.537811, 0.594206, 0.598062,
		33.958958, 27.728619, 41.403660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972019, 26.860785, 41.291824>,  <33.582489, 27.312674, 40.985016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972019, 26.860785, 41.291824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981796, 27.188301, 41.521255>,  <33.987663, 27.384811, 41.658913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981796, 27.188301, 41.521255>,  <33.972019, 26.860785, 41.291824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981796, 27.188301, 41.521255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181551, -0.560570, 0.807961,
		0.983078, -0.123879, 0.134952,
		0.024439, 0.818789, 0.573574,
		33.989128, 27.433937, 41.693329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402687, 26.813448, 41.956722>,  <33.972019, 26.860785, 41.291824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402687, 26.813448, 41.956722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185715, 27.137314, 42.046352>,  <34.055531, 27.331635, 42.100128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185715, 27.137314, 42.046352>,  <34.402687, 26.813448, 41.956722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185715, 27.137314, 42.046352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205411, -0.386448, 0.899146,
		0.814600, 0.441699, 0.375936,
		-0.542432, 0.809667, 0.224071,
		34.022984, 27.380215, 42.113575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565544, 26.987965, 42.686806>,  <34.402687, 26.813448, 41.956722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565544, 26.987965, 42.686806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226887, 27.194012, 42.633369>,  <34.023693, 27.317640, 42.601307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226887, 27.194012, 42.633369>,  <34.565544, 26.987965, 42.686806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226887, 27.194012, 42.633369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298115, -0.251158, 0.920895,
		0.440817, 0.819495, 0.366206,
		-0.846645, 0.515118, -0.133589,
		33.972893, 27.348547, 42.593292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042641, 27.548105, 43.135971>,  <34.565544, 26.987965, 42.686806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042641, 27.548105, 43.135971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417015, 27.449663, 43.236732>,  <35.641640, 27.390598, 43.297188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417015, 27.449663, 43.236732>,  <35.042641, 27.548105, 43.135971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417015, 27.449663, 43.236732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348564, 0.545294, -0.762337,
		0.050253, 0.801304, 0.596143,
		0.935937, -0.246104, 0.251904,
		35.697796, 27.375832, 43.312305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397099, 28.197107, 43.139648>,  <35.042641, 27.548105, 43.135971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397099, 28.197107, 43.139648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677132, 27.920382, 43.068909>,  <35.845154, 27.754347, 43.026466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677132, 27.920382, 43.068909>,  <35.397099, 28.197107, 43.139648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677132, 27.920382, 43.068909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421374, 0.600204, -0.679852,
		0.576476, 0.401435, 0.711706,
		0.700085, -0.691813, -0.176849,
		35.887157, 27.712837, 43.015854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090416, 28.520151, 43.137138>,  <35.397099, 28.197107, 43.139648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090416, 28.520151, 43.137138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166649, 28.164972, 42.969696>,  <36.212391, 27.951866, 42.869232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166649, 28.164972, 42.969696>,  <36.090416, 28.520151, 43.137138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166649, 28.164972, 42.969696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725169, 0.414764, -0.549637,
		0.661669, -0.198806, 0.722959,
		0.190586, -0.887946, -0.418604,
		36.223824, 27.898588, 42.844116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820259, 28.404238, 43.100544>,  <36.090416, 28.520151, 43.137138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820259, 28.404238, 43.100544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660339, 28.151272, 42.835148>,  <36.564388, 27.999493, 42.675911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660339, 28.151272, 42.835148>,  <36.820259, 28.404238, 43.100544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660339, 28.151272, 42.835148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778187, 0.148304, -0.610271,
		0.484342, -0.760300, 0.432846,
		-0.399796, -0.632416, -0.663486,
		36.540401, 27.961548, 42.636101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410912, 28.023439, 42.856953>,  <36.820259, 28.404238, 43.100544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410912, 28.023439, 42.856953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117046, 27.997490, 42.586823>,  <36.940727, 27.981920, 42.424744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117046, 27.997490, 42.586823>,  <37.410912, 28.023439, 42.856953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117046, 27.997490, 42.586823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643970, 0.246535, -0.724240,
		0.213473, -0.966960, -0.139345,
		-0.734664, -0.064871, -0.675322,
		36.896648, 27.978027, 42.384224>
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
