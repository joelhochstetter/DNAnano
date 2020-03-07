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
	<1.516577, 0.707006, 2.709628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.469669, 0.888916, 2.356487>,  <1.441524, 0.998062, 2.144603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.469669, 0.888916, 2.356487>,  <1.516577, 0.707006, 2.709628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.469669, 0.888916, 2.356487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711074, 0.659039, 0.245031,
		0.693268, -0.599039, -0.400664,
		-0.117270, 0.454774, -0.882852,
		1.434488, 1.025348, 2.091632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.146734, 0.744691, 2.319554>,  <1.516577, 0.707006, 2.709628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.146734, 0.744691, 2.319554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.916162, 1.042683, 2.185249>,  <1.777819, 1.221477, 2.104666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.916162, 1.042683, 2.185249>,  <2.146734, 0.744691, 2.319554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.916162, 1.042683, 2.185249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803637, 0.591239, -0.067845,
		0.147973, -0.308940, -0.939500,
		-0.576430, 0.744978, -0.335763,
		1.743233, 1.266176, 2.084521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.398708, 1.157427, 1.761448>,  <2.146734, 0.744691, 2.319554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.398708, 1.157427, 1.761448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.140578, 1.408333, 1.935848>,  <1.985700, 1.558876, 2.040488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.140578, 1.408333, 1.935848>,  <2.398708, 1.157427, 1.761448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.140578, 1.408333, 1.935848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684686, 0.728043, -0.034012,
		-0.338762, 0.276574, -0.899304,
		-0.645325, 0.627263, 0.436000,
		1.946981, 1.596512, 2.066648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.615408, 1.737164, 1.559814>,  <2.398708, 1.157427, 1.761448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.615408, 1.737164, 1.559814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.367567, 1.831596, 1.859241>,  <2.218861, 1.888255, 2.038898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.367567, 1.831596, 1.859241>,  <2.615408, 1.737164, 1.559814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.367567, 1.831596, 1.859241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481723, 0.867335, 0.125196,
		-0.619704, 0.438175, -0.651130,
		-0.619605, 0.236080, 0.748570,
		2.181685, 1.902420, 2.083812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.324308, 2.446107, 1.549435>,  <2.615408, 1.737164, 1.559814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.324308, 2.446107, 1.549435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.328030, 2.378712, 1.943699>,  <2.330263, 2.338274, 2.180257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.328030, 2.378712, 1.943699>,  <2.324308, 2.446107, 1.549435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.328030, 2.378712, 1.943699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595867, 0.792517, 0.129848,
		-0.803030, 0.586114, 0.107771,
		0.009304, -0.168489, 0.985660,
		2.330821, 2.328165, 2.239397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.140289, 3.051231, 1.853786>,  <2.324308, 2.446107, 1.549435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.140289, 3.051231, 1.853786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.323283, 2.860271, 2.153866>,  <2.433079, 2.745696, 2.333913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.323283, 2.860271, 2.153866>,  <2.140289, 3.051231, 1.853786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.323283, 2.860271, 2.153866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540958, 0.819005, 0.191299,
		-0.705742, 0.318309, 0.632935,
		0.457485, -0.477399, 0.750198,
		2.460528, 2.717052, 2.378925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.243180, 3.503815, 2.501986>,  <2.140289, 3.051231, 1.853786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.243180, 3.503815, 2.501986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.504733, 3.204327, 2.545540>,  <2.661665, 3.024634, 2.571672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.504733, 3.204327, 2.545540>,  <2.243180, 3.503815, 2.501986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.504733, 3.204327, 2.545540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658142, 0.633863, 0.406284,
		-0.373211, -0.194001, 0.907236,
		0.653883, -0.748720, 0.108884,
		2.700898, 2.979711, 2.578205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.402838, 3.535567, 3.085991>,  <2.243180, 3.503815, 2.501986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.402838, 3.535567, 3.085991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.727527, 3.354607, 2.938240>,  <2.922341, 3.246031, 2.849589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.727527, 3.354607, 2.938240>,  <2.402838, 3.535567, 3.085991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.727527, 3.354607, 2.938240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582831, 0.668182, 0.462429,
		0.037608, -0.590649, 0.806052,
		0.811723, -0.452401, -0.369377,
		2.971044, 3.218886, 2.827427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.757999, 4.392352, 2.593366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.037724, 4.115383, 2.664375>,  <4.205558, 3.949202, 2.706981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.037724, 4.115383, 2.664375>,  <3.757999, 4.392352, 2.593366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.037724, 4.115383, 2.664375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694331, -0.717019, -0.061550,
		0.169906, -0.080217, -0.982190,
		0.699312, -0.692423, 0.177523,
		4.247517, 3.907656, 2.717632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.563751, 3.842244, 2.078912>,  <3.757999, 4.392352, 2.593366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.563751, 3.842244, 2.078912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.736053, 3.729279, 2.421768>,  <3.839435, 3.661499, 2.627482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.736053, 3.729279, 2.421768>,  <3.563751, 3.842244, 2.078912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.736053, 3.729279, 2.421768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478148, -0.876931, -0.048641,
		0.765391, -0.388888, -0.512779,
		0.430756, -0.282413, 0.857142,
		3.865280, 3.644555, 2.678911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.893557, 3.175820, 1.972147>,  <3.563751, 3.842244, 2.078912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.893557, 3.175820, 1.972147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.756649, 3.237980, 2.342812>,  <3.674504, 3.275276, 2.565210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.756649, 3.237980, 2.342812>,  <3.893557, 3.175820, 1.972147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.756649, 3.237980, 2.342812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518989, -0.853399, -0.048579,
		0.783263, -0.497554, 0.372744,
		-0.342270, 0.155400, 0.926661,
		3.653968, 3.284600, 2.620810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.017515, 2.580139, 2.456467>,  <3.893557, 3.175820, 1.972147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.017515, 2.580139, 2.456467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.687071, 2.774742, 2.570206>,  <3.488804, 2.891504, 2.638449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.687071, 2.774742, 2.570206>,  <4.017515, 2.580139, 2.456467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.687071, 2.774742, 2.570206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492214, -0.868657, 0.056216,
		0.274349, -0.093519, 0.957072,
		-0.826110, 0.486507, 0.284346,
		3.439238, 2.920694, 2.655509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.577963, 2.068438, 2.759343>,  <4.017515, 2.580139, 2.456467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.577963, 2.068438, 2.759343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.296980, 2.349636, 2.714890>,  <3.128390, 2.518355, 2.688217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.296980, 2.349636, 2.714890>,  <3.577963, 2.068438, 2.759343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.296980, 2.349636, 2.714890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700107, -0.710614, -0.069846,
		-0.128075, 0.028742, 0.991348,
		-0.702458, 0.702995, -0.111135,
		3.086242, 2.560534, 2.681549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.056737, 1.934374, 3.261188>,  <3.577963, 2.068438, 2.759343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.056737, 1.934374, 3.261188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.874062, 2.182018, 3.005646>,  <2.764456, 2.330605, 2.852320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.874062, 2.182018, 3.005646>,  <3.056737, 1.934374, 3.261188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.874062, 2.182018, 3.005646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768094, -0.636720, -0.067965,
		-0.448849, 0.459662, 0.766319,
		-0.456690, 0.619111, -0.638855,
		2.737055, 2.367752, 2.813989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.288687, 2.128086, 3.482639>,  <3.056737, 1.934374, 3.261188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.288687, 2.128086, 3.482639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.320482, 2.150059, 3.084511>,  <2.339560, 2.163243, 2.845634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.320482, 2.150059, 3.084511>,  <2.288687, 2.128086, 3.482639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.320482, 2.150059, 3.084511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770729, -0.629841, -0.096314,
		-0.632185, 0.774779, -0.007728,
		0.079489, 0.054933, -0.995321,
		2.344329, 2.166538, 2.785914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.556743, 2.206125, 3.216290>,  <2.288687, 2.128086, 3.482639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.556743, 2.206125, 3.216290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.742579, 2.067135, 2.890488>,  <1.854080, 1.983741, 2.695006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.742579, 2.067135, 2.890488>,  <1.556743, 2.206125, 3.216290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.742579, 2.067135, 2.890488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752394, -0.639935, -0.156160,
		-0.466969, 0.685379, -0.558744,
		0.464589, -0.347474, -0.814506,
		1.881955, 1.962893, 2.646136>
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
