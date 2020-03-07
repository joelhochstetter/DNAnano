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
	<6.400108, 1.427541, 4.352880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.667294, 1.279572, 4.611176>,  <6.827605, 1.190790, 4.766153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.667294, 1.279572, 4.611176>,  <6.400108, 1.427541, 4.352880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.667294, 1.279572, 4.611176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494611, -0.427650, -0.756621,
		0.556044, 0.824786, -0.102686,
		0.667964, -0.369925, 0.645740,
		6.867683, 1.168594, 4.804897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.898653, 2.062244, 4.251352>,  <6.400108, 1.427541, 4.352880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.898653, 2.062244, 4.251352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.503014, 2.042648, 4.195801>,  <5.265630, 2.030891, 4.162470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.503014, 2.042648, 4.195801>,  <5.898653, 2.062244, 4.251352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.503014, 2.042648, 4.195801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099308, 0.918236, 0.383379,
		0.108741, 0.392991, -0.913090,
		-0.989097, -0.048988, -0.138877,
		5.206285, 2.027952, 4.154138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.601262, 2.807318, 4.071396>,  <5.898653, 2.062244, 4.251352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.601262, 2.807318, 4.071396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.334538, 2.562737, 4.241802>,  <5.174503, 2.415987, 4.344046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.334538, 2.562737, 4.241802>,  <5.601262, 2.807318, 4.071396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.334538, 2.562737, 4.241802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417947, 0.780130, 0.465529,
		-0.616996, 0.132368, -0.775754,
		-0.666811, -0.611454, 0.426014,
		5.134494, 2.379300, 4.369606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.939575, 3.132965, 3.909036>,  <5.601262, 2.807318, 4.071396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.939575, 3.132965, 3.909036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.942516, 2.895065, 4.230587>,  <4.944281, 2.752326, 4.423518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.942516, 2.895065, 4.230587>,  <4.939575, 3.132965, 3.909036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.942516, 2.895065, 4.230587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505392, 0.691460, 0.516199,
		-0.862859, -0.410070, -0.295496,
		0.007354, -0.594748, 0.803878,
		4.944723, 2.716641, 4.471751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.218755, 3.060519, 4.147465>,  <4.939575, 3.132965, 3.909036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.218755, 3.060519, 4.147465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.465462, 3.012932, 4.458706>,  <4.613486, 2.984379, 4.645451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.465462, 3.012932, 4.458706>,  <4.218755, 3.060519, 4.147465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.465462, 3.012932, 4.458706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517003, 0.684170, 0.514412,
		-0.593553, -0.719554, 0.360467,
		0.616768, -0.118969, 0.778103,
		4.650492, 2.977241, 4.692137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.745893, 3.058241, 4.748734>,  <4.218755, 3.060519, 4.147465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.745893, 3.058241, 4.748734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.108860, 3.173233, 4.871338>,  <4.326641, 3.242228, 4.944900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.108860, 3.173233, 4.871338>,  <3.745893, 3.058241, 4.748734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.108860, 3.173233, 4.871338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420147, 0.635064, 0.648205,
		-0.008307, -0.716972, 0.697052,
		0.907418, 0.287479, 0.306509,
		4.381085, 3.259477, 4.963291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.638297, 3.077702, 5.442826>,  <3.745893, 3.058241, 4.748734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.638297, 3.077702, 5.442826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.958107, 3.314453, 5.401958>,  <4.149993, 3.456504, 5.377438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.958107, 3.314453, 5.401958>,  <3.638297, 3.077702, 5.442826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.958107, 3.314453, 5.401958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331237, 0.576396, 0.747027,
		0.501037, -0.563426, 0.656896,
		0.799527, 0.591876, -0.102169,
		4.197965, 3.492016, 5.371307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.861615, 3.184337, 6.125820>,  <3.638297, 3.077702, 5.442826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.861615, 3.184337, 6.125820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.015606, 3.475769, 5.899204>,  <4.108000, 3.650628, 5.763235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.015606, 3.475769, 5.899204>,  <3.861615, 3.184337, 6.125820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.015606, 3.475769, 5.899204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337348, 0.682458, 0.648419,
		0.859064, -0.058505, 0.508515,
		0.384975, 0.728580, -0.566538,
		4.131099, 3.694343, 5.729243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.995590, 4.860864, 1.428658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.197368, 5.043716, 1.135654>,  <3.318434, 5.153428, 0.959853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.197368, 5.043716, 1.135654>,  <2.995590, 4.860864, 1.428658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.197368, 5.043716, 1.135654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443613, -0.865039, -0.234342,
		-0.740772, -0.206737, -0.639153,
		0.504445, 0.457130, -0.732508,
		3.348701, 5.180855, 0.915902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.990161, 4.502646, 0.756190>,  <2.995590, 4.860864, 1.428658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.990161, 4.502646, 0.756190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.339212, 4.697998, 0.755295>,  <3.548643, 4.815209, 0.754758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.339212, 4.697998, 0.755295>,  <2.990161, 4.502646, 0.756190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.339212, 4.697998, 0.755295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434208, -0.777917, -0.454212,
		-0.223568, 0.395387, -0.890891,
		0.872629, 0.488379, -0.002237,
		3.601001, 4.844512, 0.754624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.334874, 4.426394, 0.175181>,  <2.990161, 4.502646, 0.756190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.334874, 4.426394, 0.175181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.598163, 4.493683, 0.468697>,  <3.756136, 4.534056, 0.644806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.598163, 4.493683, 0.468697>,  <3.334874, 4.426394, 0.175181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.598163, 4.493683, 0.468697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610977, -0.688836, -0.390143,
		0.439829, 0.705129, -0.556187,
		0.658223, 0.168222, 0.733788,
		3.795630, 4.544149, 0.688833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.972783, 4.686010, -0.026566>,  <3.334874, 4.426394, 0.175181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.972783, 4.686010, -0.026566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.011488, 4.469147, 0.307308>,  <4.034711, 4.339029, 0.507633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.011488, 4.469147, 0.307308>,  <3.972783, 4.686010, -0.026566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.011488, 4.469147, 0.307308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647600, -0.602534, -0.466441,
		0.755812, 0.585677, 0.292799,
		0.096762, -0.542158, 0.834687,
		4.040516, 4.306499, 0.557714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.669683, 4.611070, 0.039628>,  <3.972783, 4.686010, -0.026566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.669683, 4.611070, 0.039628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.483648, 4.325958, 0.249634>,  <4.372028, 4.154891, 0.375638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.483648, 4.325958, 0.249634>,  <4.669683, 4.611070, 0.039628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.483648, 4.325958, 0.249634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525568, -0.699549, -0.484157,
		0.712372, 0.050757, 0.699964,
		-0.465085, -0.712779, 0.525016,
		4.344123, 4.112124, 0.407139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.229864, 4.218915, 0.343986>,  <4.669683, 4.611070, 0.039627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.229864, 4.218915, 0.343986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.904175, 3.988205, 0.317539>,  <4.708762, 3.849779, 0.301671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.904175, 3.988205, 0.317539>,  <5.229864, 4.218915, 0.343986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.904175, 3.988205, 0.317539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499041, -0.637153, -0.587362,
		0.296650, -0.511239, 0.806619,
		-0.814222, -0.576777, -0.066118,
		4.659908, 3.815172, 0.297704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.545927, 3.579238, 0.427850>,  <5.229864, 4.218915, 0.343986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.545927, 3.579238, 0.427850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.189843, 3.490051, 0.268948>,  <4.976193, 3.436539, 0.173606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.189843, 3.490051, 0.268948>,  <5.545927, 3.579238, 0.427850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.189843, 3.490051, 0.268948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394104, -0.814326, -0.426093,
		-0.228491, -0.535872, 0.812793,
		-0.890210, -0.222966, -0.397255,
		4.922780, 3.423162, 0.149771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.332818, 2.887058, 0.734230>,  <5.545927, 3.579238, 0.427850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.332818, 2.887058, 0.734230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.143119, 2.933258, 0.385117>,  <5.029300, 2.960978, 0.175649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.143119, 2.933258, 0.385117>,  <5.332818, 2.887058, 0.734230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.143119, 2.933258, 0.385117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604070, -0.678496, -0.418023,
		-0.640461, -0.725468, 0.252003,
		-0.474246, 0.115500, -0.872784,
		5.000845, 2.967908, 0.123282>
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
