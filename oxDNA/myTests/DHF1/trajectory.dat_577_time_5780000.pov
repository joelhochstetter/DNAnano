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
	<1.379174, 0.707673, 1.419596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.324669, 0.768900, 1.028086>,  <1.291966, 0.805636, 0.793180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.324669, 0.768900, 1.028086>,  <1.379174, 0.707673, 1.419596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.324669, 0.768900, 1.028086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911755, 0.405800, -0.063471,
		0.387472, -0.901053, -0.194855,
		-0.136263, 0.153067, -0.978776,
		1.283790, 0.814820, 0.734453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.843995, 0.247888, 0.966166>,  <1.379174, 0.707673, 1.419596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.843995, 0.247888, 0.966166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.716530, 0.607822, 0.847002>,  <1.640051, 0.823783, 0.775504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.716530, 0.607822, 0.847002>,  <1.843995, 0.247888, 0.966166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.716530, 0.607822, 0.847002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939323, 0.341894, 0.027934,
		0.126989, -0.270931, -0.954185,
		-0.318663, 0.899836, -0.297909,
		1.620931, 0.877773, 0.757629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.217033, 0.421939, 0.335184>,  <1.843995, 0.247888, 0.966166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.217033, 0.421939, 0.335184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.097893, 0.752064, 0.527077>,  <2.026408, 0.950139, 0.642213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.097893, 0.752064, 0.527077>,  <2.217033, 0.421939, 0.335184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.097893, 0.752064, 0.527077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949510, 0.308022, 0.059614,
		-0.098568, 0.473268, -0.875387,
		-0.297852, 0.825312, 0.479733,
		2.008537, 0.999657, 0.670997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.514727, 0.954101, -0.050950>,  <2.217033, 0.421939, 0.335184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.514727, 0.954101, -0.050950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.462158, 1.039056, 0.336373>,  <2.430617, 1.090029, 0.568767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.462158, 1.039056, 0.336373>,  <2.514727, 0.954101, -0.050950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.462158, 1.039056, 0.336373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931787, 0.359880, 0.047529,
		-0.338380, 0.908503, -0.245195,
		-0.131421, 0.212386, 0.968308,
		2.422732, 1.102772, 0.626866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.701814, 1.620101, 0.035363>,  <2.514727, 0.954101, -0.050950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.701814, 1.620101, 0.035363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.752357, 1.464248, 0.400268>,  <2.782684, 1.370736, 0.619210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.752357, 1.464248, 0.400268>,  <2.701814, 1.620101, 0.035363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.752357, 1.464248, 0.400268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886310, 0.457369, 0.072580,
		-0.445519, 0.799375, 0.403128,
		0.126360, -0.389632, 0.912261,
		2.790265, 1.347358, 0.673946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.856206, 2.158547, 0.413444>,  <2.701814, 1.620101, 0.035363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.856206, 2.158547, 0.413444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.989048, 1.847398, 0.626842>,  <3.068753, 1.660708, 0.754881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.989048, 1.847398, 0.626842>,  <2.856206, 2.158547, 0.413444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.989048, 1.847398, 0.626842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895064, 0.438343, 0.081949,
		-0.297600, 0.450297, 0.841823,
		0.332106, -0.777874, 0.533496,
		3.088680, 1.614035, 0.786891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.456296, 2.367393, 0.800013>,  <2.856206, 2.158547, 0.413444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.456296, 2.367393, 0.800013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.521252, 1.973803, 0.829468>,  <3.560225, 1.737648, 0.847141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.521252, 1.973803, 0.829468>,  <3.456296, 2.367393, 0.800013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.521252, 1.973803, 0.829468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979707, 0.169669, 0.106703,
		-0.117487, 0.054816, 0.991560,
		0.162388, -0.983975, 0.073638,
		3.569968, 1.678610, 0.851559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.968291, 2.242386, 1.385562>,  <3.456296, 2.367393, 0.800013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.968291, 2.242386, 1.385562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.979115, 1.926646, 1.140222>,  <3.985609, 1.737203, 0.993019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.979115, 1.926646, 1.140222>,  <3.968291, 2.242386, 1.385562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.979115, 1.926646, 1.140222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978495, -0.104597, 0.177780,
		-0.204485, -0.604970, 0.769544,
		0.027060, -0.789348, -0.613349,
		3.987232, 1.689842, 0.956218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.947249, 2.150718, 1.040987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.071373, 1.772095, 1.076169>,  <5.145847, 1.544921, 1.097278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.071373, 1.772095, 1.076169>,  <4.947249, 2.150718, 1.040987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.071373, 1.772095, 1.076169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936006, -0.320392, -0.145744,
		0.166136, -0.037101, -0.985405,
		0.310309, -0.946558, 0.087955,
		5.164466, 1.488127, 1.102556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.056516, 1.707062, 0.411407>,  <4.947249, 2.150718, 1.040987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.056516, 1.707062, 0.411407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.910393, 1.488361, 0.712768>,  <4.822719, 1.357141, 0.893584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.910393, 1.488361, 0.712768>,  <5.056516, 1.707062, 0.411407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.910393, 1.488361, 0.712768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835755, -0.163792, -0.524106,
		0.409957, -0.821118, -0.397116,
		-0.365308, -0.546752, 0.753400,
		4.800800, 1.324336, 0.938788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.545999, 1.199885, 0.040173>,  <5.056516, 1.707062, 0.411407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.545999, 1.199885, 0.040173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.465408, 1.196419, 0.431955>,  <4.417054, 1.194339, 0.667024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.465408, 1.196419, 0.431955>,  <4.545999, 1.199885, 0.040173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.465408, 1.196419, 0.431955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978898, -0.033081, -0.201655,
		0.034149, -0.999415, -0.001819,
		-0.201477, -0.008667, 0.979455,
		4.404965, 1.193819, 0.725792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.093199, 0.537814, 0.390899>,  <4.545999, 1.199885, 0.040173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.093199, 0.537814, 0.390899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.054764, 0.885826, 0.584316>,  <4.031703, 1.094634, 0.700366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.054764, 0.885826, 0.584316>,  <4.093199, 0.537814, 0.390899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.054764, 0.885826, 0.584316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995347, -0.080503, -0.052944,
		-0.007137, -0.486380, 0.873719,
		-0.096088, 0.870031, 0.483542,
		4.025938, 1.146836, 0.729379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.637058, 0.370749, 0.879236>,  <4.093199, 0.537814, 0.390899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.637058, 0.370749, 0.879236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.616714, 0.770229, 0.877920>,  <3.604508, 1.009917, 0.877130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.616714, 0.770229, 0.877920>,  <3.637058, 0.370749, 0.879236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.616714, 0.770229, 0.877920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987349, -0.049785, 0.150542,
		0.150183, 0.010905, 0.988598,
		-0.050859, 0.998700, -0.003290,
		3.601457, 1.069839, 0.876933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.410023, 0.575970, 1.510336>,  <3.637058, 0.370749, 0.879236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.410023, 0.575970, 1.510336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.311707, 0.888416, 1.280746>,  <3.252717, 1.075884, 1.142993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.311707, 0.888416, 1.280746>,  <3.410023, 0.575970, 1.510336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.311707, 0.888416, 1.280746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954253, -0.090979, 0.284824,
		0.170261, 0.617722, 0.767744,
		-0.245791, 0.781116, -0.573973,
		3.237969, 1.122751, 1.108555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.946984, 1.022961, 1.913303>,  <3.410023, 0.575970, 1.510336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.946984, 1.022961, 1.913303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.890076, 1.111061, 1.527298>,  <2.855931, 1.163921, 1.295695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.890076, 1.111061, 1.527298>,  <2.946984, 1.022961, 1.913303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.890076, 1.111061, 1.527298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976560, -0.190321, 0.100536,
		-0.161519, 0.956696, 0.242165,
		-0.142271, 0.220250, -0.965012,
		2.847394, 1.177136, 1.237794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.306739, 1.345876, 1.907704>,  <2.946984, 1.022961, 1.913303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.306739, 1.345876, 1.907704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.353210, 1.235073, 1.526176>,  <2.381094, 1.168591, 1.297260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.353210, 1.235073, 1.526176>,  <2.306739, 1.345876, 1.907704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.353210, 1.235073, 1.526176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959936, -0.277868, -0.036226,
		-0.255001, 0.919813, -0.298191,
		0.116179, -0.277007, -0.953818,
		2.388064, 1.151971, 1.240031>
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
