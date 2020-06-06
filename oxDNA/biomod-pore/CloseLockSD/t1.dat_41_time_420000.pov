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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<3.921939, 15.006989, 15.095563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.299169, 15.015808, 14.962825>,  <4.525507, 15.021099, 14.883182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.299169, 15.015808, 14.962825>,  <3.921939, 15.006989, 15.095563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.299169, 15.015808, 14.962825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152356, -0.915583, 0.372150,
		-0.295627, -0.401524, -0.866824,
		0.943076, 0.022048, -0.331846,
		4.582092, 15.022423, 14.863271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.107946, 14.374837, 14.865003>,  <3.921939, 15.006989, 15.095563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.107946, 14.374837, 14.865003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.460455, 14.551349, 14.932691>,  <4.671960, 14.657255, 14.973303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.460455, 14.551349, 14.932691>,  <4.107946, 14.374837, 14.865003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.460455, 14.551349, 14.932691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363352, -0.861580, 0.354479,
		0.302220, -0.250906, -0.919624,
		0.881271, 0.441278, 0.169220,
		4.724836, 14.683732, 14.983457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.632963, 14.059968, 14.463769>,  <4.107946, 14.374837, 14.865003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.632963, 14.059968, 14.463769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.752274, 14.201303, 14.818437>,  <4.823861, 14.286103, 15.031238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.752274, 14.201303, 14.818437>,  <4.632963, 14.059968, 14.463769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.752274, 14.201303, 14.818437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430230, -0.879005, 0.205551,
		0.852016, 0.320161, -0.414204,
		0.298279, 0.353337, 0.886670,
		4.841758, 14.307303, 15.084437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.292394, 13.917116, 14.469014>,  <4.632963, 14.059968, 14.463769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.292394, 13.917116, 14.469014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.609591, 13.733294, 14.309030>,  <5.799910, 13.623000, 14.213038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.609591, 13.733294, 14.309030>,  <5.292394, 13.917116, 14.469014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.609591, 13.733294, 14.309030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064584, 0.716217, -0.694883,
		0.605797, 0.525207, 0.597635,
		0.792993, -0.459556, -0.399962,
		5.847489, 13.595427, 14.189041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.796957, 14.353688, 14.301345>,  <5.292394, 13.917116, 14.469014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.796957, 14.353688, 14.301345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.848875, 14.059386, 14.035467>,  <5.880026, 13.882805, 13.875940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.848875, 14.059386, 14.035467>,  <5.796957, 14.353688, 14.301345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.848875, 14.059386, 14.035467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039658, 0.673681, -0.737958,
		0.990747, 0.069423, 0.116619,
		0.129796, -0.735754, -0.664694,
		5.887814, 13.838660, 13.836059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.398894, 14.591110, 13.827562>,  <5.796957, 14.353688, 14.301345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.398894, 14.591110, 13.827562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.182401, 14.298900, 13.660999>,  <6.052505, 14.123573, 13.561062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.182401, 14.298900, 13.660999>,  <6.398894, 14.591110, 13.827562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.182401, 14.298900, 13.660999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046368, 0.468527, -0.882232,
		0.839592, -0.496802, -0.219710,
		-0.541234, -0.730527, -0.416407,
		6.020030, 14.079741, 13.536077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.901787, 14.257458, 13.335208>,  <6.398894, 14.591110, 13.827562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.901787, 14.257458, 13.335208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.526961, 14.180881, 13.218410>,  <6.302066, 14.134934, 13.148331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.526961, 14.180881, 13.218410>,  <6.901787, 14.257458, 13.335208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.526961, 14.180881, 13.218410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154289, 0.523169, -0.838146,
		0.313220, -0.830448, -0.460705,
		-0.937063, -0.191442, -0.291996,
		6.245842, 14.123447, 13.130811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.982050, 14.033065, 12.663257>,  <6.901787, 14.257458, 13.335208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.982050, 14.033065, 12.663257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.591229, 14.113360, 12.691755>,  <6.356737, 14.161537, 12.708855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.591229, 14.113360, 12.691755>,  <6.982050, 14.033065, 12.663257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.591229, 14.113360, 12.691755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048352, 0.534766, -0.843616,
		-0.207447, -0.820810, -0.532200,
		-0.977051, 0.200739, 0.071247,
		6.298114, 14.173582, 12.713129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.601784, 13.726910, 11.986601>,  <6.982050, 14.033065, 12.663257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.601784, 13.726910, 11.986601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.385963, 14.016150, 12.159117>,  <6.256470, 14.189693, 12.262626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.385963, 14.016150, 12.159117>,  <6.601784, 13.726910, 11.986601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.385963, 14.016150, 12.159117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039694, 0.489833, -0.870912,
		-0.841016, -0.487022, -0.235588,
		-0.539552, 0.723099, 0.431289,
		6.224097, 14.233079, 12.288504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.200964, 13.751361, 11.553882>,  <6.601784, 13.726910, 11.986601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.200964, 13.751361, 11.553882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.159502, 14.085227, 11.770248>,  <6.134624, 14.285546, 11.900068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.159502, 14.085227, 11.770248>,  <6.200964, 13.751361, 11.553882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.159502, 14.085227, 11.770248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151175, 0.524306, -0.838003,
		-0.983057, -0.168637, 0.071833,
		-0.103656, 0.834665, 0.540916,
		6.128405, 14.335627, 11.932524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.481398, 14.061341, 11.311224>,  <6.200964, 13.751361, 11.553882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.481398, 14.061341, 11.311224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.652862, 14.385947, 11.470066>,  <5.755741, 14.580710, 11.565372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.652862, 14.385947, 11.470066>,  <5.481398, 14.061341, 11.311224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.652862, 14.385947, 11.470066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344961, 0.553249, -0.758233,
		-0.835016, 0.188040, 0.517097,
		0.428661, 0.811515, 0.397106,
		5.781460, 14.629402, 11.589198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.935708, 14.596038, 11.164471>,  <5.481398, 14.061341, 11.311224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.935708, 14.596038, 11.164471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.281837, 14.781297, 11.241107>,  <5.489515, 14.892452, 11.287089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.281837, 14.781297, 11.241107>,  <4.935708, 14.596038, 11.164471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.281837, 14.781297, 11.241107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155803, 0.611881, -0.775453,
		-0.476380, 0.641168, 0.601636,
		0.865325, 0.463147, 0.191592,
		5.541435, 14.920241, 11.298585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.843468, 15.287951, 11.084476>,  <4.935708, 14.596038, 11.164471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.843468, 15.287951, 11.084476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.241912, 15.307407, 11.055080>,  <5.480978, 15.319081, 11.037443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.241912, 15.307407, 11.055080>,  <4.843468, 15.287951, 11.084476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.241912, 15.307407, 11.055080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083293, 0.792033, -0.604769,
		0.028786, 0.608537, 0.793003,
		0.996109, 0.048643, -0.073487,
		5.540745, 15.322001, 11.033034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.086081, 15.937417, 11.330725>,  <4.843468, 15.287951, 11.084476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.086081, 15.937417, 11.330725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.355217, 15.798616, 11.069383>,  <5.516699, 15.715336, 10.912578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.355217, 15.798616, 11.069383>,  <5.086081, 15.937417, 11.330725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.355217, 15.798616, 11.069383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156163, 0.796646, -0.583925,
		0.723116, 0.494919, 0.481828,
		0.672842, -0.347002, -0.653356,
		5.557069, 15.694516, 10.873376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.360209, 16.527967, 11.154321>,  <5.086081, 15.937417, 11.330725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.360209, 16.527967, 11.154321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.510878, 16.297604, 10.864094>,  <5.601279, 16.159386, 10.689958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.510878, 16.297604, 10.864094>,  <5.360209, 16.527967, 11.154321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.510878, 16.297604, 10.864094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075747, 0.799782, -0.595492,
		0.923245, 0.169345, 0.344878,
		0.376671, -0.575909, -0.725567,
		5.623879, 16.124830, 10.646423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.885451, 17.007957, 10.833149>,  <5.360209, 16.527967, 11.154321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.885451, 17.007957, 10.833149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.831728, 16.704914, 10.577653>,  <5.799495, 16.523088, 10.424356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.831728, 16.704914, 10.577653>,  <5.885451, 17.007957, 10.833149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.831728, 16.704914, 10.577653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147061, 0.622204, -0.768918,
		0.979967, -0.197204, 0.027849,
		-0.134306, -0.757610, -0.638740,
		5.791437, 16.477631, 10.386031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.549681, 16.985796, 10.402420>,  <5.885451, 17.007957, 10.833149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.549681, 16.985796, 10.402420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.238451, 16.803791, 10.229187>,  <6.051713, 16.694588, 10.125247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.238451, 16.803791, 10.229187>,  <6.549681, 16.985796, 10.402420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.238451, 16.803791, 10.229187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045119, 0.728136, -0.683946,
		0.626548, -0.512622, -0.587075,
		-0.778076, -0.455013, -0.433083,
		6.005029, 16.667286, 10.099262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.746445, 16.895704, 9.666065>,  <6.549681, 16.985796, 10.402420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.746445, 16.895704, 9.666065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.347062, 16.883854, 9.684855>,  <6.107432, 16.876743, 9.696128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.347062, 16.883854, 9.684855>,  <6.746445, 16.895704, 9.666065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.347062, 16.883854, 9.684855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052121, 0.791956, -0.608350,
		-0.019178, -0.609859, -0.792278,
		-0.998456, -0.029627, 0.046974,
		6.047525, 16.874966, 9.698947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.540485, 17.012335, 9.040210>,  <6.746445, 16.895704, 9.666065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.540485, 17.012335, 9.040210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.216054, 17.083525, 9.263091>,  <6.021395, 17.126238, 9.396820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.216054, 17.083525, 9.263091>,  <6.540485, 17.012335, 9.040210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.216054, 17.083525, 9.263091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116118, 0.884640, -0.451584,
		-0.573295, -0.430972, -0.696847,
		-0.811079, 0.177975, 0.557204,
		5.972730, 17.136917, 9.430252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.017720, 17.102331, 8.543743>,  <6.540485, 17.012335, 9.040210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.017720, 17.102331, 8.543743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.877124, 17.264841, 8.881120>,  <5.792767, 17.362347, 9.083546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.877124, 17.264841, 8.881120>,  <6.017720, 17.102331, 8.543743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.877124, 17.264841, 8.881120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261856, 0.822305, -0.505219,
		-0.898825, -0.398439, -0.182644,
		-0.351488, 0.406277, 0.843442,
		5.771678, 17.386724, 9.134152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.341949, 17.291834, 8.464174>,  <6.017720, 17.102331, 8.543743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.341949, 17.291834, 8.464174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.453969, 17.528887, 8.766262>,  <5.521181, 17.671120, 8.947515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.453969, 17.528887, 8.766262>,  <5.341949, 17.291834, 8.464174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.453969, 17.528887, 8.766262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480535, 0.767585, -0.424144,
		-0.831058, -0.244129, 0.499744,
		0.280050, 0.592633, 0.755220,
		5.537984, 17.706676, 8.992828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.760142, 17.759727, 8.547271>,  <5.341949, 17.291834, 8.464174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.760142, 17.759727, 8.547271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.061662, 17.931757, 8.745996>,  <5.242574, 18.034975, 8.865231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.061662, 17.931757, 8.745996>,  <4.760142, 17.759727, 8.547271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.061662, 17.931757, 8.745996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233480, 0.882027, -0.409287,
		-0.614225, 0.192525, 0.765285,
		0.753800, 0.430073, 0.496812,
		5.287802, 18.060780, 8.895040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.545034, 18.530918, 8.659167>,  <4.760142, 17.759727, 8.547271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.545034, 18.530918, 8.659167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.940112, 18.488878, 8.705496>,  <5.177159, 18.463655, 8.733294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.940112, 18.488878, 8.705496>,  <4.545034, 18.530918, 8.659167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.940112, 18.488878, 8.705496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141268, 0.917282, -0.372340,
		-0.067110, 0.384120, 0.920841,
		0.987694, -0.105098, 0.115822,
		5.236420, 18.457350, 8.740243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.719028, 19.197239, 8.718578>,  <4.545034, 18.530918, 8.659167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.719028, 19.197239, 8.718578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.058260, 19.008595, 8.621964>,  <5.261800, 18.895407, 8.563994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.058260, 19.008595, 8.621964>,  <4.719028, 19.197239, 8.718578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.058260, 19.008595, 8.621964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285017, 0.790312, -0.542377,
		0.446682, 0.391137, 0.804666,
		0.848081, -0.471613, -0.241537,
		5.312685, 18.867111, 8.549502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.307583, 19.621460, 8.959780>,  <4.719028, 19.197239, 8.718578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.307583, 19.621460, 8.959780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.424954, 19.397282, 8.649993>,  <5.495378, 19.262774, 8.464121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.424954, 19.397282, 8.649993>,  <5.307583, 19.621460, 8.959780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.424954, 19.397282, 8.649993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345462, 0.817546, -0.460733,
		0.891378, -0.132356, 0.433505,
		0.293430, -0.560447, -0.774466,
		5.512983, 19.229147, 8.417653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.977627, 19.914360, 8.679760>,  <5.307583, 19.621460, 8.959780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.977627, 19.914360, 8.679760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.771911, 19.722166, 8.395609>,  <5.648481, 19.606850, 8.225118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.771911, 19.722166, 8.395609>,  <5.977627, 19.914360, 8.679760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.771911, 19.722166, 8.395609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270982, 0.694840, -0.666158,
		0.813678, -0.535099, -0.227148,
		-0.514292, -0.480485, -0.710378,
		5.617623, 19.578020, 8.182495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.365885, 19.459579, 8.020911>,  <5.977627, 19.914360, 8.679760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.365885, 19.459579, 8.020911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.018123, 19.653212, 7.981315>,  <5.809466, 19.769392, 7.957557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.018123, 19.653212, 7.981315>,  <6.365885, 19.459579, 8.020911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.018123, 19.653212, 7.981315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440891, 0.669610, -0.597694,
		-0.223048, -0.563282, -0.795590,
		-0.869405, 0.484083, -0.098991,
		5.757302, 19.798437, 7.951617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.238346, 19.698969, 7.255934>,  <6.365885, 19.459579, 8.020911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.238346, 19.698969, 7.255934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.073613, 19.970312, 7.499318>,  <5.974773, 20.133118, 7.645348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.073613, 19.970312, 7.499318>,  <6.238346, 19.698969, 7.255934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.073613, 19.970312, 7.499318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518986, 0.723444, -0.455282,
		-0.749032, 0.128283, -0.649996,
		-0.411831, 0.678360, 0.608460,
		5.950064, 20.173820, 7.681856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.339627, 19.044094, 7.282194>,  <6.238346, 19.698969, 7.255934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.339627, 19.044094, 7.282194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.702964, 19.006424, 7.119199>,  <6.920966, 18.983822, 7.021401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.702964, 19.006424, 7.119199>,  <6.339627, 19.044094, 7.282194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.702964, 19.006424, 7.119199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359472, 0.673795, 0.645586,
		0.213766, -0.732893, 0.645888,
		0.908342, -0.094174, -0.407489,
		6.975466, 18.978172, 6.996952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.393538, 19.254189, 6.631410>,  <6.339627, 19.044094, 7.282194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.393538, 19.254189, 6.631410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.723611, 19.296272, 6.409417>,  <6.921655, 19.321524, 6.276222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.723611, 19.296272, 6.409417>,  <6.393538, 19.254189, 6.631410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.723611, 19.296272, 6.409417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329821, -0.707883, -0.624596,
		-0.458576, 0.698450, -0.549432,
		0.825183, 0.105210, -0.554982,
		6.971166, 19.327835, 6.242923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.363235, 18.580496, 6.299406>,  <6.393538, 19.254189, 6.631410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.363235, 18.580496, 6.299406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.716090, 18.638428, 6.120138>,  <6.927804, 18.673187, 6.012578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.716090, 18.638428, 6.120138>,  <6.363235, 18.580496, 6.299406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.716090, 18.638428, 6.120138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341603, -0.851829, 0.397108,
		-0.324251, -0.503400, -0.800905,
		0.882139, 0.144829, -0.448170,
		6.980732, 18.681877, 5.985687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.556594, 18.006771, 5.861750>,  <6.363235, 18.580496, 6.299406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.556594, 18.006771, 5.861750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.889679, 18.194666, 5.979011>,  <7.089530, 18.307404, 6.049367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.889679, 18.194666, 5.979011>,  <6.556594, 18.006771, 5.861750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.889679, 18.194666, 5.979011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353030, -0.858273, 0.372474,
		0.426570, -0.206672, -0.880526,
		0.832711, 0.469738, 0.293152,
		7.139493, 18.335587, 6.066956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.152351, 17.728821, 5.641702>,  <6.556594, 18.006771, 5.861750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.152351, 17.728821, 5.641702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.274012, 17.913082, 5.975238>,  <7.347008, 18.023638, 6.175361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.274012, 17.913082, 5.975238>,  <7.152351, 17.728821, 5.641702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.274012, 17.913082, 5.975238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459250, -0.837783, 0.295313,
		0.834615, 0.293122, -0.466366,
		0.304151, 0.460651, 0.833842,
		7.365257, 18.051277, 6.225391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.836552, 17.502235, 5.812203>,  <7.152351, 17.728821, 5.641702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.836552, 17.502235, 5.812203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.726880, 17.617220, 6.179286>,  <7.661076, 17.686211, 6.399537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.726880, 17.617220, 6.179286>,  <7.836552, 17.502235, 5.812203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.726880, 17.617220, 6.179286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527702, -0.752804, 0.393467,
		0.803962, 0.592159, 0.054711,
		-0.274182, 0.287462, 0.917709,
		7.644625, 17.703459, 6.454599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.296244, 17.290087, 6.253033>,  <7.836552, 17.502235, 5.812203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.296244, 17.290087, 6.253033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.036650, 17.385611, 6.541973>,  <7.880893, 17.442924, 6.715336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.036650, 17.385611, 6.541973>,  <8.296244, 17.290087, 6.253033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.036650, 17.385611, 6.541973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342323, -0.756256, 0.557577,
		0.679436, 0.609136, 0.409048,
		-0.648985, 0.238811, 0.722348,
		7.841954, 17.457254, 6.758677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.610936, 17.410633, 6.858710>,  <8.296244, 17.290087, 6.253033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.610936, 17.410633, 6.858710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.250419, 17.261257, 6.946540>,  <8.034108, 17.171631, 6.999238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.250419, 17.261257, 6.946540>,  <8.610936, 17.410633, 6.858710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.250419, 17.261257, 6.946540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419417, -0.625335, 0.658062,
		-0.108439, 0.685200, 0.720237,
		-0.901294, -0.373439, 0.219574,
		7.980031, 17.149225, 7.012412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.563956, 17.299572, 7.555998>,  <8.610936, 17.410633, 6.858710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.563956, 17.299572, 7.555998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.258199, 17.080667, 7.419641>,  <8.074744, 16.949324, 7.337828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.258199, 17.080667, 7.419641>,  <8.563956, 17.299572, 7.555998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.258199, 17.080667, 7.419641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219669, -0.718139, 0.660319,
		-0.606176, 0.429860, 0.669157,
		-0.764393, -0.547263, -0.340891,
		8.028881, 16.916489, 7.317374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.209368, 17.149822, 8.107962>,  <8.563956, 17.299572, 7.555998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.209368, 17.149822, 8.107962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.080175, 16.875652, 7.846925>,  <8.002660, 16.711151, 7.690303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.080175, 16.875652, 7.846925>,  <8.209368, 17.149822, 8.107962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.080175, 16.875652, 7.846925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072082, -0.705360, 0.705175,
		-0.943656, 0.180718, 0.277225,
		-0.322981, -0.685425, -0.652591,
		7.983281, 16.670025, 7.651148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.745533, 16.759064, 8.487819>,  <8.209368, 17.149822, 8.107962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.745533, 16.759064, 8.487819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.849020, 16.517233, 8.186474>,  <7.911112, 16.372135, 8.005667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.849020, 16.517233, 8.186474>,  <7.745533, 16.759064, 8.487819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.849020, 16.517233, 8.186474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020055, -0.776386, 0.629939,
		-0.965745, -0.178084, -0.188739,
		0.258716, -0.604575, -0.753362,
		7.926635, 16.335861, 7.960465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.219051, 16.274576, 8.469644>,  <7.745533, 16.759064, 8.487819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.219051, 16.274576, 8.469644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.558841, 16.115877, 8.330513>,  <7.762714, 16.020657, 8.247035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.558841, 16.115877, 8.330513>,  <7.219051, 16.274576, 8.469644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.558841, 16.115877, 8.330513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113129, -0.780849, 0.614391,
		-0.515359, -0.482561, -0.708195,
		0.849474, -0.396750, -0.347827,
		7.813683, 15.996852, 8.226165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.062224, 15.588191, 8.414554>,  <7.219051, 16.274576, 8.469644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.062224, 15.588191, 8.414554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.457315, 15.563894, 8.356998>,  <7.694370, 15.549316, 8.322466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.457315, 15.563894, 8.356998>,  <7.062224, 15.588191, 8.414554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.457315, 15.563894, 8.356998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056312, -0.720803, 0.690848,
		-0.145677, -0.690473, -0.708537,
		0.987728, -0.060742, -0.143887,
		7.753634, 15.545671, 8.313832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.232506, 14.885075, 8.267709>,  <7.062224, 15.588191, 8.414554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.232506, 14.885075, 8.267709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.582144, 15.042868, 8.381085>,  <7.791927, 15.137544, 8.449111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.582144, 15.042868, 8.381085>,  <7.232506, 14.885075, 8.267709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.582144, 15.042868, 8.381085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104741, -0.722846, 0.683025,
		0.474326, -0.567342, -0.673155,
		0.874096, 0.394483, 0.283441,
		7.844373, 15.161213, 8.466118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.572204, 14.275683, 8.404816>,  <7.232506, 14.885075, 8.267709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.572204, 14.275683, 8.404816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.780349, 14.572462, 8.573925>,  <7.905236, 14.750529, 8.675390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.780349, 14.572462, 8.573925>,  <7.572204, 14.275683, 8.404816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.780349, 14.572462, 8.573925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189506, -0.583071, 0.790010,
		0.832652, -0.330974, -0.444012,
		0.520363, 0.741946, 0.422774,
		7.936458, 14.795046, 8.700757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.129427, 13.907263, 8.626342>,  <7.572204, 14.275683, 8.404816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.129427, 13.907263, 8.626342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.135512, 14.246985, 8.837414>,  <8.139164, 14.450819, 8.964057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.135512, 14.246985, 8.837414>,  <8.129427, 13.907263, 8.626342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.135512, 14.246985, 8.837414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294282, -0.508170, 0.809420,
		0.955598, 0.142972, -0.257667,
		0.015214, 0.849307, 0.527680,
		8.140077, 14.501778, 8.995718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.722960, 13.943757, 8.933007>,  <8.129427, 13.907263, 8.626342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.722960, 13.943757, 8.933007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.462995, 14.147878, 9.158290>,  <8.307015, 14.270350, 9.293460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.462995, 14.147878, 9.158290>,  <8.722960, 13.943757, 8.933007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.462995, 14.147878, 9.158290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258128, -0.548792, 0.795108,
		0.714830, 0.662132, 0.224944,
		-0.649914, 0.510303, 0.563207,
		8.268021, 14.300968, 9.327252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.006426, 13.918914, 9.636321>,  <8.722960, 13.943757, 8.933007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.006426, 13.918914, 9.636321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.620755, 14.022706, 9.658346>,  <8.389353, 14.084981, 9.671561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.620755, 14.022706, 9.658346>,  <9.006426, 13.918914, 9.636321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.620755, 14.022706, 9.658346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066271, -0.436640, 0.897192,
		0.256846, 0.861403, 0.438195,
		-0.964177, 0.259480, 0.055064,
		8.331502, 14.100550, 9.674865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.908202, 14.159130, 10.328491>,  <9.006426, 13.918914, 9.636321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.908202, 14.159130, 10.328491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.529465, 14.068367, 10.237275>,  <8.302222, 14.013909, 10.182546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.529465, 14.068367, 10.237275>,  <8.908202, 14.159130, 10.328491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.529465, 14.068367, 10.237275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068792, -0.549653, 0.832556,
		-0.314256, 0.803987, 0.504826,
		-0.946843, -0.226907, -0.228039,
		8.245412, 14.000295, 10.168863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.500223, 14.295594, 10.963024>,  <8.908202, 14.159130, 10.328491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.500223, 14.295594, 10.963024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.313643, 14.026284, 10.733547>,  <8.201694, 13.864698, 10.595861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.313643, 14.026284, 10.733547>,  <8.500223, 14.295594, 10.963024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.313643, 14.026284, 10.733547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247599, -0.523263, 0.815408,
		-0.849187, 0.522394, 0.077375,
		-0.466451, -0.673276, -0.573692,
		8.173707, 13.824302, 10.561440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.801883, 14.192508, 11.151515>,  <8.500223, 14.295594, 10.963024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.801883, 14.192508, 11.151515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.857948, 13.856453, 10.941935>,  <7.891588, 13.654820, 10.816187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.857948, 13.856453, 10.941935>,  <7.801883, 14.192508, 11.151515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.857948, 13.856453, 10.941935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449286, -0.525525, 0.722472,
		-0.882324, 0.134139, -0.451121,
		0.140164, -0.840137, -0.523950,
		7.899997, 13.604412, 10.784750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.255597, 13.884604, 11.293204>,  <7.801883, 14.192508, 11.151515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.255597, 13.884604, 11.293204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.464168, 13.582380, 11.134588>,  <7.589311, 13.401046, 11.039418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.464168, 13.582380, 11.134588>,  <7.255597, 13.884604, 11.293204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.464168, 13.582380, 11.134588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443851, -0.637059, 0.630199,
		-0.728773, -0.152598, -0.667536,
		0.521427, -0.755559, -0.396541,
		7.620596, 13.355713, 11.015626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.752406, 13.408482, 11.215110>,  <7.255597, 13.884604, 11.293204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.752406, 13.408482, 11.215110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.105056, 13.221269, 11.239388>,  <7.316646, 13.108941, 11.253956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.105056, 13.221269, 11.239388>,  <6.752406, 13.408482, 11.215110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.105056, 13.221269, 11.239388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396993, -0.665893, 0.631650,
		-0.255215, -0.580975, -0.772874,
		0.881624, -0.468032, 0.060698,
		7.369543, 13.080859, 11.257598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.605239, 12.667734, 11.287325>,  <6.752406, 13.408482, 11.215110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.605239, 12.667734, 11.287325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.980707, 12.715866, 11.416582>,  <7.205988, 12.744745, 11.494136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.980707, 12.715866, 11.416582>,  <6.605239, 12.667734, 11.287325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.980707, 12.715866, 11.416582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167222, -0.660708, 0.731780,
		0.301558, -0.740936, -0.600064,
		0.938669, 0.120331, 0.323142,
		7.262308, 12.751966, 11.513525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.904840, 12.005176, 11.386735>,  <6.605239, 12.667734, 11.287325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.904840, 12.005176, 11.386735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.120818, 12.268309, 11.596768>,  <7.250405, 12.426188, 11.722789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.120818, 12.268309, 11.596768>,  <6.904840, 12.005176, 11.386735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.120818, 12.268309, 11.596768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043686, -0.601095, 0.797982,
		0.840565, -0.453806, -0.295821,
		0.539946, 0.657833, 0.525085,
		7.282802, 12.465658, 11.754293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.434955, 11.607734, 11.787244>,  <6.904840, 12.005176, 11.386735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.434955, 11.607734, 11.787244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.409401, 11.960552, 11.973969>,  <7.394068, 12.172243, 12.086003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.409401, 11.960552, 11.973969>,  <7.434955, 11.607734, 11.787244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.409401, 11.960552, 11.973969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132684, -0.471122, 0.872032,
		0.989097, -0.006228, 0.147131,
		-0.063886, 0.882046, 0.466811,
		7.390235, 12.225166, 12.114012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.795407, 11.517980, 12.484572>,  <7.434955, 11.607734, 11.787244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.795407, 11.517980, 12.484572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.584069, 11.854677, 12.528965>,  <7.457265, 12.056696, 12.555600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.584069, 11.854677, 12.528965>,  <7.795407, 11.517980, 12.484572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.584069, 11.854677, 12.528965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227772, -0.266450, 0.936549,
		0.817906, 0.469544, 0.332504,
		-0.528347, 0.841744, 0.110981,
		7.425565, 12.107201, 12.562260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.973695, 11.803633, 13.151377>,  <7.795407, 11.517980, 12.484572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.973695, 11.803633, 13.151377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.609625, 11.947089, 13.068469>,  <7.391184, 12.033163, 13.018724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.609625, 11.947089, 13.068469>,  <7.973695, 11.803633, 13.151377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.609625, 11.947089, 13.068469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343815, -0.374998, 0.860911,
		0.231033, 0.854840, 0.464620,
		-0.910173, 0.358642, -0.207270,
		7.336574, 12.054682, 13.006288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.730151, 11.993784, 13.779320>,  <7.973695, 11.803633, 13.151377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.730151, 11.993784, 13.779320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.406607, 11.942513, 13.549776>,  <7.212480, 11.911751, 13.412050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.406607, 11.942513, 13.549776>,  <7.730151, 11.993784, 13.779320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.406607, 11.942513, 13.549776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509033, -0.335877, 0.792510,
		-0.294327, 0.933144, 0.206432,
		-0.808862, -0.128176, -0.573859,
		7.163948, 11.904060, 13.377619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.899181, 11.458865, 14.231489>,  <7.730151, 11.993784, 13.779320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.899181, 11.458865, 14.231489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.127724, 11.197742, 14.430444>,  <8.264850, 11.041069, 14.549816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.127724, 11.197742, 14.430444>,  <7.899181, 11.458865, 14.231489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.127724, 11.197742, 14.430444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609406, 0.743397, 0.275655,
		-0.549705, 0.145612, 0.822570,
		0.571357, -0.652808, 0.497386,
		8.299130, 11.001900, 14.579659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.046184, 11.636849, 14.999867>,  <7.899181, 11.458865, 14.231489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.046184, 11.636849, 14.999867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.349908, 11.419250, 14.857034>,  <8.532143, 11.288690, 14.771334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.349908, 11.419250, 14.857034>,  <8.046184, 11.636849, 14.999867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.349908, 11.419250, 14.857034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643013, 0.711494, 0.283391,
		0.099898, -0.444792, 0.890045,
		0.759312, -0.544000, -0.357084,
		8.577702, 11.256049, 14.749908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.582315, 11.473470, 15.514200>,  <8.046184, 11.636849, 14.999867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.582315, 11.473470, 15.514200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.706051, 11.506609, 15.135265>,  <8.780293, 11.526492, 14.907905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.706051, 11.506609, 15.135265>,  <8.582315, 11.473470, 15.514200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.706051, 11.506609, 15.135265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663472, 0.694870, 0.277416,
		0.681259, -0.714347, 0.159984,
		0.309339, 0.082847, -0.947336,
		8.798852, 11.531464, 14.851065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.353256, 11.407825, 15.391535>,  <8.582315, 11.473470, 15.514200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.353256, 11.407825, 15.391535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.236065, 11.672840, 15.115794>,  <9.165751, 11.831849, 14.950350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.236065, 11.672840, 15.115794>,  <9.353256, 11.407825, 15.391535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.236065, 11.672840, 15.115794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741127, 0.612881, 0.274060,
		0.604065, -0.430604, -0.670586,
		-0.292978, 0.662539, -0.689352,
		9.148171, 11.871602, 14.908989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.948211, 11.662086, 15.032453>,  <9.353256, 11.407825, 15.391535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.948211, 11.662086, 15.032453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.654977, 11.933968, 15.022773>,  <9.479036, 12.097097, 15.016965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.654977, 11.933968, 15.022773>,  <9.948211, 11.662086, 15.032453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.654977, 11.933968, 15.022773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580640, 0.643975, 0.498149,
		0.354178, 0.351135, -0.866754,
		-0.733086, 0.679706, -0.024199,
		9.435051, 12.137879, 15.015513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.136487, 12.377848, 14.746682>,  <9.948211, 11.662086, 15.032453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.136487, 12.377848, 14.746682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.880041, 12.351317, 15.052511>,  <9.726173, 12.335400, 15.236009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.880041, 12.351317, 15.052511>,  <10.136487, 12.377848, 14.746682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.880041, 12.351317, 15.052511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570090, 0.625803, 0.532323,
		-0.513779, 0.777156, -0.363401,
		-0.641115, -0.066325, 0.764573,
		9.687707, 12.331420, 15.281883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.725458, 12.925707, 15.043776>,  <10.136487, 12.377848, 14.746682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.725458, 12.925707, 15.043776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.840701, 12.672447, 15.331141>,  <9.909846, 12.520492, 15.503559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.840701, 12.672447, 15.331141>,  <9.725458, 12.925707, 15.043776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.840701, 12.672447, 15.331141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292567, 0.772551, 0.563534,
		-0.911811, 0.047826, 0.407816,
		0.288107, -0.633149, 0.718413,
		9.927134, 12.482502, 15.546664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.587575, 13.248505, 15.598308>,  <9.725458, 12.925707, 15.043776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.587575, 13.248505, 15.598308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.870417, 12.987268, 15.706734>,  <10.040122, 12.830526, 15.771790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.870417, 12.987268, 15.706734>,  <9.587575, 13.248505, 15.598308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.870417, 12.987268, 15.706734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439250, 0.706101, 0.555411,
		-0.554133, -0.273667, 0.786157,
		0.707104, -0.653091, 0.271066,
		10.082548, 12.791341, 15.788054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.771176, 13.382505, 16.280252>,  <9.587575, 13.248505, 15.598308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.771176, 13.382505, 16.280252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.095610, 13.173569, 16.174952>,  <10.290270, 13.048206, 16.111771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.095610, 13.173569, 16.174952>,  <9.771176, 13.382505, 16.280252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.095610, 13.173569, 16.174952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542455, 0.503338, 0.672602,
		-0.218825, -0.688338, 0.691597,
		0.811084, -0.522342, -0.263250,
		10.338935, 13.016866, 16.095976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.138300, 13.077426, 16.905994>,  <9.771176, 13.382505, 16.280252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.138300, 13.077426, 16.905994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.404956, 13.109788, 16.609604>,  <10.564950, 13.129205, 16.431770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.404956, 13.109788, 16.609604>,  <10.138300, 13.077426, 16.905994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.404956, 13.109788, 16.609604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585010, 0.559236, 0.587383,
		0.461901, -0.825051, 0.325480,
		0.666641, 0.080904, -0.740975,
		10.604948, 13.134059, 16.387312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.823092, 12.892776, 17.157597>,  <10.138300, 13.077426, 16.905994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.823092, 12.892776, 17.157597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.891807, 13.096198, 16.820108>,  <10.933036, 13.218251, 16.617617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.891807, 13.096198, 16.820108>,  <10.823092, 12.892776, 17.157597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.891807, 13.096198, 16.820108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656273, 0.579659, 0.483013,
		0.734707, -0.636686, -0.234171,
		0.171788, 0.508553, -0.843719,
		10.943343, 13.248764, 16.566992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.483294, 12.988714, 17.288658>,  <10.823092, 12.892776, 17.157597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.483294, 12.988714, 17.288658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.416394, 13.232447, 16.978628>,  <11.376254, 13.378686, 16.792610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.416394, 13.232447, 16.978628>,  <11.483294, 12.988714, 17.288658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.416394, 13.232447, 16.978628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599941, 0.686745, 0.410429,
		0.782367, -0.396355, -0.480422,
		-0.167252, 0.609331, -0.775076,
		11.366219, 13.415246, 16.746105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.157804, 13.175843, 16.927265>,  <11.483294, 12.988714, 17.288658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.157804, 13.175843, 16.927265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.882165, 13.465076, 16.908121>,  <11.716781, 13.638617, 16.896635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.882165, 13.465076, 16.908121>,  <12.157804, 13.175843, 16.927265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.882165, 13.465076, 16.908121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630996, 0.631195, 0.451041,
		0.356351, 0.280611, -0.891219,
		-0.689100, 0.723084, -0.047862,
		11.675435, 13.682002, 16.893763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.572570, 13.793664, 16.921289>,  <12.157804, 13.175843, 16.927265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.572570, 13.793664, 16.921289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.199212, 13.927571, 16.972988>,  <11.975197, 14.007915, 17.004007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.199212, 13.927571, 16.972988>,  <12.572570, 13.793664, 16.921289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.199212, 13.927571, 16.972988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354444, 0.803788, 0.477801,
		0.056066, 0.491788, -0.868908,
		-0.933395, 0.334768, 0.129246,
		11.919193, 14.028002, 17.011763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.549857, 14.457966, 16.713013>,  <12.572570, 13.793664, 16.921289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.549857, 14.457966, 16.713013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.246471, 14.445429, 16.973396>,  <12.064440, 14.437906, 17.129627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.246471, 14.445429, 16.973396>,  <12.549857, 14.457966, 16.713013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.246471, 14.445429, 16.973396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419693, 0.740663, 0.524667,
		-0.498586, 0.671145, -0.548613,
		-0.758465, -0.031343, 0.650960,
		12.018932, 14.436026, 17.168684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.367507, 15.240912, 16.871988>,  <12.549857, 14.457966, 16.713013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.367507, 15.240912, 16.871988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.211502, 15.027287, 17.172031>,  <12.117899, 14.899111, 17.352058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.211502, 15.027287, 17.172031>,  <12.367507, 15.240912, 16.871988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.211502, 15.027287, 17.172031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202126, 0.745097, 0.635591,
		-0.898352, 0.399505, -0.182648,
		-0.390012, -0.534066, 0.750109,
		12.094499, 14.867066, 17.397064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.935517, 15.738858, 17.294626>,  <12.367507, 15.240912, 16.871988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.935517, 15.738858, 17.294626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.035553, 15.416392, 17.509123>,  <12.095574, 15.222913, 17.637821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.035553, 15.416392, 17.509123>,  <11.935517, 15.738858, 17.294626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.035553, 15.416392, 17.509123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288327, 0.590723, 0.753601,
		-0.924296, -0.033855, 0.380173,
		0.250090, -0.806164, 0.536241,
		12.110579, 15.174543, 17.669994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.725828, 15.906869, 17.958096>,  <11.935517, 15.738858, 17.294626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.725828, 15.906869, 17.958096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.978288, 15.597514, 17.981838>,  <12.129764, 15.411901, 17.996084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.978288, 15.597514, 17.981838>,  <11.725828, 15.906869, 17.958096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.978288, 15.597514, 17.981838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472678, 0.444161, 0.761115,
		-0.615002, -0.452319, 0.645895,
		0.631148, -0.773388, 0.059358,
		12.167632, 15.365498, 17.999645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.625072, 15.848105, 18.594875>,  <11.725828, 15.906869, 17.958096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.625072, 15.848105, 18.594875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.963712, 15.674046, 18.472294>,  <12.166896, 15.569610, 18.398745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.963712, 15.674046, 18.472294>,  <11.625072, 15.848105, 18.594875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.963712, 15.674046, 18.472294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492179, 0.420952, 0.761945,
		-0.202557, -0.795892, 0.570549,
		0.846599, -0.435149, -0.306454,
		12.217691, 15.543501, 18.380358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.831625, 15.513000, 19.151096>,  <11.625072, 15.848105, 18.594875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.831625, 15.513000, 19.151096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.147137, 15.590572, 18.917784>,  <12.336444, 15.637116, 18.777796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.147137, 15.590572, 18.917784>,  <11.831625, 15.513000, 19.151096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.147137, 15.590572, 18.917784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438452, 0.487540, 0.755026,
		0.430796, -0.851290, 0.299533,
		0.788781, 0.193931, -0.583280,
		12.383771, 15.648752, 18.742800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.445297, 15.207581, 19.448357>,  <11.831625, 15.513000, 19.151096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.445297, 15.207581, 19.448357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.558977, 15.519505, 19.225243>,  <12.627185, 15.706659, 19.091373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.558977, 15.519505, 19.225243>,  <12.445297, 15.207581, 19.448357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.558977, 15.519505, 19.225243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510647, 0.369280, 0.776449,
		0.811462, -0.505498, -0.293259,
		0.284198, 0.779811, -0.557787,
		12.644237, 15.753448, 19.057907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.182542, 15.290804, 19.604408>,  <12.445297, 15.207581, 19.448357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.182542, 15.290804, 19.604408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.049365, 15.635338, 19.450914>,  <12.969460, 15.842058, 19.358818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.049365, 15.635338, 19.450914>,  <13.182542, 15.290804, 19.604408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.049365, 15.635338, 19.450914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464917, 0.503996, 0.727901,
		0.820367, 0.063945, -0.568251,
		-0.332942, 0.861336, -0.383733,
		12.949483, 15.893739, 19.335794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.781672, 15.844645, 19.518305>,  <13.182542, 15.290804, 19.604408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.781672, 15.844645, 19.518305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.462294, 16.085432, 19.522591>,  <13.270666, 16.229904, 19.525162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.462294, 16.085432, 19.522591>,  <13.781672, 15.844645, 19.518305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.462294, 16.085432, 19.522591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429138, 0.556545, 0.711406,
		0.422281, 0.572618, -0.702700,
		-0.798448, 0.601968, 0.010713,
		13.222759, 16.266022, 19.525805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.048278, 16.411991, 19.777128>,  <13.781672, 15.844645, 19.518305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.048278, 16.411991, 19.777128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.654660, 16.480057, 19.797916>,  <13.418489, 16.520897, 19.810389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.654660, 16.480057, 19.797916>,  <14.048278, 16.411991, 19.777128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.654660, 16.480057, 19.797916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144555, 0.594324, 0.791127,
		0.103736, 0.786016, -0.609440,
		-0.984044, 0.170166, 0.051970,
		13.359447, 16.531107, 19.813507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.895536, 17.200432, 19.731632>,  <14.048278, 16.411991, 19.777128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.895536, 17.200432, 19.731632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.587315, 17.016510, 19.908188>,  <13.402382, 16.906157, 20.014122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.587315, 17.016510, 19.908188>,  <13.895536, 17.200432, 19.731632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.587315, 17.016510, 19.908188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104931, 0.591550, 0.799411,
		-0.628677, 0.662305, -0.407574,
		-0.770554, -0.459805, 0.441390,
		13.356149, 16.878569, 20.040606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.459309, 17.752182, 19.955383>,  <13.895536, 17.200432, 19.731632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.459309, 17.752182, 19.955383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.348173, 17.444515, 20.185577>,  <13.281491, 17.259914, 20.323694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.348173, 17.444515, 20.185577>,  <13.459309, 17.752182, 19.955383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.348173, 17.444515, 20.185577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065609, 0.582481, 0.810192,
		-0.958384, 0.262860, -0.111372,
		-0.277839, -0.769169, 0.575487,
		13.264821, 17.213764, 20.358223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.879607, 18.009344, 20.319683>,  <13.459309, 17.752182, 19.955383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.879607, 18.009344, 20.319683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.030531, 17.699453, 20.522635>,  <13.121085, 17.513519, 20.644405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.030531, 17.699453, 20.522635>,  <12.879607, 18.009344, 20.319683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.030531, 17.699453, 20.522635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022162, 0.555271, 0.831374,
		-0.925822, -0.302441, 0.226678,
		0.377309, -0.774728, 0.507379,
		13.143723, 17.467035, 20.674849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.520494, 17.986448, 20.896160>,  <12.879607, 18.009344, 20.319683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.520494, 17.986448, 20.896160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.867311, 17.806526, 20.981867>,  <13.075401, 17.698572, 21.033291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.867311, 17.806526, 20.981867>,  <12.520494, 17.986448, 20.896160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.867311, 17.806526, 20.981867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052380, 0.509966, 0.858598,
		-0.495472, -0.733218, 0.465723,
		0.867043, -0.449806, 0.214269,
		13.127423, 17.671585, 21.046148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.409312, 17.637669, 21.487671>,  <12.520494, 17.986448, 20.896160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.409312, 17.637669, 21.487671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.797674, 17.723942, 21.446058>,  <13.030691, 17.775705, 21.421091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.797674, 17.723942, 21.446058>,  <12.409312, 17.637669, 21.487671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.797674, 17.723942, 21.446058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017868, 0.367969, 0.929666,
		0.238793, -0.904478, 0.353410,
		0.970906, 0.215683, -0.104030,
		13.088946, 17.788647, 21.414848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.557181, 17.820566, 22.114931>,  <12.409312, 17.637669, 21.487671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.557181, 17.820566, 22.114931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.923470, 17.904953, 21.978142>,  <13.143244, 17.955585, 21.896069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.923470, 17.904953, 21.978142>,  <12.557181, 17.820566, 22.114931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.923470, 17.904953, 21.978142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178129, 0.549738, 0.816124,
		0.360170, -0.808258, 0.465829,
		0.915723, 0.210966, -0.341973,
		13.198187, 17.968243, 21.875549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.978204, 17.930580, 22.682598>,  <12.557181, 17.820566, 22.114931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.978204, 17.930580, 22.682598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.207912, 18.103815, 22.404707>,  <13.345737, 18.207756, 22.237972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.207912, 18.103815, 22.404707>,  <12.978204, 17.930580, 22.682598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.207912, 18.103815, 22.404707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266848, 0.703241, 0.658972,
		0.773954, -0.563816, 0.288282,
		0.574271, 0.433087, -0.694729,
		13.380194, 18.233742, 22.196289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513999, 18.091232, 23.030144>,  <12.978204, 17.930580, 22.682598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.513999, 18.091232, 23.030144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.526967, 18.329830, 22.709360>,  <13.534748, 18.472990, 22.516890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.526967, 18.329830, 22.709360>,  <13.513999, 18.091232, 23.030144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.526967, 18.329830, 22.709360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273576, 0.766443, 0.581138,
		0.961304, -0.238238, -0.138339,
		0.032421, 0.596497, -0.801961,
		13.536694, 18.508780, 22.468773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.156080, 18.459280, 23.157265>,  <13.513999, 18.091232, 23.030144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.156080, 18.459280, 23.157265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.924738, 18.688452, 22.924969>,  <13.785933, 18.825954, 22.785591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.924738, 18.688452, 22.924969>,  <14.156080, 18.459280, 23.157265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.924738, 18.688452, 22.924969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284268, 0.808798, 0.514818,
		0.764654, 0.132663, -0.630638,
		-0.578356, 0.572928, -0.580739,
		13.751231, 18.860331, 22.750748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.506586, 19.070673, 23.062723>,  <14.156080, 18.459280, 23.157265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.506586, 19.070673, 23.062723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.144161, 19.203001, 22.957191>,  <13.926706, 19.282398, 22.893871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.144161, 19.203001, 22.957191>,  <14.506586, 19.070673, 23.062723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.144161, 19.203001, 22.957191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175372, 0.861023, 0.477372,
		0.385089, 0.386261, -0.838158,
		-0.906063, 0.330821, -0.263831,
		13.872342, 19.302248, 22.878042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.471822, 19.827684, 23.043190>,  <14.506586, 19.070673, 23.062723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.471822, 19.827684, 23.043190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.077732, 19.759739, 23.034424>,  <13.841278, 19.718971, 23.029163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.077732, 19.759739, 23.034424>,  <14.471822, 19.827684, 23.043190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.077732, 19.759739, 23.034424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157659, 0.849476, 0.503523,
		-0.066912, 0.499538, -0.863704,
		-0.985224, -0.169862, -0.021917,
		13.782165, 19.708780, 23.027849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.087032, 20.361700, 22.683655>,  <14.471822, 19.827684, 23.043190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.087032, 20.361700, 22.683655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.827293, 20.197933, 22.940006>,  <13.671450, 20.099674, 23.093817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.827293, 20.197933, 22.940006>,  <14.087032, 20.361700, 22.683655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.827293, 20.197933, 22.940006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015701, 0.835320, 0.549540,
		-0.760329, 0.366905, -0.535986,
		-0.649348, -0.409416, 0.640879,
		13.632489, 20.075109, 23.132271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.644979, 20.816744, 22.851107>,  <14.087032, 20.361700, 22.683655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.644979, 20.816744, 22.851107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.565793, 20.573662, 23.158743>,  <13.518281, 20.427813, 23.343325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.565793, 20.573662, 23.158743>,  <13.644979, 20.816744, 22.851107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.565793, 20.573662, 23.158743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124864, 0.793863, 0.595139,
		-0.972223, 0.021786, -0.233039,
		-0.197967, -0.607706, 0.769092,
		13.506403, 20.391350, 23.389471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.045930, 21.050026, 23.144442>,  <13.644979, 20.816744, 22.851107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.045930, 21.050026, 23.144442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.209831, 20.820959, 23.428457>,  <13.308172, 20.683519, 23.598867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.209831, 20.820959, 23.428457>,  <13.045930, 21.050026, 23.144442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.209831, 20.820959, 23.428457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188171, 0.708580, 0.680078,
		-0.892577, -0.412273, 0.182583,
		0.409753, -0.572665, 0.710040,
		13.332757, 20.649160, 23.641470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.517830, 21.022079, 23.738935>,  <13.045930, 21.050026, 23.144442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.517830, 21.022079, 23.738935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.883406, 20.935276, 23.876120>,  <13.102751, 20.883194, 23.958431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.883406, 20.935276, 23.876120>,  <12.517830, 21.022079, 23.738935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.883406, 20.935276, 23.876120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173629, 0.554742, 0.813704,
		-0.366834, -0.803225, 0.469322,
		0.913940, -0.217006, 0.342961,
		13.157588, 20.870174, 23.979008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.433984, 20.833921, 24.450357>,  <12.517830, 21.022079, 23.738935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.433984, 20.833921, 24.450357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.813223, 20.958672, 24.425558>,  <13.040767, 21.033522, 24.410679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.813223, 20.958672, 24.425558>,  <12.433984, 20.833921, 24.450357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.813223, 20.958672, 24.425558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102505, 0.484329, 0.868860,
		0.301005, -0.817409, 0.491160,
		0.948098, 0.311877, -0.061997,
		13.097652, 21.052235, 24.406960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.617511, 20.924610, 25.152914>,  <12.433984, 20.833921, 24.450357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.617511, 20.924610, 25.152914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.927572, 21.091633, 24.963270>,  <13.113609, 21.191847, 24.849483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.927572, 21.091633, 24.963270>,  <12.617511, 20.924610, 25.152914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.927572, 21.091633, 24.963270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298389, 0.419498, 0.857313,
		0.556866, -0.806020, 0.200581,
		0.775155, 0.417558, -0.474112,
		13.160118, 21.216900, 24.821037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.095572, 20.913956, 25.589222>,  <12.617511, 20.924610, 25.152914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.095572, 20.913956, 25.589222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.244326, 21.196289, 25.348059>,  <13.333578, 21.365690, 25.203360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.244326, 21.196289, 25.348059>,  <13.095572, 20.913956, 25.589222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.244326, 21.196289, 25.348059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213329, 0.567124, 0.795525,
		0.903434, -0.424461, 0.060329,
		0.371883, 0.705835, -0.602910,
		13.355891, 21.408039, 25.167187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.649962, 21.181547, 25.915781>,  <13.095572, 20.913956, 25.589222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.649962, 21.181547, 25.915781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.562991, 21.470234, 25.652920>,  <13.510809, 21.643446, 25.495203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.562991, 21.470234, 25.652920>,  <13.649962, 21.181547, 25.915781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.562991, 21.470234, 25.652920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078832, 0.684046, 0.725166,
		0.972888, 0.105866, -0.205625,
		-0.217427, 0.721716, -0.657155,
		13.497763, 21.686749, 25.455774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.113581, 21.698948, 26.158079>,  <13.649962, 21.181547, 25.915781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.113581, 21.698948, 26.158079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.842010, 21.880518, 25.927250>,  <13.679069, 21.989460, 25.788752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.842010, 21.880518, 25.927250>,  <14.113581, 21.698948, 26.158079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.842010, 21.880518, 25.927250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022581, 0.798519, 0.601546,
		0.733860, 0.395374, -0.552385,
		-0.678925, 0.453924, -0.577073,
		13.638333, 22.016695, 25.754128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.326427, 22.282841, 26.213408>,  <14.113581, 21.698948, 26.158079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.326427, 22.282841, 26.213408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.955324, 22.369207, 26.091656>,  <13.732662, 22.421028, 26.018604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.955324, 22.369207, 26.091656>,  <14.326427, 22.282841, 26.213408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.955324, 22.369207, 26.091656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076680, 0.687926, 0.721718,
		0.365222, 0.692919, -0.621672,
		-0.927757, 0.215918, -0.304379,
		13.676997, 22.433983, 26.000341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.335998, 22.938749, 26.121035>,  <14.326427, 22.282841, 26.213408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.335998, 22.938749, 26.121035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.965593, 22.822647, 26.217581>,  <13.743351, 22.752985, 26.275509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.965593, 22.822647, 26.217581>,  <14.335998, 22.938749, 26.121035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.965593, 22.822647, 26.217581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020748, 0.599279, 0.800271,
		-0.376927, 0.746067, -0.548916,
		-0.926010, -0.290255, 0.241364,
		13.687790, 22.735571, 26.289989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.049273, 23.477228, 26.427011>,  <14.335998, 22.938749, 26.121035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.049273, 23.477228, 26.427011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.779446, 23.198725, 26.525139>,  <13.617549, 23.031622, 26.584015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.779446, 23.198725, 26.525139>,  <14.049273, 23.477228, 26.427011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.779446, 23.198725, 26.525139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180507, 0.477797, 0.859725,
		-0.715804, 0.535662, -0.447986,
		-0.674568, -0.696259, 0.245318,
		13.577075, 22.989847, 26.598734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.514235, 23.900091, 26.786749>,  <14.049273, 23.477228, 26.427011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.514235, 23.900091, 26.786749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.507206, 23.516289, 26.899206>,  <13.502988, 23.286007, 26.966681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.507206, 23.516289, 26.899206>,  <13.514235, 23.900091, 26.786749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.507206, 23.516289, 26.899206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083858, 0.281610, 0.955858,
		-0.996323, -0.006777, -0.085411,
		-0.017575, -0.959505, 0.281143,
		13.501934, 23.228437, 26.983549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.084041, 23.908501, 27.286983>,  <13.514235, 23.900091, 26.786749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.084041, 23.908501, 27.286983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.322649, 23.591202, 27.335842>,  <13.465814, 23.400822, 27.365158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.322649, 23.591202, 27.335842>,  <13.084041, 23.908501, 27.286983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.322649, 23.591202, 27.335842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063999, 0.198718, 0.977965,
		-0.800042, -0.575559, 0.169306,
		0.596521, -0.793248, 0.122148,
		13.501605, 23.353228, 27.372486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.793629, 23.348934, 27.662970>,  <13.084041, 23.908501, 27.286983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.793629, 23.348934, 27.662970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.189611, 23.383595, 27.707649>,  <13.427201, 23.404390, 27.734457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.189611, 23.383595, 27.707649>,  <12.793629, 23.348934, 27.662970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.189611, 23.383595, 27.707649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116420, 0.051485, 0.991865,
		0.080204, -0.994907, 0.061057,
		0.989956, 0.086660, 0.111698,
		13.486599, 23.409590, 27.741159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.190604, 22.722174, 28.044395>,  <12.793629, 23.348934, 27.662970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.190604, 22.722174, 28.044395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.318381, 23.093918, 28.118414>,  <13.395047, 23.316965, 28.162825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.318381, 23.093918, 28.118414>,  <13.190604, 22.722174, 28.044395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.318381, 23.093918, 28.118414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355767, -0.063372, 0.932424,
		0.878286, -0.363689, 0.310393,
		0.319442, 0.929362, 0.185047,
		13.414214, 23.372726, 28.173927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.706963, 22.818626, 28.613903>,  <13.190604, 22.722174, 28.044395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.706963, 22.818626, 28.613903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.481552, 23.148130, 28.589056>,  <13.346306, 23.345833, 28.574148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.481552, 23.148130, 28.589056>,  <13.706963, 22.818626, 28.613903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.481552, 23.148130, 28.589056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375284, -0.188290, 0.907584,
		0.735934, 0.534760, 0.415250,
		-0.563527, 0.823759, -0.062118,
		13.312494, 23.395258, 28.570421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.806302, 23.273422, 29.130573>,  <13.706963, 22.818626, 28.613903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.806302, 23.273422, 29.130573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.434408, 23.377068, 29.025917>,  <13.211272, 23.439255, 28.963123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.434408, 23.377068, 29.025917>,  <13.806302, 23.273422, 29.130573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.434408, 23.377068, 29.025917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262482, 0.031982, 0.964407,
		0.258260, 0.965317, 0.038278,
		-0.929734, 0.259115, -0.261638,
		13.155488, 23.454802, 28.947426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.234918, 23.688156, 28.861429>,  <13.806302, 23.273422, 29.130573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.234918, 23.688156, 28.861429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.627567, 23.612309, 28.869997>,  <14.863157, 23.566799, 28.875137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.627567, 23.612309, 28.869997>,  <14.234918, 23.688156, 28.861429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.627567, 23.612309, 28.869997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190568, -0.979936, 0.058382,
		0.009919, -0.061391, -0.998064,
		0.981624, -0.189620, 0.021419,
		14.922054, 23.555422, 28.876423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.448260, 23.256813, 28.267155>,  <14.234918, 23.688156, 28.861429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.448260, 23.256813, 28.267155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.661528, 23.215111, 28.602980>,  <14.789488, 23.190090, 28.804474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.661528, 23.215111, 28.602980>,  <14.448260, 23.256813, 28.267155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.661528, 23.215111, 28.602980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280565, -0.958007, 0.059213,
		0.798131, -0.267122, -0.540029,
		0.533169, -0.104254, 0.839561,
		14.821479, 23.183834, 28.854847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.155668, 22.917664, 28.226473>,  <14.448260, 23.256813, 28.267155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.155668, 22.917664, 28.226473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.923547, 22.853048, 28.545761>,  <14.784274, 22.814280, 28.737333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.923547, 22.853048, 28.545761>,  <15.155668, 22.917664, 28.226473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.923547, 22.853048, 28.545761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319535, -0.856375, -0.405609,
		0.749096, -0.490435, 0.445340,
		-0.580303, -0.161538, 0.798219,
		14.749455, 22.804586, 28.785227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.389137, 22.338667, 28.546406>,  <15.155668, 22.917664, 28.226473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.389137, 22.338667, 28.546406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.996799, 22.384043, 28.609745>,  <14.761396, 22.411268, 28.647749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.996799, 22.384043, 28.609745>,  <15.389137, 22.338667, 28.546406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.996799, 22.384043, 28.609745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166508, -0.910134, -0.379384,
		0.101079, -0.398483, 0.911589,
		-0.980846, 0.113440, 0.158346,
		14.702546, 22.418076, 28.657249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.215954, 21.617424, 28.645100>,  <15.389137, 22.338667, 28.546406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.215954, 21.617424, 28.645100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886474, 21.813025, 28.530281>,  <14.688786, 21.930386, 28.461390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886474, 21.813025, 28.530281>,  <15.215954, 21.617424, 28.645100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.886474, 21.813025, 28.530281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407385, -0.862483, -0.300268,
		-0.394406, -0.130392, 0.909639,
		-0.823700, 0.489001, -0.287048,
		14.639363, 21.959724, 28.444166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.624199, 21.149366, 28.782217>,  <15.215954, 21.617424, 28.645100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.624199, 21.149366, 28.782217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.477612, 21.399506, 28.506639>,  <14.389659, 21.549589, 28.341293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.477612, 21.399506, 28.506639>,  <14.624199, 21.149366, 28.782217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.477612, 21.399506, 28.506639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407506, -0.773536, -0.485367,
		-0.836444, 0.102877, 0.538309,
		-0.366468, 0.625347, -0.688943,
		14.367671, 21.587111, 28.299957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.956025, 20.865168, 28.619091>,  <14.624199, 21.149366, 28.782217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.956025, 20.865168, 28.619091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.027699, 21.119343, 28.318661>,  <14.070704, 21.271849, 28.138403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.027699, 21.119343, 28.318661>,  <13.956025, 20.865168, 28.619091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.027699, 21.119343, 28.318661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349870, -0.672365, -0.652317,
		-0.919502, 0.379664, 0.101842,
		0.179186, 0.635438, -0.751073,
		14.081455, 21.309975, 28.093338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.407482, 20.736912, 28.178568>,  <13.956025, 20.865168, 28.619091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.407482, 20.736912, 28.178568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.692561, 20.900919, 27.950903>,  <13.863608, 20.999323, 27.814304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.692561, 20.900919, 27.950903>,  <13.407482, 20.736912, 28.178568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.692561, 20.900919, 27.950903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092852, -0.749106, -0.655910,
		-0.695298, 0.520315, -0.495816,
		0.712698, 0.410016, -0.569164,
		13.906371, 21.023924, 27.780153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.119711, 20.761847, 27.577267>,  <13.407482, 20.736912, 28.178568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.119711, 20.761847, 27.577267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.505302, 20.785402, 27.473516>,  <13.736657, 20.799536, 27.411266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.505302, 20.785402, 27.473516>,  <13.119711, 20.761847, 27.577267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.505302, 20.785402, 27.473516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150568, -0.683062, -0.714672,
		-0.219256, 0.727983, -0.649591,
		0.963979, 0.058888, -0.259376,
		13.794497, 20.803068, 27.395704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.073980, 20.567003, 26.859249>,  <13.119711, 20.761847, 27.577267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.073980, 20.567003, 26.859249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.450585, 20.539804, 26.991268>,  <13.676548, 20.523485, 27.070480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.450585, 20.539804, 26.991268>,  <13.073980, 20.567003, 26.859249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.450585, 20.539804, 26.991268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161022, -0.769592, -0.617899,
		0.296019, 0.634905, -0.713631,
		0.941512, -0.067999, 0.330048,
		13.733039, 20.519405, 27.090282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.569052, 20.588617, 26.326866>,  <13.073980, 20.567003, 26.859249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.569052, 20.588617, 26.326866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.731871, 20.381659, 26.627962>,  <13.829562, 20.257484, 26.808619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.731871, 20.381659, 26.627962>,  <13.569052, 20.588617, 26.326866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.731871, 20.381659, 26.627962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111148, -0.789918, -0.603055,
		0.906620, 0.329137, -0.264026,
		0.407046, -0.517396, 0.752738,
		13.853985, 20.226440, 26.853783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.033259, 20.197132, 25.957302>,  <13.569052, 20.588617, 26.326866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.033259, 20.197132, 25.957302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.076949, 20.022812, 26.314659>,  <14.103163, 19.918221, 26.529074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.076949, 20.022812, 26.314659>,  <14.033259, 20.197132, 25.957302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.076949, 20.022812, 26.314659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244076, -0.859494, -0.449106,
		0.963585, 0.267109, 0.012492,
		0.109224, -0.435801, 0.893391,
		14.109716, 19.892071, 26.582676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.670251, 19.836428, 26.017572>,  <14.033259, 20.197132, 25.957302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.670251, 19.836428, 26.017572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.430812, 19.657631, 26.283468>,  <14.287148, 19.550352, 26.443007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.430812, 19.657631, 26.283468>,  <14.670251, 19.836428, 26.017572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.430812, 19.657631, 26.283468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172519, -0.882300, -0.437932,
		0.782252, -0.147465, 0.605257,
		-0.598598, -0.446991, 0.664740,
		14.251232, 19.523533, 26.482891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.978024, 19.268951, 26.097570>,  <14.670251, 19.836428, 26.017572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.978024, 19.268951, 26.097570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.620492, 19.172897, 26.249043>,  <14.405972, 19.115265, 26.339926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.620492, 19.172897, 26.249043>,  <14.978024, 19.268951, 26.097570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.620492, 19.172897, 26.249043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121785, -0.942775, -0.310392,
		0.431548, -0.231321, 0.871928,
		-0.893832, -0.240136, 0.378681,
		14.352343, 19.100857, 26.362646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.065557, 18.605595, 26.391478>,  <14.978024, 19.268951, 26.097570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.065557, 18.605595, 26.391478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.668339, 18.636826, 26.356241>,  <14.430007, 18.655563, 26.335100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.668339, 18.636826, 26.356241>,  <15.065557, 18.605595, 26.391478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.668339, 18.636826, 26.356241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046603, -0.947992, -0.314865,
		-0.108093, -0.308570, 0.945040,
		-0.993048, 0.078076, -0.088091,
		14.370424, 18.660248, 26.329815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.812507, 18.035595, 26.675211>,  <15.065557, 18.605595, 26.391478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.812507, 18.035595, 26.675211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507290, 18.140989, 26.439129>,  <14.324160, 18.204226, 26.297480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507290, 18.140989, 26.439129>,  <14.812507, 18.035595, 26.675211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.507290, 18.140989, 26.439129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081056, -0.944937, -0.317056,
		-0.641246, -0.194087, 0.742384,
		-0.763043, 0.263485, -0.590205,
		14.278378, 18.220036, 26.262068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.279052, 17.514418, 26.790997>,  <14.812507, 18.035595, 26.675211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.279052, 17.514418, 26.790997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.234028, 17.689865, 26.434359>,  <14.207014, 17.795134, 26.220375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.234028, 17.689865, 26.434359>,  <14.279052, 17.514418, 26.790997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.234028, 17.689865, 26.434359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050539, -0.893610, -0.445989,
		-0.992359, -0.095260, 0.078416,
		-0.112558, 0.438618, -0.891597,
		14.200260, 17.821451, 26.166880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.708412, 17.191727, 26.521303>,  <14.279052, 17.514418, 26.790997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.708412, 17.191727, 26.521303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.889529, 17.352966, 26.203186>,  <13.998199, 17.449709, 26.012316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.889529, 17.352966, 26.203186>,  <13.708412, 17.191727, 26.521303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.889529, 17.352966, 26.203186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195462, -0.825395, -0.529639,
		-0.869928, 0.395266, -0.294942,
		0.452792, 0.403098, -0.795293,
		14.025367, 17.473896, 25.964598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.176133, 17.134008, 25.995232>,  <13.708412, 17.191727, 26.521303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.176133, 17.134008, 25.995232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.533944, 17.171827, 25.820473>,  <13.748631, 17.194519, 25.715616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.533944, 17.171827, 25.820473>,  <13.176133, 17.134008, 25.995232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.533944, 17.171827, 25.820473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249018, -0.706277, -0.662694,
		-0.371226, 0.701594, -0.608241,
		0.894528, 0.094546, -0.436898,
		13.802302, 17.200191, 25.689404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.063286, 17.328119, 25.234591>,  <13.176133, 17.134008, 25.995232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.063286, 17.328119, 25.234591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.408636, 17.140539, 25.309067>,  <13.615847, 17.027990, 25.353752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.408636, 17.140539, 25.309067>,  <13.063286, 17.328119, 25.234591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.408636, 17.140539, 25.309067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280593, -0.752938, -0.595275,
		0.419345, 0.461702, -0.781653,
		0.863375, -0.468952, 0.186190,
		13.667648, 16.999853, 25.364923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.071039, 16.913218, 24.610001>,  <13.063286, 17.328119, 25.234591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.071039, 16.913218, 24.610001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.382052, 16.756817, 24.807003>,  <13.568660, 16.662977, 24.925205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.382052, 16.756817, 24.807003>,  <13.071039, 16.913218, 24.610001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.382052, 16.756817, 24.807003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143059, -0.872640, -0.466940,
		0.612355, 0.292603, -0.734442,
		0.777532, -0.391002, 0.492506,
		13.615312, 16.639517, 24.954754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.482006, 16.622513, 24.095877>,  <13.071039, 16.913218, 24.610001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.482006, 16.622513, 24.095877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.577829, 16.430689, 24.433548>,  <13.635324, 16.315596, 24.636150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.577829, 16.430689, 24.433548>,  <13.482006, 16.622513, 24.095877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.577829, 16.430689, 24.433548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074318, -0.876002, -0.476547,
		0.968033, 0.051423, -0.245494,
		0.239558, -0.479558, 0.844178,
		13.649697, 16.286821, 24.686802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.071411, 16.171902, 24.013294>,  <13.482006, 16.622513, 24.095877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.071411, 16.171902, 24.013294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.895161, 16.018293, 24.337856>,  <13.789411, 15.926128, 24.532593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.895161, 16.018293, 24.337856>,  <14.071411, 16.171902, 24.013294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.895161, 16.018293, 24.337856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105150, -0.919736, -0.378191,
		0.891511, -0.081321, 0.445639,
		-0.440625, -0.384021, 0.811405,
		13.762973, 15.903088, 24.581278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.386742, 15.569162, 24.056660>,  <14.071411, 16.171902, 24.013294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.386742, 15.569162, 24.056660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.066401, 15.512995, 24.289528>,  <13.874197, 15.479294, 24.429249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.066401, 15.512995, 24.289528>,  <14.386742, 15.569162, 24.056660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.066401, 15.512995, 24.289528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115051, -0.917938, -0.379675,
		0.587709, -0.371042, 0.718976,
		-0.800851, -0.140419, 0.582169,
		13.826146, 15.470869, 24.464178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.454897, 14.926394, 24.335705>,  <14.386742, 15.569162, 24.056660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.454897, 14.926394, 24.335705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.068642, 15.007357, 24.400915>,  <13.836888, 15.055934, 24.440041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.068642, 15.007357, 24.400915>,  <14.454897, 14.926394, 24.335705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.068642, 15.007357, 24.400915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251130, -0.888195, -0.384763,
		0.066920, -0.412482, 0.908504,
		-0.965637, 0.202404, 0.163024,
		13.778951, 15.068078, 24.449821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.127089, 14.303572, 24.717405>,  <14.454897, 14.926394, 24.335705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.127089, 14.303572, 24.717405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.853213, 14.499880, 24.501871>,  <13.688888, 14.617665, 24.372551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.853213, 14.499880, 24.501871>,  <14.127089, 14.303572, 24.717405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.853213, 14.499880, 24.501871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225779, -0.845766, -0.483429,
		-0.692982, -0.209340, 0.689893,
		-0.684690, 0.490771, -0.538836,
		13.647807, 14.647111, 24.340219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.545157, 13.818341, 24.638161>,  <14.127089, 14.303572, 24.717405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.545157, 13.818341, 24.638161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.468938, 14.087455, 24.352209>,  <13.423206, 14.248923, 24.180637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.468938, 14.087455, 24.352209>,  <13.545157, 13.818341, 24.638161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.468938, 14.087455, 24.352209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333529, -0.729273, -0.597428,
		-0.923282, 0.124594, 0.363355,
		-0.190549, 0.672783, -0.714880,
		13.411773, 14.289289, 24.137745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.025661, 13.563671, 24.352139>,  <13.545157, 13.818341, 24.638161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.025661, 13.563671, 24.352139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.137396, 13.813867, 24.060732>,  <13.204436, 13.963984, 23.885887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.137396, 13.813867, 24.060732>,  <13.025661, 13.563671, 24.352139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.137396, 13.813867, 24.060732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260681, -0.680821, -0.684491,
		-0.924130, 0.381114, -0.027126,
		0.279337, 0.625488, -0.728516,
		13.221197, 14.001513, 23.842176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.510803, 13.588798, 23.927452>,  <13.025661, 13.563671, 24.352139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.510803, 13.588798, 23.927452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.825810, 13.692497, 23.703808>,  <13.014814, 13.754717, 23.569620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.825810, 13.692497, 23.703808>,  <12.510803, 13.588798, 23.927452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.825810, 13.692497, 23.703808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347597, -0.562307, -0.750324,
		-0.508914, 0.785239, -0.352713,
		0.787517, 0.259249, -0.559113,
		13.062065, 13.770272, 23.536074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.202447, 13.751411, 23.276081>,  <12.510803, 13.588798, 23.927452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.202447, 13.751411, 23.276081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.588614, 13.701837, 23.184338>,  <12.820315, 13.672091, 23.129292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.588614, 13.701837, 23.184338>,  <12.202447, 13.751411, 23.276081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.588614, 13.701837, 23.184338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260061, -0.519593, -0.813874,
		-0.018305, 0.845377, -0.533856,
		0.965419, -0.123937, -0.229361,
		12.878240, 13.664656, 23.115530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.306805, 13.937553, 22.584370>,  <12.202447, 13.751411, 23.276081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.306805, 13.937553, 22.584370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.607401, 13.686321, 22.665142>,  <12.787759, 13.535582, 22.713606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.607401, 13.686321, 22.665142>,  <12.306805, 13.937553, 22.584370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.607401, 13.686321, 22.665142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208936, -0.516888, -0.830164,
		0.625785, 0.581671, -0.519666,
		0.751491, -0.628081, 0.201929,
		12.832849, 13.497897, 22.725721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.889975, 14.025338, 22.040295>,  <12.306805, 13.937553, 22.584370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.889975, 14.025338, 22.040295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.957748, 13.659729, 22.187727>,  <12.998413, 13.440363, 22.276186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.957748, 13.659729, 22.187727>,  <12.889975, 14.025338, 22.040295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.957748, 13.659729, 22.187727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028896, -0.378435, -0.925177,
		0.985118, 0.146106, -0.090531,
		0.169434, -0.914024, 0.368581,
		13.008578, 13.385522, 22.298302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.362575, 13.700659, 21.636068>,  <12.889975, 14.025338, 22.040295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.362575, 13.700659, 21.636068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.198658, 13.383794, 21.816977>,  <13.100308, 13.193675, 21.925522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.198658, 13.383794, 21.816977>,  <13.362575, 13.700659, 21.636068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.198658, 13.383794, 21.816977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012726, -0.500732, -0.865509,
		0.912091, -0.348922, 0.215276,
		-0.409791, -0.792162, 0.452273,
		13.075721, 13.146145, 21.952658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.733959, 13.126443, 21.390837>,  <13.362575, 13.700659, 21.636068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.733959, 13.126443, 21.390837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.381834, 12.982371, 21.514332>,  <13.170559, 12.895928, 21.588428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.381834, 12.982371, 21.514332>,  <13.733959, 13.126443, 21.390837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.381834, 12.982371, 21.514332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044475, -0.585283, -0.809608,
		0.472304, -0.726440, 0.499214,
		-0.880313, -0.360179, 0.308740,
		13.117740, 12.874317, 21.606955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.709614, 12.595439, 20.964012>,  <13.733959, 13.126443, 21.390837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.709614, 12.595439, 20.964012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.338551, 12.570767, 21.111332>,  <13.115912, 12.555964, 21.199724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.338551, 12.570767, 21.111332>,  <13.709614, 12.595439, 20.964012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.338551, 12.570767, 21.111332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251686, -0.625333, -0.738656,
		0.275869, -0.777917, 0.564573,
		-0.927659, -0.061678, 0.368301,
		13.060253, 12.552264, 21.221823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.482033, 11.917631, 20.866432>,  <13.709614, 12.595439, 20.964012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.482033, 11.917631, 20.866432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.137603, 12.118468, 20.898560>,  <12.930944, 12.238971, 20.917837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.137603, 12.118468, 20.898560>,  <13.482033, 11.917631, 20.866432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.137603, 12.118468, 20.898560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280977, -0.338191, -0.898153,
		-0.423794, -0.795945, 0.432285,
		-0.861075, 0.502094, 0.080319,
		12.879280, 12.269096, 20.922655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.987003, 11.517897, 20.493570>,  <13.482033, 11.917631, 20.866432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.987003, 11.517897, 20.493570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.803328, 11.872769, 20.511705>,  <12.693122, 12.085692, 20.522587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.803328, 11.872769, 20.511705>,  <12.987003, 11.517897, 20.493570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.803328, 11.872769, 20.511705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436788, -0.181044, -0.881158,
		-0.773539, -0.424420, 0.470644,
		-0.459189, 0.887181, 0.045337,
		12.665571, 12.138924, 20.525307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.264312, 11.435091, 20.314150>,  <12.987003, 11.517897, 20.493570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.264312, 11.435091, 20.314150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.306502, 11.829690, 20.264034>,  <12.331817, 12.066449, 20.233965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.306502, 11.829690, 20.264034>,  <12.264312, 11.435091, 20.314150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.306502, 11.829690, 20.264034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448575, -0.065244, -0.891361,
		-0.887499, 0.150219, 0.435636,
		0.105477, 0.986497, -0.125288,
		12.338145, 12.125639, 20.226448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.654618, 11.709123, 20.147009>,  <12.264312, 11.435091, 20.314150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.654618, 11.709123, 20.147009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.945000, 11.936383, 19.991989>,  <12.119228, 12.072740, 19.898977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.945000, 11.936383, 19.991989>,  <11.654618, 11.709123, 20.147009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.945000, 11.936383, 19.991989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440612, -0.048461, -0.896389,
		-0.528066, 0.821496, 0.215154,
		0.725953, 0.568152, -0.387552,
		12.162786, 12.106829, 19.875723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.331203, 12.161798, 19.753548>,  <11.654618, 11.709123, 20.147009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.331203, 12.161798, 19.753548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.712253, 12.150833, 19.632381>,  <11.940883, 12.144254, 19.559683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.712253, 12.150833, 19.632381>,  <11.331203, 12.161798, 19.753548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.712253, 12.150833, 19.632381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303213, -0.163801, -0.938739,
		-0.023884, 0.986113, -0.164352,
		0.952624, -0.027413, -0.302914,
		11.998039, 12.142610, 19.541508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.294938, 12.536590, 19.002340>,  <11.331203, 12.161798, 19.753548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.294938, 12.536590, 19.002340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.635600, 12.329044, 19.031914>,  <11.839997, 12.204517, 19.049658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.635600, 12.329044, 19.031914>,  <11.294938, 12.536590, 19.002340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.635600, 12.329044, 19.031914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026490, -0.183503, -0.982662,
		0.523434, 0.834930, -0.170026,
		0.851655, -0.518862, 0.073934,
		11.891096, 12.173386, 19.054094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.747481, 12.708640, 18.430105>,  <11.294938, 12.536590, 19.002340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.747481, 12.708640, 18.430105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.906856, 12.355923, 18.531052>,  <12.002481, 12.144292, 18.591619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.906856, 12.355923, 18.531052>,  <11.747481, 12.708640, 18.430105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.906856, 12.355923, 18.531052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135473, -0.215551, -0.967050,
		0.907136, 0.419496, 0.033576,
		0.398436, -0.881794, 0.252364,
		12.026386, 12.091385, 18.606760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.142114, 12.625381, 17.943920>,  <11.747481, 12.708640, 18.430105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.142114, 12.625381, 17.943920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.114701, 12.263317, 18.111725>,  <12.098254, 12.046079, 18.212408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.114701, 12.263317, 18.111725>,  <12.142114, 12.625381, 17.943920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.114701, 12.263317, 18.111725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211887, -0.424111, -0.880474,
		0.974889, 0.028549, 0.220857,
		-0.068531, -0.905160, 0.419510,
		12.094142, 11.991769, 18.237577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.658785, 12.179349, 17.665421>,  <12.142114, 12.625381, 17.943920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.658785, 12.179349, 17.665421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.377857, 11.930191, 17.803261>,  <12.209300, 11.780696, 17.885965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.377857, 11.930191, 17.803261>,  <12.658785, 12.179349, 17.665421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.377857, 11.930191, 17.803261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078147, -0.548620, -0.832412,
		0.707559, -0.557690, 0.433984,
		-0.702320, -0.622895, 0.344599,
		12.167161, 11.743322, 17.906641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.887681, 11.450886, 17.553143>,  <12.658785, 12.179349, 17.665421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.887681, 11.450886, 17.553143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.493864, 11.392652, 17.592089>,  <12.257574, 11.357711, 17.615456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.493864, 11.392652, 17.592089>,  <12.887681, 11.450886, 17.553143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.493864, 11.392652, 17.592089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037969, -0.720113, -0.692818,
		0.170979, -0.678412, 0.714510,
		-0.984543, -0.145586, 0.097365,
		12.198502, 11.348975, 17.621298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.457579, 11.287355, 18.094069>,  <12.887681, 11.450886, 17.553143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.457579, 11.287355, 18.094069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.820605, 11.184455, 17.961317>,  <14.038422, 11.122715, 17.881666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.820605, 11.184455, 17.961317>,  <13.457579, 11.287355, 18.094069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.820605, 11.184455, 17.961317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410340, 0.711099, 0.570929,
		0.089128, -0.654340, 0.750930,
		0.907567, -0.257251, -0.331880,
		14.092875, 11.107280, 17.861753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.944919, 11.078564, 18.639713>,  <13.457579, 11.287355, 18.094069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.944919, 11.078564, 18.639713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.151560, 11.224380, 18.329815>,  <14.275545, 11.311869, 18.143875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.151560, 11.224380, 18.329815>,  <13.944919, 11.078564, 18.639713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.151560, 11.224380, 18.329815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518614, 0.586756, 0.621898,
		0.681294, -0.723069, 0.114065,
		0.516603, 0.364539, -0.774746,
		14.306541, 11.333741, 18.097391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.676313, 11.020403, 18.814837>,  <13.944919, 11.078564, 18.639713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.676313, 11.020403, 18.814837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.712061, 11.269770, 18.504129>,  <14.733509, 11.419390, 18.317705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.712061, 11.269770, 18.504129>,  <14.676313, 11.020403, 18.814837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.712061, 11.269770, 18.504129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552690, 0.617756, 0.559385,
		0.828581, -0.479302, -0.289348,
		0.089368, 0.623416, -0.776766,
		14.738872, 11.456795, 18.271099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.394822, 11.210433, 18.864374>,  <14.676313, 11.020403, 18.814837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.394822, 11.210433, 18.864374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.223998, 11.484749, 18.628641>,  <15.121504, 11.649338, 18.487202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.223998, 11.484749, 18.628641>,  <15.394822, 11.210433, 18.864374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.223998, 11.484749, 18.628641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509741, 0.720913, 0.469521,
		0.746849, -0.099893, -0.657448,
		-0.427060, 0.685789, -0.589333,
		15.095880, 11.690486, 18.451841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.919127, 11.642064, 18.517824>,  <15.394822, 11.210433, 18.864374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.919127, 11.642064, 18.517824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.571303, 11.839549, 18.522121>,  <15.362609, 11.958040, 18.524700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.571303, 11.839549, 18.522121>,  <15.919127, 11.642064, 18.517824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.571303, 11.839549, 18.522121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466098, 0.813344, 0.348172,
		0.163159, 0.307764, -0.937369,
		-0.869559, 0.493713, 0.010744,
		15.310436, 11.987663, 18.525345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.121883, 12.273744, 18.272936>,  <15.919127, 11.642064, 18.517824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.121883, 12.273744, 18.272936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.753898, 12.352652, 18.408434>,  <15.533106, 12.399997, 18.489733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.753898, 12.352652, 18.408434>,  <16.121883, 12.273744, 18.272936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.753898, 12.352652, 18.408434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304162, 0.904351, 0.299391,
		-0.247283, 0.378463, -0.891974,
		-0.919966, 0.197270, 0.338744,
		15.477908, 12.411833, 18.510057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.926455, 12.951090, 18.029230>,  <16.121883, 12.273744, 18.272936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.926455, 12.951090, 18.029230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.706942, 12.871837, 18.354088>,  <15.575233, 12.824285, 18.549004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.706942, 12.871837, 18.354088>,  <15.926455, 12.951090, 18.029230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.706942, 12.871837, 18.354088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397318, 0.792947, 0.461924,
		-0.735511, 0.576176, -0.356434,
		-0.548783, -0.198132, 0.812146,
		15.542307, 12.812397, 18.597733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.679938, 13.577395, 18.266575>,  <15.926455, 12.951090, 18.029230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.679938, 13.577395, 18.266575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.625066, 13.343027, 18.586044>,  <15.592142, 13.202406, 18.777725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.625066, 13.343027, 18.586044>,  <15.679938, 13.577395, 18.266575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.625066, 13.343027, 18.586044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238618, 0.763004, 0.600738,
		-0.961375, 0.272988, 0.035140,
		-0.137182, -0.585920, 0.798673,
		15.583911, 13.167252, 18.825645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.324583, 13.990006, 18.739202>,  <15.679938, 13.577395, 18.266575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.324583, 13.990006, 18.739202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.461034, 13.695694, 18.973213>,  <15.542904, 13.519106, 19.113621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.461034, 13.695694, 18.973213>,  <15.324583, 13.990006, 18.739202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.461034, 13.695694, 18.973213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130503, 0.653401, 0.745678,
		-0.930914, -0.178022, 0.318914,
		0.341126, -0.735782, 0.585028,
		15.563372, 13.474959, 19.148722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.035878, 14.243028, 19.454092>,  <15.324583, 13.990006, 18.739202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.035878, 14.243028, 19.454092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.322467, 13.970557, 19.514315>,  <15.494420, 13.807075, 19.550449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.322467, 13.970557, 19.514315>,  <15.035878, 14.243028, 19.454092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.322467, 13.970557, 19.514315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343107, 0.531987, 0.774124,
		-0.607411, -0.502979, 0.614869,
		0.716471, -0.681177, 0.150559,
		15.537408, 13.766204, 19.559483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.103732, 14.097925, 20.225645>,  <15.035878, 14.243028, 19.454092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.103732, 14.097925, 20.225645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.451973, 14.008892, 20.050142>,  <15.660917, 13.955472, 19.944841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.451973, 14.008892, 20.050142>,  <15.103732, 14.097925, 20.225645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.451973, 14.008892, 20.050142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481988, 0.564745, 0.669888,
		0.098680, -0.794682, 0.598951,
		0.870603, -0.222582, -0.438757,
		15.713154, 13.942118, 19.918516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.555202, 13.836324, 20.719267>,  <15.103732, 14.097925, 20.225645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.555202, 13.836324, 20.719267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.787716, 13.971624, 20.423243>,  <15.927225, 14.052805, 20.245628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.787716, 13.971624, 20.423243>,  <15.555202, 13.836324, 20.719267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.787716, 13.971624, 20.423243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568236, 0.482249, 0.666741,
		0.582421, -0.808097, 0.088117,
		0.581286, 0.338253, -0.740062,
		15.962102, 14.073100, 20.201223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.153847, 13.891397, 20.959637>,  <15.555202, 13.836324, 20.719267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.153847, 13.891397, 20.959637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.187292, 14.148411, 20.654964>,  <16.207359, 14.302619, 20.472160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.187292, 14.148411, 20.654964>,  <16.153847, 13.891397, 20.959637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.187292, 14.148411, 20.654964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429397, 0.666523, 0.609397,
		0.899237, -0.378018, -0.220171,
		0.083614, 0.642533, -0.761682,
		16.212376, 14.341171, 20.426460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.853512, 14.194987, 21.141150>,  <16.153847, 13.891397, 20.959637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.853512, 14.194987, 21.141150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.673998, 14.432750, 20.874233>,  <16.566290, 14.575407, 20.714085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.673998, 14.432750, 20.874233>,  <16.853512, 14.194987, 21.141150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.673998, 14.432750, 20.874233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070008, 0.767798, 0.636856,
		0.890894, 0.239094, -0.386188,
		-0.448783, 0.594407, -0.667289,
		16.539364, 14.611072, 20.674047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.222862, 14.819901, 21.321314>,  <16.853512, 14.194987, 21.141150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.222862, 14.819901, 21.321314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.887262, 14.921442, 21.128799>,  <16.685902, 14.982367, 21.013290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.887262, 14.921442, 21.128799>,  <17.222862, 14.819901, 21.321314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.887262, 14.921442, 21.128799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129985, 0.765393, 0.630299,
		0.528377, 0.591382, -0.609168,
		-0.839001, 0.253852, -0.481287,
		16.635563, 14.997598, 20.984413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.368723, 15.479828, 20.983953>,  <17.222862, 14.819901, 21.321314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.368723, 15.479828, 20.983953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.976667, 15.433295, 21.048197>,  <16.741434, 15.405375, 21.086742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.976667, 15.433295, 21.048197>,  <17.368723, 15.479828, 20.983953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.976667, 15.433295, 21.048197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013736, 0.768109, 0.640172,
		-0.197837, 0.629663, -0.751255,
		-0.980139, -0.116331, 0.160610,
		16.682627, 15.398396, 21.096380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.136400, 16.065001, 20.973864>,  <17.368723, 15.479828, 20.983953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.136400, 16.065001, 20.973864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.839298, 15.883569, 21.170874>,  <16.661037, 15.774711, 21.289080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.839298, 15.883569, 21.170874>,  <17.136400, 16.065001, 20.973864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.839298, 15.883569, 21.170874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017426, 0.748438, 0.662976,
		-0.669334, 0.483847, -0.563812,
		-0.742757, -0.453577, 0.492524,
		16.616470, 15.747496, 21.318630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.580891, 16.576433, 21.126839>,  <17.136400, 16.065001, 20.973864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.580891, 16.576433, 21.126839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.546198, 16.280684, 21.393911>,  <16.525381, 16.103233, 21.554155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.546198, 16.280684, 21.393911>,  <16.580891, 16.576433, 21.126839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.546198, 16.280684, 21.393911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118165, 0.673114, 0.730038,
		-0.989199, -0.015577, -0.145750,
		-0.086734, -0.739375, 0.667684,
		16.520178, 16.058870, 21.594217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.173679, 16.857008, 21.655449>,  <16.580891, 16.576433, 21.126839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.173679, 16.857008, 21.655449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.293390, 16.533306, 21.857653>,  <16.365217, 16.339085, 21.978975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.293390, 16.533306, 21.857653>,  <16.173679, 16.857008, 21.655449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.293390, 16.533306, 21.857653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171375, 0.475589, 0.862813,
		-0.938651, -0.344850, 0.003646,
		0.299275, -0.809255, 0.505511,
		16.383173, 16.290529, 22.009306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.692015, 16.682434, 22.301641>,  <16.173679, 16.857008, 21.655449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.692015, 16.682434, 22.301641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.023476, 16.474070, 22.383602>,  <16.222353, 16.349051, 22.432779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.023476, 16.474070, 22.383602>,  <15.692015, 16.682434, 22.301641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.023476, 16.474070, 22.383602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047652, 0.299075, 0.953039,
		-0.557731, -0.799502, 0.223006,
		0.828653, -0.520913, 0.204901,
		16.272072, 16.317797, 22.445072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.586942, 16.399403, 22.977411>,  <15.692015, 16.682434, 22.301641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.586942, 16.399403, 22.977411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.981215, 16.388239, 22.910894>,  <16.217777, 16.381540, 22.870985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.981215, 16.388239, 22.910894>,  <15.586942, 16.399403, 22.977411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.981215, 16.388239, 22.910894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162623, 0.417982, 0.893781,
		0.044563, -0.908026, 0.416536,
		0.985682, -0.027908, -0.166292,
		16.276918, 16.379866, 22.861006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.830147, 16.034983, 23.499281>,  <15.586942, 16.399403, 22.977411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.830147, 16.034983, 23.499281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.158552, 16.228294, 23.377708>,  <16.355595, 16.344282, 23.304764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.158552, 16.228294, 23.377708>,  <15.830147, 16.034983, 23.499281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.158552, 16.228294, 23.377708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114276, 0.382479, 0.916870,
		0.559355, -0.787495, 0.258793,
		0.821013, 0.483282, -0.303934,
		16.404856, 16.373280, 23.286528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.289686, 16.080744, 24.161146>,  <15.830147, 16.034983, 23.499281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.289686, 16.080744, 24.161146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.394922, 16.367804, 23.903227>,  <16.458063, 16.540039, 23.748476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.394922, 16.367804, 23.903227>,  <16.289686, 16.080744, 24.161146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.394922, 16.367804, 23.903227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211095, 0.609329, 0.764301,
		0.941394, -0.337194, 0.008817,
		0.263091, 0.717647, -0.644799,
		16.473850, 16.583097, 23.709787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.827003, 16.459723, 24.492235>,  <16.289686, 16.080744, 24.161146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.827003, 16.459723, 24.492235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.708382, 16.712019, 24.205399>,  <16.637209, 16.863398, 24.033297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.708382, 16.712019, 24.205399>,  <16.827003, 16.459723, 24.492235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.708382, 16.712019, 24.205399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095604, 0.766702, 0.634844,
		0.950218, 0.119711, -0.287673,
		-0.296557, 0.630743, -0.717089,
		16.619415, 16.901241, 23.990273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.402727, 16.970804, 24.462738>,  <16.827003, 16.459723, 24.492235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.402727, 16.970804, 24.462738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.097694, 17.155783, 24.281801>,  <16.914675, 17.266769, 24.173239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.097694, 17.155783, 24.281801>,  <17.402727, 16.970804, 24.462738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.097694, 17.155783, 24.281801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097486, 0.773423, 0.626349,
		0.639505, 0.433545, -0.634880,
		-0.762581, 0.462445, -0.452344,
		16.868919, 17.294516, 24.146097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.588537, 17.665869, 24.292942>,  <17.402727, 16.970804, 24.462738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.588537, 17.665869, 24.292942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.189569, 17.675175, 24.320118>,  <16.950190, 17.680759, 24.336424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.189569, 17.675175, 24.320118>,  <17.588537, 17.665869, 24.292942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.189569, 17.675175, 24.320118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054710, 0.859002, 0.509041,
		-0.046516, 0.511444, -0.858057,
		-0.997418, 0.023266, 0.067938,
		16.890345, 17.682154, 24.340500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.353851, 18.378838, 24.187368>,  <17.588537, 17.665869, 24.292942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.353851, 18.378838, 24.187368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.034269, 18.211790, 24.360462>,  <16.842520, 18.111561, 24.464319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.034269, 18.211790, 24.360462>,  <17.353851, 18.378838, 24.187368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.034269, 18.211790, 24.360462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153501, 0.837343, 0.524686,
		-0.581468, 0.352776, -0.733106,
		-0.798957, -0.417620, 0.432737,
		16.794582, 18.086504, 24.490284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.811453, 18.781944, 24.008610>,  <17.353851, 18.378838, 24.187368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.811453, 18.781944, 24.008610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.669174, 18.588245, 24.328356>,  <16.583807, 18.472027, 24.520205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.669174, 18.588245, 24.328356>,  <16.811453, 18.781944, 24.008610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.669174, 18.588245, 24.328356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233335, 0.874229, 0.425768,
		-0.905005, -0.035076, -0.423952,
		-0.355697, -0.484245, 0.799366,
		16.562466, 18.442972, 24.568165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.319246, 19.171488, 24.153770>,  <16.811453, 18.781944, 24.008610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.319246, 19.171488, 24.153770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.393679, 18.962811, 24.486807>,  <16.438337, 18.837605, 24.686628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.393679, 18.962811, 24.486807>,  <16.319246, 19.171488, 24.153770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.393679, 18.962811, 24.486807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131700, 0.826501, 0.547312,
		-0.973668, -0.211496, 0.085088,
		0.186080, -0.521694, 0.832592,
		16.449503, 18.806303, 24.736584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.956326, 19.377935, 24.648575>,  <16.319246, 19.171488, 24.153770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.956326, 19.377935, 24.648575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.239498, 19.220692, 24.883284>,  <16.409401, 19.126345, 25.024109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.239498, 19.220692, 24.883284>,  <15.956326, 19.377935, 24.648575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.239498, 19.220692, 24.883284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083203, 0.778585, 0.621999,
		-0.701365, -0.489152, 0.518476,
		0.707929, -0.393110, 0.586771,
		16.451878, 19.102758, 25.059315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.706703, 19.448154, 25.323805>,  <15.956326, 19.377935, 24.648575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.706703, 19.448154, 25.323805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.100351, 19.392544, 25.367947>,  <16.336540, 19.359179, 25.394432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.100351, 19.392544, 25.367947>,  <15.706703, 19.448154, 25.323805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.100351, 19.392544, 25.367947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049553, 0.812182, 0.581295,
		-0.170441, -0.566596, 0.806175,
		0.984121, -0.139025, 0.110352,
		16.395588, 19.350836, 25.401052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.736039, 19.748446, 25.945654>,  <15.706703, 19.448154, 25.323805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.736039, 19.748446, 25.945654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.117062, 19.695971, 25.835798>,  <16.345675, 19.664486, 25.769886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.117062, 19.695971, 25.835798>,  <15.736039, 19.748446, 25.945654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.117062, 19.695971, 25.835798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269952, 0.780928, 0.563274,
		0.140577, -0.610690, 0.779292,
		0.952557, -0.131188, -0.274637,
		16.402828, 19.656614, 25.753407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.213326, 19.827280, 26.564821>,  <15.736039, 19.748446, 25.945654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.213326, 19.827280, 26.564821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.375845, 19.908382, 26.208437>,  <16.473356, 19.957045, 25.994606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.375845, 19.908382, 26.208437>,  <16.213326, 19.827280, 26.564821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.375845, 19.908382, 26.208437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402056, 0.835935, 0.373582,
		0.820531, -0.510002, 0.258121,
		0.406299, 0.202756, -0.890960,
		16.497734, 19.969210, 25.941149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.925255, 20.062490, 26.716570>,  <16.213326, 19.827280, 26.564821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.925255, 20.062490, 26.716570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.821817, 20.187460, 26.350943>,  <16.759754, 20.262442, 26.131567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.821817, 20.187460, 26.350943>,  <16.925255, 20.062490, 26.716570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.821817, 20.187460, 26.350943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483559, 0.861026, 0.157494,
		0.836242, -0.401279, -0.373732,
		-0.258594, 0.312425, -0.914068,
		16.744240, 20.281187, 26.076723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.519318, 20.243158, 26.369213>,  <16.925255, 20.062490, 26.716570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.519318, 20.243158, 26.369213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.220139, 20.450140, 26.202927>,  <17.040632, 20.574329, 26.103155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.220139, 20.450140, 26.202927>,  <17.519318, 20.243158, 26.369213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.220139, 20.450140, 26.202927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517408, 0.846829, 0.123168,
		0.415772, -0.122970, -0.901117,
		-0.747946, 0.517455, -0.415714,
		16.995754, 20.605377, 26.078213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.640797, 20.421354, 25.613390>,  <17.519318, 20.243158, 26.369213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.640797, 20.421354, 25.613390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.442259, 20.688375, 25.835388>,  <17.323137, 20.848587, 25.968588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.442259, 20.688375, 25.835388>,  <17.640797, 20.421354, 25.613390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.442259, 20.688375, 25.835388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605092, 0.724444, -0.330219,
		-0.622501, 0.171921, -0.763502,
		-0.496343, 0.667551, 0.554995,
		17.293356, 20.888641, 26.001886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.594856, 20.962082, 25.222961>,  <17.640797, 20.421354, 25.613390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.594856, 20.962082, 25.222961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.514526, 21.112196, 25.584919>,  <17.466330, 21.202265, 25.802094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.514526, 21.112196, 25.584919>,  <17.594856, 20.962082, 25.222961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.514526, 21.112196, 25.584919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556203, 0.804068, -0.210031,
		-0.806417, 0.461125, -0.370211,
		-0.200824, 0.375285, 0.904893,
		17.454279, 21.224781, 25.856386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.464626, 21.706247, 25.337910>,  <17.594856, 20.962082, 25.222961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.464626, 21.706247, 25.337910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.568933, 21.614742, 25.713072>,  <17.631517, 21.559839, 25.938169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.568933, 21.614742, 25.713072>,  <17.464626, 21.706247, 25.337910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.568933, 21.614742, 25.713072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617462, 0.786343, 0.020120,
		-0.742118, 0.573875, 0.346306,
		0.260769, -0.228763, 0.937906,
		17.647163, 21.546114, 25.994444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.931667, 22.329405, 25.344770>,  <17.464626, 21.706247, 25.337910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.931667, 22.329405, 25.344770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.954329, 22.580296, 25.034061>,  <17.967924, 22.730829, 24.847635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.954329, 22.580296, 25.034061>,  <17.931667, 22.329405, 25.344770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.954329, 22.580296, 25.034061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476781, -0.666580, -0.573020,
		-0.877195, 0.402813, 0.261287,
		0.056651, 0.627227, -0.776774,
		17.971323, 22.768463, 24.801029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.278502, 22.423185, 25.027039>,  <17.931667, 22.329405, 25.344770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.278502, 22.423185, 25.027039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.536003, 22.504955, 24.732069>,  <17.690504, 22.554018, 24.555088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.536003, 22.504955, 24.732069>,  <17.278502, 22.423185, 25.027039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.536003, 22.504955, 24.732069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430832, -0.699595, -0.570044,
		-0.632429, 0.684673, -0.362292,
		0.643752, 0.204426, -0.737424,
		17.729128, 22.566282, 24.510841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.899319, 22.282972, 24.319407>,  <17.278502, 22.423185, 25.027039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.899319, 22.282972, 24.319407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.285995, 22.301649, 24.218748>,  <17.518002, 22.312855, 24.158354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.285995, 22.301649, 24.218748>,  <16.899319, 22.282972, 24.319407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.285995, 22.301649, 24.218748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158863, -0.661421, -0.732998,
		-0.200670, 0.748560, -0.631972,
		0.966692, 0.046694, -0.251646,
		17.576004, 22.315657, 24.143255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.995489, 22.501595, 23.627485>,  <16.899319, 22.282972, 24.319407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.995489, 22.501595, 23.627485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.308372, 22.275564, 23.732433>,  <17.496103, 22.139946, 23.795403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.308372, 22.275564, 23.732433>,  <16.995489, 22.501595, 23.627485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.308372, 22.275564, 23.732433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181899, -0.609917, -0.771307,
		0.595872, 0.555598, -0.579869,
		0.782208, -0.565077, 0.262370,
		17.543036, 22.106041, 23.811144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.222097, 22.145857, 23.099007>,  <16.995489, 22.501595, 23.627485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.222097, 22.145857, 23.099007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.407658, 21.910969, 23.364328>,  <17.518993, 21.770037, 23.523521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.407658, 21.910969, 23.364328>,  <17.222097, 22.145857, 23.099007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.407658, 21.910969, 23.364328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124159, -0.784451, -0.607636,
		0.877145, 0.199527, -0.436814,
		0.463898, -0.587219, 0.663304,
		17.546827, 21.734802, 23.563320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.565546, 21.684910, 22.634100>,  <17.222097, 22.145857, 23.099007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.565546, 21.684910, 22.634100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.607952, 21.527626, 22.999426>,  <17.633396, 21.433256, 23.218622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.607952, 21.527626, 22.999426>,  <17.565546, 21.684910, 22.634100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.607952, 21.527626, 22.999426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123351, -0.916598, -0.380306,
		0.986684, -0.072341, -0.145676,
		0.106015, -0.393211, 0.913316,
		17.639757, 21.409662, 23.273420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.122667, 21.261400, 22.657761>,  <17.565546, 21.684910, 22.634100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.122667, 21.261400, 22.657761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.897499, 21.125265, 22.959036>,  <17.762398, 21.043583, 23.139801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.897499, 21.125265, 22.959036>,  <18.122667, 21.261400, 22.657761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.897499, 21.125265, 22.959036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063664, -0.890722, -0.450068,
		0.824056, -0.301303, 0.479737,
		-0.562919, -0.340340, 0.753187,
		17.728622, 21.023163, 23.184992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.451532, 20.613487, 22.832937>,  <18.122667, 21.261400, 22.657761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.451532, 20.613487, 22.832937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.069462, 20.631342, 22.950001>,  <17.840219, 20.642056, 23.020239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.069462, 20.631342, 22.950001>,  <18.451532, 20.613487, 22.832937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.069462, 20.631342, 22.950001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179144, -0.874178, -0.451354,
		0.235688, -0.483550, 0.842989,
		-0.955175, 0.044638, 0.292658,
		17.782909, 20.644733, 23.037798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.293251, 19.902203, 22.847740>,  <18.451532, 20.613487, 22.832937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.293251, 19.902203, 22.847740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.940943, 20.086693, 22.890667>,  <17.729559, 20.197386, 22.916424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.940943, 20.086693, 22.890667>,  <18.293251, 19.902203, 22.847740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.940943, 20.086693, 22.890667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462408, -0.788816, -0.404905,
		-0.102098, -0.406253, 0.908039,
		-0.880769, 0.461224, 0.107318,
		17.676712, 20.225060, 22.922863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.812292, 19.421892, 23.225935>,  <18.293251, 19.902203, 22.847740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.812292, 19.421892, 23.225935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.606897, 19.688086, 23.009247>,  <17.483660, 19.847801, 22.879234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.606897, 19.688086, 23.009247>,  <17.812292, 19.421892, 23.225935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.606897, 19.688086, 23.009247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540987, -0.741100, -0.397621,
		-0.666079, 0.088888, 0.740566,
		-0.513490, 0.665484, -0.541719,
		17.452850, 19.887732, 22.846731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.134226, 19.199167, 23.313574>,  <17.812292, 19.421892, 23.225935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.134226, 19.199167, 23.313574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.113628, 19.425726, 22.984566>,  <17.101271, 19.561661, 22.787161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.113628, 19.425726, 22.984566>,  <17.134226, 19.199167, 23.313574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.113628, 19.425726, 22.984566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447798, -0.749270, -0.487925,
		-0.892651, 0.343200, 0.292213,
		-0.051491, 0.566399, -0.822521,
		17.098181, 19.595646, 22.737810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.492178, 19.063807, 23.056698>,  <17.134226, 19.199167, 23.313574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.492178, 19.063807, 23.056698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.700663, 19.214544, 22.750410>,  <16.825754, 19.304987, 22.566637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.700663, 19.214544, 22.750410>,  <16.492178, 19.063807, 23.056698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.700663, 19.214544, 22.750410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446386, -0.644328, -0.620952,
		-0.727376, 0.665455, -0.167614,
		0.521214, 0.376845, -0.765718,
		16.857027, 19.327599, 22.520695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.972654, 19.040009, 22.467396>,  <16.492178, 19.063807, 23.056698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.972654, 19.040009, 22.467396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327936, 19.076546, 22.287285>,  <16.541105, 19.098467, 22.179218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327936, 19.076546, 22.287285>,  <15.972654, 19.040009, 22.467396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.327936, 19.076546, 22.287285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342968, -0.520318, -0.782076,
		-0.305723, 0.849074, -0.430822,
		0.888204, 0.091341, -0.450278,
		16.594397, 19.103949, 22.152201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.877181, 19.322453, 21.694630>,  <15.972654, 19.040009, 22.467396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.877181, 19.322453, 21.694630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.218500, 19.118313, 21.737385>,  <16.423292, 18.995829, 21.763037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.218500, 19.118313, 21.737385>,  <15.877181, 19.322453, 21.694630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.218500, 19.118313, 21.737385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147930, -0.433509, -0.888924,
		0.500000, 0.742706, -0.445408,
		0.853298, -0.510351, 0.106886,
		16.474489, 18.965208, 21.769451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.220312, 19.498348, 21.033726>,  <15.877181, 19.322453, 21.694630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.220312, 19.498348, 21.033726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.393938, 19.163574, 21.167068>,  <16.498114, 18.962709, 21.247074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.393938, 19.163574, 21.167068>,  <16.220312, 19.498348, 21.033726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.393938, 19.163574, 21.167068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064646, -0.398016, -0.915098,
		0.898559, 0.375661, -0.226869,
		0.434064, -0.836936, 0.333355,
		16.524157, 18.912493, 21.267075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.723843, 19.311630, 20.554306>,  <16.220312, 19.498348, 21.033726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.723843, 19.311630, 20.554306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.696651, 18.956390, 20.736143>,  <16.680336, 18.743246, 20.845245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.696651, 18.956390, 20.736143>,  <16.723843, 19.311630, 20.554306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.696651, 18.956390, 20.736143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134755, -0.459646, -0.877819,
		0.988544, 0.001587, 0.150922,
		-0.067978, -0.888101, 0.454594,
		16.676258, 18.689960, 20.872520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.233467, 18.944302, 20.420839>,  <16.723843, 19.311630, 20.554306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.233467, 18.944302, 20.420839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.967804, 18.665247, 20.528313>,  <16.808405, 18.497814, 20.592796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.967804, 18.665247, 20.528313>,  <17.233467, 18.944302, 20.420839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.967804, 18.665247, 20.528313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373622, -0.621048, -0.688989,
		0.647532, -0.357212, 0.673128,
		-0.664160, -0.697638, 0.268686,
		16.768557, 18.455956, 20.608919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.571192, 18.252771, 20.314606>,  <17.233467, 18.944302, 20.420839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.571192, 18.252771, 20.314606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.184208, 18.155851, 20.343760>,  <16.952017, 18.097698, 20.361252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.184208, 18.155851, 20.343760>,  <17.571192, 18.252771, 20.314606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.184208, 18.155851, 20.343760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166764, -0.827241, -0.536527,
		0.190295, -0.506914, 0.840729,
		-0.967459, -0.242302, 0.072884,
		16.893970, 18.083160, 20.365625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.634804, 17.575327, 20.352430>,  <17.571192, 18.252771, 20.314606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.634804, 17.575327, 20.352430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.255857, 17.641460, 20.242765>,  <17.028490, 17.681141, 20.176966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.255857, 17.641460, 20.242765>,  <17.634804, 17.575327, 20.352430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.255857, 17.641460, 20.242765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027793, -0.810640, -0.584885,
		-0.318948, -0.561720, 0.763376,
		-0.947364, 0.165331, -0.274164,
		16.971647, 17.691059, 20.160517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.251106, 16.906988, 20.484703>,  <17.634804, 17.575327, 20.352430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.251106, 16.906988, 20.484703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.052544, 17.131266, 20.219614>,  <16.933405, 17.265833, 20.060560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.052544, 17.131266, 20.219614>,  <17.251106, 16.906988, 20.484703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.052544, 17.131266, 20.219614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185173, -0.814249, -0.550190,
		-0.848111, -0.150399, 0.508023,
		-0.496405, 0.560695, -0.662724,
		16.903622, 17.299475, 20.020798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.591841, 16.540688, 20.259611>,  <17.251106, 16.906988, 20.484703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.591841, 16.540688, 20.259611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.601599, 16.821852, 19.975266>,  <16.607454, 16.990549, 19.804659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.601599, 16.821852, 19.975266>,  <16.591841, 16.540688, 20.259611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.601599, 16.821852, 19.975266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263853, -0.681333, -0.682764,
		-0.964254, 0.204219, 0.168843,
		0.024396, 0.702908, -0.710862,
		16.608917, 17.032724, 19.762007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.059435, 16.336338, 19.834642>,  <16.591841, 16.540688, 20.259611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.059435, 16.336338, 19.834642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.322998, 16.548647, 19.621431>,  <16.481136, 16.676033, 19.493504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.322998, 16.548647, 19.621431>,  <16.059435, 16.336338, 19.834642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.322998, 16.548647, 19.621431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031647, -0.688416, -0.724625,
		-0.751558, 0.494330, -0.436805,
		0.658907, 0.530774, -0.533028,
		16.520670, 16.707880, 19.461523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.857534, 16.316429, 19.216955>,  <16.059435, 16.336338, 19.834642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.857534, 16.316429, 19.216955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.247992, 16.393393, 19.176706>,  <16.482265, 16.439571, 19.152557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.247992, 16.393393, 19.176706>,  <15.857534, 16.316429, 19.216955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.247992, 16.393393, 19.176706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099633, -0.808662, -0.579775,
		-0.192925, 0.555917, -0.808539,
		0.976142, 0.192410, -0.100623,
		16.540834, 16.451117, 19.146519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.000095, 16.220253, 18.566170>,  <15.857534, 16.316429, 19.216955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.000095, 16.220253, 18.566170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.363888, 16.193930, 18.730371>,  <16.582163, 16.178135, 18.828894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.363888, 16.193930, 18.730371>,  <16.000095, 16.220253, 18.566170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.363888, 16.193930, 18.730371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218238, -0.764845, -0.606122,
		0.353862, 0.640844, -0.681249,
		0.909480, -0.065809, 0.410506,
		16.636732, 16.174187, 18.853523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.377754, 16.206768, 17.988943>,  <16.000095, 16.220253, 18.566170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.377754, 16.206768, 17.988943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.644876, 16.082838, 18.259659>,  <16.805149, 16.008480, 18.422089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.644876, 16.082838, 18.259659>,  <16.377754, 16.206768, 17.988943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.644876, 16.082838, 18.259659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319694, -0.701727, -0.636691,
		0.672185, 0.641550, -0.369567,
		0.667804, -0.309826, 0.676790,
		16.845219, 15.989890, 18.462696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.936670, 16.260431, 17.711027>,  <16.377754, 16.206768, 17.988943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.936670, 16.260431, 17.711027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.038475, 16.001217, 17.998158>,  <17.099558, 15.845689, 18.170435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.038475, 16.001217, 17.998158>,  <16.936670, 16.260431, 17.711027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.038475, 16.001217, 17.998158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376921, -0.617097, -0.690740,
		0.890592, 0.446365, 0.087200,
		0.254511, -0.648035, 0.717826,
		17.114828, 15.806807, 18.213505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.604479, 16.072111, 17.603930>,  <16.936670, 16.260431, 17.711027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.604479, 16.072111, 17.603930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.409521, 15.779379, 17.794453>,  <17.292547, 15.603740, 17.908768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.409521, 15.779379, 17.794453>,  <17.604479, 16.072111, 17.603930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.409521, 15.779379, 17.794453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453843, -0.678334, -0.577832,
		0.745972, -0.065462, 0.662752,
		-0.487393, -0.731832, 0.476309,
		17.263304, 15.559830, 17.937346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.045568, 15.599458, 17.552149>,  <17.604479, 16.072111, 17.603930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.045568, 15.599458, 17.552149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.724749, 15.380093, 17.646770>,  <17.532257, 15.248473, 17.703545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.724749, 15.380093, 17.646770>,  <18.045568, 15.599458, 17.552149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.724749, 15.380093, 17.646770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378092, -0.772816, -0.509708,
		0.462345, -0.319371, 0.827188,
		-0.802050, -0.548414, 0.236556,
		17.484133, 15.215569, 17.717737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.241663, 14.912413, 17.731178>,  <18.045568, 15.599458, 17.552149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.241663, 14.912413, 17.731178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.858400, 14.882410, 17.620680>,  <17.628443, 14.864408, 17.554380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.858400, 14.882410, 17.620680>,  <18.241663, 14.912413, 17.731178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.858400, 14.882410, 17.620680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246955, -0.704602, -0.665244,
		-0.144745, -0.705627, 0.693642,
		-0.958156, -0.075008, -0.276246,
		17.570953, 14.859908, 17.537806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.058800, 14.211452, 17.755220>,  <18.241663, 14.912413, 17.731178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.058800, 14.211452, 17.755220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.812166, 14.397492, 17.501133>,  <17.664186, 14.509116, 17.348680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.812166, 14.397492, 17.501133>,  <18.058800, 14.211452, 17.755220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.812166, 14.397492, 17.501133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275277, -0.628554, -0.727422,
		-0.737594, -0.623379, 0.259525,
		-0.616585, 0.465101, -0.635219,
		17.627190, 14.537023, 17.310568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.833126, 13.740309, 17.353231>,  <18.058800, 14.211452, 17.755220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.833126, 13.740309, 17.353231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.715231, 14.059754, 17.143339>,  <17.644493, 14.251422, 17.017405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.715231, 14.059754, 17.143339>,  <17.833126, 13.740309, 17.353231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.715231, 14.059754, 17.143339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200588, -0.485183, -0.851095,
		-0.934288, -0.356105, -0.017190,
		-0.294739, 0.798615, -0.524731,
		17.626810, 14.299339, 16.985920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.320024, 13.454310, 16.850512>,  <17.833126, 13.740309, 17.353231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.320024, 13.454310, 16.850512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.464180, 13.802366, 16.716063>,  <17.550673, 14.011200, 16.635393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.464180, 13.802366, 16.716063>,  <17.320024, 13.454310, 16.850512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.464180, 13.802366, 16.716063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242481, -0.435335, -0.866999,
		-0.900735, 0.230952, -0.367881,
		0.360387, 0.870141, -0.336120,
		17.572296, 14.063409, 16.615227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.080599, 13.436234, 16.161825>,  <17.320024, 13.454310, 16.850512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.080599, 13.436234, 16.161825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.384575, 13.692038, 16.208330>,  <17.566961, 13.845520, 16.236233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.384575, 13.692038, 16.208330>,  <17.080599, 13.436234, 16.161825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.384575, 13.692038, 16.208330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411333, -0.334660, -0.847825,
		-0.503283, 0.692121, -0.517373,
		0.759942, 0.639509, 0.116264,
		17.612556, 13.883890, 16.243210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.106192, 13.823214, 15.565665>,  <17.080599, 13.436234, 16.161825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.106192, 13.823214, 15.565665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.469177, 13.816401, 15.733581>,  <17.686968, 13.812314, 15.834330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.469177, 13.816401, 15.733581>,  <17.106192, 13.823214, 15.565665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.469177, 13.816401, 15.733581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400691, -0.265363, -0.876943,
		0.126330, 0.963998, -0.233983,
		0.907462, -0.017030, 0.419789,
		17.741415, 13.811293, 15.859517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.516392, 14.152680, 15.026481>,  <17.106192, 13.823214, 15.565665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.516392, 14.152680, 15.026481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.801161, 14.032851, 15.280542>,  <17.972023, 13.960954, 15.432980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.801161, 14.032851, 15.280542>,  <17.516392, 14.152680, 15.026481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.801161, 14.032851, 15.280542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590087, -0.235173, -0.772328,
		0.380739, 0.924635, 0.009349,
		0.711923, -0.299572, 0.635155,
		18.014738, 13.942980, 15.471089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.130785, 14.446729, 14.761345>,  <17.516392, 14.152680, 15.026481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.130785, 14.446729, 14.761345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.252539, 14.130686, 14.974166>,  <18.325592, 13.941060, 15.101859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.252539, 14.130686, 14.974166>,  <18.130785, 14.446729, 14.761345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.252539, 14.130686, 14.974166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645663, -0.239528, -0.725083,
		0.700335, 0.564232, 0.437233,
		0.304385, -0.790107, 0.532054,
		18.343855, 13.893654, 15.133782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.784470, 14.443207, 14.646594>,  <18.130785, 14.446729, 14.761345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.784470, 14.443207, 14.646594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.693228, 14.074580, 14.772251>,  <18.638483, 13.853404, 14.847646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.693228, 14.074580, 14.772251>,  <18.784470, 14.443207, 14.646594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.693228, 14.074580, 14.772251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607990, -0.386831, -0.693333,
		0.760472, 0.032845, 0.648540,
		-0.228103, -0.921565, 0.314143,
		18.624796, 13.798111, 14.866494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.397457, 14.178668, 14.511025>,  <18.784470, 14.443207, 14.646594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.397457, 14.178668, 14.511025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.166407, 13.861493, 14.588587>,  <19.027777, 13.671188, 14.635123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.166407, 13.861493, 14.588587>,  <19.397457, 14.178668, 14.511025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.166407, 13.861493, 14.588587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463007, -0.513884, -0.722183,
		0.672289, -0.327374, 0.663968,
		-0.577626, -0.792937, 0.193903,
		18.993118, 13.623612, 14.646757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.856363, 13.518076, 14.518874>,  <19.397457, 14.178668, 14.511025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.856363, 13.518076, 14.518874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.480808, 13.416074, 14.426388>,  <19.255476, 13.354873, 14.370895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.480808, 13.416074, 14.426388>,  <19.856363, 13.518076, 14.518874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.480808, 13.416074, 14.426388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333955, -0.511958, -0.791438,
		0.083449, -0.820287, 0.565831,
		-0.938888, -0.255006, -0.231217,
		19.199142, 13.339572, 14.357023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.813211, 12.756600, 14.421636>,  <19.856363, 13.518076, 14.518874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.813211, 12.756600, 14.421636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.500574, 12.911241, 14.225818>,  <19.312992, 13.004025, 14.108327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.500574, 12.911241, 14.225818>,  <19.813211, 12.756600, 14.421636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.500574, 12.911241, 14.225818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221929, -0.561107, -0.797438,
		-0.582980, -0.731914, 0.352757,
		-0.781590, 0.386603, -0.489547,
		19.266096, 13.027221, 14.078954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.637880, 12.309923, 13.979609>,  <19.813211, 12.756600, 14.421636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.637880, 12.309923, 13.979609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.483351, 12.633552, 13.802449>,  <19.390633, 12.827728, 13.696154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.483351, 12.633552, 13.802449>,  <19.637880, 12.309923, 13.979609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.483351, 12.633552, 13.802449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136598, -0.424697, -0.894971,
		-0.912192, -0.406248, 0.053553,
		-0.386324, 0.809071, -0.442898,
		19.367453, 12.876273, 13.669580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.997778, 12.114531, 13.523741>,  <19.637880, 12.309923, 13.979609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.997778, 12.114531, 13.523741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.195189, 12.444420, 13.413280>,  <19.313635, 12.642353, 13.347003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.195189, 12.444420, 13.413280>,  <18.997778, 12.114531, 13.523741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.195189, 12.444420, 13.413280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085162, -0.270166, -0.959040,
		-0.865550, 0.496831, -0.063099,
		0.493528, 0.824724, -0.276154,
		19.343246, 12.691837, 13.330434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.688467, 12.344432, 12.898751>,  <18.997778, 12.114531, 13.523741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.688467, 12.344432, 12.898751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.057339, 12.498923, 12.906884>,  <19.278662, 12.591619, 12.911764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.057339, 12.498923, 12.906884>,  <18.688467, 12.344432, 12.898751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.057339, 12.498923, 12.906884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044431, -0.053572, -0.997575,
		-0.384202, 0.920846, -0.066563,
		0.922179, 0.386228, 0.020332,
		19.333992, 12.614792, 12.912984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.766073, 12.758636, 12.316095>,  <18.688467, 12.344432, 12.898751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.766073, 12.758636, 12.316095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.134562, 12.627671, 12.400146>,  <19.355654, 12.549092, 12.450578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.134562, 12.627671, 12.400146>,  <18.766073, 12.758636, 12.316095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.134562, 12.627671, 12.400146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132967, -0.242613, -0.960968,
		0.365614, 0.913203, -0.179964,
		0.921220, -0.327414, 0.210129,
		19.410927, 12.529447, 12.463185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.922318, 12.903274, 11.653094>,  <18.766073, 12.758636, 12.316095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.922318, 12.903274, 11.653094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.191532, 12.690645, 11.858795>,  <19.353062, 12.563068, 11.982216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.191532, 12.690645, 11.858795>,  <18.922318, 12.903274, 11.653094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.191532, 12.690645, 11.858795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308875, -0.429755, -0.848473,
		0.672025, 0.729893, -0.125052,
		0.673037, -0.531570, 0.514252,
		19.393442, 12.531175, 12.013071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.295376, 12.534144, 11.093524>,  <18.922318, 12.903274, 11.653094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.295376, 12.534144, 11.093524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.468842, 12.419059, 11.435087>,  <19.572920, 12.350007, 11.640025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.468842, 12.419059, 11.435087>,  <19.295376, 12.534144, 11.093524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.468842, 12.419059, 11.435087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691626, -0.501145, -0.520102,
		0.577572, 0.816134, -0.018337,
		0.433663, -0.287714, 0.853907,
		19.598940, 12.332745, 11.691259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.997450, 12.649323, 11.100202>,  <19.295376, 12.534144, 11.093524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.997450, 12.649323, 11.100202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.975565, 12.357535, 11.372930>,  <19.962433, 12.182463, 11.536567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.975565, 12.357535, 11.372930>,  <19.997450, 12.649323, 11.100202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.975565, 12.357535, 11.372930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832436, -0.410418, -0.372299,
		0.551412, 0.547202, 0.629694,
		-0.054715, -0.729471, 0.681820,
		19.959150, 12.138694, 11.577476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.677755, 12.593071, 11.348225>,  <19.997450, 12.649323, 11.100202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.677755, 12.593071, 11.348225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.509254, 12.246698, 11.456083>,  <20.408154, 12.038875, 11.520799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.509254, 12.246698, 11.456083>,  <20.677755, 12.593071, 11.348225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.509254, 12.246698, 11.456083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832459, -0.487169, -0.263967,
		0.359941, 0.113272, 0.926073,
		-0.421254, -0.865931, 0.269646,
		20.382877, 11.986919, 11.536977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.030022, 12.771899, 12.035364>,  <20.677755, 12.593071, 11.348225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.030022, 12.771899, 12.035364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.418083, 12.826760, 12.115356>,  <21.650919, 12.859677, 12.163352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.418083, 12.826760, 12.115356>,  <21.030022, 12.771899, 12.035364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.418083, 12.826760, 12.115356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195201, 0.047600, -0.979607,
		-0.143875, 0.989405, 0.019406,
		0.970153, 0.137153, 0.199981,
		21.709129, 12.867907, 12.175351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.208433, 13.455891, 11.668210>,  <21.030022, 12.771899, 12.035364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.208433, 13.455891, 11.668210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.558029, 13.274679, 11.738527>,  <21.767788, 13.165952, 11.780718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.558029, 13.274679, 11.738527>,  <21.208433, 13.455891, 11.668210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.558029, 13.274679, 11.738527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281073, 0.176187, -0.943375,
		0.396404, 0.873912, 0.281320,
		0.873992, -0.453029, 0.175792,
		21.820227, 13.138770, 11.791265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.678724, 13.850555, 11.510841>,  <21.208433, 13.455891, 11.668210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.678724, 13.850555, 11.510841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887756, 13.510530, 11.484609>,  <22.013176, 13.306514, 11.468869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887756, 13.510530, 11.484609>,  <21.678724, 13.850555, 11.510841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.887756, 13.510530, 11.484609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298452, 0.254442, -0.919883,
		0.798646, 0.461140, 0.386670,
		0.522580, -0.850064, -0.065581,
		22.044531, 13.255510, 11.464934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.231041, 14.121844, 11.221641>,  <21.678724, 13.850555, 11.510841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.231041, 14.121844, 11.221641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.230082, 13.723869, 11.181458>,  <22.229506, 13.485085, 11.157348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.230082, 13.723869, 11.181458>,  <22.231041, 14.121844, 11.221641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.230082, 13.723869, 11.181458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325331, 0.094216, -0.940895,
		0.945597, -0.034936, 0.323458,
		-0.002396, -0.994938, -0.100457,
		22.229362, 13.425387, 11.151320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.884167, 14.010879, 10.829476>,  <22.231041, 14.121844, 11.221641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.884167, 14.010879, 10.829476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.653351, 13.687782, 10.781182>,  <22.514860, 13.493924, 10.752206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.653351, 13.687782, 10.781182>,  <22.884167, 14.010879, 10.829476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.653351, 13.687782, 10.781182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436236, -0.179855, -0.881675,
		0.690451, -0.561432, 0.456150,
		-0.577041, -0.807742, -0.120736,
		22.480238, 13.445459, 10.744962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.312323, 13.509966, 10.680073>,  <22.884167, 14.010879, 10.829476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.312323, 13.509966, 10.680073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.954302, 13.402927, 10.537369>,  <22.739491, 13.338704, 10.451747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.954302, 13.402927, 10.537369>,  <23.312323, 13.509966, 10.680073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.954302, 13.402927, 10.537369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396975, -0.113540, -0.910780,
		0.203215, -0.956818, 0.207853,
		-0.895050, -0.267597, -0.356759,
		22.685787, 13.322648, 10.430341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.512390, 13.142136, 10.183190>,  <23.312323, 13.509966, 10.680073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.512390, 13.142136, 10.183190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.126669, 13.183899, 10.085849>,  <22.895237, 13.208957, 10.027444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.126669, 13.183899, 10.085849>,  <23.512390, 13.142136, 10.183190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.126669, 13.183899, 10.085849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229832, -0.126469, -0.964978,
		-0.131555, -0.986458, 0.097951,
		-0.964298, 0.104436, -0.243357,
		22.837378, 13.215221, 10.012843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.331512, 12.541706, 9.698784>,  <23.512390, 13.142136, 10.183190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.331512, 12.541706, 9.698784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.048447, 12.816389, 9.632278>,  <22.878607, 12.981199, 9.592375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.048447, 12.816389, 9.632278>,  <23.331512, 12.541706, 9.698784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.048447, 12.816389, 9.632278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155667, -0.078003, -0.984725,
		-0.689188, -0.722736, -0.051698,
		-0.707664, 0.686708, -0.166264,
		22.836147, 13.022402, 9.582399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.766359, 12.285849, 9.345293>,  <23.331512, 12.541706, 9.698784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.766359, 12.285849, 9.345293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.717695, 12.672628, 9.255664>,  <22.688496, 12.904696, 9.201886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.717695, 12.672628, 9.255664>,  <22.766359, 12.285849, 9.345293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.717695, 12.672628, 9.255664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080531, -0.234621, -0.968745,
		-0.989299, -0.099814, 0.106413,
		-0.121662, 0.966949, -0.224073,
		22.681196, 12.962713, 9.188442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.125446, 12.330062, 8.876085>,  <22.766359, 12.285849, 9.345293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.125446, 12.330062, 8.876085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.336285, 12.666374, 8.826675>,  <22.462788, 12.868162, 8.797029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.336285, 12.666374, 8.826675>,  <22.125446, 12.330062, 8.876085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.336285, 12.666374, 8.826675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117040, -0.072147, -0.990503,
		-0.841709, 0.536545, 0.060377,
		0.527094, 0.840782, -0.123524,
		22.494413, 12.918609, 8.789618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.790022, 12.768528, 8.409518>,  <22.125446, 12.330062, 8.876085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.790022, 12.768528, 8.409518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.168858, 12.896908, 8.408110>,  <22.396158, 12.973936, 8.407265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.168858, 12.896908, 8.408110>,  <21.790022, 12.768528, 8.409518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.168858, 12.896908, 8.408110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010538, 0.020129, -0.999742,
		-0.320795, 0.946882, 0.022446,
		0.947090, 0.320949, -0.003521,
		22.452984, 12.993193, 8.407053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.796394, 13.421234, 8.084105>,  <21.790022, 12.768528, 8.409518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.796394, 13.421234, 8.084105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.166626, 13.275533, 8.042885>,  <22.388765, 13.188112, 8.018152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.166626, 13.275533, 8.042885>,  <21.796394, 13.421234, 8.084105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.166626, 13.275533, 8.042885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099216, 0.029283, -0.994635,
		0.365316, 0.930840, -0.009036,
		0.925581, -0.364253, -0.103052,
		22.444300, 13.166257, 8.011970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.022699, 13.708580, 7.430506>,  <21.796394, 13.421234, 8.084105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.022699, 13.708580, 7.430506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.286449, 13.413490, 7.488451>,  <22.444700, 13.236437, 7.523219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.286449, 13.413490, 7.488451>,  <22.022699, 13.708580, 7.430506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.286449, 13.413490, 7.488451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195853, -0.017478, -0.980477,
		0.725854, 0.674876, 0.132961,
		0.659377, -0.737724, 0.144863,
		22.484262, 13.192173, 7.531910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.688148, 13.911122, 7.127150>,  <22.022699, 13.708580, 7.430506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.688148, 13.911122, 7.127150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.665520, 13.512532, 7.151919>,  <22.651941, 13.273378, 7.166781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.665520, 13.512532, 7.151919>,  <22.688148, 13.911122, 7.127150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.665520, 13.512532, 7.151919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154451, -0.070013, -0.985517,
		0.986379, -0.046190, 0.157867,
		-0.056574, -0.996476, 0.061925,
		22.648548, 13.213590, 7.170497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.217909, 13.852398, 6.814040>,  <22.688148, 13.911122, 7.127150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.217909, 13.852398, 6.814040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.047638, 13.490453, 6.812201>,  <22.945475, 13.273286, 6.811099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.047638, 13.490453, 6.812201>,  <23.217909, 13.852398, 6.814040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.047638, 13.490453, 6.812201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292351, -0.132721, -0.947056,
		0.856347, -0.404484, 0.321034,
		-0.425677, -0.904864, -0.004595,
		22.919935, 13.218994, 6.810823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.704544, 13.398378, 6.588834>,  <23.217909, 13.852398, 6.814040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.704544, 13.398378, 6.588834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.339510, 13.247563, 6.525548>,  <23.120489, 13.157074, 6.487576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.339510, 13.247563, 6.525548>,  <23.704544, 13.398378, 6.588834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.339510, 13.247563, 6.525548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283126, -0.303502, -0.909795,
		0.295008, -0.875059, 0.383721,
		-0.912584, -0.377038, -0.158216,
		23.065735, 13.134452, 6.478083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.818371, 12.735601, 6.359532>,  <23.704544, 13.398378, 6.588834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.818371, 12.735601, 6.359532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.443439, 12.817739, 6.246925>,  <23.218481, 12.867023, 6.179360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.443439, 12.817739, 6.246925>,  <23.818371, 12.735601, 6.359532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.443439, 12.817739, 6.246925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262599, -0.114777, -0.958054,
		-0.229045, -0.971936, 0.053660,
		-0.937326, 0.205346, -0.281519,
		23.162241, 12.879343, 6.162469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.746529, 12.290556, 5.784897>,  <23.818371, 12.735601, 6.359532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.746529, 12.290556, 5.784897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.453299, 12.561189, 5.757077>,  <23.277361, 12.723568, 5.740386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.453299, 12.561189, 5.757077>,  <23.746529, 12.290556, 5.784897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.453299, 12.561189, 5.757077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190033, 0.105564, -0.976086,
		-0.653060, -0.728762, -0.205959,
		-0.733076, 0.676581, -0.069549,
		23.233376, 12.764163, 5.736212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.418154, 12.068285, 5.230953>,  <23.746529, 12.290556, 5.784897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.418154, 12.068285, 5.230953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.323954, 12.451136, 5.298419>,  <23.267433, 12.680846, 5.338898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.323954, 12.451136, 5.298419>,  <23.418154, 12.068285, 5.230953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.323954, 12.451136, 5.298419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057876, 0.159427, -0.985512,
		-0.970150, -0.241848, 0.017850,
		-0.235499, 0.957127, 0.168665,
		23.253304, 12.738274, 5.349018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.949501, 12.255399, 4.819811>,  <23.418154, 12.068285, 5.230953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.949501, 12.255399, 4.819811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.105747, 12.609146, 4.922037>,  <23.199495, 12.821394, 4.983372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.105747, 12.609146, 4.922037>,  <22.949501, 12.255399, 4.819811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.105747, 12.609146, 4.922037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045784, 0.258612, -0.964895,
		-0.919414, 0.388604, 0.060528,
		0.390616, 0.884368, 0.255564,
		23.222933, 12.874456, 4.998706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.617048, 12.713973, 4.329174>,  <22.949501, 12.255399, 4.819811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.617048, 12.713973, 4.329174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.961346, 12.879152, 4.448235>,  <23.167923, 12.978260, 4.519671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.961346, 12.879152, 4.448235>,  <22.617048, 12.713973, 4.329174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.961346, 12.879152, 4.448235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252981, 0.160392, -0.954083,
		-0.441728, 0.896520, 0.033588,
		0.860742, 0.412948, 0.297652,
		23.219568, 13.003036, 4.537530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.653646, 13.428723, 3.925740>,  <22.617048, 12.713973, 4.329174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.653646, 13.428723, 3.925740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.994711, 13.265319, 4.056026>,  <23.199348, 13.167276, 4.134197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.994711, 13.265319, 4.056026>,  <22.653646, 13.428723, 3.925740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.994711, 13.265319, 4.056026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315439, -0.094460, -0.944233,
		0.416497, 0.907852, 0.048319,
		0.852660, -0.408512, 0.325714,
		23.250509, 13.142765, 4.153740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.789730, 13.869815, 4.489165>,  <22.653646, 13.428723, 3.925740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.789730, 13.869815, 4.489165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.488594, 13.631292, 4.377702>,  <22.307913, 13.488179, 4.310824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.488594, 13.631292, 4.377702>,  <22.789730, 13.869815, 4.489165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.488594, 13.631292, 4.377702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603626, 0.456697, 0.653501,
		-0.262424, 0.660187, -0.703766,
		-0.752840, -0.596306, -0.278658,
		22.262741, 13.452400, 4.294105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.143402, 14.161440, 4.525222>,  <22.789730, 13.869815, 4.489165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.143402, 14.161440, 4.525222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.093832, 13.768780, 4.583193>,  <22.064089, 13.533183, 4.617976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.093832, 13.768780, 4.583193>,  <22.143402, 14.161440, 4.525222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.093832, 13.768780, 4.583193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710051, 0.189751, 0.678102,
		-0.693159, -0.018871, -0.720537,
		-0.123927, -0.981651, 0.144927,
		22.056654, 13.474284, 4.626671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.532999, 13.790040, 4.950371>,  <22.143402, 14.161440, 4.525222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.532999, 13.790040, 4.950371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.432325, 14.176623, 4.929924>,  <21.371922, 14.408573, 4.917656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.432325, 14.176623, 4.929924>,  <21.532999, 13.790040, 4.950371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.432325, 14.176623, 4.929924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046437, 0.040696, 0.998092,
		0.966694, 0.253579, 0.034636,
		-0.251685, 0.966458, -0.051116,
		21.356819, 14.466561, 4.914589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.945831, 14.289412, 5.369569>,  <21.532999, 13.790040, 4.950371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.945831, 14.289412, 5.369569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.562437, 14.393991, 5.324041>,  <21.332401, 14.456738, 5.296724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.562437, 14.393991, 5.324041>,  <21.945831, 14.289412, 5.369569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.562437, 14.393991, 5.324041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103063, 0.054543, 0.993178,
		0.265871, 0.963676, -0.025333,
		-0.958483, 0.261447, -0.113821,
		21.274893, 14.472425, 5.289895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.752766, 15.032939, 5.490295>,  <21.945831, 14.289412, 5.369569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.752766, 15.032939, 5.490295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.502590, 14.748340, 5.618416>,  <21.352484, 14.577580, 5.695289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.502590, 14.748340, 5.618416>,  <21.752766, 15.032939, 5.490295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.502590, 14.748340, 5.618416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220855, 0.232288, 0.947241,
		-0.748363, 0.663183, 0.011856,
		-0.625440, -0.711498, 0.320303,
		21.314959, 14.534890, 5.714507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.343773, 15.341579, 6.086309>,  <21.752766, 15.032939, 5.490295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.343773, 15.341579, 6.086309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.355427, 14.945121, 6.138124>,  <21.362419, 14.707246, 6.169213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.355427, 14.945121, 6.138124>,  <21.343773, 15.341579, 6.086309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.355427, 14.945121, 6.138124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295874, 0.132337, 0.946016,
		-0.954783, 0.010765, 0.297110,
		0.029134, -0.991146, 0.129538,
		21.364166, 14.647777, 6.176986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.828995, 15.070310, 6.360978>,  <21.343773, 15.341579, 6.086309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.828995, 15.070310, 6.360978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.157776, 14.857606, 6.442593>,  <21.355043, 14.729984, 6.491561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.157776, 14.857606, 6.442593>,  <20.828995, 15.070310, 6.360978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.157776, 14.857606, 6.442593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081692, 0.464598, 0.881745,
		-0.563670, -0.708083, 0.425317,
		0.821950, -0.531758, 0.204036,
		21.404362, 14.698078, 6.503803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.679228, 14.771984, 7.020600>,  <20.828995, 15.070310, 6.360978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.679228, 14.771984, 7.020600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.045916, 14.888016, 6.910707>,  <21.265928, 14.957635, 6.844771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.045916, 14.888016, 6.910707>,  <20.679228, 14.771984, 7.020600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.045916, 14.888016, 6.910707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081021, 0.538378, 0.838800,
		0.391227, -0.791204, 0.470040,
		0.916721, 0.290078, -0.274732,
		21.320932, 14.975039, 6.828287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.102467, 14.487925, 7.414188>,  <20.679228, 14.771984, 7.020600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.102467, 14.487925, 7.414188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.297558, 14.813512, 7.287967>,  <21.414614, 15.008864, 7.212234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.297558, 14.813512, 7.287967>,  <21.102467, 14.487925, 7.414188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.297558, 14.813512, 7.287967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197229, 0.249378, 0.948109,
		0.850424, -0.524657, -0.038909,
		0.487729, 0.813969, -0.315554,
		21.443876, 15.057702, 7.193300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.830530, 14.459044, 7.758029>,  <21.102467, 14.487925, 7.414188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.830530, 14.459044, 7.758029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.747711, 14.842027, 7.677619>,  <21.698019, 15.071815, 7.629373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.747711, 14.842027, 7.677619>,  <21.830530, 14.459044, 7.758029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.747711, 14.842027, 7.677619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382684, 0.268366, 0.884043,
		0.900379, 0.106111, -0.421968,
		-0.207049, 0.957455, -0.201024,
		21.685596, 15.129263, 7.617312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.421921, 14.780048, 7.905262>,  <21.830530, 14.459044, 7.758029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.421921, 14.780048, 7.905262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.135307, 15.057616, 7.933714>,  <21.963339, 15.224156, 7.950785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.135307, 15.057616, 7.933714>,  <22.421921, 14.780048, 7.905262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.135307, 15.057616, 7.933714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294788, 0.208812, 0.932469,
		0.632205, 0.689111, -0.354179,
		-0.716532, 0.693919, 0.071130,
		21.920347, 15.265792, 7.955053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.809530, 15.241162, 8.078392>,  <22.421921, 14.780048, 7.905262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.809530, 15.241162, 8.078392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.458681, 15.415895, 8.158225>,  <22.248171, 15.520735, 8.206125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.458681, 15.415895, 8.158225>,  <22.809530, 15.241162, 8.078392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.458681, 15.415895, 8.158225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418181, 0.490306, 0.764673,
		0.236177, 0.754174, -0.612733,
		-0.877123, 0.436832, 0.199582,
		22.195543, 15.546945, 8.218100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.854502, 15.972751, 8.373074>,  <22.809530, 15.241162, 8.078392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.854502, 15.972751, 8.373074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.491198, 15.867320, 8.503054>,  <22.273216, 15.804062, 8.581041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.491198, 15.867320, 8.503054>,  <22.854502, 15.972751, 8.373074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.491198, 15.867320, 8.503054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200326, 0.407892, 0.890783,
		-0.367335, 0.874157, -0.317670,
		-0.908259, -0.263578, 0.324950,
		22.218719, 15.788247, 8.600538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.679346, 16.564365, 8.574666>,  <22.854502, 15.972751, 8.373074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.679346, 16.564365, 8.574666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.453190, 16.294996, 8.765176>,  <22.317497, 16.133375, 8.879481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.453190, 16.294996, 8.765176>,  <22.679346, 16.564365, 8.574666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.453190, 16.294996, 8.765176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406951, 0.274504, 0.871228,
		-0.717444, 0.686403, 0.118849,
		-0.565389, -0.673423, 0.476273,
		22.283573, 16.092970, 8.908058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.425350, 16.845251, 9.226633>,  <22.679346, 16.564365, 8.574666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.425350, 16.845251, 9.226633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.411535, 16.456467, 9.319670>,  <22.403246, 16.223196, 9.375492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.411535, 16.456467, 9.319670>,  <22.425350, 16.845251, 9.226633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.411535, 16.456467, 9.319670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236741, 0.218151, 0.946765,
		-0.970959, 0.087763, 0.222569,
		-0.034537, -0.971961, 0.232592,
		22.401175, 16.164879, 9.389447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.193630, 16.850821, 9.850242>,  <22.425350, 16.845251, 9.226633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.193630, 16.850821, 9.850242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.313931, 16.469788, 9.831755>,  <22.386110, 16.241167, 9.820662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.313931, 16.469788, 9.831755>,  <22.193630, 16.850821, 9.850242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.313931, 16.469788, 9.831755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258285, 0.034705, 0.965445,
		-0.918062, -0.302296, 0.256475,
		0.300752, -0.952582, -0.046217,
		22.404156, 16.184013, 9.817889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.999889, 16.535851, 10.574464>,  <22.193630, 16.850821, 9.850242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.999889, 16.535851, 10.574464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.265684, 16.279493, 10.420730>,  <22.425161, 16.125679, 10.328489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.265684, 16.279493, 10.420730>,  <21.999889, 16.535851, 10.574464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.265684, 16.279493, 10.420730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362713, -0.173062, 0.915690,
		-0.653372, -0.747869, 0.117463,
		0.664488, -0.640892, -0.384336,
		22.465031, 16.087225, 10.305429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.952936, 15.930652, 10.987589>,  <21.999889, 16.535851, 10.574464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.952936, 15.930652, 10.987589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.318134, 15.933923, 10.824432>,  <22.537252, 15.935885, 10.726539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.318134, 15.933923, 10.824432>,  <21.952936, 15.930652, 10.987589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.318134, 15.933923, 10.824432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407369, 0.036110, 0.912549,
		0.022183, -0.999315, 0.029641,
		0.912994, 0.008169, -0.407890,
		22.592033, 15.936376, 10.702065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.305349, 15.455419, 11.312912>,  <21.952936, 15.930652, 10.987589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.305349, 15.455419, 11.312912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.584644, 15.702405, 11.168028>,  <22.752222, 15.850597, 11.081098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.584644, 15.702405, 11.168028>,  <22.305349, 15.455419, 11.312912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.584644, 15.702405, 11.168028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400540, 0.082385, 0.912568,
		0.593322, -0.782271, -0.189796,
		0.698239, 0.617467, -0.362211,
		22.794117, 15.887645, 11.059364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.954988, 15.155772, 11.514641>,  <22.305349, 15.455419, 11.312912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.954988, 15.155772, 11.514641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.000488, 15.549178, 11.458414>,  <23.027788, 15.785222, 11.424678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.000488, 15.549178, 11.458414>,  <22.954988, 15.155772, 11.514641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.000488, 15.549178, 11.458414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460366, 0.073202, 0.884706,
		0.880412, -0.165346, -0.444450,
		0.113748, 0.983515, -0.140567,
		23.034613, 15.844233, 11.416244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.612186, 15.169117, 11.572747>,  <22.954988, 15.155772, 11.514641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.612186, 15.169117, 11.572747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.477686, 15.542149, 11.625257>,  <23.396986, 15.765967, 11.656762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.477686, 15.542149, 11.625257>,  <23.612186, 15.169117, 11.572747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.477686, 15.542149, 11.625257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659415, 0.133621, 0.739809,
		0.672389, 0.335326, -0.659886,
		-0.336252, 0.932578, 0.131274,
		23.376810, 15.821922, 11.664639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.244804, 15.602394, 11.685550>,  <23.612186, 15.169117, 11.572747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.244804, 15.602394, 11.685550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.925869, 15.797193, 11.828144>,  <23.734507, 15.914072, 11.913701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.925869, 15.797193, 11.828144>,  <24.244804, 15.602394, 11.685550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.925869, 15.797193, 11.828144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528395, 0.277877, 0.802236,
		0.291628, 0.828021, -0.478890,
		-0.797340, 0.486997, 0.356486,
		23.686666, 15.943292, 11.935090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.544395, 16.126623, 12.061255>,  <24.244804, 15.602394, 11.685550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.544395, 16.126623, 12.061255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.175220, 16.169518, 12.209139>,  <23.953716, 16.195253, 12.297870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.175220, 16.169518, 12.209139>,  <24.544395, 16.126623, 12.061255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.175220, 16.169518, 12.209139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384424, 0.306937, 0.870637,
		-0.020116, 0.945669, -0.324507,
		-0.922938, 0.107235, 0.369712,
		23.898338, 16.201689, 12.320052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.560974, 16.789177, 12.520660>,  <24.544395, 16.126623, 12.061255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.560974, 16.789177, 12.520660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.262880, 16.541039, 12.618473>,  <24.084023, 16.392157, 12.677160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.262880, 16.541039, 12.618473>,  <24.560974, 16.789177, 12.520660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.262880, 16.541039, 12.618473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175969, 0.170757, 0.969472,
		-0.643162, 0.765517, -0.018094,
		-0.745237, -0.620344, 0.244532,
		24.039309, 16.354935, 12.691833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.187803, 17.087254, 13.098300>,  <24.560974, 16.789177, 12.520660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.187803, 17.087254, 13.098300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.111946, 16.697313, 13.145126>,  <24.066431, 16.463350, 13.173223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.111946, 16.697313, 13.145126>,  <24.187803, 17.087254, 13.098300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.111946, 16.697313, 13.145126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216237, 0.074835, 0.973469,
		-0.957745, 0.209927, 0.196606,
		-0.189645, -0.974849, 0.117067,
		24.055052, 16.404860, 13.180246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.659178, 17.690645, 13.067986>,  <24.187803, 17.087254, 13.098300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.659178, 17.690645, 13.067986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.536755, 17.916859, 12.761654>,  <24.463301, 18.052588, 12.577854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.536755, 17.916859, 12.761654>,  <24.659178, 17.690645, 13.067986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.536755, 17.916859, 12.761654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771262, 0.324296, 0.547710,
		0.558105, 0.758289, 0.336922,
		-0.306060, 0.565535, -0.765831,
		24.444937, 18.086519, 12.531904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.304178, 17.465073, 13.137512>,  <24.659178, 17.690645, 13.067986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.304178, 17.465073, 13.137512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335157, 17.075291, 13.053189>,  <25.353745, 16.841421, 13.002596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335157, 17.075291, 13.053189>,  <25.304178, 17.465073, 13.137512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.335157, 17.075291, 13.053189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424232, -0.159136, 0.891461,
		-0.902236, -0.158473, 0.401070,
		0.077448, -0.974455, -0.210808,
		25.358393, 16.782955, 12.989947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307121, 17.049294, 13.801951>,  <25.304178, 17.465073, 13.137512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.307121, 17.049294, 13.801951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561789, 16.887840, 13.539125>,  <25.714588, 16.790968, 13.381430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561789, 16.887840, 13.539125>,  <25.307121, 17.049294, 13.801951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561789, 16.887840, 13.539125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670298, -0.131599, 0.730330,
		-0.381255, -0.905407, 0.186770,
		0.636667, -0.403634, -0.657065,
		25.752789, 16.766750, 13.342006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508642, 16.373812, 14.144593>,  <25.307121, 17.049294, 13.801951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508642, 16.373812, 14.144593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.792479, 16.531660, 13.911098>,  <25.962780, 16.626369, 13.771000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.792479, 16.531660, 13.911098>,  <25.508642, 16.373812, 14.144593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.792479, 16.531660, 13.911098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661973, -0.089546, 0.744159,
		0.241391, -0.914469, -0.324772,
		0.709592, 0.394623, -0.583738,
		26.005356, 16.650047, 13.735976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.284323, 15.819678, 14.614617>,  <25.508642, 16.373812, 14.144593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.284323, 15.819678, 14.614617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459152, 15.484724, 14.745920>,  <25.564049, 15.283751, 14.824701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459152, 15.484724, 14.745920>,  <25.284323, 15.819678, 14.614617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459152, 15.484724, 14.745920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282719, -0.218554, -0.933972,
		0.853837, 0.501018, 0.141221,
		0.437072, -0.837386, 0.328256,
		25.590275, 15.233508, 14.844398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.045290, 15.957484, 14.583048>,  <25.284323, 15.819678, 14.614617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.045290, 15.957484, 14.583048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881712, 15.600822, 14.505362>,  <25.783566, 15.386826, 14.458750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881712, 15.600822, 14.505362>,  <26.045290, 15.957484, 14.583048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.881712, 15.600822, 14.505362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060383, 0.185919, -0.980708,
		0.910560, -0.412781, -0.022189,
		-0.408943, -0.891654, -0.194215,
		25.759029, 15.333326, 14.447097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422138, 15.504301, 14.082013>,  <26.045290, 15.957484, 14.583048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422138, 15.504301, 14.082013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025200, 15.455664, 14.073425>,  <25.787037, 15.426481, 14.068273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025200, 15.455664, 14.073425>,  <26.422138, 15.504301, 14.082013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025200, 15.455664, 14.073425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001530, 0.161766, -0.986828,
		0.123462, -0.979310, -0.160343,
		-0.992348, -0.121590, -0.021470,
		25.727495, 15.419186, 14.066984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312080, 14.961899, 14.506172>,  <26.422138, 15.504301, 14.082013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312080, 14.961899, 14.506172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650625, 14.873725, 14.700112>,  <26.853752, 14.820821, 14.816476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650625, 14.873725, 14.700112>,  <26.312080, 14.961899, 14.506172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650625, 14.873725, 14.700112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209246, 0.699515, 0.683297,
		-0.489782, -0.679770, 0.545918,
		0.846362, -0.220436, 0.484849,
		26.904533, 14.807594, 14.845567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<14.009529, 20.810627, 18.827719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.714663, 20.619987, 19.019318>,  <13.537743, 20.505604, 19.134277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.714663, 20.619987, 19.019318>,  <14.009529, 20.810627, 18.827719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.714663, 20.619987, 19.019318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161706, -0.812710, -0.559779,
		0.656077, -0.335194, 0.676171,
		-0.737166, -0.476599, 0.478998,
		13.493512, 20.477007, 19.163017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.398263, 20.245640, 19.071999>,  <14.009529, 20.810627, 18.827719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.398263, 20.245640, 19.071999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.014702, 20.132484, 19.063229>,  <13.784565, 20.064590, 19.057966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.014702, 20.132484, 19.063229>,  <14.398263, 20.245640, 19.071999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.014702, 20.132484, 19.063229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258893, -0.840710, -0.475585,
		0.116106, -0.461715, 0.879397,
		-0.958903, -0.282888, -0.021923,
		13.727031, 20.047619, 19.056652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.331072, 19.454285, 19.159018>,  <14.398263, 20.245640, 19.071999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.331072, 19.454285, 19.159018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.982086, 19.550985, 18.989141>,  <13.772695, 19.609005, 18.887217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.982086, 19.550985, 18.989141>,  <14.331072, 19.454285, 19.159018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.982086, 19.550985, 18.989141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010911, -0.859207, -0.511512,
		-0.488556, -0.450910, 0.746990,
		-0.872465, 0.241751, -0.424690,
		13.720346, 19.623510, 18.861734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.027888, 18.858875, 19.083174>,  <14.331072, 19.454285, 19.159018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.027888, 18.858875, 19.083174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.836066, 19.100178, 18.828268>,  <13.720973, 19.244959, 18.675325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.836066, 19.100178, 18.828268>,  <14.027888, 18.858875, 19.083174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.836066, 19.100178, 18.828268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176576, -0.777703, -0.603324,
		-0.859563, -0.176801, 0.479472,
		-0.479554, 0.603258, -0.637266,
		13.692200, 19.281155, 18.637089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.425181, 18.529800, 18.965731>,  <14.027888, 18.858875, 19.083174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.425181, 18.529800, 18.965731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.480977, 18.779472, 18.658239>,  <13.514455, 18.929276, 18.473743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.480977, 18.779472, 18.658239>,  <13.425181, 18.529800, 18.965731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.480977, 18.779472, 18.658239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023550, -0.778191, -0.627586,
		-0.989944, 0.069438, -0.123249,
		0.139489, 0.624178, -0.768730,
		13.522823, 18.966726, 18.427620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.823176, 18.412191, 18.462702>,  <13.425181, 18.529800, 18.965731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.823176, 18.412191, 18.462702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.094117, 18.592054, 18.229805>,  <13.256681, 18.699972, 18.090067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.094117, 18.592054, 18.229805>,  <12.823176, 18.412191, 18.462702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.094117, 18.592054, 18.229805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003268, -0.793285, -0.608841,
		-0.735652, 0.410497, -0.538802,
		0.677351, 0.449656, -0.582241,
		13.297322, 18.726952, 18.055132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.509280, 18.339077, 17.820391>,  <12.823176, 18.412191, 18.462702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.509280, 18.339077, 17.820391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.905845, 18.391390, 17.820225>,  <13.143784, 18.422777, 17.820126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.905845, 18.391390, 17.820225>,  <12.509280, 18.339077, 17.820391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.905845, 18.391390, 17.820225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107266, -0.814957, -0.569508,
		-0.074817, 0.564572, -0.821986,
		0.991411, 0.130780, -0.000413,
		13.203268, 18.430624, 17.820101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.655270, 18.271208, 17.203255>,  <12.509280, 18.339077, 17.820391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.655270, 18.271208, 17.203255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.014222, 18.204071, 17.366489>,  <13.229593, 18.163788, 17.464430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.014222, 18.204071, 17.366489>,  <12.655270, 18.271208, 17.203255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.014222, 18.204071, 17.366489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156150, -0.744196, -0.649453,
		0.412703, 0.646530, -0.641619,
		0.897381, -0.167843, 0.408087,
		13.283437, 18.153719, 17.488916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.106917, 18.030088, 16.682255>,  <12.655270, 18.271208, 17.203255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.106917, 18.030088, 16.682255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.314021, 17.888563, 16.993830>,  <13.438283, 17.803648, 17.180775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.314021, 17.888563, 16.993830>,  <13.106917, 18.030088, 16.682255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.314021, 17.888563, 16.993830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148538, -0.859470, -0.489129,
		0.842533, 0.368952, -0.392444,
		0.517759, -0.353815, 0.778935,
		13.469349, 17.782419, 17.227510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.752536, 17.836002, 16.432930>,  <13.106917, 18.030088, 16.682255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.752536, 17.836002, 16.432930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.703663, 17.628519, 16.771400>,  <13.674339, 17.504028, 16.974482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.703663, 17.628519, 16.771400>,  <13.752536, 17.836002, 16.432930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.703663, 17.628519, 16.771400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377250, -0.812846, -0.443805,
		0.918016, 0.264995, 0.294999,
		-0.122183, -0.518709, 0.846175,
		13.667008, 17.472906, 17.025253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.320300, 17.455769, 16.419147>,  <13.752536, 17.836002, 16.432930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.320300, 17.455769, 16.419147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.086107, 17.271809, 16.686192>,  <13.945592, 17.161432, 16.846418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.086107, 17.271809, 16.686192>,  <14.320300, 17.455769, 16.419147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.086107, 17.271809, 16.686192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385685, -0.882363, -0.269597,
		0.713063, 0.099643, 0.693983,
		-0.585481, -0.459899, 0.667611,
		13.910462, 17.133839, 16.886475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.775810, 17.030851, 16.745289>,  <14.320300, 17.455769, 16.419147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.775810, 17.030851, 16.745289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.412500, 16.877678, 16.812700>,  <14.194514, 16.785774, 16.853148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.412500, 16.877678, 16.812700>,  <14.775810, 17.030851, 16.745289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.412500, 16.877678, 16.812700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323921, -0.898582, -0.296015,
		0.264790, -0.214273, 0.940198,
		-0.908274, -0.382932, 0.168529,
		14.140018, 16.762798, 16.863258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.966174, 16.354649, 17.177105>,  <14.775810, 17.030851, 16.745289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.966174, 16.354649, 17.177105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.623124, 16.353636, 16.971397>,  <14.417294, 16.353027, 16.847973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.623124, 16.353636, 16.971397>,  <14.966174, 16.354649, 17.177105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.623124, 16.353636, 16.971397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196681, -0.925583, -0.323438,
		-0.475178, -0.378535, 0.794303,
		-0.857626, -0.002534, -0.514267,
		14.365836, 16.352877, 16.817118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.748667, 15.603316, 17.069548>,  <14.966174, 16.354649, 17.177105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.748667, 15.603316, 17.069548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.489411, 15.782222, 16.823011>,  <14.333858, 15.889565, 16.675091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.489411, 15.782222, 16.823011>,  <14.748667, 15.603316, 17.069548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.489411, 15.782222, 16.823011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033468, -0.825297, -0.563706,
		-0.760788, -0.344731, 0.549875,
		-0.648137, 0.447264, -0.616339,
		14.294971, 15.916401, 16.638109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.163529, 15.107142, 16.950533>,  <14.748667, 15.603316, 17.069548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.163529, 15.107142, 16.950533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.169623, 15.359142, 16.639954>,  <14.173280, 15.510342, 16.453606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.169623, 15.359142, 16.639954>,  <14.163529, 15.107142, 16.950533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.169623, 15.359142, 16.639954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012322, -0.776359, -0.630170,
		-0.999808, 0.019168, -0.004065,
		0.015236, 0.629999, -0.776446,
		14.174194, 15.548142, 16.407021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.636834, 14.848366, 16.533983>,  <14.163529, 15.107142, 16.950533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.636834, 14.848366, 16.533983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.869967, 15.079673, 16.305628>,  <14.009848, 15.218457, 16.168615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.869967, 15.079673, 16.305628>,  <13.636834, 14.848366, 16.533983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.869967, 15.079673, 16.305628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170058, -0.773795, -0.610182,
		-0.794599, 0.258550, -0.549332,
		0.582832, 0.578268, -0.570888,
		14.044817, 15.253153, 16.134361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.534049, 14.718810, 15.836378>,  <13.636834, 14.848366, 16.533983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.534049, 14.718810, 15.836378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.907340, 14.862478, 15.840011>,  <14.131314, 14.948679, 15.842190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.907340, 14.862478, 15.840011>,  <13.534049, 14.718810, 15.836378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.907340, 14.862478, 15.840011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290464, -0.739351, -0.607446,
		-0.211463, 0.569523, -0.794309,
		0.933228, 0.359171, 0.009080,
		14.187308, 14.970229, 15.842734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.627769, 14.823788, 15.100490>,  <13.534049, 14.718810, 15.836378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.627769, 14.823788, 15.100490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.989251, 14.817598, 15.271640>,  <14.206141, 14.813885, 15.374330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.989251, 14.817598, 15.271640>,  <13.627769, 14.823788, 15.100490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.989251, 14.817598, 15.271640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306112, -0.675361, -0.670956,
		0.299352, 0.737325, -0.605591,
		0.903706, -0.015473, 0.427875,
		14.260363, 14.812957, 15.400002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.123154, 14.938945, 14.571950>,  <13.627769, 14.823788, 15.100490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.123154, 14.938945, 14.571950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.331980, 14.790351, 14.879051>,  <14.457275, 14.701195, 15.063313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.331980, 14.790351, 14.879051>,  <14.123154, 14.938945, 14.571950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.331980, 14.790351, 14.879051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482288, -0.613850, -0.624969,
		0.703452, 0.696554, -0.141307,
		0.522066, -0.371485, 0.767754,
		14.488600, 14.678905, 15.109377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.821746, 14.982102, 14.285250>,  <14.123154, 14.938945, 14.571950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.821746, 14.982102, 14.285250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.809497, 14.706410, 14.574808>,  <14.802147, 14.540996, 14.748543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.809497, 14.706410, 14.574808>,  <14.821746, 14.982102, 14.285250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.809497, 14.706410, 14.574808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343190, -0.687457, -0.640018,
		0.938767, 0.228834, 0.257589,
		-0.030623, -0.689230, 0.723896,
		14.800310, 14.499641, 14.791977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.447131, 14.735746, 14.287734>,  <14.821746, 14.982102, 14.285250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.447131, 14.735746, 14.287734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.249745, 14.448693, 14.484303>,  <15.131313, 14.276462, 14.602243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.249745, 14.448693, 14.484303>,  <15.447131, 14.735746, 14.287734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.249745, 14.448693, 14.484303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406703, -0.689815, -0.598955,
		0.768820, -0.095701, 0.632263,
		-0.493465, -0.717632, 0.491422,
		15.101706, 14.233403, 14.631729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.934781, 14.224971, 14.470141>,  <15.447131, 14.735746, 14.287734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.934781, 14.224971, 14.470141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.580314, 14.039629, 14.471160>,  <15.367633, 13.928424, 14.471771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.580314, 14.039629, 14.471160>,  <15.934781, 14.224971, 14.470141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.580314, 14.039629, 14.471160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319567, -0.615137, -0.720752,
		0.335530, -0.637895, 0.693188,
		-0.886169, -0.463354, 0.002546,
		15.314463, 13.900622, 14.471924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.364908, 14.718301, 14.256589>,  <15.934781, 14.224971, 14.470141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.364908, 14.718301, 14.256589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.730228, 14.705986, 14.094138>,  <16.949421, 14.698597, 13.996668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.730228, 14.705986, 14.094138>,  <16.364908, 14.718301, 14.256589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.730228, 14.705986, 14.094138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248478, 0.832192, 0.495696,
		0.322714, -0.553632, 0.767690,
		0.913298, -0.030786, -0.406126,
		17.004217, 14.696751, 13.972301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.819799, 14.704321, 14.717633>,  <16.364908, 14.718301, 14.256589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.819799, 14.704321, 14.717633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.027065, 14.866347, 14.416322>,  <17.151424, 14.963563, 14.235535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.027065, 14.866347, 14.416322>,  <16.819799, 14.704321, 14.717633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.027065, 14.866347, 14.416322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276110, 0.754357, 0.595574,
		0.809488, -0.516592, 0.279037,
		0.518163, 0.405065, -0.753279,
		17.182514, 14.987866, 14.190338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.391022, 14.905226, 15.050788>,  <16.819799, 14.704321, 14.717633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.391022, 14.905226, 15.050788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.404642, 15.090302, 14.696443>,  <17.412815, 15.201348, 14.483835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.404642, 15.090302, 14.696443>,  <17.391022, 14.905226, 15.050788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.404642, 15.090302, 14.696443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264995, 0.850473, 0.454394,
		0.963649, -0.250222, -0.093651,
		0.034051, 0.462693, -0.885864,
		17.414858, 15.229111, 14.430683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.007040, 15.271237, 15.026123>,  <17.391022, 14.905226, 15.050788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.007040, 15.271237, 15.026123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.751499, 15.467081, 14.788754>,  <17.598175, 15.584587, 14.646334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.751499, 15.467081, 14.788754>,  <18.007040, 15.271237, 15.026123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.751499, 15.467081, 14.788754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303240, 0.869158, 0.390653,
		0.707043, 0.069622, -0.703735,
		-0.638855, 0.489609, -0.593420,
		17.559843, 15.613964, 14.610728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.387959, 15.797067, 14.877576>,  <18.007040, 15.271237, 15.026123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.387959, 15.797067, 14.877576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.023886, 15.923120, 14.770052>,  <17.805443, 15.998753, 14.705538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.023886, 15.923120, 14.770052>,  <18.387959, 15.797067, 14.877576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.023886, 15.923120, 14.770052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163321, 0.869437, 0.466268,
		0.380649, 0.380487, -0.842814,
		-0.910183, 0.315134, -0.268809,
		17.750832, 16.017660, 14.689409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.437866, 16.493177, 14.700162>,  <18.387959, 15.797067, 14.877576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.437866, 16.493177, 14.700162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.053923, 16.438675, 14.798224>,  <17.823557, 16.405973, 14.857062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.053923, 16.438675, 14.798224>,  <18.437866, 16.493177, 14.700162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.053923, 16.438675, 14.798224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010936, 0.855224, 0.518143,
		-0.280265, 0.500026, -0.819406,
		-0.959861, -0.136256, 0.245157,
		17.765965, 16.397799, 14.871772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.136938, 17.135992, 14.554777>,  <18.437866, 16.493177, 14.700162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.136938, 17.135992, 14.554777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.875338, 16.955290, 14.797495>,  <17.718378, 16.846869, 14.943126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.875338, 16.955290, 14.797495>,  <18.136938, 17.135992, 14.554777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.875338, 16.955290, 14.797495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189075, 0.874269, 0.447107,
		-0.732484, 0.177679, -0.657189,
		-0.654001, -0.451757, 0.606793,
		17.679136, 16.819763, 14.979533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.457542, 17.457201, 14.498918>,  <18.136938, 17.135992, 14.554777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.457542, 17.457201, 14.498918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.466915, 17.287521, 14.861024>,  <17.472538, 17.185713, 15.078288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.466915, 17.287521, 14.861024>,  <17.457542, 17.457201, 14.498918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.466915, 17.287521, 14.861024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344997, 0.846457, 0.405570,
		-0.938311, -0.321817, -0.126515,
		0.023430, -0.424199, 0.905266,
		17.473944, 17.160261, 15.132604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.834427, 17.798128, 14.876648>,  <17.457542, 17.457201, 14.498918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.834427, 17.798128, 14.876648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.066965, 17.632578, 15.156861>,  <17.206488, 17.533247, 15.324989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.066965, 17.632578, 15.156861>,  <16.834427, 17.798128, 14.876648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.066965, 17.632578, 15.156861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318417, 0.676580, 0.663966,
		-0.748765, -0.609054, 0.261542,
		0.581345, -0.413875, 0.700533,
		17.241369, 17.508415, 15.367021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.408998, 17.821556, 15.382360>,  <16.834427, 17.798128, 14.876648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.408998, 17.821556, 15.382360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.766392, 17.770012, 15.554442>,  <16.980827, 17.739084, 15.657692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.766392, 17.770012, 15.554442>,  <16.408998, 17.821556, 15.382360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.766392, 17.770012, 15.554442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260653, 0.631290, 0.730434,
		-0.365711, -0.764766, 0.530460,
		0.893485, -0.128862, 0.430208,
		17.034437, 17.731354, 15.683505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.214678, 17.747164, 16.009953>,  <16.408998, 17.821556, 15.382360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.214678, 17.747164, 16.009953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.597736, 17.856321, 16.046694>,  <16.827572, 17.921816, 16.068739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.597736, 17.856321, 16.046694>,  <16.214678, 17.747164, 16.009953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.597736, 17.856321, 16.046694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246255, 0.610901, 0.752435,
		0.149222, -0.743188, 0.652230,
		0.957649, 0.272895, 0.091855,
		16.885031, 17.938190, 16.074249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.409874, 17.627180, 16.648642>,  <16.214678, 17.747164, 16.009953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.409874, 17.627180, 16.648642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.673288, 17.900478, 16.522463>,  <16.831337, 18.064457, 16.446756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.673288, 17.900478, 16.522463>,  <16.409874, 17.627180, 16.648642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.673288, 17.900478, 16.522463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198809, 0.562228, 0.802729,
		0.725816, -0.465910, 0.506082,
		0.658533, 0.683247, -0.315447,
		16.870848, 18.105452, 16.427830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.509218, 17.945396, 17.144154>,  <16.409874, 17.627180, 16.648642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.509218, 17.945396, 17.144154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.704174, 18.209633, 16.915745>,  <16.821148, 18.368176, 16.778700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.704174, 18.209633, 16.915745>,  <16.509218, 17.945396, 17.144154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.704174, 18.209633, 16.915745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046383, 0.672619, 0.738534,
		0.871951, -0.333468, 0.358468,
		0.487390, 0.660592, -0.571024,
		16.850391, 18.407810, 16.744438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.101995, 18.205252, 17.516529>,  <16.509218, 17.945396, 17.144154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.101995, 18.205252, 17.516529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.999378, 18.473255, 17.237883>,  <16.937809, 18.634056, 17.070694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.999378, 18.473255, 17.237883>,  <17.101995, 18.205252, 17.516529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.999378, 18.473255, 17.237883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027579, 0.715371, 0.698201,
		0.966140, 0.198330, -0.165044,
		-0.256542, 0.670008, -0.696618,
		16.922417, 18.674257, 17.028898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.588417, 18.846386, 17.487532>,  <17.101995, 18.205252, 17.516529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.588417, 18.846386, 17.487532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.240772, 18.962437, 17.327297>,  <17.032185, 19.032068, 17.231155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.240772, 18.962437, 17.327297>,  <17.588417, 18.846386, 17.487532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.240772, 18.962437, 17.327297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140069, 0.632375, 0.761894,
		0.474369, 0.718281, -0.508966,
		-0.869112, 0.290128, -0.400588,
		16.980040, 19.049475, 17.207121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.641907, 19.597849, 17.530882>,  <17.588417, 18.846386, 17.487532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.641907, 19.597849, 17.530882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.261362, 19.506767, 17.447876>,  <17.033035, 19.452118, 17.398071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.261362, 19.506767, 17.447876>,  <17.641907, 19.597849, 17.530882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.261362, 19.506767, 17.447876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299225, 0.522623, 0.798330,
		-0.073331, 0.821594, -0.565338,
		-0.951361, -0.227706, -0.207517,
		16.975954, 19.438456, 17.385620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.215561, 20.239466, 17.411530>,  <17.641907, 19.597849, 17.530882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.215561, 20.239466, 17.411530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.949751, 19.953907, 17.499859>,  <16.790266, 19.782572, 17.552856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.949751, 19.953907, 17.499859>,  <17.215561, 20.239466, 17.411530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.949751, 19.953907, 17.499859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423953, 0.603518, 0.675300,
		-0.615365, 0.355133, -0.703709,
		-0.664523, -0.713895, 0.220824,
		16.750395, 19.739738, 17.566107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.660576, 20.711636, 17.544565>,  <17.215561, 20.239466, 17.411530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.660576, 20.711636, 17.544565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.593342, 20.338943, 17.673328>,  <16.553001, 20.115328, 17.750586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.593342, 20.338943, 17.673328>,  <16.660576, 20.711636, 17.544565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.593342, 20.338943, 17.673328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457608, 0.362985, 0.811688,
		-0.873123, -0.010876, -0.487379,
		-0.168084, -0.931731, 0.321908,
		16.542917, 20.059423, 17.769901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<15.947703, 20.678785, 17.653572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.110867, 20.389843, 17.876934>,  <16.208765, 20.216478, 18.010952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.110867, 20.389843, 17.876934>,  <15.947703, 20.678785, 17.653572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.110867, 20.389843, 17.876934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447834, 0.374682, 0.811824,
		-0.795649, -0.581221, -0.170659,
		0.407907, -0.722354, 0.558406,
		16.233238, 20.173138, 18.044456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.387748, 20.438284, 18.022007>,  <15.947703, 20.678785, 17.653572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.387748, 20.438284, 18.022007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.724125, 20.334347, 18.211870>,  <15.925951, 20.271984, 18.325788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.724125, 20.334347, 18.211870>,  <15.387748, 20.438284, 18.022007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.724125, 20.334347, 18.211870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264841, 0.567293, 0.779768,
		-0.471885, -0.781448, 0.408244,
		0.840942, -0.259841, 0.474657,
		15.976407, 20.256395, 18.354267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.227667, 20.190575, 18.783346>,  <15.387748, 20.438284, 18.022007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.227667, 20.190575, 18.783346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.616770, 20.273476, 18.824892>,  <15.850231, 20.323217, 18.849819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.616770, 20.273476, 18.824892>,  <15.227667, 20.190575, 18.783346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.616770, 20.273476, 18.824892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206615, 0.571905, 0.793874,
		0.105132, -0.793707, 0.599146,
		0.972758, 0.207254, 0.103867,
		15.908597, 20.335651, 18.856052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.442066, 20.086464, 19.473095>,  <15.227667, 20.190575, 18.783346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.442066, 20.086464, 19.473095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.720192, 20.341822, 19.341042>,  <15.887068, 20.495037, 19.261810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.720192, 20.341822, 19.341042>,  <15.442066, 20.086464, 19.473095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.720192, 20.341822, 19.341042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320841, 0.686747, 0.652257,
		0.643115, -0.347605, 0.682330,
		0.695316, 0.638396, -0.330131,
		15.928786, 20.533340, 19.242002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.655516, 20.461092, 20.074018>,  <15.442066, 20.086464, 19.473095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.655516, 20.461092, 20.074018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.790741, 20.716541, 19.797504>,  <15.871876, 20.869810, 19.631596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.790741, 20.716541, 19.797504>,  <15.655516, 20.461092, 20.074018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.790741, 20.716541, 19.797504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220942, 0.767859, 0.601312,
		0.914821, -0.050547, 0.400683,
		0.338063, 0.638621, -0.691286,
		15.892159, 20.908127, 19.590118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.061825, 20.922314, 20.455900>,  <15.655516, 20.461092, 20.074018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.061825, 20.922314, 20.455900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.996896, 21.119848, 20.114193>,  <15.957938, 21.238369, 19.909168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.996896, 21.119848, 20.114193>,  <16.061825, 20.922314, 20.455900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.996896, 21.119848, 20.114193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159742, 0.841179, 0.516624,
		0.973721, 0.220323, -0.057657,
		-0.162324, 0.493838, -0.854269,
		15.948198, 21.268000, 19.857912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.525455, 21.463173, 20.439384>,  <16.061825, 20.922314, 20.455900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.525455, 21.463173, 20.439384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.212799, 21.554440, 20.207186>,  <16.025206, 21.609200, 20.067867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.212799, 21.554440, 20.207186>,  <16.525455, 21.463173, 20.439384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.212799, 21.554440, 20.207186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095486, 0.875946, 0.472864,
		0.616376, 0.425039, -0.662889,
		-0.781641, 0.228165, -0.580498,
		15.978307, 21.622889, 20.033037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670166, 22.189789, 20.117310>,  <16.525455, 21.463173, 20.439384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.670166, 22.189789, 20.117310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.277884, 22.123840, 20.075300>,  <16.042513, 22.084270, 20.050095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.277884, 22.123840, 20.075300>,  <16.670166, 22.189789, 20.117310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.277884, 22.123840, 20.075300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192616, 0.906674, 0.375289,
		0.033349, 0.388278, -0.920939,
		-0.980707, -0.164872, -0.105025,
		15.983671, 22.074379, 20.043793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.421844, 22.755556, 19.832182>,  <16.670166, 22.189789, 20.117310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.421844, 22.755556, 19.832182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.129099, 22.561403, 20.023506>,  <15.953451, 22.444912, 20.138300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.129099, 22.561403, 20.023506>,  <16.421844, 22.755556, 19.832182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.129099, 22.561403, 20.023506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110897, 0.777374, 0.619186,
		-0.672366, 0.400117, -0.622760,
		-0.731864, -0.485382, 0.478309,
		15.909539, 22.415789, 20.166998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.956664, 23.282377, 20.018671>,  <16.421844, 22.755556, 19.832182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.956664, 23.282377, 20.018671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.824484, 22.980402, 20.245253>,  <15.745175, 22.799217, 20.381203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.824484, 22.980402, 20.245253>,  <15.956664, 23.282377, 20.018671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.824484, 22.980402, 20.245253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169521, 0.637886, 0.751242,
		-0.928475, 0.152223, -0.338768,
		-0.330451, -0.754937, 0.566456,
		15.725348, 22.753922, 20.415190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.530748, 23.576502, 20.317781>,  <15.956664, 23.282377, 20.018671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.530748, 23.576502, 20.317781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.577228, 23.257074, 20.554014>,  <15.605115, 23.065418, 20.695755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.577228, 23.257074, 20.554014>,  <15.530748, 23.576502, 20.317781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.577228, 23.257074, 20.554014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284967, 0.542808, 0.790034,
		-0.951468, -0.260097, -0.164493,
		0.116197, -0.798567, 0.590584,
		15.612087, 23.017504, 20.731190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.021032, 23.613184, 20.838226>,  <15.530748, 23.576502, 20.317781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.021032, 23.613184, 20.838226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.292733, 23.374912, 21.009705>,  <15.455753, 23.231949, 21.112593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.292733, 23.374912, 21.009705>,  <15.021032, 23.613184, 20.838226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.292733, 23.374912, 21.009705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115832, 0.489796, 0.864108,
		-0.724707, -0.636604, 0.263696,
		0.679252, -0.595681, 0.428698,
		15.496509, 23.196209, 21.138313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.864364, 23.667543, 21.482733>,  <15.021032, 23.613184, 20.838226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.864364, 23.667543, 21.482733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.233051, 23.513474, 21.500952>,  <15.454264, 23.421032, 21.511883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.233051, 23.513474, 21.500952>,  <14.864364, 23.667543, 21.482733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.233051, 23.513474, 21.500952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123617, 0.403046, 0.906792,
		-0.367631, -0.830178, 0.419110,
		0.921719, -0.385174, 0.045548,
		15.509567, 23.397921, 21.514616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.962141, 23.352074, 22.129555>,  <14.864364, 23.667543, 21.482733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.962141, 23.352074, 22.129555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.323016, 23.440399, 21.981340>,  <15.539541, 23.493395, 21.892412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.323016, 23.440399, 21.981340>,  <14.962141, 23.352074, 22.129555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.323016, 23.440399, 21.981340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278917, 0.356624, 0.891641,
		0.329026, -0.907778, 0.260155,
		0.902190, 0.220812, -0.370534,
		15.593673, 23.506643, 21.870180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.395988, 23.091606, 22.590624>,  <14.962141, 23.352074, 22.129555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.395988, 23.091606, 22.590624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.623517, 23.363409, 22.405275>,  <15.760035, 23.526491, 22.294065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.623517, 23.363409, 22.405275>,  <15.395988, 23.091606, 22.590624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.623517, 23.363409, 22.405275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384822, 0.278037, 0.880118,
		0.726880, -0.678945, -0.103335,
		0.568821, 0.679506, -0.463372,
		15.794164, 23.567261, 22.266264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.045725, 22.967209, 22.798359>,  <15.395988, 23.091606, 22.590624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.045725, 22.967209, 22.798359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.047535, 23.353769, 22.695559>,  <16.048622, 23.585705, 22.633879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.047535, 23.353769, 22.695559>,  <16.045725, 22.967209, 22.798359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.047535, 23.353769, 22.695559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501647, 0.220129, 0.836596,
		0.865060, -0.132710, -0.483796,
		0.004527, 0.966401, -0.256999,
		16.048893, 23.643690, 22.618460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.300892, 23.252153, 23.350636>,  <16.045725, 22.967209, 22.798359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.300892, 23.252153, 23.350636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.314678, 23.593849, 23.143139>,  <16.322950, 23.798866, 23.018641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.314678, 23.593849, 23.143139>,  <16.300892, 23.252153, 23.350636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.314678, 23.593849, 23.143139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483311, 0.440070, 0.756801,
		0.874770, -0.276797, -0.397695,
		0.034467, 0.854237, -0.518739,
		16.325018, 23.850121, 22.987516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.019665, 23.651558, 23.508535>,  <16.300892, 23.252153, 23.350636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.019665, 23.651558, 23.508535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.746359, 23.913042, 23.378422>,  <16.582375, 24.069933, 23.300354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.746359, 23.913042, 23.378422>,  <17.019665, 23.651558, 23.508535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.746359, 23.913042, 23.378422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161656, 0.569865, 0.805680,
		0.712050, 0.497909, -0.495046,
		-0.683265, 0.653712, -0.325283,
		16.541380, 24.109156, 23.280836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.354815, 24.281954, 23.357201>,  <17.019665, 23.651558, 23.508535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.354815, 24.281954, 23.357201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.971083, 24.374165, 23.422371>,  <16.740843, 24.429491, 23.461473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.971083, 24.374165, 23.422371>,  <17.354815, 24.281954, 23.357201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.971083, 24.374165, 23.422371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280032, 0.704350, 0.652284,
		0.035611, 0.671379, -0.740258,
		-0.959330, 0.230525, 0.162925,
		16.683283, 24.443321, 23.471249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.325542, 25.094976, 23.424906>,  <17.354815, 24.281954, 23.357201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.325542, 25.094976, 23.424906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.997807, 24.937826, 23.591919>,  <16.801165, 24.843536, 23.692127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.997807, 24.937826, 23.591919>,  <17.325542, 25.094976, 23.424906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.997807, 24.937826, 23.591919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074105, 0.649602, 0.756654,
		-0.568502, 0.650897, -0.503129,
		-0.819338, -0.392875, 0.417535,
		16.752005, 24.819963, 23.717180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.972910, 25.635111, 23.709061>,  <17.325542, 25.094976, 23.424906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.972910, 25.635111, 23.709061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.795128, 25.338886, 23.910667>,  <16.688459, 25.161152, 24.031631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.795128, 25.338886, 23.910667>,  <16.972910, 25.635111, 23.709061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.795128, 25.338886, 23.910667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103982, 0.516187, 0.850140,
		-0.889747, 0.430256, -0.152417,
		-0.444453, -0.740561, 0.504015,
		16.661793, 25.116718, 24.061872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.549126, 26.017263, 24.200319>,  <16.972910, 25.635111, 23.709061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.549126, 26.017263, 24.200319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.575596, 25.642078, 24.336466>,  <16.591478, 25.416967, 24.418154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.575596, 25.642078, 24.336466>,  <16.549126, 26.017263, 24.200319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.575596, 25.642078, 24.336466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060927, 0.336677, 0.939647,
		-0.995946, -0.082917, -0.034868,
		0.066173, -0.937962, 0.340364,
		16.595448, 25.360689, 24.438576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.085390, 25.973959, 24.721638>,  <16.549126, 26.017263, 24.200319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.085390, 25.973959, 24.721638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.397577, 25.727081, 24.761511>,  <16.584890, 25.578955, 24.785435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.397577, 25.727081, 24.761511>,  <16.085390, 25.973959, 24.721638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.397577, 25.727081, 24.761511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086547, 0.264571, 0.960475,
		-0.619176, -0.740993, 0.259906,
		0.780469, -0.617197, 0.099685,
		16.631718, 25.541922, 24.791416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.848638, 25.638802, 25.273535>,  <16.085390, 25.973959, 24.721638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.848638, 25.638802, 25.273535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.248558, 25.631653, 25.277105>,  <16.488510, 25.627363, 25.279247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.248558, 25.631653, 25.277105>,  <15.848638, 25.638802, 25.273535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.248558, 25.631653, 25.277105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005343, 0.191415, 0.981495,
		-0.019249, -0.981347, 0.191281,
		0.999800, -0.017871, 0.008927,
		16.548498, 25.626291, 25.279783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.349051, 25.228607, 24.840542>,  <15.848638, 25.638802, 25.273535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.349051, 25.228607, 24.840542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.025222, 25.165529, 25.066719>,  <14.830924, 25.127682, 25.202425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.025222, 25.165529, 25.066719>,  <15.349051, 25.228607, 24.840542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.025222, 25.165529, 25.066719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277577, -0.745913, -0.605446,
		0.517246, -0.647106, 0.560098,
		-0.809572, -0.157694, 0.565442,
		14.782351, 25.118221, 25.236351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.358906, 24.554747, 24.894878>,  <15.349051, 25.228607, 24.840542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.358906, 24.554747, 24.894878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.991127, 24.686649, 24.980558>,  <14.770460, 24.765791, 25.031965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.991127, 24.686649, 24.980558>,  <15.358906, 24.554747, 24.894878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.991127, 24.686649, 24.980558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390485, -0.701609, -0.596042,
		-0.046264, -0.631670, 0.773856,
		-0.919446, 0.329755, 0.214198,
		14.715293, 24.785576, 25.044817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.989264, 23.978279, 25.074213>,  <15.358906, 24.554747, 24.894878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.989264, 23.978279, 25.074213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.712724, 24.246689, 24.967062>,  <14.546800, 24.407734, 24.902771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.712724, 24.246689, 24.967062>,  <14.989264, 23.978279, 25.074213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.712724, 24.246689, 24.967062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420587, -0.675228, -0.605948,
		-0.587485, -0.306257, 0.749045,
		-0.691352, 0.671024, -0.267879,
		14.505319, 24.447996, 24.886698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.498073, 23.578671, 24.982012>,  <14.989264, 23.978279, 25.074213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.498073, 23.578671, 24.982012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.365644, 23.919119, 24.819048>,  <14.286188, 24.123388, 24.721270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.365644, 23.919119, 24.819048>,  <14.498073, 23.578671, 24.982012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.365644, 23.919119, 24.819048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658149, -0.517682, -0.546667,
		-0.676190, 0.087154, 0.731554,
		-0.331069, 0.851123, -0.407412,
		14.266324, 24.174456, 24.696825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.774930, 23.553007, 24.974922>,  <14.498073, 23.578671, 24.982012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.774930, 23.553007, 24.974922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.906301, 23.818377, 24.705997>,  <13.985125, 23.977598, 24.544641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.906301, 23.818377, 24.705997>,  <13.774930, 23.553007, 24.974922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.906301, 23.818377, 24.705997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496617, -0.484179, -0.720376,
		-0.803434, 0.570475, 0.170449,
		0.328429, 0.663422, -0.672313,
		14.004830, 24.017403, 24.504303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.207237, 23.640047, 24.627993>,  <13.774930, 23.553007, 24.974922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.207237, 23.640047, 24.627993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.493011, 23.766224, 24.378168>,  <13.664476, 23.841930, 24.228273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.493011, 23.766224, 24.378168>,  <13.207237, 23.640047, 24.627993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.493011, 23.766224, 24.378168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488274, -0.414583, -0.767925,
		-0.501167, 0.853591, -0.142172,
		0.714437, 0.315440, -0.624562,
		13.707342, 23.860855, 24.190800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.832535, 23.656458, 24.000263>,  <13.207237, 23.640047, 24.627993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.832535, 23.656458, 24.000263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.216599, 23.674810, 23.890003>,  <13.447039, 23.685822, 23.823847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.216599, 23.674810, 23.890003>,  <12.832535, 23.656458, 24.000263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.216599, 23.674810, 23.890003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196045, -0.592344, -0.781470,
		-0.199133, 0.804378, -0.559752,
		0.960163, 0.045879, -0.275650,
		13.504648, 23.688574, 23.807308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.857477, 23.912239, 23.260637>,  <12.832535, 23.656458, 24.000263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.857477, 23.912239, 23.260637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.171623, 23.694111, 23.377821>,  <13.360111, 23.563234, 23.448132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.171623, 23.694111, 23.377821>,  <12.857477, 23.912239, 23.260637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.171623, 23.694111, 23.377821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225373, -0.692659, -0.685150,
		0.576548, 0.472068, -0.666891,
		0.785366, -0.545321, 0.292960,
		13.407233, 23.530514, 23.465710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.112584, 23.721722, 22.659386>,  <12.857477, 23.912239, 23.260637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.112584, 23.721722, 22.659386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.345614, 23.494078, 22.891497>,  <13.485433, 23.357492, 23.030764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.345614, 23.494078, 22.891497>,  <13.112584, 23.721722, 22.659386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.345614, 23.494078, 22.891497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085921, -0.666822, -0.740247,
		0.808223, 0.481108, -0.339575,
		0.582575, -0.569108, 0.580278,
		13.520387, 23.323345, 23.065580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.629796, 23.585716, 22.230032>,  <13.112584, 23.721722, 22.659386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.629796, 23.585716, 22.230032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.624400, 23.297386, 22.507227>,  <13.621162, 23.124388, 22.673544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.624400, 23.297386, 22.507227>,  <13.629796, 23.585716, 22.230032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.624400, 23.297386, 22.507227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000881, -0.693042, -0.720897,
		0.999909, -0.010335, 0.008713,
		-0.013489, -0.720823, 0.692987,
		13.620354, 23.081139, 22.715124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.183813, 23.167391, 22.026514>,  <13.629796, 23.585716, 22.230032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.183813, 23.167391, 22.026514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.975967, 22.916828, 22.258932>,  <13.851260, 22.766491, 22.398384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.975967, 22.916828, 22.258932>,  <14.183813, 23.167391, 22.026514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.975967, 22.916828, 22.258932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041547, -0.697783, -0.715103,
		0.853391, -0.347436, 0.388603,
		-0.519613, -0.626407, 0.581047,
		13.820084, 22.728907, 22.433247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.611511, 22.593182, 22.025867>,  <14.183813, 23.167391, 22.026514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.611511, 22.593182, 22.025867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.244264, 22.487156, 22.143715>,  <14.023915, 22.423540, 22.214422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.244264, 22.487156, 22.143715>,  <14.611511, 22.593182, 22.025867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.244264, 22.487156, 22.143715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005512, -0.751876, -0.659281,
		0.396268, -0.603674, 0.691772,
		-0.918119, -0.265065, 0.294617,
		13.968828, 22.407637, 22.232100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.611867, 21.844166, 22.198845>,  <14.611511, 22.593182, 22.025867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.611867, 21.844166, 22.198845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.228301, 21.925646, 22.119860>,  <13.998161, 21.974533, 22.072470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.228301, 21.925646, 22.119860>,  <14.611867, 21.844166, 22.198845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.228301, 21.925646, 22.119860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019760, -0.742294, -0.669783,
		-0.283008, -0.638362, 0.715821,
		-0.958914, 0.203699, -0.197461,
		13.940627, 21.986755, 22.060621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.227737, 21.179159, 22.020815>,  <14.611867, 21.844166, 22.198845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.227737, 21.179159, 22.020815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.990385, 21.459860, 21.863110>,  <13.847974, 21.628281, 21.768486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.990385, 21.459860, 21.863110>,  <14.227737, 21.179159, 22.020815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.990385, 21.459860, 21.863110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114585, -0.558470, -0.821572,
		-0.796725, -0.442328, 0.411795,
		-0.593380, 0.701752, -0.394263,
		13.812371, 21.670385, 21.744831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.591421, 20.803627, 21.802410>,  <14.227737, 21.179159, 22.020815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.591421, 20.803627, 21.802410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.605305, 21.138224, 21.583658>,  <13.613635, 21.338982, 21.452406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.605305, 21.138224, 21.583658>,  <13.591421, 20.803627, 21.802410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.605305, 21.138224, 21.583658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235267, -0.524993, -0.817944,
		-0.971311, 0.157053, 0.178576,
		0.034710, 0.836491, -0.546881,
		13.615718, 21.389172, 21.419594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.023292, 20.865454, 21.415411>,  <13.591421, 20.803627, 21.802410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.023292, 20.865454, 21.415411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.259310, 21.110798, 21.205408>,  <13.400921, 21.258005, 21.079407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.259310, 21.110798, 21.205408>,  <13.023292, 20.865454, 21.415411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.259310, 21.110798, 21.205408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367290, -0.375162, -0.851088,
		-0.718989, 0.695011, 0.003920,
		0.590045, 0.613362, -0.525008,
		13.436323, 21.294807, 21.047905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.652607, 21.144627, 20.752666>,  <13.023292, 20.865454, 21.415411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.652607, 21.144627, 20.752666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.041858, 21.203289, 20.681654>,  <13.275408, 21.238485, 20.639048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.041858, 21.203289, 20.681654>,  <12.652607, 21.144627, 20.752666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.041858, 21.203289, 20.681654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148165, -0.191384, -0.970268,
		-0.176270, 0.970497, -0.164512,
		0.973127, 0.146654, -0.177529,
		13.333796, 21.247286, 20.628395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.625455, 21.539129, 20.171368>,  <12.652607, 21.144627, 20.752666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.625455, 21.539129, 20.171368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.982699, 21.360184, 20.190208>,  <13.197046, 21.252817, 20.201513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.982699, 21.360184, 20.190208>,  <12.625455, 21.539129, 20.171368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.982699, 21.360184, 20.190208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131707, -0.360177, -0.923540,
		0.430122, 0.818621, -0.380599,
		0.893112, -0.447362, 0.047102,
		13.250633, 21.225975, 20.204340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.923436, 21.600435, 19.501196>,  <12.625455, 21.539129, 20.171368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.923436, 21.600435, 19.501196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.087665, 21.275387, 19.666641>,  <13.186201, 21.080357, 19.765907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.087665, 21.275387, 19.666641>,  <12.923436, 21.600435, 19.501196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.087665, 21.275387, 19.666641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017623, -0.446451, -0.894635,
		0.911659, 0.374600, -0.168979,
		0.410570, -0.812623, 0.413612,
		13.210835, 21.031599, 19.790726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.481871, 21.424761, 19.054804>,  <12.923436, 21.600435, 19.501196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.481871, 21.424761, 19.054804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.399964, 21.089827, 19.257563>,  <13.350821, 20.888866, 19.379217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.399964, 21.089827, 19.257563>,  <13.481871, 21.424761, 19.054804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.399964, 21.089827, 19.257563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257344, -0.545704, -0.797484,
		0.944375, -0.032851, 0.327225,
		-0.204766, -0.837334, 0.506896,
		13.338534, 20.838627, 19.409632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<24.377956, 13.632268, 0.653672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.725245, 13.586570, 0.846810>,  <24.933619, 13.559151, 0.962692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.725245, 13.586570, 0.846810>,  <24.377956, 13.632268, 0.653672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.725245, 13.586570, 0.846810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297408, 0.659116, 0.690735,
		-0.397163, -0.743313, 0.538282,
		0.868222, -0.114245, 0.482843,
		24.985712, 13.552296, 0.991663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.207853, 13.363984, 1.272348>,  <24.377956, 13.632268, 0.653672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.207853, 13.363984, 1.272348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.530809, 13.596569, 1.232306>,  <24.724583, 13.736120, 1.208281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.530809, 13.596569, 1.232306>,  <24.207853, 13.363984, 1.272348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.530809, 13.596569, 1.232306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430577, 0.696668, 0.573809,
		0.403387, -0.420186, 0.812848,
		0.807392, 0.581461, -0.100104,
		24.773027, 13.771008, 1.202275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.414551, 13.551138, 1.888573>,  <24.207853, 13.363984, 1.272348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.414551, 13.551138, 1.888573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.574564, 13.847592, 1.672910>,  <24.670572, 14.025465, 1.543512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.574564, 13.847592, 1.672910>,  <24.414551, 13.551138, 1.888573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.574564, 13.847592, 1.672910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401647, 0.670546, 0.623738,
		0.823804, -0.032965, 0.565915,
		0.400033, 0.741136, -0.539158,
		24.694574, 14.069933, 1.511163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.860312, 13.858562, 2.328664>,  <24.414551, 13.551138, 1.888573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.860312, 13.858562, 2.328664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.656420, 14.057593, 2.047925>,  <24.534084, 14.177012, 1.879481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.656420, 14.057593, 2.047925>,  <24.860312, 13.858562, 2.328664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.656420, 14.057593, 2.047925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551424, 0.437236, 0.710462,
		0.660384, 0.749160, 0.051505,
		-0.509730, 0.497579, -0.701848,
		24.503500, 14.206867, 1.837370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.538048, 13.792074, 3.085248>,  <24.860312, 13.858562, 2.328664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.538048, 13.792074, 3.085248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.633495, 13.411178, 3.161454>,  <24.690763, 13.182639, 3.207178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.633495, 13.411178, 3.161454>,  <24.538048, 13.792074, 3.085248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.633495, 13.411178, 3.161454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412872, 0.078091, 0.907435,
		-0.878976, -0.295190, -0.374520,
		0.238619, -0.952242, 0.190516,
		24.705082, 13.125505, 3.218609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.007507, 13.182733, 3.173936>,  <24.538048, 13.792074, 3.085248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.007507, 13.182733, 3.173936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.328943, 13.106499, 3.399475>,  <24.521805, 13.060759, 3.534798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.328943, 13.106499, 3.399475>,  <24.007507, 13.182733, 3.173936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.328943, 13.106499, 3.399475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560134, 0.078135, 0.824709,
		-0.201233, -0.978556, -0.043965,
		0.803589, -0.190585, 0.563846,
		24.570021, 13.049323, 3.568629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.903473, 12.624290, 3.570193>,  <24.007507, 13.182733, 3.173936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.903473, 12.624290, 3.570193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.162260, 12.876035, 3.742395>,  <24.317533, 13.027081, 3.845716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.162260, 12.876035, 3.742395>,  <23.903473, 12.624290, 3.570193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.162260, 12.876035, 3.742395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591619, 0.058126, 0.804120,
		0.481058, -0.774936, 0.409948,
		0.646970, 0.629361, 0.430505,
		24.356352, 13.064843, 3.871546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.192799, 12.412561, 4.263989>,  <23.903473, 12.624290, 3.570193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.192799, 12.412561, 4.263989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.158493, 12.804885, 4.193949>,  <24.137909, 13.040278, 4.151925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.158493, 12.804885, 4.193949>,  <24.192799, 12.412561, 4.263989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.158493, 12.804885, 4.193949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488982, 0.111689, 0.865114,
		0.868068, 0.159817, 0.470018,
		-0.085764, 0.980808, -0.175101,
		24.132765, 13.099127, 4.141418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.282560, 12.787024, 4.918969>,  <24.192799, 12.412561, 4.263989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.282560, 12.787024, 4.918969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.052923, 12.989289, 4.661374>,  <23.915140, 13.110649, 4.506817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.052923, 12.989289, 4.661374>,  <24.282560, 12.787024, 4.918969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.052923, 12.989289, 4.661374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697945, 0.109026, 0.707804,
		0.428123, 0.855814, 0.290334,
		-0.574094, 0.505664, -0.643987,
		23.880695, 13.140988, 4.468177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.276381, 13.498733, 5.186834>,  <24.282560, 12.787024, 4.918969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.276381, 13.498733, 5.186834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.955576, 13.366841, 4.987613>,  <23.763092, 13.287706, 4.868081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.955576, 13.366841, 4.987613>,  <24.276381, 13.498733, 5.186834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.955576, 13.366841, 4.987613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542786, 0.054278, 0.838115,
		-0.249316, 0.942515, -0.222503,
		-0.802013, -0.329727, -0.498052,
		23.714972, 13.267923, 4.838198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.784643, 13.939705, 5.360314>,  <24.276381, 13.498733, 5.186834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.784643, 13.939705, 5.360314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.592550, 13.613929, 5.230043>,  <23.477295, 13.418463, 5.151880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.592550, 13.613929, 5.230043>,  <23.784643, 13.939705, 5.360314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.592550, 13.613929, 5.230043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586296, 0.021884, 0.809802,
		-0.652409, 0.579834, -0.488012,
		-0.480230, -0.814441, -0.325677,
		23.448481, 13.369596, 5.132340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.983423, 13.963173, 5.436069>,  <23.784643, 13.939705, 5.360314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.983423, 13.963173, 5.436069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.075197, 13.573928, 5.444181>,  <23.130260, 13.340381, 5.449048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.075197, 13.573928, 5.444181>,  <22.983423, 13.963173, 5.436069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.075197, 13.573928, 5.444181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525940, -0.106418, 0.843838,
		-0.818992, -0.204270, -0.536215,
		0.229434, -0.973113, 0.020278,
		23.144028, 13.281994, 5.450264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.324167, 13.635519, 5.651262>,  <22.983423, 13.963173, 5.436069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.324167, 13.635519, 5.651262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.594625, 13.342187, 5.679694>,  <22.756901, 13.166187, 5.696754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.594625, 13.342187, 5.679694>,  <22.324167, 13.635519, 5.651262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.594625, 13.342187, 5.679694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425059, -0.309464, 0.850621,
		-0.601791, -0.605357, -0.520952,
		0.676146, -0.733331, 0.071079,
		22.797470, 13.122188, 5.701018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.967615, 13.034688, 5.758400>,  <22.324167, 13.635519, 5.651262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.967615, 13.034688, 5.758400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.342140, 13.017324, 5.897790>,  <22.566854, 13.006907, 5.981424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.342140, 13.017324, 5.897790>,  <21.967615, 13.034688, 5.758400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.342140, 13.017324, 5.897790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336302, -0.396505, 0.854216,
		0.101091, -0.917006, -0.385852,
		0.936313, -0.043409, 0.348473,
		22.623034, 13.004302, 6.002332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.845984, 12.591138, 6.367267>,  <21.967615, 13.034688, 5.758400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.845984, 12.591138, 6.367267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.224598, 12.717008, 6.395700>,  <22.451767, 12.792530, 6.412759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.224598, 12.717008, 6.395700>,  <21.845984, 12.591138, 6.367267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.224598, 12.717008, 6.395700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007822, -0.242659, 0.970080,
		0.322509, -0.917658, -0.232146,
		0.946534, 0.314676, 0.071082,
		22.508558, 12.811410, 6.417024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.287071, 12.034141, 6.807022>,  <21.845984, 12.591138, 6.367267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.287071, 12.034141, 6.807022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.502768, 12.371000, 6.808003>,  <22.632185, 12.573116, 6.808592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.502768, 12.371000, 6.808003>,  <22.287071, 12.034141, 6.807022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.502768, 12.371000, 6.808003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029965, -0.022099, 0.999307,
		0.841620, -0.538791, -0.037152,
		0.539238, 0.842150, 0.002454,
		22.664539, 12.623645, 6.808739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.805138, 11.939518, 7.353621>,  <22.287071, 12.034141, 6.807022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.805138, 11.939518, 7.353621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.768366, 12.332548, 7.289008>,  <22.746302, 12.568366, 7.250241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.768366, 12.332548, 7.289008>,  <22.805138, 11.939518, 7.353621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.768366, 12.332548, 7.289008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045973, 0.166233, 0.985014,
		0.994704, 0.083127, -0.060454,
		-0.091931, 0.982577, -0.161531,
		22.740788, 12.627321, 7.240549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.363327, 12.273097, 7.783925>,  <22.805138, 11.939518, 7.353621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.363327, 12.273097, 7.783925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.078112, 12.544743, 7.714209>,  <22.906982, 12.707730, 7.672379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.078112, 12.544743, 7.714209>,  <23.363327, 12.273097, 7.783925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.078112, 12.544743, 7.714209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097636, 0.342344, 0.934488,
		0.694292, 0.649310, -0.310411,
		-0.713040, 0.679115, -0.174291,
		22.864201, 12.748477, 7.661921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.735670, 12.867177, 7.985311>,  <23.363327, 12.273097, 7.783925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.735670, 12.867177, 7.985311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.342777, 12.942227, 7.986779>,  <23.107040, 12.987257, 7.987659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.342777, 12.942227, 7.986779>,  <23.735670, 12.867177, 7.985311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.342777, 12.942227, 7.986779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027338, 0.123717, 0.991941,
		0.185659, 0.974418, -0.126649,
		-0.982234, 0.187625, 0.003670,
		23.048107, 12.998515, 7.987880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.643221, 13.455975, 8.423139>,  <23.735670, 12.867177, 7.985311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.643221, 13.455975, 8.423139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.259449, 13.344093, 8.408923>,  <23.029186, 13.276964, 8.400393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.259449, 13.344093, 8.408923>,  <23.643221, 13.455975, 8.423139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.259449, 13.344093, 8.408923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115618, 0.275325, 0.954374,
		-0.257157, 0.919762, -0.296493,
		-0.959428, -0.279704, -0.035539,
		22.971621, 13.260182, 8.398261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.208305, 14.033747, 8.623468>,  <23.643221, 13.455975, 8.423139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.208305, 14.033747, 8.623468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.989929, 13.703955, 8.683043>,  <22.858904, 13.506080, 8.718788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.989929, 13.703955, 8.683043>,  <23.208305, 14.033747, 8.623468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.989929, 13.703955, 8.683043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212274, 0.308084, 0.927375,
		-0.810488, 0.474674, -0.343210,
		-0.545939, -0.824481, 0.148937,
		22.826147, 13.456611, 8.727725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.593843, 14.212667, 8.925987>,  <23.208305, 14.033747, 8.623468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.593843, 14.212667, 8.925987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.639883, 13.825225, 9.014132>,  <22.667507, 13.592760, 9.067018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.639883, 13.825225, 9.014132>,  <22.593843, 14.212667, 8.925987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.639883, 13.825225, 9.014132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343688, 0.169303, 0.923696,
		-0.932004, -0.182051, -0.313411,
		0.115099, -0.968604, 0.220360,
		22.674414, 13.534643, 9.080239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.077000, 14.076490, 9.385496>,  <22.593843, 14.212667, 8.925987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.077000, 14.076490, 9.385496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.312366, 13.757037, 9.436017>,  <22.453587, 13.565365, 9.466330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.312366, 13.757037, 9.436017>,  <22.077000, 14.076490, 9.385496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.312366, 13.757037, 9.436017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489144, -0.227215, 0.842087,
		-0.643822, -0.557277, -0.524344,
		0.588414, -0.798634, 0.126303,
		22.488892, 13.517447, 9.473907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.665956, 13.576343, 9.616014>,  <22.077000, 14.076490, 9.385496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.665956, 13.576343, 9.616014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.022541, 13.442818, 9.738562>,  <22.236492, 13.362702, 9.812090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.022541, 13.442818, 9.738562>,  <21.665956, 13.576343, 9.616014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.022541, 13.442818, 9.738562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394152, -0.237851, 0.887734,
		-0.223468, -0.912138, -0.343609,
		0.891463, -0.333815, 0.306368,
		22.289980, 13.342674, 9.830473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.560553, 12.848471, 9.963357>,  <21.665956, 13.576343, 9.616014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.560553, 12.848471, 9.963357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.898323, 13.011375, 10.102546>,  <22.100985, 13.109118, 10.186059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.898323, 13.011375, 10.102546>,  <21.560553, 12.848471, 9.963357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.898323, 13.011375, 10.102546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305568, -0.167319, 0.937354,
		0.439970, -0.897854, -0.016842,
		0.844425, 0.407262, 0.347971,
		22.151651, 13.133554, 10.206937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.785494, 12.395083, 10.490490>,  <21.560553, 12.848471, 9.963357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.785494, 12.395083, 10.490490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.000998, 12.721128, 10.575657>,  <22.130301, 12.916754, 10.626758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.000998, 12.721128, 10.575657>,  <21.785494, 12.395083, 10.490490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.000998, 12.721128, 10.575657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013017, -0.260758, 0.965316,
		0.842359, -0.517302, -0.151097,
		0.538760, 0.815110, 0.212918,
		22.162626, 12.965660, 10.639532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.186979, 12.141928, 10.966691>,  <21.785494, 12.395083, 10.490490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.186979, 12.141928, 10.966691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.213478, 12.538526, 11.011505>,  <22.229378, 12.776484, 11.038393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.213478, 12.538526, 11.011505>,  <22.186979, 12.141928, 10.966691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.213478, 12.538526, 11.011505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039380, -0.114792, 0.992609,
		0.997026, -0.061345, -0.046650,
		0.066247, 0.991494, 0.112035,
		22.233353, 12.835974, 11.045115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.860058, 12.216185, 11.392198>,  <22.186979, 12.141928, 10.966691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.860058, 12.216185, 11.392198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.597734, 12.516271, 11.425883>,  <22.440340, 12.696322, 11.446095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.597734, 12.516271, 11.425883>,  <22.860058, 12.216185, 11.392198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.597734, 12.516271, 11.425883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090367, -0.032739, 0.995370,
		0.749499, 0.660383, -0.046325,
		-0.655809, 0.750215, 0.084215,
		22.400991, 12.741335, 11.451148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.957542, 12.452691, 12.061959>,  <22.860058, 12.216185, 11.392198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.957542, 12.452691, 12.061959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.625633, 12.657907, 11.974077>,  <22.426489, 12.781037, 11.921349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.625633, 12.657907, 11.974077>,  <22.957542, 12.452691, 12.061959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.625633, 12.657907, 11.974077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155691, 0.165247, 0.973886,
		0.535949, 0.842308, -0.057241,
		-0.829771, 0.513041, -0.219704,
		22.376701, 12.811820, 11.908166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.973129, 13.090306, 12.322304>,  <22.957542, 12.452691, 12.061959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.973129, 13.090306, 12.322304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.581936, 13.019885, 12.277488>,  <22.347219, 12.977633, 12.250598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.581936, 13.019885, 12.277488>,  <22.973129, 13.090306, 12.322304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.581936, 13.019885, 12.277488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133083, 0.112625, 0.984685,
		-0.160739, 0.977917, -0.133575,
		-0.977984, -0.176054, -0.112041,
		22.288540, 12.967069, 12.243876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.727325, 12.944567, 12.147590>,  <22.973129, 13.090306, 12.322304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.727325, 12.944567, 12.147590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.917459, 12.884822, 12.494403>,  <24.031540, 12.848975, 12.702491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.917459, 12.884822, 12.494403>,  <23.727325, 12.944567, 12.147590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.917459, 12.884822, 12.494403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382071, 0.922752, -0.050502,
		-0.792514, 0.355274, 0.495683,
		0.475335, -0.149363, 0.867034,
		24.060061, 12.840014, 12.754513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.633472, 13.479974, 12.645578>,  <23.727325, 12.944567, 12.147590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.633472, 13.479974, 12.645578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.997673, 13.332222, 12.719924>,  <24.216194, 13.243570, 12.764531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.997673, 13.332222, 12.719924>,  <23.633472, 13.479974, 12.645578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.997673, 13.332222, 12.719924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370255, 0.928403, 0.031290,
		-0.184114, 0.040327, 0.982077,
		0.910501, -0.369380, 0.185863,
		24.270824, 13.221408, 12.775682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.855824, 13.870111, 13.270178>,  <23.633472, 13.479974, 12.645578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.855824, 13.870111, 13.270178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.190432, 13.688149, 13.148003>,  <24.391197, 13.578972, 13.074697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.190432, 13.688149, 13.148003>,  <23.855824, 13.870111, 13.270178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.190432, 13.688149, 13.148003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536629, 0.792815, 0.288918,
		0.110726, -0.405593, 0.907323,
		0.836522, -0.454905, -0.305438,
		24.441389, 13.551678, 13.056371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.964539, 14.547484, 12.977300>,  <23.855824, 13.870111, 13.270178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.964539, 14.547484, 12.977300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.096611, 14.481486, 13.349054>,  <24.175854, 14.441887, 13.572107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.096611, 14.481486, 13.349054>,  <23.964539, 14.547484, 12.977300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.096611, 14.481486, 13.349054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526761, 0.784818, 0.326471,
		-0.783265, -0.597358, 0.172218,
		0.330180, -0.164996, 0.929385,
		24.195665, 14.431988, 13.627870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.352657, 14.606898, 13.437378>,  <23.964539, 14.547484, 12.977300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.352657, 14.606898, 13.437378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.696249, 14.681703, 13.628031>,  <23.902405, 14.726585, 13.742423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.696249, 14.681703, 13.628031>,  <23.352657, 14.606898, 13.437378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.696249, 14.681703, 13.628031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416426, 0.796793, 0.437847,
		-0.297895, -0.574585, 0.762306,
		0.858981, 0.187011, 0.476633,
		23.953943, 14.737806, 13.771021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.534826, 15.218080, 13.275823>,  <23.352657, 14.606898, 13.437378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.534826, 15.218080, 13.275823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.672266, 15.593287, 13.257670>,  <23.754730, 15.818412, 13.246779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.672266, 15.593287, 13.257670>,  <23.534826, 15.218080, 13.275823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.672266, 15.593287, 13.257670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285410, 0.058265, -0.956632,
		-0.894696, 0.341649, 0.287740,
		0.343598, 0.938020, -0.045380,
		23.775345, 15.874693, 13.244057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.013594, 15.597132, 12.954314>,  <23.534826, 15.218080, 13.275823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.013594, 15.597132, 12.954314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.329468, 15.834940, 12.893723>,  <23.518991, 15.977625, 12.857368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.329468, 15.834940, 12.893723>,  <23.013594, 15.597132, 12.954314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.329468, 15.834940, 12.893723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290103, 0.144287, -0.946056,
		-0.540592, 0.791029, 0.286414,
		0.789684, 0.594520, -0.151480,
		23.566372, 16.013296, 12.848279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.638945, 16.166451, 12.737359>,  <23.013594, 15.597132, 12.954314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.638945, 16.166451, 12.737359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.021341, 16.183023, 12.621180>,  <23.250780, 16.192966, 12.551472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.021341, 16.183023, 12.621180>,  <22.638945, 16.166451, 12.737359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.021341, 16.183023, 12.621180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293389, 0.134020, -0.946552,
		-0.000292, 0.990112, 0.140278,
		0.955993, 0.041432, -0.290449,
		23.308140, 16.195454, 12.534045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.639406, 16.636929, 12.236485>,  <22.638945, 16.166451, 12.737359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.639406, 16.636929, 12.236485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.982920, 16.446920, 12.159707>,  <23.189028, 16.332914, 12.113640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.982920, 16.446920, 12.159707>,  <22.639406, 16.636929, 12.236485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.982920, 16.446920, 12.159707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132893, 0.155290, -0.978889,
		0.494801, 0.866163, 0.070234,
		0.858785, -0.475021, -0.191945,
		23.240555, 16.304415, 12.102123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.003794, 17.078369, 11.680346>,  <22.639406, 16.636929, 12.236485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.003794, 17.078369, 11.680346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.117910, 16.695015, 11.676291>,  <23.186380, 16.465002, 11.673860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.117910, 16.695015, 11.676291>,  <23.003794, 17.078369, 11.680346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.117910, 16.695015, 11.676291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009276, 0.007812, -0.999927,
		0.958395, 0.285366, -0.006661,
		0.285293, -0.958387, -0.010134,
		23.203499, 16.407499, 11.673251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.495306, 17.001692, 11.167145>,  <23.003794, 17.078369, 11.680346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.495306, 17.001692, 11.167145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.327423, 16.643732, 11.227811>,  <23.226694, 16.428957, 11.264211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.327423, 16.643732, 11.227811>,  <23.495306, 17.001692, 11.167145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.327423, 16.643732, 11.227811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106691, -0.117296, -0.987349,
		0.901367, -0.430579, -0.046248,
		-0.419707, -0.894899, 0.151666,
		23.201511, 16.375263, 11.273311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.742342, 16.602964, 10.551956>,  <23.495306, 17.001692, 11.167145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.742342, 16.602964, 10.551956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.463127, 16.357992, 10.700374>,  <23.295599, 16.211008, 10.789424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.463127, 16.357992, 10.700374>,  <23.742342, 16.602964, 10.551956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.463127, 16.357992, 10.700374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394616, -0.103375, -0.913012,
		0.597515, -0.783735, -0.169517,
		-0.698036, -0.612432, 0.371043,
		23.253716, 16.174263, 10.811687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.803944, 15.929320, 10.332549>,  <23.742342, 16.602964, 10.551956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.803944, 15.929320, 10.332549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.416012, 15.941618, 10.429285>,  <23.183252, 15.948997, 10.487327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.416012, 15.941618, 10.429285>,  <23.803944, 15.929320, 10.332549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.416012, 15.941618, 10.429285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243739, -0.141935, -0.959399,
		0.004832, -0.989399, 0.145146,
		-0.969829, 0.030742, 0.241840,
		23.125063, 15.950841, 10.501837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.484177, 15.423197, 9.782575>,  <23.803944, 15.929320, 10.332549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.484177, 15.423197, 9.782575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.176975, 15.613575, 9.953990>,  <22.992655, 15.727802, 10.056839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.176975, 15.613575, 9.953990>,  <23.484177, 15.423197, 9.782575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.176975, 15.613575, 9.953990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539343, -0.119806, -0.833520,
		-0.345370, -0.871275, 0.348710,
		-0.768003, 0.475947, 0.428539,
		22.946575, 15.756359, 10.082552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.821749, 14.987026, 9.652476>,  <23.484177, 15.423197, 9.782575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.821749, 14.987026, 9.652476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.667810, 15.352930, 9.701644>,  <22.575447, 15.572473, 9.731144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.667810, 15.352930, 9.701644>,  <22.821749, 14.987026, 9.652476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.667810, 15.352930, 9.701644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513498, -0.101540, -0.852062,
		-0.766950, -0.391032, 0.508804,
		-0.384847, 0.914759, 0.122918,
		22.552357, 15.627357, 9.738520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.056206, 14.958458, 9.608665>,  <22.821749, 14.987026, 9.652476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.056206, 14.958458, 9.608665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.143150, 15.342816, 9.540042>,  <22.195316, 15.573431, 9.498868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.143150, 15.342816, 9.540042>,  <22.056206, 14.958458, 9.608665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.143150, 15.342816, 9.540042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697379, 0.029901, -0.716078,
		-0.682947, 0.275290, 0.676608,
		0.217360, 0.960896, -0.171560,
		22.208359, 15.631085, 9.488574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.459644, 15.393719, 9.588593>,  <22.056206, 14.958458, 9.608665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.459644, 15.393719, 9.588593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.714870, 15.604876, 9.364377>,  <21.868006, 15.731570, 9.229848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.714870, 15.604876, 9.364377>,  <21.459644, 15.393719, 9.588593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.714870, 15.604876, 9.364377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666913, 0.015045, -0.744983,
		-0.384838, 0.849178, 0.361658,
		0.638064, 0.527893, -0.560538,
		21.906290, 15.763244, 9.196216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.088535, 15.581656, 9.049845>,  <21.459644, 15.393719, 9.588593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.088535, 15.581656, 9.049845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.451317, 15.663446, 8.902536>,  <21.668985, 15.712521, 8.814151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.451317, 15.663446, 8.902536>,  <21.088535, 15.581656, 9.049845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.451317, 15.663446, 8.902536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367557, -0.042896, -0.929011,
		-0.205758, 0.977931, 0.036253,
		0.906954, 0.204477, -0.368272,
		21.723404, 15.724790, 8.792055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.966829, 16.015574, 8.556183>,  <21.088535, 15.581656, 9.049845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.966829, 16.015574, 8.556183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.340021, 15.916054, 8.452147>,  <21.563936, 15.856341, 8.389726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.340021, 15.916054, 8.452147>,  <20.966829, 16.015574, 8.556183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.340021, 15.916054, 8.452147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273815, -0.021616, -0.961539,
		0.233610, 0.968314, -0.088292,
		0.932980, -0.248801, -0.260089,
		21.619915, 15.841413, 8.374121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.102388, 16.362413, 7.970460>,  <20.966829, 16.015574, 8.556183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.102388, 16.362413, 7.970460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.347281, 16.047062, 7.946354>,  <21.494217, 15.857851, 7.931891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.347281, 16.047062, 7.946354>,  <21.102388, 16.362413, 7.970460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.347281, 16.047062, 7.946354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140249, -0.033271, -0.989557,
		0.778140, 0.614290, -0.130940,
		0.612232, -0.788378, -0.060264,
		21.530951, 15.810549, 7.928275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.694780, 16.434746, 7.485574>,  <21.102388, 16.362413, 7.970460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.694780, 16.434746, 7.485574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.681622, 16.035654, 7.509067>,  <21.673727, 15.796199, 7.523162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.681622, 16.035654, 7.509067>,  <21.694780, 16.434746, 7.485574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.681622, 16.035654, 7.509067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274994, -0.047460, -0.960274,
		0.960883, -0.047742, -0.272809,
		-0.032898, -0.997732, 0.058732,
		21.671753, 15.736335, 7.526686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.895529, 16.274378, 6.820428>,  <21.694780, 16.434746, 7.485574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.895529, 16.274378, 6.820428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.771330, 15.906993, 6.918421>,  <21.696810, 15.686562, 6.977217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.771330, 15.906993, 6.918421>,  <21.895529, 16.274378, 6.820428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.771330, 15.906993, 6.918421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129676, -0.214384, -0.968103,
		0.941687, -0.332363, -0.052536,
		-0.310498, -0.918463, 0.244982,
		21.678181, 15.631454, 6.991915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.742014, 18.879772, 15.821740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.460119, 18.662453, 16.004246>,  <17.290983, 18.532061, 16.113749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.460119, 18.662453, 16.004246>,  <17.742014, 18.879772, 15.821740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.460119, 18.662453, 16.004246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269761, -0.800000, -0.535938,
		0.656185, -0.254612, 0.710348,
		-0.704735, -0.543299, 0.456263,
		17.248699, 18.499464, 16.141125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.104984, 18.390167, 16.142771>,  <17.742014, 18.879772, 15.821740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.104984, 18.390167, 16.142771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.728731, 18.257107, 16.115778>,  <17.502979, 18.177271, 16.099583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.728731, 18.257107, 16.115778>,  <18.104984, 18.390167, 16.142771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.728731, 18.257107, 16.115778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333908, -0.871163, -0.359974,
		0.060959, -0.361136, 0.930519,
		-0.940633, -0.332651, -0.067481,
		17.446541, 18.157312, 16.095533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.180014, 17.642763, 16.201498>,  <18.104984, 18.390167, 16.142771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.180014, 17.642763, 16.201498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.807341, 17.699976, 16.067928>,  <17.583736, 17.734304, 15.987786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.807341, 17.699976, 16.067928>,  <18.180014, 17.642763, 16.201498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.807341, 17.699976, 16.067928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039024, -0.874497, -0.483458,
		-0.361168, -0.463462, 0.809173,
		-0.931684, 0.143032, -0.333926,
		17.527836, 17.742886, 15.967751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.890432, 17.053871, 16.374462>,  <18.180014, 17.642763, 16.201498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.890432, 17.053871, 16.374462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.678104, 17.175488, 16.058035>,  <17.550709, 17.248457, 15.868178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.678104, 17.175488, 16.058035>,  <17.890432, 17.053871, 16.374462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.678104, 17.175488, 16.058035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001167, -0.933692, -0.358075,
		-0.847484, -0.189150, 0.495977,
		-0.530819, 0.304042, -0.791069,
		17.518858, 17.266701, 15.820714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.360428, 16.526745, 16.238997>,  <17.890432, 17.053871, 16.374462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.360428, 16.526745, 16.238997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.395533, 16.735703, 15.899727>,  <17.416595, 16.861076, 15.696165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.395533, 16.735703, 15.899727>,  <17.360428, 16.526745, 16.238997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.395533, 16.735703, 15.899727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102554, -0.842199, -0.529324,
		-0.990848, 0.133439, -0.020341,
		0.087764, 0.522394, -0.848176,
		17.421862, 16.892420, 15.645274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.873716, 16.339144, 15.837363>,  <17.360428, 16.526745, 16.238997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.873716, 16.339144, 15.837363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.142725, 16.473368, 15.573509>,  <17.304131, 16.553902, 15.415196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.142725, 16.473368, 15.573509>,  <16.873716, 16.339144, 15.837363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.142725, 16.473368, 15.573509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235517, -0.747930, -0.620591,
		-0.701604, 0.572715, -0.423968,
		0.672520, 0.335557, -0.659635,
		17.344481, 16.574036, 15.375619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.530409, 16.181232, 15.190858>,  <16.873716, 16.339144, 15.837363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.530409, 16.181232, 15.190858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.904346, 16.255424, 15.069754>,  <17.128710, 16.299940, 14.997091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.904346, 16.255424, 15.069754>,  <16.530409, 16.181232, 15.190858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.904346, 16.255424, 15.069754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035541, -0.799542, -0.599558,
		-0.353276, 0.571253, -0.740855,
		0.934844, 0.185478, -0.302761,
		17.184799, 16.311068, 14.978925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.531218, 16.342146, 14.387156>,  <16.530409, 16.181232, 15.190858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.531218, 16.342146, 14.387156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.900522, 16.223803, 14.485181>,  <17.122105, 16.152796, 14.543996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.900522, 16.223803, 14.485181>,  <16.531218, 16.342146, 14.387156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.900522, 16.223803, 14.485181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009484, -0.655253, -0.755350,
		0.384055, 0.695061, -0.607776,
		0.923262, -0.295860, 0.245062,
		17.177500, 16.135044, 14.558700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.801796, 16.216722, 13.765693>,  <16.531218, 16.342146, 14.387156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.801796, 16.216722, 13.765693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.061607, 16.030924, 14.006476>,  <17.217495, 15.919445, 14.150947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.061607, 16.030924, 14.006476>,  <16.801796, 16.216722, 13.765693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.061607, 16.030924, 14.006476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067434, -0.753390, -0.654107,
		0.757339, 0.465455, -0.458027,
		0.649531, -0.464494, 0.601959,
		17.256466, 15.891576, 14.187064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.464899, 15.947306, 13.361324>,  <16.801796, 16.216722, 13.765693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.464899, 15.947306, 13.361324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.432226, 15.725358, 13.692492>,  <17.412622, 15.592190, 13.891192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.432226, 15.725358, 13.692492>,  <17.464899, 15.947306, 13.361324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.432226, 15.725358, 13.692492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171426, -0.826136, -0.536761,
		0.981805, 0.098083, 0.162600,
		-0.081682, -0.554869, 0.827919,
		17.407721, 15.558897, 13.940867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.961876, 15.377752, 13.206878>,  <17.464899, 15.947306, 13.361324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.961876, 15.377752, 13.206878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.730787, 15.242433, 13.504008>,  <17.592134, 15.161241, 13.682287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.730787, 15.242433, 13.504008>,  <17.961876, 15.377752, 13.206878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.730787, 15.242433, 13.504008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115326, -0.867105, -0.484592,
		0.808046, -0.365626, 0.461930,
		-0.577721, -0.338300, 0.742827,
		17.557470, 15.140943, 13.726856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.064199, 14.759929, 13.203409>,  <17.961876, 15.377752, 13.206878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.064199, 14.759929, 13.203409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.749722, 14.740762, 13.449857>,  <17.561035, 14.729261, 13.597725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.749722, 14.740762, 13.449857>,  <18.064199, 14.759929, 13.203409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.749722, 14.740762, 13.449857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157265, -0.948652, -0.274457,
		0.597634, -0.312670, 0.738289,
		-0.786194, -0.047917, 0.616119,
		17.513863, 14.726387, 13.634692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.042740, 14.218483, 13.600378>,  <18.064199, 14.759929, 13.203409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.042740, 14.218483, 13.600378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.649704, 14.287386, 13.572536>,  <17.413883, 14.328728, 13.555830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.649704, 14.287386, 13.572536>,  <18.042740, 14.218483, 13.600378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.649704, 14.287386, 13.572536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138369, -0.928515, -0.344547,
		-0.123980, -0.328918, 0.936185,
		-0.982590, 0.172256, -0.069606,
		17.354927, 14.339063, 13.551654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.626896, 13.705826, 13.926656>,  <18.042740, 14.218483, 13.600378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.626896, 13.705826, 13.926656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.422266, 13.876437, 13.628297>,  <17.299488, 13.978804, 13.449282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.422266, 13.876437, 13.628297>,  <17.626896, 13.705826, 13.926656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.422266, 13.876437, 13.628297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221235, -0.904210, -0.365320,
		-0.830267, -0.021871, 0.556936,
		-0.511577, 0.426527, -0.745897,
		17.268793, 14.004395, 13.404528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.158964, 13.414598, 13.571600>,  <17.626896, 13.705826, 13.926656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.158964, 13.414598, 13.571600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.494864, 13.254591, 13.718464>,  <18.696404, 13.158587, 13.806582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.494864, 13.254591, 13.718464>,  <18.158964, 13.414598, 13.571600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.494864, 13.254591, 13.718464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320763, 0.180121, 0.929875,
		-0.438099, -0.898634, 0.022946,
		0.839751, -0.400017, 0.367159,
		18.746788, 13.134586, 13.828611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.961800, 13.085241, 14.049320>,  <18.158964, 13.414598, 13.571600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.961800, 13.085241, 14.049320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.342485, 13.155645, 14.149923>,  <18.570898, 13.197887, 14.210285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.342485, 13.155645, 14.149923>,  <17.961800, 13.085241, 14.049320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.342485, 13.155645, 14.149923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280327, 0.164401, 0.945722,
		0.125103, -0.970564, 0.205802,
		0.951717, 0.176005, 0.251508,
		18.628000, 13.208448, 14.225375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.023716, 12.728241, 14.690091>,  <17.961800, 13.085241, 14.049320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.023716, 12.728241, 14.690091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.330496, 12.984814, 14.682604>,  <18.514565, 13.138758, 14.678112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.330496, 12.984814, 14.682604>,  <18.023716, 12.728241, 14.690091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.330496, 12.984814, 14.682604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204052, 0.271429, 0.940579,
		0.608398, -0.717559, 0.339058,
		0.766951, 0.641432, -0.018718,
		18.560581, 13.177243, 14.676989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.446833, 12.618436, 15.307364>,  <18.023716, 12.728241, 14.690091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.446833, 12.618436, 15.307364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.498478, 12.997500, 15.190562>,  <18.529465, 13.224939, 15.120481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.498478, 12.997500, 15.190562>,  <18.446833, 12.618436, 15.307364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.498478, 12.997500, 15.190562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072875, 0.302742, 0.950283,
		0.988948, -0.101415, 0.108149,
		0.129114, 0.947662, -0.292006,
		18.537212, 13.281799, 15.102961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.621183, 12.875507, 15.849348>,  <18.446833, 12.618436, 15.307364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.621183, 12.875507, 15.849348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.541464, 13.204810, 15.636734>,  <18.493633, 13.402391, 15.509166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.541464, 13.204810, 15.636734>,  <18.621183, 12.875507, 15.849348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.541464, 13.204810, 15.636734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361406, 0.442430, 0.820756,
		0.910860, 0.355674, 0.209355,
		-0.199297, 0.823257, -0.531535,
		18.481674, 13.451787, 15.477274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.906134, 13.387762, 16.252670>,  <18.621183, 12.875507, 15.849348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.906134, 13.387762, 16.252670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.641279, 13.573139, 16.017113>,  <18.482367, 13.684365, 15.875778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.641279, 13.573139, 16.017113>,  <18.906134, 13.387762, 16.252670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.641279, 13.573139, 16.017113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367789, 0.483713, 0.794200,
		0.652923, 0.742456, -0.149834,
		-0.662135, 0.463444, -0.588894,
		18.442638, 13.712173, 15.840445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.875895, 14.106078, 16.485388>,  <18.906134, 13.387762, 16.252670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.875895, 14.106078, 16.485388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.533972, 14.038692, 16.289053>,  <18.328817, 13.998261, 16.171251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.533972, 14.038692, 16.289053>,  <18.875895, 14.106078, 16.485388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.533972, 14.038692, 16.289053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490297, 0.572083, 0.657518,
		0.170032, 0.802709, -0.571619,
		-0.854809, -0.168464, -0.490837,
		18.277529, 13.988153, 16.141802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.518021, 14.764082, 16.139814>,  <18.875895, 14.106078, 16.485388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.518021, 14.764082, 16.139814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.228699, 14.491017, 16.181389>,  <18.055105, 14.327179, 16.206333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.228699, 14.491017, 16.181389>,  <18.518021, 14.764082, 16.139814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.228699, 14.491017, 16.181389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536729, 0.650500, 0.537375,
		-0.434456, 0.332901, -0.836914,
		-0.723305, -0.682662, 0.103937,
		18.011707, 14.286219, 16.212570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.046373, 15.139723, 16.043808>,  <18.518021, 14.764082, 16.139814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.046373, 15.139723, 16.043808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.899038, 14.814961, 16.224977>,  <17.810637, 14.620105, 16.333679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.899038, 14.814961, 16.224977>,  <18.046373, 15.139723, 16.043808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.899038, 14.814961, 16.224977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513734, 0.583792, 0.628701,
		-0.774858, -0.001109, -0.632134,
		-0.368338, -0.811902, 0.452926,
		17.788536, 14.571391, 16.360855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.375546, 15.234895, 16.153524>,  <18.046373, 15.139723, 16.043808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.375546, 15.234895, 16.153524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.435043, 14.960389, 16.438316>,  <17.470741, 14.795686, 16.609192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.435043, 14.960389, 16.438316>,  <17.375546, 15.234895, 16.153524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.435043, 14.960389, 16.438316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452610, 0.592900, 0.666043,
		-0.879215, -0.421319, -0.222420,
		0.148743, -0.686265, 0.711980,
		17.479666, 14.754510, 16.651911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.796440, 15.205177, 16.560932>,  <17.375546, 15.234895, 16.153524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.796440, 15.205177, 16.560932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.056143, 15.013027, 16.796799>,  <17.211966, 14.897738, 16.938318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.056143, 15.013027, 16.796799>,  <16.796440, 15.205177, 16.560932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.056143, 15.013027, 16.796799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386455, 0.459390, 0.799758,
		-0.655070, -0.747128, 0.112619,
		0.649258, -0.480375, 0.589664,
		17.250919, 14.868915, 16.973698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.351488, 14.844812, 17.094860>,  <16.796440, 15.205177, 16.560932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.351488, 14.844812, 17.094860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.720697, 14.852237, 17.248579>,  <16.942223, 14.856691, 17.340811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.720697, 14.852237, 17.248579>,  <16.351488, 14.844812, 17.094860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.720697, 14.852237, 17.248579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351425, 0.447268, 0.822467,
		-0.156619, -0.894208, 0.419361,
		0.923023, 0.018560, 0.384298,
		16.997604, 14.857805, 17.363869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.325186, 14.739232, 17.838272>,  <16.351488, 14.844812, 17.094860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.325186, 14.739232, 17.838272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.697062, 14.875351, 17.781885>,  <16.920187, 14.957022, 17.748053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.697062, 14.875351, 17.781885>,  <16.325186, 14.739232, 17.838272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.697062, 14.875351, 17.781885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035342, 0.463357, 0.885467,
		0.366638, -0.818229, 0.442806,
		0.929692, 0.340295, -0.140966,
		16.975969, 14.977440, 17.739595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.598280, 14.630173, 18.477007>,  <16.325186, 14.739232, 17.838272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.598280, 14.630173, 18.477007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.808907, 14.922660, 18.303549>,  <16.935282, 15.098152, 18.199474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.808907, 14.922660, 18.303549>,  <16.598280, 14.630173, 18.477007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.808907, 14.922660, 18.303549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038940, 0.530302, 0.846914,
		0.849243, -0.429069, 0.307712,
		0.526565, 0.731218, -0.433647,
		16.966875, 15.142025, 18.173454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.708750, 14.468888, 19.228018>,  <16.598280, 14.630173, 18.477007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.708750, 14.468888, 19.228018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.482119, 14.349518, 19.535246>,  <16.346140, 14.277895, 19.719582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.482119, 14.349518, 19.535246>,  <16.708750, 14.468888, 19.228018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.482119, 14.349518, 19.535246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366525, -0.743553, -0.559275,
		0.738003, -0.598390, 0.311900,
		-0.566578, -0.298427, 0.768069,
		16.312145, 14.259990, 19.765667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.835281, 13.787405, 19.311687>,  <16.708750, 14.468888, 19.228018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.835281, 13.787405, 19.311687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.481424, 13.848989, 19.487734>,  <16.269110, 13.885941, 19.593361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.481424, 13.848989, 19.487734>,  <16.835281, 13.787405, 19.311687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.481424, 13.848989, 19.487734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389621, -0.762594, -0.516378,
		0.256128, -0.628289, 0.734610,
		-0.884643, 0.153961, 0.440116,
		16.216032, 13.895178, 19.619768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.682289, 13.133154, 19.574816>,  <16.835281, 13.787405, 19.311687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.682289, 13.133154, 19.574816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.334417, 13.329572, 19.554697>,  <16.125694, 13.447423, 19.542625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.334417, 13.329572, 19.554697>,  <16.682289, 13.133154, 19.574816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.334417, 13.329572, 19.554697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440091, -0.817490, -0.371525,
		-0.223552, -0.300973, 0.927059,
		-0.869681, 0.491045, -0.050296,
		16.073513, 13.476886, 19.539608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.172422, 12.593185, 19.824770>,  <16.682289, 13.133154, 19.574816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.172422, 12.593185, 19.824770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980728, 12.879105, 19.621046>,  <15.865711, 13.050656, 19.498812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980728, 12.879105, 19.621046>,  <16.172422, 12.593185, 19.824770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.980728, 12.879105, 19.621046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478117, -0.699241, -0.531476,
		-0.736029, -0.011192, 0.676858,
		-0.479235, 0.714799, -0.509310,
		15.836957, 13.093544, 19.468254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.520489, 12.426049, 19.863804>,  <16.172422, 12.593185, 19.824770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.520489, 12.426049, 19.863804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.494459, 12.663125, 19.542685>,  <15.478842, 12.805370, 19.350014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.494459, 12.663125, 19.542685>,  <15.520489, 12.426049, 19.863804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.494459, 12.663125, 19.542685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459823, -0.731810, -0.503008,
		-0.885623, 0.336413, 0.320153,
		-0.065073, 0.592689, -0.802798,
		15.474937, 12.840932, 19.301846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.885110, 12.452415, 19.603226>,  <15.520489, 12.426049, 19.863804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.885110, 12.452415, 19.603226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.069738, 12.606671, 19.283669>,  <15.180515, 12.699224, 19.091934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.069738, 12.606671, 19.283669>,  <14.885110, 12.452415, 19.603226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.069738, 12.606671, 19.283669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513838, -0.617883, -0.595139,
		-0.723133, 0.685202, -0.087041,
		0.461572, 0.385639, -0.798895,
		15.208210, 12.722363, 19.044001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.381069, 12.667808, 19.184212>,  <14.885110, 12.452415, 19.603226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.381069, 12.667808, 19.184212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.703351, 12.576305, 18.965666>,  <14.896720, 12.521404, 18.834539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.703351, 12.576305, 18.965666>,  <14.381069, 12.667808, 19.184212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.703351, 12.576305, 18.965666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518784, -0.717672, -0.464553,
		-0.285840, 0.657737, -0.696906,
		0.805704, -0.228756, -0.546363,
		14.945062, 12.507679, 18.801758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.178074, 12.608200, 18.495602>,  <14.381069, 12.667808, 19.184212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.178074, 12.608200, 18.495602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.530437, 12.418911, 18.492367>,  <14.741854, 12.305338, 18.490425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.530437, 12.418911, 18.492367>,  <14.178074, 12.608200, 18.495602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.530437, 12.418911, 18.492367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366918, -0.672029, -0.643233,
		0.298957, 0.569595, -0.765628,
		0.880906, -0.473222, -0.008087,
		14.794708, 12.276944, 18.489941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.328955, 12.539334, 17.763287>,  <14.178074, 12.608200, 18.495602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.328955, 12.539334, 17.763287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.586101, 12.291483, 17.943413>,  <14.740388, 12.142772, 18.051489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.586101, 12.291483, 17.943413>,  <14.328955, 12.539334, 17.763287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.586101, 12.291483, 17.943413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211001, -0.708403, -0.673531,
		0.736346, 0.337971, -0.586149,
		0.642864, -0.619629, 0.450318,
		14.778959, 12.105595, 18.078508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.722609, 12.264209, 17.265633>,  <14.328955, 12.539334, 17.763287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.722609, 12.264209, 17.265633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.729825, 12.016866, 17.579908>,  <14.734155, 11.868460, 17.768475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.729825, 12.016866, 17.579908>,  <14.722609, 12.264209, 17.265633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.729825, 12.016866, 17.579908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297261, -0.753602, -0.586277,
		0.954626, -0.222978, -0.197409,
		0.018041, -0.618357, 0.785691,
		14.735237, 11.831359, 17.815615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.031537, 11.741055, 17.100685>,  <14.722609, 12.264209, 17.265633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.031537, 11.741055, 17.100685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.805062, 11.592238, 17.394901>,  <14.669177, 11.502949, 17.571430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.805062, 11.592238, 17.394901>,  <15.031537, 11.741055, 17.100685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.805062, 11.592238, 17.394901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231904, -0.784403, -0.575267,
		0.790982, -0.496284, 0.357841,
		-0.566188, -0.372041, 0.735539,
		14.635206, 11.480626, 17.615562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.207857, 11.002366, 17.199881>,  <15.031537, 11.741055, 17.100685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.207857, 11.002366, 17.199881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.864378, 11.030232, 17.402969>,  <14.658290, 11.046952, 17.524822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.864378, 11.030232, 17.402969>,  <15.207857, 11.002366, 17.199881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.864378, 11.030232, 17.402969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253436, -0.918819, -0.302557,
		0.445429, -0.388481, 0.806644,
		-0.858698, 0.069665, 0.507724,
		14.606769, 11.051132, 17.555286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<15.635233, 17.623581, 24.241428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.032557, 17.669773, 24.241884>,  <16.270950, 17.697489, 24.242157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.032557, 17.669773, 24.241884>,  <15.635233, 17.623581, 24.241428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.032557, 17.669773, 24.241884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083758, -0.713590, -0.695539,
		-0.079507, 0.690981, -0.718488,
		0.993309, 0.115479, 0.001140,
		16.330549, 17.704416, 24.242226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.750959, 17.658957, 23.641344>,  <15.635233, 17.623581, 24.241428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.750959, 17.658957, 23.641344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.102352, 17.546780, 23.796068>,  <16.313189, 17.479473, 23.888903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.102352, 17.546780, 23.796068>,  <15.750959, 17.658957, 23.641344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.102352, 17.546780, 23.796068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079519, -0.712492, -0.697160,
		0.471111, 0.643202, -0.603611,
		0.878483, -0.280441, 0.386809,
		16.365896, 17.462646, 23.912111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.335672, 17.787912, 23.100193>,  <15.750959, 17.658957, 23.641344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.335672, 17.787912, 23.100193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.394691, 17.495979, 23.367197>,  <16.430103, 17.320820, 23.527399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.394691, 17.495979, 23.367197>,  <16.335672, 17.787912, 23.100193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.394691, 17.495979, 23.367197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165261, -0.647218, -0.744176,
		0.975150, 0.220115, 0.025117,
		0.147548, -0.729834, 0.667511,
		16.438955, 17.277029, 23.567450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.026472, 17.535799, 22.962202>,  <16.335672, 17.787912, 23.100193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.026472, 17.535799, 22.962202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.818714, 17.265348, 23.171232>,  <16.694059, 17.103079, 23.296650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.818714, 17.265348, 23.171232>,  <17.026472, 17.535799, 22.962202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.818714, 17.265348, 23.171232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068988, -0.642711, -0.762996,
		0.851745, -0.360245, 0.380466,
		-0.519395, -0.676125, 0.522573,
		16.662895, 17.062511, 23.328005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.324345, 17.017529, 22.747736>,  <17.026472, 17.535799, 22.962202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.324345, 17.017529, 22.747736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.993523, 16.864090, 22.912094>,  <16.795031, 16.772026, 23.010710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.993523, 16.864090, 22.912094>,  <17.324345, 17.017529, 22.747736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.993523, 16.864090, 22.912094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040762, -0.688121, -0.724451,
		0.560644, -0.615908, 0.553476,
		-0.827053, -0.383598, 0.410896,
		16.745407, 16.749010, 23.035362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.550890, 16.236229, 22.773273>,  <17.324345, 17.017529, 22.747736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.550890, 16.236229, 22.773273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.153013, 16.275158, 22.786648>,  <16.914288, 16.298515, 22.794672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.153013, 16.275158, 22.786648>,  <17.550890, 16.236229, 22.773273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.153013, 16.275158, 22.786648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086523, -0.615097, -0.783690,
		-0.055703, -0.782422, 0.620252,
		-0.994691, 0.097320, 0.033435,
		16.854607, 16.304354, 22.796679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.266605, 15.540892, 22.782272>,  <17.550890, 16.236229, 22.773273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.266605, 15.540892, 22.782272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.981907, 15.795640, 22.663738>,  <16.811089, 15.948489, 22.592619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.981907, 15.795640, 22.663738>,  <17.266605, 15.540892, 22.782272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.981907, 15.795640, 22.663738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248853, -0.623117, -0.741483,
		-0.656883, -0.454001, 0.601987,
		-0.711743, 0.636873, -0.296336,
		16.768383, 15.986702, 22.574839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.684317, 15.174289, 22.667437>,  <17.266605, 15.540892, 22.782272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.684317, 15.174289, 22.667437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.593462, 15.510797, 22.471203>,  <16.538948, 15.712702, 22.353462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.593462, 15.510797, 22.471203>,  <16.684317, 15.174289, 22.667437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.593462, 15.510797, 22.471203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316600, -0.540175, -0.779728,
		-0.920963, -0.021787, 0.389040,
		-0.227138, 0.841271, -0.490583,
		16.525320, 15.763178, 22.324028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.163185, 15.080056, 22.341541>,  <16.684317, 15.174289, 22.667437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.163185, 15.080056, 22.341541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.283701, 15.391341, 22.121138>,  <16.356010, 15.578113, 21.988895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.283701, 15.391341, 22.121138>,  <16.163185, 15.080056, 22.341541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.283701, 15.391341, 22.121138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278163, -0.480993, -0.831427,
		-0.912058, 0.403771, 0.071552,
		0.301290, 0.778213, -0.551007,
		16.374088, 15.624805, 21.955835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.625960, 15.107290, 21.889828>,  <16.163185, 15.080056, 22.341541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.625960, 15.107290, 21.889828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.926398, 15.300296, 21.709589>,  <16.106661, 15.416100, 21.601446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.926398, 15.300296, 21.709589>,  <15.625960, 15.107290, 21.889828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.926398, 15.300296, 21.709589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154801, -0.534776, -0.830694,
		-0.641789, 0.693683, -0.326974,
		0.751095, 0.482514, -0.450596,
		16.151728, 15.445050, 21.574409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.415426, 15.186197, 21.209845>,  <15.625960, 15.107290, 21.889828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.415426, 15.186197, 21.209845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.808925, 15.257018, 21.197884>,  <16.045025, 15.299511, 21.190708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.808925, 15.257018, 21.197884>,  <15.415426, 15.186197, 21.209845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.808925, 15.257018, 21.197884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069856, -0.530778, -0.844627,
		-0.165414, 0.828811, -0.534519,
		0.983747, 0.177052, -0.029901,
		16.104050, 15.310134, 21.188913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.524631, 15.369983, 20.454126>,  <15.415426, 15.186197, 21.209845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.524631, 15.369983, 20.454126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.876972, 15.252431, 20.602573>,  <16.088377, 15.181900, 20.691643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.876972, 15.252431, 20.602573>,  <15.524631, 15.369983, 20.454126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.876972, 15.252431, 20.602573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111885, -0.632513, -0.766427,
		0.459974, 0.716633, -0.524271,
		0.880855, -0.293878, 0.371120,
		16.141230, 15.164268, 20.713909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.909204, 15.366680, 19.827259>,  <15.524631, 15.369983, 20.454126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.909204, 15.366680, 19.827259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.119762, 15.157872, 20.095707>,  <16.246098, 15.032587, 20.256775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.119762, 15.157872, 20.095707>,  <15.909204, 15.366680, 19.827259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.119762, 15.157872, 20.095707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123058, -0.734242, -0.667642,
		0.841286, 0.434031, -0.322264,
		0.526397, -0.522021, 0.671118,
		16.277681, 15.001266, 20.297043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.547695, 15.127892, 19.427549>,  <15.909204, 15.366680, 19.827259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.547695, 15.127892, 19.427549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.448677, 14.894585, 19.737005>,  <16.389267, 14.754600, 19.922678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.448677, 14.894585, 19.737005>,  <16.547695, 15.127892, 19.427549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.448677, 14.894585, 19.737005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159680, -0.763012, -0.626350,
		0.955628, -0.278584, 0.095742,
		-0.247544, -0.583269, 0.773640,
		16.374414, 14.719604, 19.969097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.244772, 14.979650, 19.168898>,  <16.547695, 15.127892, 19.427549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.244772, 14.979650, 19.168898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.229288, 15.241826, 18.867197>,  <17.219997, 15.399132, 18.686176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.229288, 15.241826, 18.867197>,  <17.244772, 14.979650, 19.168898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.229288, 15.241826, 18.867197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219927, 0.730722, 0.646280,
		0.974748, 0.190896, 0.115864,
		-0.038708, 0.655442, -0.754253,
		17.217676, 15.438458, 18.640921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.656967, 15.525610, 19.424416>,  <17.244772, 14.979650, 19.168898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.656967, 15.525610, 19.424416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.424494, 15.681625, 19.138731>,  <17.285009, 15.775234, 18.967319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.424494, 15.681625, 19.138731>,  <17.656967, 15.525610, 19.424416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.424494, 15.681625, 19.138731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212302, 0.774588, 0.595769,
		0.785593, 0.497879, -0.367371,
		-0.581182, 0.390038, -0.714211,
		17.250139, 15.798636, 18.924467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.849073, 16.219107, 19.372692>,  <17.656967, 15.525610, 19.424416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.849073, 16.219107, 19.372692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.492001, 16.201942, 19.193235>,  <17.277758, 16.191645, 19.085562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.492001, 16.201942, 19.193235>,  <17.849073, 16.219107, 19.372692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.492001, 16.201942, 19.193235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275742, 0.839400, 0.468373,
		0.356492, 0.541817, -0.761149,
		-0.892681, -0.042909, -0.448641,
		17.224195, 16.189070, 19.058643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.771643, 16.783546, 18.895330>,  <17.849073, 16.219107, 19.372692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.771643, 16.783546, 18.895330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.397823, 16.674444, 18.986742>,  <17.173532, 16.608984, 19.041588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.397823, 16.674444, 18.986742>,  <17.771643, 16.783546, 18.895330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.397823, 16.674444, 18.986742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177356, 0.913810, 0.365371,
		-0.308488, 0.300926, -0.902374,
		-0.934548, -0.272754, 0.228528,
		17.117458, 16.592619, 19.055300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.381441, 17.296721, 18.724365>,  <17.771643, 16.783546, 18.895330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.381441, 17.296721, 18.724365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.105972, 17.119123, 18.953661>,  <16.940691, 17.012566, 19.091238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.105972, 17.119123, 18.953661>,  <17.381441, 17.296721, 18.724365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.105972, 17.119123, 18.953661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231635, 0.883884, 0.406317,
		-0.687078, 0.147038, -0.711551,
		-0.688673, -0.443991, 0.573238,
		16.899370, 16.985926, 19.125633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.810822, 17.787107, 18.759626>,  <17.381441, 17.296721, 18.724365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.810822, 17.787107, 18.759626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.780882, 17.539003, 19.071953>,  <16.762918, 17.390141, 19.259350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.780882, 17.539003, 19.071953>,  <16.810822, 17.787107, 18.759626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.780882, 17.539003, 19.071953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196799, 0.776802, 0.598205,
		-0.977583, -0.108889, -0.180208,
		-0.074848, -0.620260, 0.780817,
		16.758427, 17.352926, 19.306198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.245653, 17.877562, 19.072132>,  <16.810822, 17.787107, 18.759626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.245653, 17.877562, 19.072132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.426182, 17.695004, 19.378859>,  <16.534498, 17.585468, 19.562895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.426182, 17.695004, 19.378859>,  <16.245653, 17.877562, 19.072132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.426182, 17.695004, 19.378859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176156, 0.796838, 0.577943,
		-0.874801, -0.395918, 0.279234,
		0.451322, -0.456397, 0.766818,
		16.561579, 17.558084, 19.608904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.895684, 18.081867, 19.623079>,  <16.245653, 17.877562, 19.072132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.895684, 18.081867, 19.623079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.192656, 17.900269, 19.820131>,  <16.370838, 17.791309, 19.938362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.192656, 17.900269, 19.820131>,  <15.895684, 18.081867, 19.623079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.192656, 17.900269, 19.820131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110832, 0.641981, 0.758667,
		-0.660693, -0.617856, 0.426308,
		0.742429, -0.453998, 0.492631,
		16.415384, 17.764069, 19.967920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.610307, 17.799669, 20.342052>,  <15.895684, 18.081867, 19.623079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.610307, 17.799669, 20.342052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.997695, 17.896776, 20.364424>,  <16.230127, 17.955040, 20.377846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.997695, 17.896776, 20.364424>,  <15.610307, 17.799669, 20.342052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.997695, 17.896776, 20.364424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175825, 0.507033, 0.843803,
		0.176488, -0.827033, 0.533731,
		0.968471, 0.242764, 0.055927,
		16.288237, 17.969606, 20.381203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.882353, 17.609907, 21.037441>,  <15.610307, 17.799669, 20.342052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.882353, 17.609907, 21.037441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.155022, 17.862135, 20.889008>,  <16.318623, 18.013472, 20.799948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.155022, 17.862135, 20.889008>,  <15.882353, 17.609907, 21.037441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.155022, 17.862135, 20.889008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022339, 0.524882, 0.850882,
		0.731316, -0.571733, 0.371884,
		0.681673, 0.630571, -0.371083,
		16.359524, 18.051306, 20.777683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.493095, 17.598623, 21.562256>,  <15.882353, 17.609907, 21.037441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.493095, 17.598623, 21.562256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.562820, 17.935726, 21.358541>,  <16.604656, 18.137989, 21.236313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.562820, 17.935726, 21.358541>,  <16.493095, 17.598623, 21.562256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.562820, 17.935726, 21.358541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197537, 0.476763, 0.856549,
		0.964673, -0.249912, -0.083370,
		0.174314, 0.842758, -0.509287,
		16.615114, 18.188553, 21.205755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.121878, 17.923504, 21.827808>,  <16.493095, 17.598623, 21.562256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.121878, 17.923504, 21.827808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.974211, 18.243069, 21.637878>,  <16.885611, 18.434807, 21.523920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.974211, 18.243069, 21.637878>,  <17.121878, 17.923504, 21.827808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.974211, 18.243069, 21.637878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327316, 0.589946, 0.738125,
		0.869817, 0.117072, -0.479283,
		-0.369165, 0.798911, -0.474825,
		16.863461, 18.482742, 21.495430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.637451, 18.462996, 21.834343>,  <17.121878, 17.923504, 21.827808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.637451, 18.462996, 21.834343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.278028, 18.628090, 21.774677>,  <17.062376, 18.727146, 21.738878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.278028, 18.628090, 21.774677>,  <17.637451, 18.462996, 21.834343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.278028, 18.628090, 21.774677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169013, 0.639118, 0.750309,
		0.405012, 0.648983, -0.644040,
		-0.898554, 0.412735, -0.149164,
		17.008463, 18.751911, 21.729929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.800888, 19.204239, 21.753712>,  <17.637451, 18.462996, 21.834343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.800888, 19.204239, 21.753712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.416300, 19.164131, 21.856098>,  <17.185547, 19.140066, 21.917530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.416300, 19.164131, 21.856098>,  <17.800888, 19.204239, 21.753712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.416300, 19.164131, 21.856098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089668, 0.765790, 0.636809,
		-0.259868, 0.635226, -0.727294,
		-0.961472, -0.100271, 0.255964,
		17.127859, 19.134050, 21.932888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<12.552383, 19.421062, 22.546005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.931124, 19.405087, 22.673677>,  <13.158368, 19.395500, 22.750280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.931124, 19.405087, 22.673677>,  <12.552383, 19.421062, 22.546005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.931124, 19.405087, 22.673677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247637, -0.542788, -0.802532,
		0.205302, 0.838919, -0.504049,
		0.946851, -0.039940, 0.319183,
		13.215179, 19.393105, 22.769432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.889799, 19.459229, 21.986671>,  <12.552383, 19.421062, 22.546005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.889799, 19.459229, 21.986671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.146743, 19.287432, 22.240572>,  <13.300909, 19.184353, 22.392912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.146743, 19.287432, 22.240572>,  <12.889799, 19.459229, 21.986671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.146743, 19.287432, 22.240572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182531, -0.718655, -0.670982,
		0.744349, 0.546874, -0.383240,
		0.642360, -0.429492, 0.634752,
		13.339451, 19.158585, 22.430998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.498531, 19.372255, 21.454872>,  <12.889799, 19.459229, 21.986671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.498531, 19.372255, 21.454872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.520043, 19.124929, 21.768507>,  <13.532950, 18.976534, 21.956688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.520043, 19.124929, 21.768507>,  <13.498531, 19.372255, 21.454872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.520043, 19.124929, 21.768507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161109, -0.769564, -0.617912,
		0.985470, 0.159556, 0.058228,
		0.053781, -0.618315, 0.784088,
		13.536178, 18.939436, 22.003733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.050006, 18.970266, 21.342915>,  <13.498531, 19.372255, 21.454872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.050006, 18.970266, 21.342915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.828580, 18.752689, 21.595165>,  <13.695724, 18.622143, 21.746515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.828580, 18.752689, 21.595165>,  <14.050006, 18.970266, 21.342915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.828580, 18.752689, 21.595165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156046, -0.811566, -0.563036,
		0.818055, -0.213271, 0.534136,
		-0.553566, -0.543944, 0.630626,
		13.662510, 18.589506, 21.784353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.386050, 18.364288, 21.505037>,  <14.050006, 18.970266, 21.342915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.386050, 18.364288, 21.505037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.006313, 18.258171, 21.572409>,  <13.778471, 18.194500, 21.612831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.006313, 18.258171, 21.572409>,  <14.386050, 18.364288, 21.505037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.006313, 18.258171, 21.572409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133397, -0.825516, -0.548387,
		0.284525, -0.498139, 0.819087,
		-0.949342, -0.265293, 0.168429,
		13.721511, 18.178583, 21.622938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.413339, 17.677971, 21.201496>,  <14.386050, 18.364288, 21.505037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.413339, 17.677971, 21.201496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.026202, 17.688694, 21.301546>,  <13.793921, 17.695127, 21.361576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.026202, 17.688694, 21.301546>,  <14.413339, 17.677971, 21.201496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.026202, 17.688694, 21.301546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174352, -0.788233, -0.590161,
		0.181336, -0.614793, 0.767559,
		-0.967842, 0.026808, 0.250125,
		13.735849, 17.696735, 21.376583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.191131, 16.975674, 21.314220>,  <14.413339, 17.677971, 21.201496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.191131, 16.975674, 21.314220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.863796, 17.188437, 21.227137>,  <13.667396, 17.316095, 21.174887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.863796, 17.188437, 21.227137>,  <14.191131, 16.975674, 21.314220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.863796, 17.188437, 21.227137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368623, -0.776372, -0.511236,
		-0.440955, -0.338111, 0.831408,
		-0.818337, 0.531909, -0.217710,
		13.618296, 17.348009, 21.161823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.565333, 16.487116, 21.411661>,  <14.191131, 16.975674, 21.314220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.565333, 16.487116, 21.411661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.461611, 16.780561, 21.160402>,  <13.399378, 16.956629, 21.009647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.461611, 16.780561, 21.160402>,  <13.565333, 16.487116, 21.411661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.461611, 16.780561, 21.160402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374848, -0.675855, -0.634594,
		-0.890084, 0.070906, 0.450247,
		-0.259305, 0.733616, -0.628147,
		13.383820, 17.000647, 20.971958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.891852, 16.232611, 21.098116>,  <13.565333, 16.487116, 21.411661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.891852, 16.232611, 21.098116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.021933, 16.528252, 20.862160>,  <13.099981, 16.705637, 20.720587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.021933, 16.528252, 20.862160>,  <12.891852, 16.232611, 21.098116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.021933, 16.528252, 20.862160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339264, -0.491080, -0.802334,
		-0.882691, 0.461049, 0.091051,
		0.325202, 0.739104, -0.589889,
		13.119493, 16.749983, 20.685192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.341139, 16.306784, 20.575621>,  <12.891852, 16.232611, 21.098116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.341139, 16.306784, 20.575621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.657393, 16.487839, 20.410690>,  <12.847146, 16.596472, 20.311733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.657393, 16.487839, 20.410690>,  <12.341139, 16.306784, 20.575621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.657393, 16.487839, 20.410690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314032, -0.278324, -0.907700,
		-0.525620, 0.847144, -0.077911,
		0.790637, 0.452639, -0.412324,
		12.894585, 16.623631, 20.286993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.056307, 16.607111, 19.937717>,  <12.341139, 16.306784, 20.575621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.056307, 16.607111, 19.937717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.454576, 16.587139, 19.906372>,  <12.693539, 16.575155, 19.887566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.454576, 16.587139, 19.906372>,  <12.056307, 16.607111, 19.937717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.454576, 16.587139, 19.906372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091456, -0.377650, -0.921421,
		0.016413, 0.924601, -0.380582,
		0.995674, -0.049929, -0.078362,
		12.753279, 16.572161, 19.882864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.117552, 16.856855, 19.319471>,  <12.056307, 16.607111, 19.937717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.117552, 16.856855, 19.319471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.470651, 16.685381, 19.396399>,  <12.682509, 16.582497, 19.442554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.470651, 16.685381, 19.396399>,  <12.117552, 16.856855, 19.319471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.470651, 16.685381, 19.396399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034068, -0.466637, -0.883792,
		0.468613, 0.773613, -0.426527,
		0.882747, -0.428687, 0.192317,
		12.735475, 16.556774, 19.454094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.588118, 17.024815, 18.742878>,  <12.117552, 16.856855, 19.319471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.588118, 17.024815, 18.742878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.710938, 16.680576, 18.905407>,  <12.784631, 16.474033, 19.002924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.710938, 16.680576, 18.905407>,  <12.588118, 17.024815, 18.742878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.710938, 16.680576, 18.905407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052422, -0.441594, -0.895682,
		0.950248, 0.253720, -0.180706,
		0.307051, -0.860593, 0.406323,
		12.803054, 16.422398, 19.027304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.108215, 16.684050, 18.346367>,  <12.588118, 17.024815, 18.742878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.108215, 16.684050, 18.346367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.963413, 16.380116, 18.562368>,  <12.876532, 16.197756, 18.691969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.963413, 16.380116, 18.562368>,  <13.108215, 16.684050, 18.346367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.963413, 16.380116, 18.562368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137510, -0.529427, -0.837137,
		0.921977, -0.377305, 0.087171,
		-0.362006, -0.759834, 0.540003,
		12.854812, 16.152164, 18.724369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.766884, 16.825922, 18.153982>,  <13.108215, 16.684050, 18.346367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.766884, 16.825922, 18.153982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.727970, 17.023762, 17.808519>,  <13.704622, 17.142466, 17.601242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.727970, 17.023762, 17.808519>,  <13.766884, 16.825922, 18.153982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.727970, 17.023762, 17.808519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030113, 0.868841, 0.494175,
		0.994801, 0.022068, -0.099419,
		-0.097285, 0.494599, -0.863659,
		13.698785, 17.172142, 17.549421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.231961, 17.383141, 18.243307>,  <13.766884, 16.825922, 18.153982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.231961, 17.383141, 18.243307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.015512, 17.490467, 17.924511>,  <13.885641, 17.554863, 17.733234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.015512, 17.490467, 17.924511>,  <14.231961, 17.383141, 18.243307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.015512, 17.490467, 17.924511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058838, 0.933331, 0.354164,
		0.838881, 0.238541, -0.489262,
		-0.541126, 0.268314, -0.796988,
		13.853174, 17.570961, 17.685415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.391829, 18.084780, 18.109715>,  <14.231961, 17.383141, 18.243307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.391829, 18.084780, 18.109715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.070726, 18.111034, 17.872641>,  <13.878065, 18.126787, 17.730396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.070726, 18.111034, 17.872641>,  <14.391829, 18.084780, 18.109715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.070726, 18.111034, 17.872641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078747, 0.973550, 0.214474,
		0.591085, 0.218843, -0.776354,
		-0.802756, 0.065637, -0.592684,
		13.829900, 18.130726, 17.694836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.486107, 18.644615, 17.526096>,  <14.391829, 18.084780, 18.109715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.486107, 18.644615, 17.526096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.100708, 18.586485, 17.616034>,  <13.869469, 18.551607, 17.669996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.100708, 18.586485, 17.616034>,  <14.486107, 18.644615, 17.526096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.100708, 18.586485, 17.616034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051328, 0.924536, 0.377621,
		-0.262754, 0.352296, -0.898247,
		-0.963497, -0.145327, 0.224843,
		13.811659, 18.542887, 17.683487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.192187, 19.318188, 17.341587>,  <14.486107, 18.644615, 17.526096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.192187, 19.318188, 17.341587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.917520, 19.138779, 17.570433>,  <13.752719, 19.031134, 17.707739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.917520, 19.138779, 17.570433>,  <14.192187, 19.318188, 17.341587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.917520, 19.138779, 17.570433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128091, 0.849317, 0.512107,
		-0.715597, 0.278365, -0.640651,
		-0.686669, -0.448523, 0.572113,
		13.711519, 19.004221, 17.742067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.677888, 19.794056, 17.434145>,  <14.192187, 19.318188, 17.341587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.677888, 19.794056, 17.434145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.642233, 19.530510, 17.732929>,  <13.620840, 19.372381, 17.912199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.642233, 19.530510, 17.732929>,  <13.677888, 19.794056, 17.434145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.642233, 19.530510, 17.732929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129833, 0.751232, 0.647142,
		-0.987521, -0.039296, -0.152505,
		-0.089137, -0.658867, 0.746960,
		13.615492, 19.332850, 17.957018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.018610, 19.905390, 17.760534>,  <13.677888, 19.794056, 17.434145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.018610, 19.905390, 17.760534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.245393, 19.721258, 18.033783>,  <13.381462, 19.610779, 18.197733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.245393, 19.721258, 18.033783>,  <13.018610, 19.905390, 17.760534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.245393, 19.721258, 18.033783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373613, 0.595385, 0.711288,
		-0.734149, -0.658492, 0.165571,
		0.566956, -0.460332, 0.683122,
		13.415480, 19.583158, 18.238720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.535473, 19.895786, 18.361502>,  <13.018610, 19.905390, 17.760534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.535473, 19.895786, 18.361502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.901967, 19.831139, 18.508139>,  <13.121864, 19.792349, 18.596121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.901967, 19.831139, 18.508139>,  <12.535473, 19.895786, 18.361502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.901967, 19.831139, 18.508139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208313, 0.589421, 0.780506,
		-0.342222, -0.791494, 0.506381,
		0.916236, -0.161621, 0.366591,
		13.176838, 19.782652, 18.618116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.383645, 19.759003, 19.001030>,  <12.535473, 19.895786, 18.361502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.383645, 19.759003, 19.001030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.767554, 19.871143, 19.007200>,  <12.997900, 19.938427, 19.010902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.767554, 19.871143, 19.007200>,  <12.383645, 19.759003, 19.001030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.767554, 19.871143, 19.007200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188109, 0.601260, 0.776596,
		0.208447, -0.748258, 0.629810,
		0.959773, 0.280352, 0.015424,
		13.055487, 19.955250, 19.011827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.606959, 19.705818, 19.713877>,  <12.383645, 19.759003, 19.001030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.606959, 19.705818, 19.713877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.882008, 19.945618, 19.550034>,  <13.047036, 20.089497, 19.451727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.882008, 19.945618, 19.550034>,  <12.606959, 19.705818, 19.713877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.882008, 19.945618, 19.550034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049192, 0.601315, 0.797496,
		0.724402, -0.528224, 0.442967,
		0.687620, 0.599499, -0.409609,
		13.088294, 20.125467, 19.427151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.157746, 19.750736, 20.161884>,  <12.606959, 19.705818, 19.713877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.157746, 19.750736, 20.161884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.226969, 20.070084, 19.931177>,  <13.268502, 20.261692, 19.792753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.226969, 20.070084, 19.931177>,  <13.157746, 19.750736, 20.161884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.226969, 20.070084, 19.931177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203383, 0.544016, 0.814053,
		0.963684, -0.258182, -0.068229,
		0.173056, 0.798366, -0.576769,
		13.278886, 20.309593, 19.758146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.848261, 20.047621, 20.299404>,  <13.157746, 19.750736, 20.161884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.848261, 20.047621, 20.299404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.627398, 20.345636, 20.149714>,  <13.494881, 20.524445, 20.059900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.627398, 20.345636, 20.149714>,  <13.848261, 20.047621, 20.299404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.627398, 20.345636, 20.149714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207850, 0.557685, 0.803608,
		0.807417, 0.365934, -0.462785,
		-0.552156, 0.745037, -0.374225,
		13.461752, 20.569147, 20.037445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.336691, 20.599131, 20.426418>,  <13.848261, 20.047621, 20.299404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.336691, 20.599131, 20.426418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.010070, 20.806421, 20.324690>,  <13.814097, 20.930796, 20.263653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.010070, 20.806421, 20.324690>,  <14.336691, 20.599131, 20.426418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.010070, 20.806421, 20.324690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120569, 0.583947, 0.802788,
		0.564539, 0.624856, -0.539306,
		-0.816553, 0.518228, -0.254323,
		13.765104, 20.961889, 20.248392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.587186, 21.261919, 20.371748>,  <14.336691, 20.599131, 20.426418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.587186, 21.261919, 20.371748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.205191, 21.202480, 20.474443>,  <13.975993, 21.166817, 20.536060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.205191, 21.202480, 20.474443>,  <14.587186, 21.261919, 20.371748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.205191, 21.202480, 20.474443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171028, 0.431349, 0.885826,
		-0.242378, 0.889863, -0.386519,
		-0.954988, -0.148599, 0.256741,
		13.918694, 21.157900, 20.551466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.711160, 21.896683, 19.868116>,  <14.587186, 21.261919, 20.371748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.711160, 21.896683, 19.868116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.106559, 21.945486, 19.903864>,  <15.343799, 21.974768, 19.925312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.106559, 21.945486, 19.903864>,  <14.711160, 21.896683, 19.868116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.106559, 21.945486, 19.903864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148695, -0.676151, -0.721602,
		-0.027617, 0.726590, -0.686516,
		0.988497, 0.122010, 0.089367,
		15.403108, 21.982090, 19.930674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.065673, 21.928074, 19.152676>,  <14.711160, 21.896683, 19.868116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.065673, 21.928074, 19.152676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.333128, 21.821507, 19.430365>,  <15.493601, 21.757566, 19.596979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.333128, 21.821507, 19.430365>,  <15.065673, 21.928074, 19.152676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.333128, 21.821507, 19.430365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307000, -0.751421, -0.584052,
		0.677255, 0.603646, -0.420639,
		0.668638, -0.266416, 0.694223,
		15.533719, 21.741581, 19.638632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.738159, 22.015060, 18.799751>,  <15.065673, 21.928074, 19.152676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.738159, 22.015060, 18.799751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.822822, 21.790506, 19.119764>,  <15.873619, 21.655773, 19.311771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.822822, 21.790506, 19.119764>,  <15.738159, 22.015060, 18.799751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.822822, 21.790506, 19.119764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401117, -0.696562, -0.594900,
		0.891239, 0.446820, 0.077750,
		0.211656, -0.561385, 0.800030,
		15.886318, 21.622091, 19.359774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.357298, 21.784025, 18.769918>,  <15.738159, 22.015060, 18.799751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.357298, 21.784025, 18.769918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.222126, 21.502636, 19.020016>,  <16.141024, 21.333801, 19.170074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.222126, 21.502636, 19.020016>,  <16.357298, 21.784025, 18.769918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.222126, 21.502636, 19.020016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429161, -0.706413, -0.562851,
		0.837630, 0.078126, 0.540622,
		-0.337929, -0.703475, 0.625241,
		16.120747, 21.291594, 19.207588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.870642, 21.208805, 18.790846>,  <16.357298, 21.784025, 18.769918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.870642, 21.208805, 18.790846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.549156, 21.026678, 18.944067>,  <16.356264, 20.917402, 19.035999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.549156, 21.026678, 18.944067>,  <16.870642, 21.208805, 18.790846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.549156, 21.026678, 18.944067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111459, -0.747581, -0.654751,
		0.584484, -0.483537, 0.651590,
		-0.803713, -0.455318, 0.383055,
		16.308043, 20.890083, 19.058983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.203117, 20.570940, 18.949728>,  <16.870642, 21.208805, 18.790846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.203117, 20.570940, 18.949728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.812624, 20.503593, 18.895145>,  <16.578327, 20.463184, 18.862396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.812624, 20.503593, 18.895145>,  <17.203117, 20.570940, 18.949728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.812624, 20.503593, 18.895145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214658, -0.664494, -0.715800,
		0.029842, -0.728080, 0.684842,
		-0.976233, -0.168368, -0.136458,
		16.519754, 20.453083, 18.854208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.063026, 19.870329, 19.003315>,  <17.203117, 20.570940, 18.949728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.063026, 19.870329, 19.003315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.740349, 19.991287, 18.800219>,  <16.546741, 20.063862, 18.678360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.740349, 19.991287, 18.800219>,  <17.063026, 19.870329, 19.003315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.740349, 19.991287, 18.800219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149113, -0.727213, -0.670020,
		-0.571847, -0.616212, 0.541547,
		-0.806695, 0.302397, -0.507740,
		16.498341, 20.082006, 18.647896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.655853, 19.303099, 18.876102>,  <17.063026, 19.870329, 19.003315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.655853, 19.303099, 18.876102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.556450, 19.571522, 18.596695>,  <16.496809, 19.732574, 18.429050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.556450, 19.571522, 18.596695>,  <16.655853, 19.303099, 18.876102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.556450, 19.571522, 18.596695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016417, -0.718120, -0.695726,
		-0.968491, -0.184361, 0.167441,
		-0.248507, 0.671056, -0.698519,
		16.481897, 19.772839, 18.387138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.429386, 18.843287, 18.360331>,  <16.655853, 19.303099, 18.876102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.429386, 18.843287, 18.360331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.439148, 19.200756, 18.181110>,  <16.445005, 19.415237, 18.073578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.439148, 19.200756, 18.181110>,  <16.429386, 18.843287, 18.360331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.439148, 19.200756, 18.181110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197084, -0.443688, -0.874242,
		-0.980083, -0.066969, -0.186957,
		0.024403, 0.893676, -0.448050,
		16.446468, 19.468859, 18.046696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.838078, 18.852232, 17.770824>,  <16.429386, 18.843287, 18.360331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.838078, 18.852232, 17.770824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.127165, 19.123066, 17.715347>,  <16.300617, 19.285566, 17.682060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.127165, 19.123066, 17.715347>,  <15.838078, 18.852232, 17.770824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.127165, 19.123066, 17.715347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198645, -0.395701, -0.896639,
		-0.661982, 0.620465, -0.420480,
		0.722717, 0.677085, -0.138695,
		16.343981, 19.326191, 17.673738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.721127, 19.193430, 17.138935>,  <15.838078, 18.852232, 17.770824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.721127, 19.193430, 17.138935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.099195, 19.297689, 17.217638>,  <16.326036, 19.360245, 17.264860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.099195, 19.297689, 17.217638>,  <15.721127, 19.193430, 17.138935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.099195, 19.297689, 17.217638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278638, -0.329394, -0.902142,
		-0.170329, 0.907504, -0.383960,
		0.945171, 0.260647, 0.196759,
		16.382748, 19.375883, 17.276667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.964834, 19.538641, 16.466669>,  <15.721127, 19.193430, 17.138935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.964834, 19.538641, 16.466669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.267990, 19.408051, 16.692595>,  <16.449884, 19.329697, 16.828150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.267990, 19.408051, 16.692595>,  <15.964834, 19.538641, 16.466669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.267990, 19.408051, 16.692595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350118, -0.526976, -0.774412,
		0.550471, 0.784671, -0.285084,
		0.757891, -0.326478, 0.564813,
		16.495358, 19.310106, 16.862038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.566977, 19.522736, 16.107895>,  <15.964834, 19.538641, 16.466669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.566977, 19.522736, 16.107895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.658829, 19.256691, 16.392120>,  <16.713940, 19.097065, 16.562656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.658829, 19.256691, 16.392120>,  <16.566977, 19.522736, 16.107895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.658829, 19.256691, 16.392120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413231, -0.594376, -0.689897,
		0.881199, 0.452046, 0.138358,
		0.229628, -0.665110, 0.710563,
		16.727716, 19.057158, 16.605289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.155567, 19.298820, 15.866533>,  <16.566977, 19.522736, 16.107895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.155567, 19.298820, 15.866533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.075476, 19.019609, 16.141537>,  <17.027420, 18.852083, 16.306538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.075476, 19.019609, 16.141537>,  <17.155567, 19.298820, 15.866533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.075476, 19.019609, 16.141537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253439, -0.714736, -0.651860,
		0.946402, 0.043720, 0.320017,
		-0.200228, -0.698027, 0.687508,
		17.015408, 18.810202, 16.347790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<3.819061, 19.993540, 4.612061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.781865, 20.387232, 4.551873>,  <3.759547, 20.623447, 4.515761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.781865, 20.387232, 4.551873>,  <3.819061, 19.993540, 4.612061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.781865, 20.387232, 4.551873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375146, 0.174620, 0.910370,
		0.922290, 0.028207, -0.385468,
		-0.092990, 0.984232, -0.150469,
		3.753968, 20.682501, 4.506732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.329230, 20.461336, 4.976156>,  <3.819061, 19.993540, 4.612061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.329230, 20.461336, 4.976156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.075687, 20.759195, 4.892513>,  <3.923561, 20.937910, 4.842328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.075687, 20.759195, 4.892513>,  <4.329230, 20.461336, 4.976156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.075687, 20.759195, 4.892513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283627, 0.475305, 0.832851,
		0.719570, 0.468600, -0.512478,
		-0.633857, 0.744647, -0.209107,
		3.885530, 20.982590, 4.829781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.608811, 19.727758, 4.871019>,  <4.329230, 20.461336, 4.976156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.608811, 19.727758, 4.871019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.582024, 19.410570, 5.113246>,  <4.565951, 19.220257, 5.258582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.582024, 19.410570, 5.113246>,  <4.608811, 19.727758, 4.871019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.582024, 19.410570, 5.113246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996660, -0.081590, 0.003380,
		0.046728, 0.603771, 0.795787,
		-0.066969, -0.792971, 0.605567,
		4.561933, 19.172678, 5.294916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.163976, 19.802427, 5.338901>,  <4.608811, 19.727758, 4.871019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.163976, 19.802427, 5.338901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.077567, 19.413557, 5.302653>,  <5.025722, 19.180235, 5.280905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.077567, 19.413557, 5.302653>,  <5.163976, 19.802427, 5.338901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.077567, 19.413557, 5.302653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976331, -0.216088, -0.009196,
		-0.010641, -0.090460, 0.995843,
		-0.216021, -0.972174, -0.090618,
		5.012761, 19.121904, 5.275468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.962603, 19.640959, 6.115860>,  <5.163976, 19.802427, 5.338901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.962603, 19.640959, 6.115860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.864161, 19.895033, 5.823020>,  <4.805095, 20.047478, 5.647316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.864161, 19.895033, 5.823020>,  <4.962603, 19.640959, 6.115860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.864161, 19.895033, 5.823020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406277, 0.618166, 0.672912,
		0.879984, 0.463042, 0.105928,
		-0.246105, 0.635188, -0.732099,
		4.790329, 20.085588, 5.603391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.007333, 19.991098, 6.773220>,  <4.962603, 19.640959, 6.115860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.007333, 19.991098, 6.773220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.233027, 19.990423, 7.103464>,  <5.368444, 19.990019, 7.301611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.233027, 19.990423, 7.103464>,  <5.007333, 19.991098, 6.773220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.233027, 19.990423, 7.103464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657268, -0.606085, 0.447950,
		0.499635, -0.795398, -0.343084,
		0.564237, -0.001686, 0.825611,
		5.402298, 19.989918, 7.351148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.579492, 19.733139, 7.243188>,  <5.007333, 19.991098, 6.773220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.579492, 19.733139, 7.243188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.952201, 19.709330, 7.386440>,  <5.175826, 19.695044, 7.472392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.952201, 19.709330, 7.386440>,  <4.579492, 19.733139, 7.243188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.952201, 19.709330, 7.386440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291764, -0.709809, 0.641128,
		0.216041, -0.701874, -0.678748,
		0.931773, -0.059524, 0.358130,
		5.231733, 19.691473, 7.493879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.764953, 19.065521, 7.327139>,  <4.579492, 19.733139, 7.243188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.764953, 19.065521, 7.327139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.033186, 19.221897, 7.579325>,  <5.194126, 19.315722, 7.730637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.033186, 19.221897, 7.579325>,  <4.764953, 19.065521, 7.327139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.033186, 19.221897, 7.579325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268377, -0.664459, 0.697473,
		0.691587, -0.636916, -0.340656,
		0.670583, 0.390939, 0.630464,
		5.234361, 19.339178, 7.768465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.140932, 18.547558, 7.487660>,  <4.764953, 19.065521, 7.327139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.140932, 18.547558, 7.487660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.161159, 18.797129, 7.799598>,  <5.173295, 18.946873, 7.986760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.161159, 18.797129, 7.799598>,  <5.140932, 18.547558, 7.487660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.161159, 18.797129, 7.799598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133933, -0.769552, 0.624381,
		0.989699, -0.136020, 0.044651,
		0.050567, 0.623930, 0.779843,
		5.176329, 18.984308, 8.033550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.633612, 18.899500, 7.149743>,  <5.140932, 18.547558, 7.487660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.633612, 18.899500, 7.149743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.680890, 19.088598, 7.499038>,  <5.709257, 19.202057, 7.708614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.680890, 19.088598, 7.499038>,  <5.633612, 18.899500, 7.149743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.680890, 19.088598, 7.499038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033624, -0.880802, 0.472289,
		0.992421, -0.026461, -0.120003,
		0.118196, 0.472744, 0.873237,
		5.716349, 19.230421, 7.761009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.813186, 18.270861, 7.635006>,  <5.633612, 18.899500, 7.149743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.813186, 18.270861, 7.635006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.754146, 18.586956, 7.872909>,  <5.718722, 18.776613, 8.015651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.754146, 18.586956, 7.872909>,  <5.813186, 18.270861, 7.635006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.754146, 18.586956, 7.872909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124495, -0.611405, 0.781463,
		0.981180, 0.041300, 0.188624,
		-0.147601, 0.790239, 0.594757,
		5.709866, 18.824028, 8.051336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.330494, 18.180592, 8.191384>,  <5.813186, 18.270861, 7.635006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.330494, 18.180592, 8.191384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.034151, 18.420391, 8.312531>,  <5.856344, 18.564272, 8.385219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.034151, 18.420391, 8.312531>,  <6.330494, 18.180592, 8.191384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.034151, 18.420391, 8.312531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218033, -0.641160, 0.735782,
		0.635287, 0.479076, 0.605720,
		-0.740859, 0.599500, 0.302866,
		5.811893, 18.600241, 8.403390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.531919, 18.461334, 8.915219>,  <6.330494, 18.180592, 8.191384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.531919, 18.461334, 8.915219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.140198, 18.434351, 8.838888>,  <5.905165, 18.418161, 8.793090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.140198, 18.434351, 8.838888>,  <6.531919, 18.461334, 8.915219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.140198, 18.434351, 8.838888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115525, -0.587864, 0.800668,
		-0.166190, 0.806142, 0.567904,
		-0.979303, -0.067456, -0.190827,
		5.846407, 18.414114, 8.781640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.276210, 18.530640, 9.548265>,  <6.531919, 18.461334, 8.915219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.276210, 18.530640, 9.548265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.974436, 18.372824, 9.338441>,  <5.793372, 18.278133, 9.212546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.974436, 18.372824, 9.338441>,  <6.276210, 18.530640, 9.548265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.974436, 18.372824, 9.338441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226601, -0.593490, 0.772284,
		-0.616019, 0.701504, 0.358347,
		-0.754435, -0.394540, -0.524562,
		5.748106, 18.254461, 9.181072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.850189, 18.339668, 10.084253>,  <6.276210, 18.530640, 9.548265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.850189, 18.339668, 10.084253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.741539, 18.134113, 9.758766>,  <5.676349, 18.010780, 9.563474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.741539, 18.134113, 9.758766>,  <5.850189, 18.339668, 10.084253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.741539, 18.134113, 9.758766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187286, -0.801118, 0.568448,
		-0.944004, 0.306803, 0.121360,
		-0.271626, -0.513888, -0.813719,
		5.660051, 17.979946, 9.514650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.137406, 18.020296, 10.088510>,  <5.850189, 18.339668, 10.084253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.137406, 18.020296, 10.088510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.349592, 17.818090, 9.816316>,  <5.476903, 17.696766, 9.652999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.349592, 17.818090, 9.816316>,  <5.137406, 18.020296, 10.088510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.349592, 17.818090, 9.816316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193009, -0.853677, 0.483717,
		-0.825439, -0.125258, -0.550419,
		0.530470, -0.505515, -0.680483,
		5.508731, 17.666435, 9.612170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.851817, 17.409386, 10.075013>,  <5.137406, 18.020296, 10.088510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.851817, 17.409386, 10.075013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.193663, 17.342545, 9.878357>,  <5.398770, 17.302439, 9.760364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.193663, 17.342545, 9.878357>,  <4.851817, 17.409386, 10.075013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.193663, 17.342545, 9.878357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032140, -0.927966, 0.371277,
		-0.518266, -0.333100, -0.787683,
		0.854615, -0.167104, -0.491639,
		5.450047, 17.292414, 9.730865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.785867, 16.789913, 9.601444>,  <4.851817, 17.409386, 10.075013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.785867, 16.789913, 9.601444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.179319, 16.810232, 9.670604>,  <5.415390, 16.822424, 9.712100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.179319, 16.810232, 9.670604>,  <4.785867, 16.789913, 9.601444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.179319, 16.810232, 9.670604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016429, -0.930177, 0.366744,
		0.179457, -0.363580, -0.914114,
		0.983629, 0.050796, 0.172900,
		5.474408, 16.825472, 9.722474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.948318, 16.109676, 9.486486>,  <4.785867, 16.789913, 9.601444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.948318, 16.109676, 9.486486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.252928, 16.294699, 9.668088>,  <5.435694, 16.405712, 9.777049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.252928, 16.294699, 9.668088>,  <4.948318, 16.109676, 9.486486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.252928, 16.294699, 9.668088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273982, -0.864557, 0.421278,
		0.587378, -0.196425, -0.785114,
		0.761526, 0.462556, 0.454005,
		5.481386, 16.433466, 9.804290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.406478, 15.584657, 9.468347>,  <4.948318, 16.109676, 9.486486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.406478, 15.584657, 9.468347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.544046, 15.839457, 9.744304>,  <5.626587, 15.992336, 9.909878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.544046, 15.839457, 9.744304>,  <5.406478, 15.584657, 9.468347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.544046, 15.839457, 9.744304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270955, -0.770780, 0.576612,
		0.899057, -0.011378, -0.437685,
		0.343920, 0.637000, 0.689892,
		5.647222, 16.030556, 9.951271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.079504, 15.392069, 9.681773>,  <5.406478, 15.584657, 9.468347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.079504, 15.392069, 9.681773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.945947, 15.592905, 10.000877>,  <5.865813, 15.713407, 10.192340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.945947, 15.592905, 10.000877>,  <6.079504, 15.392069, 9.681773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.945947, 15.592905, 10.000877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307514, -0.742004, 0.595705,
		0.891039, 0.444223, 0.093349,
		-0.333892, 0.502091, 0.797760,
		5.845779, 15.743532, 10.240206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.581725, 15.341887, 10.225880>,  <6.079504, 15.392069, 9.681773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.581725, 15.341887, 10.225880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.241470, 15.445888, 10.408665>,  <6.037317, 15.508288, 10.518335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.241470, 15.445888, 10.408665>,  <6.581725, 15.341887, 10.225880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.241470, 15.445888, 10.408665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211265, -0.626860, 0.749943,
		0.481439, 0.734469, 0.478301,
		-0.850637, 0.260003, 0.456962,
		5.986279, 15.523889, 10.545753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.761786, 15.062370, 10.866356>,  <6.581725, 15.341887, 10.225880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.761786, 15.062370, 10.866356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.386117, 15.185730, 10.926816>,  <6.160716, 15.259746, 10.963092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.386117, 15.185730, 10.926816>,  <6.761786, 15.062370, 10.866356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.386117, 15.185730, 10.926816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030625, -0.513541, 0.857519,
		0.342080, 0.800728, 0.491748,
		-0.939172, 0.308400, 0.151149,
		6.104365, 15.278250, 10.972160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.700489, 15.563428, 11.453490>,  <6.761786, 15.062370, 10.866356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.700489, 15.563428, 11.453490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.352087, 15.368592, 11.427900>,  <6.143046, 15.251691, 11.412546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.352087, 15.368592, 11.427900>,  <6.700489, 15.563428, 11.453490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.352087, 15.368592, 11.427900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214565, -0.494319, 0.842384,
		-0.441940, 0.719995, 0.535067,
		-0.871006, -0.487090, -0.063974,
		6.090786, 15.222466, 11.408709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.449226, 15.643487, 12.077914>,  <6.700489, 15.563428, 11.453490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.449226, 15.643487, 12.077914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.231995, 15.336154, 11.942427>,  <6.101656, 15.151754, 11.861135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.231995, 15.336154, 11.942427>,  <6.449226, 15.643487, 12.077914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.231995, 15.336154, 11.942427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231616, -0.524811, 0.819101,
		-0.807106, 0.366384, 0.462972,
		-0.543078, -0.768333, -0.338718,
		6.069072, 15.105654, 11.840811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.008473, 15.440257, 12.644935>,  <6.449226, 15.643487, 12.077914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.008473, 15.440257, 12.644935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.012688, 15.116379, 12.410233>,  <6.015216, 14.922051, 12.269411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.012688, 15.116379, 12.410233>,  <6.008473, 15.440257, 12.644935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.012688, 15.116379, 12.410233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193574, -0.577339, 0.793227,
		-0.981029, 0.105223, -0.162819,
		0.010536, -0.809696, -0.586755,
		6.015849, 14.873470, 12.234206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.451101, 15.096195, 12.856084>,  <6.008473, 15.440257, 12.644935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.451101, 15.096195, 12.856084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.675258, 14.824835, 12.666039>,  <5.809752, 14.662019, 12.552011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.675258, 14.824835, 12.666039>,  <5.451101, 15.096195, 12.856084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.675258, 14.824835, 12.666039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174025, -0.657291, 0.733269,
		-0.809739, -0.328236, -0.486399,
		0.560391, -0.678402, -0.475114,
		5.843375, 14.621314, 12.523504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.067861, 14.512021, 12.753967>,  <5.451101, 15.096195, 12.856084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.067861, 14.512021, 12.753967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.439743, 14.368491, 12.720757>,  <5.662872, 14.282373, 12.700830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.439743, 14.368491, 12.720757>,  <5.067861, 14.512021, 12.753967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.439743, 14.368491, 12.720757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170015, -0.618092, 0.767500,
		-0.326717, -0.699433, -0.635649,
		0.929705, -0.358825, -0.083027,
		5.718654, 14.260843, 12.695848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.976681, 13.823496, 12.942118>,  <5.067861, 14.512021, 12.753967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.976681, 13.823496, 12.942118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.371849, 13.884814, 12.951205>,  <5.608950, 13.921605, 12.956657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.371849, 13.884814, 12.951205>,  <4.976681, 13.823496, 12.942118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.371849, 13.884814, 12.951205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084180, -0.653929, 0.751858,
		0.130113, -0.740862, -0.658934,
		0.987919, 0.153296, 0.022719,
		5.668225, 13.930803, 12.958021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.265112, 13.138849, 13.008588>,  <4.976681, 13.823496, 12.942118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.265112, 13.138849, 13.008588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.515633, 13.420915, 13.141550>,  <5.665945, 13.590154, 13.221328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.515633, 13.420915, 13.141550>,  <5.265112, 13.138849, 13.008588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.515633, 13.420915, 13.141550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184304, -0.548234, 0.815764,
		0.757483, -0.449650, -0.473323,
		0.626300, 0.705163, 0.332406,
		5.703523, 13.632463, 13.241272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.880013, 12.763875, 13.054058>,  <5.265112, 13.138849, 13.008588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.880013, 12.763875, 13.054058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.866133, 13.086687, 13.289854>,  <5.857806, 13.280375, 13.431332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.866133, 13.086687, 13.289854>,  <5.880013, 12.763875, 13.054058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.866133, 13.086687, 13.289854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321177, -0.549552, 0.771257,
		0.946383, 0.216092, -0.240131,
		-0.034698, 0.807030, 0.589490,
		5.855724, 13.328796, 13.466702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.225960, 12.426235, 12.494769>,  <5.880013, 12.763875, 13.054058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.225960, 12.426235, 12.494769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.576183, 12.331596, 12.663254>,  <6.786317, 12.274814, 12.764344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.576183, 12.331596, 12.663254>,  <6.225960, 12.426235, 12.494769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.576183, 12.331596, 12.663254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464270, 0.653188, -0.598164,
		-0.133607, 0.719283, 0.681749,
		0.875559, -0.236596, 0.421211,
		6.838851, 12.260617, 12.789618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.577030, 13.069808, 12.749636>,  <6.225960, 12.426235, 12.494769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.577030, 13.069808, 12.749636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.834551, 12.770182, 12.687129>,  <6.989064, 12.590406, 12.649625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.834551, 12.770182, 12.687129>,  <6.577030, 13.069808, 12.749636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.834551, 12.770182, 12.687129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466145, 0.545883, -0.696218,
		0.606816, 0.375385, 0.700614,
		0.643803, -0.749065, -0.156267,
		7.027692, 12.545463, 12.640249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.290347, 13.380754, 12.637098>,  <6.577030, 13.069808, 12.749636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.290347, 13.380754, 12.637098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.327355, 13.017096, 12.474669>,  <7.349560, 12.798901, 12.377211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.327355, 13.017096, 12.474669>,  <7.290347, 13.380754, 12.637098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.327355, 13.017096, 12.474669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502821, 0.394665, -0.769032,
		0.859424, -0.133032, 0.493652,
		0.092521, -0.909144, -0.406076,
		7.355111, 12.744352, 12.352846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.058850, 13.224705, 12.432860>,  <7.290347, 13.380754, 12.637098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.058850, 13.224705, 12.432860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.803461, 13.004136, 12.218092>,  <7.650228, 12.871795, 12.089231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.803461, 13.004136, 12.218092>,  <8.058850, 13.224705, 12.432860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.803461, 13.004136, 12.218092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452793, 0.295000, -0.841400,
		0.622359, -0.780326, 0.061331,
		-0.638473, -0.551422, -0.536921,
		7.611919, 12.838709, 12.057015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.465519, 12.839951, 11.865893>,  <8.058850, 13.224705, 12.432860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.465519, 12.839951, 11.865893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.082752, 12.823325, 11.750945>,  <7.853092, 12.813350, 11.681976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.082752, 12.823325, 11.750945>,  <8.465519, 12.839951, 11.865893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.082752, 12.823325, 11.750945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258373, 0.329694, -0.908045,
		0.132486, -0.943172, -0.304751,
		-0.956917, -0.041564, -0.287370,
		7.795677, 12.810856, 11.664734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.570213, 12.527770, 11.292157>,  <8.465519, 12.839951, 11.865893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.570213, 12.527770, 11.292157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.225471, 12.730326, 11.281007>,  <8.018626, 12.851859, 11.274317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.225471, 12.730326, 11.281007>,  <8.570213, 12.527770, 11.292157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.225471, 12.730326, 11.281007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214762, 0.314620, -0.924603,
		-0.459440, -0.802860, -0.379910,
		-0.861854, 0.506390, -0.027875,
		7.966915, 12.882242, 11.272644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.346722, 12.411604, 10.587513>,  <8.570213, 12.527770, 11.292157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.346722, 12.411604, 10.587513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.115149, 12.708553, 10.722402>,  <7.976204, 12.886723, 10.803335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.115149, 12.708553, 10.722402>,  <8.346722, 12.411604, 10.587513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.115149, 12.708553, 10.722402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045487, 0.383530, -0.922408,
		-0.814105, -0.549352, -0.188270,
		-0.578933, 0.742373, 0.337222,
		7.941469, 12.931265, 10.823568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.884074, 12.572188, 10.049409>,  <8.346722, 12.411604, 10.587513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.884074, 12.572188, 10.049409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.901685, 12.903742, 10.272483>,  <7.912252, 13.102674, 10.406327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.901685, 12.903742, 10.272483>,  <7.884074, 12.572188, 10.049409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.901685, 12.903742, 10.272483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029194, 0.559056, -0.828616,
		-0.998604, 0.020201, 0.048813,
		0.044028, 0.828884, 0.557686,
		7.914894, 13.152407, 10.439789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.655848, 13.092027, 9.638426>,  <7.884074, 12.572188, 10.049409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.655848, 13.092027, 9.638426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.764553, 13.316213, 9.951353>,  <7.829776, 13.450725, 10.139110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.764553, 13.316213, 9.951353>,  <7.655848, 13.092027, 9.638426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.764553, 13.316213, 9.951353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077963, 0.797420, -0.598367,
		-0.959201, 0.223606, 0.173013,
		0.271762, 0.560466, 0.782319,
		7.846082, 13.484352, 10.186049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.089890, 13.669650, 9.637353>,  <7.655848, 13.092027, 9.638426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.089890, 13.669650, 9.637353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.431179, 13.779664, 9.814608>,  <7.635952, 13.845673, 9.920960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.431179, 13.779664, 9.814608>,  <7.089890, 13.669650, 9.637353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.431179, 13.779664, 9.814608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114292, 0.730404, -0.673385,
		-0.508874, 0.625193, 0.591762,
		0.853220, 0.275034, 0.443138,
		7.687145, 13.862174, 9.947549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.031391, 14.354933, 9.843729>,  <7.089890, 13.669650, 9.637353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.031391, 14.354933, 9.843729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.426914, 14.304240, 9.812236>,  <7.664228, 14.273825, 9.793340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.426914, 14.304240, 9.812236>,  <7.031391, 14.354933, 9.843729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.426914, 14.304240, 9.812236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074223, 0.875620, -0.477263,
		0.129425, 0.466077, 0.875226,
		0.988807, -0.126732, -0.078734,
		7.723557, 14.266221, 9.788616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.313936, 15.042763, 9.925765>,  <7.031391, 14.354933, 9.843729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.313936, 15.042763, 9.925765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.603445, 14.826120, 9.754736>,  <7.777150, 14.696135, 9.652119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.603445, 14.826120, 9.754736>,  <7.313936, 15.042763, 9.925765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.603445, 14.826120, 9.754736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227018, 0.772036, -0.593653,
		0.651627, 0.332602, 0.681732,
		0.723772, -0.541605, -0.427572,
		7.820577, 14.663639, 9.626464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.888800, 15.591981, 9.701114>,  <7.313936, 15.042763, 9.925765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.888800, 15.591981, 9.701114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.956306, 15.255877, 9.495015>,  <7.996810, 15.054214, 9.371356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.956306, 15.255877, 9.495015>,  <7.888800, 15.591981, 9.701114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.956306, 15.255877, 9.495015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302230, 0.541679, -0.784372,
		0.938176, -0.023348, 0.345369,
		0.168766, -0.840261, -0.515247,
		8.006936, 15.003798, 9.340441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.530290, 15.726696, 9.384539>,  <7.888800, 15.591981, 9.701114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.530290, 15.726696, 9.384539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.359877, 15.421256, 9.190461>,  <8.257628, 15.237992, 9.074015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.359877, 15.421256, 9.190461>,  <8.530290, 15.726696, 9.384539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.359877, 15.421256, 9.190461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248243, 0.417047, -0.874327,
		0.869984, -0.492937, 0.011883,
		-0.426033, -0.763600, -0.485193,
		8.232067, 15.192176, 9.044904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.993230, 15.666374, 8.845761>,  <8.530290, 15.726696, 9.384539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.993230, 15.666374, 8.845761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.632456, 15.528476, 8.741714>,  <8.415991, 15.445737, 8.679286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.632456, 15.528476, 8.741714>,  <8.993230, 15.666374, 8.845761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.632456, 15.528476, 8.741714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011553, 0.582829, -0.812512,
		0.431715, -0.735839, -0.521692,
		-0.901936, -0.344746, -0.260118,
		8.361876, 15.425052, 8.663679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.028995, 15.452286, 8.137979>,  <8.993230, 15.666374, 8.845761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.028995, 15.452286, 8.137979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.634484, 15.495118, 8.188251>,  <8.397779, 15.520818, 8.218413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.634484, 15.495118, 8.188251>,  <9.028995, 15.452286, 8.137979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.634484, 15.495118, 8.188251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037128, 0.597852, -0.800746,
		-0.160883, -0.794422, -0.585671,
		-0.986275, 0.107082, 0.125679,
		8.338602, 15.527243, 8.225954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.743048, 15.444612, 7.446008>,  <9.028995, 15.452286, 8.137979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.743048, 15.444612, 7.446008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.456272, 15.609505, 7.670886>,  <8.284206, 15.708441, 7.805812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.456272, 15.609505, 7.670886>,  <8.743048, 15.444612, 7.446008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.456272, 15.609505, 7.670886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163748, 0.684294, -0.710583,
		-0.677632, -0.601502, -0.423095,
		-0.716939, 0.412233, 0.562195,
		8.241191, 15.733174, 7.839544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.312030, 15.536386, 6.969505>,  <8.743048, 15.444612, 7.446008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.312030, 15.536386, 6.969505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.194804, 15.768667, 7.273319>,  <8.124469, 15.908036, 7.455608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.194804, 15.768667, 7.273319>,  <8.312030, 15.536386, 6.969505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.194804, 15.768667, 7.273319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292672, 0.701793, -0.649484,
		-0.910196, -0.412636, -0.035714,
		-0.293064, 0.580705, 0.759536,
		8.106885, 15.942879, 7.501180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.664362, 15.749256, 6.811527>,  <8.312030, 15.536386, 6.969505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.664362, 15.749256, 6.811527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.732706, 16.032337, 7.085743>,  <7.773712, 16.202187, 7.250272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.732706, 16.032337, 7.085743>,  <7.664362, 15.749256, 6.811527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.732706, 16.032337, 7.085743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479969, 0.667418, -0.569371,
		-0.860486, -0.231756, 0.453710,
		0.170859, 0.707702, 0.685539,
		7.783963, 16.244648, 7.291405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.031312, 16.242918, 6.805583>,  <7.664362, 15.749256, 6.811527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.031312, 16.242918, 6.805583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.339119, 16.452688, 6.951363>,  <7.523803, 16.578550, 7.038831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.339119, 16.452688, 6.951363>,  <7.031312, 16.242918, 6.805583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.339119, 16.452688, 6.951363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357905, 0.826775, -0.433989,
		-0.528912, 0.203524, 0.823912,
		0.769517, 0.524424, 0.364449,
		7.569974, 16.610016, 7.060698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.688750, 16.812937, 7.033805>,  <7.031312, 16.242918, 6.805583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.688750, 16.812937, 7.033805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.076614, 16.891912, 6.976152>,  <7.309333, 16.939297, 6.941560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.076614, 16.891912, 6.976152>,  <6.688750, 16.812937, 7.033805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.076614, 16.891912, 6.976152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243355, 0.835413, -0.492812,
		0.023111, 0.512936, 0.858116,
		0.969662, 0.197437, -0.144132,
		7.367513, 16.951143, 6.932912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.432175, 19.820408, 21.486814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.250967, 19.673037, 21.811539>,  <17.142242, 19.584614, 22.006372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.250967, 19.673037, 21.811539>,  <17.432175, 19.820408, 21.486814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.250967, 19.673037, 21.811539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300776, 0.794055, 0.528214,
		-0.839231, 0.483463, -0.248907,
		-0.453018, -0.368429, 0.811810,
		17.115061, 19.562508, 22.055082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.069593, 20.352808, 21.680916>,  <17.432175, 19.820408, 21.486814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.069593, 20.352808, 21.680916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.109215, 20.146578, 22.021357>,  <17.132988, 20.022840, 22.225620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.109215, 20.146578, 22.021357>,  <17.069593, 20.352808, 21.680916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.109215, 20.146578, 22.021357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131860, 0.854565, 0.502326,
		-0.986307, 0.062468, 0.152632,
		0.099055, -0.515573, 0.851101,
		17.138931, 19.991905, 22.276688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.676638, 20.762224, 22.213469>,  <17.069593, 20.352808, 21.680916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.676638, 20.762224, 22.213469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.911386, 20.501499, 22.405603>,  <17.052237, 20.345064, 22.520884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.911386, 20.501499, 22.405603>,  <16.676638, 20.762224, 22.213469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.911386, 20.501499, 22.405603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150876, 0.670888, 0.726048,
		-0.795497, -0.353627, 0.492069,
		0.586874, -0.651810, 0.480336,
		17.087448, 20.305956, 22.549704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.449055, 20.661274, 22.827082>,  <16.676638, 20.762224, 22.213469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.449055, 20.661274, 22.827082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.831493, 20.556627, 22.879896>,  <17.060957, 20.493839, 22.911585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.831493, 20.556627, 22.879896>,  <16.449055, 20.661274, 22.827082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.831493, 20.556627, 22.879896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086789, 0.683135, 0.725117,
		-0.279900, -0.681824, 0.675850,
		0.956098, -0.261617, 0.132034,
		17.118322, 20.478142, 22.919506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.537378, 20.542761, 23.503057>,  <16.449055, 20.661274, 22.827082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.537378, 20.542761, 23.503057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.908152, 20.609922, 23.368830>,  <17.130615, 20.650219, 23.288294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.908152, 20.609922, 23.368830>,  <16.537378, 20.542761, 23.503057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.908152, 20.609922, 23.368830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157659, 0.637253, 0.754356,
		0.340502, -0.752142, 0.564218,
		0.926932, 0.167905, -0.335568,
		17.186232, 20.660294, 23.268160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.894398, 20.753420, 24.107664>,  <16.537378, 20.542761, 23.503057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.894398, 20.753420, 24.107664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.153547, 20.830090, 23.812767>,  <17.309036, 20.876091, 23.635830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.153547, 20.830090, 23.812767>,  <16.894398, 20.753420, 24.107664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.153547, 20.830090, 23.812767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326646, 0.804425, 0.496189,
		0.688160, -0.562284, 0.458555,
		0.647872, 0.191672, -0.737240,
		17.347908, 20.887590, 23.591595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.582500, 20.814419, 24.431112>,  <16.894398, 20.753420, 24.107664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.582500, 20.814419, 24.431112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.588741, 20.999004, 24.076303>,  <17.592485, 21.109756, 23.863419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.588741, 20.999004, 24.076303>,  <17.582500, 20.814419, 24.431112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.588741, 20.999004, 24.076303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468069, 0.780551, 0.414308,
		0.883554, -0.421652, -0.203818,
		0.015603, 0.461465, -0.887021,
		17.593422, 21.137444, 23.810198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.262039, 21.092056, 24.422157>,  <17.582500, 20.814419, 24.431112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.262039, 21.092056, 24.422157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.011925, 21.282198, 24.174591>,  <17.861856, 21.396284, 24.026051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.011925, 21.282198, 24.174591>,  <18.262039, 21.092056, 24.422157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.011925, 21.282198, 24.174591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329540, 0.879732, 0.342745,
		0.707406, 0.010356, -0.706732,
		-0.625284, 0.475356, -0.618915,
		17.824339, 21.424805, 23.988916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.647648, 21.516817, 24.027769>,  <18.262039, 21.092056, 24.422157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.647648, 21.516817, 24.027769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.291376, 21.696558, 24.000120>,  <18.077614, 21.804401, 23.983532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.291376, 21.696558, 24.000120>,  <18.647648, 21.516817, 24.027769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.291376, 21.696558, 24.000120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430949, 0.882891, 0.186509,
		0.144834, 0.136331, -0.980019,
		-0.890677, 0.449351, -0.069121,
		18.024174, 21.831364, 23.979383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.845564, 22.126329, 23.793356>,  <18.647648, 21.516817, 24.027769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.845564, 22.126329, 23.793356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.469385, 22.185286, 23.915888>,  <18.243679, 22.220659, 23.989407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.469385, 22.185286, 23.915888>,  <18.845564, 22.126329, 23.793356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.469385, 22.185286, 23.915888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260689, 0.891043, 0.371597,
		-0.218182, 0.429323, -0.876401,
		-0.940446, 0.147392, 0.306329,
		18.187252, 22.229504, 24.007786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.666134, 22.847134, 23.667664>,  <18.845564, 22.126329, 23.793356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.666134, 22.847134, 23.667664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.385973, 22.743183, 23.933565>,  <18.217876, 22.680813, 24.093107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.385973, 22.743183, 23.933565>,  <18.666134, 22.847134, 23.667664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.385973, 22.743183, 23.933565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040157, 0.915537, 0.400224,
		-0.712617, 0.307013, -0.630809,
		-0.700403, -0.259875, 0.664756,
		18.175852, 22.665220, 24.132992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.225372, 23.396414, 23.655901>,  <18.666134, 22.847134, 23.667664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.225372, 23.396414, 23.655901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.156719, 23.204674, 24.000172>,  <18.115528, 23.089630, 24.206734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.156719, 23.204674, 24.000172>,  <18.225372, 23.396414, 23.655901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.156719, 23.204674, 24.000172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011391, 0.872616, 0.488273,
		-0.985095, 0.093608, -0.144309,
		-0.171633, -0.479352, 0.860676,
		18.105228, 23.060867, 24.258375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.663227, 23.733160, 23.941130>,  <18.225372, 23.396414, 23.655901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.663227, 23.733160, 23.941130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.851660, 23.560394, 24.248774>,  <17.964720, 23.456734, 24.433361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.851660, 23.560394, 24.248774>,  <17.663227, 23.733160, 23.941130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.851660, 23.560394, 24.248774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007963, 0.869801, 0.493338,
		-0.882054, -0.238526, 0.406307,
		0.471080, -0.431915, 0.769111,
		17.992985, 23.430820, 24.479507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.357607, 23.965055, 24.503372>,  <17.663227, 23.733160, 23.941130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.357607, 23.965055, 24.503372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.710026, 23.856304, 24.658207>,  <17.921478, 23.791054, 24.751108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.710026, 23.856304, 24.658207>,  <17.357607, 23.965055, 24.503372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.710026, 23.856304, 24.658207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009164, 0.827976, 0.560689,
		-0.472936, -0.490447, 0.731979,
		0.881049, -0.271878, 0.387085,
		17.974340, 23.774740, 24.774332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.928627, 24.206249, 24.894093>,  <17.357607, 23.965055, 24.503372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.928627, 24.206249, 24.894093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.799637, 24.560871, 24.761408>,  <16.722242, 24.773643, 24.681797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.799637, 24.560871, 24.761408>,  <16.928627, 24.206249, 24.894093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.799637, 24.560871, 24.761408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318707, -0.431663, -0.843856,
		-0.891311, -0.166406, 0.421752,
		-0.322478, 0.886553, -0.331711,
		16.702894, 24.826838, 24.661894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318987, 24.046772, 24.685839>,  <16.928627, 24.206249, 24.894093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.318987, 24.046772, 24.685839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.424101, 24.381714, 24.494095>,  <16.487169, 24.582678, 24.379049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.424101, 24.381714, 24.494095>,  <16.318987, 24.046772, 24.685839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.424101, 24.381714, 24.494095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271144, -0.412709, -0.869570,
		-0.925972, 0.358485, 0.118589,
		0.262785, 0.837353, -0.479358,
		16.502937, 24.632919, 24.350288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.738968, 24.269508, 24.363626>,  <16.318987, 24.046772, 24.685839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.738968, 24.269508, 24.363626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.045773, 24.438042, 24.170061>,  <16.229855, 24.539162, 24.053923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.045773, 24.438042, 24.170061>,  <15.738968, 24.269508, 24.363626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.045773, 24.438042, 24.170061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324930, -0.395269, -0.859176,
		-0.553277, 0.816235, -0.166271,
		0.767011, 0.421335, -0.483912,
		16.275875, 24.564442, 24.024887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.423762, 24.632027, 23.662148>,  <15.738968, 24.269508, 24.363626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.423762, 24.632027, 23.662148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.816971, 24.598608, 23.596798>,  <16.052896, 24.578556, 23.557589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.816971, 24.598608, 23.596798>,  <15.423762, 24.632027, 23.662148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.816971, 24.598608, 23.596798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182778, -0.367145, -0.912029,
		0.016215, 0.926404, -0.376181,
		0.983021, -0.083546, -0.163373,
		16.111877, 24.573544, 23.547787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.738956, 25.090343, 23.038729>,  <15.423762, 24.632027, 23.662148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.738956, 25.090343, 23.038729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.953332, 24.757677, 23.096832>,  <16.081957, 24.558077, 23.131695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.953332, 24.757677, 23.096832>,  <15.738956, 25.090343, 23.038729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.953332, 24.757677, 23.096832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140772, -0.257675, -0.955922,
		0.832438, 0.491866, -0.255174,
		0.535938, -0.831668, 0.145257,
		16.114113, 24.508177, 23.140409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.401484, 25.111448, 22.679239>,  <15.738956, 25.090343, 23.038729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.401484, 25.111448, 22.679239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.278387, 24.732634, 22.715939>,  <16.204529, 24.505344, 22.737959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.278387, 24.732634, 22.715939>,  <16.401484, 25.111448, 22.679239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.278387, 24.732634, 22.715939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114751, -0.132668, -0.984496,
		0.944525, -0.292443, 0.149500,
		-0.307743, -0.947036, 0.091750,
		16.186064, 24.448523, 22.743464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.291130, 24.795378, 22.086479>,  <16.401484, 25.111448, 22.679239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.291130, 24.795378, 22.086479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.226084, 24.432066, 22.240667>,  <16.187056, 24.214079, 22.333181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.226084, 24.432066, 22.240667>,  <16.291130, 24.795378, 22.086479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.226084, 24.432066, 22.240667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248573, -0.340360, -0.906844,
		0.954866, -0.243283, -0.170427,
		-0.162613, -0.908278, 0.385471,
		16.177299, 24.159582, 22.356308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.493496, 24.428883, 21.630919>,  <16.291130, 24.795378, 22.086479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.493496, 24.428883, 21.630919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.295553, 24.142321, 21.827646>,  <16.176788, 23.970385, 21.945683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.295553, 24.142321, 21.827646>,  <16.493496, 24.428883, 21.630919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.295553, 24.142321, 21.827646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240579, -0.430904, -0.869738,
		0.835009, -0.548715, 0.040884,
		-0.494855, -0.716403, 0.491818,
		16.147097, 23.927401, 21.975191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.825027, 23.668833, 21.538641>,  <16.493496, 24.428883, 21.630919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.825027, 23.668833, 21.538641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.436737, 23.622494, 21.622805>,  <16.203762, 23.594690, 21.673302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.436737, 23.622494, 21.622805>,  <16.825027, 23.668833, 21.538641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.436737, 23.622494, 21.622805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119666, -0.526278, -0.841850,
		0.208259, -0.842384, 0.497009,
		-0.970726, -0.115848, 0.210407,
		16.145519, 23.587740, 21.685926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.761787, 22.982189, 21.404503>,  <16.825027, 23.668833, 21.538641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.761787, 22.982189, 21.404503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.373884, 23.076214, 21.430782>,  <16.141142, 23.132629, 21.446550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.373884, 23.076214, 21.430782>,  <16.761787, 22.982189, 21.404503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.373884, 23.076214, 21.430782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216599, -0.704769, -0.675563,
		-0.112495, -0.669363, 0.734370,
		-0.969757, 0.235061, 0.065700,
		16.082956, 23.146732, 21.450493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.402124, 22.376043, 21.657946>,  <16.761787, 22.982189, 21.404503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.402124, 22.376043, 21.657946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.143242, 22.617760, 21.472061>,  <15.987912, 22.762791, 21.360531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.143242, 22.617760, 21.472061>,  <16.402124, 22.376043, 21.657946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.143242, 22.617760, 21.472061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227928, -0.735114, -0.638479,
		-0.727429, -0.307320, 0.613516,
		-0.647222, 0.604285, -0.464696,
		15.949080, 22.799047, 21.332647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.809591, 22.005123, 21.555540>,  <16.402124, 22.376043, 21.657946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.809591, 22.005123, 21.555540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.713928, 22.300831, 21.303736>,  <15.656530, 22.478256, 21.152653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.713928, 22.300831, 21.303736>,  <15.809591, 22.005123, 21.555540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.713928, 22.300831, 21.303736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195957, -0.671731, -0.714407,
		-0.951002, -0.047498, 0.305515,
		-0.239157, 0.739270, -0.629510,
		15.642181, 22.522612, 21.114883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.349789, 21.765272, 21.163698>,  <15.809591, 22.005123, 21.555540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.349789, 21.765272, 21.163698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.458058, 22.067905, 20.925600>,  <15.523020, 22.249485, 20.782742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.458058, 22.067905, 20.925600>,  <15.349789, 21.765272, 21.163698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.458058, 22.067905, 20.925600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142001, -0.580185, -0.802011,
		-0.952140, 0.301609, -0.049606,
		0.270674, 0.756582, -0.595247,
		15.539261, 22.294880, 20.747026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.844987, 21.943584, 20.624380>,  <15.349789, 21.765272, 21.163698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.844987, 21.943584, 20.624380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.197731, 22.069597, 20.484051>,  <15.409377, 22.145205, 20.399853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.197731, 22.069597, 20.484051>,  <14.844987, 21.943584, 20.624380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.197731, 22.069597, 20.484051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052042, -0.674466, -0.736470,
		-0.468632, 0.667720, -0.578389,
		0.881859, 0.315033, -0.350826,
		15.462289, 22.164106, 20.378803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.127474, 22.182461, 20.450748>,  <14.844987, 21.943584, 20.624380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.127474, 22.182461, 20.450748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.920524, 21.895168, 20.636852>,  <13.796353, 21.722792, 20.748514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.920524, 21.895168, 20.636852>,  <14.127474, 22.182461, 20.450748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.920524, 21.895168, 20.636852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216348, 0.635798, 0.740915,
		-0.827959, 0.282674, -0.484334,
		-0.517375, -0.718232, 0.465259,
		13.765311, 21.679699, 20.776430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.689576, 22.545280, 20.898540>,  <14.127474, 22.182461, 20.450748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.689576, 22.545280, 20.898540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.656650, 22.171644, 21.037506>,  <13.636894, 21.947462, 21.120886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.656650, 22.171644, 21.037506>,  <13.689576, 22.545280, 20.898540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.656650, 22.171644, 21.037506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240378, 0.356914, 0.902680,
		-0.967183, -0.009206, -0.253915,
		-0.082316, -0.934092, 0.347414,
		13.631955, 21.891417, 21.141731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.020271, 22.521685, 21.269609>,  <13.689576, 22.545280, 20.898540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.020271, 22.521685, 21.269609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.254581, 22.243216, 21.435600>,  <13.395167, 22.076134, 21.535194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.254581, 22.243216, 21.435600>,  <13.020271, 22.521685, 21.269609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.254581, 22.243216, 21.435600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176687, 0.390013, 0.903699,
		-0.790980, -0.602686, 0.105455,
		0.585775, -0.696175, 0.414979,
		13.430314, 22.034363, 21.560095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.672186, 22.253408, 21.869089>,  <13.020271, 22.521685, 21.269609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.672186, 22.253408, 21.869089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.060076, 22.170990, 21.921516>,  <13.292809, 22.121538, 21.952972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.060076, 22.170990, 21.921516>,  <12.672186, 22.253408, 21.869089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.060076, 22.170990, 21.921516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000999, 0.533378, 0.845877,
		-0.244200, -0.820398, 0.517023,
		0.969725, -0.206046, 0.131071,
		13.350993, 22.109177, 21.960838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.733944, 21.996592, 22.541683>,  <12.672186, 22.253408, 21.869089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.733944, 21.996592, 22.541683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.095266, 22.141468, 22.449720>,  <13.312059, 22.228394, 22.394543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.095266, 22.141468, 22.449720>,  <12.733944, 21.996592, 22.541683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.095266, 22.141468, 22.449720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064598, 0.414966, 0.907541,
		0.424121, -0.834632, 0.351441,
		0.903299, 0.362204, -0.229911,
		13.366258, 22.250126, 22.380749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.055227, 21.895834, 23.131306>,  <12.733944, 21.996592, 22.541683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.055227, 21.895834, 23.131306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.276008, 22.159500, 22.927011>,  <13.408476, 22.317699, 22.804436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.276008, 22.159500, 22.927011>,  <13.055227, 21.895834, 23.131306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.276008, 22.159500, 22.927011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298197, 0.415957, 0.859103,
		0.778736, -0.626482, 0.033026,
		0.551950, 0.659166, -0.510736,
		13.441592, 22.357250, 22.773790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.564996, 22.123346, 23.610277>,  <13.055227, 21.895834, 23.131306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.564996, 22.123346, 23.610277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.600513, 22.409508, 23.333057>,  <13.621824, 22.581203, 23.166725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.600513, 22.409508, 23.333057>,  <13.564996, 22.123346, 23.610277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.600513, 22.409508, 23.333057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386941, 0.616374, 0.685828,
		0.917819, -0.329066, -0.222088,
		0.088794, 0.715402, -0.693049,
		13.627151, 22.624128, 23.125143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.086953, 21.733807, 24.035215>,  <13.564996, 22.123346, 23.610277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.086953, 21.733807, 24.035215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.850367, 21.596027, 24.326838>,  <13.708414, 21.513361, 24.501810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.850367, 21.596027, 24.326838>,  <14.086953, 21.733807, 24.035215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.850367, 21.596027, 24.326838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022513, -0.896760, -0.441944,
		0.806015, -0.277808, 0.522650,
		-0.591467, -0.344447, 0.729056,
		13.672926, 21.492693, 24.545555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.390510, 21.201759, 24.380484>,  <14.086953, 21.733807, 24.035215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.390510, 21.201759, 24.380484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.992052, 21.166674, 24.381214>,  <13.752977, 21.145622, 24.381653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.992052, 21.166674, 24.381214>,  <14.390510, 21.201759, 24.380484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.992052, 21.166674, 24.381214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081467, -0.932527, -0.351790,
		0.032558, -0.350285, 0.936078,
		-0.996144, -0.087714, 0.001825,
		13.693209, 21.140360, 24.381762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.248059, 20.573004, 24.604990>,  <14.390510, 21.201759, 24.380484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.248059, 20.573004, 24.604990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.916590, 20.654953, 24.396635>,  <13.717708, 20.704123, 24.271622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.916590, 20.654953, 24.396635>,  <14.248059, 20.573004, 24.604990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.916590, 20.654953, 24.396635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192943, -0.769015, -0.609417,
		-0.525426, -0.605510, 0.597733,
		-0.828674, 0.204875, -0.520889,
		13.667988, 20.716415, 24.240368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.948668, 19.901155, 24.462740>,  <14.248059, 20.573004, 24.604990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.948668, 19.901155, 24.462740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.762458, 20.135145, 24.197081>,  <13.650731, 20.275539, 24.037685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.762458, 20.135145, 24.197081>,  <13.948668, 19.901155, 24.462740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.762458, 20.135145, 24.197081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037992, -0.762936, -0.645357,
		-0.884218, -0.275199, 0.377391,
		-0.465527, 0.584974, -0.664146,
		13.622800, 20.310637, 23.997837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.271489, 19.516350, 24.310369>,  <13.948668, 19.901155, 24.462740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.271489, 19.516350, 24.310369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.341658, 19.788361, 24.025614>,  <13.383759, 19.951567, 23.854759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.341658, 19.788361, 24.025614>,  <13.271489, 19.516350, 24.310369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.341658, 19.788361, 24.025614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034206, -0.718457, -0.694730,
		-0.983899, 0.146221, -0.102771,
		0.175420, 0.680029, -0.711891,
		13.394283, 19.992369, 23.812046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.740139, 19.564285, 23.860968>,  <13.271489, 19.516350, 24.310369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.740139, 19.564285, 23.860968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.022655, 19.725643, 23.628271>,  <13.192165, 19.822458, 23.488653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.022655, 19.725643, 23.628271>,  <12.740139, 19.564285, 23.860968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.022655, 19.725643, 23.628271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093611, -0.761326, -0.641576,
		-0.701706, 0.507596, -0.499955,
		0.706290, 0.403396, -0.581744,
		13.234543, 19.846663, 23.453749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.394347, 19.526154, 23.232191>,  <12.740139, 19.564285, 23.860968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.394347, 19.526154, 23.232191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.788480, 19.560717, 23.173330>,  <13.024960, 19.581455, 23.138014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.788480, 19.560717, 23.173330>,  <12.394347, 19.526154, 23.232191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.788480, 19.560717, 23.173330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062960, -0.617412, -0.784116,
		-0.158608, 0.781880, -0.602916,
		0.985332, 0.086408, -0.147153,
		13.084080, 19.586639, 23.129185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<20.040979, 20.323965, 25.395716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.381378, 20.276003, 25.191196>,  <20.585617, 20.247225, 25.068485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.381378, 20.276003, 25.191196>,  <20.040979, 20.323965, 25.395716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.381378, 20.276003, 25.191196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258316, -0.943241, -0.208733,
		-0.457249, 0.309708, -0.833669,
		0.850997, -0.119907, -0.511298,
		20.636677, 20.240030, 25.037807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.632330, 19.598520, 25.444487>,  <20.040979, 20.323965, 25.395716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.632330, 19.598520, 25.444487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.351177, 19.333008, 25.342232>,  <19.182486, 19.173700, 25.280878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.351177, 19.333008, 25.342232>,  <19.632330, 19.598520, 25.444487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.351177, 19.333008, 25.342232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679693, 0.732721, -0.033733,
		0.209702, 0.150044, -0.966184,
		-0.702882, -0.663782, -0.255637,
		19.140312, 19.133873, 25.265541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.347206, 19.903376, 24.743097>,  <19.632330, 19.598520, 25.444487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.347206, 19.903376, 24.743097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.089016, 19.656286, 24.922777>,  <18.934101, 19.508034, 25.030584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.089016, 19.656286, 24.922777>,  <19.347206, 19.903376, 24.743097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.089016, 19.656286, 24.922777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698295, 0.715546, -0.019423,
		-0.309425, -0.326211, -0.893220,
		-0.645476, -0.617721, 0.449200,
		18.895372, 19.470970, 25.057537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.653578, 20.050848, 24.467316>,  <19.347206, 19.903376, 24.743097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.653578, 20.050848, 24.467316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.542164, 19.886337, 24.814480>,  <18.475315, 19.787630, 25.022778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.542164, 19.886337, 24.814480>,  <18.653578, 20.050848, 24.467316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.542164, 19.886337, 24.814480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900495, 0.426056, -0.087095,
		-0.333959, -0.805808, -0.489024,
		-0.278534, -0.411277, 0.867911,
		18.458603, 19.762955, 25.074854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.075037, 19.633099, 24.366455>,  <18.653578, 20.050848, 24.467316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.075037, 19.633099, 24.366455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.049780, 19.804659, 24.726912>,  <18.034626, 19.907595, 24.943186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.049780, 19.804659, 24.726912>,  <18.075037, 19.633099, 24.366455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.049780, 19.804659, 24.726912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880290, 0.401492, -0.252772,
		-0.470215, -0.809227, 0.352206,
		-0.063142, 0.428900, 0.901142,
		18.030838, 19.933329, 24.997253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.446518, 19.573170, 24.643209>,  <18.075037, 19.633099, 24.366455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.446518, 19.573170, 24.643209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.521513, 19.912678, 24.840973>,  <17.566511, 20.116383, 24.959631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.521513, 19.912678, 24.840973>,  <17.446518, 19.573170, 24.643209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.521513, 19.912678, 24.840973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858948, 0.385840, -0.336655,
		-0.476504, -0.361553, 0.801388,
		0.187489, 0.848768, 0.494409,
		17.577759, 20.167309, 24.989296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.606836, 19.749947, 25.314947>,  <17.446518, 19.573170, 24.643209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.606836, 19.749947, 25.314947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.264977, 19.674702, 25.508520>,  <17.059860, 19.629555, 25.624664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.264977, 19.674702, 25.508520>,  <17.606836, 19.749947, 25.314947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.264977, 19.674702, 25.508520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060196, -0.889876, -0.452214,
		0.515708, -0.415614, 0.749207,
		-0.854647, -0.188111, 0.483934,
		17.008583, 19.618269, 25.653700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.664547, 18.994326, 25.495739>,  <17.606836, 19.749947, 25.314947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.664547, 18.994326, 25.495739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.288397, 19.124983, 25.457796>,  <17.062706, 19.203377, 25.435030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.288397, 19.124983, 25.457796>,  <17.664547, 18.994326, 25.495739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.288397, 19.124983, 25.457796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265511, -0.879238, -0.395531,
		-0.212600, -0.346761, 0.913541,
		-0.940375, 0.326645, -0.094857,
		17.006285, 19.222977, 25.429338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.308258, 18.502142, 25.818621>,  <17.664547, 18.994326, 25.495739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.308258, 18.502142, 25.818621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.059788, 18.689919, 25.567619>,  <16.910706, 18.802586, 25.417019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.059788, 18.689919, 25.567619>,  <17.308258, 18.502142, 25.818621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.059788, 18.689919, 25.567619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363571, -0.881970, -0.299908,
		-0.694230, 0.041847, 0.718536,
		-0.621177, 0.469444, -0.627505,
		16.873434, 18.830751, 25.379368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.775162, 18.056074, 25.802965>,  <17.308258, 18.502142, 25.818621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.775162, 18.056074, 25.802965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.680185, 18.275320, 25.482168>,  <16.623199, 18.406868, 25.289690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.680185, 18.275320, 25.482168>,  <16.775162, 18.056074, 25.802965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.680185, 18.275320, 25.482168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406709, -0.805850, -0.430342,
		-0.882162, 0.223996, 0.414265,
		-0.237440, 0.548117, -0.801991,
		16.608953, 18.439754, 25.241571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.155165, 17.750006, 25.593756>,  <16.775162, 18.056074, 25.802965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.155165, 17.750006, 25.593756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.317194, 17.957647, 25.292706>,  <16.414412, 18.082233, 25.112076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.317194, 17.957647, 25.292706>,  <16.155165, 17.750006, 25.593756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.317194, 17.957647, 25.292706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175846, -0.763582, -0.621306,
		-0.897215, 0.384020, -0.218024,
		0.405073, 0.519106, -0.752626,
		16.438715, 18.113379, 25.066917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.758062, 17.603018, 25.039383>,  <16.155165, 17.750006, 25.593756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.758062, 17.603018, 25.039383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.101673, 17.729507, 24.878349>,  <16.307840, 17.805401, 24.781729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.101673, 17.729507, 24.878349>,  <15.758062, 17.603018, 25.039383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.101673, 17.729507, 24.878349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018243, -0.804814, -0.593246,
		-0.511605, 0.502270, -0.697126,
		0.859027, 0.316226, -0.402584,
		16.359381, 17.824375, 24.757574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.977857, 17.442997, 25.122374>,  <15.758062, 17.603018, 25.039383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.977857, 17.442997, 25.122374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.611186, 17.354221, 25.255306>,  <14.391184, 17.300957, 25.335066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.611186, 17.354221, 25.255306>,  <14.977857, 17.442997, 25.122374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.611186, 17.354221, 25.255306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088384, 0.923608, 0.373009,
		-0.389731, 0.312556, -0.866267,
		-0.916678, -0.221937, 0.332334,
		14.336183, 17.287640, 25.355007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.759385, 18.024101, 25.061428>,  <14.977857, 17.442997, 25.122374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.759385, 18.024101, 25.061428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.489000, 17.845581, 25.295996>,  <14.326769, 17.738468, 25.436737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.489000, 17.845581, 25.295996>,  <14.759385, 18.024101, 25.061428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.489000, 17.845581, 25.295996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155385, 0.864183, 0.478584,
		-0.720368, 0.232384, -0.653504,
		-0.675963, -0.446301, 0.586421,
		14.286211, 17.711691, 25.471922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.034694, 18.442995, 25.028561>,  <14.759385, 18.024101, 25.061428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.034694, 18.442995, 25.028561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.080770, 18.248102, 25.374817>,  <14.108417, 18.131166, 25.582571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.080770, 18.248102, 25.374817>,  <14.034694, 18.442995, 25.028561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.080770, 18.248102, 25.374817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072082, 0.865045, 0.496489,
		-0.990725, -0.119589, 0.064525,
		0.115192, -0.487233, 0.865641,
		14.115328, 18.101933, 25.634510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.413236, 18.596832, 25.384483>,  <14.034694, 18.442995, 25.028561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.413236, 18.596832, 25.384483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.690976, 18.493286, 25.653070>,  <13.857620, 18.431158, 25.814222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.690976, 18.493286, 25.653070>,  <13.413236, 18.596832, 25.384483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.690976, 18.493286, 25.653070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171654, 0.846553, 0.503868,
		-0.698865, -0.465121, 0.543369,
		0.694351, -0.258864, 0.671466,
		13.899282, 18.415627, 25.854509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.131349, 18.611961, 26.025724>,  <13.413236, 18.596832, 25.384483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.131349, 18.611961, 26.025724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.518638, 18.651079, 26.117794>,  <13.751011, 18.674549, 26.173037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.518638, 18.651079, 26.117794>,  <13.131349, 18.611961, 26.025724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.518638, 18.651079, 26.117794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224660, 0.744473, 0.628719,
		-0.109874, -0.660451, 0.742786,
		0.968223, 0.097794, 0.230175,
		13.809105, 18.680418, 26.186846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.148287, 18.809288, 26.765865>,  <13.131349, 18.611961, 26.025724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.148287, 18.809288, 26.765865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.523725, 18.900352, 26.662163>,  <13.748987, 18.954990, 26.599941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.523725, 18.900352, 26.662163>,  <13.148287, 18.809288, 26.765865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.523725, 18.900352, 26.662163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012162, 0.729110, 0.684288,
		0.344811, -0.645422, 0.681569,
		0.938593, 0.227661, -0.259255,
		13.805303, 18.968651, 26.584387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.517054, 19.003416, 27.410776>,  <13.148287, 18.809288, 26.765865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.517054, 19.003416, 27.410776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.729850, 19.163540, 27.112316>,  <13.857528, 19.259613, 26.933241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.729850, 19.163540, 27.112316>,  <13.517054, 19.003416, 27.410776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.729850, 19.163540, 27.112316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310055, 0.727899, 0.611579,
		0.787942, -0.556702, 0.263117,
		0.531990, 0.400308, -0.746150,
		13.889447, 19.283632, 26.888472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.134301, 19.288630, 27.721712>,  <13.517054, 19.003416, 27.410776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.134301, 19.288630, 27.721712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.101676, 19.471561, 27.367493>,  <14.082101, 19.581320, 27.154961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.101676, 19.471561, 27.367493>,  <14.134301, 19.288630, 27.721712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.101676, 19.471561, 27.367493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263913, 0.866704, 0.423290,
		0.961092, -0.199183, -0.191385,
		-0.081562, 0.457329, -0.885549,
		14.077208, 19.608761, 27.101828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.624282, 19.782351, 27.801550>,  <14.134301, 19.288630, 27.721712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.624282, 19.782351, 27.801550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.433830, 19.926937, 27.480890>,  <14.319559, 20.013689, 27.288494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.433830, 19.926937, 27.480890>,  <14.624282, 19.782351, 27.801550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.433830, 19.926937, 27.480890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248886, 0.929730, 0.271398,
		0.843420, -0.070299, -0.532636,
		-0.476129, 0.361468, -0.801649,
		14.290992, 20.035378, 27.240395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.918522, 20.383961, 27.584311>,  <14.624282, 19.782351, 27.801550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.918522, 20.383961, 27.584311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.565166, 20.419554, 27.400267>,  <14.353151, 20.440910, 27.289841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.565166, 20.419554, 27.400267>,  <14.918522, 20.383961, 27.584311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.565166, 20.419554, 27.400267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021108, 0.973257, 0.228747,
		0.468159, 0.211785, -0.857889,
		-0.883392, 0.088982, -0.460110,
		14.300148, 20.446249, 27.262234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.078267, 20.837635, 27.080893>,  <14.918522, 20.383961, 27.584311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.078267, 20.837635, 27.080893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.692645, 20.822155, 27.186041>,  <14.461272, 20.812868, 27.249130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.692645, 20.822155, 27.186041>,  <15.078267, 20.837635, 27.080893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.692645, 20.822155, 27.186041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044806, 0.951491, 0.304397,
		-0.261899, 0.305234, -0.915555,
		-0.964055, -0.038699, 0.262871,
		14.403429, 20.810545, 27.264902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.802729, 21.440742, 26.931879>,  <15.078267, 20.837635, 27.080893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.802729, 21.440742, 26.931879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.520301, 21.327391, 27.191467>,  <14.350844, 21.259380, 27.347219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.520301, 21.327391, 27.191467>,  <14.802729, 21.440742, 26.931879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.520301, 21.327391, 27.191467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166583, 0.824256, 0.541157,
		-0.688270, 0.490202, -0.534776,
		-0.706069, -0.283378, 0.648971,
		14.308480, 21.242378, 27.386158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.468051, 22.087286, 27.089497>,  <14.802729, 21.440742, 26.931879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.468051, 22.087286, 27.089497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.352508, 21.858944, 27.396919>,  <14.283181, 21.721939, 27.581373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.352508, 21.858944, 27.396919>,  <14.468051, 22.087286, 27.089497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.352508, 21.858944, 27.396919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078006, 0.786077, 0.613187,
		-0.954188, 0.237077, -0.182535,
		-0.288860, -0.570857, 0.768559,
		14.265850, 21.687687, 27.627487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.875600, 22.449715, 27.443211>,  <14.468051, 22.087286, 27.089497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.875600, 22.449715, 27.443211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.075961, 22.195486, 27.678205>,  <14.196177, 22.042948, 27.819202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.075961, 22.195486, 27.678205>,  <13.875600, 22.449715, 27.443211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.075961, 22.195486, 27.678205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350819, 0.769618, 0.533493,
		-0.791215, -0.061126, 0.608475,
		0.500903, -0.635572, 0.587489,
		14.226233, 22.004814, 27.854452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.352486, 21.944584, 27.375433>,  <13.875600, 22.449715, 27.443211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.352486, 21.944584, 27.375433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.397657, 22.322014, 27.250910>,  <13.424760, 22.548471, 27.176197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.397657, 22.322014, 27.250910>,  <13.352486, 21.944584, 27.375433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.397657, 22.322014, 27.250910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266003, -0.273163, -0.924459,
		-0.957335, 0.187206, 0.220147,
		0.112928, 0.943576, -0.311306,
		13.431536, 22.605087, 27.157518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.774878, 22.065300, 26.946472>,  <13.352486, 21.944584, 27.375433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.774878, 22.065300, 26.946472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.045610, 22.339987, 26.840403>,  <13.208050, 22.504799, 26.776760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.045610, 22.339987, 26.840403>,  <12.774878, 22.065300, 26.946472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.045610, 22.339987, 26.840403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178852, -0.196030, -0.964149,
		-0.714081, 0.699994, -0.009858,
		0.676831, 0.686717, -0.265176,
		13.248660, 22.546001, 26.760849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.411736, 22.436018, 26.423594>,  <12.774878, 22.065300, 26.946472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.411736, 22.436018, 26.423594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.799454, 22.525324, 26.382372>,  <13.032084, 22.578907, 26.357639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.799454, 22.525324, 26.382372>,  <12.411736, 22.436018, 26.423594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.799454, 22.525324, 26.382372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026727, -0.320953, -0.946718,
		-0.244445, 0.920403, -0.305131,
		0.969295, 0.223265, -0.103055,
		13.090242, 22.592304, 26.351456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.377276, 22.626049, 25.810644>,  <12.411736, 22.436018, 26.423594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.377276, 22.626049, 25.810644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.766372, 22.553156, 25.868015>,  <12.999828, 22.509420, 25.902439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.766372, 22.553156, 25.868015>,  <12.377276, 22.626049, 25.810644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.766372, 22.553156, 25.868015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050639, -0.436645, -0.898207,
		0.226313, 0.880983, -0.415513,
		0.972738, -0.182235, 0.143430,
		13.058193, 22.498486, 25.911045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.633891, 22.586067, 25.044333>,  <12.377276, 22.626049, 25.810644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.633891, 22.586067, 25.044333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.956577, 22.438303, 25.228830>,  <13.150189, 22.349646, 25.339529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.956577, 22.438303, 25.228830>,  <12.633891, 22.586067, 25.044333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.956577, 22.438303, 25.228830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235192, -0.515340, -0.824081,
		0.542121, 0.773280, -0.328851,
		0.806715, -0.369408, 0.461246,
		13.198592, 22.327480, 25.367205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.284456, 22.673136, 24.647045>,  <12.633891, 22.586067, 25.044333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.284456, 22.673136, 24.647045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.361341, 22.361780, 24.886099>,  <13.407473, 22.174967, 25.029531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.361341, 22.361780, 24.886099>,  <13.284456, 22.673136, 24.647045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.361341, 22.361780, 24.886099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278164, -0.540797, -0.793828,
		0.941105, 0.318824, 0.112572,
		0.192213, -0.778389, 0.597632,
		13.419005, 22.128263, 25.065388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.819801, 22.324951, 24.317091>,  <13.284456, 22.673136, 24.647045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.819801, 22.324951, 24.317091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.715286, 22.043009, 24.580881>,  <13.652577, 21.873844, 24.739155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.715286, 22.043009, 24.580881>,  <13.819801, 22.324951, 24.317091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.715286, 22.043009, 24.580881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019790, -0.686977, -0.726410,
		0.965058, -0.176751, 0.193447,
		-0.261287, -0.704856, 0.659475,
		13.636900, 21.831553, 24.778723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.226582, 22.485165, 23.784027>,  <13.819801, 22.324951, 24.317091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.226582, 22.485165, 23.784027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.025900, 22.751247, 23.562834>,  <13.905491, 22.910898, 23.430119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.025900, 22.751247, 23.562834>,  <14.226582, 22.485165, 23.784027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.025900, 22.751247, 23.562834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355270, 0.741307, 0.569427,
		0.788718, 0.089225, -0.608245,
		-0.501703, 0.665209, -0.552984,
		13.875389, 22.950809, 23.396938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.683693, 22.994085, 23.498512>,  <14.226582, 22.485165, 23.784027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.683693, 22.994085, 23.498512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.320636, 23.161003, 23.516638>,  <14.102801, 23.261154, 23.527514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.320636, 23.161003, 23.516638>,  <14.683693, 22.994085, 23.498512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.320636, 23.161003, 23.516638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368276, 0.739895, 0.562963,
		0.201394, 0.527657, -0.825239,
		-0.907642, 0.417293, 0.045313,
		14.048344, 23.286192, 23.530231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.762715, 23.679560, 23.636326>,  <14.683693, 22.994085, 23.498512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.762715, 23.679560, 23.636326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.362813, 23.687243, 23.640701>,  <14.122871, 23.691853, 23.643328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.362813, 23.687243, 23.640701>,  <14.762715, 23.679560, 23.636326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.362813, 23.687243, 23.640701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022020, 0.822862, 0.567815,
		0.001903, 0.567917, -0.823083,
		-0.999756, 0.019205, 0.010940,
		14.062886, 23.693005, 23.643984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.567794, 24.397543, 23.380505>,  <14.762715, 23.679560, 23.636326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.567794, 24.397543, 23.380505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.306635, 24.222900, 23.628086>,  <14.149940, 24.118114, 23.776634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.306635, 24.222900, 23.628086>,  <14.567794, 24.397543, 23.380505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.306635, 24.222900, 23.628086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070976, 0.778296, 0.623873,
		-0.754114, 0.451255, -0.477158,
		-0.652897, -0.436605, 0.618953,
		14.110765, 24.091919, 23.813772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.280779, 24.945030, 23.613756>,  <14.567794, 24.397543, 23.380505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.280779, 24.945030, 23.613756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.196319, 24.656158, 23.877232>,  <14.145642, 24.482836, 24.035316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.196319, 24.656158, 23.877232>,  <14.280779, 24.945030, 23.613756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.196319, 24.656158, 23.877232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012211, 0.671882, 0.740558,
		-0.977377, 0.164413, -0.133050,
		-0.211151, -0.722180, 0.658690,
		14.132974, 24.439505, 24.074839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.916801, 25.257868, 24.129765>,  <14.280779, 24.945030, 23.613756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.916801, 25.257868, 24.129765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.040483, 24.919342, 24.303267>,  <14.114693, 24.716227, 24.407368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.040483, 24.919342, 24.303267>,  <13.916801, 25.257868, 24.129765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.040483, 24.919342, 24.303267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164629, 0.496857, 0.852074,
		-0.936638, -0.192056, 0.292959,
		0.309205, -0.846314, 0.433757,
		14.133245, 24.665447, 24.433393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.429861, 25.121933, 24.688627>,  <13.916801, 25.257868, 24.129765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.429861, 25.121933, 24.688627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.769173, 24.923632, 24.763086>,  <13.972759, 24.804651, 24.807762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.769173, 24.923632, 24.763086>,  <13.429861, 25.121933, 24.688627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.769173, 24.923632, 24.763086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134887, 0.542206, 0.829348,
		-0.512082, -0.678410, 0.526813,
		0.848279, -0.495755, 0.186146,
		14.023657, 24.774906, 24.818930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.454015, 25.077566, 25.360231>,  <13.429861, 25.121933, 24.688627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.454015, 25.077566, 25.360231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.836281, 24.990784, 25.280596>,  <14.065640, 24.938715, 25.232815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.836281, 24.990784, 25.280596>,  <13.454015, 25.077566, 25.360231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.836281, 24.990784, 25.280596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293582, 0.649944, 0.700986,
		-0.022687, -0.728356, 0.684823,
		0.955665, -0.216955, -0.199087,
		14.122980, 24.925697, 25.220869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.724606, 24.950806, 25.978878>,  <13.454015, 25.077566, 25.360231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.724606, 24.950806, 25.978878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.044385, 25.012815, 25.746723>,  <14.236253, 25.050020, 25.607430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.044385, 25.012815, 25.746723>,  <13.724606, 24.950806, 25.978878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.044385, 25.012815, 25.746723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419599, 0.547299, 0.724155,
		0.429905, -0.822455, 0.372491,
		0.799449, 0.155021, -0.580388,
		14.284220, 25.059322, 25.572607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.281773, 13.173979, 14.636654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.612437, 13.396611, 14.603550>,  <14.810836, 13.530190, 14.583688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.612437, 13.396611, 14.603550>,  <14.281773, 13.173979, 14.636654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.612437, 13.396611, 14.603550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271114, 0.522840, 0.808168,
		0.493082, -0.645643, 0.583108,
		0.826660, 0.556582, -0.082760,
		14.860435, 13.563585, 14.578722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.553858, 13.286834, 15.363467>,  <14.281773, 13.173979, 14.636654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.553858, 13.286834, 15.363467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.722829, 13.572347, 15.140015>,  <14.824212, 13.743654, 15.005943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.722829, 13.572347, 15.140015>,  <14.553858, 13.286834, 15.363467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.722829, 13.572347, 15.140015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149651, 0.662788, 0.733701,
		0.893957, -0.226336, 0.386799,
		0.422428, 0.713782, -0.558633,
		14.849557, 13.786481, 14.972425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.924076, 13.678752, 15.813676>,  <14.553858, 13.286834, 15.363467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.924076, 13.678752, 15.813676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.880430, 13.930200, 15.505668>,  <14.854243, 14.081068, 15.320863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.880430, 13.930200, 15.505668>,  <14.924076, 13.678752, 15.813676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.880430, 13.930200, 15.505668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097001, 0.764216, 0.637625,
		0.989285, 0.144267, -0.022410,
		-0.109114, 0.628619, -0.770021,
		14.847696, 14.118785, 15.274661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.238006, 14.264672, 16.037502>,  <14.924076, 13.678752, 15.813676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.238006, 14.264672, 16.037502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.043796, 14.410079, 15.719479>,  <14.927270, 14.497323, 15.528664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.043796, 14.410079, 15.719479>,  <15.238006, 14.264672, 16.037502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.043796, 14.410079, 15.719479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252392, 0.812437, 0.525590,
		0.836998, 0.455854, -0.302709,
		-0.485524, 0.363517, -0.795061,
		14.898138, 14.519134, 15.480960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.457198, 14.908459, 15.944894>,  <15.238006, 14.264672, 16.037502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.457198, 14.908459, 15.944894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.096229, 14.892147, 15.773328>,  <14.879647, 14.882360, 15.670388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.096229, 14.892147, 15.773328>,  <15.457198, 14.908459, 15.944894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.096229, 14.892147, 15.773328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279090, 0.813747, 0.509827,
		0.328239, 0.579786, -0.745726,
		-0.902423, -0.040780, -0.428916,
		14.825501, 14.879913, 15.644653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.298105, 15.568064, 15.753771>,  <15.457198, 14.908459, 15.944894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.298105, 15.568064, 15.753771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.940997, 15.388223, 15.765231>,  <14.726732, 15.280318, 15.772107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.940997, 15.388223, 15.765231>,  <15.298105, 15.568064, 15.753771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.940997, 15.388223, 15.765231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388461, 0.800451, 0.456484,
		-0.228170, 0.396405, -0.889270,
		-0.892769, -0.449602, 0.028651,
		14.673166, 15.253342, 15.773827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.804191, 16.065500, 15.454938>,  <15.298105, 15.568064, 15.753771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.804191, 16.065500, 15.454938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.601881, 15.804541, 15.680706>,  <14.480495, 15.647964, 15.816167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.601881, 15.804541, 15.680706>,  <14.804191, 16.065500, 15.454938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.601881, 15.804541, 15.680706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523865, 0.752096, 0.399897,
		-0.685389, -0.093422, -0.722159,
		-0.505773, -0.652399, 0.564419,
		14.450149, 15.608821, 15.850032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.100180, 16.311695, 15.365944>,  <14.804191, 16.065500, 15.454938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.100180, 16.311695, 15.365944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.133323, 16.090477, 15.697553>,  <14.153209, 15.957747, 15.896518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.133323, 16.090477, 15.697553>,  <14.100180, 16.311695, 15.365944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.133323, 16.090477, 15.697553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455305, 0.718975, 0.525139,
		-0.886472, -0.420969, -0.192232,
		0.082857, -0.553046, 0.829021,
		14.158180, 15.924563, 15.946259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.547368, 16.506308, 15.770868>,  <14.100180, 16.311695, 15.365944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.547368, 16.506308, 15.770868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.795471, 16.336748, 16.034864>,  <13.944333, 16.235012, 16.193262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.795471, 16.336748, 16.034864>,  <13.547368, 16.506308, 15.770868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.795471, 16.336748, 16.034864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342113, 0.610958, 0.713925,
		-0.705860, -0.668610, 0.233930,
		0.620258, -0.423901, 0.659990,
		13.981548, 16.209578, 16.232862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.116055, 16.365114, 16.308254>,  <13.547368, 16.506308, 15.770868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.116055, 16.365114, 16.308254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.489880, 16.382269, 16.449537>,  <13.714174, 16.392563, 16.534307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.489880, 16.382269, 16.449537>,  <13.116055, 16.365114, 16.308254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.489880, 16.382269, 16.449537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302473, 0.618521, 0.725218,
		-0.187364, -0.784597, 0.591018,
		0.934561, 0.042888, 0.353208,
		13.770248, 16.395136, 16.555500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.947276, 16.270613, 16.977751>,  <13.116055, 16.365114, 16.308254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.947276, 16.270613, 16.977751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.302925, 16.445723, 16.924362>,  <13.516315, 16.550789, 16.892328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.302925, 16.445723, 16.924362>,  <12.947276, 16.270613, 16.977751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.302925, 16.445723, 16.924362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251386, 0.710844, 0.656891,
		0.382447, -0.550504, 0.742078,
		0.889123, 0.437774, -0.133471,
		13.569662, 16.577055, 16.884321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.164096, 16.393198, 17.631104>,  <12.947276, 16.270613, 16.977751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.164096, 16.393198, 17.631104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.379422, 16.642031, 17.403688>,  <13.508618, 16.791330, 17.267241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.379422, 16.642031, 17.403688>,  <13.164096, 16.393198, 17.631104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.379422, 16.642031, 17.403688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188789, 0.746495, 0.638047,
		0.821325, -0.236138, 0.519292,
		0.538316, 0.622080, -0.568535,
		13.540917, 16.828655, 17.233128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.453467, 15.794934, 18.085814>,  <13.164096, 16.393198, 17.631104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.453467, 15.794934, 18.085814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.113072, 15.745834, 18.290070>,  <12.908835, 15.716374, 18.412622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.113072, 15.745834, 18.290070>,  <13.453467, 15.794934, 18.085814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.113072, 15.745834, 18.290070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285162, -0.708494, -0.645537,
		0.441025, -0.694959, 0.567916,
		-0.850988, -0.122750, 0.510640,
		12.857776, 15.709009, 18.443262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.419144, 15.023936, 18.140680>,  <13.453467, 15.794934, 18.085814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.419144, 15.023936, 18.140680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.054873, 15.172330, 18.213387>,  <12.836311, 15.261366, 18.257011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.054873, 15.172330, 18.213387>,  <13.419144, 15.023936, 18.140680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.054873, 15.172330, 18.213387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409821, -0.755775, -0.510735,
		-0.052099, -0.539607, 0.840304,
		-0.910677, 0.370983, 0.181768,
		12.781671, 15.283625, 18.267918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.982251, 14.438211, 18.257021>,  <13.419144, 15.023936, 18.140680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.982251, 14.438211, 18.257021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.728748, 14.736448, 18.174614>,  <12.576647, 14.915391, 18.125170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.728748, 14.736448, 18.174614>,  <12.982251, 14.438211, 18.257021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.728748, 14.736448, 18.174614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494136, -0.595132, -0.633756,
		-0.595132, -0.299847, 0.745593,
		0.633756, -0.745593, 0.206018,
		12.538621, 14.960126, 18.112808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.387854, 14.202599, 18.444891>,  <12.982251, 14.438211, 18.257021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.387854, 14.202599, 18.444891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.307663, 14.501136, 18.191031>,  <12.259548, 14.680258, 18.038715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.307663, 14.501136, 18.191031>,  <12.387854, 14.202599, 18.444891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.307663, 14.501136, 18.191031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583886, -0.611203, -0.534329,
		-0.786693, 0.263442, 0.558312,
		-0.200477, 0.746343, -0.634650,
		12.247519, 14.725039, 18.000635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.600362, 14.120938, 18.340963>,  <12.387854, 14.202599, 18.444891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.600362, 14.120938, 18.340963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.730417, 14.362788, 18.050112>,  <11.808451, 14.507898, 17.875601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.730417, 14.362788, 18.050112>,  <11.600362, 14.120938, 18.340963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.730417, 14.362788, 18.050112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477087, -0.559006, -0.678159,
		-0.816501, 0.567398, 0.106705,
		0.325137, 0.604625, -0.727127,
		11.827958, 14.544176, 17.831974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.977378, 14.406144, 17.896566>,  <11.600362, 14.120938, 18.340963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.977378, 14.406144, 17.896566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.303205, 14.418683, 17.664877>,  <11.498701, 14.426207, 17.525864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.303205, 14.418683, 17.664877>,  <10.977378, 14.406144, 17.896566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.303205, 14.418683, 17.664877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470823, -0.547536, -0.691758,
		-0.338829, 0.836195, -0.431246,
		0.814567, 0.031347, -0.579221,
		11.547575, 14.428087, 17.491110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.732340, 14.560494, 17.155828>,  <10.977378, 14.406144, 17.896566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.732340, 14.560494, 17.155828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.091834, 14.387279, 17.128256>,  <11.307530, 14.283349, 17.111712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.091834, 14.387279, 17.128256>,  <10.732340, 14.560494, 17.155828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.091834, 14.387279, 17.128256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327424, -0.558180, -0.762383,
		0.291666, 0.707750, -0.643444,
		0.898735, -0.433040, -0.068932,
		11.361455, 14.257366, 17.107576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.821189, 14.581195, 16.529974>,  <10.732340, 14.560494, 17.155828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.821189, 14.581195, 16.529974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.101854, 14.310065, 16.617815>,  <11.270253, 14.147388, 16.670519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.101854, 14.310065, 16.617815>,  <10.821189, 14.581195, 16.529974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.101854, 14.310065, 16.617815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327907, -0.580825, -0.745063,
		0.632571, 0.450775, -0.629806,
		0.701663, -0.677823, 0.219601,
		11.312353, 14.106718, 16.683695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.987132, 14.248906, 15.864807>,  <10.821189, 14.581195, 16.529974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.987132, 14.248906, 15.864807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.109267, 13.980906, 16.135471>,  <11.182549, 13.820106, 16.297869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.109267, 13.980906, 16.135471>,  <10.987132, 14.248906, 15.864807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.109267, 13.980906, 16.135471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486824, -0.720545, -0.493778,
		0.818395, -0.178644, -0.546182,
		0.305338, -0.670000, 0.676659,
		11.200869, 13.779905, 16.338469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.238070, 13.717245, 15.440046>,  <10.987132, 14.248906, 15.864807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.238070, 13.717245, 15.440046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.180916, 13.568852, 15.807079>,  <11.146624, 13.479816, 16.027300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.180916, 13.568852, 15.807079>,  <11.238070, 13.717245, 15.440046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.180916, 13.568852, 15.807079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428933, -0.812297, -0.395208,
		0.891964, -0.450050, -0.043062,
		-0.142884, -0.370982, 0.917582,
		11.138051, 13.457558, 16.082354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.551416, 13.023728, 15.508921>,  <11.238070, 13.717245, 15.440046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.551416, 13.023728, 15.508921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.254039, 13.064495, 15.773315>,  <11.075612, 13.088955, 15.931952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.254039, 13.064495, 15.773315>,  <11.551416, 13.023728, 15.508921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.254039, 13.064495, 15.773315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432939, -0.826639, -0.359488,
		0.509760, -0.553426, 0.658683,
		-0.743444, 0.101917, 0.660987,
		11.031006, 13.095070, 15.971612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.426107, 12.351879, 15.825535>,  <11.551416, 13.023728, 15.508921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.426107, 12.351879, 15.825535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.086115, 12.551585, 15.892784>,  <10.882119, 12.671409, 15.933134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.086115, 12.551585, 15.892784>,  <11.426107, 12.351879, 15.825535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.086115, 12.551585, 15.892784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524535, -0.831697, -0.182054,
		0.048935, -0.242929, 0.968809,
		-0.849982, 0.499265, 0.168124,
		10.831120, 12.701365, 15.943221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.985645, 11.933456, 16.178143>,  <11.426107, 12.351879, 15.825535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.985645, 11.933456, 16.178143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.726387, 12.200840, 16.032227>,  <10.570832, 12.361270, 15.944677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.726387, 12.200840, 16.032227>,  <10.985645, 11.933456, 16.178143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.726387, 12.200840, 16.032227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660860, -0.731757, -0.166718,
		-0.378381, 0.133017, 0.916043,
		-0.648145, 0.668459, -0.364788,
		10.531943, 12.401378, 15.922790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.461156, 11.561494, 16.322422>,  <10.985645, 11.933456, 16.178143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.461156, 11.561494, 16.322422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.309468, 11.842174, 16.081154>,  <10.218456, 12.010581, 15.936393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.309468, 11.842174, 16.081154>,  <10.461156, 11.561494, 16.322422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.309468, 11.842174, 16.081154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803456, -0.573039, -0.161506,
		-0.458968, 0.423374, 0.781091,
		-0.379218, 0.701699, -0.603169,
		10.195703, 12.052683, 15.900203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.052457, 11.030331, 16.536411>,  <10.461156, 11.561494, 16.322422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.052457, 11.030331, 16.536411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.402989, 10.919954, 16.694347>,  <11.613309, 10.853728, 16.789110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.402989, 10.919954, 16.694347>,  <11.052457, 11.030331, 16.536411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.402989, 10.919954, 16.694347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160482, 0.605604, 0.779416,
		-0.454190, -0.746392, 0.486426,
		0.876331, -0.275940, 0.394841,
		11.665889, 10.837173, 16.812799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.917755, 11.407454, 17.147388>,  <11.052457, 11.030331, 16.536411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.917755, 11.407454, 17.147388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.285764, 11.259784, 17.199957>,  <11.506569, 11.171182, 17.231497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.285764, 11.259784, 17.199957>,  <10.917755, 11.407454, 17.147388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.285764, 11.259784, 17.199957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079687, 0.504613, 0.859660,
		-0.383682, -0.780433, 0.493673,
		0.920021, -0.369175, 0.131420,
		11.561770, 11.149032, 17.239384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.946763, 11.258703, 17.808569>,  <10.917755, 11.407454, 17.147388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.946763, 11.258703, 17.808569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.342434, 11.265736, 17.750303>,  <11.579837, 11.269955, 17.715343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.342434, 11.265736, 17.750303>,  <10.946763, 11.258703, 17.808569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.342434, 11.265736, 17.750303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130761, 0.344704, 0.929560,
		0.066553, -0.938547, 0.338674,
		0.989178, 0.017580, -0.145666,
		11.639187, 11.271009, 17.706604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.273686, 10.905144, 18.393002>,  <10.946763, 11.258703, 17.808569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.273686, 10.905144, 18.393002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.565904, 11.137533, 18.249460>,  <11.741234, 11.276967, 18.163336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.565904, 11.137533, 18.249460>,  <11.273686, 10.905144, 18.393002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.565904, 11.137533, 18.249460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175305, 0.348338, 0.920830,
		0.659981, -0.735615, 0.152628,
		0.730543, 0.580974, -0.358853,
		11.785067, 11.311826, 18.141804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.906821, 10.823681, 18.758091>,  <11.273686, 10.905144, 18.393002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.906821, 10.823681, 18.758091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.961062, 11.190217, 18.607397>,  <11.993607, 11.410139, 18.516981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.961062, 11.190217, 18.607397>,  <11.906821, 10.823681, 18.758091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.961062, 11.190217, 18.607397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139485, 0.358805, 0.922932,
		0.980896, -0.177700, -0.079162,
		0.135602, 0.916342, -0.376736,
		12.001743, 11.465119, 18.494375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.682217, 11.063310, 18.865273>,  <11.906821, 10.823681, 18.758091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.682217, 11.063310, 18.865273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.445540, 11.381780, 18.814661>,  <12.303535, 11.572862, 18.784294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.445540, 11.381780, 18.814661>,  <12.682217, 11.063310, 18.865273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.445540, 11.381780, 18.814661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268061, 0.342326, 0.900531,
		0.760294, 0.498918, -0.415974,
		-0.591689, 0.796175, -0.126528,
		12.268034, 11.620632, 18.776703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.081678, 11.620929, 19.129166>,  <12.682217, 11.063310, 18.865273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.081678, 11.620929, 19.129166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.720601, 11.792055, 19.110762>,  <12.503955, 11.894732, 19.099720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.720601, 11.792055, 19.110762>,  <13.081678, 11.620929, 19.129166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.720601, 11.792055, 19.110762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165428, 0.443772, 0.880738,
		0.397213, 0.787425, -0.471363,
		-0.902694, 0.427817, -0.046010,
		12.449793, 11.920401, 19.096958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.224534, 12.392757, 19.082628>,  <13.081678, 11.620929, 19.129166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.224534, 12.392757, 19.082628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.864659, 12.309342, 19.236031>,  <12.648734, 12.259293, 19.328072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.864659, 12.309342, 19.236031>,  <13.224534, 12.392757, 19.082628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.864659, 12.309342, 19.236031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288643, 0.374879, 0.880994,
		-0.327489, 0.903315, -0.277081,
		-0.899687, -0.208539, 0.383504,
		12.594753, 12.246780, 19.351082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.141102, 12.889798, 19.514915>,  <13.224534, 12.392757, 19.082628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.141102, 12.889798, 19.514915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.841906, 12.641406, 19.608631>,  <12.662388, 12.492371, 19.664860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.841906, 12.641406, 19.608631>,  <13.141102, 12.889798, 19.514915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.841906, 12.641406, 19.608631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015925, 0.336107, 0.941689,
		-0.663517, 0.708107, -0.241516,
		-0.747992, -0.620981, 0.234290,
		12.617508, 12.455112, 19.678919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.696747, 13.346915, 19.943319>,  <13.141102, 12.889798, 19.514915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.696747, 13.346915, 19.943319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.604086, 12.967425, 20.029352>,  <12.548490, 12.739732, 20.080973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.604086, 12.967425, 20.029352>,  <12.696747, 13.346915, 19.943319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.604086, 12.967425, 20.029352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090197, 0.199197, 0.975800,
		-0.968608, 0.245445, 0.039427,
		-0.231652, -0.948724, 0.215082,
		12.534591, 12.682808, 20.093876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.270648, 13.377674, 20.528923>,  <12.696747, 13.346915, 19.943319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.270648, 13.377674, 20.528923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.424671, 13.008539, 20.524935>,  <12.517085, 12.787058, 20.522543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.424671, 13.008539, 20.524935>,  <12.270648, 13.377674, 20.528923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.424671, 13.008539, 20.524935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152160, 0.052828, 0.986943,
		-0.910262, -0.381548, 0.160761,
		0.385059, -0.922838, -0.009969,
		12.540189, 12.731688, 20.521944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.974650, 13.123652, 21.100391>,  <12.270648, 13.377674, 20.528923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.974650, 13.123652, 21.100391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.259808, 12.850122, 21.038208>,  <12.430902, 12.686005, 21.000898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.259808, 12.850122, 21.038208>,  <11.974650, 13.123652, 21.100391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.259808, 12.850122, 21.038208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114270, -0.105447, 0.987838,
		-0.691900, -0.721988, 0.002968,
		0.712894, -0.683824, -0.155460,
		12.473676, 12.644976, 20.991570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.771774, 12.658766, 21.658520>,  <11.974650, 13.123652, 21.100391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.771774, 12.658766, 21.658520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.149571, 12.616099, 21.534225>,  <12.376249, 12.590500, 21.459648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.149571, 12.616099, 21.534225>,  <11.771774, 12.658766, 21.658520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.149571, 12.616099, 21.534225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317224, 0.050052, 0.947029,
		-0.085464, -0.993034, 0.081112,
		0.944492, -0.106667, -0.310737,
		12.432919, 12.584100, 21.441004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.149744, 12.419256, 22.218988>,  <11.771774, 12.658766, 21.658520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.149744, 12.419256, 22.218988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.472121, 12.507617, 21.999294>,  <12.665547, 12.560634, 21.867477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.472121, 12.507617, 21.999294>,  <12.149744, 12.419256, 22.218988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.472121, 12.507617, 21.999294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461435, 0.346793, 0.816586,
		0.370865, -0.911555, 0.177557,
		0.805939, 0.220912, -0.549237,
		12.713904, 12.573888, 21.834524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.691534, 12.110987, 22.614851>,  <12.149744, 12.419256, 22.218988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.691534, 12.110987, 22.614851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.796578, 12.445278, 22.421940>,  <12.859605, 12.645853, 22.306192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.796578, 12.445278, 22.421940>,  <12.691534, 12.110987, 22.614851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.796578, 12.445278, 22.421940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521163, 0.297790, 0.799819,
		0.812050, -0.461387, -0.357348,
		0.262612, 0.835729, -0.482278,
		12.875362, 12.695997, 22.277256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.298723, 12.335990, 22.917170>,  <12.691534, 12.110987, 22.614851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.298723, 12.335990, 22.917170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.223000, 12.661161, 22.696877>,  <13.177566, 12.856264, 22.564701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.223000, 12.661161, 22.696877>,  <13.298723, 12.335990, 22.917170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.223000, 12.661161, 22.696877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435287, 0.572232, 0.695036,
		0.880163, -0.108151, -0.462186,
		-0.189309, 0.812929, -0.550735,
		13.166207, 12.905040, 22.531656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.889737, 12.727621, 22.982840>,  <13.298723, 12.335990, 22.917170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.889737, 12.727621, 22.982840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.571142, 12.957413, 22.907389>,  <13.379985, 13.095287, 22.862118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.571142, 12.957413, 22.907389>,  <13.889737, 12.727621, 22.982840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.571142, 12.957413, 22.907389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368598, 0.708604, 0.601677,
		0.479314, 0.409701, -0.776147,
		-0.796488, 0.574479, -0.188629,
		13.332195, 13.129756, 22.850800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.176229, 13.432427, 22.950045>,  <13.889737, 12.727621, 22.982840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.176229, 13.432427, 22.950045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.783738, 13.494987, 22.995173>,  <13.548244, 13.532524, 23.022249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.783738, 13.494987, 22.995173>,  <14.176229, 13.432427, 22.950045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.783738, 13.494987, 22.995173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191937, 0.848750, 0.492730,
		-0.018691, 0.505135, -0.862838,
		-0.981229, 0.156401, 0.112818,
		13.489369, 13.541908, 23.029018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.098397, 14.138023, 22.838915>,  <14.176229, 13.432427, 22.950045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.098397, 14.138023, 22.838915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.775213, 14.026946, 23.046795>,  <13.581303, 13.960299, 23.171522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.775213, 14.026946, 23.046795>,  <14.098397, 14.138023, 22.838915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.775213, 14.026946, 23.046795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014732, 0.891230, 0.453313,
		-0.589054, 0.358603, -0.724168,
		-0.807959, -0.277694, 0.519700,
		13.532825, 13.943638, 23.202705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.569731, 14.707669, 22.827736>,  <14.098397, 14.138023, 22.838915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.569731, 14.707669, 22.827736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.477489, 14.518307, 23.167784>,  <13.422143, 14.404689, 23.371813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.477489, 14.518307, 23.167784>,  <13.569731, 14.707669, 22.827736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.477489, 14.518307, 23.167784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010699, 0.872383, 0.488706,
		-0.972989, 0.121793, -0.196111,
		-0.230605, -0.473407, 0.850122,
		13.408307, 14.376285, 23.422821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.081688, 15.133757, 23.173330>,  <13.569731, 14.707669, 22.827736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.081688, 15.133757, 23.173330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.215927, 14.891212, 23.461691>,  <13.296471, 14.745685, 23.634706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.215927, 14.891212, 23.461691>,  <13.081688, 15.133757, 23.173330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.215927, 14.891212, 23.461691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199027, 0.702366, 0.683425,
		-0.920740, -0.372834, 0.115030,
		0.335597, -0.606363, 0.720901,
		13.316607, 14.709303, 23.677961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.697574, 15.320329, 23.664341>,  <13.081688, 15.133757, 23.173330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.697574, 15.320329, 23.664341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.988056, 15.134584, 23.867119>,  <13.162346, 15.023138, 23.988785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.988056, 15.134584, 23.867119>,  <12.697574, 15.320329, 23.664341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.988056, 15.134584, 23.867119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029105, 0.715971, 0.697523,
		-0.686859, -0.521301, 0.506428,
		0.726207, -0.464361, 0.506944,
		13.205918, 14.995276, 24.019201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.565071, 15.430297, 24.325500>,  <12.697574, 15.320329, 23.664341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.565071, 15.430297, 24.325500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.946568, 15.323359, 24.380499>,  <13.175466, 15.259197, 24.413498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.946568, 15.323359, 24.380499>,  <12.565071, 15.430297, 24.325500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.946568, 15.323359, 24.380499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092751, 0.696727, 0.711315,
		-0.285963, -0.665657, 0.689293,
		0.953741, -0.267343, 0.137498,
		13.232690, 15.243156, 24.421749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.705728, 15.453817, 25.108753>,  <12.565071, 15.430297, 24.325500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.705728, 15.453817, 25.108753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.058057, 15.452730, 24.919378>,  <13.269454, 15.452078, 24.805754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.058057, 15.452730, 24.919378>,  <12.705728, 15.453817, 25.108753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.058057, 15.452730, 24.919378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273219, 0.819586, 0.503617,
		0.386654, -0.572950, 0.722652,
		0.880823, -0.002717, -0.473437,
		13.322304, 15.451915, 24.777348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.121365, 15.518987, 25.640013>,  <12.705728, 15.453817, 25.108753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.121365, 15.518987, 25.640013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.298853, 15.632104, 25.299862>,  <13.405346, 15.699974, 25.095772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.298853, 15.632104, 25.299862>,  <13.121365, 15.518987, 25.640013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.298853, 15.632104, 25.299862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218514, 0.886124, 0.408701,
		0.869116, -0.367168, 0.331397,
		0.443721, 0.282794, -0.850376,
		13.431970, 15.716942, 25.044748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.847583, 15.696933, 25.801983>,  <13.121365, 15.518987, 25.640013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.847583, 15.696933, 25.801983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.804474, 15.865769, 25.441933>,  <13.778608, 15.967072, 25.225903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.804474, 15.865769, 25.441933>,  <13.847583, 15.696933, 25.801983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.804474, 15.865769, 25.441933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473403, 0.817949, 0.326878,
		0.874228, -0.390893, -0.287972,
		-0.107772, 0.422092, -0.900124,
		13.772142, 15.992397, 25.171896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.529146, 16.005707, 25.622753>,  <13.847583, 15.696933, 25.801983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.529146, 16.005707, 25.622753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.242932, 16.203302, 25.425173>,  <14.071204, 16.321859, 25.306625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.242932, 16.203302, 25.425173>,  <14.529146, 16.005707, 25.622753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.242932, 16.203302, 25.425173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390860, 0.869144, 0.303015,
		0.578999, 0.023752, -0.814982,
		-0.715534, 0.493989, -0.493950,
		14.028273, 16.351500, 25.276987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.912341, 16.587996, 25.381550>,  <14.529146, 16.005707, 25.622753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.912341, 16.587996, 25.381550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.528729, 16.701221, 25.386200>,  <14.298562, 16.769157, 25.388990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.528729, 16.701221, 25.386200>,  <14.912341, 16.587996, 25.381550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.528729, 16.701221, 25.386200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272416, 0.910129, 0.312176,
		0.077786, 0.302553, -0.949953,
		-0.959030, 0.283066, 0.011625,
		14.241020, 16.786140, 25.389687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
