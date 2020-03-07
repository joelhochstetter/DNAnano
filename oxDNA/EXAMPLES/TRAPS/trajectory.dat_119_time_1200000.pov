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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.736534, 52.482399, 49.876587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773014, 52.852928, 49.730373>,  <36.794903, 53.075245, 49.642647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773014, 52.852928, 49.730373>,  <36.736534, 52.482399, 49.876587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773014, 52.852928, 49.730373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983819, 0.026965, -0.177123,
		-0.154216, 0.375771, 0.913791,
		0.091198, 0.926320, -0.365532,
		36.800373, 53.130825, 49.620712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425999, 52.562267, 49.463882>,  <36.736534, 52.482399, 49.876587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425999, 52.562267, 49.463882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418991, 52.203533, 49.640694>,  <37.414787, 51.988293, 49.746780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418991, 52.203533, 49.640694>,  <37.425999, 52.562267, 49.463882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418991, 52.203533, 49.640694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993462, -0.065493, -0.093512,
		0.112814, 0.437499, 0.892114,
		-0.017516, -0.896831, 0.442027,
		37.413738, 51.934483, 49.773300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038120, 52.411240, 49.770962>,  <37.425999, 52.562267, 49.463882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038120, 52.411240, 49.770962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907894, 52.035110, 49.731354>,  <37.829758, 51.809433, 49.707588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907894, 52.035110, 49.731354>,  <38.038120, 52.411240, 49.770962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907894, 52.035110, 49.731354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907278, -0.281197, -0.312690,
		0.266186, -0.191636, 0.944680,
		-0.325564, -0.940321, -0.099016,
		37.810226, 51.753014, 49.701649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247272, 51.843285, 50.246140>,  <38.038120, 52.411240, 49.770962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247272, 51.843285, 50.246140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209827, 51.706234, 49.872223>,  <38.187359, 51.624004, 49.647873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209827, 51.706234, 49.872223>,  <38.247272, 51.843285, 50.246140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209827, 51.706234, 49.872223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963192, -0.268807, 0.002069,
		-0.251988, -0.900193, 0.355183,
		-0.093613, -0.342631, -0.934795,
		38.181744, 51.603443, 49.591785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683338, 51.338757, 50.569363>,  <38.247272, 51.843285, 50.246140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683338, 51.338757, 50.569363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691628, 51.721378, 50.685688>,  <38.696602, 51.950951, 50.755486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691628, 51.721378, 50.685688>,  <38.683338, 51.338757, 50.569363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691628, 51.721378, 50.685688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999142, -0.030255, 0.028302,
		0.035871, 0.289979, -0.956361,
		0.020728, 0.956555, 0.290815,
		38.697845, 52.008347, 50.772934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081455, 50.810436, 50.209354>,  <38.683338, 51.338757, 50.569363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081455, 50.810436, 50.209354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408562, 50.994171, 50.348072>,  <39.604828, 51.104412, 50.431301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408562, 50.994171, 50.348072>,  <39.081455, 50.810436, 50.209354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408562, 50.994171, 50.348072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553014, -0.460161, -0.694569,
		-0.159458, 0.759779, -0.630324,
		0.817770, 0.459333, 0.346792,
		39.653893, 51.131969, 50.452110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479828, 50.853813, 49.716652>,  <39.081455, 50.810436, 50.209354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479828, 50.853813, 49.716652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776199, 50.917145, 49.977715>,  <39.954021, 50.955143, 50.134350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776199, 50.917145, 49.977715>,  <39.479828, 50.853813, 49.716652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776199, 50.917145, 49.977715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633199, -0.488544, -0.600320,
		0.223800, 0.858054, -0.462231,
		0.740927, 0.158333, 0.652654,
		39.998478, 50.964645, 50.173512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091702, 51.239288, 49.426594>,  <39.479828, 50.853813, 49.716652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091702, 51.239288, 49.426594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208828, 50.980705, 49.708401>,  <40.279102, 50.825554, 49.877487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208828, 50.980705, 49.708401>,  <40.091702, 51.239288, 49.426594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208828, 50.980705, 49.708401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522484, -0.508906, -0.684123,
		0.800793, 0.568422, 0.188750,
		0.292815, -0.646460, 0.704521,
		40.296673, 50.786766, 49.919758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813843, 51.298439, 49.485611>,  <40.091702, 51.239288, 49.426594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813843, 51.298439, 49.485611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649792, 50.939152, 49.548851>,  <40.551361, 50.723579, 49.586796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649792, 50.939152, 49.548851>,  <40.813843, 51.298439, 49.485611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649792, 50.939152, 49.548851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549229, -0.381632, -0.743441,
		0.728110, -0.218072, 0.649846,
		-0.410126, -0.898221, 0.158098,
		40.526752, 50.669685, 49.596279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488991, 50.920650, 49.519577>,  <40.813843, 51.298439, 49.485611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488991, 50.920650, 49.519577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154652, 50.751663, 49.379360>,  <40.954048, 50.650269, 49.295231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154652, 50.751663, 49.379360>,  <41.488991, 50.920650, 49.519577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154652, 50.751663, 49.379360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529794, -0.453523, -0.716683,
		0.143801, -0.784751, 0.602899,
		-0.835846, -0.422472, -0.350539,
		40.903896, 50.624920, 49.274197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470963, 50.652206, 50.153408>,  <41.488991, 50.920650, 49.519577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470963, 50.652206, 50.153408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247608, 50.647610, 50.485207>,  <41.113594, 50.644852, 50.684288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247608, 50.647610, 50.485207>,  <41.470963, 50.652206, 50.153408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247608, 50.647610, 50.485207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221959, -0.965519, 0.136040,
		0.799334, 0.260078, 0.541687,
		-0.558390, -0.011491, 0.829499,
		41.080090, 50.644161, 50.734055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104774, 50.644253, 50.538818>,  <41.470963, 50.652206, 50.153408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104774, 50.644253, 50.538818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438129, 50.849255, 50.456062>,  <42.638142, 50.972256, 50.406410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438129, 50.849255, 50.456062>,  <42.104774, 50.644253, 50.538818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438129, 50.849255, 50.456062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429425, 0.836101, 0.341364,
		0.347927, -0.195647, 0.916880,
		0.833391, 0.512501, -0.206887,
		42.688148, 51.003006, 50.393997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465786, 50.872902, 51.102097>,  <42.104774, 50.644253, 50.538818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465786, 50.872902, 51.102097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479607, 51.115002, 50.783981>,  <42.487900, 51.260262, 50.593113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479607, 51.115002, 50.783981>,  <42.465786, 50.872902, 51.102097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479607, 51.115002, 50.783981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523580, 0.688781, 0.501442,
		0.851275, 0.399069, 0.340696,
		0.034555, 0.605247, -0.795287,
		42.489975, 51.296577, 50.545395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948418, 51.589310, 51.166546>,  <42.465786, 50.872902, 51.102097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948418, 51.589310, 51.166546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621761, 51.580673, 50.935848>,  <42.425766, 51.575493, 50.797428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621761, 51.580673, 50.935848>,  <42.948418, 51.589310, 51.166546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621761, 51.580673, 50.935848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420799, 0.706195, 0.569400,
		0.395001, 0.707688, -0.585792,
		-0.816641, -0.021587, -0.576742,
		42.376770, 51.574196, 50.762825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.265141, 51.136398, 50.707409>,  <42.948418, 51.589310, 51.166546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.265141, 51.136398, 50.707409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558521, 51.377037, 50.833984>,  <43.734550, 51.521420, 50.909931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558521, 51.377037, 50.833984>,  <43.265141, 51.136398, 50.707409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558521, 51.377037, 50.833984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645453, -0.762373, -0.046673,
		0.213169, 0.238482, -0.947463,
		0.733451, 0.601593, 0.316443,
		43.778557, 51.557514, 50.928917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793465, 51.089199, 50.227928>,  <43.265141, 51.136398, 50.707409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793465, 51.089199, 50.227928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.934639, 51.172928, 50.592701>,  <44.019344, 51.223167, 50.811565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.934639, 51.172928, 50.592701>,  <43.793465, 51.089199, 50.227928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934639, 51.172928, 50.592701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484101, -0.874909, 0.013469,
		0.800677, 0.436713, -0.410120,
		0.352935, 0.209324, 0.911932,
		44.040520, 51.235725, 50.866280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.533955, 50.891533, 50.325672>,  <43.793465, 51.089199, 50.227928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.533955, 50.891533, 50.325672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350620, 50.876133, 50.680851>,  <44.240620, 50.866894, 50.893959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350620, 50.876133, 50.680851>,  <44.533955, 50.891533, 50.325672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.350620, 50.876133, 50.680851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295657, -0.948767, 0.111479,
		0.838161, 0.313622, 0.446237,
		-0.458337, -0.038496, 0.887944,
		44.213120, 50.864586, 50.947235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.813160, 50.303478, 50.741962>,  <44.533955, 50.891533, 50.325672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.813160, 50.303478, 50.741962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536289, 50.313675, 51.030476>,  <44.370167, 50.319794, 51.203583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536289, 50.313675, 51.030476>,  <44.813160, 50.303478, 50.741962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.536289, 50.313675, 51.030476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716805, -0.140826, -0.682905,
		0.084168, -0.989706, 0.115746,
		-0.692175, 0.025489, 0.721279,
		44.328636, 50.321323, 51.246861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164051, 49.625080, 50.912556>,  <44.813160, 50.303478, 50.741962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164051, 49.625080, 50.912556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.556370, 49.565388, 50.962772>,  <45.791763, 49.529572, 50.992901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.556370, 49.565388, 50.962772>,  <45.164051, 49.625080, 50.912556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.556370, 49.565388, 50.962772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113038, -0.089522, -0.989550,
		0.158907, 0.984742, -0.070935,
		0.980801, -0.149228, 0.125538,
		45.850609, 49.520618, 51.000435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.538246, 50.108597, 50.469387>,  <45.164051, 49.625080, 50.912556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.538246, 50.108597, 50.469387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759892, 49.790928, 50.569191>,  <45.892879, 49.600327, 50.629074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759892, 49.790928, 50.569191>,  <45.538246, 50.108597, 50.469387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759892, 49.790928, 50.569191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140608, -0.206131, -0.968370,
		0.820481, 0.571668, -0.002553,
		0.554112, -0.794170, 0.249508,
		45.926125, 49.552677, 50.644043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.188641, 50.192856, 50.107071>,  <45.538246, 50.108597, 50.469387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.188641, 50.192856, 50.107071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.102615, 49.809708, 50.183205>,  <46.050999, 49.579819, 50.228886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.102615, 49.809708, 50.183205>,  <46.188641, 50.192856, 50.107071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.102615, 49.809708, 50.183205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302885, -0.250705, -0.919460,
		0.928444, -0.140092, 0.344043,
		-0.215062, -0.957873, 0.190334,
		46.038097, 49.522346, 50.240303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.426853, 50.567215, 49.552979>,  <46.188641, 50.192856, 50.107071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.426853, 50.567215, 49.552979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.614445, 50.339638, 49.823196>,  <46.727001, 50.203091, 49.985329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.614445, 50.339638, 49.823196>,  <46.426853, 50.567215, 49.552979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.614445, 50.339638, 49.823196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555584, 0.784629, 0.275108,
		-0.686573, 0.246303, 0.684071,
		0.468981, -0.568940, 0.675547,
		46.755138, 50.168957, 50.025860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.527790, 50.988632, 50.200344>,  <46.426853, 50.567215, 49.552979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.527790, 50.988632, 50.200344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.816460, 50.714447, 50.161713>,  <46.989662, 50.549938, 50.138535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.816460, 50.714447, 50.161713>,  <46.527790, 50.988632, 50.200344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.816460, 50.714447, 50.161713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689667, 0.699976, 0.185451,
		-0.059519, -0.200440, 0.977896,
		0.721676, -0.685461, -0.096575,
		47.032963, 50.508808, 50.132740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.639366, 51.569187, 50.668262>,  <46.527790, 50.988632, 50.200344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.639366, 51.569187, 50.668262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.444660, 51.362915, 50.950294>,  <46.327839, 51.239151, 51.119514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.444660, 51.362915, 50.950294>,  <46.639366, 51.569187, 50.668262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.444660, 51.362915, 50.950294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866458, -0.387558, 0.314721,
		0.110964, 0.764116, 0.635463,
		-0.486763, -0.515679, 0.705080,
		46.298630, 51.208210, 51.161819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.276932, 51.427994, 51.091019>,  <46.639366, 51.569187, 50.668262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.276932, 51.427994, 51.091019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.963352, 51.224304, 51.233074>,  <46.775204, 51.102089, 51.318306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.963352, 51.224304, 51.233074>,  <47.276932, 51.427994, 51.091019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.963352, 51.224304, 51.233074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580033, -0.396819, 0.711405,
		-0.221340, 0.763693, 0.606450,
		-0.783946, -0.509223, 0.355135,
		46.728168, 51.071537, 51.339615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.128250, 51.534592, 51.811119>,  <47.276932, 51.427994, 51.091019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.128250, 51.534592, 51.811119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.993626, 51.176323, 51.694847>,  <46.912849, 50.961361, 51.625084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.993626, 51.176323, 51.694847>,  <47.128250, 51.534592, 51.811119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.993626, 51.176323, 51.694847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644807, -0.444172, 0.622041,
		-0.686256, 0.021927, 0.727029,
		-0.336566, -0.895673, -0.290677,
		46.892654, 50.907619, 51.607643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.068577, 50.994568, 52.368568>,  <47.128250, 51.534592, 51.811119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.068577, 50.994568, 52.368568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.089642, 50.786331, 52.027695>,  <47.102280, 50.661388, 51.823170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.089642, 50.786331, 52.027695>,  <47.068577, 50.994568, 52.368568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.089642, 50.786331, 52.027695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851401, -0.422554, 0.310748,
		-0.521866, -0.741911, 0.420981,
		0.052660, -0.520592, -0.852180,
		47.105438, 50.630154, 51.772041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.210190, 50.271511, 52.475014>,  <47.068577, 50.994568, 52.368568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.210190, 50.271511, 52.475014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.373436, 50.374184, 52.124573>,  <47.471382, 50.435787, 51.914307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.373436, 50.374184, 52.124573>,  <47.210190, 50.271511, 52.475014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.373436, 50.374184, 52.124573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883089, -0.354358, 0.307546,
		-0.231513, -0.899191, -0.371291,
		0.408113, 0.256683, -0.876104,
		47.495869, 50.451187, 51.861740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.673580, 49.651016, 52.174900>,  <47.210190, 50.271511, 52.475014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.673580, 49.651016, 52.174900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.765919, 50.032330, 52.096962>,  <47.821323, 50.261116, 52.050198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.765919, 50.032330, 52.096962>,  <47.673580, 49.651016, 52.174900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.765919, 50.032330, 52.096962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842807, -0.095845, 0.529612,
		0.486195, -0.286474, -0.825558,
		0.230846, 0.953282, -0.194844,
		47.835171, 50.318314, 52.038509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.420788, 49.675896, 52.181522>,  <47.673580, 49.651016, 52.174900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.420788, 49.675896, 52.181522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.265003, 50.039318, 52.241982>,  <48.171532, 50.257374, 52.278255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.265003, 50.039318, 52.241982>,  <48.420788, 49.675896, 52.181522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.265003, 50.039318, 52.241982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695037, 0.182232, 0.695496,
		0.604356, 0.375917, -0.702453,
		-0.389459, 0.908558, 0.151144,
		48.148167, 50.311886, 52.287323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.004345, 49.175354, 52.069099>,  <48.420788, 49.675896, 52.181522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.004345, 49.175354, 52.069099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.193493, 49.174305, 52.421551>,  <49.306984, 49.173676, 52.633022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.193493, 49.174305, 52.421551>,  <49.004345, 49.175354, 52.069099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.193493, 49.174305, 52.421551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857759, -0.227425, -0.461007,
		0.201598, 0.973792, -0.105295,
		0.472871, -0.002620, 0.881128,
		49.335354, 49.173519, 52.685890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.731880, 49.425385, 51.967403>,  <49.004345, 49.175354, 52.069099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.731880, 49.425385, 51.967403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.726051, 49.221771, 52.311653>,  <49.722553, 49.099602, 52.518204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.726051, 49.221771, 52.311653>,  <49.731880, 49.425385, 51.967403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.726051, 49.221771, 52.311653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927799, -0.327790, -0.178165,
		0.372796, 0.795889, 0.477058,
		-0.014575, -0.509033, 0.860623,
		49.721680, 49.069061, 52.569839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.374722, 49.435551, 52.326168>,  <49.731880, 49.425385, 51.967403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.374722, 49.435551, 52.326168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.203213, 49.103809, 52.469456>,  <50.100307, 48.904762, 52.555428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.203213, 49.103809, 52.469456>,  <50.374722, 49.435551, 52.326168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.203213, 49.103809, 52.469456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876693, -0.477706, -0.056627,
		0.218089, 0.289770, 0.931918,
		-0.428774, -0.829355, 0.358222,
		50.074581, 48.855003, 52.576923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.682995, 49.295212, 53.072178>,  <50.374722, 49.435551, 52.326168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.682995, 49.295212, 53.072178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.854370, 49.055584, 53.342751>,  <50.957195, 48.911808, 53.505093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.854370, 49.055584, 53.342751>,  <50.682995, 49.295212, 53.072178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.854370, 49.055584, 53.342751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774643, 0.628909, 0.066346,
		-0.465160, 0.495567, 0.733512,
		0.428433, -0.599071, 0.676431,
		50.982899, 48.875862, 53.545681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.097946, 49.781120, 53.612877>,  <50.682995, 49.295212, 53.072178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.097946, 49.781120, 53.612877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.222130, 49.401123, 53.626247>,  <51.296642, 49.173122, 53.634270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.222130, 49.401123, 53.626247>,  <51.097946, 49.781120, 53.612877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.222130, 49.401123, 53.626247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948399, 0.311941, 0.056853,
		-0.064437, 0.014049, 0.997823,
		0.310463, -0.949998, 0.033425,
		51.315269, 49.116123, 53.636276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.695610, 49.810585, 53.889889>,  <51.097946, 49.781120, 53.612877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.695610, 49.810585, 53.889889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.730156, 49.431824, 53.766014>,  <51.750885, 49.204567, 53.691689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.730156, 49.431824, 53.766014>,  <51.695610, 49.810585, 53.889889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.730156, 49.431824, 53.766014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992244, 0.109648, -0.058547,
		0.089396, -0.302233, 0.949033,
		0.086365, -0.946907, -0.309691,
		51.756065, 49.147751, 53.673107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.190445, 49.354321, 54.192493>,  <51.695610, 49.810585, 53.889889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.190445, 49.354321, 54.192493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.068306, 49.239326, 54.555618>,  <51.995022, 49.170330, 54.773491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.068306, 49.239326, 54.555618>,  <52.190445, 49.354321, 54.192493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.068306, 49.239326, 54.555618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852693, -0.506920, 0.126278,
		0.423884, 0.812642, 0.399920,
		-0.305346, -0.287481, 0.907809,
		51.976704, 49.153084, 54.827961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.772629, 49.541233, 54.690849>,  <52.190445, 49.354321, 54.192493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.772629, 49.541233, 54.690849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.537079, 49.254131, 54.839474>,  <52.395748, 49.081871, 54.928650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.537079, 49.254131, 54.839474>,  <52.772629, 49.541233, 54.690849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.537079, 49.254131, 54.839474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779148, -0.626344, 0.024927,
		0.214833, 0.304179, 0.928074,
		-0.588876, -0.717752, 0.371560,
		52.360416, 49.038807, 54.950943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.895164, 49.098907, 55.195061>,  <52.772629, 49.541233, 54.690849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.895164, 49.098907, 55.195061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.747345, 48.739300, 55.289032>,  <52.658653, 48.523533, 55.345413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.747345, 48.739300, 55.289032>,  <52.895164, 49.098907, 55.195061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.747345, 48.739300, 55.289032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397244, -0.075700, -0.914586,
		0.840016, -0.431310, -0.329156,
		-0.369553, -0.899022, 0.234925,
		52.636478, 48.469593, 55.359509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.245186, 48.573006, 54.816406>,  <52.895164, 49.098907, 55.195061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.245186, 48.573006, 54.816406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.862949, 48.470417, 54.874458>,  <52.633606, 48.408863, 54.909290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.862949, 48.470417, 54.874458>,  <53.245186, 48.573006, 54.816406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.862949, 48.470417, 54.874458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059582, -0.314152, -0.947501,
		0.288603, -0.914073, 0.284920,
		-0.955593, -0.256475, 0.145127,
		52.576271, 48.393475, 54.917995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.188911, 47.819454, 54.456127>,  <53.245186, 48.573006, 54.816406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.188911, 47.819454, 54.456127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.842110, 48.017700, 54.476761>,  <52.634029, 48.136650, 54.489140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.842110, 48.017700, 54.476761>,  <53.188911, 47.819454, 54.456127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.842110, 48.017700, 54.476761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184442, -0.223034, -0.957202,
		-0.462904, -0.839415, 0.284786,
		-0.867007, 0.495619, 0.051580,
		52.582008, 48.166386, 54.492233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.992073, 47.879169, 54.461685>,  <53.188911, 47.819454, 54.456127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.992073, 47.879169, 54.461685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.964485, 48.187820, 54.714615>,  <53.947933, 48.373013, 54.866371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.964485, 48.187820, 54.714615>,  <53.992073, 47.879169, 54.461685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.964485, 48.187820, 54.714615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941821, -0.158643, 0.296319,
		0.328962, 0.615973, -0.715794,
		-0.068968, 0.771628, 0.632324,
		53.943794, 48.419308, 54.904312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.477482, 48.511265, 54.354118>,  <53.992073, 47.879169, 54.461685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.477482, 48.511265, 54.354118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.398918, 48.475319, 54.744675>,  <54.351780, 48.453751, 54.979008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.398918, 48.475319, 54.744675>,  <54.477482, 48.511265, 54.354118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.398918, 48.475319, 54.744675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971090, -0.155614, 0.181020,
		0.135674, 0.983722, 0.117830,
		-0.196409, -0.089864, 0.976395,
		54.339996, 48.448360, 55.037594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.095245, 48.784031, 54.736015>,  <54.477482, 48.511265, 54.354118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.095245, 48.784031, 54.736015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.927956, 48.498844, 54.961147>,  <54.827583, 48.327732, 55.096226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.927956, 48.498844, 54.961147>,  <55.095245, 48.784031, 54.736015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.927956, 48.498844, 54.961147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878282, -0.475490, 0.050298,
		0.231758, 0.515358, 0.825042,
		-0.418221, -0.712963, 0.562828,
		54.802490, 48.284954, 55.129997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.632969, 48.444016, 55.126663>,  <55.095245, 48.784031, 54.736015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.632969, 48.444016, 55.126663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.367950, 48.147732, 55.171158>,  <55.208939, 47.969959, 55.197853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.367950, 48.147732, 55.171158>,  <55.632969, 48.444016, 55.126663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.367950, 48.147732, 55.171158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744448, -0.667585, -0.011297,
		0.082627, 0.075324, 0.993730,
		-0.662548, -0.740713, 0.111235,
		55.169186, 47.925518, 55.204529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.770039, 47.958309, 54.437889>,  <55.632969, 48.444016, 55.126663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.770039, 47.958309, 54.437889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.074829, 47.746040, 54.289413>,  <56.257702, 47.618679, 54.200329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.074829, 47.746040, 54.289413>,  <55.770039, 47.958309, 54.437889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.074829, 47.746040, 54.289413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645821, 0.665200, 0.374733,
		0.048057, -0.525260, 0.849583,
		0.761975, -0.530670, -0.371192,
		56.303421, 47.586838, 54.178055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.170589, 47.745277, 54.918056>,  <55.770039, 47.958309, 54.437889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.170589, 47.745277, 54.918056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.387741, 47.794266, 54.585724>,  <56.518032, 47.823658, 54.386326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.387741, 47.794266, 54.585724>,  <56.170589, 47.745277, 54.918056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.387741, 47.794266, 54.585724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537244, 0.709746, 0.455664,
		0.645483, -0.693731, 0.319514,
		0.542882, 0.122466, -0.830832,
		56.550606, 47.831005, 54.336475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.963272, 47.792583, 55.018509>,  <56.170589, 47.745277, 54.918056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.963272, 47.792583, 55.018509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.876518, 47.982525, 54.677338>,  <56.824467, 48.096489, 54.472637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.876518, 47.982525, 54.677338>,  <56.963272, 47.792583, 55.018509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.876518, 47.982525, 54.677338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481862, 0.811935, 0.329500,
		0.848982, -0.339528, -0.404908,
		-0.216885, 0.474849, -0.852924,
		56.811451, 48.124981, 54.421459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.573746, 48.069607, 54.829609>,  <56.963272, 47.792583, 55.018509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.573746, 48.069607, 54.829609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.277649, 48.281807, 54.664391>,  <57.099991, 48.409126, 54.565258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.277649, 48.281807, 54.664391>,  <57.573746, 48.069607, 54.829609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.277649, 48.281807, 54.664391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534343, 0.837067, 0.117460,
		0.408061, -0.133759, -0.903103,
		-0.740246, 0.530497, -0.413048,
		57.055576, 48.440956, 54.540478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.868073, 48.546013, 54.283813>,  <57.573746, 48.069607, 54.829609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.868073, 48.546013, 54.283813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.540581, 48.675240, 54.473679>,  <57.344086, 48.752777, 54.587597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.540581, 48.675240, 54.473679>,  <57.868073, 48.546013, 54.283813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.540581, 48.675240, 54.473679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429638, 0.893125, 0.133188,
		-0.380901, 0.312977, -0.870035,
		-0.818734, 0.323069, 0.474659,
		57.294960, 48.772160, 54.616077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.713100, 49.283348, 54.012707>,  <57.868073, 48.546013, 54.283813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.713100, 49.283348, 54.012707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.584709, 49.224815, 54.386993>,  <57.507675, 49.189697, 54.611565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.584709, 49.224815, 54.386993>,  <57.713100, 49.283348, 54.012707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.584709, 49.224815, 54.386993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270643, 0.932621, 0.238685,
		-0.907594, 0.329857, -0.259744,
		-0.320975, -0.146331, 0.935715,
		57.488419, 49.180916, 54.667709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.140961, 49.822247, 54.319450>,  <57.713100, 49.283348, 54.012707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.140961, 49.822247, 54.319450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.389336, 49.678638, 54.598175>,  <57.538361, 49.592472, 54.765408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.389336, 49.678638, 54.598175>,  <57.140961, 49.822247, 54.319450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.389336, 49.678638, 54.598175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249315, 0.933238, 0.258667,
		-0.743155, 0.013109, 0.668991,
		0.620937, -0.359019, 0.696808,
		57.575619, 49.570934, 54.807217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.215141, 50.362141, 54.826641>,  <57.140961, 49.822247, 54.319450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.215141, 50.362141, 54.826641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.503487, 50.119656, 54.961018>,  <57.676495, 49.974163, 55.041645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.503487, 50.119656, 54.961018>,  <57.215141, 50.362141, 54.826641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.503487, 50.119656, 54.961018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567824, 0.794504, 0.215265,
		-0.397403, 0.035577, 0.916955,
		0.720866, -0.606215, 0.335940,
		57.719746, 49.937790, 55.061798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.467102, 50.592129, 55.582203>,  <57.215141, 50.362141, 54.826641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.467102, 50.592129, 55.582203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.727043, 50.416904, 55.333755>,  <57.883007, 50.311771, 55.184685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.727043, 50.416904, 55.333755>,  <57.467102, 50.592129, 55.582203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.727043, 50.416904, 55.333755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621258, 0.776933, 0.102045,
		0.437868, -0.452191, 0.777042,
		0.649854, -0.438061, -0.621122,
		57.922001, 50.285484, 55.147419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.162601, 50.612591, 55.718395>,  <57.467102, 50.592129, 55.582203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.162601, 50.612591, 55.718395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.244751, 50.590363, 56.109238>,  <58.294041, 50.577026, 56.343742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.244751, 50.590363, 56.109238>,  <58.162601, 50.612591, 55.718395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.244751, 50.590363, 56.109238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751575, -0.630527, -0.193832,
		0.626861, 0.774176, -0.087731,
		0.205377, -0.055569, 0.977104,
		58.306362, 50.573692, 56.402370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.615044, 51.204685, 55.926682>,  <58.162601, 50.612591, 55.718395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.615044, 51.204685, 55.926682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.743896, 51.582909, 55.945229>,  <58.821209, 51.809841, 55.956356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.743896, 51.582909, 55.945229>,  <58.615044, 51.204685, 55.926682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.743896, 51.582909, 55.945229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914019, -0.297884, -0.275380,
		-0.246575, 0.131091, -0.960216,
		0.322133, 0.945558, 0.046369,
		58.840538, 51.866577, 55.959141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.879692, 51.495483, 55.254410>,  <58.615044, 51.204685, 55.926682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.879692, 51.495483, 55.254410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.051155, 51.665665, 55.573219>,  <59.154034, 51.767773, 55.764503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.051155, 51.665665, 55.573219>,  <58.879692, 51.495483, 55.254410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.051155, 51.665665, 55.573219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902890, -0.170173, -0.394754,
		-0.032318, 0.888836, -0.457083,
		0.428656, 0.425454, 0.797022,
		59.179752, 51.793301, 55.812325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.381527, 52.031422, 55.038853>,  <58.879692, 51.495483, 55.254410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.381527, 52.031422, 55.038853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.510941, 51.926628, 55.402542>,  <59.588589, 51.863754, 55.620758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.510941, 51.926628, 55.402542>,  <59.381527, 52.031422, 55.038853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.510941, 51.926628, 55.402542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925311, -0.113271, -0.361897,
		0.197799, 0.958403, 0.205767,
		0.323536, -0.261982, 0.909225,
		59.608002, 51.848034, 55.675308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.875435, 52.483902, 55.485168>,  <59.381527, 52.031422, 55.038853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.875435, 52.483902, 55.485168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.934738, 52.090431, 55.525948>,  <59.970322, 51.854347, 55.550415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.934738, 52.090431, 55.525948>,  <59.875435, 52.483902, 55.485168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.934738, 52.090431, 55.525948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930464, 0.103820, -0.351365,
		0.335046, 0.146954, 0.930671,
		0.148257, -0.983680, 0.101951,
		59.979214, 51.795326, 55.556534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.256458, 52.206322, 54.851048>,  <59.875435, 52.483902, 55.485168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.256458, 52.206322, 54.851048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.298248, 51.833359, 54.712654>,  <60.323322, 51.609581, 54.629616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.298248, 51.833359, 54.712654>,  <60.256458, 52.206322, 54.851048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.298248, 51.833359, 54.712654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971875, 0.021889, 0.234477,
		-0.211054, -0.360754, 0.908467,
		0.104474, -0.932404, -0.345988,
		60.329590, 51.553638, 54.608856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.878963, 52.537106, 54.564316>,  <60.256458, 52.206322, 54.851048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.878963, 52.537106, 54.564316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.903328, 52.799351, 54.865372>,  <60.917946, 52.956696, 55.046005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.903328, 52.799351, 54.865372>,  <60.878963, 52.537106, 54.564316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.903328, 52.799351, 54.865372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524964, 0.620284, -0.582805,
		-0.848942, 0.430609, -0.306388,
		0.060913, 0.655610, 0.752639,
		60.921600, 52.996033, 55.091164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.693325, 53.181900, 54.307774>,  <60.878963, 52.537106, 54.564316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.693325, 53.181900, 54.307774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.915108, 53.236580, 54.636139>,  <61.048176, 53.269386, 54.833157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.915108, 53.236580, 54.636139>,  <60.693325, 53.181900, 54.307774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.915108, 53.236580, 54.636139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698146, 0.460485, -0.548221,
		-0.452958, 0.877079, 0.159882,
		0.554456, 0.136700, 0.820909,
		61.081444, 53.277592, 54.882412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.760456, 53.916016, 54.645451>,  <60.693325, 53.181900, 54.307774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.760456, 53.916016, 54.645451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.057144, 53.647732, 54.645744>,  <61.235157, 53.486763, 54.645920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.057144, 53.647732, 54.645744>,  <60.760456, 53.916016, 54.645451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.057144, 53.647732, 54.645744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505256, 0.558038, -0.658262,
		0.441092, 0.488618, 0.752788,
		0.741724, -0.670705, 0.000731,
		61.279663, 53.446522, 54.645962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.337955, 54.340469, 54.768852>,  <60.760456, 53.916016, 54.645451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.337955, 54.340469, 54.768852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.448372, 53.996365, 54.597389>,  <61.514622, 53.789902, 54.494511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.448372, 53.996365, 54.597389>,  <61.337955, 54.340469, 54.768852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.448372, 53.996365, 54.597389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624114, 0.499600, -0.600734,
		0.730948, -0.101704, 0.674813,
		0.276039, -0.860265, -0.428656,
		61.531185, 53.738285, 54.468792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.533741, 54.248489, 55.561359>,  <61.337955, 54.340469, 54.768852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.533741, 54.248489, 55.561359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.924408, 54.178764, 55.511169>,  <62.158806, 54.136929, 55.481056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.924408, 54.178764, 55.511169>,  <61.533741, 54.248489, 55.561359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.924408, 54.178764, 55.511169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199542, 0.520355, 0.830309,
		-0.079444, -0.835970, 0.542995,
		0.976664, -0.174314, -0.125472,
		62.217407, 54.126469, 55.473526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.937592, 54.076065, 56.209545>,  <61.533741, 54.248489, 55.561359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.937592, 54.076065, 56.209545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.246231, 54.203011, 55.989029>,  <62.431416, 54.279179, 55.856720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.246231, 54.203011, 55.989029>,  <61.937592, 54.076065, 56.209545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.246231, 54.203011, 55.989029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355584, 0.503411, 0.787488,
		0.527449, -0.803650, 0.275578,
		0.771594, 0.317369, -0.551289,
		62.477711, 54.298218, 55.823643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.572769, 54.084461, 56.623398>,  <61.937592, 54.076065, 56.209545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.572769, 54.084461, 56.623398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.676010, 54.363350, 56.355888>,  <62.737953, 54.530685, 56.195381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.676010, 54.363350, 56.355888>,  <62.572769, 54.084461, 56.623398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.676010, 54.363350, 56.355888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418934, 0.542996, 0.727770,
		0.870563, -0.468010, -0.151945,
		0.258098, 0.697225, -0.668777,
		62.753441, 54.572517, 56.155254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.333809, 54.169785, 56.538082>,  <62.572769, 54.084461, 56.623398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.333809, 54.169785, 56.538082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.186119, 54.532154, 56.455162>,  <63.097504, 54.749577, 56.405411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.186119, 54.532154, 56.455162>,  <63.333809, 54.169785, 56.538082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.186119, 54.532154, 56.455162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479415, 0.376761, 0.792599,
		0.796138, 0.193263, -0.573423,
		-0.369223, 0.905925, -0.207301,
		63.075352, 54.803932, 56.392971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.841908, 54.760033, 56.252872>,  <63.333809, 54.169785, 56.538082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.841908, 54.760033, 56.252872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.551392, 54.851803, 56.512062>,  <63.377083, 54.906864, 56.667576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.551392, 54.851803, 56.512062>,  <63.841908, 54.760033, 56.252872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.551392, 54.851803, 56.512062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685593, 0.173580, 0.706988,
		0.049722, 0.957724, -0.283358,
		-0.726285, 0.229421, 0.647978,
		63.333508, 54.920628, 56.706455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.907200, 55.382374, 56.457523>,  <63.841908, 54.760033, 56.252872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.907200, 55.382374, 56.457523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.712662, 55.215515, 56.764626>,  <63.595940, 55.115398, 56.948887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.712662, 55.215515, 56.764626>,  <63.907200, 55.382374, 56.457523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.712662, 55.215515, 56.764626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808507, 0.118351, 0.576463,
		-0.331334, 0.901101, 0.279705,
		-0.486348, -0.417146, 0.767760,
		63.566757, 55.090370, 56.994953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.991188, 55.865295, 57.061954>,  <63.907200, 55.382374, 56.457523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.991188, 55.865295, 57.061954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.983025, 55.472988, 57.139603>,  <63.978127, 55.237606, 57.186192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.983025, 55.472988, 57.139603>,  <63.991188, 55.865295, 57.061954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.983025, 55.472988, 57.139603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951034, 0.040853, 0.306375,
		-0.308412, 0.190865, 0.931908,
		-0.020405, -0.980766, 0.194118,
		63.976902, 55.178757, 57.197838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.162796, 55.692398, 57.817711>,  <63.991188, 55.865295, 57.061954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.162796, 55.692398, 57.817711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.260254, 55.406239, 57.555763>,  <64.318726, 55.234543, 57.398594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.260254, 55.406239, 57.555763>,  <64.162796, 55.692398, 57.817711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.260254, 55.406239, 57.555763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946640, 0.028531, 0.321028,
		-0.210978, -0.698138, 0.684173,
		0.243642, -0.715395, -0.654866,
		64.333344, 55.191620, 57.359303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.367706, 55.008137, 58.046494>,  <64.162796, 55.692398, 57.817711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.367706, 55.008137, 58.046494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.559387, 55.142200, 57.722015>,  <64.674393, 55.222637, 57.527328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.559387, 55.142200, 57.722015>,  <64.367706, 55.008137, 58.046494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.559387, 55.142200, 57.722015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872306, -0.079490, 0.482455,
		0.097218, -0.938802, -0.330453,
		0.479197, 0.335159, -0.811195,
		64.703148, 55.242748, 57.478657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.071907, 54.737751, 58.018986>,  <64.367706, 55.008137, 58.046494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.071907, 54.737751, 58.018986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.099480, 55.024467, 57.741440>,  <65.116020, 55.196499, 57.574913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.099480, 55.024467, 57.741440>,  <65.071907, 54.737751, 58.018986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.099480, 55.024467, 57.741440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974326, 0.101055, 0.201188,
		0.214329, -0.689923, -0.691426,
		0.068933, 0.716795, -0.693869,
		65.120163, 55.239506, 57.533279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.592735, 54.686401, 57.301758>,  <65.071907, 54.737751, 58.018986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.592735, 54.686401, 57.301758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.531921, 55.030540, 57.496361>,  <65.495438, 55.237022, 57.613121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.531921, 55.030540, 57.496361>,  <65.592735, 54.686401, 57.301758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.531921, 55.030540, 57.496361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959661, 0.010703, 0.280957,
		0.236514, 0.509593, -0.827270,
		-0.152028, 0.860349, 0.486505,
		65.486313, 55.288647, 57.642311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.171753, 54.717800, 56.689156>,  <65.592735, 54.686401, 57.301758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.171753, 54.717800, 56.689156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.535545, 54.569054, 56.614815>,  <66.753822, 54.479805, 56.570210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.535545, 54.569054, 56.614815>,  <66.171753, 54.717800, 56.689156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.535545, 54.569054, 56.614815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181891, -0.046043, 0.982240,
		-0.373823, -0.927142, 0.025764,
		0.909490, -0.371870, -0.185851,
		66.808395, 54.457493, 56.559059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.179665, 54.095169, 57.033413>,  <66.171753, 54.717800, 56.689156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.179665, 54.095169, 57.033413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.548431, 54.241810, 56.983337>,  <66.769691, 54.329792, 56.953293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.548431, 54.241810, 56.983337>,  <66.179665, 54.095169, 57.033413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.548431, 54.241810, 56.983337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161036, -0.068768, 0.984550,
		0.352326, -0.927834, -0.122435,
		0.921918, 0.366599, -0.125186,
		66.825005, 54.351791, 56.945782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.739037, 53.699696, 57.410381>,  <66.179665, 54.095169, 57.033413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.739037, 53.699696, 57.410381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.834213, 54.084736, 57.358559>,  <66.891319, 54.315762, 57.327465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.834213, 54.084736, 57.358559>,  <66.739037, 53.699696, 57.410381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.834213, 54.084736, 57.358559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108334, 0.106257, 0.988420,
		0.965220, -0.249217, -0.079000,
		0.237937, 0.962600, -0.129560,
		66.905594, 54.373516, 57.319691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.320312, 53.874531, 57.804951>,  <66.739037, 53.699696, 57.410381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.320312, 53.874531, 57.804951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.154312, 54.235741, 57.760559>,  <67.054710, 54.452469, 57.733925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.154312, 54.235741, 57.760559>,  <67.320312, 53.874531, 57.804951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.154312, 54.235741, 57.760559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122924, 0.176515, 0.976592,
		0.901481, 0.391640, -0.184257,
		-0.414996, 0.903029, -0.110983,
		67.029816, 54.506649, 57.727264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.760979, 54.535278, 57.975525>,  <67.320312, 53.874531, 57.804951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.760979, 54.535278, 57.975525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.373131, 54.598240, 58.050423>,  <67.140419, 54.636017, 58.095360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.373131, 54.598240, 58.050423>,  <67.760979, 54.535278, 57.975525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.373131, 54.598240, 58.050423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174088, -0.093682, 0.980264,
		0.171836, 0.983081, 0.063435,
		-0.969621, 0.157401, 0.187240,
		67.082245, 54.645462, 58.106594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.963806, 54.894459, 57.370029>,  <67.760979, 54.535278, 57.975525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.963806, 54.894459, 57.370029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.193657, 54.993233, 57.682137>,  <68.331566, 55.052498, 57.869400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.193657, 54.993233, 57.682137>,  <67.963806, 54.894459, 57.370029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.193657, 54.993233, 57.682137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135736, -0.968947, 0.206680,
		0.807076, -0.012855, -0.590308,
		0.574634, 0.246932, 0.780269,
		68.366051, 55.067314, 57.916218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.120987, 55.679096, 57.097469>,  <67.963806, 54.894459, 57.370029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.120987, 55.679096, 57.097469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.389267, 55.391827, 57.171638>,  <68.550240, 55.219467, 57.216141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.389267, 55.391827, 57.171638>,  <68.120987, 55.679096, 57.097469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.389267, 55.391827, 57.171638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684107, 0.502366, -0.528797,
		0.286616, 0.481518, 0.828246,
		0.670708, -0.718171, 0.185424,
		68.590477, 55.176376, 57.227264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.752052, 56.155308, 57.099506>,  <68.120987, 55.679096, 57.097469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.752052, 56.155308, 57.099506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.702217, 56.223457, 57.490494>,  <68.672318, 56.264347, 57.725086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.702217, 56.223457, 57.490494>,  <68.752052, 56.155308, 57.099506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.702217, 56.223457, 57.490494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861799, 0.506794, 0.021516,
		-0.491711, 0.845064, -0.209971,
		-0.124594, 0.170373, 0.977471,
		68.664841, 56.274570, 57.783733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.900047, 56.855099, 57.234875>,  <68.752052, 56.155308, 57.099506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.900047, 56.855099, 57.234875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.991707, 56.644360, 57.562271>,  <69.046700, 56.517918, 57.758709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.991707, 56.644360, 57.562271>,  <68.900047, 56.855099, 57.234875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.991707, 56.644360, 57.562271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875861, 0.478464, 0.062767,
		-0.424686, 0.702500, 0.571082,
		0.229148, -0.526845, 0.818490,
		69.060448, 56.486305, 57.807819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.096542, 57.342693, 57.898315>,  <68.900047, 56.855099, 57.234875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.096542, 57.342693, 57.898315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.278534, 56.986534, 57.903595>,  <69.387733, 56.772839, 57.906765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.278534, 56.986534, 57.903595>,  <69.096542, 57.342693, 57.898315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.278534, 56.986534, 57.903595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861531, 0.436385, -0.259486,
		0.225286, 0.129437, 0.965657,
		0.454985, -0.890401, 0.013202,
		69.415031, 56.719414, 57.907555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.839722, 57.600048, 58.069180>,  <69.096542, 57.342693, 57.898315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.839722, 57.600048, 58.069180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.866966, 57.210293, 57.983459>,  <69.883308, 56.976440, 57.932026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.866966, 57.210293, 57.983459>,  <69.839722, 57.600048, 58.069180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.866966, 57.210293, 57.983459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980558, 0.104997, -0.165779,
		0.184035, -0.198847, 0.962596,
		0.068105, -0.974390, -0.214304,
		69.887398, 56.917976, 57.919167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.561905, 57.850723, 58.672310>,  <69.839722, 57.600048, 58.069180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.561905, 57.850723, 58.672310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.713715, 57.485699, 58.733223>,  <69.804802, 57.266685, 58.769772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.713715, 57.485699, 58.733223>,  <69.561905, 57.850723, 58.672310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.713715, 57.485699, 58.733223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795852, 0.238087, -0.556718,
		0.471782, 0.332487, 0.816624,
		0.379529, -0.912561, 0.152285,
		69.827576, 57.211929, 58.778908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.244568, 57.925591, 59.060703>,  <69.561905, 57.850723, 58.672310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.244568, 57.925591, 59.060703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.242363, 57.593605, 58.837585>,  <70.241043, 57.394413, 58.703716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.242363, 57.593605, 58.837585>,  <70.244568, 57.925591, 59.060703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.242363, 57.593605, 58.837585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881844, 0.258979, -0.394058,
		0.471509, -0.494060, 0.730468,
		-0.005512, -0.829961, -0.557795,
		70.240707, 57.344616, 58.670246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.887177, 57.672878, 59.079411>,  <70.244568, 57.925591, 59.060703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.887177, 57.672878, 59.079411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.703896, 57.525673, 58.755775>,  <70.593925, 57.437351, 58.561596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.703896, 57.525673, 58.755775>,  <70.887177, 57.672878, 59.079411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.703896, 57.525673, 58.755775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862373, 0.036444, -0.504961,
		0.215316, -0.929108, 0.300662,
		-0.458206, -0.368009, -0.809084,
		70.566437, 57.415272, 58.513050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.546913, 57.339890, 59.702892>,  <70.887177, 57.672878, 59.079411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.546913, 57.339890, 59.702892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.430420, 57.073963, 59.427734>,  <70.360527, 56.914406, 59.262638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.430420, 57.073963, 59.427734>,  <70.546913, 57.339890, 59.702892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.430420, 57.073963, 59.427734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874936, -0.475894, 0.089509,
		-0.386872, -0.575795, 0.720271,
		-0.291235, -0.664820, -0.687894,
		70.343048, 56.874516, 59.221367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.446709, 56.779816, 60.037579>,  <70.546913, 57.339890, 59.702892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.446709, 56.779816, 60.037579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.521240, 56.696377, 59.653542>,  <70.565956, 56.646313, 59.423119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.521240, 56.696377, 59.653542>,  <70.446709, 56.779816, 60.037579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.521240, 56.696377, 59.653542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874710, -0.409773, 0.258782,
		-0.447400, -0.888016, 0.106115,
		0.186320, -0.208599, -0.960089,
		70.577133, 56.633797, 59.365517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.638771, 56.025402, 59.992733>,  <70.446709, 56.779816, 60.037579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.638771, 56.025402, 59.992733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.797020, 56.265968, 59.715088>,  <70.891968, 56.410309, 59.548500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.797020, 56.265968, 59.715088>,  <70.638771, 56.025402, 59.992733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.797020, 56.265968, 59.715088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918392, -0.253596, 0.303719,
		0.006636, -0.757623, -0.652659,
		0.395616, 0.601412, -0.694112,
		70.915703, 56.446392, 59.506855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.230423, 55.703331, 59.686512>,  <70.638771, 56.025402, 59.992733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.230423, 55.703331, 59.686512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.278015, 56.099831, 59.663658>,  <71.306572, 56.337730, 59.649948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.278015, 56.099831, 59.663658>,  <71.230423, 55.703331, 59.686512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.278015, 56.099831, 59.663658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982180, -0.109066, 0.153060,
		0.145490, -0.074324, -0.986564,
		0.118976, 0.991252, -0.057131,
		71.313705, 56.397205, 59.646519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.956726, 55.839909, 59.505119>,  <71.230423, 55.703331, 59.686512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.956726, 55.839909, 59.505119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.854622, 56.195396, 59.657440>,  <71.793358, 56.408691, 59.748833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.854622, 56.195396, 59.657440>,  <71.956726, 55.839909, 59.505119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.854622, 56.195396, 59.657440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963234, 0.199627, 0.179801,
		0.083775, 0.412698, -0.907007,
		-0.255266, 0.888723, 0.380802,
		71.778046, 56.462013, 59.771679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.420959, 56.312592, 59.126133>,  <71.956726, 55.839909, 59.505119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.420959, 56.312592, 59.126133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.300797, 56.491623, 59.463043>,  <72.228699, 56.599041, 59.665188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.300797, 56.491623, 59.463043>,  <72.420959, 56.312592, 59.126133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.300797, 56.491623, 59.463043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941113, 0.282691, 0.185449,
		-0.155100, 0.848387, -0.506146,
		-0.300415, 0.447578, 0.842273,
		72.210670, 56.625896, 59.715725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.724411, 57.010223, 59.219433>,  <72.420959, 56.312592, 59.126133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.724411, 57.010223, 59.219433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.650284, 56.922272, 59.602539>,  <72.605812, 56.869499, 59.832401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.650284, 56.922272, 59.602539>,  <72.724411, 57.010223, 59.219433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.650284, 56.922272, 59.602539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827040, 0.491485, 0.272850,
		-0.530721, 0.842672, 0.090770,
		-0.185311, -0.219877, 0.957765,
		72.594688, 56.856308, 59.889870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.461006, 57.502934, 59.658215>,  <72.724411, 57.010223, 59.219433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.461006, 57.502934, 59.658215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.683739, 57.252029, 59.876015>,  <72.817383, 57.101486, 60.006695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.683739, 57.252029, 59.876015>,  <72.461006, 57.502934, 59.658215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.683739, 57.252029, 59.876015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706186, 0.702632, 0.087236,
		-0.437300, 0.335939, 0.834214,
		0.556839, -0.627259, 0.544497,
		72.850792, 57.063850, 60.039364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.542694, 57.767872, 60.394295>,  <72.461006, 57.502934, 59.658215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.542694, 57.767872, 60.394295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.836479, 57.554935, 60.225929>,  <73.012749, 57.427174, 60.124908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.836479, 57.554935, 60.225929>,  <72.542694, 57.767872, 60.394295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.836479, 57.554935, 60.225929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582677, 0.812629, -0.011028,
		0.347920, -0.237159, 0.907032,
		0.734465, -0.532343, -0.420917,
		73.056816, 57.395233, 60.099655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.148987, 57.708424, 60.907761>,  <72.542694, 57.767872, 60.394295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.148987, 57.708424, 60.907761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.217720, 57.704876, 60.513725>,  <73.258957, 57.702747, 60.277306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.217720, 57.704876, 60.513725>,  <73.148987, 57.708424, 60.907761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.217720, 57.704876, 60.513725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660408, 0.743026, 0.108507,
		0.730983, -0.669204, 0.133529,
		0.171829, -0.008867, -0.985087,
		73.269272, 57.702217, 60.218201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.818001, 57.495228, 60.742603>,  <73.148987, 57.708424, 60.907761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.818001, 57.495228, 60.742603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.669586, 57.745644, 60.468262>,  <73.580536, 57.895893, 60.303658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.669586, 57.745644, 60.468262>,  <73.818001, 57.495228, 60.742603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.669586, 57.745644, 60.468262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713938, 0.664611, 0.220419,
		0.593820, -0.407875, -0.693553,
		-0.371039, 0.626043, -0.685857,
		73.558273, 57.933456, 60.262505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
