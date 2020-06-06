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
	<4.477471, 14.536802, 14.847775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.292723, 14.888215, 14.896531>,  <4.181874, 15.099063, 14.925785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.292723, 14.888215, 14.896531>,  <4.477471, 14.536802, 14.847775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.292723, 14.888215, 14.896531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881146, 0.438805, 0.176159,
		0.101274, 0.188766, -0.976786,
		-0.461871, 0.878532, 0.121891,
		4.154162, 15.151774, 14.933099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.627671, 15.079596, 14.283590>,  <4.477471, 14.536802, 14.847775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.627671, 15.079596, 14.283590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.560776, 15.196979, 14.660083>,  <4.520639, 15.267408, 14.885978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.560776, 15.196979, 14.660083>,  <4.627671, 15.079596, 14.283590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.560776, 15.196979, 14.660083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924787, 0.377624, 0.046578,
		-0.341763, 0.878227, -0.334538,
		-0.167236, 0.293458, 0.941230,
		4.510605, 15.285016, 14.942451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.654831, 15.912197, 14.381328>,  <4.627671, 15.079596, 14.283590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.654831, 15.912197, 14.381328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.761617, 15.728921, 14.720454>,  <4.825688, 15.618956, 14.923930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.761617, 15.728921, 14.720454>,  <4.654831, 15.912197, 14.381328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.761617, 15.728921, 14.720454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928147, 0.359018, -0.098233,
		-0.259371, 0.813122, 0.521113,
		0.266965, -0.458190, 0.847816,
		4.841706, 15.591464, 14.974799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.025289, 16.392820, 14.749014>,  <4.654831, 15.912197, 14.381328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.025289, 16.392820, 14.749014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.131757, 16.024084, 14.861700>,  <5.195639, 15.802842, 14.929312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.131757, 16.024084, 14.861700>,  <5.025289, 16.392820, 14.749014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.131757, 16.024084, 14.861700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960655, 0.277742, 0.001188,
		-0.079339, 0.270315, 0.959497,
		0.266172, -0.921840, 0.281715,
		5.211609, 15.747532, 14.946215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.472679, 16.357071, 15.427687>,  <5.025289, 16.392820, 14.749014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.472679, 16.357071, 15.427687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.487154, 16.132572, 15.096944>,  <5.495839, 15.997872, 14.898499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.487154, 16.132572, 15.096944>,  <5.472679, 16.357071, 15.427687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.487154, 16.132572, 15.096944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804329, 0.507395, -0.309203,
		0.593082, -0.653875, 0.469789,
		0.036189, -0.561248, -0.826856,
		5.498011, 15.964198, 14.848886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.195282, 16.158770, 15.383393>,  <5.472679, 16.357071, 15.427687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.195282, 16.158770, 15.383393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.006514, 16.148623, 15.030883>,  <5.893253, 16.142534, 14.819377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.006514, 16.148623, 15.030883>,  <6.195282, 16.158770, 15.383393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.006514, 16.148623, 15.030883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746837, 0.519714, -0.414888,
		0.468536, -0.853964, -0.226318,
		-0.471920, -0.025367, -0.881276,
		5.864938, 16.141012, 14.766500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.642946, 15.788548, 14.883705>,  <6.195282, 16.158770, 15.383393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.642946, 15.788548, 14.883705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.394399, 16.034603, 14.689590>,  <6.245271, 16.182236, 14.573120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.394399, 16.034603, 14.689590>,  <6.642946, 15.788548, 14.883705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.394399, 16.034603, 14.689590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782719, 0.515319, -0.348994,
		0.035399, -0.596699, -0.801684,
		-0.621367, 0.615140, -0.485290,
		6.207989, 16.219145, 14.544003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.020119, 15.799972, 14.274291>,  <6.642946, 15.788548, 14.883705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.020119, 15.799972, 14.274291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.762723, 16.105425, 14.253185>,  <6.608285, 16.288696, 14.240521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.762723, 16.105425, 14.253185>,  <7.020119, 15.799972, 14.274291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.762723, 16.105425, 14.253185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634524, 0.493597, -0.594762,
		-0.428137, -0.416203, -0.802168,
		-0.643490, 0.763634, -0.052764,
		6.569676, 16.334515, 14.237356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.182408, 16.148485, 13.718167>,  <7.020119, 15.799972, 14.274291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.182408, 16.148485, 13.718167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.942241, 16.426722, 13.875978>,  <6.798140, 16.593662, 13.970665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.942241, 16.426722, 13.875978>,  <7.182408, 16.148485, 13.718167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.942241, 16.426722, 13.875978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695747, 0.697608, -0.171111,
		-0.394250, 0.171754, -0.902811,
		-0.600419, 0.695589, 0.394529,
		6.762115, 16.635399, 13.994337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.012828, 16.740437, 13.204801>,  <7.182408, 16.148485, 13.718167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.012828, 16.740437, 13.204801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.978388, 16.870110, 13.581628>,  <6.957724, 16.947912, 13.807724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.978388, 16.870110, 13.581628>,  <7.012828, 16.740437, 13.204801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.978388, 16.870110, 13.581628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607408, 0.766598, -0.208284,
		-0.789710, 0.554287, -0.262915,
		-0.086102, 0.324181, 0.942069,
		6.952558, 16.967363, 13.864248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.820151, 17.483570, 13.162999>,  <7.012828, 16.740437, 13.204801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.820151, 17.483570, 13.162999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.000118, 17.408653, 13.512283>,  <7.108098, 17.363703, 13.721854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.000118, 17.408653, 13.512283>,  <6.820151, 17.483570, 13.162999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.000118, 17.408653, 13.512283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612580, 0.776211, -0.149141,
		-0.649863, 0.602012, 0.463961,
		0.449916, -0.187292, 0.873211,
		7.135093, 17.352467, 13.774246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.013169, 18.089842, 13.337177>,  <6.820151, 17.483570, 13.162999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.013169, 18.089842, 13.337177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.229942, 17.862339, 13.584668>,  <7.360005, 17.725838, 13.733163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.229942, 17.862339, 13.584668>,  <7.013169, 18.089842, 13.337177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.229942, 17.862339, 13.584668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730658, 0.682630, -0.012470,
		-0.415269, 0.458836, 0.785507,
		0.541932, -0.568758, 0.618728,
		7.392521, 17.691711, 13.770287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.120492, 18.357214, 14.067747>,  <7.013169, 18.089842, 13.337177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.120492, 18.357214, 14.067747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.424552, 18.100088, 14.029887>,  <7.606988, 17.945812, 14.007171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.424552, 18.100088, 14.029887>,  <7.120492, 18.357214, 14.067747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.424552, 18.100088, 14.029887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641970, 0.720566, 0.262030,
		-0.100235, -0.259945, 0.960407,
		0.760150, -0.642817, -0.094651,
		7.652597, 17.907244, 14.001492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.540812, 18.557985, 14.584949>,  <7.120492, 18.357214, 14.067747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.540812, 18.557985, 14.584949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.781214, 18.334953, 14.355901>,  <7.925455, 18.201134, 14.218472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.781214, 18.334953, 14.355901>,  <7.540812, 18.557985, 14.584949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.781214, 18.334953, 14.355901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772014, 0.590423, 0.235363,
		0.206855, -0.583526, 0.785307,
		0.601004, -0.557582, -0.572622,
		7.961515, 18.167679, 14.184114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.124163, 18.566156, 14.924533>,  <7.540812, 18.557985, 14.584949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.124163, 18.566156, 14.924533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.231864, 18.454948, 14.555706>,  <8.296485, 18.388224, 14.334410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.231864, 18.454948, 14.555706>,  <8.124163, 18.566156, 14.924533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.231864, 18.454948, 14.555706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793308, 0.606871, 0.048671,
		0.546045, -0.744589, 0.383956,
		0.269252, -0.278019, -0.922068,
		8.312639, 18.371542, 14.279086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.783528, 18.373928, 15.020097>,  <8.124163, 18.566156, 14.924533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.783528, 18.373928, 15.020097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.725546, 18.482798, 14.639589>,  <8.690756, 18.548119, 14.411285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.725546, 18.482798, 14.639589>,  <8.783528, 18.373928, 15.020097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.725546, 18.482798, 14.639589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799836, 0.598193, 0.049270,
		0.582452, -0.753716, -0.304405,
		-0.144957, 0.272171, -0.951268,
		8.682058, 18.564449, 14.354209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.439533, 18.541603, 14.723642>,  <8.783528, 18.373928, 15.020097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.439533, 18.541603, 14.723642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.224648, 18.681461, 14.416618>,  <9.095716, 18.765377, 14.232404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.224648, 18.681461, 14.416618>,  <9.439533, 18.541603, 14.723642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.224648, 18.681461, 14.416618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705448, 0.685085, -0.181666,
		0.462324, -0.639067, -0.614695,
		-0.537215, 0.349647, -0.767559,
		9.063483, 18.786356, 14.186351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.970835, 18.646091, 14.267024>,  <9.439533, 18.541603, 14.723642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.970835, 18.646091, 14.267024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.663712, 18.888994, 14.185332>,  <9.479438, 19.034737, 14.136317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.663712, 18.888994, 14.185332>,  <9.970835, 18.646091, 14.267024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.663712, 18.888994, 14.185332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627004, 0.777730, -0.044741,
		0.131665, -0.162405, -0.977900,
		-0.767808, 0.607257, -0.204228,
		9.433369, 19.071171, 14.124063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.067636, 18.950325, 13.615302>,  <9.970835, 18.646091, 14.267024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.067636, 18.950325, 13.615302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.830181, 19.199154, 13.819507>,  <9.687708, 19.348452, 13.942029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.830181, 19.199154, 13.819507>,  <10.067636, 18.950325, 13.615302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.830181, 19.199154, 13.819507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658370, 0.740229, -0.136420,
		-0.462758, 0.255121, -0.848981,
		-0.593637, 0.622072, 0.510511,
		9.652090, 19.385777, 13.972660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.115738, 19.611336, 13.219186>,  <10.067636, 18.950325, 13.615302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.115738, 19.611336, 13.219186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.970137, 19.710684, 13.578255>,  <9.882776, 19.770292, 13.793695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.970137, 19.710684, 13.578255>,  <10.115738, 19.611336, 13.219186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.970137, 19.710684, 13.578255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435935, 0.897138, -0.071451,
		-0.823081, 0.365318, -0.434833,
		-0.364003, 0.248369, 0.897672,
		9.860935, 19.785194, 13.847556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.003640, 20.270323, 13.069879>,  <10.115738, 19.611336, 13.219186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.003640, 20.270323, 13.069879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.998028, 20.248089, 13.469221>,  <9.994660, 20.234749, 13.708826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.998028, 20.248089, 13.469221>,  <10.003640, 20.270323, 13.069879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.998028, 20.248089, 13.469221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561938, 0.825424, 0.053856,
		-0.827060, 0.561770, 0.019652,
		-0.014033, -0.055585, 0.998355,
		9.993818, 20.231413, 13.768727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.895113, 20.972380, 13.237652>,  <10.003640, 20.270323, 13.069879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.895113, 20.972380, 13.237652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.070121, 20.799974, 13.553324>,  <10.175125, 20.696531, 13.742726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.070121, 20.799974, 13.553324>,  <9.895113, 20.972380, 13.237652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.070121, 20.799974, 13.553324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586612, 0.801976, 0.112787,
		-0.681516, 0.413595, 0.603718,
		0.437520, -0.431014, 0.789179,
		10.201377, 20.670670, 13.790077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.778942, 21.412127, 13.780741>,  <9.895113, 20.972380, 13.237652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.778942, 21.412127, 13.780741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.100770, 21.182053, 13.839838>,  <10.293867, 21.044008, 13.875297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.100770, 21.182053, 13.839838>,  <9.778942, 21.412127, 13.780741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.100770, 21.182053, 13.839838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503831, 0.792833, 0.342884,
		-0.314358, -0.201437, 0.927687,
		0.804570, -0.575186, 0.147743,
		10.342141, 21.009497, 13.884161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.132417, 21.709551, 14.341441>,  <9.778942, 21.412127, 13.780741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.132417, 21.709551, 14.341441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.424424, 21.481657, 14.190455>,  <10.599628, 21.344921, 14.099864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.424424, 21.481657, 14.190455>,  <10.132417, 21.709551, 14.341441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.424424, 21.481657, 14.190455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676150, 0.682479, 0.277566,
		0.099473, -0.457850, 0.883447,
		0.730018, -0.569733, -0.377463,
		10.643430, 21.310738, 14.077216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.721588, 21.805986, 14.904592>,  <10.132417, 21.709551, 14.341441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.721588, 21.805986, 14.904592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.894815, 21.663122, 14.573560>,  <10.998752, 21.577404, 14.374941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.894815, 21.663122, 14.573560>,  <10.721588, 21.805986, 14.904592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.894815, 21.663122, 14.573560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785502, 0.599860, 0.152165,
		0.442085, -0.715964, 0.540331,
		0.433068, -0.357161, -0.827580,
		11.024735, 21.555973, 14.325286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.435957, 21.472536, 15.019512>,  <10.721588, 21.805986, 14.904592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.435957, 21.472536, 15.019512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.393206, 21.617889, 14.649317>,  <11.367555, 21.705101, 14.427199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.393206, 21.617889, 14.649317>,  <11.435957, 21.472536, 15.019512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.393206, 21.617889, 14.649317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818496, 0.560614, 0.125598,
		0.564482, -0.744085, -0.357346,
		-0.106878, 0.363385, -0.925488,
		11.361142, 21.726906, 14.371671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.889859, 21.273949, 14.534451>,  <11.435957, 21.472536, 15.019512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.889859, 21.273949, 14.534451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.772752, 21.644197, 14.438524>,  <11.702487, 21.866346, 14.380969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.772752, 21.644197, 14.438524>,  <11.889859, 21.273949, 14.534451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.772752, 21.644197, 14.438524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915987, 0.343452, 0.207386,
		0.274326, -0.158951, -0.948409,
		-0.292769, 0.925621, -0.239815,
		11.684921, 21.921885, 14.366580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.325809, 21.610167, 13.941978>,  <11.889859, 21.273949, 14.534451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.325809, 21.610167, 13.941978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.183820, 21.858463, 14.221599>,  <12.098626, 22.007441, 14.389371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.183820, 21.858463, 14.221599>,  <12.325809, 21.610167, 13.941978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.183820, 21.858463, 14.221599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934868, 0.238884, 0.262595,
		-0.003988, 0.746735, -0.665110,
		-0.354973, 0.620742, 0.699052,
		12.077328, 22.044685, 14.431314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.615812, 21.027487, 13.532625>,  <12.325809, 21.610167, 13.941978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.615812, 21.027487, 13.532625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.753535, 21.041952, 13.157361>,  <12.836169, 21.050632, 12.932202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.753535, 21.041952, 13.157361>,  <12.615812, 21.027487, 13.532625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.753535, 21.041952, 13.157361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821928, -0.494549, 0.282586,
		-0.453746, -0.868397, -0.200003,
		0.344309, 0.036166, -0.938160,
		12.856828, 21.052801, 12.875913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.760908, 20.514400, 12.947900>,  <12.615812, 21.027487, 13.532625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.760908, 20.514400, 12.947900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.080601, 20.729986, 13.054293>,  <13.272416, 20.859339, 13.118129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.080601, 20.729986, 13.054293>,  <12.760908, 20.514400, 12.947900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.080601, 20.729986, 13.054293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560705, -0.827985, -0.007058,
		0.216426, 0.154779, -0.963952,
		0.799230, 0.538965, 0.265983,
		13.320370, 20.891676, 13.134088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.398832, 20.344879, 12.521013>,  <12.760908, 20.514400, 12.947900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.398832, 20.344879, 12.521013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.496097, 20.479353, 12.884959>,  <13.554455, 20.560038, 13.103327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.496097, 20.479353, 12.884959>,  <13.398832, 20.344879, 12.521013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.496097, 20.479353, 12.884959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582888, -0.800407, 0.139964,
		0.775315, 0.496316, -0.390585,
		0.243161, 0.336183, 0.909865,
		13.569045, 20.580208, 13.157919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.042350, 20.498163, 11.898740>,  <13.398832, 20.344879, 12.521013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.042350, 20.498163, 11.898740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.230995, 20.359444, 11.574441>,  <13.344182, 20.276211, 11.379862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.230995, 20.359444, 11.574441>,  <13.042350, 20.498163, 11.898740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.230995, 20.359444, 11.574441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347039, -0.918216, 0.190899,
		-0.810644, 0.191330, -0.553397,
		0.471614, -0.346801, -0.810746,
		13.372479, 20.255404, 11.331217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.637858, 20.053986, 11.393678>,  <13.042350, 20.498163, 11.898740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.637858, 20.053986, 11.393678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.011708, 19.913364, 11.372178>,  <13.236018, 19.828993, 11.359279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.011708, 19.913364, 11.372178>,  <12.637858, 20.053986, 11.393678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.011708, 19.913364, 11.372178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320121, -0.897461, 0.303457,
		-0.154918, -0.266412, -0.951328,
		0.934624, -0.351551, -0.053749,
		13.292095, 19.807899, 11.356053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.659375, 19.404350, 11.061727>,  <12.637858, 20.053986, 11.393678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.659375, 19.404350, 11.061727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.930382, 19.421131, 11.355451>,  <13.092985, 19.431200, 11.531685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.930382, 19.421131, 11.355451>,  <12.659375, 19.404350, 11.061727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.930382, 19.421131, 11.355451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453177, -0.762544, 0.461690,
		0.579312, -0.645575, -0.497624,
		0.677516, 0.041951, 0.734311,
		13.133636, 19.433716, 11.575744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.119754, 18.820509, 11.188538>,  <12.659375, 19.404350, 11.061727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.119754, 18.820509, 11.188538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.047786, 18.984676, 11.546125>,  <13.004604, 19.083178, 11.760678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.047786, 18.984676, 11.546125>,  <13.119754, 18.820509, 11.188538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.047786, 18.984676, 11.546125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669632, -0.716821, 0.194321,
		0.720570, -0.563669, 0.403802,
		-0.179921, 0.410421, 0.893971,
		12.993810, 19.107803, 11.814317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.224314, 18.311590, 11.766496>,  <13.119754, 18.820509, 11.188538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.224314, 18.311590, 11.766496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.963324, 18.591373, 11.883136>,  <12.806729, 18.759243, 11.953120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.963324, 18.591373, 11.883136>,  <13.224314, 18.311590, 11.766496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.963324, 18.591373, 11.883136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655137, -0.714043, 0.246856,
		0.380881, -0.029971, 0.924138,
		-0.652476, 0.699460, 0.291601,
		12.767581, 18.801212, 11.970616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.970247, 18.148304, 12.464478>,  <13.224314, 18.311590, 11.766496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.970247, 18.148304, 12.464478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.706302, 18.385715, 12.280172>,  <12.547935, 18.528162, 12.169589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.706302, 18.385715, 12.280172>,  <12.970247, 18.148304, 12.464478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.706302, 18.385715, 12.280172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732978, -0.643367, 0.220956,
		-0.165296, 0.483530, 0.859579,
		-0.659864, 0.593529, -0.460764,
		12.508343, 18.563774, 12.141943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.503287, 18.209946, 12.900894>,  <12.970247, 18.148304, 12.464478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.503287, 18.209946, 12.900894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.317364, 18.325706, 12.566182>,  <12.205810, 18.395163, 12.365355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.317364, 18.325706, 12.566182>,  <12.503287, 18.209946, 12.900894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.317364, 18.325706, 12.566182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773307, -0.592964, 0.224476,
		-0.431217, 0.751426, 0.499410,
		-0.464809, 0.289400, -0.836780,
		12.177921, 18.412527, 12.315148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.865499, 18.332464, 13.079345>,  <12.503287, 18.209946, 12.900894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.865499, 18.332464, 13.079345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.843667, 18.257132, 12.687110>,  <11.830568, 18.211931, 12.451769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.843667, 18.257132, 12.687110>,  <11.865499, 18.332464, 13.079345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.843667, 18.257132, 12.687110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648972, -0.739653, 0.178181,
		-0.758852, 0.646099, -0.081853,
		-0.054580, -0.188333, -0.980588,
		11.827293, 18.200632, 12.392934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.143643, 18.291552, 12.947117>,  <11.865499, 18.332464, 13.079345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.143643, 18.291552, 12.947117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.323626, 18.107851, 12.640750>,  <11.431615, 17.997631, 12.456930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.323626, 18.107851, 12.640750>,  <11.143643, 18.291552, 12.947117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.323626, 18.107851, 12.640750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648629, -0.757576, 0.073200,
		-0.613858, 0.463859, -0.638760,
		0.449954, -0.459252, -0.765916,
		11.458611, 17.970076, 12.410975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.638712, 18.117617, 12.537974>,  <11.143643, 18.291552, 12.947117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.638712, 18.117617, 12.537974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.924384, 17.862160, 12.423375>,  <11.095787, 17.708885, 12.354615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.924384, 17.862160, 12.423375>,  <10.638712, 18.117617, 12.537974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.924384, 17.862160, 12.423375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608624, -0.768749, 0.196474,
		-0.345722, 0.034052, -0.937719,
		0.714180, -0.638644, -0.286499,
		11.138638, 17.670567, 12.337425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.296041, 17.705898, 12.038577>,  <10.638712, 18.117617, 12.537974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.296041, 17.705898, 12.038577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.616311, 17.530590, 12.201962>,  <10.808473, 17.425406, 12.299993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.616311, 17.530590, 12.201962>,  <10.296041, 17.705898, 12.038577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.616311, 17.530590, 12.201962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519003, -0.847987, 0.107487,
		0.299262, -0.298055, -0.906424,
		0.800674, -0.438270, 0.408462,
		10.856513, 17.399109, 12.324500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.201949, 17.049669, 11.774293>,  <10.296041, 17.705898, 12.038577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.201949, 17.049669, 11.774293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.456098, 16.971899, 12.073225>,  <10.608586, 16.925236, 12.252584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.456098, 16.971899, 12.073225>,  <10.201949, 17.049669, 11.774293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.456098, 16.971899, 12.073225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467730, -0.866953, 0.172109,
		0.614437, -0.458902, -0.641775,
		0.635370, -0.194427, 0.747330,
		10.646708, 16.913570, 12.297424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.483250, 16.285513, 11.695117>,  <10.201949, 17.049669, 11.774293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.483250, 16.285513, 11.695117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.557117, 16.382339, 12.076127>,  <10.601437, 16.440435, 12.304733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.557117, 16.382339, 12.076127>,  <10.483250, 16.285513, 11.695117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.557117, 16.382339, 12.076127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526995, -0.793688, 0.303868,
		0.829563, -0.558089, -0.019001,
		0.184666, 0.242065, 0.952525,
		10.612516, 16.454958, 12.361884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.486414, 15.604642, 11.997680>,  <10.483250, 16.285513, 11.695117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.486414, 15.604642, 11.997680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.441335, 15.869863, 12.293696>,  <10.414288, 16.028996, 12.471307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.441335, 15.869863, 12.293696>,  <10.486414, 15.604642, 11.997680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.441335, 15.869863, 12.293696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595758, -0.641156, 0.483727,
		0.795218, -0.386371, 0.467274,
		-0.112697, 0.663050, 0.740043,
		10.407525, 16.068777, 12.515709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.422534, 15.264246, 12.686618>,  <10.486414, 15.604642, 11.997680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.422534, 15.264246, 12.686618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.239830, 15.612232, 12.760947>,  <10.130208, 15.821024, 12.805545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.239830, 15.612232, 12.760947>,  <10.422534, 15.264246, 12.686618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.239830, 15.612232, 12.760947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824118, -0.492461, 0.279842,
		0.334964, -0.025319, 0.941891,
		-0.456759, 0.869966, 0.185822,
		10.102802, 15.873222, 12.816694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.129976, 15.112089, 13.223344>,  <10.422534, 15.264246, 12.686618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.129976, 15.112089, 13.223344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.916389, 15.410595, 13.064363>,  <9.788236, 15.589698, 12.968975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.916389, 15.410595, 13.064363>,  <10.129976, 15.112089, 13.223344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.916389, 15.410595, 13.064363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845469, -0.467039, 0.258953,
		0.007623, 0.474305, 0.880327,
		-0.533970, 0.746263, -0.397450,
		9.756197, 15.634474, 12.945128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.566300, 15.204074, 13.653823>,  <10.129976, 15.112089, 13.223344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.566300, 15.204074, 13.653823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.450525, 15.401056, 13.325503>,  <9.381061, 15.519246, 13.128511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.450525, 15.401056, 13.325503>,  <9.566300, 15.204074, 13.653823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.450525, 15.401056, 13.325503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945183, -0.282475, 0.163821,
		-0.151181, 0.823222, 0.547220,
		-0.289437, 0.492457, -0.820800,
		9.363694, 15.548793, 13.079264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.901249, 15.638584, 13.810497>,  <9.566300, 15.204074, 13.653823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.901249, 15.638584, 13.810497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.910073, 15.596179, 13.412849>,  <8.915368, 15.570736, 13.174260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.910073, 15.596179, 13.412849>,  <8.901249, 15.638584, 13.810497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.910073, 15.596179, 13.412849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949331, -0.314031, 0.012421,
		-0.313501, 0.943476, -0.107569,
		0.022061, -0.106013, -0.994120,
		8.916692, 15.564376, 13.114614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.294706, 16.024307, 13.531382>,  <8.901249, 15.638584, 13.810497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.294706, 16.024307, 13.531382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.416407, 15.744035, 13.273242>,  <8.489427, 15.575871, 13.118359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.416407, 15.744035, 13.273242>,  <8.294706, 16.024307, 13.531382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.416407, 15.744035, 13.273242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920428, -0.390793, -0.009638,
		-0.245444, 0.596930, -0.763827,
		0.304252, -0.700682, -0.645349,
		8.507682, 15.533830, 13.079638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.677430, 15.896162, 12.954435>,  <8.294706, 16.024307, 13.531382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.677430, 15.896162, 12.954435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.920433, 15.580209, 12.987951>,  <8.066235, 15.390637, 13.008060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.920433, 15.580209, 12.987951>,  <7.677430, 15.896162, 12.954435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.920433, 15.580209, 12.987951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787275, -0.612777, -0.068580,
		0.105514, -0.024302, -0.994121,
		0.607507, -0.789883, 0.083789,
		8.102685, 15.343244, 13.013088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.503072, 15.592508, 12.385791>,  <7.677430, 15.896162, 12.954435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.503072, 15.592508, 12.385791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.677071, 15.324204, 12.626077>,  <7.781470, 15.163222, 12.770248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.677071, 15.324204, 12.626077>,  <7.503072, 15.592508, 12.385791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.677071, 15.324204, 12.626077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809655, -0.583294, -0.065009,
		0.394000, -0.458094, -0.796815,
		0.434997, -0.670759, 0.600716,
		7.807570, 15.122976, 12.806292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.400023, 14.864454, 12.023642>,  <7.503072, 15.592508, 12.385791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.400023, 14.864454, 12.023642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.479025, 14.788848, 12.408404>,  <7.526426, 14.743484, 12.639262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.479025, 14.788848, 12.408404>,  <7.400023, 14.864454, 12.023642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.479025, 14.788848, 12.408404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784148, -0.619328, 0.039306,
		0.588307, -0.762040, -0.270537,
		0.197504, -0.189017, 0.961907,
		7.538276, 14.732143, 12.696977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.018259, 14.269656, 12.075098>,  <7.400023, 14.864454, 12.023642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.018259, 14.269656, 12.075098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.117439, 14.368553, 12.449775>,  <7.176947, 14.427891, 12.674581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.117439, 14.368553, 12.449775>,  <7.018259, 14.269656, 12.075098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.117439, 14.368553, 12.449775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720955, -0.598752, 0.348885,
		0.647105, -0.761819, 0.029790,
		0.247950, 0.247242, 0.936692,
		7.191824, 14.442726, 12.730783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.043010, 13.671783, 12.389375>,  <7.018259, 14.269656, 12.075098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.043010, 13.671783, 12.389375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.962963, 13.945414, 12.669944>,  <6.914934, 14.109591, 12.838285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.962963, 13.945414, 12.669944>,  <7.043010, 13.671783, 12.389375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.962963, 13.945414, 12.669944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740776, -0.574192, 0.348646,
		0.641252, -0.449827, 0.621653,
		-0.200118, 0.684075, 0.701422,
		6.902927, 14.150637, 12.880370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.925725, 13.224067, 12.896153>,  <7.043010, 13.671783, 12.389375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.925725, 13.224067, 12.896153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.775134, 13.578976, 13.002747>,  <6.684780, 13.791921, 13.066703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.775134, 13.578976, 13.002747>,  <6.925725, 13.224067, 12.896153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.775134, 13.578976, 13.002747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796690, -0.456876, 0.395663,
		0.472811, -0.063347, 0.878884,
		-0.376477, 0.887272, 0.266484,
		6.662191, 13.845158, 13.082692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.921445, 13.003721, 12.191873>,  <6.925725, 13.224067, 12.896153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.921445, 13.003721, 12.191873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.055636, 13.333783, 12.010071>,  <7.136151, 13.531820, 11.900990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.055636, 13.333783, 12.010071>,  <6.921445, 13.003721, 12.191873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.055636, 13.333783, 12.010071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328196, 0.349865, 0.877429,
		0.883030, -0.443525, -0.153440,
		0.335479, 0.825155, -0.454504,
		7.156280, 13.581329, 11.873719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.656001, 12.971438, 12.521967>,  <6.921445, 13.003721, 12.191873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.656001, 12.971438, 12.521967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.927269, 13.026138, 12.810795>,  <8.090029, 13.058958, 12.984092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.927269, 13.026138, 12.810795>,  <7.656001, 12.971438, 12.521967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.927269, 13.026138, 12.810795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412011, 0.884351, 0.219477,
		-0.608551, -0.446344, 0.656082,
		0.678169, 0.136751, 0.722071,
		8.130719, 13.067163, 13.027416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.087975, 12.338969, 12.740123>,  <7.656001, 12.971438, 12.521967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.087975, 12.338969, 12.740123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.302953, 12.202381, 12.431695>,  <8.431940, 12.120428, 12.246638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.302953, 12.202381, 12.431695>,  <8.087975, 12.338969, 12.740123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.302953, 12.202381, 12.431695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836863, 0.328703, 0.437738,
		0.103978, -0.880541, 0.462425,
		0.537447, -0.341471, -0.771070,
		8.464187, 12.099940, 12.200374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.507904, 11.819869, 12.884334>,  <8.087975, 12.338969, 12.740123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.507904, 11.819869, 12.884334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.680957, 12.024670, 12.587501>,  <8.784788, 12.147550, 12.409401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.680957, 12.024670, 12.587501>,  <8.507904, 11.819869, 12.884334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.680957, 12.024670, 12.587501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793939, 0.173648, 0.582673,
		0.427190, -0.841250, -0.331372,
		0.432631, 0.512001, -0.742082,
		8.810746, 12.178270, 12.364876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.134859, 11.418427, 12.750636>,  <8.507904, 11.819869, 12.884334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.134859, 11.418427, 12.750636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.158465, 11.795679, 12.619778>,  <9.172629, 12.022030, 12.541263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.158465, 11.795679, 12.619778>,  <9.134859, 11.418427, 12.750636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.158465, 11.795679, 12.619778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910304, 0.083659, 0.405398,
		0.409711, -0.321727, -0.853597,
		0.059017, 0.943129, -0.327146,
		9.176170, 12.078618, 12.521634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.701825, 11.478316, 12.357524>,  <9.134859, 11.418427, 12.750636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.701825, 11.478316, 12.357524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.615705, 11.837987, 12.509906>,  <9.564033, 12.053789, 12.601336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.615705, 11.837987, 12.509906>,  <9.701825, 11.478316, 12.357524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.615705, 11.837987, 12.509906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845738, -0.023348, 0.533087,
		0.488234, 0.436963, -0.755441,
		-0.215301, 0.899177, 0.380955,
		9.551114, 12.107740, 12.624192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.422462, 11.893437, 12.338504>,  <9.701825, 11.478316, 12.357524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.422462, 11.893437, 12.338504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.132982, 12.010451, 12.588522>,  <9.959294, 12.080660, 12.738533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.132982, 12.010451, 12.588522>,  <10.422462, 11.893437, 12.338504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.132982, 12.010451, 12.588522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569587, -0.258190, 0.780326,
		0.389653, 0.920740, 0.020229,
		-0.723700, 0.292534, 0.625045,
		9.915873, 12.098211, 12.776035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.751473, 12.346615, 12.863562>,  <10.422462, 11.893437, 12.338504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.751473, 12.346615, 12.863562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.404561, 12.209177, 13.007653>,  <10.196413, 12.126714, 13.094108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.404561, 12.209177, 13.007653>,  <10.751473, 12.346615, 12.863562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.404561, 12.209177, 13.007653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424840, -0.133666, 0.895346,
		-0.259486, 0.929557, 0.261899,
		-0.867282, -0.343595, 0.360228,
		10.144377, 12.106098, 13.115722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.851307, 12.129191, 13.516816>,  <10.751473, 12.346615, 12.863562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.851307, 12.129191, 13.516816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.166875, 12.330504, 13.657846>,  <11.356215, 12.451292, 13.742465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.166875, 12.330504, 13.657846>,  <10.851307, 12.129191, 13.516816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.166875, 12.330504, 13.657846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464791, 0.113408, 0.878127,
		0.401963, -0.856647, 0.323392,
		0.788920, 0.503284, 0.352576,
		11.403551, 12.481489, 13.763619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.748020, 12.106280, 14.236648>,  <10.851307, 12.129191, 13.516816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.748020, 12.106280, 14.236648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.022758, 12.396585, 14.221078>,  <11.187600, 12.570768, 14.211736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.022758, 12.396585, 14.221078>,  <10.748020, 12.106280, 14.236648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.022758, 12.396585, 14.221078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193051, 0.233808, 0.952924,
		0.700697, -0.646996, 0.300699,
		0.686844, 0.725762, -0.038925,
		11.228810, 12.614314, 14.209400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.106533, 12.106839, 14.899321>,  <10.748020, 12.106280, 14.236648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.106533, 12.106839, 14.899321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.174957, 12.466314, 14.737780>,  <11.216012, 12.681999, 14.640855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.174957, 12.466314, 14.737780>,  <11.106533, 12.106839, 14.899321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.174957, 12.466314, 14.737780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105893, 0.424290, 0.899313,
		0.979553, -0.111072, 0.167745,
		0.171061, 0.898689, -0.403853,
		11.226275, 12.735921, 14.616624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.422160, 12.446008, 15.557673>,  <11.106533, 12.106839, 14.899321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.422160, 12.446008, 15.557673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.353305, 12.744893, 15.300912>,  <11.311992, 12.924224, 15.146855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.353305, 12.744893, 15.300912>,  <11.422160, 12.446008, 15.557673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.353305, 12.744893, 15.300912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051899, 0.643846, 0.763393,
		0.983704, 0.164724, -0.072052,
		-0.172139, 0.747214, -0.641903,
		11.301663, 12.969057, 15.108341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.940427, 12.983448, 15.646336>,  <11.422160, 12.446008, 15.557673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.940427, 12.983448, 15.646336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.608608, 13.136506, 15.483642>,  <11.409517, 13.228341, 15.386025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.608608, 13.136506, 15.483642>,  <11.940427, 12.983448, 15.646336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.608608, 13.136506, 15.483642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029911, 0.696856, 0.716587,
		0.557636, 0.606608, -0.566629,
		-0.829547, 0.382646, -0.406736,
		11.359744, 13.251300, 15.361621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.095922, 13.625632, 15.691464>,  <11.940427, 12.983448, 15.646336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.095922, 13.625632, 15.691464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.702141, 13.604580, 15.624432>,  <11.465872, 13.591949, 15.584212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.702141, 13.604580, 15.624432>,  <12.095922, 13.625632, 15.691464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.702141, 13.604580, 15.624432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159666, 0.665786, 0.728859,
		0.073213, 0.744284, -0.663838,
		-0.984452, -0.052631, -0.167581,
		11.406805, 13.588791, 15.574157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.752653, 14.265145, 15.555483>,  <12.095922, 13.625632, 15.691464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.752653, 14.265145, 15.555483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.453964, 14.035110, 15.689157>,  <11.274751, 13.897088, 15.769361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.453964, 14.035110, 15.689157>,  <11.752653, 14.265145, 15.555483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.453964, 14.035110, 15.689157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085891, 0.581595, 0.808931,
		-0.659568, 0.575343, -0.483684,
		-0.746722, -0.575089, 0.334185,
		11.229948, 13.862583, 15.789412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.220408, 14.705050, 15.788286>,  <11.752653, 14.265145, 15.555483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.220408, 14.705050, 15.788286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.171813, 14.351837, 15.969610>,  <11.142656, 14.139909, 16.078405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.171813, 14.351837, 15.969610>,  <11.220408, 14.705050, 15.788286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.171813, 14.351837, 15.969610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221724, 0.469297, 0.854751,
		-0.967512, 0.003332, -0.252804,
		-0.121488, -0.883034, 0.453311,
		11.135366, 14.086926, 16.105604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.629327, 14.670769, 16.119709>,  <11.220408, 14.705050, 15.788286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.629327, 14.670769, 16.119709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.822444, 14.375596, 16.308332>,  <10.938314, 14.198493, 16.421507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.822444, 14.375596, 16.308332>,  <10.629327, 14.670769, 16.119709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.822444, 14.375596, 16.308332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274909, 0.383546, 0.881656,
		-0.831467, -0.555293, -0.017690,
		0.482792, -0.737931, 0.471561,
		10.967281, 14.154217, 16.449800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.216658, 14.495162, 16.699417>,  <10.629327, 14.670769, 16.119709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.216658, 14.495162, 16.699417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.574351, 14.339796, 16.788393>,  <10.788967, 14.246576, 16.841778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.574351, 14.339796, 16.788393>,  <10.216658, 14.495162, 16.699417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.574351, 14.339796, 16.788393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148519, 0.211319, 0.966067,
		-0.422241, -0.896927, 0.131282,
		0.894234, -0.388416, 0.222438,
		10.842622, 14.223271, 16.855124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.126977, 14.289333, 17.399956>,  <10.216658, 14.495162, 16.699417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.126977, 14.289333, 17.399956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.517637, 14.214095, 17.358440>,  <10.752033, 14.168952, 17.333532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.517637, 14.214095, 17.358440>,  <10.126977, 14.289333, 17.399956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.517637, 14.214095, 17.358440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136468, 0.170084, 0.975934,
		-0.165918, -0.967311, 0.191782,
		0.976651, -0.188097, -0.103787,
		10.810633, 14.157666, 17.327305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.457514, 13.627515, 17.715475>,  <10.126977, 14.289333, 17.399956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.457514, 13.627515, 17.715475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.774074, 13.870439, 17.687578>,  <10.964009, 14.016192, 17.670839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.774074, 13.870439, 17.687578>,  <10.457514, 13.627515, 17.715475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.774074, 13.870439, 17.687578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141722, -0.071294, 0.987336,
		0.594646, -0.791260, -0.142491,
		0.791399, 0.607309, -0.069744,
		11.011494, 14.052631, 17.666655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.954514, 13.356153, 18.186539>,  <10.457514, 13.627515, 17.715475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.954514, 13.356153, 18.186539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.076183, 13.726816, 18.098194>,  <11.149185, 13.949215, 18.045187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.076183, 13.726816, 18.098194>,  <10.954514, 13.356153, 18.186539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.076183, 13.726816, 18.098194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356088, 0.104438, 0.928598,
		0.883561, -0.361101, -0.298205,
		0.304173, 0.926660, -0.220861,
		11.167436, 14.004814, 18.031937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.621539, 13.404689, 18.451334>,  <10.954514, 13.356153, 18.186539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.621539, 13.404689, 18.451334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.449743, 13.765859, 18.444788>,  <11.346666, 13.982560, 18.440861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.449743, 13.765859, 18.444788>,  <11.621539, 13.404689, 18.451334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.449743, 13.765859, 18.444788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113495, 0.071947, 0.990930,
		0.895912, 0.423736, -0.133378,
		-0.429489, 0.902924, -0.016366,
		11.320896, 14.036736, 18.439878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.999827, 13.872176, 18.782543>,  <11.621539, 13.404689, 18.451334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.999827, 13.872176, 18.782543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.638316, 14.039212, 18.820076>,  <11.421410, 14.139434, 18.842596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.638316, 14.039212, 18.820076>,  <11.999827, 13.872176, 18.782543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.638316, 14.039212, 18.820076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098802, -0.009753, 0.995059,
		0.416443, 0.908583, -0.032445,
		-0.903777, 0.417591, 0.093831,
		11.367183, 14.164490, 18.848225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.101506, 14.357037, 19.430784>,  <11.999827, 13.872176, 18.782543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.101506, 14.357037, 19.430784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.716997, 14.275564, 19.356520>,  <11.486292, 14.226681, 19.311960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.716997, 14.275564, 19.356520>,  <12.101506, 14.357037, 19.430784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.716997, 14.275564, 19.356520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196429, 0.033797, 0.979935,
		-0.193319, 0.978454, -0.072497,
		-0.961272, -0.203681, -0.185664,
		11.428616, 14.214460, 19.300821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.748985, 14.758367, 19.853905>,  <12.101506, 14.357037, 19.430784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.748985, 14.758367, 19.853905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.486918, 14.467364, 19.772427>,  <11.329679, 14.292763, 19.723539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.486918, 14.467364, 19.772427>,  <11.748985, 14.758367, 19.853905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.486918, 14.467364, 19.772427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200812, -0.092226, 0.975279,
		-0.728307, 0.679875, -0.085668,
		-0.655167, -0.727505, -0.203696,
		11.290368, 14.249113, 19.711317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.196175, 14.946552, 20.322866>,  <11.748985, 14.758367, 19.853905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.196175, 14.946552, 20.322866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.109567, 14.580417, 20.187059>,  <11.057602, 14.360735, 20.105576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.109567, 14.580417, 20.187059>,  <11.196175, 14.946552, 20.322866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.109567, 14.580417, 20.187059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329960, -0.258694, 0.907857,
		-0.918828, 0.308597, -0.246013,
		-0.216520, -0.915339, -0.339520,
		11.044611, 14.305815, 20.085203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.502342, 14.792919, 20.471975>,  <11.196175, 14.946552, 20.322866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.502342, 14.792919, 20.471975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.651566, 14.425134, 20.422310>,  <10.741099, 14.204463, 20.392511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.651566, 14.425134, 20.422310>,  <10.502342, 14.792919, 20.471975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.651566, 14.425134, 20.422310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321002, -0.253467, 0.912531,
		-0.870509, -0.300570, -0.389707,
		0.373057, -0.919463, -0.124162,
		10.763483, 14.149295, 20.385061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.961315, 14.377235, 20.517647>,  <10.502342, 14.792919, 20.471975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.961315, 14.377235, 20.517647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.280680, 14.154335, 20.608870>,  <10.472299, 14.020595, 20.663603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.280680, 14.154335, 20.608870>,  <9.961315, 14.377235, 20.517647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.280680, 14.154335, 20.608870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414040, -0.233119, 0.879901,
		-0.437163, -0.796947, -0.416850,
		0.798410, -0.557253, 0.228057,
		10.520203, 13.987160, 20.677286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.625354, 13.943220, 20.893831>,  <9.961315, 14.377235, 20.517647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.625354, 13.943220, 20.893831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.003898, 13.878327, 21.005606>,  <10.231024, 13.839392, 21.072670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.003898, 13.878327, 21.005606>,  <9.625354, 13.943220, 20.893831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.003898, 13.878327, 21.005606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303406, -0.148763, 0.941177,
		-0.111112, -0.975476, -0.190004,
		0.946361, -0.162224, 0.279436,
		10.287806, 13.829658, 21.089436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.577937, 13.412230, 21.413019>,  <9.625354, 13.943220, 20.893831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.577937, 13.412230, 21.413019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.943172, 13.558812, 21.484552>,  <10.162313, 13.646762, 21.527472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.943172, 13.558812, 21.484552>,  <9.577937, 13.412230, 21.413019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.943172, 13.558812, 21.484552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231163, 0.103913, 0.967350,
		0.335909, -0.924614, 0.179593,
		0.913088, 0.366457, 0.178831,
		10.217099, 13.668749, 21.538202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.808275, 13.115564, 21.973240>,  <9.577937, 13.412230, 21.413019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.808275, 13.115564, 21.973240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.041859, 13.440239, 21.968224>,  <10.182009, 13.635043, 21.965214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.041859, 13.440239, 21.968224>,  <9.808275, 13.115564, 21.973240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.041859, 13.440239, 21.968224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081415, 0.073930, 0.993935,
		0.807690, -0.579396, 0.109256,
		0.583960, 0.811686, -0.012541,
		10.217047, 13.683744, 21.964460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.319897, 13.040554, 22.525270>,  <9.808275, 13.115564, 21.973240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.319897, 13.040554, 22.525270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.303488, 13.432020, 22.444742>,  <10.293642, 13.666900, 22.396425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.303488, 13.432020, 22.444742>,  <10.319897, 13.040554, 22.525270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.303488, 13.432020, 22.444742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105412, 0.196129, 0.974896,
		0.993582, 0.061214, 0.095117,
		-0.041022, 0.978666, -0.201323,
		10.291182, 13.725620, 22.384346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.749247, 13.369480, 22.969316>,  <10.319897, 13.040554, 22.525270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.749247, 13.369480, 22.969316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.498329, 13.659723, 22.856180>,  <10.347778, 13.833869, 22.788300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.498329, 13.659723, 22.856180>,  <10.749247, 13.369480, 22.969316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.498329, 13.659723, 22.856180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159176, 0.236055, 0.958614,
		0.762342, 0.646353, -0.032577,
		-0.627293, 0.725607, -0.282839,
		10.310141, 13.877405, 22.771328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.796940, 13.746948, 23.536530>,  <10.749247, 13.369480, 22.969316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.796940, 13.746948, 23.536530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.493853, 13.920295, 23.341366>,  <10.312000, 14.024302, 23.224268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.493853, 13.920295, 23.341366>,  <10.796940, 13.746948, 23.536530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.493853, 13.920295, 23.341366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323046, 0.400537, 0.857445,
		0.567013, 0.807320, -0.163498,
		-0.757719, 0.433365, -0.487910,
		10.266537, 14.050304, 23.194992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.683216, 14.391788, 23.944174>,  <10.796940, 13.746948, 23.536530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.683216, 14.391788, 23.944174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.360411, 14.315162, 23.720734>,  <10.166728, 14.269186, 23.586670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.360411, 14.315162, 23.720734>,  <10.683216, 14.391788, 23.944174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.360411, 14.315162, 23.720734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579028, 0.442507, 0.684773,
		0.116006, 0.876065, -0.468030,
		-0.807013, -0.191564, -0.558600,
		10.118307, 14.257692, 23.553154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.333696, 15.013730, 23.931381>,  <10.683216, 14.391788, 23.944174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.333696, 15.013730, 23.931381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.111456, 14.686065, 23.874420>,  <9.978111, 14.489466, 23.840242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.111456, 14.686065, 23.874420>,  <10.333696, 15.013730, 23.931381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.111456, 14.686065, 23.874420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469722, 0.167923, 0.866697,
		-0.686053, 0.548428, -0.478077,
		-0.555602, -0.819163, -0.142404,
		9.944776, 14.440316, 23.831699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.762373, 15.334401, 24.002590>,  <10.333696, 15.013730, 23.931381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.762373, 15.334401, 24.002590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.701617, 14.942503, 24.054785>,  <9.665164, 14.707364, 24.086102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.701617, 14.942503, 24.054785>,  <9.762373, 15.334401, 24.002590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.701617, 14.942503, 24.054785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487461, 0.189099, 0.852422,
		-0.859832, 0.065867, -0.506311,
		-0.151889, -0.979746, 0.130485,
		9.656051, 14.648579, 24.093931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.062108, 15.210028, 24.116737>,  <9.762373, 15.334401, 24.002590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.062108, 15.210028, 24.116737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.233831, 14.896341, 24.295935>,  <9.336865, 14.708130, 24.403454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.233831, 14.896341, 24.295935>,  <9.062108, 15.210028, 24.116737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.233831, 14.896341, 24.295935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483172, 0.219655, 0.847524,
		-0.763046, -0.580307, -0.284612,
		0.429308, -0.784216, 0.447995,
		9.362624, 14.661077, 24.430334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.626209, 15.011199, 24.604286>,  <9.062108, 15.210028, 24.116737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.626209, 15.011199, 24.604286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.922289, 14.765037, 24.712641>,  <9.099936, 14.617339, 24.777655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.922289, 14.765037, 24.712641>,  <8.626209, 15.011199, 24.604286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.922289, 14.765037, 24.712641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368037, -0.033655, 0.929202,
		-0.562719, -0.787492, -0.251404,
		0.740200, -0.615406, 0.270888,
		9.144349, 14.580415, 24.793907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.314453, 14.447154, 24.927837>,  <8.626209, 15.011199, 24.604286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.314453, 14.447154, 24.927837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.684786, 14.463717, 25.078102>,  <8.906985, 14.473656, 25.168261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.684786, 14.463717, 25.078102>,  <8.314453, 14.447154, 24.927837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.684786, 14.463717, 25.078102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374113, -0.040627, 0.926493,
		0.053630, -0.998316, -0.022121,
		0.925831, 0.041412, 0.375662,
		8.962535, 14.476140, 25.190800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.487788, 13.879585, 25.272360>,  <8.314453, 14.447154, 24.927837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.487788, 13.879585, 25.272360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.780602, 14.095358, 25.438799>,  <8.956291, 14.224821, 25.538662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.780602, 14.095358, 25.438799>,  <8.487788, 13.879585, 25.272360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.780602, 14.095358, 25.438799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352746, -0.222402, 0.908905,
		0.582832, -0.812128, 0.027476,
		0.732036, 0.539431, 0.416098,
		9.000214, 14.257187, 25.563629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.930354, 13.524514, 25.885561>,  <8.487788, 13.879585, 25.272360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.930354, 13.524514, 25.885561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.025512, 13.905281, 25.962770>,  <9.082606, 14.133741, 26.009096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.025512, 13.905281, 25.962770>,  <8.930354, 13.524514, 25.885561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.025512, 13.905281, 25.962770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081092, -0.217501, 0.972686,
		0.967900, -0.215743, -0.128935,
		0.237893, 0.951919, 0.193024,
		9.096880, 14.190857, 26.020678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.532755, 13.474583, 26.345175>,  <8.930354, 13.524514, 25.885561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.532755, 13.474583, 26.345175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.352348, 13.824287, 26.417011>,  <9.244104, 14.034110, 26.460114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.352348, 13.824287, 26.417011>,  <9.532755, 13.474583, 26.345175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.352348, 13.824287, 26.417011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152254, -0.122904, 0.980670,
		0.879434, 0.469641, -0.077678,
		-0.451015, 0.874261, 0.179591,
		9.217044, 14.086566, 26.470888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.957069, 13.866537, 26.811035>,  <9.532755, 13.474583, 26.345175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.957069, 13.866537, 26.811035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.605423, 14.055282, 26.837870>,  <9.394435, 14.168529, 26.853970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.605423, 14.055282, 26.837870>,  <9.957069, 13.866537, 26.811035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.605423, 14.055282, 26.837870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102928, 0.050526, 0.993405,
		0.465360, 0.880224, -0.092986,
		-0.879117, 0.471861, 0.067087,
		9.341688, 14.196840, 26.857996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.169989, 14.449474, 27.189363>,  <9.957069, 13.866537, 26.811035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.169989, 14.449474, 27.189363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.775196, 14.392839, 27.219875>,  <9.538321, 14.358858, 27.238182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.775196, 14.392839, 27.219875>,  <10.169989, 14.449474, 27.189363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.775196, 14.392839, 27.219875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078591, -0.010798, 0.996848,
		-0.140318, 0.989867, 0.021785,
		-0.986982, -0.141588, 0.076279,
		9.479101, 14.350363, 27.242760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.997375, 14.991955, 27.558460>,  <10.169989, 14.449474, 27.189363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.997375, 14.991955, 27.558460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.688184, 14.745106, 27.617336>,  <9.502669, 14.596996, 27.652662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.688184, 14.745106, 27.617336>,  <9.997375, 14.991955, 27.558460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.688184, 14.745106, 27.617336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099522, 0.111179, 0.988805,
		-0.626578, 0.778973, -0.024522,
		-0.772978, -0.617123, 0.147188,
		9.456290, 14.559969, 27.661493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.568801, 15.307700, 28.085022>,  <9.997375, 14.991955, 27.558460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.568801, 15.307700, 28.085022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.485734, 14.916422, 28.083908>,  <9.435894, 14.681655, 28.083241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.485734, 14.916422, 28.083908>,  <9.568801, 15.307700, 28.085022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.485734, 14.916422, 28.083908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140988, -0.032746, 0.989470,
		-0.967986, 0.205087, 0.144714,
		-0.207666, -0.978196, -0.002783,
		9.423434, 14.622963, 28.083073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.028920, 15.265253, 28.518116>,  <9.568801, 15.307700, 28.085022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.028920, 15.265253, 28.518116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.177292, 14.895533, 28.482161>,  <9.266315, 14.673700, 28.460588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.177292, 14.895533, 28.482161>,  <9.028920, 15.265253, 28.518116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.177292, 14.895533, 28.482161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054358, -0.075015, 0.995700,
		-0.927069, -0.374219, 0.022418,
		0.370928, -0.924301, -0.089886,
		9.288570, 14.618242, 28.455194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.502188, 14.852489, 28.892908>,  <9.028920, 15.265253, 28.518116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.502188, 14.852489, 28.892908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.828085, 14.621799, 28.868967>,  <9.023623, 14.483385, 28.854603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.828085, 14.621799, 28.868967>,  <8.502188, 14.852489, 28.892908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.828085, 14.621799, 28.868967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007518, -0.092708, 0.995665,
		-0.579773, -0.811661, -0.071197,
		0.814743, -0.576725, -0.059852,
		9.072508, 14.448781, 28.851011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.488827, 14.088372, 29.139399>,  <8.502188, 14.852489, 28.892908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.488827, 14.088372, 29.139399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.865464, 14.215646, 29.183510>,  <9.091447, 14.292010, 29.209976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.865464, 14.215646, 29.183510>,  <8.488827, 14.088372, 29.139399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.865464, 14.215646, 29.183510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150184, 0.103671, 0.983208,
		0.301408, -0.942344, 0.145402,
		0.941594, 0.318183, 0.110278,
		9.147943, 14.311101, 29.216593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.868425, 13.668794, 29.639242>,  <8.488827, 14.088372, 29.139399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.868425, 13.668794, 29.639242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.009365, 14.041744, 29.606930>,  <9.093928, 14.265514, 29.587543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.009365, 14.041744, 29.606930>,  <8.868425, 13.668794, 29.639242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.009365, 14.041744, 29.606930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011152, 0.082126, 0.996559,
		0.935803, -0.352037, 0.018539,
		0.352348, 0.932376, -0.080780,
		9.115069, 14.321457, 29.582695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.466957, 13.789739, 30.029655>,  <8.868425, 13.668794, 29.639242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.466957, 13.789739, 30.029655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.268420, 14.134539, 29.988476>,  <9.149298, 14.341419, 29.963768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.268420, 14.134539, 29.988476>,  <9.466957, 13.789739, 30.029655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.268420, 14.134539, 29.988476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310442, -0.065492, 0.948334,
		0.810722, 0.502659, 0.300108,
		-0.496343, 0.862001, -0.102951,
		9.119517, 14.393139, 29.957590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.475604, 14.197739, 30.588694>,  <9.466957, 13.789739, 30.029655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.475604, 14.197739, 30.588694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.141777, 14.337806, 30.418573>,  <8.941481, 14.421846, 30.316502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.141777, 14.337806, 30.418573>,  <9.475604, 14.197739, 30.588694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.141777, 14.337806, 30.418573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400768, 0.143798, 0.904824,
		0.377998, 0.925584, 0.020327,
		-0.834567, 0.350168, -0.425299,
		8.891407, 14.442856, 30.290983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.768600, 14.878759, 30.520020>,  <9.475604, 14.197739, 30.588694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.768600, 14.878759, 30.520020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.072721, 14.750504, 30.745985>,  <10.255195, 14.673552, 30.881565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.072721, 14.750504, 30.745985>,  <9.768600, 14.878759, 30.520020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.072721, 14.750504, 30.745985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178371, -0.733190, -0.656213,
		0.624597, 0.599686, -0.500255,
		0.760304, -0.320637, 0.564915,
		10.300813, 14.654313, 30.915459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.345246, 14.911304, 30.144798>,  <9.768600, 14.878759, 30.520020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.345246, 14.911304, 30.144798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.435109, 14.648870, 30.432987>,  <10.489027, 14.491408, 30.605900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.435109, 14.648870, 30.432987>,  <10.345246, 14.911304, 30.144798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.435109, 14.648870, 30.432987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390376, -0.616847, -0.683452,
		0.892825, 0.434797, 0.117541,
		0.224658, -0.656088, 0.720470,
		10.502506, 14.452044, 30.649128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.054718, 14.921037, 30.176441>,  <10.345246, 14.911304, 30.144798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.054718, 14.921037, 30.176441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.876822, 14.578438, 30.281223>,  <10.770083, 14.372879, 30.344091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.876822, 14.578438, 30.281223>,  <11.054718, 14.921037, 30.176441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.876822, 14.578438, 30.281223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475575, -0.473657, -0.741267,
		0.758968, -0.205094, 0.617983,
		-0.444741, -0.856496, 0.261953,
		10.743399, 14.321489, 30.359810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.645660, 14.477558, 30.298029>,  <11.054718, 14.921037, 30.176441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.645660, 14.477558, 30.298029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.301377, 14.294502, 30.208813>,  <11.094808, 14.184669, 30.155283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.301377, 14.294502, 30.208813>,  <11.645660, 14.477558, 30.298029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.301377, 14.294502, 30.208813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478963, -0.579419, -0.659445,
		0.172554, -0.674418, 0.717903,
		-0.860709, -0.457639, -0.223041,
		11.043165, 14.157210, 30.141901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.872606, 14.114871, 29.864634>,  <11.645660, 14.477558, 30.298029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.872606, 14.114871, 29.864634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.496161, 13.981620, 29.887726>,  <11.270294, 13.901669, 29.901581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.496161, 13.981620, 29.887726>,  <11.872606, 14.114871, 29.864634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.496161, 13.981620, 29.887726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185000, -0.650325, -0.736785,
		0.282989, -0.682717, 0.673658,
		-0.941112, -0.333129, 0.057732,
		11.213828, 13.881681, 29.905046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.715437, 13.408148, 29.957354>,  <11.872606, 14.114871, 29.864634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.715437, 13.408148, 29.957354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.395608, 13.528646, 29.749533>,  <11.203711, 13.600945, 29.624840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.395608, 13.528646, 29.749533>,  <11.715437, 13.408148, 29.957354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.395608, 13.528646, 29.749533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282630, -0.574574, -0.768105,
		-0.529907, -0.760997, 0.374275,
		-0.799574, 0.301243, -0.519551,
		11.155736, 13.619020, 29.593666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.604782, 12.779366, 29.742201>,  <11.715437, 13.408148, 29.957354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.604782, 12.779366, 29.742201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.473513, 13.081236, 29.514950>,  <11.394751, 13.262358, 29.378599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.473513, 13.081236, 29.514950>,  <11.604782, 12.779366, 29.742201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.473513, 13.081236, 29.514950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181988, -0.539656, -0.821980,
		-0.926921, -0.373145, 0.039760,
		-0.328175, 0.754675, -0.568126,
		11.375060, 13.307638, 29.344511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.256531, 12.402164, 29.291027>,  <11.604782, 12.779366, 29.742201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.256531, 12.402164, 29.291027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.314807, 12.745624, 29.094458>,  <11.349772, 12.951699, 28.976517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.314807, 12.745624, 29.094458>,  <11.256531, 12.402164, 29.291027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.314807, 12.745624, 29.094458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067160, -0.504162, -0.860994,
		-0.987048, 0.092435, -0.131119,
		0.145691, 0.858648, -0.491424,
		11.358514, 13.003218, 28.947031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.954459, 12.373488, 28.532150>,  <11.256531, 12.402164, 29.291027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.954459, 12.373488, 28.532150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.164024, 12.712813, 28.501474>,  <11.289763, 12.916409, 28.483068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.164024, 12.712813, 28.501474>,  <10.954459, 12.373488, 28.532150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.164024, 12.712813, 28.501474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177712, -0.196918, -0.964179,
		-0.833027, 0.491516, -0.253923,
		0.523912, 0.848313, -0.076690,
		11.321198, 12.967307, 28.478468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.724011, 12.548309, 27.839403>,  <10.954459, 12.373488, 28.532150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.724011, 12.548309, 27.839403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.026047, 12.801195, 27.908852>,  <11.207268, 12.952927, 27.950521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.026047, 12.801195, 27.908852>,  <10.724011, 12.548309, 27.839403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.026047, 12.801195, 27.908852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223348, 0.000930, -0.974738,
		-0.616406, 0.774793, -0.140501,
		0.755089, 0.632215, 0.173621,
		11.252574, 12.990860, 27.960938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.718088, 13.074153, 27.254406>,  <10.724011, 12.548309, 27.839403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.718088, 13.074153, 27.254406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.088986, 13.070977, 27.404154>,  <11.311525, 13.069072, 27.494003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.088986, 13.070977, 27.404154>,  <10.718088, 13.074153, 27.254406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.088986, 13.070977, 27.404154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365199, -0.201736, -0.908808,
		0.082740, 0.979408, -0.184159,
		0.927245, -0.007940, 0.374370,
		11.367160, 13.068595, 27.516464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.055143, 13.380421, 26.793028>,  <10.718088, 13.074153, 27.254406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.055143, 13.380421, 26.793028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.334388, 13.168780, 26.985981>,  <11.501934, 13.041796, 27.101753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.334388, 13.168780, 26.985981>,  <11.055143, 13.380421, 26.793028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.334388, 13.168780, 26.985981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363133, -0.319003, -0.875427,
		0.617071, 0.786314, -0.030565,
		0.698110, -0.529101, 0.482383,
		11.543820, 13.010050, 27.130695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.726979, 13.506001, 26.456392>,  <11.055143, 13.380421, 26.793028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.726979, 13.506001, 26.456392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.762045, 13.158018, 26.650501>,  <11.783085, 12.949228, 26.766966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.762045, 13.158018, 26.650501>,  <11.726979, 13.506001, 26.456392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.762045, 13.158018, 26.650501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438372, -0.403750, -0.803005,
		0.894508, 0.283125, 0.345970,
		0.087665, -0.869958, 0.485271,
		11.788344, 12.897031, 26.796083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.409632, 13.381819, 26.355347>,  <11.726979, 13.506001, 26.456392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.409632, 13.381819, 26.355347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.216775, 13.044410, 26.450012>,  <12.101061, 12.841965, 26.506811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.216775, 13.044410, 26.450012>,  <12.409632, 13.381819, 26.355347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.216775, 13.044410, 26.450012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266496, -0.398543, -0.877578,
		0.834577, -0.360049, 0.416950,
		-0.482143, -0.843522, 0.236663,
		12.072132, 12.791353, 26.521011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.878112, 12.821428, 26.048145>,  <12.409632, 13.381819, 26.355347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.878112, 12.821428, 26.048145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.551143, 12.608414, 26.135984>,  <12.354961, 12.480605, 26.188688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.551143, 12.608414, 26.135984>,  <12.878112, 12.821428, 26.048145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.551143, 12.608414, 26.135984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071726, -0.284162, -0.956090,
		0.571555, -0.797281, 0.194083,
		-0.817423, -0.532537, 0.219600,
		12.305916, 12.448652, 26.201864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.013889, 12.120827, 25.920496>,  <12.878112, 12.821428, 26.048145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.013889, 12.120827, 25.920496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.628292, 12.214509, 25.870110>,  <12.396934, 12.270719, 25.839878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.628292, 12.214509, 25.870110>,  <13.013889, 12.120827, 25.920496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.628292, 12.214509, 25.870110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080194, -0.195601, -0.977399,
		-0.253556, -0.952305, 0.169775,
		-0.963991, 0.234210, -0.125965,
		12.339094, 12.284771, 25.832321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.690442, 11.608637, 25.503666>,  <13.013889, 12.120827, 25.920496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.690442, 11.608637, 25.503666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.451037, 11.928919, 25.493418>,  <12.307395, 12.121088, 25.487268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.451037, 11.928919, 25.493418>,  <12.690442, 11.608637, 25.503666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.451037, 11.928919, 25.493418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048173, -0.067892, -0.996529,
		-0.799665, -0.595200, 0.079207,
		-0.598511, 0.800705, -0.025618,
		12.271484, 12.169130, 25.485733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.357245, 11.532804, 24.892099>,  <12.690442, 11.608637, 25.503666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.357245, 11.532804, 24.892099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.279779, 11.916590, 24.973999>,  <12.233299, 12.146861, 25.023138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.279779, 11.916590, 24.973999>,  <12.357245, 11.532804, 24.892099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.279779, 11.916590, 24.973999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175619, 0.171424, -0.969418,
		-0.965221, -0.223701, 0.135301,
		-0.193666, 0.959464, 0.204748,
		12.221680, 12.204429, 25.035423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.744809, 11.679084, 24.480171>,  <12.357245, 11.532804, 24.892099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.744809, 11.679084, 24.480171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.929556, 12.022726, 24.568369>,  <12.040404, 12.228911, 24.621288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.929556, 12.022726, 24.568369>,  <11.744809, 11.679084, 24.480171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.929556, 12.022726, 24.568369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045648, 0.225245, -0.973232,
		-0.885773, 0.459570, 0.064817,
		0.461868, 0.859105, 0.220494,
		12.068116, 12.280457, 24.634518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.460546, 12.138254, 24.072441>,  <11.744809, 11.679084, 24.480171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.460546, 12.138254, 24.072441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.809560, 12.300269, 24.181715>,  <12.018968, 12.397478, 24.247280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.809560, 12.300269, 24.181715>,  <11.460546, 12.138254, 24.072441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.809560, 12.300269, 24.181715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164953, 0.282095, -0.945099,
		-0.459865, 0.869694, 0.179325,
		0.872534, 0.405037, 0.273184,
		12.071320, 12.421781, 24.263670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.528884, 12.747398, 23.701702>,  <11.460546, 12.138254, 24.072441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.528884, 12.747398, 23.701702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.907297, 12.693496, 23.819592>,  <12.134345, 12.661154, 23.890326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.907297, 12.693496, 23.819592>,  <11.528884, 12.747398, 23.701702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.907297, 12.693496, 23.819592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318308, 0.215649, -0.923134,
		0.060843, 0.967128, 0.246905,
		0.946033, -0.134758, 0.294724,
		12.191107, 12.653069, 23.908009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.942645, 13.308006, 23.406864>,  <11.528884, 12.747398, 23.701702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.942645, 13.308006, 23.406864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.205486, 13.021666, 23.501329>,  <12.363191, 12.849861, 23.558008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.205486, 13.021666, 23.501329>,  <11.942645, 13.308006, 23.406864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.205486, 13.021666, 23.501329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477150, 0.152458, -0.865497,
		0.583561, 0.681406, 0.441749,
		0.657103, -0.715851, 0.236165,
		12.402617, 12.806911, 23.572180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.451316, 13.449006, 22.925714>,  <11.942645, 13.308006, 23.406864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.451316, 13.449006, 22.925714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.542019, 13.079350, 23.048706>,  <12.596440, 12.857555, 23.122501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.542019, 13.079350, 23.048706>,  <12.451316, 13.449006, 22.925714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.542019, 13.079350, 23.048706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626968, -0.103083, -0.772195,
		0.745314, 0.367880, 0.556032,
		0.226757, -0.924142, 0.307478,
		12.610046, 12.802107, 23.140949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.091123, 13.385935, 22.732979>,  <12.451316, 13.449006, 22.925714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.091123, 13.385935, 22.732979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.992521, 12.998829, 22.753639>,  <12.933361, 12.766565, 22.766035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.992521, 12.998829, 22.753639>,  <13.091123, 13.385935, 22.732979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.992521, 12.998829, 22.753639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464729, -0.164804, -0.869981,
		0.850449, -0.190449, 0.490373,
		-0.246502, -0.967765, 0.051651,
		12.918571, 12.708500, 22.769135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.737724, 13.010173, 22.534407>,  <13.091123, 13.385935, 22.732979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.737724, 13.010173, 22.534407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.409027, 12.787674, 22.484888>,  <13.211808, 12.654175, 22.455177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.409027, 12.787674, 22.484888>,  <13.737724, 13.010173, 22.534407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.409027, 12.787674, 22.484888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345334, -0.313273, -0.884649,
		0.453302, -0.769707, 0.449521,
		-0.821743, -0.556248, -0.123799,
		13.162504, 12.620800, 22.447748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.902464, 12.379460, 22.315367>,  <13.737724, 13.010173, 22.534407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.902464, 12.379460, 22.315367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.512012, 12.376579, 22.228542>,  <13.277740, 12.374851, 22.176447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.512012, 12.376579, 22.228542>,  <13.902464, 12.379460, 22.315367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.512012, 12.376579, 22.228542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213799, -0.207557, -0.954573,
		-0.038177, -0.978196, 0.204142,
		-0.976131, -0.007203, -0.217061,
		13.219172, 12.374419, 22.163424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.806338, 11.772603, 21.889721>,  <13.902464, 12.379460, 22.315367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.806338, 11.772603, 21.889721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.499658, 12.012803, 21.798885>,  <13.315649, 12.156923, 21.744385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.499658, 12.012803, 21.798885>,  <13.806338, 11.772603, 21.889721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.499658, 12.012803, 21.798885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139184, -0.189831, -0.971901,
		-0.626736, -0.776764, 0.061964,
		-0.766700, 0.600501, -0.227087,
		13.269648, 12.192953, 21.730759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.390229, 11.304973, 21.477219>,  <13.806338, 11.772603, 21.889721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.390229, 11.304973, 21.477219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.264572, 11.679032, 21.411724>,  <13.189178, 11.903468, 21.372427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.264572, 11.679032, 21.411724>,  <13.390229, 11.304973, 21.477219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.264572, 11.679032, 21.411724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143356, -0.123766, -0.981902,
		-0.938490, -0.331930, -0.095179,
		-0.314142, 0.935150, -0.163738,
		13.170329, 11.959578, 21.362602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.902734, 11.317870, 20.947559>,  <13.390229, 11.304973, 21.477219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.902734, 11.317870, 20.947559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.031117, 11.696678, 20.952284>,  <13.108148, 11.923963, 20.955118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.031117, 11.696678, 20.952284>,  <12.902734, 11.317870, 20.947559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.031117, 11.696678, 20.952284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098388, -0.020938, -0.994928,
		-0.941969, 0.320492, -0.099896,
		0.320958, 0.947020, 0.011810,
		13.127405, 11.980784, 20.955828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.449384, 11.715286, 20.527050>,  <12.902734, 11.317870, 20.947559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.449384, 11.715286, 20.527050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.779171, 11.938874, 20.562387>,  <12.977043, 12.073027, 20.583590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.779171, 11.938874, 20.562387>,  <12.449384, 11.715286, 20.527050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.779171, 11.938874, 20.562387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018441, 0.182564, -0.983021,
		-0.565607, 0.808841, 0.160827,
		0.824469, 0.558969, 0.088344,
		13.026511, 12.106565, 20.588890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.348806, 12.350552, 20.199675>,  <12.449384, 11.715286, 20.527050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.348806, 12.350552, 20.199675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.745072, 12.297047, 20.210190>,  <12.982832, 12.264944, 20.216499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.745072, 12.297047, 20.210190>,  <12.348806, 12.350552, 20.199675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.745072, 12.297047, 20.210190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050347, 0.179807, -0.982413,
		0.126682, 0.974565, 0.184863,
		0.990665, -0.133762, 0.026288,
		13.042272, 12.256918, 20.218077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.697819, 12.945040, 19.867762>,  <12.348806, 12.350552, 20.199675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.697819, 12.945040, 19.867762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.951286, 12.639341, 19.819775>,  <13.103367, 12.455922, 19.790983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.951286, 12.639341, 19.819775>,  <12.697819, 12.945040, 19.867762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.951286, 12.639341, 19.819775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023028, 0.136372, -0.990390,
		0.773261, 0.630342, 0.068816,
		0.633669, -0.764246, -0.119966,
		13.141387, 12.410068, 19.783785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.137774, 13.130214, 19.278879>,  <12.697819, 12.945040, 19.867762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.137774, 13.130214, 19.278879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.239771, 12.749984, 19.349745>,  <13.300969, 12.521846, 19.392263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.239771, 12.749984, 19.349745>,  <13.137774, 13.130214, 19.278879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.239771, 12.749984, 19.349745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199918, -0.127434, -0.971490,
		0.946050, 0.283142, 0.157542,
		0.254993, -0.950574, 0.177164,
		13.316269, 12.464811, 19.402893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.736774, 12.899514, 18.834324>,  <13.137774, 13.130214, 19.278879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.736774, 12.899514, 18.834324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.593179, 12.542721, 18.944227>,  <13.507021, 12.328645, 19.010170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.593179, 12.542721, 18.944227>,  <13.736774, 12.899514, 18.834324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.593179, 12.542721, 18.944227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266387, -0.380057, -0.885773,
		0.894519, -0.244791, 0.374049,
		-0.358989, -0.891983, 0.274759,
		13.485482, 12.275126, 19.026655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.295559, 12.355340, 18.839933>,  <13.736774, 12.899514, 18.834324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.295559, 12.355340, 18.839933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.939279, 12.178088, 18.799358>,  <13.725511, 12.071737, 18.775013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.939279, 12.178088, 18.799358>,  <14.295559, 12.355340, 18.839933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.939279, 12.178088, 18.799358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315976, -0.443077, -0.838953,
		0.326822, -0.779306, 0.534667,
		-0.890700, -0.443130, -0.101435,
		13.672069, 12.045149, 18.768929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.446399, 11.765104, 18.487354>,  <14.295559, 12.355340, 18.839933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.446399, 11.765104, 18.487354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.051275, 11.731431, 18.434977>,  <13.814201, 11.711226, 18.403549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.051275, 11.731431, 18.434977>,  <14.446399, 11.765104, 18.487354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.051275, 11.731431, 18.434977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155601, -0.508628, -0.846809,
		0.004686, -0.856861, 0.515526,
		-0.987809, -0.084185, -0.130945,
		13.754932, 11.706176, 18.395693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.298367, 11.130782, 18.292881>,  <14.446399, 11.765104, 18.487354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.298367, 11.130782, 18.292881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.955597, 11.308871, 18.188988>,  <13.749935, 11.415725, 18.126652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.955597, 11.308871, 18.188988>,  <14.298367, 11.130782, 18.292881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.955597, 11.308871, 18.188988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018077, -0.529547, -0.848088,
		-0.515119, -0.722055, 0.461832,
		-0.856928, 0.445214, -0.259727,
		13.698520, 11.442438, 18.111069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.948265, 10.651632, 17.883162>,  <14.298367, 11.130782, 18.292881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.948265, 10.651632, 17.883162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.831164, 11.015632, 17.765722>,  <13.760904, 11.234032, 17.695259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.831164, 11.015632, 17.765722>,  <13.948265, 10.651632, 17.883162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.831164, 11.015632, 17.765722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129250, -0.266572, -0.955109,
		-0.947413, -0.317557, -0.039578,
		-0.292751, 0.909998, -0.293598,
		13.743339, 11.288631, 17.677643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.713044, 10.482317, 17.308319>,  <13.948265, 10.651632, 17.883162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.713044, 10.482317, 17.308319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.719408, 10.881818, 17.289379>,  <13.723227, 11.121518, 17.278015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.719408, 10.881818, 17.289379>,  <13.713044, 10.482317, 17.308319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.719408, 10.881818, 17.289379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068395, -0.048331, -0.996487,
		-0.997531, 0.012616, -0.069078,
		0.015910, 0.998752, -0.047348,
		13.724181, 11.181443, 17.275175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.181875, 10.586819, 16.773844>,  <13.713044, 10.482317, 17.308319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.181875, 10.586819, 16.773844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.454045, 10.878881, 16.798815>,  <13.617348, 11.054117, 16.813797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.454045, 10.878881, 16.798815>,  <13.181875, 10.586819, 16.773844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.454045, 10.878881, 16.798815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205931, -0.108756, -0.972504,
		-0.703288, 0.674573, -0.224361,
		0.680425, 0.730153, 0.062428,
		13.658173, 11.097926, 16.817543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.113128, 10.964389, 16.188801>,  <13.181875, 10.586819, 16.773844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.113128, 10.964389, 16.188801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.468239, 11.093067, 16.320475>,  <13.681306, 11.170274, 16.399479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.468239, 11.093067, 16.320475>,  <13.113128, 10.964389, 16.188801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.468239, 11.093067, 16.320475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322734, 0.074846, -0.943526,
		-0.328166, 0.943880, -0.037376,
		0.887778, 0.321696, 0.329184,
		13.734572, 11.189576, 16.419230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.198089, 11.548854, 15.922672>,  <13.113128, 10.964389, 16.188801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.198089, 11.548854, 15.922672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.570685, 11.430040, 16.006664>,  <13.794244, 11.358752, 16.057060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.570685, 11.430040, 16.006664>,  <13.198089, 11.548854, 15.922672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.570685, 11.430040, 16.006664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245655, 0.087934, -0.965361,
		0.268281, 0.950809, 0.154878,
		0.931493, -0.297035, 0.209980,
		13.850133, 11.340930, 16.069658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.644907, 12.001361, 15.658684>,  <13.198089, 11.548854, 15.922672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.644907, 12.001361, 15.658684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.918411, 11.713763, 15.708513>,  <14.082514, 11.541204, 15.738411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.918411, 11.713763, 15.708513>,  <13.644907, 12.001361, 15.658684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.918411, 11.713763, 15.708513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380925, 0.206089, -0.901346,
		0.622390, 0.663757, 0.414798,
		0.683760, -0.718995, 0.124574,
		14.123539, 11.498065, 15.745886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.256602, 12.194331, 15.386681>,  <13.644907, 12.001361, 15.658684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.256602, 12.194331, 15.386681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.346982, 11.804721, 15.392630>,  <14.401210, 11.570954, 15.396199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.346982, 11.804721, 15.392630>,  <14.256602, 12.194331, 15.386681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.346982, 11.804721, 15.392630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408710, 0.080929, -0.909069,
		0.884253, 0.211482, 0.416380,
		0.225949, -0.974026, 0.014873,
		14.414766, 11.512513, 15.397092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.798940, 12.262237, 15.069324>,  <14.256602, 12.194331, 15.386681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.798940, 12.262237, 15.069324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.723471, 11.869474, 15.062802>,  <14.678189, 11.633818, 15.058889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.723471, 11.869474, 15.062802>,  <14.798940, 12.262237, 15.069324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.723471, 11.869474, 15.062802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496632, -0.081079, -0.864166,
		0.847207, -0.171141, 0.502943,
		-0.188672, -0.981905, -0.016303,
		14.666869, 11.574903, 15.057911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.437942, 11.785331, 15.047659>,  <14.798940, 12.262237, 15.069324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.437942, 11.785331, 15.047659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.109143, 11.632735, 14.878526>,  <14.911864, 11.541178, 14.777045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.109143, 11.632735, 14.878526>,  <15.437942, 11.785331, 15.047659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.109143, 11.632735, 14.878526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453768, 0.009899, -0.891065,
		0.344117, -0.924320, 0.164970,
		-0.821996, -0.381489, -0.422834,
		14.862544, 11.518289, 14.751676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.592919, 11.222026, 15.617337>,  <15.437942, 11.785331, 15.047659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.592919, 11.222026, 15.617337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.913135, 11.461717, 15.620621>,  <16.105263, 11.605531, 15.622591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.913135, 11.461717, 15.620621>,  <15.592919, 11.222026, 15.617337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.913135, 11.461717, 15.620621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041580, -0.069204, 0.996736,
		0.597838, -0.797583, -0.080317,
		0.800538, 0.599226, 0.008209,
		16.153296, 11.641484, 15.623083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.030930, 10.950754, 16.191839>,  <15.592919, 11.222026, 15.617337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.030930, 10.950754, 16.191839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.145889, 11.325796, 16.113562>,  <16.214865, 11.550821, 16.066595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.145889, 11.325796, 16.113562>,  <16.030930, 10.950754, 16.191839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.145889, 11.325796, 16.113562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069973, 0.224321, 0.972000,
		0.955251, -0.265660, 0.130077,
		0.287401, 0.937605, -0.195694,
		16.232109, 11.607078, 16.054853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.536678, 11.113970, 16.693390>,  <16.030930, 10.950754, 16.191839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.536678, 11.113970, 16.693390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.426937, 11.467685, 16.542252>,  <16.361092, 11.679914, 16.451569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.426937, 11.467685, 16.542252>,  <16.536678, 11.113970, 16.693390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.426937, 11.467685, 16.542252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205804, 0.437813, 0.875194,
		0.939348, 0.162350, -0.302105,
		-0.274353, 0.884286, -0.377846,
		16.344631, 11.732970, 16.428898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.062317, 11.548779, 16.971180>,  <16.536678, 11.113970, 16.693390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.062317, 11.548779, 16.971180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.773325, 11.805467, 16.868246>,  <16.599930, 11.959479, 16.806486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.773325, 11.805467, 16.868246>,  <17.062317, 11.548779, 16.971180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.773325, 11.805467, 16.868246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163438, 0.520165, 0.838282,
		0.671797, 0.563583, -0.480690,
		-0.722480, 0.641718, -0.257335,
		16.556581, 11.997982, 16.791046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.272247, 12.226255, 17.112764>,  <17.062317, 11.548779, 16.971180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.272247, 12.226255, 17.112764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.876183, 12.275661, 17.086460>,  <16.638544, 12.305304, 17.070677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.876183, 12.275661, 17.086460>,  <17.272247, 12.226255, 17.112764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.876183, 12.275661, 17.086460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021972, 0.601374, 0.798666,
		0.138192, 0.789363, -0.598171,
		-0.990162, 0.123512, -0.065761,
		16.579134, 12.312715, 17.066732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.178709, 12.935565, 17.284214>,  <17.272247, 12.226255, 17.112764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.178709, 12.935565, 17.284214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.841194, 12.724841, 17.325188>,  <16.638685, 12.598407, 17.349771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.841194, 12.724841, 17.325188>,  <17.178709, 12.935565, 17.284214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.841194, 12.724841, 17.325188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160210, 0.429427, 0.888777,
		-0.512206, 0.733528, -0.446746,
		-0.843788, -0.526810, 0.102437,
		16.588058, 12.566798, 17.355919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.775217, 13.341093, 17.699959>,  <17.178709, 12.935565, 17.284214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.775217, 13.341093, 17.699959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.636091, 12.970018, 17.754253>,  <16.552616, 12.747374, 17.786829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.636091, 12.970018, 17.754253>,  <16.775217, 13.341093, 17.699959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.636091, 12.970018, 17.754253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245145, 0.229722, 0.941877,
		-0.904947, 0.294323, -0.307318,
		-0.347814, -0.927686, 0.135735,
		16.531748, 12.691712, 17.794973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.156116, 13.471476, 18.064110>,  <16.775217, 13.341093, 17.699959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.156116, 13.471476, 18.064110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.235626, 13.087556, 18.143381>,  <16.283331, 12.857204, 18.190945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.235626, 13.087556, 18.143381>,  <16.156116, 13.471476, 18.064110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.235626, 13.087556, 18.143381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174826, 0.164244, 0.970804,
		-0.964326, -0.227616, -0.135151,
		0.198772, -0.959799, 0.198178,
		16.295258, 12.799616, 18.202835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.577324, 13.112108, 18.308287>,  <16.156116, 13.471476, 18.064110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.577324, 13.112108, 18.308287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.877804, 12.899359, 18.464649>,  <16.058092, 12.771708, 18.558466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.877804, 12.899359, 18.464649>,  <15.577324, 13.112108, 18.308287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.877804, 12.899359, 18.464649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346655, 0.186081, 0.919350,
		-0.561720, -0.826125, -0.044593,
		0.751200, -0.531875, 0.390905,
		16.103165, 12.739797, 18.581921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.362356, 12.861381, 18.913757>,  <15.577324, 13.112108, 18.308287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.362356, 12.861381, 18.913757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.713327, 12.685414, 18.990274>,  <15.923910, 12.579834, 19.036184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.713327, 12.685414, 18.990274>,  <15.362356, 12.861381, 18.913757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.713327, 12.685414, 18.990274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226130, -0.027617, 0.973705,
		-0.423066, -0.897614, -0.123711,
		0.877428, -0.439917, 0.191294,
		15.976556, 12.553439, 19.047663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.220087, 12.261214, 19.331898>,  <15.362356, 12.861381, 18.913757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.220087, 12.261214, 19.331898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577839, 12.426970, 19.399265>,  <15.792490, 12.526423, 19.439686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577839, 12.426970, 19.399265>,  <15.220087, 12.261214, 19.331898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.577839, 12.426970, 19.399265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187388, 0.005218, 0.982272,
		0.406164, -0.910085, 0.082319,
		0.894380, 0.414389, 0.168420,
		15.846153, 12.551286, 19.449791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.445665, 11.943373, 19.949217>,  <15.220087, 12.261214, 19.331898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.445665, 11.943373, 19.949217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.694110, 12.256193, 19.928764>,  <15.843177, 12.443886, 19.916492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.694110, 12.256193, 19.928764>,  <15.445665, 11.943373, 19.949217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.694110, 12.256193, 19.928764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036168, 0.036571, 0.998676,
		0.782887, -0.622139, -0.005571,
		0.621112, 0.782052, -0.051132,
		15.880444, 12.490808, 19.913425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.019066, 11.741956, 20.396444>,  <15.445665, 11.943373, 19.949217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.019066, 11.741956, 20.396444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.059752, 12.138206, 20.359972>,  <16.084164, 12.375957, 20.338089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.059752, 12.138206, 20.359972>,  <16.019066, 11.741956, 20.396444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.059752, 12.138206, 20.359972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212629, 0.067890, 0.974772,
		0.971825, -0.118537, -0.203731,
		0.101716, 0.990626, -0.091182,
		16.090267, 12.435394, 20.332617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.642067, 11.834309, 20.839823>,  <16.019066, 11.741956, 20.396444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.642067, 11.834309, 20.839823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.466562, 12.187846, 20.774946>,  <16.361259, 12.399969, 20.736021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.466562, 12.187846, 20.774946>,  <16.642067, 11.834309, 20.839823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.466562, 12.187846, 20.774946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198513, 0.271370, 0.941780,
		0.876401, 0.381021, -0.294522,
		-0.438763, 0.883844, -0.162191,
		16.334934, 12.452999, 20.726288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.914526, 12.405544, 21.376501>,  <16.642067, 11.834309, 20.839823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.914526, 12.405544, 21.376501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.549488, 12.528603, 21.268780>,  <16.330465, 12.602438, 21.204147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.549488, 12.528603, 21.268780>,  <16.914526, 12.405544, 21.376501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.549488, 12.528603, 21.268780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185829, 0.274603, 0.943430,
		0.364193, 0.911014, -0.193432,
		-0.912596, 0.307646, -0.269301,
		16.275709, 12.620896, 21.187990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.679249, 12.930380, 21.909369>,  <16.914526, 12.405544, 21.376501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.679249, 12.930380, 21.909369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.337286, 12.853214, 21.716738>,  <16.132109, 12.806915, 21.601158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.337286, 12.853214, 21.716738>,  <16.679249, 12.930380, 21.909369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.337286, 12.853214, 21.716738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516697, 0.233510, 0.823709,
		-0.046452, 0.953025, -0.299307,
		-0.854907, -0.192914, -0.481579,
		16.080814, 12.795341, 21.572264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.209772, 13.525013, 21.884314>,  <16.679249, 12.930380, 21.909369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.209772, 13.525013, 21.884314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.983338, 13.195346, 21.877430>,  <15.847479, 12.997545, 21.873301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.983338, 13.195346, 21.877430>,  <16.209772, 13.525013, 21.884314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.983338, 13.195346, 21.877430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497807, 0.325132, 0.804038,
		-0.657068, 0.463718, -0.594329,
		-0.566083, -0.824169, -0.017208,
		15.813514, 12.948095, 21.872267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.599096, 13.781666, 21.850668>,  <16.209772, 13.525013, 21.884314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.599096, 13.781666, 21.850668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.558665, 13.407942, 21.987400>,  <15.534407, 13.183707, 22.069439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.558665, 13.407942, 21.987400>,  <15.599096, 13.781666, 21.850668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.558665, 13.407942, 21.987400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589544, 0.333014, 0.735893,
		-0.801387, -0.127141, -0.584478,
		-0.101077, -0.934311, 0.341828,
		15.528342, 13.127648, 22.089949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.009727, 13.837903, 22.192701>,  <15.599096, 13.781666, 21.850668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.009727, 13.837903, 22.192701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.147052, 13.481420, 22.311281>,  <15.229447, 13.267529, 22.382429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.147052, 13.481420, 22.311281>,  <15.009727, 13.837903, 22.192701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.147052, 13.481420, 22.311281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480634, 0.104468, 0.870676,
		-0.806925, -0.441398, -0.392480,
		0.343313, -0.891210, 0.296449,
		15.250046, 13.214057, 22.400215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.458487, 13.417850, 22.470482>,  <15.009727, 13.837903, 22.192701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.458487, 13.417850, 22.470482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.789110, 13.256017, 22.626999>,  <14.987485, 13.158916, 22.720909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.789110, 13.256017, 22.626999>,  <14.458487, 13.417850, 22.470482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.789110, 13.256017, 22.626999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372782, 0.127356, 0.919137,
		-0.421701, -0.905590, -0.045554,
		0.826560, -0.404583, 0.391294,
		15.037078, 13.134642, 22.744387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.262077, 13.013371, 23.068100>,  <14.458487, 13.417850, 22.470482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.262077, 13.013371, 23.068100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.653821, 13.069837, 23.125967>,  <14.888867, 13.103716, 23.160688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.653821, 13.069837, 23.125967>,  <14.262077, 13.013371, 23.068100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.653821, 13.069837, 23.125967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168909, 0.178429, 0.969346,
		0.111021, -0.973774, 0.198590,
		0.979359, 0.141161, 0.144670,
		14.947629, 13.112185, 23.169369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.465801, 12.640733, 23.652756>,  <14.262077, 13.013371, 23.068100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.465801, 12.640733, 23.652756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.714843, 12.948957, 23.598206>,  <14.864268, 13.133892, 23.565475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.714843, 12.948957, 23.598206>,  <14.465801, 12.640733, 23.652756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.714843, 12.948957, 23.598206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078358, 0.234789, 0.968883,
		0.778603, -0.592545, 0.206560,
		0.622605, 0.770561, -0.136377,
		14.901625, 13.180126, 23.557293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.951719, 12.534144, 24.247070>,  <14.465801, 12.640733, 23.652756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.951719, 12.534144, 24.247070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.993917, 12.893770, 24.077105>,  <15.019235, 13.109546, 23.975124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.993917, 12.893770, 24.077105>,  <14.951719, 12.534144, 24.247070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.993917, 12.893770, 24.077105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164320, 0.437186, 0.884233,
		0.980750, -0.023459, 0.193855,
		0.105494, 0.899065, -0.424915,
		15.025564, 13.163490, 23.949631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.206933, 12.869131, 24.793186>,  <14.951719, 12.534144, 24.247070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.206933, 12.869131, 24.793186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.061625, 13.154611, 24.553631>,  <14.974440, 13.325898, 24.409897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.061625, 13.154611, 24.553631>,  <15.206933, 12.869131, 24.793186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.061625, 13.154611, 24.553631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347488, 0.492632, 0.797851,
		0.864457, 0.497942, 0.069043,
		-0.363271, 0.713700, -0.598888,
		14.952643, 13.368720, 24.373964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.252675, 13.487203, 25.212021>,  <15.206933, 12.869131, 24.793186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.252675, 13.487203, 25.212021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.999847, 13.604797, 24.925228>,  <14.848150, 13.675354, 24.753153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.999847, 13.604797, 24.925228>,  <15.252675, 13.487203, 25.212021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.999847, 13.604797, 24.925228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494521, 0.559314, 0.665295,
		0.596604, 0.775074, -0.208143,
		-0.632070, 0.293987, -0.716980,
		14.810226, 13.692993, 24.710135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.264844, 14.310605, 25.183599>,  <15.252675, 13.487203, 25.212021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.264844, 14.310605, 25.183599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.926368, 14.189231, 25.008379>,  <14.723282, 14.116406, 24.903248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.926368, 14.189231, 25.008379>,  <15.264844, 14.310605, 25.183599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.926368, 14.189231, 25.008379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532822, 0.469722, 0.703890,
		-0.007824, 0.829028, -0.559152,
		-0.846191, -0.303436, -0.438049,
		14.672510, 14.098200, 24.876965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.915964, 14.948460, 25.149529>,  <15.264844, 14.310605, 25.183599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.915964, 14.948460, 25.149529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.660958, 14.640347, 25.155787>,  <14.507955, 14.455481, 25.159542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.660958, 14.640347, 25.155787>,  <14.915964, 14.948460, 25.149529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.660958, 14.640347, 25.155787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561469, 0.478408, 0.675188,
		-0.527569, 0.421657, -0.737480,
		-0.637514, -0.770280, 0.015646,
		14.469705, 14.409264, 25.160480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.264713, 15.212937, 25.015955>,  <14.915964, 14.948460, 25.149529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.264713, 15.212937, 25.015955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186825, 14.860084, 25.187500>,  <14.140092, 14.648372, 25.290428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186825, 14.860084, 25.187500>,  <14.264713, 15.212937, 25.015955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.186825, 14.860084, 25.187500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554565, 0.459653, 0.693669,
		-0.809037, -0.102760, -0.578705,
		-0.194722, -0.882133, 0.428863,
		14.128408, 14.595444, 25.316158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.606757, 15.331654, 25.434547>,  <14.264713, 15.212937, 25.015955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.606757, 15.331654, 25.434547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.757041, 14.994135, 25.587831>,  <13.847211, 14.791624, 25.679802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.757041, 14.994135, 25.587831>,  <13.606757, 15.331654, 25.434547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.757041, 14.994135, 25.587831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541208, 0.135892, 0.829835,
		-0.752288, -0.519173, -0.405614,
		0.375708, -0.843797, 0.383211,
		13.869754, 14.740996, 25.702795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.956833, 14.992897, 25.512142>,  <13.606757, 15.331654, 25.434547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.956833, 14.992897, 25.512142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.247975, 14.851151, 25.746971>,  <13.422661, 14.766105, 25.887869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.247975, 14.851151, 25.746971>,  <12.956833, 14.992897, 25.512142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.247975, 14.851151, 25.746971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652501, -0.094628, 0.751856,
		-0.210877, -0.930307, -0.300099,
		0.727856, -0.354364, 0.587071,
		13.466332, 14.744843, 25.923092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.684255, 14.413420, 26.012115>,  <12.956833, 14.992897, 25.512142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.684255, 14.413420, 26.012115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.029327, 14.545710, 26.165165>,  <13.236371, 14.625084, 26.256994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.029327, 14.545710, 26.165165>,  <12.684255, 14.413420, 26.012115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.029327, 14.545710, 26.165165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382472, -0.068372, 0.921434,
		0.330902, -0.941247, 0.067510,
		0.862682, 0.330725, 0.382625,
		13.288132, 14.644927, 26.279953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.673037, 14.015244, 26.530760>,  <12.684255, 14.413420, 26.012115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.673037, 14.015244, 26.530760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.967928, 14.276766, 26.598917>,  <13.144862, 14.433680, 26.639811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.967928, 14.276766, 26.598917>,  <12.673037, 14.015244, 26.530760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.967928, 14.276766, 26.598917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082947, -0.162703, 0.983182,
		0.670534, -0.738963, -0.065718,
		0.737227, 0.653806, 0.170393,
		13.189096, 14.472907, 26.650034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.268609, 13.649168, 26.917625>,  <12.673037, 14.015244, 26.530760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.268609, 13.649168, 26.917625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.206400, 14.038057, 26.987591>,  <13.169075, 14.271391, 27.029570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.206400, 14.038057, 26.987591>,  <13.268609, 13.649168, 26.917625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.206400, 14.038057, 26.987591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299554, -0.215145, 0.929506,
		0.941319, 0.092163, 0.324693,
		-0.155522, 0.972224, 0.174912,
		13.159743, 14.329724, 27.040064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.240058, 13.656897, 27.620125>,  <13.268609, 13.649168, 26.917625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.240058, 13.656897, 27.620125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.172612, 14.046325, 27.558508>,  <13.132145, 14.279982, 27.521538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.172612, 14.046325, 27.558508>,  <13.240058, 13.656897, 27.620125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.172612, 14.046325, 27.558508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440875, 0.065284, 0.895191,
		0.881588, 0.218854, 0.418216,
		-0.168614, 0.973571, -0.154041,
		13.122028, 14.338396, 27.512295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.462715, 14.035181, 28.268969>,  <13.240058, 13.656897, 27.620125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.462715, 14.035181, 28.268969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.185745, 14.243204, 28.068933>,  <13.019564, 14.368018, 27.948912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.185745, 14.243204, 28.068933>,  <13.462715, 14.035181, 28.268969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.185745, 14.243204, 28.068933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524212, 0.113610, 0.843975,
		0.495731, 0.846541, 0.193954,
		-0.692425, 0.520058, -0.500087,
		12.978018, 14.399221, 27.918907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.555922, 14.417324, 28.822134>,  <13.462715, 14.035181, 28.268969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.555922, 14.417324, 28.822134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.347164, 14.342019, 29.154924>,  <13.221910, 14.296836, 29.354599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.347164, 14.342019, 29.154924>,  <13.555922, 14.417324, 28.822134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.347164, 14.342019, 29.154924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807456, 0.205442, 0.553000,
		-0.275032, 0.960391, 0.044796,
		-0.521894, -0.188263, 0.831976,
		13.190596, 14.285540, 29.404518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.338413, 15.066372, 29.257290>,  <13.555922, 14.417324, 28.822134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.338413, 15.066372, 29.257290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.395583, 14.723512, 29.455225>,  <13.429885, 14.517796, 29.573986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.395583, 14.723512, 29.455225>,  <13.338413, 15.066372, 29.257290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.395583, 14.723512, 29.455225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831712, 0.375032, 0.409397,
		-0.536495, 0.353051, 0.766503,
		0.142925, -0.857150, 0.494840,
		13.438460, 14.466367, 29.603678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.460992, 15.374926, 29.887915>,  <13.338413, 15.066372, 29.257290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.460992, 15.374926, 29.887915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.607715, 15.005850, 29.840422>,  <13.695748, 14.784405, 29.811926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.607715, 15.005850, 29.840422>,  <13.460992, 15.374926, 29.887915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.607715, 15.005850, 29.840422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809474, 0.253660, 0.529537,
		-0.458481, -0.290347, 0.839937,
		0.366808, -0.922689, -0.118730,
		13.717757, 14.729043, 29.804802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.690601, 15.882898, 29.499249>,  <13.460992, 15.374926, 29.887915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.690601, 15.882898, 29.499249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.821449, 16.260557, 29.515148>,  <13.899958, 16.487152, 29.524689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.821449, 16.260557, 29.515148>,  <13.690601, 15.882898, 29.499249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.821449, 16.260557, 29.515148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563998, -0.161312, -0.809867,
		-0.758221, 0.287343, -0.585265,
		0.327120, 0.944146, 0.039750,
		13.919585, 16.543800, 29.527073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.664974, 16.083761, 28.845028>,  <13.690601, 15.882898, 29.499249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.664974, 16.083761, 28.845028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.910456, 16.350199, 29.014587>,  <14.057745, 16.510061, 29.116323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.910456, 16.350199, 29.014587>,  <13.664974, 16.083761, 28.845028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.910456, 16.350199, 29.014587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537838, 0.040359, -0.842081,
		-0.578011, 0.744777, -0.333481,
		0.613704, 0.666092, 0.423898,
		14.094567, 16.550026, 29.141756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.652401, 16.625183, 28.359871>,  <13.664974, 16.083761, 28.845028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.652401, 16.625183, 28.359871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.979952, 16.633163, 28.589319>,  <14.176482, 16.637953, 28.726988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.979952, 16.633163, 28.589319>,  <13.652401, 16.625183, 28.359871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.979952, 16.633163, 28.589319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573133, 0.025478, -0.819066,
		-0.030958, 0.999476, 0.009428,
		0.818877, 0.019953, 0.573621,
		14.225616, 16.639149, 28.761406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.047550, 17.163706, 28.037325>,  <13.652401, 16.625183, 28.359871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.047550, 17.163706, 28.037325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.288236, 16.961542, 28.284712>,  <14.432647, 16.840244, 28.433144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.288236, 16.961542, 28.284712>,  <14.047550, 17.163706, 28.037325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.288236, 16.961542, 28.284712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678791, -0.084499, -0.729454,
		0.420933, 0.858732, 0.292223,
		0.601713, -0.505409, 0.618468,
		14.468750, 16.809919, 28.470253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.675434, 17.567801, 28.195713>,  <14.047550, 17.163706, 28.037325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.675434, 17.567801, 28.195713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.745153, 17.174255, 28.179529>,  <14.786985, 16.938129, 28.169819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.745153, 17.174255, 28.179529>,  <14.675434, 17.567801, 28.195713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.745153, 17.174255, 28.179529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631402, 0.143199, -0.762119,
		0.755613, 0.107290, 0.646172,
		0.174299, -0.983861, -0.040460,
		14.797443, 16.879097, 28.167391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.325141, 17.535721, 28.073030>,  <14.675434, 17.567801, 28.195713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.325141, 17.535721, 28.073030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.237173, 17.155443, 27.985563>,  <15.184392, 16.927277, 27.933083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.237173, 17.155443, 27.985563>,  <15.325141, 17.535721, 28.073030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.237173, 17.155443, 27.985563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753766, -0.023313, -0.656730,
		0.619252, -0.309251, 0.721728,
		-0.219920, -0.950695, -0.218666,
		15.171197, 16.870235, 27.919964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.952717, 17.274893, 28.040133>,  <15.325141, 17.535721, 28.073030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.952717, 17.274893, 28.040133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.718469, 17.014627, 27.846769>,  <15.577920, 16.858467, 27.730751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.718469, 17.014627, 27.846769>,  <15.952717, 17.274893, 28.040133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.718469, 17.014627, 27.846769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656681, -0.031210, -0.753523,
		0.475204, -0.758723, 0.445556,
		-0.585621, -0.650665, -0.483408,
		15.542783, 16.819427, 27.701748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.456028, 16.908037, 27.640694>,  <15.952717, 17.274893, 28.040133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.456028, 16.908037, 27.640694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.125826, 16.774136, 27.458935>,  <15.927705, 16.693794, 27.349878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.125826, 16.774136, 27.458935>,  <16.456028, 16.908037, 27.640694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.125826, 16.774136, 27.458935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502015, -0.067594, -0.862213,
		0.257917, -0.939878, 0.223852,
		-0.825506, -0.334756, -0.454399,
		15.878174, 16.673710, 27.322615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656769, 16.333715, 27.181648>,  <16.456028, 16.908037, 27.640694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.656769, 16.333715, 27.181648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.302267, 16.446329, 27.034521>,  <16.089565, 16.513897, 26.946245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.302267, 16.446329, 27.034521>,  <16.656769, 16.333715, 27.181648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.302267, 16.446329, 27.034521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390122, 0.025600, -0.920407,
		-0.249712, -0.959209, -0.132522,
		-0.886255, 0.281536, -0.367816,
		16.036390, 16.530790, 26.924177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.599075, 15.873923, 26.693422>,  <16.656769, 16.333715, 27.181648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.599075, 15.873923, 26.693422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.340816, 16.165428, 26.602165>,  <16.185862, 16.340330, 26.547411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.340816, 16.165428, 26.602165>,  <16.599075, 15.873923, 26.693422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.340816, 16.165428, 26.602165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402868, 0.071262, -0.912480,
		-0.648722, -0.681050, -0.339604,
		-0.645645, 0.728761, -0.228144,
		16.147123, 16.384056, 26.533722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.383934, 15.764189, 25.987555>,  <16.599075, 15.873923, 26.693422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.383934, 15.764189, 25.987555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.225504, 16.130377, 26.015955>,  <16.130445, 16.350090, 26.032995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.225504, 16.130377, 26.015955>,  <16.383934, 15.764189, 25.987555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.225504, 16.130377, 26.015955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283443, 0.195444, -0.938862,
		-0.873376, -0.351734, -0.336894,
		-0.396074, 0.915470, 0.071000,
		16.106682, 16.405018, 26.037254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.827630, 15.864205, 25.451033>,  <16.383934, 15.764189, 25.987555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.827630, 15.864205, 25.451033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.996232, 16.212124, 25.553631>,  <16.097393, 16.420876, 25.615189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.996232, 16.212124, 25.553631>,  <15.827630, 15.864205, 25.451033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.996232, 16.212124, 25.553631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202459, 0.185446, -0.961572,
		-0.883937, 0.457236, -0.097931,
		0.421504, 0.869796, 0.256494,
		16.122683, 16.473063, 25.630579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.562270, 16.339865, 25.073288>,  <15.827630, 15.864205, 25.451033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.562270, 16.339865, 25.073288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.930372, 16.463827, 25.168859>,  <16.151234, 16.538204, 25.226202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.930372, 16.463827, 25.168859>,  <15.562270, 16.339865, 25.073288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.930372, 16.463827, 25.168859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191342, 0.176239, -0.965571,
		-0.341345, 0.934290, 0.102887,
		0.920256, 0.309907, 0.238927,
		16.206450, 16.556799, 25.240538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.677994, 16.980850, 24.713335>,  <15.562270, 16.339865, 25.073288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.677994, 16.980850, 24.713335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.973794, 16.719887, 24.779673>,  <16.151274, 16.563309, 24.819475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.973794, 16.719887, 24.779673>,  <15.677994, 16.980850, 24.713335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.973794, 16.719887, 24.779673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161949, -0.066703, -0.984542,
		0.653384, 0.754928, 0.056329,
		0.739501, -0.652407, 0.165843,
		16.195644, 16.524164, 24.829426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.357494, 17.210127, 24.437119>,  <15.677994, 16.980850, 24.713335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.357494, 17.210127, 24.437119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.403223, 16.812803, 24.443645>,  <16.430660, 16.574409, 24.447561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.403223, 16.812803, 24.443645>,  <16.357494, 17.210127, 24.437119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.403223, 16.812803, 24.443645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361938, 0.026350, -0.931830,
		0.925166, 0.112434, 0.362529,
		0.114322, -0.993310, 0.016315,
		16.437519, 16.514811, 24.448540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.912544, 17.040335, 24.096165>,  <16.357494, 17.210127, 24.437119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.912544, 17.040335, 24.096165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.747885, 16.675819, 24.100178>,  <16.649090, 16.457109, 24.102585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.747885, 16.675819, 24.100178>,  <16.912544, 17.040335, 24.096165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.747885, 16.675819, 24.100178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475151, -0.224002, -0.850914,
		0.777674, -0.345511, 0.525209,
		-0.411648, -0.911288, 0.010030,
		16.624390, 16.402433, 24.103188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.424793, 16.552986, 23.877329>,  <16.912544, 17.040335, 24.096165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.424793, 16.552986, 23.877329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.069557, 16.379459, 23.816534>,  <16.856417, 16.275343, 23.780058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.069557, 16.379459, 23.816534>,  <17.424793, 16.552986, 23.877329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.069557, 16.379459, 23.816534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359259, -0.448790, -0.818242,
		0.286760, -0.781274, 0.554419,
		-0.888089, -0.433820, -0.151985,
		16.803131, 16.249313, 23.770939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.531059, 15.824819, 23.792727>,  <17.424793, 16.552986, 23.877329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.531059, 15.824819, 23.792727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.181278, 15.898500, 23.613216>,  <16.971409, 15.942710, 23.505510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.181278, 15.898500, 23.613216>,  <17.531059, 15.824819, 23.792727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.181278, 15.898500, 23.613216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295840, -0.530665, -0.794275,
		-0.384457, -0.827323, 0.409548,
		-0.874455, 0.184204, -0.448774,
		16.918941, 15.953762, 23.478584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.449892, 15.258033, 23.194397>,  <17.531059, 15.824819, 23.792727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.449892, 15.258033, 23.194397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.156155, 15.514390, 23.104959>,  <16.979912, 15.668204, 23.051296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.156155, 15.514390, 23.104959>,  <17.449892, 15.258033, 23.194397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.156155, 15.514390, 23.104959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065410, -0.394690, -0.916483,
		-0.675618, -0.658389, 0.331759,
		-0.734345, 0.640893, -0.223594,
		16.935852, 15.706657, 23.037882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.982365, 14.812345, 22.893751>,  <17.449892, 15.258033, 23.194397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.982365, 14.812345, 22.893751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.886852, 15.185036, 22.784304>,  <16.829544, 15.408650, 22.718636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.886852, 15.185036, 22.784304>,  <16.982365, 14.812345, 22.893751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.886852, 15.185036, 22.784304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251495, -0.331492, -0.909320,
		-0.937941, -0.148316, 0.313479,
		-0.238782, 0.931727, -0.273620,
		16.815218, 15.464554, 22.702217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.341450, 14.691251, 22.425154>,  <16.982365, 14.812345, 22.893751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.341450, 14.691251, 22.425154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.543531, 15.031130, 22.364779>,  <16.664780, 15.235058, 22.328552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.543531, 15.031130, 22.364779>,  <16.341450, 14.691251, 22.425154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.543531, 15.031130, 22.364779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007960, -0.170306, -0.985359,
		-0.862964, 0.499007, -0.079276,
		0.505202, 0.849699, -0.150940,
		16.695091, 15.286039, 22.319496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.015057, 14.959163, 21.749107>,  <16.341450, 14.691251, 22.425154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.015057, 14.959163, 21.749107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.362614, 15.156159, 21.769024>,  <16.571148, 15.274357, 21.780973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.362614, 15.156159, 21.769024>,  <16.015057, 14.959163, 21.749107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.362614, 15.156159, 21.769024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087730, -0.054220, -0.994667,
		-0.487165, 0.868627, -0.090318,
		0.868892, 0.492491, 0.049791,
		16.623281, 15.303906, 21.783960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.040615, 15.350183, 21.196783>,  <16.015057, 14.959163, 21.749107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.040615, 15.350183, 21.196783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.430656, 15.364363, 21.284346>,  <16.664680, 15.372870, 21.336884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.430656, 15.364363, 21.284346>,  <16.040615, 15.350183, 21.196783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.430656, 15.364363, 21.284346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217740, 0.034057, -0.975412,
		-0.042031, 0.998791, 0.025491,
		0.975101, 0.035447, 0.218909,
		16.723186, 15.374997, 21.350018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.313776, 15.856845, 20.801136>,  <16.040615, 15.350183, 21.196783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.313776, 15.856845, 20.801136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.621264, 15.626705, 20.912880>,  <16.805756, 15.488622, 20.979927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.621264, 15.626705, 20.912880>,  <16.313776, 15.856845, 20.801136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.621264, 15.626705, 20.912880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205288, -0.191715, -0.959741,
		0.605744, 0.795121, -0.029264,
		0.768721, -0.575349, 0.279359,
		16.851879, 15.454101, 20.996687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.876398, 16.099129, 20.342764>,  <16.313776, 15.856845, 20.801136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.876398, 16.099129, 20.342764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.965153, 15.731217, 20.472239>,  <17.018406, 15.510470, 20.549923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.965153, 15.731217, 20.472239>,  <16.876398, 16.099129, 20.342764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.965153, 15.731217, 20.472239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500345, -0.177524, -0.847432,
		0.836912, 0.349987, 0.420817,
		0.221885, -0.919779, 0.323686,
		17.031719, 15.455283, 20.569344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.520435, 15.951712, 20.071001>,  <16.876398, 16.099129, 20.342764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.520435, 15.951712, 20.071001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.373571, 15.591559, 20.164391>,  <17.285452, 15.375468, 20.220425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.373571, 15.591559, 20.164391>,  <17.520435, 15.951712, 20.071001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.373571, 15.591559, 20.164391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460973, -0.394146, -0.795080,
		0.807896, -0.184297, 0.559766,
		-0.367161, -0.900379, 0.233473,
		17.263424, 15.321445, 20.234432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.018875, 15.509982, 19.937046>,  <17.520435, 15.951712, 20.071001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.018875, 15.509982, 19.937046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.706144, 15.261303, 19.918131>,  <17.518505, 15.112095, 19.906782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.706144, 15.261303, 19.918131>,  <18.018875, 15.509982, 19.937046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.706144, 15.261303, 19.918131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452163, -0.513135, -0.729549,
		0.429295, -0.591763, 0.682292,
		-0.781828, -0.621698, -0.047287,
		17.471596, 15.074794, 19.903944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.293505, 14.801530, 19.836309>,  <18.018875, 15.509982, 19.937046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.293505, 14.801530, 19.836309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.908726, 14.759375, 19.735474>,  <17.677858, 14.734081, 19.674973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.908726, 14.759375, 19.735474>,  <18.293505, 14.801530, 19.836309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.908726, 14.759375, 19.735474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272543, -0.435537, -0.857920,
		-0.019378, -0.893980, 0.447687,
		-0.961948, -0.105389, -0.252088,
		17.620142, 14.727757, 19.659847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.237722, 14.120922, 19.596632>,  <18.293505, 14.801530, 19.836309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.237722, 14.120922, 19.596632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.940145, 14.336317, 19.438351>,  <17.761599, 14.465554, 19.343382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.940145, 14.336317, 19.438351>,  <18.237722, 14.120922, 19.596632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.940145, 14.336317, 19.438351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222059, -0.359292, -0.906421,
		-0.630269, -0.762195, 0.147717,
		-0.743943, 0.538487, -0.395702,
		17.716963, 14.497863, 19.319639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.000288, 13.675486, 19.192411>,  <18.237722, 14.120922, 19.596632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.000288, 13.675486, 19.192411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.879318, 14.034806, 19.064917>,  <17.806736, 14.250399, 18.988420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.879318, 14.034806, 19.064917>,  <18.000288, 13.675486, 19.192411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.879318, 14.034806, 19.064917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282160, -0.235038, -0.930131,
		-0.910453, -0.371229, -0.182384,
		-0.302424, 0.898302, -0.318737,
		17.788591, 14.304296, 18.969296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.723375, 13.497171, 18.644888>,  <18.000288, 13.675486, 19.192411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.723375, 13.497171, 18.644888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.760521, 13.889977, 18.579136>,  <17.782808, 14.125661, 18.539684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.760521, 13.889977, 18.579136>,  <17.723375, 13.497171, 18.644888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.760521, 13.889977, 18.579136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259030, -0.183237, -0.948329,
		-0.961395, 0.045486, -0.271388,
		0.092864, 0.982016, -0.164381,
		17.788380, 14.184582, 18.529821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.417702, 13.644570, 18.018826>,  <17.723375, 13.497171, 18.644888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.417702, 13.644570, 18.018826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.653528, 13.964795, 18.061735>,  <17.795025, 14.156930, 18.087481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.653528, 13.964795, 18.061735>,  <17.417702, 13.644570, 18.018826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.653528, 13.964795, 18.061735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211491, -0.024823, -0.977065,
		-0.779539, 0.598734, -0.183947,
		0.589568, 0.800563, 0.107276,
		17.830399, 14.204964, 18.093918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.205044, 14.123425, 17.495590>,  <17.417702, 13.644570, 18.018826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.205044, 14.123425, 17.495590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.572685, 14.236012, 17.605885>,  <17.793270, 14.303563, 17.672060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.572685, 14.236012, 17.605885>,  <17.205044, 14.123425, 17.495590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.572685, 14.236012, 17.605885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266226, 0.072290, -0.961196,
		-0.290476, 0.956845, -0.008491,
		0.919102, 0.281465, 0.275735,
		17.848415, 14.320451, 17.688604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.404676, 14.715380, 17.086084>,  <17.205044, 14.123425, 17.495590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.404676, 14.715380, 17.086084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.763157, 14.583505, 17.204834>,  <17.978245, 14.504380, 17.276083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.763157, 14.583505, 17.204834>,  <17.404676, 14.715380, 17.086084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.763157, 14.583505, 17.204834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389018, 0.262263, -0.883110,
		0.213291, 0.906932, 0.363294,
		0.896199, -0.329687, 0.296874,
		18.032017, 14.484599, 17.293896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.921078, 15.219629, 16.940134>,  <17.404676, 14.715380, 17.086084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.921078, 15.219629, 16.940134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.125753, 14.876556, 16.960352>,  <18.248558, 14.670712, 16.972483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.125753, 14.876556, 16.960352>,  <17.921078, 15.219629, 16.940134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.125753, 14.876556, 16.960352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464304, 0.226545, -0.856212,
		0.722908, 0.461582, 0.514146,
		0.511689, -0.857682, 0.050543,
		18.279261, 14.619251, 16.975515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.543236, 15.461935, 16.726685>,  <17.921078, 15.219629, 16.940134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.543236, 15.461935, 16.726685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.544222, 15.062894, 16.699026>,  <18.544813, 14.823469, 16.682430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.544222, 15.062894, 16.699026>,  <18.543236, 15.461935, 16.726685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.544222, 15.062894, 16.699026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448797, 0.062896, -0.891418,
		0.893631, -0.028835, 0.447876,
		0.002465, -0.997604, -0.069147,
		18.544962, 14.763613, 16.678282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.204813, 15.359866, 16.675549>,  <18.543236, 15.461935, 16.726685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.204813, 15.359866, 16.675549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.034168, 15.029167, 16.528856>,  <18.931782, 14.830748, 16.440842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.034168, 15.029167, 16.528856>,  <19.204813, 15.359866, 16.675549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.034168, 15.029167, 16.528856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613561, 0.033355, -0.788942,
		0.664488, -0.561585, 0.493030,
		-0.426613, -0.826747, -0.366731,
		18.906185, 14.781143, 16.418837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.717379, 15.089103, 16.393139>,  <19.204813, 15.359866, 16.675549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.717379, 15.089103, 16.393139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.425627, 14.867710, 16.232309>,  <19.250576, 14.734875, 16.135811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.425627, 14.867710, 16.232309>,  <19.717379, 15.089103, 16.393139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.425627, 14.867710, 16.232309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532863, -0.091058, -0.841288,
		0.429025, -0.827869, 0.361345,
		-0.729379, -0.553481, -0.402075,
		19.206814, 14.701666, 16.111687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.099644, 14.409298, 16.055456>,  <19.717379, 15.089103, 16.393139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.099644, 14.409298, 16.055456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.758963, 14.501129, 15.867033>,  <19.554554, 14.556228, 15.753979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.758963, 14.501129, 15.867033>,  <20.099644, 14.409298, 16.055456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.758963, 14.501129, 15.867033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478315, -0.026602, -0.877785,
		-0.214052, -0.972926, -0.087154,
		-0.851702, 0.229579, -0.471059,
		19.503452, 14.570003, 15.725716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.046982, 13.988154, 15.464554>,  <20.099644, 14.409298, 16.055456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.046982, 13.988154, 15.464554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.761456, 14.252084, 15.370657>,  <19.590139, 14.410441, 15.314319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.761456, 14.252084, 15.370657>,  <20.046982, 13.988154, 15.464554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.761456, 14.252084, 15.370657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312081, -0.000379, -0.950055,
		-0.626958, -0.751421, -0.205648,
		-0.713813, 0.659823, -0.234741,
		19.547312, 14.450030, 15.300235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.702131, 13.724746, 14.968539>,  <20.046982, 13.988154, 15.464554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.702131, 13.724746, 14.968539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.688866, 14.123517, 14.940160>,  <19.680906, 14.362780, 14.923132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.688866, 14.123517, 14.940160>,  <19.702131, 13.724746, 14.968539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.688866, 14.123517, 14.940160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297097, -0.057946, -0.953087,
		-0.954271, -0.052687, -0.294263,
		-0.033164, 0.996928, -0.070949,
		19.678917, 14.422596, 14.918875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.339539, 14.000597, 14.388183>,  <19.702131, 13.724746, 14.968539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.339539, 14.000597, 14.388183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.630342, 14.249114, 14.505112>,  <19.804825, 14.398225, 14.575269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.630342, 14.249114, 14.505112>,  <19.339539, 14.000597, 14.388183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.630342, 14.249114, 14.505112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382667, -0.013130, -0.923793,
		-0.570108, 0.783468, -0.247294,
		0.727009, 0.621293, 0.292322,
		19.848446, 14.435502, 14.592809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.415571, 14.632155, 14.030429>,  <19.339539, 14.000597, 14.388183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.415571, 14.632155, 14.030429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.776594, 14.503238, 14.144633>,  <19.993208, 14.425887, 14.213156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.776594, 14.503238, 14.144633>,  <19.415571, 14.632155, 14.030429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.776594, 14.503238, 14.144633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295580, -0.018385, -0.955141,
		0.313084, 0.946461, 0.078670,
		0.902558, -0.322293, 0.285511,
		20.047361, 14.406549, 14.230287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.143255, 14.909639, 13.746094>,  <19.415571, 14.632155, 14.030429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.143255, 14.909639, 13.746094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.146996, 14.520023, 13.836565>,  <20.149240, 14.286254, 13.890848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.146996, 14.520023, 13.836565>,  <20.143255, 14.909639, 13.746094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.146996, 14.520023, 13.836565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289005, -0.213904, -0.933125,
		0.957282, 0.074092, 0.279503,
		0.009350, -0.974041, 0.226179,
		20.149801, 14.227811, 13.904419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.822245, 15.186070, 13.437797>,  <20.143255, 14.909639, 13.746094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.822245, 15.186070, 13.437797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.165251, 15.164255, 13.642420>,  <21.371054, 15.151166, 13.765194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.165251, 15.164255, 13.642420>,  <20.822245, 15.186070, 13.437797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.165251, 15.164255, 13.642420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221261, 0.936799, -0.271021,
		-0.464446, 0.345592, 0.815387,
		0.857516, -0.054538, 0.511559,
		21.422506, 15.147894, 13.795887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.932562, 15.779039, 14.068269>,  <20.822245, 15.186070, 13.437797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.932562, 15.779039, 14.068269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.271799, 15.648699, 13.901146>,  <21.475342, 15.570495, 13.800873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.271799, 15.648699, 13.901146>,  <20.932562, 15.779039, 14.068269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.271799, 15.648699, 13.901146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235513, 0.938189, -0.253645,
		0.474632, 0.116715, 0.872412,
		0.848091, -0.325852, -0.417806,
		21.526226, 15.550943, 13.775804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.608379, 16.053526, 14.340586>,  <20.932562, 15.779039, 14.068269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.608379, 16.053526, 14.340586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.667360, 15.967301, 13.954469>,  <21.702749, 15.915566, 13.722798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.667360, 15.967301, 13.954469>,  <21.608379, 16.053526, 14.340586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.667360, 15.967301, 13.954469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294569, 0.941244, -0.165194,
		0.944186, -0.259987, 0.202287,
		0.147453, -0.215561, -0.965293,
		21.711596, 15.902633, 13.664881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.379673, 16.138868, 14.146990>,  <21.608379, 16.053526, 14.340586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.379673, 16.138868, 14.146990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.102186, 16.192652, 13.863955>,  <21.935696, 16.224922, 13.694134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.102186, 16.192652, 13.863955>,  <22.379673, 16.138868, 14.146990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.102186, 16.192652, 13.863955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317184, 0.939059, -0.132522,
		0.646649, -0.316368, -0.694087,
		-0.693715, 0.134458, -0.707588,
		21.894072, 16.232988, 13.651678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.686621, 16.522738, 13.592087>,  <22.379673, 16.138868, 14.146990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.686621, 16.522738, 13.592087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.295021, 16.570511, 13.525999>,  <22.060061, 16.599174, 13.486346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.295021, 16.570511, 13.525999>,  <22.686621, 16.522738, 13.592087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.295021, 16.570511, 13.525999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148491, 0.973035, -0.176505,
		0.139684, -0.197332, -0.970334,
		-0.978999, 0.119431, -0.165220,
		22.001322, 16.606340, 13.476433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.667330, 16.901783, 12.971470>,  <22.686621, 16.522738, 13.592087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.667330, 16.901783, 12.971470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.329571, 16.954813, 13.179092>,  <22.126915, 16.986631, 13.303666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.329571, 16.954813, 13.179092>,  <22.667330, 16.901783, 12.971470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.329571, 16.954813, 13.179092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103687, 0.991018, -0.084448,
		-0.525589, -0.017488, -0.850559,
		-0.844396, 0.132577, 0.519055,
		22.076252, 16.994587, 13.334809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.115004, 17.265545, 12.519460>,  <22.667330, 16.901783, 12.971470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.115004, 17.265545, 12.519460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.021240, 17.331797, 12.902629>,  <21.964981, 17.371548, 13.132530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.021240, 17.331797, 12.902629>,  <22.115004, 17.265545, 12.519460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.021240, 17.331797, 12.902629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258869, 0.960435, -0.102717,
		-0.937037, 0.223899, -0.268013,
		-0.234410, 0.165630, 0.957924,
		21.950916, 17.381485, 13.190006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.748119, 17.852837, 12.525217>,  <22.115004, 17.265545, 12.519460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.748119, 17.852837, 12.525217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.822502, 17.839283, 12.918007>,  <21.867132, 17.831150, 13.153681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.822502, 17.839283, 12.918007>,  <21.748119, 17.852837, 12.525217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.822502, 17.839283, 12.918007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252812, 0.967407, -0.014493,
		-0.949477, 0.250950, 0.188462,
		0.185957, -0.033884, 0.981973,
		21.878288, 17.829117, 13.212599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.437750, 18.402466, 12.816026>,  <21.748119, 17.852837, 12.525217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.437750, 18.402466, 12.816026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.685379, 18.289572, 13.109173>,  <21.833956, 18.221836, 13.285061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.685379, 18.289572, 13.109173>,  <21.437750, 18.402466, 12.816026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.685379, 18.289572, 13.109173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240338, 0.956504, 0.165340,
		-0.747655, 0.073778, 0.659976,
		0.619072, -0.282235, 0.732867,
		21.871101, 18.204901, 13.329033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.251032, 18.764757, 13.491694>,  <21.437750, 18.402466, 12.816026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.251032, 18.764757, 13.491694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.638418, 18.669418, 13.520713>,  <21.870850, 18.612215, 13.538124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.638418, 18.669418, 13.520713>,  <21.251032, 18.764757, 13.491694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.638418, 18.669418, 13.520713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240532, 0.970371, -0.022918,
		-0.064935, 0.039645, 0.997102,
		0.968467, -0.238347, 0.072547,
		21.928959, 18.597914, 13.542477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.621931, 19.308264, 13.973850>,  <21.251032, 18.764757, 13.491694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.621931, 19.308264, 13.973850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.912048, 19.162661, 13.740116>,  <22.086119, 19.075298, 13.599875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.912048, 19.162661, 13.740116>,  <21.621931, 19.308264, 13.973850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.912048, 19.162661, 13.740116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439372, 0.898194, -0.014161,
		0.530000, -0.246469, 0.811390,
		0.725295, -0.364007, -0.584334,
		22.129637, 19.053459, 13.564816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.199713, 19.322060, 14.308370>,  <21.621931, 19.308264, 13.973850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.199713, 19.322060, 14.308370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.381693, 19.313740, 13.952260>,  <22.490881, 19.308748, 13.738594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.381693, 19.313740, 13.952260>,  <22.199713, 19.322060, 14.308370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.381693, 19.313740, 13.952260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194783, 0.977843, 0.076695,
		0.868953, -0.208303, 0.448921,
		0.454950, -0.020798, -0.890274,
		22.518177, 19.307501, 13.685178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.809986, 19.697105, 14.323670>,  <22.199713, 19.322060, 14.308370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.809986, 19.697105, 14.323670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.753382, 19.684202, 13.927906>,  <22.719419, 19.676460, 13.690448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.753382, 19.684202, 13.927906>,  <22.809986, 19.697105, 14.323670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.753382, 19.684202, 13.927906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392611, 0.915674, -0.086010,
		0.908752, -0.400625, -0.116915,
		-0.141514, -0.032260, -0.989411,
		22.710928, 19.674524, 13.631083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.425835, 19.863148, 14.023332>,  <22.809986, 19.697105, 14.323670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.425835, 19.863148, 14.023332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.189888, 19.944536, 13.710753>,  <23.048321, 19.993370, 13.523207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.189888, 19.944536, 13.710753>,  <23.425835, 19.863148, 14.023332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.189888, 19.944536, 13.710753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680723, 0.645855, -0.345669,
		0.434367, -0.735846, -0.519476,
		-0.589866, 0.203472, -0.781446,
		23.012928, 20.005577, 13.476319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.776186, 19.775574, 13.461510>,  <23.425835, 19.863148, 14.023332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.776186, 19.775574, 13.461510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.477243, 20.014282, 13.344671>,  <23.297878, 20.157507, 13.274568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.477243, 20.014282, 13.344671>,  <23.776186, 19.775574, 13.461510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.477243, 20.014282, 13.344671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659963, 0.717610, -0.222453,
		0.076858, -0.359025, -0.930158,
		-0.747356, 0.596773, -0.292097,
		23.253036, 20.193314, 13.257042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.931894, 20.031931, 12.868529>,  <23.776186, 19.775574, 13.461510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.931894, 20.031931, 12.868529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.663811, 20.293955, 13.008082>,  <23.502960, 20.451168, 13.091814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.663811, 20.293955, 13.008082>,  <23.931894, 20.031931, 12.868529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.663811, 20.293955, 13.008082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566632, 0.755224, -0.329492,
		-0.479320, -0.023141, -0.877335,
		-0.670209, 0.655058, 0.348882,
		23.462748, 20.490473, 13.112747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.868942, 20.390615, 12.304463>,  <23.931894, 20.031931, 12.868529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.868942, 20.390615, 12.304463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.727848, 20.632406, 12.590173>,  <23.643192, 20.777481, 12.761599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.727848, 20.632406, 12.590173>,  <23.868942, 20.390615, 12.304463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.727848, 20.632406, 12.590173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489650, 0.769723, -0.409597,
		-0.797384, 0.205265, -0.567490,
		-0.352735, 0.604477, 0.714272,
		23.622028, 20.813749, 12.804455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.688423, 20.997936, 11.939873>,  <23.868942, 20.390615, 12.304463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.688423, 20.997936, 11.939873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.751022, 21.086884, 12.324801>,  <23.788582, 21.140251, 12.555758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.751022, 21.086884, 12.324801>,  <23.688423, 20.997936, 11.939873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.751022, 21.086884, 12.324801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616600, 0.739138, -0.271070,
		-0.771565, 0.635789, -0.021440,
		0.156496, 0.222368, 0.962321,
		23.797972, 21.153595, 12.613498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.633703, 21.754492, 11.917789>,  <23.688423, 20.997936, 11.939873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.633703, 21.754492, 11.917789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.814405, 21.633331, 12.253448>,  <23.922827, 21.560635, 12.454844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.814405, 21.633331, 12.253448>,  <23.633703, 21.754492, 11.917789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.814405, 21.633331, 12.253448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676607, 0.729390, -0.100967,
		-0.581482, 0.613385, 0.534450,
		0.451754, -0.302902, 0.839148,
		23.949932, 21.542461, 12.505193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.697197, 22.380133, 12.388515>,  <23.633703, 21.754492, 11.917789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.697197, 22.380133, 12.388515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.980724, 22.130384, 12.519809>,  <24.150841, 21.980536, 12.598585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.980724, 22.130384, 12.519809>,  <23.697197, 22.380133, 12.388515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.980724, 22.130384, 12.519809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664121, 0.747525, -0.012206,
		-0.237743, 0.226640, 0.944517,
		0.708817, -0.624372, 0.328235,
		24.193369, 21.943073, 12.618279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.088631, 22.809540, 12.748910>,  <23.697197, 22.380133, 12.388515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.088631, 22.809540, 12.748910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327673, 22.488844, 12.745246>,  <24.471098, 22.296427, 12.743048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327673, 22.488844, 12.745246>,  <24.088631, 22.809540, 12.748910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.327673, 22.488844, 12.745246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801714, 0.597667, -0.007052,
		0.011128, -0.003129, 0.999933,
		0.597605, -0.801739, -0.009159,
		24.506954, 22.248322, 12.742498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.591429, 22.920732, 13.286518>,  <24.088631, 22.809540, 12.748910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.591429, 22.920732, 13.286518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.750374, 22.653755, 13.034607>,  <24.845741, 22.493568, 12.883460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.750374, 22.653755, 13.034607>,  <24.591429, 22.920732, 13.286518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.750374, 22.653755, 13.034607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802969, 0.585118, -0.113475,
		0.444232, -0.460601, 0.768443,
		0.397363, -0.667445, -0.629777,
		24.869583, 22.453522, 12.845674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.324364, 22.806818, 13.558969>,  <24.591429, 22.920732, 13.286518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.324364, 22.806818, 13.558969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328272, 22.680424, 13.179482>,  <25.330618, 22.604588, 12.951791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328272, 22.680424, 13.179482>,  <25.324364, 22.806818, 13.558969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.328272, 22.680424, 13.179482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860919, 0.485266, -0.152758,
		0.508648, -0.815273, 0.276779,
		0.009772, -0.315984, -0.948714,
		25.331203, 22.585629, 12.894868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987240, 22.421911, 13.453165>,  <25.324364, 22.806818, 13.558969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987240, 22.421911, 13.453165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837170, 22.540272, 13.101782>,  <25.747128, 22.611288, 12.890952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837170, 22.540272, 13.101782>,  <25.987240, 22.421911, 13.453165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837170, 22.540272, 13.101782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824610, 0.539400, -0.170485,
		0.423393, -0.788347, -0.446372,
		-0.375174, 0.295900, -0.878457,
		25.724617, 22.629042, 12.838244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.523464, 22.346403, 13.019624>,  <25.987240, 22.421911, 13.453165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.523464, 22.346403, 13.019624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273928, 22.620304, 12.868927>,  <26.124205, 22.784645, 12.778509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273928, 22.620304, 12.868927>,  <26.523464, 22.346403, 13.019624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273928, 22.620304, 12.868927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744132, 0.667777, -0.018471,
		0.238931, -0.291869, -0.926134,
		-0.623842, 0.684752, -0.376742,
		26.086775, 22.825729, 12.755904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887632, 22.606384, 12.422984>,  <26.523464, 22.346403, 13.019624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887632, 22.606384, 12.422984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622751, 22.866684, 12.571584>,  <26.463821, 23.022863, 12.660744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622751, 22.866684, 12.571584>,  <26.887632, 22.606384, 12.422984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622751, 22.866684, 12.571584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650451, 0.745350, -0.146173,
		-0.372019, 0.144846, -0.916854,
		-0.662205, 0.650748, 0.371500,
		26.424089, 23.061909, 12.683034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205807, 22.059505, 12.098677>,  <26.887632, 22.606384, 12.422984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205807, 22.059505, 12.098677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501541, 22.175554, 11.855627>,  <27.678982, 22.245184, 11.709797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501541, 22.175554, 11.855627>,  <27.205807, 22.059505, 12.098677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501541, 22.175554, 11.855627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302152, -0.663499, -0.684451,
		-0.601733, 0.689635, -0.402889,
		0.739338, 0.290123, -0.607625,
		27.723343, 22.262590, 11.673340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969797, 22.163378, 11.349501>,  <27.205807, 22.059505, 12.098677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969797, 22.163378, 11.349501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350313, 22.041843, 11.370408>,  <27.578623, 21.968922, 11.382953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350313, 22.041843, 11.370408>,  <26.969797, 22.163378, 11.349501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350313, 22.041843, 11.370408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208917, -0.759979, -0.615456,
		0.226722, 0.574556, -0.786436,
		0.951289, -0.303837, 0.052269,
		27.635700, 21.950693, 11.386088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261419, 22.062616, 10.633194>,  <26.969797, 22.163378, 11.349501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261419, 22.062616, 10.633194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462221, 21.827744, 10.887188>,  <27.582703, 21.686819, 11.039584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462221, 21.827744, 10.887188>,  <27.261419, 22.062616, 10.633194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462221, 21.827744, 10.887188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154848, -0.783361, -0.601970,
		0.850889, 0.203867, -0.484176,
		0.502006, -0.587183, 0.634985,
		27.612823, 21.651588, 11.077683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871885, 21.659916, 10.351792>,  <27.261419, 22.062616, 10.633194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871885, 21.659916, 10.351792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743773, 21.442465, 10.662118>,  <27.666904, 21.311995, 10.848313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743773, 21.442465, 10.662118>,  <27.871885, 21.659916, 10.351792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.743773, 21.442465, 10.662118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185615, -0.767069, -0.614128,
		0.928959, -0.340698, 0.144774,
		-0.320284, -0.543627, 0.775814,
		27.647688, 21.279377, 10.894862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114023, 21.026031, 10.180499>,  <27.871885, 21.659916, 10.351792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114023, 21.026031, 10.180499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801895, 20.968147, 10.423861>,  <27.614618, 20.933416, 10.569878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801895, 20.968147, 10.423861>,  <28.114023, 21.026031, 10.180499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801895, 20.968147, 10.423861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329960, -0.731159, -0.597104,
		0.531247, -0.666683, 0.522791,
		-0.780323, -0.144709, 0.608405,
		27.567799, 20.924734, 10.606382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031517, 20.360256, 10.326410>,  <28.114023, 21.026031, 10.180499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031517, 20.360256, 10.326410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661606, 20.511997, 10.338231>,  <27.439659, 20.603043, 10.345324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661606, 20.511997, 10.338231>,  <28.031517, 20.360256, 10.326410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661606, 20.511997, 10.338231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331419, -0.764903, -0.552344,
		-0.186929, -0.520591, 0.833092,
		-0.924780, 0.379352, 0.029551,
		27.384172, 20.625803, 10.347096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243116, 20.116547, 10.332040>,  <28.031517, 20.360256, 10.326410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243116, 20.116547, 10.332040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945095, 20.212883, 10.083237>,  <26.766283, 20.270685, 9.933955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945095, 20.212883, 10.083237>,  <27.243116, 20.116547, 10.332040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945095, 20.212883, 10.083237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611419, -0.619305, 0.492573,
		-0.266579, 0.747299, 0.608671,
		-0.745052, 0.240843, -0.622007,
		26.721579, 20.285135, 9.896635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641781, 20.423113, 10.693653>,  <27.243116, 20.116547, 10.332040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641781, 20.423113, 10.693653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523994, 20.219172, 10.370336>,  <26.453323, 20.096807, 10.176345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523994, 20.219172, 10.370336>,  <26.641781, 20.423113, 10.693653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.523994, 20.219172, 10.370336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613193, -0.547927, 0.569008,
		-0.732997, 0.663194, -0.151292,
		-0.294466, -0.509852, -0.808295,
		26.435654, 20.066216, 10.127847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.837257, 20.428728, 10.734495>,  <26.641781, 20.423113, 10.693653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.837257, 20.428728, 10.734495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038557, 20.128565, 10.563089>,  <26.159338, 19.948467, 10.460246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038557, 20.128565, 10.563089>,  <25.837257, 20.428728, 10.734495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.038557, 20.128565, 10.563089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510269, -0.658257, 0.553465,
		-0.697399, -0.059872, -0.714178,
		0.503250, -0.750409, -0.428517,
		26.189533, 19.903442, 10.434535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.350037, 19.988680, 10.584362>,  <25.837257, 20.428728, 10.734495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.350037, 19.988680, 10.584362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676224, 19.757160, 10.585308>,  <25.871935, 19.618248, 10.585876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676224, 19.757160, 10.585308>,  <25.350037, 19.988680, 10.584362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.676224, 19.757160, 10.585308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432192, -0.606184, 0.667647,
		-0.385001, -0.545465, -0.744475,
		0.815466, -0.578800, 0.002364,
		25.920864, 19.583521, 10.586018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.142820, 19.394257, 10.583111>,  <25.350037, 19.988680, 10.584362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.142820, 19.394257, 10.583111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509766, 19.307455, 10.716588>,  <25.729933, 19.255375, 10.796675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509766, 19.307455, 10.716588>,  <25.142820, 19.394257, 10.583111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.509766, 19.307455, 10.716588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388670, -0.669227, 0.633302,
		0.085890, -0.710666, -0.698267,
		0.917365, -0.217001, 0.333694,
		25.784975, 19.242355, 10.816696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.132975, 18.693974, 10.519611>,  <25.142820, 19.394257, 10.583111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.132975, 18.693974, 10.519611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.432297, 18.784319, 10.769098>,  <25.611891, 18.838526, 10.918791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.432297, 18.784319, 10.769098>,  <25.132975, 18.693974, 10.519611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.432297, 18.784319, 10.769098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144798, -0.861960, 0.485858,
		0.647358, -0.453883, -0.612305,
		0.748306, 0.225864, 0.623719,
		25.656788, 18.852077, 10.956214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.432154, 18.067654, 10.720968>,  <25.132975, 18.693974, 10.519611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.432154, 18.067654, 10.720968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587841, 18.281691, 11.020884>,  <25.681253, 18.410112, 11.200833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587841, 18.281691, 11.020884>,  <25.432154, 18.067654, 10.720968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.587841, 18.281691, 11.020884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207636, -0.742061, 0.637363,
		0.897439, -0.403757, -0.177719,
		0.389218, 0.535094, 0.749789,
		25.704607, 18.442219, 11.245820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863651, 17.644186, 11.151601>,  <25.432154, 18.067654, 10.720968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863651, 17.644186, 11.151601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732065, 17.943502, 11.382025>,  <25.653114, 18.123093, 11.520279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732065, 17.943502, 11.382025>,  <25.863651, 17.644186, 11.151601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732065, 17.943502, 11.382025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253998, -0.657644, 0.709218,
		0.909543, 0.086989, 0.406405,
		-0.328964, 0.748290, 0.576060,
		25.633375, 18.167990, 11.554843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116333, 17.469940, 11.830361>,  <25.863651, 17.644186, 11.151601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116333, 17.469940, 11.830361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782709, 17.688868, 11.858047>,  <25.582535, 17.820223, 11.874658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782709, 17.688868, 11.858047>,  <26.116333, 17.469940, 11.830361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782709, 17.688868, 11.858047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402798, -0.689890, 0.601503,
		0.376961, 0.473810, 0.795867,
		-0.834059, 0.547316, 0.069212,
		25.532492, 17.853062, 11.878810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897285, 17.456593, 12.563817>,  <26.116333, 17.469940, 11.830361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897285, 17.456593, 12.563817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563957, 17.586330, 12.384763>,  <25.363960, 17.664173, 12.277330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563957, 17.586330, 12.384763>,  <25.897285, 17.456593, 12.563817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563957, 17.586330, 12.384763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538154, -0.661102, 0.522814,
		-0.126361, 0.676569, 0.725457,
		-0.833321, 0.324345, -0.447635,
		25.313961, 17.683634, 12.250472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479357, 17.342319, 13.022670>,  <25.897285, 17.456593, 12.563817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479357, 17.342319, 13.022670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203169, 17.391598, 12.737552>,  <25.037457, 17.421165, 12.566481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203169, 17.391598, 12.737552>,  <25.479357, 17.342319, 13.022670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203169, 17.391598, 12.737552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585838, -0.673261, 0.451124,
		-0.424321, 0.729069, 0.537038,
		-0.690468, 0.123196, -0.712795,
		24.996029, 17.428556, 12.523713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.837822, 17.175467, 13.391453>,  <25.479357, 17.342319, 13.022670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.837822, 17.175467, 13.391453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757725, 17.152308, 13.000239>,  <24.709667, 17.138412, 12.765512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757725, 17.152308, 13.000239>,  <24.837822, 17.175467, 13.391453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.757725, 17.152308, 13.000239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630085, -0.756826, 0.173804,
		-0.750264, 0.651047, 0.115069,
		-0.200242, -0.057896, -0.978034,
		24.697653, 17.134939, 12.706829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.127743, 17.179441, 13.284533>,  <24.837822, 17.175467, 13.391453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.127743, 17.179441, 13.284533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.250324, 17.032621, 12.933224>,  <24.323874, 16.944530, 12.722439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.250324, 17.032621, 12.933224>,  <24.127743, 17.179441, 13.284533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.250324, 17.032621, 12.933224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672084, -0.736826, 0.073428,
		-0.674085, 0.567770, -0.472490,
		0.306453, -0.367049, -0.878272,
		24.342260, 16.922506, 12.669743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.590322, 16.841038, 12.941109>,  <24.127743, 17.179441, 13.284533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.590322, 16.841038, 12.941109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.902988, 16.675686, 12.754297>,  <24.090588, 16.576475, 12.642210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.902988, 16.675686, 12.754297>,  <23.590322, 16.841038, 12.941109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.902988, 16.675686, 12.754297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420031, -0.902443, 0.095765,
		-0.461054, 0.121310, -0.879041,
		0.781667, -0.413378, -0.467029,
		24.137489, 16.551672, 12.614188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.316046, 16.391483, 12.514343>,  <23.590322, 16.841038, 12.941109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.316046, 16.391483, 12.514343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.692947, 16.261290, 12.545876>,  <23.919088, 16.183172, 12.564795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.692947, 16.261290, 12.545876>,  <23.316046, 16.391483, 12.514343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.692947, 16.261290, 12.545876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332502, -0.937325, 0.104230,
		0.039964, -0.124422, -0.991424,
		0.942255, -0.325485, 0.078830,
		23.975624, 16.163645, 12.569525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.405796, 15.928488, 12.060587>,  <23.316046, 16.391483, 12.514343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.405796, 15.928488, 12.060587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.689638, 15.847394, 12.330507>,  <23.859943, 15.798738, 12.492459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.689638, 15.847394, 12.330507>,  <23.405796, 15.928488, 12.060587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.689638, 15.847394, 12.330507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229997, -0.971899, -0.050135,
		0.666003, -0.119626, -0.736294,
		0.709606, -0.202735, 0.674802,
		23.902519, 15.786573, 12.532948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.768919, 15.311350, 11.797339>,  <23.405796, 15.928488, 12.060587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.768919, 15.311350, 11.797339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.852137, 15.324453, 12.188368>,  <23.902067, 15.332315, 12.422985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.852137, 15.324453, 12.188368>,  <23.768919, 15.311350, 11.797339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.852137, 15.324453, 12.188368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136500, -0.988687, 0.062180,
		0.968548, -0.146374, -0.201221,
		0.208046, 0.032758, 0.977570,
		23.914551, 15.334281, 12.481639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.989202, 14.600514, 11.913463>,  <23.768919, 15.311350, 11.797339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.989202, 14.600514, 11.913463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.949781, 14.746257, 12.283875>,  <23.926128, 14.833702, 12.506122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.949781, 14.746257, 12.283875>,  <23.989202, 14.600514, 11.913463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.949781, 14.746257, 12.283875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080956, -0.930411, 0.357464,
		0.991834, -0.039739, 0.121190,
		-0.098552, 0.364356, 0.926030,
		23.920216, 14.855564, 12.561684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.514202, 14.200789, 12.329066>,  <23.989202, 14.600514, 11.913463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.514202, 14.200789, 12.329066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.234339, 14.321578, 12.588078>,  <24.066422, 14.394052, 12.743484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.234339, 14.321578, 12.588078>,  <24.514202, 14.200789, 12.329066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.234339, 14.321578, 12.588078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023050, -0.915363, 0.401969,
		0.714107, 0.266315, 0.647400,
		-0.699657, 0.301971, 0.647529,
		24.024443, 14.412169, 12.782336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.801147, 14.115272, 12.991168>,  <24.514202, 14.200789, 12.329066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.801147, 14.115272, 12.991168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.405087, 14.075969, 12.951281>,  <24.167450, 14.052387, 12.927348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.405087, 14.075969, 12.951281>,  <24.801147, 14.115272, 12.991168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.405087, 14.075969, 12.951281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065202, -0.954010, 0.292598,
		-0.123883, 0.283214, 0.951021,
		-0.990152, -0.098257, -0.099720,
		24.108040, 14.046492, 12.921365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.499969, 14.174723, 13.056166>,  <24.801147, 14.115272, 12.991168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.499969, 14.174723, 13.056166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617163, 14.309468, 13.414089>,  <25.687479, 14.390316, 13.628843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617163, 14.309468, 13.414089>,  <25.499969, 14.174723, 13.056166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617163, 14.309468, 13.414089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736380, -0.676432, 0.013542,
		0.609839, 0.654952, -0.446244,
		0.292985, 0.336864, 0.894809,
		25.705059, 14.410527, 13.682531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210676, 14.316726, 13.185492>,  <25.499969, 14.174723, 13.056166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210676, 14.316726, 13.185492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036842, 14.167352, 13.513316>,  <25.932543, 14.077727, 13.710011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036842, 14.167352, 13.513316>,  <26.210676, 14.316726, 13.185492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036842, 14.167352, 13.513316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657495, -0.753440, 0.005339,
		0.615498, 0.541178, 0.572965,
		-0.434584, -0.373435, 0.819563,
		25.906467, 14.055321, 13.759185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697287, 14.015436, 13.724871>,  <26.210676, 14.316726, 13.185492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697287, 14.015436, 13.724871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360231, 13.813583, 13.800033>,  <26.157999, 13.692472, 13.845130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360231, 13.813583, 13.800033>,  <26.697287, 14.015436, 13.724871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360231, 13.813583, 13.800033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533083, -0.831036, 0.158749,
		0.076047, 0.233937, 0.969273,
		-0.842638, -0.504631, 0.187906,
		26.107439, 13.662194, 13.856404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728722, 13.389605, 14.281482>,  <26.697287, 14.015436, 13.724871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728722, 13.389605, 14.281482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376097, 13.251579, 14.152623>,  <26.164522, 13.168764, 14.075308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376097, 13.251579, 14.152623>,  <26.728722, 13.389605, 14.281482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376097, 13.251579, 14.152623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288781, -0.934030, 0.210222,
		-0.373433, 0.092294, 0.923054,
		-0.881563, -0.345064, -0.322145,
		26.111628, 13.148060, 14.055980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387144, 13.998675, 14.355597>,  <26.728722, 13.389605, 14.281482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387144, 13.998675, 14.355597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659071, 14.291811, 14.344324>,  <26.822227, 14.467692, 14.337560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659071, 14.291811, 14.344324>,  <26.387144, 13.998675, 14.355597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659071, 14.291811, 14.344324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600624, 0.578399, 0.552001,
		0.420829, -0.358333, 0.833367,
		0.679819, 0.732839, -0.028183,
		26.863016, 14.511662, 14.335869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347589, 14.459533, 14.943354>,  <26.387144, 13.998675, 14.355597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347589, 14.459533, 14.943354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483767, 14.699950, 14.654121>,  <26.565472, 14.844201, 14.480582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483767, 14.699950, 14.654121>,  <26.347589, 14.459533, 14.943354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483767, 14.699950, 14.654121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399962, 0.788544, 0.467150,
		0.850959, 0.130169, 0.508847,
		0.340440, 0.601044, -0.723081,
		26.585899, 14.880263, 14.437198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837683, 14.964970, 15.226134>,  <26.347589, 14.459533, 14.943354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837683, 14.964970, 15.226134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.668516, 15.098269, 14.889068>,  <26.567017, 15.178248, 14.686828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.668516, 15.098269, 14.889068>,  <26.837683, 14.964970, 15.226134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.668516, 15.098269, 14.889068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359470, 0.791927, 0.493592,
		0.831819, 0.511661, -0.215126,
		-0.422916, 0.333248, -0.842667,
		26.541641, 15.198243, 14.636268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<11.632579, 17.424387, 22.402840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.247005, 17.332512, 22.349068>,  <11.015660, 17.277388, 22.316805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.247005, 17.332512, 22.349068>,  <11.632579, 17.424387, 22.402840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.247005, 17.332512, 22.349068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147422, -0.040283, -0.988253,
		0.221573, -0.972431, 0.072691,
		-0.963936, -0.229686, -0.134432,
		10.957824, 17.263607, 22.308739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.682394, 16.702065, 22.179228>,  <11.632579, 17.424387, 22.402840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.682394, 16.702065, 22.179228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.333652, 16.856951, 22.059273>,  <11.124406, 16.949883, 21.987299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.333652, 16.856951, 22.059273>,  <11.682394, 16.702065, 22.179228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.333652, 16.856951, 22.059273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159653, -0.354169, -0.921453,
		-0.463012, -0.851251, 0.246964,
		-0.871855, 0.387215, -0.299890,
		11.072095, 16.973114, 21.969305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.397822, 16.216221, 21.790409>,  <11.682394, 16.702065, 22.179228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.397822, 16.216221, 21.790409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.186917, 16.527205, 21.653265>,  <11.060374, 16.713795, 21.570978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.186917, 16.527205, 21.653265>,  <11.397822, 16.216221, 21.790409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.186917, 16.527205, 21.653265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161025, -0.304771, -0.938715,
		-0.834306, -0.550158, 0.035504,
		-0.527262, 0.777458, -0.342861,
		11.028739, 16.760443, 21.550407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.939398, 15.953942, 21.328827>,  <11.397822, 16.216221, 21.790409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.939398, 15.953942, 21.328827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.000245, 16.339699, 21.242283>,  <11.036754, 16.571152, 21.190357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.000245, 16.339699, 21.242283>,  <10.939398, 15.953942, 21.328827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.000245, 16.339699, 21.242283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119257, -0.235218, -0.964599,
		-0.981141, 0.120931, -0.150791,
		0.152119, 0.964390, -0.216360,
		11.045880, 16.629015, 21.177376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.601301, 15.984236, 20.715219>,  <10.939398, 15.953942, 21.328827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.601301, 15.984236, 20.715219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.815660, 16.321411, 20.734291>,  <10.944274, 16.523716, 20.745733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.815660, 16.321411, 20.734291>,  <10.601301, 15.984236, 20.715219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.815660, 16.321411, 20.734291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118836, -0.019398, -0.992724,
		-0.835880, 0.537662, -0.110567,
		0.535895, 0.842937, 0.047679,
		10.976428, 16.574293, 20.748594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.359971, 16.602901, 20.311968>,  <10.601301, 15.984236, 20.715219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.359971, 16.602901, 20.311968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.756509, 16.643047, 20.345827>,  <10.994431, 16.667135, 20.366142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.756509, 16.643047, 20.345827>,  <10.359971, 16.602901, 20.311968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.756509, 16.643047, 20.345827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096268, -0.117240, -0.988427,
		-0.089281, 0.988019, -0.125887,
		0.991343, 0.100366, 0.084647,
		11.053912, 16.673157, 20.371222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.574258, 16.841820, 19.618254>,  <10.359971, 16.602901, 20.311968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.574258, 16.841820, 19.618254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.925773, 16.752533, 19.786970>,  <11.136682, 16.698961, 19.888201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.925773, 16.752533, 19.786970>,  <10.574258, 16.841820, 19.618254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.925773, 16.752533, 19.786970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408026, -0.106913, -0.906689,
		0.247483, 0.968888, -0.002876,
		0.878787, -0.223217, 0.421791,
		11.189409, 16.685568, 19.913507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.125164, 17.263872, 19.239889>,  <10.574258, 16.841820, 19.618254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.125164, 17.263872, 19.239889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.290448, 16.944920, 19.415815>,  <11.389619, 16.753548, 19.521370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.290448, 16.944920, 19.415815>,  <11.125164, 17.263872, 19.239889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.290448, 16.944920, 19.415815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453211, -0.238838, -0.858811,
		0.789846, 0.554198, 0.262692,
		0.413211, -0.797384, 0.439814,
		11.414412, 16.705704, 19.547760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.826033, 17.345020, 19.166630>,  <11.125164, 17.263872, 19.239889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.826033, 17.345020, 19.166630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.743373, 16.957321, 19.220078>,  <11.693777, 16.724701, 19.252146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.743373, 16.957321, 19.220078>,  <11.826033, 17.345020, 19.166630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.743373, 16.957321, 19.220078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478880, -0.219285, -0.850052,
		0.853212, -0.111675, 0.509469,
		-0.206649, -0.969249, 0.133617,
		11.681378, 16.666546, 19.260162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.457624, 17.093397, 19.051996>,  <11.826033, 17.345020, 19.166630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.457624, 17.093397, 19.051996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.195605, 16.795467, 19.001165>,  <12.038394, 16.616711, 18.970667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.195605, 16.795467, 19.001165>,  <12.457624, 17.093397, 19.051996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.195605, 16.795467, 19.001165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481497, -0.281871, -0.829885,
		0.582299, -0.604803, 0.543270,
		-0.655049, -0.744824, -0.127078,
		11.999090, 16.572020, 18.963041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.847531, 16.582258, 18.978563>,  <12.457624, 17.093397, 19.051996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.847531, 16.582258, 18.978563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.500174, 16.456774, 18.824953>,  <12.291759, 16.381483, 18.732788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.500174, 16.456774, 18.824953>,  <12.847531, 16.582258, 18.978563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.500174, 16.456774, 18.824953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486487, -0.389024, -0.782298,
		0.096023, -0.866166, 0.490445,
		-0.868395, -0.313713, -0.384023,
		12.239655, 16.362659, 18.709745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.941179, 15.934017, 18.813208>,  <12.847531, 16.582258, 18.978563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.941179, 15.934017, 18.813208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.635489, 16.038534, 18.577349>,  <12.452074, 16.101244, 18.435833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.635489, 16.038534, 18.577349>,  <12.941179, 15.934017, 18.813208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.635489, 16.038534, 18.577349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482537, -0.374954, -0.791560,
		-0.427917, -0.889459, 0.160468,
		-0.764228, 0.261291, -0.589646,
		12.406220, 16.116922, 18.400455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.986063, 15.367670, 18.291790>,  <12.941179, 15.934017, 18.813208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.986063, 15.367670, 18.291790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.751044, 15.653101, 18.139162>,  <12.610033, 15.824359, 18.047585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.751044, 15.653101, 18.139162>,  <12.986063, 15.367670, 18.291790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.751044, 15.653101, 18.139162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410145, -0.143874, -0.900601,
		-0.697546, -0.685645, -0.208137,
		-0.587547, 0.713577, -0.381572,
		12.574780, 15.867174, 18.024691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.632789, 15.084167, 17.792877>,  <12.986063, 15.367670, 18.291790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.632789, 15.084167, 17.792877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.644441, 15.470246, 17.688923>,  <12.651432, 15.701894, 17.626551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.644441, 15.470246, 17.688923>,  <12.632789, 15.084167, 17.792877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.644441, 15.470246, 17.688923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358052, -0.252820, -0.898822,
		-0.933247, -0.066870, -0.352956,
		0.029130, 0.965200, -0.259886,
		12.653179, 15.759807, 17.610956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.487105, 15.107121, 17.055056>,  <12.632789, 15.084167, 17.792877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.487105, 15.107121, 17.055056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.682455, 15.445310, 17.141464>,  <12.799664, 15.648223, 17.193310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.682455, 15.445310, 17.141464>,  <12.487105, 15.107121, 17.055056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.682455, 15.445310, 17.141464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413064, -0.005916, -0.910683,
		-0.768680, 0.533985, -0.352123,
		0.488374, 0.845473, 0.216022,
		12.828967, 15.698952, 17.206270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.231878, 15.682809, 16.650517>,  <12.487105, 15.107121, 17.055056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.231878, 15.682809, 16.650517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.598755, 15.788416, 16.769884>,  <12.818881, 15.851780, 16.841505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.598755, 15.788416, 16.769884>,  <12.231878, 15.682809, 16.650517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.598755, 15.788416, 16.769884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301436, 0.030016, -0.953014,
		-0.260570, 0.964051, -0.052054,
		0.917191, 0.264018, 0.298421,
		12.873912, 15.867621, 16.859411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.372978, 16.062185, 16.091192>,  <12.231878, 15.682809, 16.650517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.372978, 16.062185, 16.091192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.722598, 15.987746, 16.270704>,  <12.932370, 15.943083, 16.378412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.722598, 15.987746, 16.270704>,  <12.372978, 16.062185, 16.091192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.722598, 15.987746, 16.270704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462700, 0.037192, -0.885734,
		0.148141, 0.981827, 0.118615,
		0.874050, -0.186096, 0.448782,
		12.984813, 15.931917, 16.405338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.833068, 16.462341, 15.706032>,  <12.372978, 16.062185, 16.091192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.833068, 16.462341, 15.706032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.049206, 16.179159, 15.887944>,  <13.178888, 16.009251, 15.997091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.049206, 16.179159, 15.887944>,  <12.833068, 16.462341, 15.706032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.049206, 16.179159, 15.887944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633457, -0.013505, -0.773660,
		0.553859, 0.706128, 0.441162,
		0.540345, -0.707956, 0.454781,
		13.211309, 15.966772, 16.024378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.495894, 16.660835, 15.601213>,  <12.833068, 16.462341, 15.706032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.495894, 16.660835, 15.601213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.526814, 16.269022, 15.675553>,  <13.545365, 16.033934, 15.720157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.526814, 16.269022, 15.675553>,  <13.495894, 16.660835, 15.601213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.526814, 16.269022, 15.675553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783132, -0.055712, -0.619355,
		0.617033, 0.193420, 0.762797,
		0.077299, -0.979533, 0.185849,
		13.550003, 15.975163, 15.731308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.134066, 16.592228, 15.780000>,  <13.495894, 16.660835, 15.601213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.134066, 16.592228, 15.780000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.015195, 16.224672, 15.676208>,  <13.943872, 16.004139, 15.613932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.015195, 16.224672, 15.676208>,  <14.134066, 16.592228, 15.780000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.015195, 16.224672, 15.676208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762973, -0.065139, -0.643140,
		0.574071, -0.389104, 0.720445,
		-0.297178, -0.918888, -0.259481,
		13.926042, 15.949006, 15.598363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.811582, 16.232311, 15.710470>,  <14.134066, 16.592228, 15.780000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.811582, 16.232311, 15.710470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.568729, 15.990335, 15.504386>,  <14.423018, 15.845150, 15.380735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.568729, 15.990335, 15.504386>,  <14.811582, 16.232311, 15.710470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.568729, 15.990335, 15.504386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716231, -0.135843, -0.684515,
		0.344102, -0.784598, 0.515751,
		-0.607130, -0.604940, -0.515209,
		14.386590, 15.808853, 15.349823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.016747, 15.500751, 15.683900>,  <14.811582, 16.232311, 15.710470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.016747, 15.500751, 15.683900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.816238, 15.567929, 15.344365>,  <14.695933, 15.608236, 15.140644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.816238, 15.567929, 15.344365>,  <15.016747, 15.500751, 15.683900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.816238, 15.567929, 15.344365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727243, -0.449797, -0.518460,
		-0.468881, -0.877196, 0.103326,
		-0.501267, 0.167953, -0.848836,
		14.665857, 15.618314, 15.089714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.712926, 15.705084, 15.341394>,  <15.016747, 15.500751, 15.683900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.712926, 15.705084, 15.341394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.058729, 15.899642, 15.392064>,  <16.266211, 16.016376, 15.422465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.058729, 15.899642, 15.392064>,  <15.712926, 15.705084, 15.341394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.058729, 15.899642, 15.392064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286686, 0.270174, 0.919139,
		0.412843, -0.830918, 0.373010,
		0.864507, 0.486397, 0.126673,
		16.318081, 16.045561, 15.430066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.108971, 15.446166, 15.958329>,  <15.712926, 15.705084, 15.341394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.108971, 15.446166, 15.958329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.222446, 15.823298, 15.888370>,  <16.290531, 16.049578, 15.846394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.222446, 15.823298, 15.888370>,  <16.108971, 15.446166, 15.958329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.222446, 15.823298, 15.888370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254632, 0.249912, 0.934187,
		0.924491, -0.220482, 0.310972,
		0.283687, 0.942832, -0.174900,
		16.307552, 16.106148, 15.835899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.553940, 15.471287, 16.420185>,  <16.108971, 15.446166, 15.958329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.553940, 15.471287, 16.420185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.465059, 15.847680, 16.318066>,  <16.411730, 16.073515, 16.256794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.465059, 15.847680, 16.318066>,  <16.553940, 15.471287, 16.420185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.465059, 15.847680, 16.318066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185787, 0.216184, 0.958513,
		0.957136, 0.260417, 0.126786,
		-0.222204, 0.940982, -0.255299,
		16.398397, 16.129974, 16.241476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021517, 15.958255, 16.893070>,  <16.553940, 15.471287, 16.420185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.021517, 15.958255, 16.893070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.688845, 16.136963, 16.761192>,  <16.489241, 16.244188, 16.682066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.688845, 16.136963, 16.761192>,  <17.021517, 15.958255, 16.893070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.688845, 16.136963, 16.761192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295389, 0.146776, 0.944035,
		0.470159, 0.882526, 0.009900,
		-0.831683, 0.446771, -0.329697,
		16.439341, 16.270994, 16.662283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.035755, 16.442810, 17.284826>,  <17.021517, 15.958255, 16.893070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.035755, 16.442810, 17.284826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.659351, 16.495510, 17.160156>,  <16.433510, 16.527130, 17.085354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.659351, 16.495510, 17.160156>,  <17.035755, 16.442810, 17.284826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.659351, 16.495510, 17.160156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268299, 0.270761, 0.924502,
		0.206195, 0.953588, -0.219439,
		-0.941010, 0.131752, -0.311677,
		16.377048, 16.535036, 17.066654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.829481, 17.168888, 17.319193>,  <17.035755, 16.442810, 17.284826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.829481, 17.168888, 17.319193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.491508, 16.955112, 17.327806>,  <16.288725, 16.826847, 17.332975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.491508, 16.955112, 17.327806>,  <16.829481, 17.168888, 17.319193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.491508, 16.955112, 17.327806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263324, 0.450675, 0.852967,
		-0.465565, 0.715028, -0.521521,
		-0.844932, -0.534440, 0.021535,
		16.238029, 16.794781, 17.334267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.329098, 17.587229, 17.321030>,  <16.829481, 17.168888, 17.319193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.329098, 17.587229, 17.321030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.142725, 17.265060, 17.467566>,  <16.030901, 17.071760, 17.555487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.142725, 17.265060, 17.467566>,  <16.329098, 17.587229, 17.321030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.142725, 17.265060, 17.467566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394912, 0.559797, 0.728472,
		-0.791802, 0.194748, -0.578898,
		-0.465934, -0.805419, 0.366340,
		16.002945, 17.023434, 17.577467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.650129, 17.805025, 17.581396>,  <16.329098, 17.587229, 17.321030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.650129, 17.805025, 17.581396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.696609, 17.466282, 17.788984>,  <15.724498, 17.263037, 17.913538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.696609, 17.466282, 17.788984>,  <15.650129, 17.805025, 17.581396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.696609, 17.466282, 17.788984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386828, 0.442665, 0.808957,
		-0.914801, -0.294754, -0.276150,
		0.116202, -0.846858, 0.518970,
		15.731470, 17.212225, 17.944675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.136649, 17.945572, 18.049091>,  <15.650129, 17.805025, 17.581396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.136649, 17.945572, 18.049091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.332185, 17.643421, 18.223650>,  <15.449506, 17.462130, 18.328384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.332185, 17.643421, 18.223650>,  <15.136649, 17.945572, 18.049091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.332185, 17.643421, 18.223650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177871, 0.403426, 0.897557,
		-0.854048, -0.516383, 0.062851,
		0.488839, -0.755378, 0.436395,
		15.478836, 17.416807, 18.354568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.676114, 17.623913, 18.475393>,  <15.136649, 17.945572, 18.049091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.676114, 17.623913, 18.475393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.034042, 17.518456, 18.619499>,  <15.248799, 17.455181, 18.705963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.034042, 17.518456, 18.619499>,  <14.676114, 17.623913, 18.475393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.034042, 17.518456, 18.619499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248520, 0.376208, 0.892583,
		-0.370856, -0.888234, 0.271118,
		0.894820, -0.263642, 0.360263,
		15.302488, 17.439363, 18.727579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.467430, 17.344831, 19.069616>,  <14.676114, 17.623913, 18.475393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.467430, 17.344831, 19.069616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.855391, 17.429550, 19.117674>,  <15.088167, 17.480381, 19.146509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.855391, 17.429550, 19.117674>,  <14.467430, 17.344831, 19.069616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.855391, 17.429550, 19.117674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206605, 0.454671, 0.866365,
		0.128867, -0.865111, 0.484744,
		0.969901, 0.211797, 0.120143,
		15.146360, 17.493090, 19.153717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.591360, 17.040176, 19.718708>,  <14.467430, 17.344831, 19.069616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.591360, 17.040176, 19.718708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.862742, 17.321358, 19.633335>,  <15.025572, 17.490067, 19.582111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.862742, 17.321358, 19.633335>,  <14.591360, 17.040176, 19.718708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.862742, 17.321358, 19.633335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237754, 0.484990, 0.841581,
		0.695105, -0.520231, 0.496174,
		0.678455, 0.702954, -0.213432,
		15.066279, 17.532244, 19.569305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.928097, 17.147123, 20.344435>,  <14.591360, 17.040176, 19.718708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.928097, 17.147123, 20.344435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.927668, 17.471720, 20.110689>,  <14.927410, 17.666477, 19.970442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.927668, 17.471720, 20.110689>,  <14.928097, 17.147123, 20.344435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.927668, 17.471720, 20.110689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466326, 0.516532, 0.718147,
		0.884612, 0.273276, 0.377864,
		-0.001074, 0.811489, -0.584366,
		14.927345, 17.715166, 19.935379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.382656, 17.769276, 20.595955>,  <14.928097, 17.147123, 20.344435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.382656, 17.769276, 20.595955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.073428, 17.884018, 20.369654>,  <14.887892, 17.952864, 20.233873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.073428, 17.884018, 20.369654>,  <15.382656, 17.769276, 20.595955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.073428, 17.884018, 20.369654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482740, 0.312532, 0.818098,
		0.411492, 0.905560, -0.103133,
		-0.773069, 0.286854, -0.565755,
		14.841507, 17.970074, 20.199926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.256336, 18.473907, 20.747423>,  <15.382656, 17.769276, 20.595955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.256336, 18.473907, 20.747423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.911950, 18.407179, 20.555210>,  <14.705318, 18.367142, 20.439882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.911950, 18.407179, 20.555210>,  <15.256336, 18.473907, 20.747423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.911950, 18.407179, 20.555210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507035, 0.357010, 0.784512,
		0.040682, 0.919083, -0.391957,
		-0.860965, -0.166820, -0.480532,
		14.653661, 18.357132, 20.411051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.784860, 19.078676, 20.748486>,  <15.256336, 18.473907, 20.747423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.784860, 19.078676, 20.748486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.565673, 18.744404, 20.733683>,  <14.434161, 18.543840, 20.724802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.565673, 18.744404, 20.733683>,  <14.784860, 19.078676, 20.748486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.565673, 18.744404, 20.733683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551156, 0.327414, 0.767481,
		-0.629254, 0.440949, -0.640003,
		-0.547966, -0.835681, -0.037005,
		14.401283, 18.493700, 20.722582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.379035, 19.159330, 21.285357>,  <14.784860, 19.078676, 20.748486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.379035, 19.159330, 21.285357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.258473, 18.790205, 21.189383>,  <14.186136, 18.568729, 21.131798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.258473, 18.790205, 21.189383>,  <14.379035, 19.159330, 21.285357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.258473, 18.790205, 21.189383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520592, -0.051557, 0.852247,
		-0.798837, 0.381779, -0.464870,
		-0.301403, -0.922814, -0.239937,
		14.168053, 18.513361, 21.117401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.639382, 19.136162, 21.382868>,  <14.379035, 19.159330, 21.285357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.639382, 19.136162, 21.382868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.775294, 18.760477, 21.402590>,  <13.856841, 18.535067, 21.414423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.775294, 18.760477, 21.402590>,  <13.639382, 19.136162, 21.382868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.775294, 18.760477, 21.402590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533171, -0.149171, 0.832752,
		-0.774776, -0.309240, -0.551446,
		0.339780, -0.939212, 0.049303,
		13.877229, 18.478714, 21.417381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<13.048657, 18.788803, 21.586336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.342030, 18.534115, 21.681553>,  <13.518053, 18.381302, 21.738682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.342030, 18.534115, 21.681553>,  <13.048657, 18.788803, 21.586336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.342030, 18.534115, 21.681553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495981, -0.261789, 0.827930,
		-0.464846, -0.725293, -0.507807,
		0.733431, -0.636723, 0.238040,
		13.562058, 18.343098, 21.752966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.727121, 18.057564, 21.678274>,  <13.048657, 18.788803, 21.586336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.727121, 18.057564, 21.678274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.067002, 18.100357, 21.884792>,  <13.270931, 18.126034, 22.008703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.067002, 18.100357, 21.884792>,  <12.727121, 18.057564, 21.678274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.067002, 18.100357, 21.884792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481662, -0.240846, 0.842612,
		0.214494, -0.964649, -0.153117,
		0.849702, 0.106985, 0.516295,
		13.321913, 18.132452, 22.039680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.641308, 17.620911, 22.202690>,  <12.727121, 18.057564, 21.678274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.641308, 17.620911, 22.202690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.983411, 17.788549, 22.324602>,  <13.188672, 17.889133, 22.397749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.983411, 17.788549, 22.324602>,  <12.641308, 17.620911, 22.202690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.983411, 17.788549, 22.324602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143599, -0.373443, 0.916471,
		0.497911, -0.827585, -0.259207,
		0.855257, 0.419099, 0.304782,
		13.239988, 17.914280, 22.416037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.014326, 17.086102, 22.591705>,  <12.641308, 17.620911, 22.202690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.014326, 17.086102, 22.591705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.120464, 17.451529, 22.714983>,  <13.184147, 17.670786, 22.788950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.120464, 17.451529, 22.714983>,  <13.014326, 17.086102, 22.591705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.120464, 17.451529, 22.714983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362919, -0.201503, 0.909773,
		0.893242, -0.353253, 0.278084,
		0.265345, 0.913569, 0.308193,
		13.200068, 17.725599, 22.807442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.364841, 16.915600, 23.141897>,  <13.014326, 17.086102, 22.591705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.364841, 16.915600, 23.141897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.210333, 17.284319, 23.155054>,  <13.117628, 17.505550, 23.162949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.210333, 17.284319, 23.155054>,  <13.364841, 16.915600, 23.141897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.210333, 17.284319, 23.155054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497017, -0.238046, 0.834451,
		0.777026, 0.305976, 0.550099,
		-0.386271, 0.921799, 0.032892,
		13.094452, 17.560858, 23.164923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.335585, 16.919769, 23.805901>,  <13.364841, 16.915600, 23.141897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.335585, 16.919769, 23.805901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.125753, 17.241806, 23.695162>,  <12.999854, 17.435028, 23.628719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.125753, 17.241806, 23.695162>,  <13.335585, 16.919769, 23.805901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.125753, 17.241806, 23.695162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439779, 0.022188, 0.897832,
		0.728980, 0.592735, 0.342423,
		-0.524579, 0.805092, -0.276847,
		12.968380, 17.483334, 23.612108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.495850, 17.454670, 24.364172>,  <13.335585, 16.919769, 23.805901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.495850, 17.454670, 24.364172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.159966, 17.535706, 24.162640>,  <12.958436, 17.584326, 24.041719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.159966, 17.535706, 24.162640>,  <13.495850, 17.454670, 24.364172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.159966, 17.535706, 24.162640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472532, 0.184591, 0.861765,
		0.267586, 0.961709, -0.059273,
		-0.839709, 0.202588, -0.503832,
		12.908053, 17.596481, 24.011490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.436641, 18.164406, 24.519749>,  <13.495850, 17.454670, 24.364172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.436641, 18.164406, 24.519749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.085121, 18.007338, 24.411289>,  <12.874209, 17.913095, 24.346214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.085121, 18.007338, 24.411289>,  <13.436641, 18.164406, 24.519749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.085121, 18.007338, 24.411289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348339, 0.139522, 0.926927,
		-0.326148, 0.909033, -0.259395,
		-0.878799, -0.392673, -0.271147,
		12.821482, 17.889536, 24.329945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.817058, 18.657528, 24.786026>,  <13.436641, 18.164406, 24.519749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.817058, 18.657528, 24.786026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.661640, 18.292652, 24.733957>,  <12.568390, 18.073727, 24.702717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.661640, 18.292652, 24.733957>,  <12.817058, 18.657528, 24.786026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.661640, 18.292652, 24.733957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552819, 0.117751, 0.824940,
		-0.737174, 0.392486, -0.550027,
		-0.388544, -0.912190, -0.130170,
		12.545077, 18.018995, 24.694906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.054230, 18.704268, 24.871613>,  <12.817058, 18.657528, 24.786026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.054230, 18.704268, 24.871613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.154424, 18.321571, 24.930811>,  <12.214540, 18.091953, 24.966330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.154424, 18.321571, 24.930811>,  <12.054230, 18.704268, 24.871613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.154424, 18.321571, 24.930811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455032, 0.018581, 0.890281,
		-0.854519, -0.290344, -0.430694,
		0.250486, -0.956742, 0.147994,
		12.229569, 18.034550, 24.975208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.428064, 18.421329, 25.182989>,  <12.054230, 18.704268, 24.871613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.428064, 18.421329, 25.182989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.733470, 18.180145, 25.275492>,  <11.916714, 18.035435, 25.330994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.733470, 18.180145, 25.275492>,  <11.428064, 18.421329, 25.182989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.733470, 18.180145, 25.275492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287132, 0.003796, 0.957883,
		-0.578446, -0.797760, -0.170232,
		0.763515, -0.602963, 0.231258,
		11.962524, 17.999256, 25.344870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.192472, 17.890463, 25.486269>,  <11.428064, 18.421329, 25.182989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.192472, 17.890463, 25.486269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.572492, 17.844576, 25.602369>,  <11.800504, 17.817043, 25.672029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.572492, 17.844576, 25.602369>,  <11.192472, 17.890463, 25.486269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.572492, 17.844576, 25.602369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296298, -0.039376, 0.954284,
		-0.098051, -0.992617, -0.071401,
		0.950049, -0.114724, 0.290250,
		11.857507, 17.810162, 25.689444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.045250, 17.555058, 26.135201>,  <11.192472, 17.890463, 25.486269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.045250, 17.555058, 26.135201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.437361, 17.634029, 26.131702>,  <11.672627, 17.681412, 26.129604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.437361, 17.634029, 26.131702>,  <11.045250, 17.555058, 26.135201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.437361, 17.634029, 26.131702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035871, -0.134242, 0.990299,
		0.194342, -0.971082, -0.138676,
		0.980278, 0.197431, -0.008745,
		11.731444, 17.693258, 26.129080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.415844, 17.028069, 26.475662>,  <11.045250, 17.555058, 26.135201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.415844, 17.028069, 26.475662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.649627, 17.351517, 26.502630>,  <11.789896, 17.545586, 26.518812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.649627, 17.351517, 26.502630>,  <11.415844, 17.028069, 26.475662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.649627, 17.351517, 26.502630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027294, -0.102634, 0.994345,
		0.810966, -0.579311, -0.082055,
		0.584456, 0.808619, 0.067421,
		11.824964, 17.594103, 26.522856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.784018, 16.908205, 27.087364>,  <11.415844, 17.028069, 26.475662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.784018, 16.908205, 27.087364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.819961, 17.302834, 27.032806>,  <11.841526, 17.539610, 27.000072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.819961, 17.302834, 27.032806>,  <11.784018, 16.908205, 27.087364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.819961, 17.302834, 27.032806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036247, 0.133618, 0.990370,
		0.995295, -0.093936, -0.023754,
		0.089858, 0.986571, -0.136394,
		11.846918, 17.598804, 26.991888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.326438, 17.017359, 27.367487>,  <11.784018, 16.908205, 27.087364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.326438, 17.017359, 27.367487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.139026, 17.370737, 27.367262>,  <12.026578, 17.582764, 27.367126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.139026, 17.370737, 27.367262>,  <12.326438, 17.017359, 27.367487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.139026, 17.370737, 27.367262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078487, 0.042260, 0.996019,
		0.879953, 0.466622, -0.089139,
		-0.468532, 0.883447, -0.000563,
		11.998466, 17.635771, 27.367092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.721086, 17.432302, 27.703051>,  <12.326438, 17.017359, 27.367487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.721086, 17.432302, 27.703051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.396671, 17.664558, 27.731556>,  <12.202023, 17.803913, 27.748659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.396671, 17.664558, 27.731556>,  <12.721086, 17.432302, 27.703051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.396671, 17.664558, 27.731556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025299, -0.156519, 0.987351,
		0.584451, 0.798973, 0.141632,
		-0.811035, 0.580641, 0.071264,
		12.153361, 17.838751, 27.752935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.799274, 17.822977, 28.365946>,  <12.721086, 17.432302, 27.703051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.799274, 17.822977, 28.365946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.410866, 17.874434, 28.285378>,  <12.177821, 17.905308, 28.237036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.410866, 17.874434, 28.285378>,  <12.799274, 17.822977, 28.365946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.410866, 17.874434, 28.285378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206605, -0.028176, 0.978019,
		0.120139, 0.991291, 0.053938,
		-0.971021, 0.128642, -0.201420,
		12.119559, 17.913027, 28.224951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.643596, 18.396002, 28.759388>,  <12.799274, 17.822977, 28.365946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.643596, 18.396002, 28.759388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.298745, 18.210146, 28.678545>,  <12.091835, 18.098633, 28.630039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.298745, 18.210146, 28.678545>,  <12.643596, 18.396002, 28.759388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.298745, 18.210146, 28.678545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311050, 0.170451, 0.934984,
		-0.399981, 0.868940, -0.291476,
		-0.862127, -0.464640, -0.202107,
		12.040107, 18.070753, 28.617912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.216413, 18.734026, 29.142845>,  <12.643596, 18.396002, 28.759388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.216413, 18.734026, 29.142845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.997090, 18.409227, 29.062822>,  <11.865497, 18.214348, 29.014809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.997090, 18.409227, 29.062822>,  <12.216413, 18.734026, 29.142845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.997090, 18.409227, 29.062822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307865, -0.026430, 0.951063,
		-0.777546, 0.583065, -0.235494,
		-0.548307, -0.811996, -0.200056,
		11.832598, 18.165628, 29.002806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.582201, 18.896597, 29.419935>,  <12.216413, 18.734026, 29.142845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.582201, 18.896597, 29.419935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.640276, 18.502054, 29.388899>,  <11.675121, 18.265329, 29.370277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.640276, 18.502054, 29.388899>,  <11.582201, 18.896597, 29.419935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.640276, 18.502054, 29.388899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164043, -0.101337, 0.981234,
		-0.975710, -0.129734, -0.176518,
		0.145188, -0.986357, -0.077593,
		11.683832, 18.206146, 29.365622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.994011, 18.577284, 29.354456>,  <11.582201, 18.896597, 29.419935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.994011, 18.577284, 29.354456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.229176, 18.286911, 29.497221>,  <11.370275, 18.112688, 29.582880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.229176, 18.286911, 29.497221>,  <10.994011, 18.577284, 29.354456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.229176, 18.286911, 29.497221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498044, 0.022843, 0.866851,
		-0.637427, -0.687388, -0.348116,
		0.587911, -0.725931, 0.356911,
		11.405549, 18.069132, 29.604294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.579741, 18.082420, 29.560806>,  <10.994011, 18.577284, 29.354456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.579741, 18.082420, 29.560806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.923838, 18.047621, 29.761770>,  <11.130296, 18.026741, 29.882349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.923838, 18.047621, 29.761770>,  <10.579741, 18.082420, 29.560806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.923838, 18.047621, 29.761770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499804, 0.051097, 0.864630,
		-0.100892, -0.994897, 0.000473,
		0.860242, -0.086998, 0.502409,
		11.181911, 18.021521, 29.912493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.767627, 18.176163, 29.693356>,  <10.579741, 18.082420, 29.560806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.767627, 18.176163, 29.693356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.502288, 17.971916, 29.912167>,  <9.343084, 17.849369, 30.043453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.502288, 17.971916, 29.912167>,  <9.767627, 18.176163, 29.693356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.502288, 17.971916, 29.912167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255268, -0.532762, -0.806847,
		0.703425, -0.674860, 0.223063,
		-0.663348, -0.510616, 0.547029,
		9.303284, 17.818731, 30.076275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.860066, 17.385181, 29.746511>,  <9.767627, 18.176163, 29.693356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.860066, 17.385181, 29.746511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.479131, 17.507181, 29.744566>,  <9.250569, 17.580381, 29.743399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.479131, 17.507181, 29.744566>,  <9.860066, 17.385181, 29.746511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.479131, 17.507181, 29.744566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149983, -0.482076, -0.863196,
		-0.265620, -0.821327, 0.504845,
		-0.952340, 0.305000, -0.004864,
		9.193429, 17.598680, 29.743107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.461784, 16.797613, 29.742683>,  <9.860066, 17.385181, 29.746511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.461784, 16.797613, 29.742683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.212144, 17.077272, 29.603148>,  <9.062360, 17.245068, 29.519426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.212144, 17.077272, 29.603148>,  <9.461784, 16.797613, 29.742683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.212144, 17.077272, 29.603148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037207, -0.472548, -0.880519,
		-0.780457, -0.536554, 0.320931,
		-0.624102, 0.699148, -0.348840,
		9.024913, 17.287016, 29.498495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.055801, 16.436750, 29.424595>,  <9.461784, 16.797613, 29.742683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.055801, 16.436750, 29.424595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.974693, 16.798653, 29.274769>,  <8.926028, 17.015795, 29.184874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.974693, 16.798653, 29.274769>,  <9.055801, 16.436750, 29.424595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.974693, 16.798653, 29.274769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179562, -0.410382, -0.894060,
		-0.962622, -0.114032, 0.245674,
		-0.202771, 0.904756, -0.374567,
		8.913862, 17.070080, 29.162399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.479860, 16.295341, 29.131680>,  <9.055801, 16.436750, 29.424595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.479860, 16.295341, 29.131680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.655649, 16.616135, 28.969845>,  <8.761123, 16.808611, 28.872744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.655649, 16.616135, 28.969845>,  <8.479860, 16.295341, 29.131680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.655649, 16.616135, 28.969845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096098, -0.405854, -0.908872,
		-0.893101, 0.438303, -0.101293,
		0.439472, 0.801980, -0.404588,
		8.787491, 16.856730, 28.848469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.144908, 16.323002, 28.500519>,  <8.479860, 16.295341, 29.131680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.144908, 16.323002, 28.500519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.458010, 16.564981, 28.442099>,  <8.645870, 16.710169, 28.407045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.458010, 16.564981, 28.442099>,  <8.144908, 16.323002, 28.500519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.458010, 16.564981, 28.442099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079585, -0.330062, -0.940598,
		-0.617222, 0.724634, -0.306502,
		0.782754, 0.604950, -0.146052,
		8.692836, 16.746466, 28.398283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.109912, 16.693819, 27.733070>,  <8.144908, 16.323002, 28.500519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.109912, 16.693819, 27.733070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.487676, 16.723860, 27.861103>,  <8.714334, 16.741884, 27.937922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.487676, 16.723860, 27.861103>,  <8.109912, 16.693819, 27.733070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.487676, 16.723860, 27.861103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328771, -0.218471, -0.918793,
		0.000926, 0.972950, -0.231016,
		0.944409, 0.075100, 0.320080,
		8.770998, 16.746389, 27.957127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.344637, 17.260111, 27.382687>,  <8.109912, 16.693819, 27.733070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.344637, 17.260111, 27.382687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.647123, 17.021435, 27.490089>,  <8.828615, 16.878229, 27.554531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.647123, 17.021435, 27.490089>,  <8.344637, 17.260111, 27.382687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.647123, 17.021435, 27.490089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421674, 0.130636, -0.897288,
		0.500328, 0.791765, 0.350398,
		0.756216, -0.596692, 0.268506,
		8.873988, 16.842426, 27.570641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.927203, 17.547550, 27.044306>,  <8.344637, 17.260111, 27.382687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.927203, 17.547550, 27.044306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.057162, 17.181171, 27.138527>,  <9.135138, 16.961344, 27.195059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.057162, 17.181171, 27.138527>,  <8.927203, 17.547550, 27.044306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.057162, 17.181171, 27.138527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394258, -0.095217, -0.914054,
		0.859652, 0.389841, 0.330184,
		0.324897, -0.915946, 0.235552,
		9.154632, 16.906387, 27.209192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.589418, 17.640427, 26.782427>,  <8.927203, 17.547550, 27.044306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.589418, 17.640427, 26.782427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.543525, 17.243702, 26.804855>,  <9.515988, 17.005667, 26.818312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.543525, 17.243702, 26.804855>,  <9.589418, 17.640427, 26.782427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.543525, 17.243702, 26.804855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374867, -0.095498, -0.922147,
		0.919952, -0.084781, 0.382755,
		-0.114733, -0.991813, 0.056071,
		9.509105, 16.946157, 26.821676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.220174, 17.424929, 26.555061>,  <9.589418, 17.640427, 26.782427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.220174, 17.424929, 26.555061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.955644, 17.128006, 26.511925>,  <9.796926, 16.949852, 26.486042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.955644, 17.128006, 26.511925>,  <10.220174, 17.424929, 26.555061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.955644, 17.128006, 26.511925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478556, -0.306828, -0.822703,
		0.577609, -0.595683, 0.558148,
		-0.661326, -0.742306, -0.107841,
		9.757246, 16.905313, 26.479572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.594093, 16.857332, 26.331413>,  <10.220174, 17.424929, 26.555061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.594093, 16.857332, 26.331413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.226402, 16.746275, 26.219744>,  <10.005788, 16.679642, 26.152742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.226402, 16.746275, 26.219744>,  <10.594093, 16.857332, 26.331413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.226402, 16.746275, 26.219744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358375, -0.296346, -0.885295,
		0.163063, -0.913835, 0.371909,
		-0.919227, -0.277642, -0.279172,
		9.950634, 16.662983, 26.135992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.595926, 16.230179, 26.013765>,  <10.594093, 16.857332, 26.331413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.595926, 16.230179, 26.013765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.241641, 16.353672, 25.875088>,  <10.029070, 16.427767, 25.791882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.241641, 16.353672, 25.875088>,  <10.595926, 16.230179, 26.013765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.241641, 16.353672, 25.875088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323683, -0.124642, -0.937920,
		-0.332778, -0.942947, 0.010466,
		-0.885713, 0.308732, -0.346695,
		9.975927, 16.446291, 25.771080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.376788, 15.782558, 25.511229>,  <10.595926, 16.230179, 26.013765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.376788, 15.782558, 25.511229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.181908, 16.121395, 25.426308>,  <10.064980, 16.324697, 25.375355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.181908, 16.121395, 25.426308>,  <10.376788, 15.782558, 25.511229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.181908, 16.121395, 25.426308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337538, -0.041554, -0.940394,
		-0.805422, -0.529820, -0.265681,
		-0.487200, 0.847091, -0.212303,
		10.035748, 16.375523, 25.362617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.925187, 15.791922, 24.781139>,  <10.376788, 15.782558, 25.511229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.925187, 15.791922, 24.781139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.979096, 16.174461, 24.884857>,  <10.011442, 16.403984, 24.947088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.979096, 16.174461, 24.884857>,  <9.925187, 15.791922, 24.781139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.979096, 16.174461, 24.884857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137243, 0.241143, -0.960736,
		-0.981326, 0.165069, -0.098753,
		0.134774, 0.956348, 0.259295,
		10.019528, 16.461367, 24.962646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.536472, 16.223555, 24.304049>,  <9.925187, 15.791922, 24.781139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.536472, 16.223555, 24.304049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.818208, 16.482426, 24.420713>,  <9.987248, 16.637749, 24.490713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.818208, 16.482426, 24.420713>,  <9.536472, 16.223555, 24.304049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.818208, 16.482426, 24.420713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155935, 0.259779, -0.952995,
		-0.692526, 0.716711, 0.082055,
		0.704338, 0.647179, 0.291664,
		10.029510, 16.676579, 24.508213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.393842, 16.778757, 23.957636>,  <9.536472, 16.223555, 24.304049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.393842, 16.778757, 23.957636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.768561, 16.874956, 24.059277>,  <9.993393, 16.932676, 24.120262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.768561, 16.874956, 24.059277>,  <9.393842, 16.778757, 23.957636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.768561, 16.874956, 24.059277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200490, 0.226192, -0.953227,
		-0.286725, 0.943927, 0.163679,
		0.936799, 0.240498, 0.254103,
		10.049601, 16.947105, 24.135508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.437649, 17.396458, 23.777878>,  <9.393842, 16.778757, 23.957636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.437649, 17.396458, 23.777878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.813415, 17.259638, 23.786839>,  <10.038875, 17.177546, 23.792215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.813415, 17.259638, 23.786839>,  <9.437649, 17.396458, 23.777878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.813415, 17.259638, 23.786839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154238, 0.363438, -0.918762,
		0.306119, 0.866554, 0.394177,
		0.939416, -0.342048, 0.022400,
		10.095240, 17.157024, 23.793558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.915097, 17.924358, 23.575277>,  <9.437649, 17.396458, 23.777878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.915097, 17.924358, 23.575277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.120826, 17.583527, 23.536423>,  <10.244263, 17.379028, 23.513109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.120826, 17.583527, 23.536423>,  <9.915097, 17.924358, 23.575277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.120826, 17.583527, 23.536423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354349, 0.314289, -0.880715,
		0.780968, 0.418550, 0.463579,
		0.514321, -0.852079, -0.097137,
		10.275122, 17.327904, 23.507282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.498451, 18.155476, 23.242537>,  <9.915097, 17.924358, 23.575277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.498451, 18.155476, 23.242537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.485308, 17.766212, 23.151428>,  <10.477422, 17.532654, 23.096764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.485308, 17.766212, 23.151428>,  <10.498451, 18.155476, 23.242537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.485308, 17.766212, 23.151428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361167, 0.200934, -0.910595,
		0.931922, -0.112186, 0.344871,
		-0.032860, -0.973160, -0.227772,
		10.475450, 17.474264, 23.083096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.122705, 18.004669, 22.810204>,  <10.498451, 18.155476, 23.242537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.122705, 18.004669, 22.810204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.905361, 17.674524, 22.748835>,  <10.774955, 17.476439, 22.712013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.905361, 17.674524, 22.748835>,  <11.122705, 18.004669, 22.810204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.905361, 17.674524, 22.748835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222657, 0.034522, -0.974285,
		0.809434, -0.563548, 0.165015,
		-0.543360, -0.825361, -0.153421,
		10.742353, 17.426916, 22.702808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<28.723368, 24.603527, 11.067645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.481524, 24.841497, 10.855793>,  <28.336416, 24.984280, 10.728682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.481524, 24.841497, 10.855793>,  <28.723368, 24.603527, 11.067645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481524, 24.841497, 10.855793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620134, -0.768881, -0.155741,
		-0.499877, 0.234279, 0.833808,
		-0.604612, 0.594925, -0.529631,
		28.300140, 25.019976, 10.696903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.448278, 23.987333, 11.582515>,  <28.723368, 24.603527, 11.067645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.448278, 23.987333, 11.582515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.324419, 24.016943, 11.203328>,  <28.250103, 24.034708, 10.975817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.324419, 24.016943, 11.203328>,  <28.448278, 23.987333, 11.582515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324419, 24.016943, 11.203328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818029, -0.528960, 0.225900,
		-0.484714, 0.845412, 0.224344,
		-0.309647, 0.074023, -0.947966,
		28.231525, 24.039150, 10.918939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893541, 24.316317, 11.519157>,  <28.448278, 23.987333, 11.582515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893541, 24.316317, 11.519157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.861338, 24.088240, 11.192136>,  <27.842016, 23.951393, 10.995922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.861338, 24.088240, 11.192136>,  <27.893541, 24.316317, 11.519157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861338, 24.088240, 11.192136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906332, -0.299479, 0.298119,
		-0.414826, 0.764977, -0.492675,
		-0.080508, -0.570195, -0.817555,
		27.837185, 23.917181, 10.946869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907028, 24.684830, 12.232359>,  <27.893541, 24.316317, 11.519157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907028, 24.684830, 12.232359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.180437, 24.680248, 12.524295>,  <28.344482, 24.677500, 12.699456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.180437, 24.680248, 12.524295>,  <27.907028, 24.684830, 12.232359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180437, 24.680248, 12.524295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479963, 0.760374, -0.437570,
		-0.549938, 0.649385, 0.525231,
		0.683523, -0.011455, 0.729839,
		28.385494, 24.676811, 12.743246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716278, 23.940470, 12.564715>,  <27.907028, 24.684830, 12.232359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716278, 23.940470, 12.564715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.431885, 24.177677, 12.715889>,  <27.261250, 24.320002, 12.806593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.431885, 24.177677, 12.715889>,  <27.716278, 23.940470, 12.564715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431885, 24.177677, 12.715889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695233, -0.512044, -0.504443,
		-0.105625, -0.621402, 0.776339,
		-0.710981, 0.593018, 0.377935,
		27.218590, 24.355583, 12.829269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281675, 23.547001, 12.943004>,  <27.716278, 23.940470, 12.564715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281675, 23.547001, 12.943004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.101048, 23.880266, 12.815303>,  <26.992670, 24.080225, 12.738683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.101048, 23.880266, 12.815303>,  <27.281675, 23.547001, 12.943004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101048, 23.880266, 12.815303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731801, -0.550554, -0.401694,
		-0.510442, 0.052234, 0.858324,
		-0.451572, 0.833164, -0.319250,
		26.965576, 24.130215, 12.719527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777256, 23.776571, 13.271080>,  <27.281675, 23.547001, 12.943004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777256, 23.776571, 13.271080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.740885, 23.887959, 12.888628>,  <26.719063, 23.954792, 12.659157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.740885, 23.887959, 12.888628>,  <26.777256, 23.776571, 13.271080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740885, 23.887959, 12.888628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878914, -0.473863, -0.054429,
		-0.468232, 0.835409, 0.287838,
		-0.090926, 0.278470, -0.956131,
		26.713608, 23.971500, 12.601789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192610, 24.183464, 13.098394>,  <26.777256, 23.776571, 13.271080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192610, 24.183464, 13.098394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.292467, 23.946106, 12.792307>,  <26.352381, 23.803692, 12.608654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.292467, 23.946106, 12.792307>,  <26.192610, 24.183464, 13.098394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292467, 23.946106, 12.792307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898352, -0.436891, 0.045715,
		-0.361444, 0.676024, -0.642145,
		0.249643, -0.593395, -0.765219,
		26.367359, 23.768087, 12.562741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.570705, 23.888063, 12.797054>,  <26.192610, 24.183464, 13.098394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.570705, 23.888063, 12.797054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.844721, 23.650978, 12.627628>,  <26.009130, 23.508726, 12.525972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.844721, 23.650978, 12.627628>,  <25.570705, 23.888063, 12.797054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.844721, 23.650978, 12.627628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683312, -0.724372, -0.091485,
		-0.252595, 0.352098, -0.901234,
		0.685040, -0.592715, -0.423566,
		26.050234, 23.473164, 12.500559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.327688, 23.660685, 12.108640>,  <25.570705, 23.888063, 12.797054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.327688, 23.660685, 12.108640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.589558, 23.401375, 12.264148>,  <25.746679, 23.245789, 12.357452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.589558, 23.401375, 12.264148>,  <25.327688, 23.660685, 12.108640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.589558, 23.401375, 12.264148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708769, -0.705221, 0.017576,
		0.262775, -0.287054, -0.921167,
		0.654672, -0.648277, 0.388770,
		25.785959, 23.206892, 12.380778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.332285, 22.968727, 11.652632>,  <25.327688, 23.660685, 12.108640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.332285, 22.968727, 11.652632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.456844, 22.855518, 12.015493>,  <25.531580, 22.787594, 12.233211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.456844, 22.855518, 12.015493>,  <25.332285, 22.968727, 11.652632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.456844, 22.855518, 12.015493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629967, -0.776189, -0.025915,
		0.711459, -0.563408, -0.419998,
		0.311397, -0.283023, 0.907155,
		25.550262, 22.770611, 12.287640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.499416, 22.244728, 11.639395>,  <25.332285, 22.968727, 11.652632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.499416, 22.244728, 11.639395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.428112, 22.343660, 12.020351>,  <25.385328, 22.403021, 12.248925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.428112, 22.343660, 12.020351>,  <25.499416, 22.244728, 11.639395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.428112, 22.343660, 12.020351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645183, -0.760173, 0.076653,
		0.742941, -0.600802, 0.295085,
		-0.178262, 0.247332, 0.952391,
		25.374634, 22.417860, 12.306068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.436089, 21.649345, 11.984645>,  <25.499416, 22.244728, 11.639395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.436089, 21.649345, 11.984645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.272356, 21.890259, 12.258784>,  <25.174116, 22.034807, 12.423268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.272356, 21.890259, 12.258784>,  <25.436089, 21.649345, 11.984645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.272356, 21.890259, 12.258784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589315, -0.747979, 0.305346,
		0.696531, -0.278898, 0.661106,
		-0.409333, 0.602282, 0.685349,
		25.149557, 22.070944, 12.464389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.277473, 21.197290, 12.626004>,  <25.436089, 21.649345, 11.984645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.277473, 21.197290, 12.626004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.059580, 21.529104, 12.675220>,  <24.928844, 21.728191, 12.704749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.059580, 21.529104, 12.675220>,  <25.277473, 21.197290, 12.626004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059580, 21.529104, 12.675220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805734, -0.558393, 0.197458,
		0.232502, 0.008426, 0.972559,
		-0.544734, 0.829534, 0.123039,
		24.896160, 21.777964, 12.712132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.891512, 21.033976, 13.137285>,  <25.277473, 21.197290, 12.626004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.891512, 21.033976, 13.137285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.686703, 21.336628, 12.974636>,  <24.563818, 21.518219, 12.877047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.686703, 21.336628, 12.974636>,  <24.891512, 21.033976, 13.137285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.686703, 21.336628, 12.974636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858969, -0.449618, 0.244984,
		0.002538, 0.474714, 0.880137,
		-0.512022, 0.756631, -0.406623,
		24.533096, 21.563618, 12.852649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.510994, 21.303709, 13.668690>,  <24.891512, 21.033976, 13.137285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.510994, 21.303709, 13.668690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.335135, 21.390301, 13.320013>,  <24.229620, 21.442255, 13.110806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.335135, 21.390301, 13.320013>,  <24.510994, 21.303709, 13.668690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.335135, 21.390301, 13.320013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817119, -0.499301, 0.288124,
		-0.372865, 0.838949, 0.396405,
		-0.439647, 0.216478, -0.871693,
		24.203241, 21.455244, 13.058505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.957539, 21.474186, 13.832647>,  <24.510994, 21.303709, 13.668690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.957539, 21.474186, 13.832647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.897812, 21.369177, 13.451326>,  <23.861975, 21.306171, 13.222534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.897812, 21.369177, 13.451326>,  <23.957539, 21.474186, 13.832647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.897812, 21.369177, 13.451326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809466, -0.521236, 0.270329,
		-0.567863, 0.812031, -0.134673,
		-0.149319, -0.262523, -0.953303,
		23.853016, 21.290421, 13.165336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.195286, 21.616724, 13.705036>,  <23.957539, 21.474186, 13.832647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.195286, 21.616724, 13.705036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.342583, 21.344135, 13.452056>,  <23.430962, 21.180582, 13.300268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.342583, 21.344135, 13.452056>,  <23.195286, 21.616724, 13.705036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.342583, 21.344135, 13.452056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776012, -0.599943, 0.194612,
		-0.512057, 0.419125, -0.749755,
		0.368243, -0.681472, -0.632451,
		23.453056, 21.139694, 13.262321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.620928, 21.313629, 13.552885>,  <23.195286, 21.616724, 13.705036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.620928, 21.313629, 13.552885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.884672, 21.066469, 13.381564>,  <23.042919, 20.918173, 13.278771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.884672, 21.066469, 13.381564>,  <22.620928, 21.313629, 13.552885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.884672, 21.066469, 13.381564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635785, -0.762323, 0.121000,
		-0.401270, 0.192524, -0.895498,
		0.659363, -0.617898, -0.428301,
		23.082481, 20.881100, 13.253074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.211044, 20.928061, 12.968600>,  <22.620928, 21.313629, 13.552885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.211044, 20.928061, 12.968600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.525742, 20.704136, 13.072635>,  <22.714560, 20.569780, 13.135056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.525742, 20.704136, 13.072635>,  <22.211044, 20.928061, 12.968600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.525742, 20.704136, 13.072635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605490, -0.781826, 0.148760,
		0.120064, -0.274515, -0.954058,
		0.786744, -0.559812, 0.260085,
		22.761765, 20.536192, 13.150661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.094997, 20.383364, 12.619467>,  <22.211044, 20.928061, 12.968600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.094997, 20.383364, 12.619467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.378767, 20.253368, 12.869618>,  <22.549028, 20.175371, 13.019710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.378767, 20.253368, 12.869618>,  <22.094997, 20.383364, 12.619467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.378767, 20.253368, 12.869618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350217, -0.932587, -0.087350,
		0.611607, -0.157050, -0.775417,
		0.709425, -0.324988, 0.625379,
		22.591595, 20.155872, 13.057232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.372322, 19.723616, 12.356695>,  <22.094997, 20.383364, 12.619467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.372322, 19.723616, 12.356695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.505072, 19.704960, 12.733562>,  <22.584723, 19.693766, 12.959683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.505072, 19.704960, 12.733562>,  <22.372322, 19.723616, 12.356695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.505072, 19.704960, 12.733562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318263, -0.945752, 0.065288,
		0.888013, -0.321525, -0.328717,
		0.331876, -0.046641, 0.942169,
		22.604635, 19.690968, 13.016213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.911417, 19.080439, 12.466527>,  <22.372322, 19.723616, 12.356695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.911417, 19.080439, 12.466527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.753916, 19.162331, 12.824978>,  <22.659414, 19.211466, 13.040049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.753916, 19.162331, 12.824978>,  <22.911417, 19.080439, 12.466527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.753916, 19.162331, 12.824978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159921, -0.975272, 0.152542,
		0.905198, -0.083246, 0.416758,
		-0.393754, 0.204730, 0.896127,
		22.635790, 19.223749, 13.093816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.104807, 18.558897, 12.888660>,  <22.911417, 19.080439, 12.466527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.104807, 18.558897, 12.888660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.791096, 18.706865, 13.087885>,  <22.602869, 18.795647, 13.207419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.791096, 18.706865, 13.087885>,  <23.104807, 18.558897, 12.888660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.791096, 18.706865, 13.087885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170723, -0.900484, 0.399977,
		0.596456, 0.228663, 0.769385,
		-0.784279, 0.369921, 0.498061,
		22.555813, 18.817842, 13.237303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.195782, 18.253798, 13.598867>,  <23.104807, 18.558897, 12.888660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.195782, 18.253798, 13.598867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.815022, 18.364338, 13.545922>,  <22.586565, 18.430662, 13.514155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.815022, 18.364338, 13.545922>,  <23.195782, 18.253798, 13.598867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.815022, 18.364338, 13.545922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301456, -0.922003, 0.242972,
		-0.054894, 0.271186, 0.960961,
		-0.951899, 0.276350, -0.132363,
		22.529451, 18.447243, 13.506213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.852123, 17.874239, 14.090576>,  <23.195782, 18.253798, 13.598867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.852123, 17.874239, 14.090576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.539431, 17.984274, 13.866710>,  <22.351816, 18.050295, 13.732390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.539431, 17.984274, 13.866710>,  <22.852123, 17.874239, 14.090576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.539431, 17.984274, 13.866710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425257, -0.891568, 0.155769,
		-0.456129, 0.359771, 0.813948,
		-0.781731, 0.275086, -0.559665,
		22.304911, 18.066799, 13.698811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.090034, 17.826191, 14.487754>,  <22.852123, 17.874239, 14.090576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.090034, 17.826191, 14.487754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.062471, 17.802374, 14.089417>,  <22.045933, 17.788084, 13.850414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.062471, 17.802374, 14.089417>,  <22.090034, 17.826191, 14.487754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.062471, 17.802374, 14.089417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371859, -0.924747, 0.081025,
		-0.925728, 0.375896, 0.041583,
		-0.068910, -0.059544, -0.995844,
		22.041798, 17.784512, 13.790663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.406483, 17.383286, 14.391029>,  <22.090034, 17.826191, 14.487754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.406483, 17.383286, 14.391029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.569304, 17.400082, 14.026053>,  <21.666996, 17.410160, 13.807068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.569304, 17.400082, 14.026053>,  <21.406483, 17.383286, 14.391029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.569304, 17.400082, 14.026053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377221, -0.902047, -0.209796,
		-0.831874, 0.429590, -0.351339,
		0.407051, 0.041991, -0.912440,
		21.691420, 17.412680, 13.752321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.867987, 17.182806, 13.889576>,  <21.406483, 17.383286, 14.391029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.867987, 17.182806, 13.889576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.214474, 17.116657, 13.700974>,  <21.422367, 17.076967, 13.587813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.214474, 17.116657, 13.700974>,  <20.867987, 17.182806, 13.889576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.214474, 17.116657, 13.700974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314871, -0.913363, -0.258116,
		-0.387968, 0.372048, -0.843244,
		0.866220, -0.165373, -0.471503,
		21.474340, 17.067045, 13.559524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.735943, 16.807854, 13.263029>,  <20.867987, 17.182806, 13.889576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.735943, 16.807854, 13.263029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.126295, 16.755728, 13.333088>,  <21.360506, 16.724453, 13.375123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.126295, 16.755728, 13.333088>,  <20.735943, 16.807854, 13.263029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.126295, 16.755728, 13.333088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137278, -0.990131, 0.028189,
		0.169746, -0.051553, -0.984138,
		0.975879, -0.130315, 0.175148,
		21.419060, 16.716633, 13.385633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.008654, 16.395695, 12.747406>,  <20.735943, 16.807854, 13.263029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.008654, 16.395695, 12.747406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.264725, 16.355337, 13.052035>,  <21.418367, 16.331123, 13.234813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.264725, 16.355337, 13.052035>,  <21.008654, 16.395695, 12.747406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.264725, 16.355337, 13.052035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081940, -0.994651, -0.062892,
		0.763846, -0.022141, -0.645019,
		0.640176, -0.100892, 0.761574,
		21.456778, 16.325069, 13.280508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.647257, 15.894833, 12.450239>,  <21.008654, 16.395695, 12.747406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.647257, 15.894833, 12.450239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.586700, 15.885145, 12.845510>,  <21.550365, 15.879333, 13.082672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.586700, 15.885145, 12.845510>,  <21.647257, 15.894833, 12.450239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.586700, 15.885145, 12.845510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190305, -0.981712, 0.005096,
		0.969982, 0.188826, 0.153232,
		-0.151391, -0.024218, 0.988177,
		21.541283, 15.877880, 13.141963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.022488, 15.316763, 12.700104>,  <21.647257, 15.894833, 12.450239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.022488, 15.316763, 12.700104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.777435, 15.339341, 13.015445>,  <21.630404, 15.352888, 13.204649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.777435, 15.339341, 13.015445>,  <22.022488, 15.316763, 12.700104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.777435, 15.339341, 13.015445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282129, -0.916118, 0.284837,
		0.738301, 0.396916, 0.545315,
		-0.612629, 0.056446, 0.788353,
		21.593647, 15.356275, 13.251950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.351933, 15.085677, 13.359291>,  <22.022488, 15.316763, 12.700104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.351933, 15.085677, 13.359291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.956575, 15.028327, 13.379397>,  <21.719362, 14.993917, 13.391461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.956575, 15.028327, 13.379397>,  <22.351933, 15.085677, 13.359291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.956575, 15.028327, 13.379397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148514, -0.981526, 0.120626,
		0.032043, 0.126691, 0.991425,
		-0.988391, -0.143375, 0.050267,
		21.660059, 14.985314, 13.394478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.373920, 14.654043, 13.930131>,  <22.351933, 15.085677, 13.359291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.373920, 14.654043, 13.930131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.037209, 14.614987, 13.717765>,  <21.835180, 14.591554, 13.590345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.037209, 14.614987, 13.717765>,  <22.373920, 14.654043, 13.930131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.037209, 14.614987, 13.717765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019521, -0.988369, 0.150818,
		-0.539465, 0.116592, 0.833897,
		-0.841782, -0.097639, -0.530914,
		21.784674, 14.585695, 13.558491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.003397, 14.860582, 13.517360>,  <22.373920, 14.654043, 13.930131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.003397, 14.860582, 13.517360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.301699, 14.727374, 13.286553>,  <23.480680, 14.647449, 13.148069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.301699, 14.727374, 13.286553>,  <23.003397, 14.860582, 13.517360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.301699, 14.727374, 13.286553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370988, 0.926976, -0.055520,
		0.553369, -0.172662, 0.814844,
		0.745755, -0.333021, -0.577016,
		23.525425, 14.627468, 13.113449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.569496, 15.246489, 13.785316>,  <23.003397, 14.860582, 13.517360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.569496, 15.246489, 13.785316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.695240, 15.122117, 13.426539>,  <23.770687, 15.047494, 13.211274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.695240, 15.122117, 13.426539>,  <23.569496, 15.246489, 13.785316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.695240, 15.122117, 13.426539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444997, 0.882866, -0.150086,
		0.838543, -0.351953, 0.415902,
		0.314362, -0.310929, -0.896939,
		23.789549, 15.028838, 13.157457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.270369, 15.416589, 13.749007>,  <23.569496, 15.246489, 13.785316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.270369, 15.416589, 13.749007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.175795, 15.394906, 13.360953>,  <24.119051, 15.381896, 13.128121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.175795, 15.394906, 13.360953>,  <24.270369, 15.416589, 13.749007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.175795, 15.394906, 13.360953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363704, 0.920919, -0.140095,
		0.901010, -0.385965, -0.198020,
		-0.236432, -0.054207, -0.970135,
		24.104864, 15.378644, 13.069913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.863293, 15.721094, 13.489363>,  <24.270369, 15.416589, 13.749007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.863293, 15.721094, 13.489363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.574341, 15.732905, 13.213017>,  <24.400970, 15.739992, 13.047209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.574341, 15.732905, 13.213017>,  <24.863293, 15.721094, 13.489363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.574341, 15.732905, 13.213017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342498, 0.883208, -0.320373,
		0.600719, -0.468052, -0.648124,
		-0.722380, 0.029527, -0.690866,
		24.357628, 15.741763, 13.005756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.162708, 15.676456, 12.807051>,  <24.863293, 15.721094, 13.489363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.162708, 15.676456, 12.807051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.802557, 15.844236, 12.760778>,  <24.586466, 15.944904, 12.733015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.802557, 15.844236, 12.760778>,  <25.162708, 15.676456, 12.807051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.802557, 15.844236, 12.760778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421932, 0.776757, -0.467570,
		-0.106266, -0.469799, -0.876354,
		-0.900378, 0.419449, -0.115681,
		24.532444, 15.970071, 12.726074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.103088, 15.875238, 12.137439>,  <25.162708, 15.676456, 12.807051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.103088, 15.875238, 12.137439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.830160, 16.105371, 12.317851>,  <24.666403, 16.243452, 12.426099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.830160, 16.105371, 12.317851>,  <25.103088, 15.875238, 12.137439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.830160, 16.105371, 12.317851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332485, 0.793683, -0.509431,
		-0.651068, -0.197635, -0.732837,
		-0.682322, 0.575332, 0.451031,
		24.625463, 16.277971, 12.453160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.054396, 16.413242, 11.713481>,  <25.103088, 15.875238, 12.137439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.054396, 16.413242, 11.713481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.823217, 16.563629, 12.003206>,  <24.684511, 16.653862, 12.177041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.823217, 16.563629, 12.003206>,  <25.054396, 16.413242, 11.713481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.823217, 16.563629, 12.003206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277377, 0.925214, -0.258924,
		-0.767492, 0.051264, -0.639006,
		-0.577943, 0.375968, 0.724313,
		24.649834, 16.676420, 12.220500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.558229, 16.892832, 11.410756>,  <25.054396, 16.413242, 11.713481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.558229, 16.892832, 11.410756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.570234, 16.984165, 11.800004>,  <24.577436, 17.038965, 12.033553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.570234, 16.984165, 11.800004>,  <24.558229, 16.892832, 11.410756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.570234, 16.984165, 11.800004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062649, 0.971215, -0.229819,
		-0.997584, 0.067862, 0.014844,
		0.030012, 0.228334, 0.973120,
		24.579237, 17.052666, 12.091940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.151628, 17.522354, 11.513468>,  <24.558229, 16.892832, 11.410756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.151628, 17.522354, 11.513468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.403637, 17.495808, 11.822963>,  <24.554842, 17.479879, 12.008659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.403637, 17.495808, 11.822963>,  <24.151628, 17.522354, 11.513468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.403637, 17.495808, 11.822963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072239, 0.997030, 0.026698,
		-0.773211, 0.039074, 0.632943,
		0.630020, -0.066367, 0.773738,
		24.592644, 17.475897, 12.055084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.173161, 18.160780, 11.847157>,  <24.151628, 17.522354, 11.513468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.173161, 18.160780, 11.847157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.523912, 18.006983, 11.962570>,  <24.734364, 17.914705, 12.031818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.523912, 18.006983, 11.962570>,  <24.173161, 18.160780, 11.847157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.523912, 18.006983, 11.962570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450728, 0.866277, -0.215426,
		-0.167122, 0.318953, 0.932920,
		0.876878, -0.384491, 0.288535,
		24.786976, 17.891636, 12.049130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.554165, 18.748703, 12.290118>,  <24.173161, 18.160780, 11.847157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.554165, 18.748703, 12.290118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.850111, 18.503439, 12.179385>,  <25.027678, 18.356281, 12.112946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.850111, 18.503439, 12.179385>,  <24.554165, 18.748703, 12.290118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.850111, 18.503439, 12.179385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520826, 0.782503, -0.341218,
		0.425844, 0.108274, 0.898295,
		0.739863, -0.613161, -0.276832,
		25.072069, 18.319490, 12.096335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.318592, 19.073936, 12.382642>,  <24.554165, 18.748703, 12.290118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.318592, 19.073936, 12.382642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.396002, 18.777185, 12.125840>,  <25.442448, 18.599134, 11.971760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.396002, 18.777185, 12.125840>,  <25.318592, 19.073936, 12.382642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396002, 18.777185, 12.125840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510892, 0.634854, -0.579612,
		0.837579, -0.215824, 0.501878,
		0.193525, -0.741876, -0.642003,
		25.454060, 18.554623, 11.933239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.924028, 19.274893, 12.200070>,  <25.318592, 19.073936, 12.382642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.924028, 19.274893, 12.200070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.857021, 19.018808, 11.900187>,  <25.816816, 18.865158, 11.720256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.857021, 19.018808, 11.900187>,  <25.924028, 19.274893, 12.200070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857021, 19.018808, 11.900187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362645, 0.667123, -0.650719,
		0.916747, -0.380886, 0.120414,
		-0.167519, -0.640212, -0.749710,
		25.806767, 18.826744, 11.675274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563282, 19.147171, 11.855258>,  <25.924028, 19.274893, 12.200070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563282, 19.147171, 11.855258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.285383, 19.050049, 11.584445>,  <26.118645, 18.991776, 11.421957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.285383, 19.050049, 11.584445>,  <26.563282, 19.147171, 11.855258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285383, 19.050049, 11.584445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523860, 0.474174, -0.707623,
		0.492853, -0.846286, -0.202227,
		-0.694742, -0.242815, -0.677034,
		26.076960, 18.977207, 11.381335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971279, 19.167505, 11.277764>,  <26.563282, 19.147171, 11.855258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971279, 19.167505, 11.277764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.594292, 19.178671, 11.144513>,  <26.368099, 19.185369, 11.064562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.594292, 19.178671, 11.144513>,  <26.971279, 19.167505, 11.277764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594292, 19.178671, 11.144513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288557, 0.571062, -0.768519,
		0.168785, -0.820432, -0.546263,
		-0.942468, 0.027914, -0.333128,
		26.311552, 19.187044, 11.044575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030600, 18.959988, 10.658245>,  <26.971279, 19.167505, 11.277764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030600, 18.959988, 10.658245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.686411, 19.163141, 10.642038>,  <26.479898, 19.285034, 10.632315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.686411, 19.163141, 10.642038>,  <27.030600, 18.959988, 10.658245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686411, 19.163141, 10.642038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354295, 0.539311, -0.763950,
		-0.366149, -0.671711, -0.644003,
		-0.860471, 0.507886, -0.040516,
		26.428270, 19.315508, 10.629884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655924, 18.803322, 9.922948>,  <27.030600, 18.959988, 10.658245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655924, 18.803322, 9.922948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.562939, 19.154011, 10.091384>,  <26.507149, 19.364424, 10.192446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.562939, 19.154011, 10.091384>,  <26.655924, 18.803322, 9.922948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562939, 19.154011, 10.091384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317465, 0.477634, -0.819196,
		-0.919335, -0.056751, -0.389361,
		-0.232462, 0.876724, 0.421089,
		26.493200, 19.417028, 10.217710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.924017, 18.410206, 19.240011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.660770, 18.130596, 19.351904>,  <15.502823, 17.962831, 19.419039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.660770, 18.130596, 19.351904>,  <15.924017, 18.410206, 19.240011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.660770, 18.130596, 19.351904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519858, -0.690632, -0.502768,
		0.544639, -0.185459, 0.817908,
		-0.658116, -0.699023, 0.279733,
		15.463336, 17.920889, 19.435823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.370665, 17.796274, 19.435564>,  <15.924017, 18.410206, 19.240011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.370665, 17.796274, 19.435564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.000341, 17.682775, 19.335667>,  <15.778148, 17.614677, 19.275728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.000341, 17.682775, 19.335667>,  <16.370665, 17.796274, 19.435564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.000341, 17.682775, 19.335667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372430, -0.797709, -0.474296,
		-0.064642, -0.532118, 0.844199,
		-0.925806, -0.283746, -0.249743,
		15.722600, 17.597652, 19.260744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.375202, 17.010979, 19.318771>,  <16.370665, 17.796274, 19.435564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.375202, 17.010979, 19.318771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.049101, 17.139154, 19.125824>,  <15.853440, 17.216061, 19.010056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.049101, 17.139154, 19.125824>,  <16.375202, 17.010979, 19.318771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.049101, 17.139154, 19.125824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176468, -0.655879, -0.733949,
		-0.551561, -0.683478, 0.478162,
		-0.815255, 0.320437, -0.482369,
		15.804525, 17.235287, 18.981113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029598, 16.395782, 19.029697>,  <16.375202, 17.010979, 19.318771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.029598, 16.395782, 19.029697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.890563, 16.701933, 18.813038>,  <15.807142, 16.885622, 18.683043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.890563, 16.701933, 18.813038>,  <16.029598, 16.395782, 19.029697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.890563, 16.701933, 18.813038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030599, -0.568102, -0.822389,
		-0.937149, -0.302425, 0.174045,
		-0.347586, 0.765375, -0.541650,
		15.786287, 16.931545, 18.650543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.742373, 16.048740, 18.536623>,  <16.029598, 16.395782, 19.029697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.742373, 16.048740, 18.536623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.742879, 16.407978, 18.360704>,  <15.743182, 16.623522, 18.255154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.742879, 16.407978, 18.360704>,  <15.742373, 16.048740, 18.536623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.742879, 16.407978, 18.360704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153229, -0.434779, -0.887405,
		-0.988190, -0.066269, -0.138163,
		0.001263, 0.898096, -0.439798,
		15.743258, 16.677406, 18.228765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.370410, 15.962778, 17.877783>,  <15.742373, 16.048740, 18.536623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.370410, 15.962778, 17.877783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.551722, 16.301785, 17.767324>,  <15.660509, 16.505188, 17.701050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.551722, 16.301785, 17.767324>,  <15.370410, 15.962778, 17.877783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.551722, 16.301785, 17.767324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058787, -0.337548, -0.939471,
		-0.889428, 0.409609, -0.202826,
		0.453279, 0.847515, -0.276145,
		15.687705, 16.556040, 17.684481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.197789, 16.033596, 17.229780>,  <15.370410, 15.962778, 17.877783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.197789, 16.033596, 17.229780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.479565, 16.317375, 17.238304>,  <15.648630, 16.487642, 17.243418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.479565, 16.317375, 17.238304>,  <15.197789, 16.033596, 17.229780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.479565, 16.317375, 17.238304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223688, -0.193416, -0.955277,
		-0.673596, 0.677700, -0.294944,
		0.704437, 0.709446, 0.021309,
		15.690896, 16.530209, 17.244698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.185225, 16.515032, 16.598801>,  <15.197789, 16.033596, 17.229780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.185225, 16.515032, 16.598801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549413, 16.542559, 16.761927>,  <15.767925, 16.559074, 16.859802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549413, 16.542559, 16.761927>,  <15.185225, 16.515032, 16.598801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.549413, 16.542559, 16.761927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401014, 0.094344, -0.911201,
		-0.101180, 0.993158, 0.058301,
		0.910467, 0.068816, 0.407816,
		15.822553, 16.563204, 16.884272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.453458, 17.061296, 16.309128>,  <15.185225, 16.515032, 16.598801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.453458, 17.061296, 16.309128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.748611, 16.816458, 16.422874>,  <15.925704, 16.669554, 16.491121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.748611, 16.816458, 16.422874>,  <15.453458, 17.061296, 16.309128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.748611, 16.816458, 16.422874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506040, 0.222948, -0.833197,
		0.446599, 0.758703, 0.474256,
		0.737884, -0.612098, 0.284366,
		15.969976, 16.632828, 16.508184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.045153, 17.362574, 15.926666>,  <15.453458, 17.061296, 16.309128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.045153, 17.362574, 15.926666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.157125, 16.991680, 16.026165>,  <16.224310, 16.769144, 16.085865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.157125, 16.991680, 16.026165>,  <16.045153, 17.362574, 15.926666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.157125, 16.991680, 16.026165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535571, -0.064203, -0.842046,
		0.796743, 0.368939, 0.478627,
		0.279934, -0.927233, 0.248747,
		16.241106, 16.713511, 16.100788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.770920, 17.313847, 15.683767>,  <16.045153, 17.362574, 15.926666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.770920, 17.313847, 15.683767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.605482, 16.951414, 15.719452>,  <16.506220, 16.733955, 15.740863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.605482, 16.951414, 15.719452>,  <16.770920, 17.313847, 15.683767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.605482, 16.951414, 15.719452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456779, -0.291262, -0.840547,
		0.787588, -0.306893, 0.534343,
		-0.413592, -0.906081, 0.089212,
		16.481405, 16.679590, 15.746216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.375065, 16.784462, 15.551250>,  <16.770920, 17.313847, 15.683767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.375065, 16.784462, 15.551250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.033712, 16.581526, 15.503337>,  <16.828901, 16.459764, 15.474588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.033712, 16.581526, 15.503337>,  <17.375065, 16.784462, 15.551250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.033712, 16.581526, 15.503337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362249, -0.411917, -0.836122,
		0.374856, -0.756922, 0.535305,
		-0.853381, -0.507339, -0.119785,
		16.777699, 16.429325, 15.467402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.499338, 16.069332, 15.568796>,  <17.375065, 16.784462, 15.551250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.499338, 16.069332, 15.568796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.386732, 16.111212, 15.187265>,  <17.319168, 16.136339, 14.958346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.386732, 16.111212, 15.187265>,  <17.499338, 16.069332, 15.568796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.386732, 16.111212, 15.187265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936114, -0.188416, -0.296968,
		-0.210808, -0.976493, -0.044967,
		-0.281515, 0.104697, -0.953828,
		17.302279, 16.142620, 14.901117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.881468, 15.418117, 15.270651>,  <17.499338, 16.069332, 15.568796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.881468, 15.418117, 15.270651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.784885, 15.658429, 14.965820>,  <17.726936, 15.802617, 14.782922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.784885, 15.658429, 14.965820>,  <17.881468, 15.418117, 15.270651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.784885, 15.658429, 14.965820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930082, -0.080770, -0.358363,
		-0.276851, -0.795322, -0.539274,
		-0.241457, 0.600782, -0.762076,
		17.712448, 15.838664, 14.737198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.616631, 15.310522, 15.006433>,  <17.881468, 15.418117, 15.270651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.616631, 15.310522, 15.006433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.888988, 15.032960, 15.100135>,  <19.052404, 14.866423, 15.156356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.888988, 15.032960, 15.100135>,  <18.616631, 15.310522, 15.006433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.888988, 15.032960, 15.100135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563077, -0.291463, 0.773301,
		-0.468322, -0.658440, -0.589178,
		0.680896, -0.693906, 0.234254,
		19.093258, 14.824788, 15.170411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.291496, 14.695458, 15.138462>,  <18.616631, 15.310522, 15.006433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.291496, 14.695458, 15.138462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.643019, 14.664460, 15.326798>,  <18.853933, 14.645862, 15.439800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.643019, 14.664460, 15.326798>,  <18.291496, 14.695458, 15.138462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.643019, 14.664460, 15.326798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471000, -0.299099, 0.829879,
		0.076518, -0.951070, -0.299350,
		0.878809, -0.077494, 0.470840,
		18.906662, 14.641212, 15.468050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.312677, 14.035954, 15.412263>,  <18.291496, 14.695458, 15.138462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.312677, 14.035954, 15.412263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.586164, 14.240339, 15.620667>,  <18.750256, 14.362970, 15.745708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.586164, 14.240339, 15.620667>,  <18.312677, 14.035954, 15.412263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.586164, 14.240339, 15.620667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502459, -0.188136, 0.843884,
		0.529215, -0.838761, 0.128107,
		0.683715, 0.510964, 0.521008,
		18.791279, 14.393628, 15.776969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.399761, 13.678242, 15.952812>,  <18.312677, 14.035954, 15.412263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.399761, 13.678242, 15.952812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.585627, 13.998773, 16.103523>,  <18.697145, 14.191092, 16.193951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.585627, 13.998773, 16.103523>,  <18.399761, 13.678242, 15.952812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.585627, 13.998773, 16.103523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353501, -0.222255, 0.908647,
		0.811866, -0.555406, 0.179996,
		0.464663, 0.801329, 0.376778,
		18.725025, 14.239171, 16.216557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.647266, 13.465863, 16.533779>,  <18.399761, 13.678242, 15.952812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.647266, 13.465863, 16.533779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.657345, 13.860216, 16.599991>,  <18.663391, 14.096828, 16.639719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.657345, 13.860216, 16.599991>,  <18.647266, 13.465863, 16.533779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.657345, 13.860216, 16.599991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375780, -0.144099, 0.915437,
		0.926366, -0.085268, 0.366844,
		0.025196, 0.985883, 0.165531,
		18.664904, 14.155981, 16.649651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.984741, 13.544699, 17.154547>,  <18.647266, 13.465863, 16.533779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.984741, 13.544699, 17.154547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.744064, 13.855256, 17.079521>,  <18.599659, 14.041591, 17.034506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.744064, 13.855256, 17.079521>,  <18.984741, 13.544699, 17.154547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.744064, 13.855256, 17.079521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383737, -0.075037, 0.920389,
		0.700510, 0.625765, 0.343081,
		-0.601691, 0.776394, -0.187565,
		18.563557, 14.088174, 17.023252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.218393, 14.074384, 17.634760>,  <18.984741, 13.544699, 17.154547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.218393, 14.074384, 17.634760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.843256, 14.161973, 17.527058>,  <18.618174, 14.214527, 17.462437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.843256, 14.161973, 17.527058>,  <19.218393, 14.074384, 17.634760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.843256, 14.161973, 17.527058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195742, 0.306914, 0.931391,
		0.286588, 0.926204, -0.244975,
		-0.937844, 0.218974, -0.269255,
		18.561903, 14.227665, 17.446281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.028887, 14.785816, 17.914883>,  <19.218393, 14.074384, 17.634760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.028887, 14.785816, 17.914883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.672718, 14.611241, 17.863237>,  <18.459017, 14.506496, 17.832251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.672718, 14.611241, 17.863237>,  <19.028887, 14.785816, 17.914883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.672718, 14.611241, 17.863237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232186, 0.191596, 0.953615,
		-0.391456, 0.879098, -0.271935,
		-0.890423, -0.436437, -0.129113,
		18.405592, 14.480310, 17.824503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.729435, 15.050919, 18.445963>,  <19.028887, 14.785816, 17.914883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.729435, 15.050919, 18.445963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.441254, 14.808892, 18.310410>,  <18.268345, 14.663676, 18.229078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.441254, 14.808892, 18.310410>,  <18.729435, 15.050919, 18.445963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.441254, 14.808892, 18.310410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491804, 0.101243, 0.864800,
		-0.488951, 0.789713, -0.370515,
		-0.720455, -0.605065, -0.338881,
		18.225117, 14.627373, 18.208746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.045174, 15.478854, 18.368460>,  <18.729435, 15.050919, 18.445963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.045174, 15.478854, 18.368460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.984167, 15.087360, 18.423328>,  <17.947563, 14.852464, 18.456249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.984167, 15.087360, 18.423328>,  <18.045174, 15.478854, 18.368460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.984167, 15.087360, 18.423328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595377, 0.201772, 0.777698,
		-0.788838, 0.036943, -0.613490,
		-0.152516, -0.978735, 0.137170,
		17.938412, 14.793739, 18.464479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.303349, 15.424150, 18.515308>,  <18.045174, 15.478854, 18.368460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.303349, 15.424150, 18.515308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.450426, 15.073544, 18.639578>,  <17.538673, 14.863179, 18.714140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.450426, 15.073544, 18.639578>,  <17.303349, 15.424150, 18.515308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.450426, 15.073544, 18.639578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603848, 0.029025, 0.796571,
		-0.707225, -0.480494, -0.518611,
		0.367695, -0.876517, 0.310672,
		17.560734, 14.810588, 18.732780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.749235, 15.159004, 18.781530>,  <17.303349, 15.424150, 18.515308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.749235, 15.159004, 18.781530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.047102, 14.949223, 18.946659>,  <17.225822, 14.823353, 19.045736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.047102, 14.949223, 18.946659>,  <16.749235, 15.159004, 18.781530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.047102, 14.949223, 18.946659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524514, -0.077346, 0.847881,
		-0.412746, -0.847917, -0.332681,
		0.744665, -0.524456, 0.412820,
		17.270502, 14.791886, 19.070505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.435368, 14.643020, 19.206985>,  <16.749235, 15.159004, 18.781530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.435368, 14.643020, 19.206985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.801373, 14.704453, 19.356203>,  <17.020975, 14.741312, 19.445734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.801373, 14.704453, 19.356203>,  <16.435368, 14.643020, 19.206985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.801373, 14.704453, 19.356203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370400, -0.046574, 0.927704,
		0.159853, -0.987038, 0.014271,
		0.915014, 0.153582, 0.373044,
		17.075876, 14.750527, 19.468117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.406065, 14.263933, 19.896070>,  <16.435368, 14.643020, 19.206985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.406065, 14.263933, 19.896070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.739256, 14.484659, 19.912292>,  <16.939171, 14.617095, 19.922026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.739256, 14.484659, 19.912292>,  <16.406065, 14.263933, 19.896070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.739256, 14.484659, 19.912292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121747, 0.111290, 0.986302,
		0.539744, -0.826507, 0.159884,
		0.832979, 0.551817, 0.040557,
		16.989149, 14.650204, 19.924459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.724560, 13.491884, 19.789526>,  <16.406065, 14.263933, 19.896070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.724560, 13.491884, 19.789526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.466185, 13.188039, 19.819855>,  <16.311159, 13.005732, 19.838051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.466185, 13.188039, 19.819855>,  <16.724560, 13.491884, 19.789526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.466185, 13.188039, 19.819855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225216, -0.284523, -0.931839,
		0.729411, -0.584835, 0.354862,
		-0.645939, -0.759615, 0.075820,
		16.272404, 12.960155, 19.842600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.127750, 12.893417, 19.745409>,  <16.724560, 13.491884, 19.789526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.127750, 12.893417, 19.745409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.751034, 12.808819, 19.640875>,  <16.525003, 12.758060, 19.578154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.751034, 12.808819, 19.640875>,  <17.127750, 12.893417, 19.745409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.751034, 12.808819, 19.640875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331418, -0.453464, -0.827365,
		0.056479, -0.865817, 0.497163,
		-0.941792, -0.211497, -0.261336,
		16.468496, 12.745370, 19.562473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.183384, 12.268998, 19.451666>,  <17.127750, 12.893417, 19.745409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.183384, 12.268998, 19.451666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.821939, 12.359348, 19.306082>,  <16.605072, 12.413558, 19.218731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.821939, 12.359348, 19.306082>,  <17.183384, 12.268998, 19.451666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.821939, 12.359348, 19.306082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251596, -0.407798, -0.877724,
		-0.346674, -0.884694, 0.311664,
		-0.903613, 0.225871, -0.363958,
		16.550856, 12.427111, 19.196894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.995272, 11.813756, 18.889803>,  <17.183384, 12.268998, 19.451666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.995272, 11.813756, 18.889803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.716770, 12.090687, 18.813999>,  <16.549669, 12.256845, 18.768517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.716770, 12.090687, 18.813999>,  <16.995272, 11.813756, 18.889803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.716770, 12.090687, 18.813999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091054, -0.176698, -0.980044,
		-0.711997, -0.699615, 0.059987,
		-0.696254, 0.692327, -0.189511,
		16.507895, 12.298385, 18.757145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.505558, 11.523973, 18.376638>,  <16.995272, 11.813756, 18.889803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.505558, 11.523973, 18.376638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433317, 11.914577, 18.329618>,  <16.389973, 12.148938, 18.301407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433317, 11.914577, 18.329618>,  <16.505558, 11.523973, 18.376638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.433317, 11.914577, 18.329618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025316, -0.124089, -0.991948,
		-0.983230, -0.176174, 0.047132,
		-0.180604, 0.976507, -0.117548,
		16.379135, 12.207528, 18.294353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.877745, 11.587246, 17.934366>,  <16.505558, 11.523973, 18.376638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.877745, 11.587246, 17.934366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.109890, 11.909287, 17.885399>,  <16.249178, 12.102512, 17.856018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.109890, 11.909287, 17.885399>,  <15.877745, 11.587246, 17.934366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.109890, 11.909287, 17.885399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183008, -0.017537, -0.982955,
		-0.793528, 0.592874, 0.137163,
		0.580362, 0.805104, -0.122417,
		16.283998, 12.150819, 17.848673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.443067, 11.931507, 17.482653>,  <15.877745, 11.587246, 17.934366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.443067, 11.931507, 17.482653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.801629, 12.105461, 17.448400>,  <16.016766, 12.209833, 17.427849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.801629, 12.105461, 17.448400>,  <15.443067, 11.931507, 17.482653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.801629, 12.105461, 17.448400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072563, -0.046597, -0.996275,
		-0.437255, 0.899280, -0.010213,
		0.896406, 0.434885, -0.085629,
		16.070551, 12.235927, 17.422712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.310640, 12.566390, 17.136547>,  <15.443067, 11.931507, 17.482653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.310640, 12.566390, 17.136547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.689147, 12.440460, 17.106972>,  <15.916251, 12.364902, 17.089226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.689147, 12.440460, 17.106972>,  <15.310640, 12.566390, 17.136547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.689147, 12.440460, 17.106972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086434, -0.025893, -0.995921,
		0.311626, 0.948797, -0.051713,
		0.946266, -0.314825, -0.073939,
		15.973026, 12.346013, 17.084789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.513397, 12.694307, 16.466038>,  <15.310640, 12.566390, 17.136547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.513397, 12.694307, 16.466038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.849252, 12.502108, 16.567337>,  <16.050764, 12.386788, 16.628117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.849252, 12.502108, 16.567337>,  <15.513397, 12.694307, 16.466038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.849252, 12.502108, 16.567337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167020, -0.215255, -0.962169,
		0.516833, 0.850168, -0.100483,
		0.839635, -0.480498, 0.253246,
		16.101143, 12.357958, 16.643311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.911682, 12.844439, 15.941381>,  <15.513397, 12.694307, 16.466038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.911682, 12.844439, 15.941381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.104124, 12.533988, 16.104435>,  <16.219589, 12.347717, 16.202267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.104124, 12.533988, 16.104435>,  <15.911682, 12.844439, 15.941381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.104124, 12.533988, 16.104435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236447, -0.332873, -0.912846,
		0.844175, 0.535558, 0.023366,
		0.481104, -0.776127, 0.407634,
		16.248455, 12.301149, 16.226725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.609907, 12.793983, 15.703236>,  <15.911682, 12.844439, 15.941381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.609907, 12.793983, 15.703236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.507944, 12.423925, 15.815753>,  <16.446766, 12.201890, 15.883264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.507944, 12.423925, 15.815753>,  <16.609907, 12.793983, 15.703236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.507944, 12.423925, 15.815753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248946, -0.343885, -0.905411,
		0.934370, -0.160771, 0.317970,
		-0.254909, -0.925146, 0.281293,
		16.431471, 12.146381, 15.900141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.180422, 12.445224, 15.512718>,  <16.609907, 12.793983, 15.703236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.180422, 12.445224, 15.512718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.858522, 12.210835, 15.550696>,  <16.665382, 12.070201, 15.573483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.858522, 12.210835, 15.550696>,  <17.180422, 12.445224, 15.512718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.858522, 12.210835, 15.550696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148694, -0.353831, -0.923414,
		0.574690, -0.728999, 0.371876,
		-0.804749, -0.585973, 0.094946,
		16.617098, 12.035043, 15.579180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<13.609565, 13.638748, 24.305147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.929718, 13.786394, 24.494099>,  <14.121810, 13.874982, 24.607470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.929718, 13.786394, 24.494099>,  <13.609565, 13.638748, 24.305147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.929718, 13.786394, 24.494099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599037, -0.461873, -0.654086,
		-0.023254, 0.806491, -0.590789,
		0.800384, 0.369114, 0.472378,
		14.169833, 13.897128, 24.635813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.031764, 14.002312, 23.727510>,  <13.609565, 13.638748, 24.305147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.031764, 14.002312, 23.727510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.266099, 13.898207, 24.034512>,  <14.406700, 13.835744, 24.218712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.266099, 13.898207, 24.034512>,  <14.031764, 14.002312, 23.727510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.266099, 13.898207, 24.034512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756967, -0.162540, -0.632915,
		0.289473, 0.951759, 0.101788,
		0.585837, -0.260262, 0.767501,
		14.441851, 13.820128, 24.264763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.632252, 14.377192, 23.694000>,  <14.031764, 14.002312, 23.727510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.632252, 14.377192, 23.694000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.725656, 14.046257, 23.898348>,  <14.781698, 13.847696, 24.020956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.725656, 14.046257, 23.898348>,  <14.632252, 14.377192, 23.694000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.725656, 14.046257, 23.898348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708764, -0.214861, -0.671928,
		0.665677, 0.518986, 0.536215,
		0.233510, -0.827338, 0.510867,
		14.795709, 13.798056, 24.051609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.349797, 14.375379, 23.597038>,  <14.632252, 14.377192, 23.694000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.349797, 14.375379, 23.597038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.216880, 14.009239, 23.688005>,  <15.137129, 13.789556, 23.742586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.216880, 14.009239, 23.688005>,  <15.349797, 14.375379, 23.597038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.216880, 14.009239, 23.688005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426694, -0.360927, -0.829255,
		0.841138, -0.178520, 0.510507,
		-0.332294, -0.915348, 0.227416,
		15.117191, 13.734634, 23.756229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.923473, 13.909125, 23.506813>,  <15.349797, 14.375379, 23.597038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.923473, 13.909125, 23.506813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.611691, 13.658716, 23.516161>,  <15.424623, 13.508471, 23.521769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.611691, 13.658716, 23.516161>,  <15.923473, 13.909125, 23.506813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.611691, 13.658716, 23.516161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411480, -0.539744, -0.734412,
		0.472371, -0.562825, 0.678302,
		-0.779455, -0.626023, 0.023368,
		15.377855, 13.470909, 23.523170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.197823, 13.383975, 23.279570>,  <15.923473, 13.909125, 23.506813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.197823, 13.383975, 23.279570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.816702, 13.263357, 23.265505>,  <15.588029, 13.190987, 23.257067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.816702, 13.263357, 23.265505>,  <16.197823, 13.383975, 23.279570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.816702, 13.263357, 23.265505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191341, -0.506557, -0.840707,
		0.235700, -0.807757, 0.540347,
		-0.952803, -0.301546, -0.035162,
		15.530861, 13.172894, 23.254957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.110895, 12.545757, 23.261221>,  <16.197823, 13.383975, 23.279570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.110895, 12.545757, 23.261221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.783995, 12.717457, 23.107418>,  <15.587854, 12.820477, 23.015137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.783995, 12.717457, 23.107418>,  <16.110895, 12.545757, 23.261221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.783995, 12.717457, 23.107418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229917, -0.368953, -0.900562,
		-0.528431, -0.824390, 0.202835,
		-0.817251, 0.429249, -0.384508,
		15.538819, 12.846231, 22.992065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.685676, 12.030706, 22.819593>,  <16.110895, 12.545757, 23.261221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.685676, 12.030706, 22.819593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.571493, 12.392742, 22.693527>,  <15.502983, 12.609963, 22.617887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.571493, 12.392742, 22.693527>,  <15.685676, 12.030706, 22.819593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.571493, 12.392742, 22.693527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022389, -0.322459, -0.946319,
		-0.958130, -0.277189, 0.071784,
		-0.285457, 0.905089, -0.315163,
		15.485856, 12.664268, 22.598978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.239406, 11.859652, 22.417410>,  <15.685676, 12.030706, 22.819593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.239406, 11.859652, 22.417410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.331989, 12.232766, 22.306894>,  <15.387540, 12.456635, 22.240585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.331989, 12.232766, 22.306894>,  <15.239406, 11.859652, 22.417410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.331989, 12.232766, 22.306894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018117, -0.288083, -0.957434,
		-0.972676, 0.216602, -0.083579,
		0.231460, 0.932787, -0.276287,
		15.401427, 12.512602, 22.224009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.030777, 11.949952, 21.748850>,  <15.239406, 11.859652, 22.417410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.030777, 11.949952, 21.748850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.290296, 12.250826, 21.794945>,  <15.446007, 12.431351, 21.822601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.290296, 12.250826, 21.794945>,  <15.030777, 11.949952, 21.748850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.290296, 12.250826, 21.794945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309409, -0.122409, -0.943018,
		-0.695218, 0.647482, -0.312151,
		0.648797, 0.752185, 0.115236,
		15.484935, 12.476481, 21.829515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.007395, 12.346798, 21.088079>,  <15.030777, 11.949952, 21.748850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.007395, 12.346798, 21.088079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.358892, 12.458526, 21.242889>,  <15.569791, 12.525562, 21.335775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.358892, 12.458526, 21.242889>,  <15.007395, 12.346798, 21.088079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.358892, 12.458526, 21.242889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343351, 0.193312, -0.919098,
		-0.331539, 0.940538, 0.073967,
		0.878745, 0.279320, 0.387025,
		15.622516, 12.542322, 21.358997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.086052, 13.039112, 20.868982>,  <15.007395, 12.346798, 21.088079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.086052, 13.039112, 20.868982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.446655, 12.882699, 20.943144>,  <15.663017, 12.788851, 20.987640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.446655, 12.882699, 20.943144>,  <15.086052, 13.039112, 20.868982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.446655, 12.882699, 20.943144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235143, 0.082943, -0.968415,
		0.363305, 0.916631, 0.166722,
		0.901508, -0.391034, 0.185406,
		15.717108, 12.765388, 20.998766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.476104, 13.445299, 20.523088>,  <15.086052, 13.039112, 20.868982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.476104, 13.445299, 20.523088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.739806, 13.151470, 20.587318>,  <15.898027, 12.975173, 20.625856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.739806, 13.151470, 20.587318>,  <15.476104, 13.445299, 20.523088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.739806, 13.151470, 20.587318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370498, 0.131516, -0.919475,
		0.654303, 0.665663, 0.358860,
		0.659256, -0.734573, 0.160576,
		15.937583, 12.931098, 20.635490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.184839, 13.716361, 20.337057>,  <15.476104, 13.445299, 20.523088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.184839, 13.716361, 20.337057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.167408, 13.317374, 20.314566>,  <16.156948, 13.077982, 20.301071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.167408, 13.317374, 20.314566>,  <16.184839, 13.716361, 20.337057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.167408, 13.317374, 20.314566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202494, 0.046294, -0.978189,
		0.978313, -0.054015, 0.199964,
		-0.043580, -0.997466, -0.056228,
		16.154333, 13.018134, 20.297697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.727299, 14.168101, 20.545038>,  <16.184839, 13.716361, 20.337057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.727299, 14.168101, 20.545038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.931089, 14.499013, 20.450346>,  <17.053364, 14.697560, 20.393530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.931089, 14.499013, 20.450346>,  <16.727299, 14.168101, 20.545038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.931089, 14.499013, 20.450346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030444, 0.292272, 0.955850,
		0.859945, -0.479777, 0.174092,
		0.509477, 0.827279, -0.236732,
		17.083933, 14.747196, 20.379326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.269890, 14.213413, 21.013641>,  <16.727299, 14.168101, 20.545038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.269890, 14.213413, 21.013641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.218666, 14.586948, 20.880045>,  <17.187933, 14.811069, 20.799887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.218666, 14.586948, 20.880045>,  <17.269890, 14.213413, 21.013641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.218666, 14.586948, 20.880045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038979, 0.341241, 0.939167,
		0.991000, 0.107249, -0.080099,
		-0.128058, 0.933837, -0.333990,
		17.180248, 14.867100, 20.779848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.841120, 14.616373, 21.302986>,  <17.269890, 14.213413, 21.013641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.841120, 14.616373, 21.302986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.541023, 14.863540, 21.208908>,  <17.360966, 15.011840, 21.152462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.541023, 14.863540, 21.208908>,  <17.841120, 14.616373, 21.302986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.541023, 14.863540, 21.208908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027630, 0.326114, 0.944926,
		0.660585, 0.715422, -0.227592,
		-0.750242, 0.617916, -0.235194,
		17.315950, 15.048915, 21.138350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.000971, 15.277588, 21.591505>,  <17.841120, 14.616373, 21.302986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.000971, 15.277588, 21.591505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.607216, 15.298390, 21.524240>,  <17.370962, 15.310872, 21.483883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.607216, 15.298390, 21.524240>,  <18.000971, 15.277588, 21.591505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.607216, 15.298390, 21.524240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145712, 0.295162, 0.944271,
		0.098743, 0.954030, -0.282976,
		-0.984387, 0.052007, -0.168159,
		17.311899, 15.313993, 21.473793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826624, 15.841162, 21.926344>,  <18.000971, 15.277588, 21.591505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.826624, 15.841162, 21.926344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.463657, 15.679708, 21.879570>,  <17.245878, 15.582835, 21.851505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.463657, 15.679708, 21.879570>,  <17.826624, 15.841162, 21.926344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.463657, 15.679708, 21.879570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280908, 0.375650, 0.883164,
		-0.312549, 0.834245, -0.454255,
		-0.907416, -0.403636, -0.116937,
		17.191433, 15.558617, 21.844488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.325628, 16.362577, 22.086496>,  <17.826624, 15.841162, 21.926344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.325628, 16.362577, 22.086496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.122845, 16.022310, 22.142143>,  <17.001175, 15.818150, 22.175531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.122845, 16.022310, 22.142143>,  <17.325628, 16.362577, 22.086496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.122845, 16.022310, 22.142143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320565, 0.335885, 0.885674,
		-0.800143, 0.404405, -0.442975,
		-0.506960, -0.850669, 0.139118,
		16.970757, 15.767110, 22.183878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.597427, 16.629623, 22.190365>,  <17.325628, 16.362577, 22.086496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.597427, 16.629623, 22.190365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.653864, 16.265285, 22.345522>,  <16.687727, 16.046682, 22.438616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.653864, 16.265285, 22.345522>,  <16.597427, 16.629623, 22.190365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.653864, 16.265285, 22.345522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301833, 0.333578, 0.893097,
		-0.942862, -0.243087, -0.227857,
		0.141092, -0.910842, 0.387890,
		16.696192, 15.992033, 22.461889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.079334, 16.568808, 22.661699>,  <16.597427, 16.629623, 22.190365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.079334, 16.568808, 22.661699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.345848, 16.297401, 22.785431>,  <16.505756, 16.134558, 22.859669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.345848, 16.297401, 22.785431>,  <16.079334, 16.568808, 22.661699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.345848, 16.297401, 22.785431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293034, 0.143206, 0.945316,
		-0.685709, -0.720492, -0.103413,
		0.666284, -0.678515, 0.309327,
		16.545732, 16.093847, 22.878229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.739399, 16.030157, 22.971087>,  <16.079334, 16.568808, 22.661699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.739399, 16.030157, 22.971087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.103529, 16.005606, 23.134813>,  <16.322006, 15.990875, 23.233049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.103529, 16.005606, 23.134813>,  <15.739399, 16.030157, 22.971087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.103529, 16.005606, 23.134813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406999, 0.047017, 0.912218,
		-0.075237, -0.997006, 0.017819,
		0.910325, -0.061380, 0.409318,
		16.376627, 15.987193, 23.257608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.655144, 15.706481, 23.600744>,  <15.739399, 16.030157, 22.971087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.655144, 15.706481, 23.600744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.023258, 15.852757, 23.656380>,  <16.244127, 15.940523, 23.689760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.023258, 15.852757, 23.656380>,  <15.655144, 15.706481, 23.600744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.023258, 15.852757, 23.656380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197462, 0.127227, 0.972019,
		0.337763, -0.922000, 0.189295,
		0.920285, 0.365690, 0.139088,
		16.299343, 15.962464, 23.698107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.952521, 15.303693, 24.133924>,  <15.655144, 15.706481, 23.600744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.952521, 15.303693, 24.133924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.150841, 15.650518, 24.114393>,  <16.269833, 15.858614, 24.102674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.150841, 15.650518, 24.114393>,  <15.952521, 15.303693, 24.133924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.150841, 15.650518, 24.114393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083503, 0.103564, 0.991111,
		0.864414, -0.487314, 0.123749,
		0.495798, 0.867064, -0.048830,
		16.299580, 15.910638, 24.099745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.537813, 15.229075, 24.604458>,  <15.952521, 15.303693, 24.133924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.537813, 15.229075, 24.604458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.515039, 15.623981, 24.545038>,  <16.501375, 15.860925, 24.509386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.515039, 15.623981, 24.545038>,  <16.537813, 15.229075, 24.604458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.515039, 15.623981, 24.545038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084621, 0.153025, 0.984593,
		0.994785, 0.043486, -0.092256,
		-0.056933, 0.987265, -0.148547,
		16.497959, 15.920161, 24.500475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.154589, 15.570553, 24.927956>,  <16.537813, 15.229075, 24.604458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.154589, 15.570553, 24.927956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.839865, 15.817020, 24.913733>,  <16.651030, 15.964901, 24.905199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.839865, 15.817020, 24.913733>,  <17.154589, 15.570553, 24.927956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.839865, 15.817020, 24.913733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014755, 0.076377, 0.996970,
		0.617019, 0.783901, -0.069186,
		-0.786810, 0.616170, -0.035559,
		16.603821, 16.001871, 24.903065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.736313, 16.051075, 25.046789>,  <17.154589, 15.570553, 24.927956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.736313, 16.051075, 25.046789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.756720, 15.796550, 24.738892>,  <17.768965, 15.643835, 24.554153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.756720, 15.796550, 24.738892>,  <17.736313, 16.051075, 25.046789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.756720, 15.796550, 24.738892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838582, 0.391289, -0.379042,
		0.542381, 0.664831, -0.513637,
		0.051018, -0.636312, -0.769743,
		17.772024, 15.605657, 24.507969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<8.907142, 14.053079, 23.047577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.273220, 14.124922, 23.191887>,  <9.492867, 14.168028, 23.278473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.273220, 14.124922, 23.191887>,  <8.907142, 14.053079, 23.047577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.273220, 14.124922, 23.191887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385410, -0.128405, -0.913768,
		-0.117795, 0.975322, -0.186738,
		0.915196, 0.179608, 0.360773,
		9.547779, 14.178804, 23.300119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.211287, 14.589667, 22.603880>,  <8.907142, 14.053079, 23.047577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.211287, 14.589667, 22.603880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.537387, 14.427711, 22.769495>,  <9.733047, 14.330538, 22.868864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.537387, 14.427711, 22.769495>,  <9.211287, 14.589667, 22.603880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.537387, 14.427711, 22.769495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453745, 0.002356, -0.891128,
		0.359834, 0.914362, 0.185638,
		0.815251, -0.404890, 0.414040,
		9.781962, 14.306245, 22.893707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.763468, 15.015158, 22.426538>,  <9.211287, 14.589667, 22.603880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.763468, 15.015158, 22.426538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.909294, 14.655756, 22.524338>,  <9.996790, 14.440115, 22.583017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.909294, 14.655756, 22.524338>,  <9.763468, 15.015158, 22.426538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.909294, 14.655756, 22.524338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470848, -0.048657, -0.880871,
		0.803364, 0.436258, 0.405321,
		0.364566, -0.898505, 0.244500,
		10.018663, 14.386205, 22.597689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.356864, 15.006392, 22.055080>,  <9.763468, 15.015158, 22.426538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.356864, 15.006392, 22.055080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.335496, 14.629101, 22.186209>,  <10.322675, 14.402726, 22.264885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.335496, 14.629101, 22.186209>,  <10.356864, 15.006392, 22.055080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.335496, 14.629101, 22.186209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566198, -0.299027, -0.768116,
		0.822536, 0.144578, 0.550029,
		-0.053421, -0.943228, 0.327820,
		10.319469, 14.346132, 22.284555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.013414, 14.706542, 21.822929>,  <10.356864, 15.006392, 22.055080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.013414, 14.706542, 21.822929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.757352, 14.402862, 21.869942>,  <10.603715, 14.220654, 21.898149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.757352, 14.402862, 21.869942>,  <11.013414, 14.706542, 21.822929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.757352, 14.402862, 21.869942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324390, -0.405801, -0.854457,
		0.696400, -0.508859, 0.506053,
		-0.640155, -0.759202, 0.117531,
		10.565306, 14.175101, 21.905201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.386284, 14.062182, 21.803125>,  <11.013414, 14.706542, 21.822929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.386284, 14.062182, 21.803125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.014183, 13.978333, 21.682667>,  <10.790923, 13.928024, 21.610392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.014183, 13.978333, 21.682667>,  <11.386284, 14.062182, 21.803125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.014183, 13.978333, 21.682667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361761, -0.386800, -0.848242,
		0.061327, -0.898022, 0.435655,
		-0.930252, -0.209623, -0.301148,
		10.735107, 13.915446, 21.592323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.474229, 13.488883, 21.448362>,  <11.386284, 14.062182, 21.803125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.474229, 13.488883, 21.448362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.119675, 13.618752, 21.316355>,  <10.906942, 13.696672, 21.237150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.119675, 13.618752, 21.316355>,  <11.474229, 13.488883, 21.448362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.119675, 13.618752, 21.316355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166145, -0.442276, -0.881356,
		-0.432100, -0.836054, 0.338088,
		-0.886389, 0.324662, -0.330013,
		10.853759, 13.716153, 21.217350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.565228, 13.232977, 20.809832>,  <11.474229, 13.488883, 21.448362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.565228, 13.232977, 20.809832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.223868, 13.439864, 20.783932>,  <11.019053, 13.563996, 20.768393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.223868, 13.439864, 20.783932>,  <11.565228, 13.232977, 20.809832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.223868, 13.439864, 20.783932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148436, 0.122065, -0.981360,
		-0.499675, -0.847104, -0.180944,
		-0.853400, 0.517219, -0.064748,
		10.967848, 13.595030, 20.764507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.267507, 12.973794, 20.243103>,  <11.565228, 13.232977, 20.809832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.267507, 12.973794, 20.243103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.101789, 13.334873, 20.289572>,  <11.002357, 13.551520, 20.317453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.101789, 13.334873, 20.289572>,  <11.267507, 12.973794, 20.243103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.101789, 13.334873, 20.289572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179366, 0.206116, -0.961948,
		-0.892293, -0.377694, -0.247306,
		-0.414296, 0.902698, 0.116170,
		10.977500, 13.605682, 20.324423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.810724, 13.029811, 19.735315>,  <11.267507, 12.973794, 20.243103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.810724, 13.029811, 19.735315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.867895, 13.412730, 19.835836>,  <10.902198, 13.642482, 19.896149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.867895, 13.412730, 19.835836>,  <10.810724, 13.029811, 19.735315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.867895, 13.412730, 19.835836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113241, 0.236424, -0.965028,
		-0.983234, 0.166386, -0.074615,
		0.142926, 0.957298, 0.251301,
		10.910773, 13.699920, 19.911226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.345608, 13.451956, 19.328657>,  <10.810724, 13.029811, 19.735315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.345608, 13.451956, 19.328657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.620378, 13.707818, 19.466629>,  <10.785239, 13.861336, 19.549412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.620378, 13.707818, 19.466629>,  <10.345608, 13.451956, 19.328657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.620378, 13.707818, 19.466629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073078, 0.411425, -0.908509,
		-0.723046, 0.649283, 0.235873,
		0.686924, 0.639656, 0.344928,
		10.826455, 13.899715, 19.570107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.139445, 14.132537, 19.188799>,  <10.345608, 13.451956, 19.328657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.139445, 14.132537, 19.188799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.536847, 14.152264, 19.229822>,  <10.775288, 14.164100, 19.254436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.536847, 14.152264, 19.229822>,  <10.139445, 14.132537, 19.188799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.536847, 14.152264, 19.229822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071489, 0.430701, -0.899659,
		-0.088540, 0.901146, 0.424377,
		0.993504, 0.049318, 0.102556,
		10.834898, 14.167059, 19.260590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.244635, 14.815211, 18.927629>,  <10.139445, 14.132537, 19.188799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.244635, 14.815211, 18.927629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.574611, 14.590522, 18.902519>,  <10.772596, 14.455708, 18.887453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.574611, 14.590522, 18.902519>,  <10.244635, 14.815211, 18.927629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.574611, 14.590522, 18.902519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103747, 0.259657, -0.960112,
		0.555618, 0.785521, 0.272478,
		0.824939, -0.561725, -0.062774,
		10.822092, 14.422005, 18.883686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.736246, 15.199981, 18.380892>,  <10.244635, 14.815211, 18.927629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.736246, 15.199981, 18.380892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.930821, 14.850549, 18.387039>,  <11.047566, 14.640890, 18.390728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.930821, 14.850549, 18.387039>,  <10.736246, 15.199981, 18.380892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.930821, 14.850549, 18.387039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196921, 0.092482, -0.976048,
		0.851234, 0.477814, 0.217013,
		0.486439, -0.873579, 0.015368,
		11.076754, 14.588475, 18.391649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.211329, 15.493213, 18.907032>,  <10.736246, 15.199981, 18.380892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.211329, 15.493213, 18.907032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.437488, 15.822110, 18.933081>,  <11.573183, 16.019449, 18.948709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.437488, 15.822110, 18.933081>,  <11.211329, 15.493213, 18.907032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.437488, 15.822110, 18.933081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114934, 0.000360, 0.993373,
		0.816771, -0.569136, 0.094707,
		0.565398, 0.822244, 0.065119,
		11.607107, 16.068783, 18.952616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.578979, 15.422884, 19.537357>,  <11.211329, 15.493213, 18.907032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.578979, 15.422884, 19.537357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.618231, 15.811414, 19.450729>,  <11.641782, 16.044531, 19.398752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.618231, 15.811414, 19.450729>,  <11.578979, 15.422884, 19.537357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.618231, 15.811414, 19.450729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254041, 0.234858, 0.938246,
		0.962203, -0.037052, 0.269802,
		0.098129, 0.971323, -0.216568,
		11.647670, 16.102810, 19.385759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.927056, 15.637066, 20.097780>,  <11.578979, 15.422884, 19.537357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.927056, 15.637066, 20.097780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.782328, 15.973156, 19.936234>,  <11.695491, 16.174810, 19.839306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.782328, 15.973156, 19.936234>,  <11.927056, 15.637066, 20.097780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.782328, 15.973156, 19.936234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317010, 0.296509, 0.900881,
		0.876693, 0.453988, 0.159076,
		-0.361822, 0.840225, -0.403866,
		11.673781, 16.225224, 19.815073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.328798, 16.256916, 20.402794>,  <11.927056, 15.637066, 20.097780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.328798, 16.256916, 20.402794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.970647, 16.367111, 20.262850>,  <11.755756, 16.433229, 20.178883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.970647, 16.367111, 20.262850>,  <12.328798, 16.256916, 20.402794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.970647, 16.367111, 20.262850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178207, 0.498331, 0.848474,
		0.408092, 0.822054, -0.397101,
		-0.895379, 0.275489, -0.349861,
		11.702033, 16.449759, 20.157892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.261548, 16.877287, 20.705814>,  <12.328798, 16.256916, 20.402794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.261548, 16.877287, 20.705814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.886810, 16.849413, 20.568722>,  <11.661967, 16.832687, 20.486465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.886810, 16.849413, 20.568722>,  <12.261548, 16.877287, 20.705814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.886810, 16.849413, 20.568722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339087, 0.421059, 0.841267,
		0.085686, 0.904352, -0.418096,
		-0.936845, -0.069686, -0.342732,
		11.605757, 16.828506, 20.465902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.918717, 17.462675, 21.035601>,  <12.261548, 16.877287, 20.705814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.918717, 17.462675, 21.035601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.635916, 17.211885, 20.904730>,  <11.466234, 17.061411, 20.826208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.635916, 17.211885, 20.904730>,  <11.918717, 17.462675, 21.035601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.635916, 17.211885, 20.904730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565524, 0.223432, 0.793890,
		-0.424649, 0.746310, -0.512537,
		-0.707005, -0.626976, -0.327176,
		11.423814, 17.023792, 20.806578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.257516, 17.912046, 20.963606>,  <11.918717, 17.462675, 21.035601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.257516, 17.912046, 20.963606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.198990, 17.521284, 21.025892>,  <11.163874, 17.286827, 21.063263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.198990, 17.521284, 21.025892>,  <11.257516, 17.912046, 20.963606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.198990, 17.521284, 21.025892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586790, 0.212435, 0.781376,
		-0.796410, 0.022956, -0.604321,
		-0.146316, -0.976906, 0.155715,
		11.155095, 17.228212, 21.072607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.456662, 17.851944, 21.209858>,  <11.257516, 17.912046, 20.963606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.456662, 17.851944, 21.209858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.640742, 17.513405, 21.317125>,  <10.751190, 17.310282, 21.381485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.640742, 17.513405, 21.317125>,  <10.456662, 17.851944, 21.209858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.640742, 17.513405, 21.317125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424911, 0.055246, 0.903547,
		-0.779529, -0.529761, -0.334198,
		0.460201, -0.846346, 0.268167,
		10.778803, 17.259501, 21.397575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.950818, 17.399332, 21.635868>,  <10.456662, 17.851944, 21.209858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.950818, 17.399332, 21.635868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.305523, 17.240883, 21.731146>,  <10.518346, 17.145813, 21.788313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.305523, 17.240883, 21.731146>,  <9.950818, 17.399332, 21.635868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.305523, 17.240883, 21.731146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211712, 0.110011, 0.971121,
		-0.410889, -0.911583, 0.013690,
		0.886763, -0.396124, 0.238195,
		10.571552, 17.122046, 21.802605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.746099, 16.944874, 22.107340>,  <9.950818, 17.399332, 21.635868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.746099, 16.944874, 22.107340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.135072, 17.010550, 22.173578>,  <10.368455, 17.049955, 22.213322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.135072, 17.010550, 22.173578>,  <9.746099, 16.944874, 22.107340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.135072, 17.010550, 22.173578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147646, -0.116171, 0.982194,
		0.180502, -0.979564, -0.088726,
		0.972429, 0.164188, 0.165598,
		10.426801, 17.059805, 22.223257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.936237, 16.403500, 22.557556>,  <9.746099, 16.944874, 22.107340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.936237, 16.403500, 22.557556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.174870, 16.722233, 22.595821>,  <10.318049, 16.913473, 22.618780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.174870, 16.722233, 22.595821>,  <9.936237, 16.403500, 22.557556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.174870, 16.722233, 22.595821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147045, -0.008653, 0.989092,
		0.788967, -0.604141, 0.112008,
		0.596581, 0.796831, 0.095663,
		10.353844, 16.961283, 22.624519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.441372, 16.177254, 22.988810>,  <9.936237, 16.403500, 22.557556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.441372, 16.177254, 22.988810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.451644, 16.576860, 23.003286>,  <10.457808, 16.816624, 23.011972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.451644, 16.576860, 23.003286>,  <10.441372, 16.177254, 22.988810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.451644, 16.576860, 23.003286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006253, -0.036045, 0.999331,
		0.999651, -0.025889, 0.005322,
		0.025680, 0.999015, 0.036194,
		10.459348, 16.876564, 23.014145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.918612, 16.221037, 23.426544>,  <10.441372, 16.177254, 22.988810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.918612, 16.221037, 23.426544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.716367, 16.566135, 23.428591>,  <10.595019, 16.773193, 23.429819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.716367, 16.566135, 23.428591>,  <10.918612, 16.221037, 23.426544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.716367, 16.566135, 23.428591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092901, -0.060340, 0.993845,
		0.857743, 0.502028, 0.110658,
		-0.505615, 0.862744, 0.005117,
		10.564682, 16.824959, 23.430126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.266553, 16.673840, 23.968542>,  <10.918612, 16.221037, 23.426544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.266553, 16.673840, 23.968542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.906325, 16.837971, 23.911123>,  <10.690188, 16.936449, 23.876673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.906325, 16.837971, 23.911123>,  <11.266553, 16.673840, 23.968542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.906325, 16.837971, 23.911123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182098, -0.056239, 0.981671,
		0.394735, 0.910202, 0.125367,
		-0.900569, 0.410329, -0.143546,
		10.636154, 16.961069, 23.868059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.739747, 17.299150, 23.968168>,  <11.266553, 16.673840, 23.968542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.739747, 17.299150, 23.968168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.080861, 17.478745, 24.074881>,  <12.285529, 17.586502, 24.138908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.080861, 17.478745, 24.074881>,  <11.739747, 17.299150, 23.968168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.080861, 17.478745, 24.074881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224711, 0.145672, -0.963475,
		-0.471449, 0.881584, 0.023335,
		0.852784, 0.448986, 0.266779,
		12.336697, 17.613440, 24.154915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.808797, 17.754938, 23.393417>,  <11.739747, 17.299150, 23.968168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.808797, 17.754938, 23.393417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.150131, 17.763268, 23.601795>,  <12.354932, 17.768265, 23.726822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.150131, 17.763268, 23.601795>,  <11.808797, 17.754938, 23.393417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.150131, 17.763268, 23.601795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504469, 0.219310, -0.835113,
		-0.131640, 0.975433, 0.176639,
		0.853336, 0.020825, 0.520946,
		12.406132, 17.769516, 23.758080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.165103, 18.470448, 23.296524>,  <11.808797, 17.754938, 23.393417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.165103, 18.470448, 23.296524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.420963, 18.177378, 23.389505>,  <12.574479, 18.001535, 23.445293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.420963, 18.177378, 23.389505>,  <12.165103, 18.470448, 23.296524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.420963, 18.177378, 23.389505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550116, 0.225134, -0.804169,
		0.536862, 0.642262, 0.547063,
		0.639650, -0.732676, 0.232453,
		12.612858, 17.957575, 23.459242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.780948, 18.788425, 23.323391>,  <12.165103, 18.470448, 23.296524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.780948, 18.788425, 23.323391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.864191, 18.401827, 23.263294>,  <12.914137, 18.169867, 23.227236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.864191, 18.401827, 23.263294>,  <12.780948, 18.788425, 23.323391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.864191, 18.401827, 23.263294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631114, 0.250038, -0.734286,
		0.747252, 0.057992, 0.662005,
		0.208109, -0.966498, -0.150242,
		12.926623, 18.111877, 23.218222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.508186, 18.818218, 23.365101>,  <12.780948, 18.788425, 23.323391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.508186, 18.818218, 23.365101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.421403, 18.480297, 23.169455>,  <13.369333, 18.277544, 23.052067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.421403, 18.480297, 23.169455>,  <13.508186, 18.818218, 23.365101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.421403, 18.480297, 23.169455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736798, 0.186964, -0.649748,
		0.640357, -0.501347, 0.581888,
		-0.216958, -0.844805, -0.489116,
		13.356316, 18.226856, 23.022720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.126640, 18.618326, 23.012625>,  <13.508186, 18.818218, 23.365101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.126640, 18.618326, 23.012625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.873208, 18.372086, 22.825174>,  <13.721148, 18.224340, 22.712704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.873208, 18.372086, 22.825174>,  <14.126640, 18.618326, 23.012625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.873208, 18.372086, 22.825174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587331, 0.011567, -0.809264,
		0.503605, -0.787973, 0.354234,
		-0.633580, -0.615602, -0.468626,
		13.683134, 18.187405, 22.684586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.494257, 18.052736, 22.665754>,  <14.126640, 18.618326, 23.012625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.494257, 18.052736, 22.665754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.139914, 18.090694, 22.484095>,  <13.927308, 18.113470, 22.375099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.139914, 18.090694, 22.484095>,  <14.494257, 18.052736, 22.665754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.139914, 18.090694, 22.484095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456305, 0.001154, -0.889823,
		-0.083915, -0.995487, -0.044323,
		-0.885858, 0.094894, -0.454148,
		13.874156, 18.119164, 22.347851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.541266, 17.587896, 22.128757>,  <14.494257, 18.052736, 22.665754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.541266, 17.587896, 22.128757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.233486, 17.810955, 22.004194>,  <14.048819, 17.944790, 21.929457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.233486, 17.810955, 22.004194>,  <14.541266, 17.587896, 22.128757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.233486, 17.810955, 22.004194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370705, -0.007123, -0.928723,
		-0.520120, -0.830046, -0.201243,
		-0.769450, 0.557649, -0.311407,
		14.002651, 17.978251, 21.910772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.195160, 17.201771, 21.546595>,  <14.541266, 17.587896, 22.128757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.195160, 17.201771, 21.546595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.100049, 17.587837, 21.502930>,  <14.042983, 17.819477, 21.476730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.100049, 17.587837, 21.502930>,  <14.195160, 17.201771, 21.546595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.100049, 17.587837, 21.502930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319419, -0.028438, -0.947187,
		-0.917297, -0.260087, -0.301530,
		-0.237776, 0.965166, -0.109163,
		14.028716, 17.877388, 21.470181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.878448, 17.257946, 20.941620>,  <14.195160, 17.201771, 21.546595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.878448, 17.257946, 20.941620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.926684, 17.653387, 20.977665>,  <13.955626, 17.890652, 20.999292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.926684, 17.653387, 20.977665>,  <13.878448, 17.257946, 20.941620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.926684, 17.653387, 20.977665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217613, 0.062239, -0.974049,
		-0.968557, 0.137070, -0.207628,
		0.120591, 0.988604, 0.090110,
		13.962862, 17.949968, 21.004698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.399800, 17.580557, 20.445292>,  <13.878448, 17.257946, 20.941620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.399800, 17.580557, 20.445292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.709651, 17.818439, 20.531340>,  <13.895561, 17.961168, 20.582970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.709651, 17.818439, 20.531340>,  <13.399800, 17.580557, 20.445292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.709651, 17.818439, 20.531340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221718, 0.063187, -0.973061,
		-0.592278, 0.801456, -0.082911,
		0.774628, 0.594706, 0.215121,
		13.942039, 17.996851, 20.595877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.607813, 17.808817, 19.839052>,  <13.399800, 17.580557, 20.445292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.607813, 17.808817, 19.839052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.925657, 17.963196, 20.026514>,  <14.116364, 18.055822, 20.138992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.925657, 17.963196, 20.026514>,  <13.607813, 17.808817, 19.839052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.925657, 17.963196, 20.026514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555340, -0.150108, -0.817964,
		-0.245342, 0.910227, -0.333609,
		0.794610, 0.385948, 0.468657,
		14.164041, 18.078979, 20.167110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.887415, 18.296333, 19.379576>,  <13.607813, 17.808817, 19.839052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.887415, 18.296333, 19.379576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.191393, 18.206926, 19.623714>,  <14.373779, 18.153282, 19.770199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.191393, 18.206926, 19.623714>,  <13.887415, 18.296333, 19.379576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.191393, 18.206926, 19.623714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623197, -0.016257, -0.781896,
		0.184689, 0.974565, 0.126941,
		0.759944, -0.223516, 0.610348,
		14.419376, 18.139872, 19.806818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.377802, 18.809467, 19.297358>,  <13.887415, 18.296333, 19.379576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.377802, 18.809467, 19.297358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.571559, 18.478331, 19.410526>,  <14.687813, 18.279650, 19.478428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.571559, 18.478331, 19.410526>,  <14.377802, 18.809467, 19.297358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.571559, 18.478331, 19.410526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673240, 0.146217, -0.724823,
		0.558670, 0.541573, 0.628162,
		0.484392, -0.827840, 0.282922,
		14.716877, 18.229979, 19.495403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<15.105175, 23.975464, 13.571999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.927199, 23.621582, 13.627610>,  <14.820415, 23.409252, 13.660977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.927199, 23.621582, 13.627610>,  <15.105175, 23.975464, 13.571999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.927199, 23.621582, 13.627610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808268, 0.463553, 0.363073,
		-0.385659, 0.049173, -0.921330,
		-0.444938, -0.884704, 0.139028,
		14.793717, 23.356171, 13.669318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.406734, 23.860680, 13.299537>,  <15.105175, 23.975464, 13.571999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.406734, 23.860680, 13.299537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.409468, 23.597925, 13.601121>,  <14.411107, 23.440273, 13.782071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.409468, 23.597925, 13.601121>,  <14.406734, 23.860680, 13.299537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.409468, 23.597925, 13.601121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834222, 0.411998, 0.366511,
		-0.551386, -0.631475, -0.545173,
		0.006832, -0.656884, 0.753960,
		14.411517, 23.400860, 13.827309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.716453, 23.778070, 13.441238>,  <14.406734, 23.860680, 13.299537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.716453, 23.778070, 13.441238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.909736, 23.641497, 13.763712>,  <14.025705, 23.559551, 13.957196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.909736, 23.641497, 13.763712>,  <13.716453, 23.778070, 13.441238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.909736, 23.641497, 13.763712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674050, 0.442552, 0.591442,
		-0.558718, -0.829198, -0.016300,
		0.483209, -0.341437, 0.806183,
		14.054698, 23.539066, 14.005567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.199826, 23.742208, 13.873396>,  <13.716453, 23.778070, 13.441238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.199826, 23.742208, 13.873396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.533674, 23.748278, 14.093642>,  <13.733983, 23.751919, 14.225790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.533674, 23.748278, 14.093642>,  <13.199826, 23.742208, 13.873396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.533674, 23.748278, 14.093642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485682, 0.491840, 0.722639,
		-0.259849, -0.870553, 0.417870,
		0.834621, 0.015175, 0.550616,
		13.784060, 23.752831, 14.258827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.082137, 23.504274, 14.534434>,  <13.199826, 23.742208, 13.873396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.082137, 23.504274, 14.534434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.380299, 23.760841, 14.607046>,  <13.559196, 23.914782, 14.650613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.380299, 23.760841, 14.607046>,  <13.082137, 23.504274, 14.534434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.380299, 23.760841, 14.607046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522151, 0.392519, 0.757158,
		0.414405, -0.659171, 0.627504,
		0.745404, 0.641422, 0.181525,
		13.603920, 23.953268, 14.661505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.447062, 23.643873, 14.113259>,  <13.082137, 23.504274, 14.534434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.447062, 23.643873, 14.113259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.335589, 23.681261, 14.495589>,  <12.268706, 23.703693, 14.724987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.335589, 23.681261, 14.495589>,  <12.447062, 23.643873, 14.113259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.335589, 23.681261, 14.495589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955621, -0.125985, -0.266302,
		0.095527, -0.987619, 0.124433,
		-0.278681, 0.093472, 0.955824,
		12.251986, 23.709303, 14.782336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.058728, 23.091141, 14.387517>,  <12.447062, 23.643873, 14.113259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.058728, 23.091141, 14.387517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.957381, 23.449337, 14.533886>,  <11.896573, 23.664255, 14.621707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.957381, 23.449337, 14.533886>,  <12.058728, 23.091141, 14.387517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.957381, 23.449337, 14.533886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945977, -0.150241, -0.287325,
		-0.202321, -0.418951, 0.885181,
		-0.253366, 0.895493, 0.365921,
		11.881371, 23.717985, 14.643662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.378476, 22.790152, 14.086671>,  <12.058728, 23.091141, 14.387517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.378476, 22.790152, 14.086671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.677005, 22.539209, 13.997741>,  <11.856122, 22.388643, 13.944383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.677005, 22.539209, 13.997741>,  <11.378476, 22.790152, 14.086671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.677005, 22.539209, 13.997741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665468, -0.709628, -0.231476,
		-0.012550, 0.320705, -0.947096,
		0.746321, -0.627357, -0.222325,
		11.900901, 22.351002, 13.931044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.212344, 22.407675, 13.554828>,  <11.378476, 22.790152, 14.086671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.212344, 22.407675, 13.554828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.509265, 22.182344, 13.699964>,  <11.687417, 22.047146, 13.787045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.509265, 22.182344, 13.699964>,  <11.212344, 22.407675, 13.554828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.509265, 22.182344, 13.699964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548430, -0.821887, -0.154033,
		0.384984, -0.084653, -0.919033,
		0.742301, -0.563325, 0.362840,
		11.731956, 22.013348, 13.808816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.566914, 21.795374, 13.171422>,  <11.212344, 22.407675, 13.554828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.566914, 21.795374, 13.171422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.535571, 21.749781, 13.567577>,  <11.516766, 21.722424, 13.805270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.535571, 21.749781, 13.567577>,  <11.566914, 21.795374, 13.171422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.535571, 21.749781, 13.567577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624462, -0.768788, -0.137886,
		0.777115, -0.629263, -0.010941,
		-0.078355, -0.113986, 0.990388,
		11.512064, 21.715586, 13.864694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.659534, 21.062595, 13.252439>,  <11.566914, 21.795374, 13.171422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.659534, 21.062595, 13.252439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.473948, 21.206738, 13.576138>,  <11.362597, 21.293222, 13.770358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.473948, 21.206738, 13.576138>,  <11.659534, 21.062595, 13.252439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.473948, 21.206738, 13.576138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661518, -0.748520, -0.045955,
		0.589178, -0.556653, 0.585667,
		-0.463964, 0.360354, 0.809248,
		11.334758, 21.314844, 13.818913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.598873, 20.570158, 13.760811>,  <11.659534, 21.062595, 13.252439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.598873, 20.570158, 13.760811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.288697, 20.810116, 13.839626>,  <11.102592, 20.954090, 13.886915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.288697, 20.810116, 13.839626>,  <11.598873, 20.570158, 13.760811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.288697, 20.810116, 13.839626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591457, -0.799342, 0.105975,
		0.221074, -0.034362, 0.974651,
		-0.775439, 0.599893, 0.197038,
		11.056066, 20.990084, 13.898738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.392279, 20.225550, 14.317029>,  <11.598873, 20.570158, 13.760811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.392279, 20.225550, 14.317029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.092896, 20.453043, 14.180587>,  <10.913266, 20.589539, 14.098722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.092896, 20.453043, 14.180587>,  <11.392279, 20.225550, 14.317029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.092896, 20.453043, 14.180587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615645, -0.787081, 0.038533,
		-0.246563, 0.238840, 0.939235,
		-0.748457, 0.568735, -0.341105,
		10.868359, 20.623663, 14.078256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.879352, 20.202124, 14.816601>,  <11.392279, 20.225550, 14.317029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.879352, 20.202124, 14.816601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.673980, 20.328434, 14.497433>,  <10.550756, 20.404221, 14.305932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.673980, 20.328434, 14.497433>,  <10.879352, 20.202124, 14.816601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.673980, 20.328434, 14.497433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666548, -0.732377, 0.139061,
		-0.540466, 0.603251, 0.586502,
		-0.513429, 0.315774, -0.797920,
		10.519951, 20.423166, 14.258057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.152835, 20.076027, 15.003836>,  <10.879352, 20.202124, 14.816601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.152835, 20.076027, 15.003836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.114695, 20.126942, 14.608927>,  <10.091810, 20.157490, 14.371982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.114695, 20.126942, 14.608927>,  <10.152835, 20.076027, 15.003836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.114695, 20.126942, 14.608927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688851, -0.724405, -0.026867,
		-0.718605, 0.677521, 0.156755,
		-0.095351, 0.127287, -0.987272,
		10.086089, 20.165129, 14.312745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.418171, 20.259062, 14.904413>,  <10.152835, 20.076027, 15.003836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.418171, 20.259062, 14.904413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.572019, 20.087198, 14.577621>,  <9.664328, 19.984079, 14.381544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.572019, 20.087198, 14.577621>,  <9.418171, 20.259062, 14.904413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.572019, 20.087198, 14.577621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799645, -0.597225, -0.062370,
		-0.461125, 0.677285, -0.573279,
		0.384619, -0.429659, -0.816983,
		9.687405, 19.958300, 14.332525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.774585, 20.108444, 14.469684>,  <9.418171, 20.259062, 14.904413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.774585, 20.108444, 14.469684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.048003, 19.893143, 14.272484>,  <9.212054, 19.763962, 14.154164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.048003, 19.893143, 14.272484>,  <8.774585, 20.108444, 14.469684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.048003, 19.893143, 14.272484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668357, -0.733029, -0.126366,
		-0.293365, 0.415876, -0.860804,
		0.683547, -0.538253, -0.492999,
		9.253067, 19.731667, 14.124584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.369614, 19.823498, 14.054655>,  <8.774585, 20.108444, 14.469684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.369614, 19.823498, 14.054655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.699817, 19.597742, 14.055599>,  <8.897939, 19.462290, 14.056166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.699817, 19.597742, 14.055599>,  <8.369614, 19.823498, 14.054655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.699817, 19.597742, 14.055599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561960, -0.822329, -0.089306,
		0.052344, 0.072396, -0.996002,
		0.825507, -0.564388, 0.002360,
		8.947469, 19.428425, 14.056308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.368632, 19.427866, 13.350159>,  <8.369614, 19.823498, 14.054655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.368632, 19.427866, 13.350159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.590612, 19.240538, 13.625173>,  <8.723801, 19.128141, 13.790181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.590612, 19.240538, 13.625173>,  <8.368632, 19.427866, 13.350159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.590612, 19.240538, 13.625173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481945, -0.854648, -0.193145,
		0.678055, -0.224168, -0.699993,
		0.554951, -0.468321, 0.687535,
		8.757097, 19.100040, 13.831433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.540349, 18.786560, 13.109165>,  <8.368632, 19.427866, 13.350159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.540349, 18.786560, 13.109165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.597198, 18.717146, 13.498973>,  <8.631307, 18.675497, 13.732858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.597198, 18.717146, 13.498973>,  <8.540349, 18.786560, 13.109165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.597198, 18.717146, 13.498973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406408, -0.907935, -0.102407,
		0.902571, -0.381498, -0.199563,
		0.142122, -0.173534, 0.974519,
		8.639834, 18.665087, 13.791328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.769854, 18.062662, 13.132392>,  <8.540349, 18.786560, 13.109165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.769854, 18.062662, 13.132392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.625872, 18.164488, 13.491419>,  <8.539482, 18.225584, 13.706835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.625872, 18.164488, 13.491419>,  <8.769854, 18.062662, 13.132392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.625872, 18.164488, 13.491419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509746, -0.859426, 0.039322,
		0.781403, -0.443377, 0.439118,
		-0.359955, 0.254565, 0.897568,
		8.517885, 18.240858, 13.760690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.797334, 17.470467, 13.425029>,  <8.769854, 18.062662, 13.132392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.797334, 17.470467, 13.425029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.546654, 17.670547, 13.664042>,  <8.396246, 17.790596, 13.807449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.546654, 17.670547, 13.664042>,  <8.797334, 17.470467, 13.425029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.546654, 17.670547, 13.664042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548813, -0.827680, 0.117258,
		0.553218, -0.254447, 0.793225,
		-0.626701, 0.500202, 0.597532,
		8.358644, 17.820608, 13.843301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.503876, 16.936291, 13.944947>,  <8.797334, 17.470467, 13.425029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.503876, 16.936291, 13.944947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.251813, 17.245766, 13.971215>,  <8.100575, 17.431450, 13.986977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.251813, 17.245766, 13.971215>,  <8.503876, 16.936291, 13.944947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.251813, 17.245766, 13.971215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744805, -0.626201, 0.230516,
		0.219470, 0.096350, 0.970850,
		-0.630158, 0.773685, 0.065671,
		8.062766, 17.477871, 13.990916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.112413, 16.948339, 14.541676>,  <8.503876, 16.936291, 13.944947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.112413, 16.948339, 14.541676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.888494, 17.204784, 14.331685>,  <7.754142, 17.358652, 14.205691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.888494, 17.204784, 14.331685>,  <8.112413, 16.948339, 14.541676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.888494, 17.204784, 14.331685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821411, -0.512782, 0.249676,
		-0.109127, 0.570989, 0.813672,
		-0.559799, 0.641113, -0.524975,
		7.720554, 17.397118, 14.174192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.496142, 17.222982, 15.006670>,  <8.112413, 16.948339, 14.541676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.496142, 17.222982, 15.006670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.375674, 17.275415, 14.628862>,  <7.303394, 17.306875, 14.402178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.375674, 17.275415, 14.628862>,  <7.496142, 17.222982, 15.006670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.375674, 17.275415, 14.628862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934615, -0.237094, 0.265107,
		-0.189189, 0.962603, 0.193918,
		-0.301169, 0.131083, -0.944518,
		7.285324, 17.314741, 14.345507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.808103, 17.461075, 15.050214>,  <7.496142, 17.222982, 15.006670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.808103, 17.461075, 15.050214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.823533, 17.332241, 14.671844>,  <6.832791, 17.254942, 14.444821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.823533, 17.332241, 14.671844>,  <6.808103, 17.461075, 15.050214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.823533, 17.332241, 14.671844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827063, -0.541542, 0.150664,
		-0.560784, 0.776528, -0.287273,
		0.038575, -0.322082, -0.945925,
		6.835105, 17.235617, 14.388066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.152276, 17.542423, 14.752407>,  <6.808103, 17.461075, 15.050214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.152276, 17.542423, 14.752407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.337700, 17.256416, 14.543080>,  <6.448955, 17.084812, 14.417484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.337700, 17.256416, 14.543080>,  <6.152276, 17.542423, 14.752407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.337700, 17.256416, 14.543080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814289, -0.576631, 0.066554,
		-0.349348, 0.395280, -0.849535,
		0.463561, -0.715018, -0.523317,
		6.476768, 17.041910, 14.386086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.776631, 17.309031, 14.162002>,  <6.152276, 17.542423, 14.752407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.776631, 17.309031, 14.162002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.029332, 16.999332, 14.177165>,  <6.180952, 16.813515, 14.186263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.029332, 16.999332, 14.177165>,  <5.776631, 17.309031, 14.162002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.029332, 16.999332, 14.177165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775074, -0.631692, 0.015033,
		0.012308, -0.038879, -0.999168,
		0.631751, -0.774244, 0.037909,
		6.218857, 16.767059, 14.188538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.437309, 16.775127, 13.696726>,  <5.776631, 17.309031, 14.162002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.437309, 16.775127, 13.696726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.677792, 16.634521, 13.983777>,  <5.822081, 16.550158, 14.156008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.677792, 16.634521, 13.983777>,  <5.437309, 16.775127, 13.696726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.677792, 16.634521, 13.983777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678661, -0.698714, 0.226313,
		0.421864, -0.623087, -0.658630,
		0.601207, -0.351513, 0.717627,
		5.858153, 16.529068, 14.199065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.312293, 16.093746, 13.598660>,  <5.437309, 16.775127, 13.696726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.312293, 16.093746, 13.598660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.500467, 16.093264, 13.951633>,  <5.613371, 16.092974, 14.163418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.500467, 16.093264, 13.951633>,  <5.312293, 16.093746, 13.598660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.500467, 16.093264, 13.951633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576047, -0.757955, 0.306062,
		0.668477, -0.652306, -0.357262,
		0.470435, -0.001204, 0.882434,
		5.641597, 16.092903, 14.216364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.515862, 15.374833, 13.753457>,  <5.312293, 16.093746, 13.598660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.515862, 15.374833, 13.753457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.495501, 15.569942, 14.102052>,  <5.483284, 15.687008, 14.311209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.495501, 15.569942, 14.102052>,  <5.515862, 15.374833, 13.753457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.495501, 15.569942, 14.102052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530459, -0.752555, 0.390223,
		0.846181, -0.442425, 0.297050,
		-0.050902, 0.487772, 0.871485,
		5.480230, 15.716274, 14.363498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.049951, 15.030766, 13.325454>,  <5.515862, 15.374833, 13.753457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.049951, 15.030766, 13.325454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.262492, 14.695058, 13.279336>,  <6.390017, 14.493633, 13.251665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.262492, 14.695058, 13.279336>,  <6.049951, 15.030766, 13.325454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.262492, 14.695058, 13.279336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833019, 0.542382, -0.109093,
		0.154092, -0.038077, 0.987322,
		0.531353, -0.839268, -0.115295,
		6.421897, 14.443277, 13.244747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.621603, 15.023127, 13.793047>,  <6.049951, 15.030766, 13.325454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.621603, 15.023127, 13.793047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.731677, 14.749682, 13.522655>,  <6.797720, 14.585616, 13.360419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.731677, 14.749682, 13.522655>,  <6.621603, 15.023127, 13.793047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.731677, 14.749682, 13.522655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900904, 0.428827, -0.066921,
		0.335627, -0.590579, 0.733874,
		0.275183, -0.683611, -0.675981,
		6.814231, 14.544600, 13.319860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.247087, 14.848166, 13.965468>,  <6.621603, 15.023127, 13.793047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.247087, 14.848166, 13.965468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.227483, 14.726868, 13.584808>,  <7.215721, 14.654088, 13.356412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.227483, 14.726868, 13.584808>,  <7.247087, 14.848166, 13.965468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.227483, 14.726868, 13.584808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946689, 0.289630, -0.141045,
		0.318398, -0.907830, 0.272887,
		-0.049009, -0.303248, -0.951651,
		7.212780, 14.635893, 13.299314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.933684, 14.509309, 13.891750>,  <7.247087, 14.848166, 13.965468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.933684, 14.509309, 13.891750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.805453, 14.603888, 13.524856>,  <7.728514, 14.660635, 13.304719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.805453, 14.603888, 13.524856>,  <7.933684, 14.509309, 13.891750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.805453, 14.603888, 13.524856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904917, 0.362609, -0.222798,
		0.279918, -0.901448, -0.330209,
		-0.320578, 0.236447, -0.917236,
		7.709280, 14.674822, 13.249684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.422859, 14.215996, 13.490212>,  <7.933684, 14.509309, 13.891750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.422859, 14.215996, 13.490212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.235331, 14.503249, 13.284497>,  <8.122813, 14.675601, 13.161068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.235331, 14.503249, 13.284497>,  <8.422859, 14.215996, 13.490212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.235331, 14.503249, 13.284497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883293, 0.381337, -0.272719,
		0.000268, -0.582123, -0.813101,
		-0.468822, 0.718133, -0.514287,
		8.094684, 14.718689, 13.130211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.847837, 14.332833, 12.822183>,  <8.422859, 14.215996, 13.490212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.847837, 14.332833, 12.822183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.624484, 14.659060, 12.882925>,  <8.490472, 14.854795, 12.919371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.624484, 14.659060, 12.882925>,  <8.847837, 14.332833, 12.822183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.624484, 14.659060, 12.882925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807065, 0.576408, -0.128063,
		-0.191974, 0.051049, -0.980071,
		-0.558383, 0.815566, 0.151855,
		8.456969, 14.903729, 12.928482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.793778, 14.714647, 12.150649>,  <8.847837, 14.332833, 12.822183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.793778, 14.714647, 12.150649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.716985, 14.942655, 12.470204>,  <8.670909, 15.079459, 12.661938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.716985, 14.942655, 12.470204>,  <8.793778, 14.714647, 12.150649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.716985, 14.942655, 12.470204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675694, 0.667137, -0.313633,
		-0.711744, 0.479591, -0.513238,
		-0.191984, 0.570019, 0.798887,
		8.659389, 15.113660, 12.709870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.807199, 15.492305, 11.833719>,  <8.793778, 14.714647, 12.150649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.807199, 15.492305, 11.833719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.850481, 15.511125, 12.230926>,  <8.876450, 15.522416, 12.469249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.850481, 15.511125, 12.230926>,  <8.807199, 15.492305, 11.833719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.850481, 15.511125, 12.230926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732698, 0.671334, -0.111646,
		-0.671897, 0.739660, 0.038168,
		0.108203, 0.047050, 0.993015,
		8.882942, 15.525240, 12.528830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.064855, 16.181875, 11.982930>,  <8.807199, 15.492305, 11.833719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.064855, 16.181875, 11.982930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.134531, 15.993235, 12.328705>,  <9.176337, 15.880051, 12.536170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.134531, 15.993235, 12.328705>,  <9.064855, 16.181875, 11.982930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.134531, 15.993235, 12.328705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896469, 0.439168, 0.058945,
		-0.407432, 0.764673, 0.499274,
		0.174191, -0.471600, 0.864437,
		9.186789, 15.851755, 12.588036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.112431, 16.630283, 12.520015>,  <9.064855, 16.181875, 11.982930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.112431, 16.630283, 12.520015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.323772, 16.311268, 12.636477>,  <9.450578, 16.119858, 12.706353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.323772, 16.311268, 12.636477>,  <9.112431, 16.630283, 12.520015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.323772, 16.311268, 12.636477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800993, 0.581946, 0.140530,
		-0.281515, 0.158963, 0.946298,
		0.528355, -0.797540, 0.291154,
		9.482279, 16.072006, 12.723823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.489598, 16.928986, 13.120547>,  <9.112431, 16.630283, 12.520015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.489598, 16.928986, 13.120547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.694655, 16.600498, 13.020306>,  <9.817690, 16.403406, 12.960161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.694655, 16.600498, 13.020306>,  <9.489598, 16.928986, 13.120547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.694655, 16.600498, 13.020306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847184, 0.531242, -0.007831,
		0.139562, -0.208292, 0.968058,
		0.512642, -0.821216, -0.250603,
		9.848448, 16.354134, 12.945125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.120427, 16.955927, 13.413287>,  <9.489598, 16.928986, 13.120547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.120427, 16.955927, 13.413287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.242835, 16.675806, 13.155317>,  <10.316279, 16.507734, 13.000535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.242835, 16.675806, 13.155317>,  <10.120427, 16.955927, 13.413287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.242835, 16.675806, 13.155317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880421, 0.465924, -0.088168,
		0.362230, -0.540824, 0.759143,
		0.306020, -0.700303, -0.644925,
		10.334641, 16.465715, 12.961840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.788904, 16.764698, 13.594045>,  <10.120427, 16.955927, 13.413287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.788904, 16.764698, 13.594045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.745425, 16.686970, 13.204085>,  <10.719337, 16.640333, 12.970110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.745425, 16.686970, 13.204085>,  <10.788904, 16.764698, 13.594045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.745425, 16.686970, 13.204085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787919, 0.581118, -0.203680,
		0.606110, -0.790279, 0.089942,
		-0.108698, -0.194319, -0.974897,
		10.712816, 16.628674, 12.911616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.537092, 16.727209, 13.219353>,  <10.788904, 16.764698, 13.594045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.537092, 16.727209, 13.219353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.258262, 16.781860, 12.937810>,  <11.090963, 16.814651, 12.768884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.258262, 16.781860, 12.937810>,  <11.537092, 16.727209, 13.219353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.258262, 16.781860, 12.937810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648794, 0.538067, -0.538099,
		0.305204, -0.831755, -0.463717,
		-0.697077, 0.136627, -0.703858,
		11.049138, 16.822849, 12.726652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.960764, 16.827690, 12.703772>,  <11.537092, 16.727209, 13.219353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.960764, 16.827690, 12.703772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.621727, 16.986349, 12.562769>,  <11.418305, 17.081545, 12.478168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.621727, 16.986349, 12.562769>,  <11.960764, 16.827690, 12.703772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.621727, 16.986349, 12.562769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517115, 0.766470, -0.380942,
		0.119087, -0.505170, -0.854764,
		-0.847591, 0.396646, -0.352507,
		11.367450, 17.105343, 12.457017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.093205, 16.833126, 12.047296>,  <11.960764, 16.827690, 12.703772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.093205, 16.833126, 12.047296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.818528, 17.108438, 12.140867>,  <11.653722, 17.273626, 12.197010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.818528, 17.108438, 12.140867>,  <12.093205, 16.833126, 12.047296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.818528, 17.108438, 12.140867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475055, 0.668459, -0.572263,
		-0.550249, -0.281840, -0.785998,
		-0.686694, 0.688279, 0.233929,
		11.612520, 17.314922, 12.211046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.928421, 17.279402, 11.420472>,  <12.093205, 16.833126, 12.047296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.928421, 17.279402, 11.420472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.791192, 17.495270, 11.727993>,  <11.708855, 17.624790, 11.912506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.791192, 17.495270, 11.727993>,  <11.928421, 17.279402, 11.420472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.791192, 17.495270, 11.727993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603620, 0.753770, -0.259758,
		-0.719684, 0.374949, -0.584353,
		-0.343071, 0.539670, 0.768803,
		11.688271, 17.657171, 11.958633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.753255, 17.999039, 11.118338>,  <11.928421, 17.279402, 11.420472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.753255, 17.999039, 11.118338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.782313, 18.065092, 11.511774>,  <11.799748, 18.104725, 11.747836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.782313, 18.065092, 11.511774>,  <11.753255, 17.999039, 11.118338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.782313, 18.065092, 11.511774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629810, 0.757096, -0.173624,
		-0.773345, 0.632089, -0.049002,
		0.072646, 0.165133, 0.983592,
		11.804108, 18.114632, 11.806851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.740668, 18.640268, 11.115523>,  <11.753255, 17.999039, 11.118338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.740668, 18.640268, 11.115523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.878852, 18.540083, 11.477281>,  <11.961761, 18.479971, 11.694335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.878852, 18.540083, 11.477281>,  <11.740668, 18.640268, 11.115523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.878852, 18.540083, 11.477281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677202, 0.733702, -0.055483,
		-0.649659, 0.631624, 0.423078,
		0.345458, -0.250464, 0.904393,
		11.982490, 18.464943, 11.748598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.706585, 19.293936, 11.440672>,  <11.740668, 18.640268, 11.115523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.706585, 19.293936, 11.440672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.937472, 19.064892, 11.673546>,  <12.076005, 18.927465, 11.813270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.937472, 19.064892, 11.673546>,  <11.706585, 19.293936, 11.440672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.937472, 19.064892, 11.673546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601931, 0.780132, 0.170505,
		-0.551814, 0.252016, 0.794978,
		0.577218, -0.572609, 0.582184,
		12.110638, 18.893108, 11.848201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.865325, 19.757599, 12.039923>,  <11.706585, 19.293936, 11.440672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.865325, 19.757599, 12.039923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.144348, 19.478266, 11.975747>,  <12.311762, 19.310665, 11.937242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.144348, 19.478266, 11.975747>,  <11.865325, 19.757599, 12.039923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.144348, 19.478266, 11.975747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695753, 0.713663, -0.081320,
		0.171288, -0.054901, 0.983690,
		0.697559, -0.698334, -0.160440,
		12.353616, 19.268766, 11.927615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.472750, 17.688272, 25.904074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.319738, 17.328320, 25.820282>,  <16.227932, 17.112347, 25.770006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.319738, 17.328320, 25.820282>,  <16.472750, 17.688272, 25.904074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.319738, 17.328320, 25.820282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593863, 0.065780, 0.801872,
		-0.707812, 0.431141, -0.559571,
		-0.382529, -0.899883, -0.209479,
		16.204979, 17.058355, 25.757439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.904842, 17.710419, 26.225956>,  <16.472750, 17.688272, 25.904074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.904842, 17.710419, 26.225956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.959068, 17.319092, 26.163322>,  <15.991604, 17.084295, 26.125742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.959068, 17.319092, 26.163322>,  <15.904842, 17.710419, 26.225956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.959068, 17.319092, 26.163322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462198, -0.202238, 0.863408,
		-0.876354, -0.044676, -0.479592,
		0.135565, -0.978317, -0.156583,
		15.999738, 17.025597, 26.116348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.288921, 17.397303, 26.286230>,  <15.904842, 17.710419, 26.225956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.288921, 17.397303, 26.286230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.548563, 17.105604, 26.372822>,  <15.704349, 16.930586, 26.424776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.548563, 17.105604, 26.372822>,  <15.288921, 17.397303, 26.286230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.548563, 17.105604, 26.372822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603716, -0.320716, 0.729841,
		-0.462806, -0.604434, -0.648436,
		0.649105, -0.729246, 0.216478,
		15.743295, 16.886831, 26.437765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.841050, 16.840437, 26.430738>,  <15.288921, 17.397303, 26.286230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.841050, 16.840437, 26.430738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.196527, 16.746758, 26.588411>,  <15.409812, 16.690550, 26.683016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.196527, 16.746758, 26.588411>,  <14.841050, 16.840437, 26.430738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.196527, 16.746758, 26.588411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451267, -0.294585, 0.842364,
		-0.081160, -0.926483, -0.367481,
		0.888691, -0.234198, 0.394183,
		15.463134, 16.676498, 26.706667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.698326, 16.295391, 26.850340>,  <14.841050, 16.840437, 26.430738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.698326, 16.295391, 26.850340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.048800, 16.428778, 26.989540>,  <15.259084, 16.508810, 27.073059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.048800, 16.428778, 26.989540>,  <14.698326, 16.295391, 26.850340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.048800, 16.428778, 26.989540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227255, -0.350895, 0.908420,
		0.425038, -0.875028, -0.231666,
		0.876183, 0.333466, 0.347998,
		15.311655, 16.528818, 27.093939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.101937, 15.684189, 27.242455>,  <14.698326, 16.295391, 26.850340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.101937, 15.684189, 27.242455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.204552, 16.042843, 27.386806>,  <15.266120, 16.258036, 27.473417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.204552, 16.042843, 27.386806>,  <15.101937, 15.684189, 27.242455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.204552, 16.042843, 27.386806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383305, -0.248379, 0.889598,
		0.887280, -0.366541, 0.279967,
		0.256536, 0.896636, 0.360879,
		15.281512, 16.311834, 27.495070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.928173, 15.552954, 27.861059>,  <15.101937, 15.684189, 27.242455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.928173, 15.552954, 27.861059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.999823, 15.946216, 27.875597>,  <15.042812, 16.182173, 27.884319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.999823, 15.946216, 27.875597>,  <14.928173, 15.552954, 27.861059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.999823, 15.946216, 27.875597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440904, 0.047194, 0.896312,
		0.879499, -0.176576, 0.441931,
		0.179124, 0.983155, 0.036346,
		15.053559, 16.241161, 27.886501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.142232, 15.720923, 28.505318>,  <14.928173, 15.552954, 27.861059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.142232, 15.720923, 28.505318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.046216, 16.088385, 28.379805>,  <14.988606, 16.308861, 28.304497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.046216, 16.088385, 28.379805>,  <15.142232, 15.720923, 28.505318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.046216, 16.088385, 28.379805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515984, 0.153053, 0.842814,
		0.822278, 0.364215, 0.437270,
		-0.240040, 0.918652, -0.313782,
		14.974204, 16.363979, 28.285669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.272738, 15.993763, 29.079918>,  <15.142232, 15.720923, 28.505318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.272738, 15.993763, 29.079918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.066359, 16.280958, 28.893030>,  <14.942532, 16.453276, 28.780897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.066359, 16.280958, 28.893030>,  <15.272738, 15.993763, 29.079918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.066359, 16.280958, 28.893030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431383, 0.253439, 0.865839,
		0.740073, 0.648277, 0.178967,
		-0.515946, 0.717987, -0.467220,
		14.911574, 16.496355, 28.752865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.334912, 16.703243, 29.362604>,  <15.272738, 15.993763, 29.079918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.334912, 16.703243, 29.362604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.974127, 16.687197, 29.190626>,  <14.757655, 16.677568, 29.087440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.974127, 16.687197, 29.190626>,  <15.334912, 16.703243, 29.362604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.974127, 16.687197, 29.190626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411921, 0.378646, 0.828823,
		0.129546, 0.924671, -0.358051,
		-0.901964, -0.040118, -0.429944,
		14.703538, 16.675161, 29.061644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.052094, 17.291304, 29.660568>,  <15.334912, 16.703243, 29.362604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.052094, 17.291304, 29.660568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.744615, 17.081432, 29.514244>,  <14.560127, 16.955509, 29.426449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.744615, 17.081432, 29.514244>,  <15.052094, 17.291304, 29.660568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.744615, 17.081432, 29.514244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575120, 0.316710, 0.754276,
		-0.279896, 0.790195, -0.545207,
		-0.768697, -0.524679, -0.365811,
		14.514006, 16.924028, 29.404501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.341681, 17.764816, 29.571377>,  <15.052094, 17.291304, 29.660568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.341681, 17.764816, 29.571377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.216839, 17.384922, 29.581137>,  <14.141933, 17.156986, 29.586992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.216839, 17.384922, 29.581137>,  <14.341681, 17.764816, 29.571377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.216839, 17.384922, 29.581137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672082, 0.238868, 0.700891,
		-0.671488, 0.202355, -0.712851,
		-0.312107, -0.949734, 0.024398,
		14.123207, 17.100002, 29.588455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.579006, 17.703321, 29.661154>,  <14.341681, 17.764816, 29.571377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.579006, 17.703321, 29.661154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.717464, 17.355413, 29.801826>,  <13.800539, 17.146667, 29.886230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.717464, 17.355413, 29.801826>,  <13.579006, 17.703321, 29.661154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.717464, 17.355413, 29.801826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638197, 0.056466, 0.767800,
		-0.687669, -0.490212, -0.535541,
		0.346145, -0.869772, 0.351682,
		13.821308, 17.094482, 29.907331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.003314, 17.291891, 29.805086>,  <13.579006, 17.703321, 29.661154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.003314, 17.291891, 29.805086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.295593, 17.176495, 30.052586>,  <13.470961, 17.107256, 30.201086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.295593, 17.176495, 30.052586>,  <13.003314, 17.291891, 29.805086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.295593, 17.176495, 30.052586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575268, 0.227857, 0.785587,
		-0.367624, -0.929974, 0.000534,
		0.730698, -0.288494, 0.618751,
		13.514803, 17.089947, 30.238211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.270567, 17.119869, 29.837748>,  <13.003314, 17.291891, 29.805086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.270567, 17.119869, 29.837748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.996316, 17.408144, 29.796713>,  <11.831765, 17.581110, 29.772091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.996316, 17.408144, 29.796713>,  <12.270567, 17.119869, 29.837748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.996316, 17.408144, 29.796713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144858, -0.003035, -0.989448,
		-0.713395, -0.693253, -0.102316,
		-0.685627, 0.720688, -0.102589,
		11.790627, 17.624350, 29.765936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.745187, 16.894119, 29.371824>,  <12.270567, 17.119869, 29.837748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.745187, 16.894119, 29.371824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.726464, 17.293667, 29.375063>,  <11.715231, 17.533396, 29.377007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.726464, 17.293667, 29.375063>,  <11.745187, 16.894119, 29.371824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.726464, 17.293667, 29.375063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010801, 0.008611, -0.999905,
		-0.998846, -0.046715, -0.011192,
		-0.046807, 0.998871, 0.008096,
		11.712422, 17.593328, 29.377491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.250667, 17.022921, 28.926332>,  <11.745187, 16.894119, 29.371824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.250667, 17.022921, 28.926332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.436037, 17.376957, 28.943541>,  <11.547259, 17.589378, 28.953865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.436037, 17.376957, 28.943541>,  <11.250667, 17.022921, 28.926332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.436037, 17.376957, 28.943541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085621, 0.093047, -0.991973,
		-0.881989, 0.456023, 0.118903,
		0.463427, 0.885090, 0.043021,
		11.575065, 17.642485, 28.956448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.921325, 17.512638, 28.453184>,  <11.250667, 17.022921, 28.926332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.921325, 17.512638, 28.453184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.276255, 17.688934, 28.507444>,  <11.489213, 17.794712, 28.540001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.276255, 17.688934, 28.507444>,  <10.921325, 17.512638, 28.453184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.276255, 17.688934, 28.507444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009942, 0.275813, -0.961160,
		-0.461037, 0.854210, 0.240355,
		0.887325, 0.440740, 0.135652,
		11.542452, 17.821156, 28.548140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.857043, 18.102047, 28.009399>,  <10.921325, 17.512638, 28.453184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.857043, 18.102047, 28.009399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.251949, 18.074924, 28.066963>,  <11.488893, 18.058651, 28.101501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.251949, 18.074924, 28.066963>,  <10.857043, 18.102047, 28.009399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.251949, 18.074924, 28.066963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153111, 0.159439, -0.975262,
		0.043186, 0.984876, 0.167791,
		0.987265, -0.067808, 0.143910,
		11.548129, 18.054583, 28.110136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.174160, 18.682924, 27.749548>,  <10.857043, 18.102047, 28.009399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.174160, 18.682924, 27.749548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.457064, 18.400145, 27.748533>,  <11.626805, 18.230476, 27.747925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.457064, 18.400145, 27.748533>,  <11.174160, 18.682924, 27.749548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.457064, 18.400145, 27.748533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025606, 0.029201, -0.999246,
		0.706491, 0.706660, 0.038755,
		0.707258, -0.706951, -0.002535,
		11.669241, 18.188059, 27.747772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.388849, 18.761822, 27.107286>,  <11.174160, 18.682924, 27.749548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.388849, 18.761822, 27.107286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.602517, 18.436594, 27.199877>,  <11.730718, 18.241457, 27.255430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.602517, 18.436594, 27.199877>,  <11.388849, 18.761822, 27.107286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.602517, 18.436594, 27.199877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315394, -0.062370, -0.946909,
		0.784340, 0.578816, 0.223121,
		0.534170, -0.813069, 0.231474,
		11.762768, 18.192673, 27.269320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.971539, 18.866606, 26.853516>,  <11.388849, 18.761822, 27.107286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.971539, 18.866606, 26.853516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.942507, 18.468405, 26.877865>,  <11.925087, 18.229485, 26.892473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.942507, 18.468405, 26.877865>,  <11.971539, 18.866606, 26.853516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.942507, 18.468405, 26.877865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139185, -0.070545, -0.987751,
		0.987603, -0.063221, 0.143679,
		-0.072582, -0.995503, 0.060871,
		11.920732, 18.169754, 26.896126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.616670, 18.562767, 26.592253>,  <11.971539, 18.866606, 26.853516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.616670, 18.562767, 26.592253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.357634, 18.259272, 26.564140>,  <12.202211, 18.077173, 26.547274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.357634, 18.259272, 26.564140>,  <12.616670, 18.562767, 26.592253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.357634, 18.259272, 26.564140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339010, -0.204282, -0.918336,
		0.682421, -0.618532, 0.389512,
		-0.647591, -0.758740, -0.070282,
		12.163356, 18.031651, 26.543056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.015190, 18.007895, 26.357691>,  <12.616670, 18.562767, 26.592253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.015190, 18.007895, 26.357691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.635687, 17.915598, 26.271330>,  <12.407985, 17.860220, 26.219513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.635687, 17.915598, 26.271330>,  <13.015190, 18.007895, 26.357691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.635687, 17.915598, 26.271330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253141, -0.146015, -0.956347,
		0.189146, -0.961996, 0.196944,
		-0.948759, -0.230743, -0.215903,
		12.351059, 17.846375, 26.206558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.086260, 17.460804, 26.009035>,  <13.015190, 18.007895, 26.357691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.086260, 17.460804, 26.009035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.713997, 17.575052, 25.917559>,  <12.490640, 17.643602, 25.862673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.713997, 17.575052, 25.917559>,  <13.086260, 17.460804, 26.009035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.713997, 17.575052, 25.917559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189241, -0.159190, -0.968941,
		-0.313156, -0.945028, 0.094100,
		-0.930656, 0.285622, -0.228690,
		12.434800, 17.660738, 25.848951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.864746, 17.025328, 25.572605>,  <13.086260, 17.460804, 26.009035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.864746, 17.025328, 25.572605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.608806, 17.325657, 25.507055>,  <12.455241, 17.505854, 25.467726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.608806, 17.325657, 25.507055>,  <12.864746, 17.025328, 25.572605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.608806, 17.325657, 25.507055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070501, -0.154992, -0.985397,
		-0.765259, -0.642060, 0.046238,
		-0.639850, 0.750824, -0.163875,
		12.416850, 17.550903, 25.457893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.493552, 16.821939, 24.980879>,  <12.864746, 17.025328, 25.572605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.493552, 16.821939, 24.980879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.391567, 17.208059, 25.003458>,  <12.330376, 17.439732, 25.017006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.391567, 17.208059, 25.003458>,  <12.493552, 16.821939, 24.980879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.391567, 17.208059, 25.003458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057126, 0.043238, -0.997430,
		-0.965262, -0.257533, 0.044120,
		-0.254963, 0.965302, 0.056448,
		12.315078, 17.497650, 25.020391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.916119, 16.883690, 24.541437>,  <12.493552, 16.821939, 24.980879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.916119, 16.883690, 24.541437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.137331, 17.214363, 24.582912>,  <12.270059, 17.412767, 24.607798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.137331, 17.214363, 24.582912>,  <11.916119, 16.883690, 24.541437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.137331, 17.214363, 24.582912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323656, -0.098489, -0.941035,
		-0.767726, 0.553981, -0.322028,
		0.553031, 0.826684, 0.103687,
		12.303241, 17.462368, 24.614019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.200555, 17.321428, 24.520071>,  <11.916119, 16.883690, 24.541437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.200555, 17.321428, 24.520071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.840510, 17.192505, 24.402824>,  <10.624483, 17.115150, 24.332476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.840510, 17.192505, 24.402824>,  <11.200555, 17.321428, 24.520071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.840510, 17.192505, 24.402824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260186, -0.141945, 0.955068,
		-0.349431, 0.935933, 0.043907,
		-0.900112, -0.322307, -0.293117,
		10.570477, 17.095814, 24.314890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.710057, 17.673714, 24.932316>,  <11.200555, 17.321428, 24.520071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.710057, 17.673714, 24.932316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.486439, 17.370420, 24.798124>,  <10.352267, 17.188444, 24.717609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.486439, 17.370420, 24.798124>,  <10.710057, 17.673714, 24.932316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.486439, 17.370420, 24.798124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400826, -0.107043, 0.909879,
		-0.725813, 0.643134, -0.244078,
		-0.559047, -0.758235, -0.335478,
		10.318725, 17.142950, 24.697481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.082255, 17.710588, 25.214119>,  <10.710057, 17.673714, 24.932316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.082255, 17.710588, 25.214119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.097164, 17.318184, 25.137983>,  <10.106110, 17.082741, 25.092302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.097164, 17.318184, 25.137983>,  <10.082255, 17.710588, 25.214119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.097164, 17.318184, 25.137983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381197, -0.190025, 0.904753,
		-0.923742, 0.038835, -0.381041,
		0.037272, -0.981011, -0.190338,
		10.108346, 17.023880, 25.080881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.415486, 17.481266, 25.175032>,  <10.082255, 17.710588, 25.214119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.415486, 17.481266, 25.175032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.617322, 17.139431, 25.224134>,  <9.738423, 16.934330, 25.253595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.617322, 17.139431, 25.224134>,  <9.415486, 17.481266, 25.175032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.617322, 17.139431, 25.224134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518437, -0.186227, 0.834591,
		-0.690371, -0.484767, -0.537018,
		0.504590, -0.854588, 0.122755,
		9.768699, 16.883055, 25.260962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.845625, 16.942108, 25.311920>,  <9.415486, 17.481266, 25.175032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.845625, 16.942108, 25.311920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.190804, 16.791050, 25.446207>,  <9.397911, 16.700415, 25.526779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.190804, 16.791050, 25.446207>,  <8.845625, 16.942108, 25.311920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.190804, 16.791050, 25.446207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409508, -0.133466, 0.902491,
		-0.296015, -0.916281, -0.269823,
		0.862948, -0.377646, 0.335717,
		9.449688, 16.677755, 25.546923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.659231, 16.395445, 25.839722>,  <8.845625, 16.942108, 25.311920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.659231, 16.395445, 25.839722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.035037, 16.503660, 25.923740>,  <9.260521, 16.568590, 25.974152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.035037, 16.503660, 25.923740>,  <8.659231, 16.395445, 25.839722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.035037, 16.503660, 25.923740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216759, -0.005175, 0.976211,
		0.265192, -0.962695, 0.053781,
		0.939515, 0.270541, 0.210045,
		9.316892, 16.584822, 25.986753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.909599, 15.890146, 26.280321>,  <8.659231, 16.395445, 25.839722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.909599, 15.890146, 26.280321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.145894, 16.209452, 26.327322>,  <9.287671, 16.401035, 26.355522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.145894, 16.209452, 26.327322>,  <8.909599, 15.890146, 26.280321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.145894, 16.209452, 26.327322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277732, 0.064443, 0.958495,
		0.757559, -0.598851, 0.259772,
		0.590736, 0.798264, 0.117500,
		9.323114, 16.448931, 26.362572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.372992, 15.406527, 26.208221>,  <8.909599, 15.890146, 26.280321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.372992, 15.406527, 26.208221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.282739, 15.019547, 26.162378>,  <9.228587, 14.787360, 26.134872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.282739, 15.019547, 26.162378>,  <9.372992, 15.406527, 26.208221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.282739, 15.019547, 26.162378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408369, 0.012884, -0.912726,
		0.884492, -0.252742, 0.392169,
		-0.225632, -0.967448, -0.114607,
		9.215049, 14.729313, 26.127996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.924758, 15.201990, 25.807838>,  <9.372992, 15.406527, 26.208221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.924758, 15.201990, 25.807838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.636403, 14.926398, 25.777824>,  <9.463390, 14.761044, 25.759815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.636403, 14.926398, 25.777824>,  <9.924758, 15.201990, 25.807838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.636403, 14.926398, 25.777824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307198, -0.220607, -0.925722,
		0.621250, -0.690391, 0.370686,
		-0.720887, -0.688979, -0.075035,
		9.420137, 14.719705, 25.755314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.213308, 14.645276, 25.496372>,  <9.924758, 15.201990, 25.807838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.213308, 14.645276, 25.496372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.828135, 14.573663, 25.415670>,  <9.597031, 14.530695, 25.367249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.828135, 14.573663, 25.415670>,  <10.213308, 14.645276, 25.496372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.828135, 14.573663, 25.415670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242749, -0.249060, -0.937573,
		0.117607, -0.951796, 0.283288,
		-0.962934, -0.179033, -0.201756,
		9.539254, 14.519953, 25.355145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.296452, 14.128449, 25.189701>,  <10.213308, 14.645276, 25.496372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.296452, 14.128449, 25.189701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.933477, 14.241937, 25.065723>,  <9.715693, 14.310029, 24.991337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.933477, 14.241937, 25.065723>,  <10.296452, 14.128449, 25.189701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.933477, 14.241937, 25.065723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233704, -0.272230, -0.933420,
		-0.349204, -0.919454, 0.180725,
		-0.907436, 0.283718, -0.309944,
		9.661246, 14.327052, 24.972740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.957331, 13.608801, 24.727806>,  <10.296452, 14.128449, 25.189701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.957331, 13.608801, 24.727806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.747823, 13.941750, 24.655340>,  <9.622118, 14.141519, 24.611860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.747823, 13.941750, 24.655340>,  <9.957331, 13.608801, 24.727806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.747823, 13.941750, 24.655340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055831, -0.178668, -0.982324,
		-0.850028, -0.524627, 0.047109,
		-0.523771, 0.832372, -0.181164,
		9.590692, 14.191462, 24.600990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.487526, 13.366867, 24.290016>,  <9.957331, 13.608801, 24.727806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.487526, 13.366867, 24.290016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.518455, 13.762600, 24.240635>,  <9.537012, 14.000040, 24.211006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.518455, 13.762600, 24.240635>,  <9.487526, 13.366867, 24.290016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.518455, 13.762600, 24.240635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229485, -0.138162, -0.963456,
		-0.970236, 0.046166, -0.237720,
		0.077323, 0.989333, -0.123455,
		9.541652, 14.059400, 24.203598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.012692, 13.543797, 23.659128>,  <9.487526, 13.366867, 24.290016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.012692, 13.543797, 23.659128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.300473, 13.817201, 23.708454>,  <9.473142, 13.981242, 23.738049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.300473, 13.817201, 23.708454>,  <9.012692, 13.543797, 23.659128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.300473, 13.817201, 23.708454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214961, -0.050304, -0.975326,
		-0.660439, 0.728208, -0.183118,
		0.719452, 0.683507, 0.123314,
		9.516309, 14.022253, 23.745449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<10.960220, 14.358899, 25.434221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.103010, 13.993842, 25.513872>,  <11.188684, 13.774808, 25.561663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.103010, 13.993842, 25.513872>,  <10.960220, 14.358899, 25.434221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.103010, 13.993842, 25.513872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284545, -0.096802, -0.953763,
		0.889721, 0.397130, 0.225132,
		0.356974, -0.912643, 0.199128,
		11.210102, 13.720049, 25.573610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.391467, 14.576767, 26.049868>,  <10.960220, 14.358899, 25.434221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.391467, 14.576767, 26.049868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.577029, 14.224512, 26.011354>,  <11.688367, 14.013159, 25.988247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.577029, 14.224512, 26.011354>,  <11.391467, 14.576767, 26.049868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.577029, 14.224512, 26.011354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875040, 0.472466, -0.105263,
		0.138188, -0.035418, 0.989772,
		0.463906, -0.880637, -0.096281,
		11.716201, 13.960321, 25.982470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.964994, 14.532079, 26.546770>,  <11.391467, 14.576767, 26.049868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.964994, 14.532079, 26.546770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.047422, 14.270267, 26.255806>,  <12.096879, 14.113179, 26.081228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.047422, 14.270267, 26.255806>,  <11.964994, 14.532079, 26.546770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.047422, 14.270267, 26.255806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961461, 0.273701, 0.026095,
		0.182012, -0.704753, 0.685708,
		0.206069, -0.654532, -0.727409,
		12.109243, 14.073907, 26.037582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.022192, 15.030035, 27.231987>,  <11.964994, 14.532079, 26.546770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.022192, 15.030035, 27.231987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.311948, 14.870005, 27.456558>,  <12.485801, 14.773987, 27.591301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.311948, 14.870005, 27.456558>,  <12.022192, 15.030035, 27.231987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.311948, 14.870005, 27.456558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682469, 0.301041, -0.666041,
		0.097454, 0.865629, 0.491110,
		0.724388, -0.400076, 0.561427,
		12.529264, 14.749982, 27.624987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.531132, 15.532164, 27.243294>,  <12.022192, 15.030035, 27.231987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.531132, 15.532164, 27.243294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.701239, 15.178383, 27.320122>,  <12.803303, 14.966114, 27.366219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.701239, 15.178383, 27.320122>,  <12.531132, 15.532164, 27.243294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.701239, 15.178383, 27.320122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724116, 0.205182, -0.658450,
		0.542958, 0.419101, 0.727703,
		0.425268, -0.884452, 0.192072,
		12.828819, 14.913047, 27.377743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.255116, 15.582860, 27.378500>,  <12.531132, 15.532164, 27.243294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.255116, 15.582860, 27.378500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.243846, 15.198751, 27.267445>,  <13.237084, 14.968287, 27.200811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.243846, 15.198751, 27.267445>,  <13.255116, 15.582860, 27.378500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.243846, 15.198751, 27.267445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466556, 0.233007, -0.853249,
		0.884043, -0.153574, 0.441456,
		-0.028174, -0.960272, -0.277639,
		13.235394, 14.910669, 27.184153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.932792, 15.382361, 27.149744>,  <13.255116, 15.582860, 27.378500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.932792, 15.382361, 27.149744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.704572, 15.093922, 26.992523>,  <13.567639, 14.920858, 26.898191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.704572, 15.093922, 26.992523>,  <13.932792, 15.382361, 27.149744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.704572, 15.093922, 26.992523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641101, -0.091947, -0.761928,
		0.513285, -0.686704, 0.514757,
		-0.570550, -0.721098, -0.393052,
		13.533407, 14.877592, 26.874607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.420019, 15.064024, 26.755308>,  <13.932792, 15.382361, 27.149744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.420019, 15.064024, 26.755308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.069764, 14.922536, 26.623770>,  <13.859611, 14.837644, 26.544847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.069764, 14.922536, 26.623770>,  <14.420019, 15.064024, 26.755308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.069764, 14.922536, 26.623770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462784, -0.419726, -0.780808,
		0.138161, -0.835890, 0.531224,
		-0.875638, -0.353719, -0.328847,
		13.807073, 14.816421, 26.525116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.383618, 14.302391, 26.701654>,  <14.420019, 15.064024, 26.755308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.383618, 14.302391, 26.701654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.101729, 14.437304, 26.451981>,  <13.932596, 14.518250, 26.302176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.101729, 14.437304, 26.451981>,  <14.383618, 14.302391, 26.701654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.101729, 14.437304, 26.451981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448456, -0.469974, -0.760271,
		-0.549776, -0.815699, 0.179945,
		-0.704722, 0.337281, -0.624186,
		13.890312, 14.538487, 26.264725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.215161, 13.678364, 26.264572>,  <14.383618, 14.302391, 26.701654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.215161, 13.678364, 26.264572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.098001, 14.008121, 26.070837>,  <14.027705, 14.205976, 25.954596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.098001, 14.008121, 26.070837>,  <14.215161, 13.678364, 26.264572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.098001, 14.008121, 26.070837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385850, -0.361564, -0.848758,
		-0.874831, -0.435483, -0.212190,
		-0.292900, 0.824394, -0.484339,
		14.010132, 14.255440, 25.925535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.755266, 13.399110, 25.721649>,  <14.215161, 13.678364, 26.264572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.755266, 13.399110, 25.721649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.870127, 13.765811, 25.610575>,  <13.939043, 13.985831, 25.543930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.870127, 13.765811, 25.610575>,  <13.755266, 13.399110, 25.721649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.870127, 13.765811, 25.610575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370989, -0.373709, -0.850123,
		-0.883126, 0.141094, -0.447415,
		0.287151, 0.916752, -0.277688,
		13.956272, 14.040836, 25.527267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.438554, 13.500643, 25.080729>,  <13.755266, 13.399110, 25.721649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.438554, 13.500643, 25.080729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.762103, 13.734342, 25.107206>,  <13.956232, 13.874560, 25.123093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.762103, 13.734342, 25.107206>,  <13.438554, 13.500643, 25.080729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.762103, 13.734342, 25.107206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316083, -0.337132, -0.886811,
		-0.495799, 0.738240, -0.457367,
		0.808873, 0.584246, 0.066195,
		14.004765, 13.909616, 25.127066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.085382, 13.017970, 24.706041>,  <13.438554, 13.500643, 25.080729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.085382, 13.017970, 24.706041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.759529, 12.841926, 24.554951>,  <12.564017, 12.736299, 24.464296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.759529, 12.841926, 24.554951>,  <13.085382, 13.017970, 24.706041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.759529, 12.841926, 24.554951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515237, 0.250156, 0.819727,
		-0.266281, 0.862394, -0.430547,
		-0.814632, -0.440111, -0.377725,
		12.515140, 12.709892, 24.441633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.505421, 13.474148, 24.976244>,  <13.085382, 13.017970, 24.706041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.505421, 13.474148, 24.976244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.365561, 13.117175, 24.862185>,  <12.281646, 12.902991, 24.793749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.365561, 13.117175, 24.862185>,  <12.505421, 13.474148, 24.976244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.365561, 13.117175, 24.862185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428316, -0.118427, 0.895835,
		-0.833242, 0.435362, -0.340835,
		-0.349648, -0.892432, -0.285151,
		12.260667, 12.849445, 24.776640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.844990, 13.421618, 25.231997>,  <12.505421, 13.474148, 24.976244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.844990, 13.421618, 25.231997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.930522, 13.036808, 25.164133>,  <11.981841, 12.805922, 25.123415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.930522, 13.036808, 25.164133>,  <11.844990, 13.421618, 25.231997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.930522, 13.036808, 25.164133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363951, -0.239627, 0.900066,
		-0.906541, -0.130714, -0.401370,
		0.213830, -0.962025, -0.169658,
		11.994671, 12.748200, 25.113235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.334703, 13.086050, 25.469429>,  <11.844990, 13.421618, 25.231997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.334703, 13.086050, 25.469429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.635537, 12.822527, 25.476851>,  <11.816037, 12.664413, 25.481304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.635537, 12.822527, 25.476851>,  <11.334703, 13.086050, 25.469429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.635537, 12.822527, 25.476851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257026, -0.267260, 0.928714,
		-0.606885, -0.703239, -0.370332,
		0.752083, -0.658807, 0.018554,
		11.861162, 12.624885, 25.482416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.015775, 12.454243, 25.822363>,  <11.334703, 13.086050, 25.469429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.015775, 12.454243, 25.822363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.414275, 12.419809, 25.825781>,  <11.653376, 12.399150, 25.827831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.414275, 12.419809, 25.825781>,  <11.015775, 12.454243, 25.822363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.414275, 12.419809, 25.825781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027457, -0.221002, 0.974887,
		-0.082030, -0.971467, -0.222537,
		0.996252, -0.086080, 0.008545,
		11.713151, 12.393985, 25.828344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.198955, 11.867030, 26.284012>,  <11.015775, 12.454243, 25.822363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.198955, 11.867030, 26.284012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.530699, 12.089690, 26.264818>,  <11.729745, 12.223287, 26.253302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.530699, 12.089690, 26.264818>,  <11.198955, 11.867030, 26.284012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.530699, 12.089690, 26.264818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006775, 0.095897, 0.995368,
		0.558674, -0.825193, 0.083304,
		0.829359, 0.556651, -0.047984,
		11.779507, 12.256685, 26.250423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.605712, 11.529630, 26.764591>,  <11.198955, 11.867030, 26.284012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.605712, 11.529630, 26.764591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.704007, 11.910472, 26.691811>,  <11.762984, 12.138977, 26.648142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.704007, 11.910472, 26.691811>,  <11.605712, 11.529630, 26.764591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.704007, 11.910472, 26.691811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049517, 0.199794, 0.978586,
		0.968071, -0.231466, 0.096242,
		0.245738, 0.952106, -0.181953,
		11.777729, 12.196104, 26.637224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.748591, 11.759851, 27.430052>,  <11.605712, 11.529630, 26.764591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.748591, 11.759851, 27.430052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.750618, 12.110610, 27.237793>,  <11.751834, 12.321066, 27.122438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.750618, 12.110610, 27.237793>,  <11.748591, 11.759851, 27.430052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.750618, 12.110610, 27.237793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156927, 0.475395, 0.865663,
		0.987597, 0.071041, 0.140017,
		0.005066, 0.876899, -0.480647,
		11.752138, 12.373680, 27.093599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.147443, 12.155062, 27.852091>,  <11.748591, 11.759851, 27.430052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.147443, 12.155062, 27.852091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.972144, 12.439042, 27.631578>,  <11.866964, 12.609430, 27.499271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.972144, 12.439042, 27.631578>,  <12.147443, 12.155062, 27.852091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.972144, 12.439042, 27.631578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080519, 0.579840, 0.810742,
		0.895241, 0.399694, -0.196949,
		-0.438248, 0.709951, -0.551279,
		11.840670, 12.652027, 27.466194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.480695, 12.803485, 27.995611>,  <12.147443, 12.155062, 27.852091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.480695, 12.803485, 27.995611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.139679, 12.907022, 27.813984>,  <11.935070, 12.969145, 27.705008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.139679, 12.907022, 27.813984>,  <12.480695, 12.803485, 27.995611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.139679, 12.907022, 27.813984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165964, 0.689728, 0.704792,
		0.495614, 0.676221, -0.545061,
		-0.852539, 0.258844, -0.454067,
		11.883917, 12.984675, 27.677763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.357568, 13.683354, 27.977303>,  <12.480695, 12.803485, 27.995611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.357568, 13.683354, 27.977303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.020885, 13.467605, 27.987099>,  <11.818874, 13.338155, 27.992977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.020885, 13.467605, 27.987099>,  <12.357568, 13.683354, 27.977303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.020885, 13.467605, 27.987099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301559, 0.507251, 0.807315,
		-0.447870, 0.672139, -0.589611,
		-0.841709, -0.539375, 0.024493,
		11.768372, 13.305792, 27.994446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.930748, 14.102902, 28.347269>,  <12.357568, 13.683354, 27.977303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.930748, 14.102902, 28.347269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.739239, 13.754149, 28.388449>,  <11.624333, 13.544898, 28.413157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.739239, 13.754149, 28.388449>,  <11.930748, 14.102902, 28.347269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.739239, 13.754149, 28.388449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473502, 0.355182, 0.806003,
		-0.739305, 0.337146, -0.582890,
		-0.478773, -0.871882, 0.102948,
		11.595607, 13.492585, 28.419333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.164339, 14.262427, 28.465576>,  <11.930748, 14.102902, 28.347269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.164339, 14.262427, 28.465576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.229430, 13.886939, 28.587114>,  <11.268485, 13.661646, 28.660038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.229430, 13.886939, 28.587114>,  <11.164339, 14.262427, 28.465576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.229430, 13.886939, 28.587114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425107, 0.211197, 0.880159,
		-0.890395, -0.272393, -0.364689,
		0.162728, -0.938721, 0.303845,
		11.278249, 13.605323, 28.678268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.728785, 14.376417, 28.978857>,  <11.164339, 14.262427, 28.465576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.728785, 14.376417, 28.978857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.882725, 14.019928, 29.074867>,  <10.975089, 13.806035, 29.132473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.882725, 14.019928, 29.074867>,  <10.728785, 14.376417, 28.978857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.882725, 14.019928, 29.074867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013518, 0.254585, 0.966956,
		-0.922880, -0.375379, 0.085930,
		0.384851, -0.891222, 0.240026,
		10.998180, 13.752562, 29.146875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.324944, 13.887229, 28.590334>,  <10.728785, 14.376417, 28.978857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.324944, 13.887229, 28.590334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.959607, 14.011129, 28.696060>,  <9.740405, 14.085470, 28.759497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.959607, 14.011129, 28.696060>,  <10.324944, 13.887229, 28.590334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.959607, 14.011129, 28.696060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290982, -0.042404, -0.955788,
		-0.284849, -0.949871, 0.128861,
		-0.913340, 0.309752, 0.264317,
		9.685605, 14.104055, 28.775354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.794947, 13.428115, 28.322300>,  <10.324944, 13.887229, 28.590334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.794947, 13.428115, 28.322300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.625301, 13.786819, 28.372818>,  <9.523514, 14.002041, 28.403128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.625301, 13.786819, 28.372818>,  <9.794947, 13.428115, 28.322300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.625301, 13.786819, 28.372818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180274, 0.053065, -0.982184,
		-0.887485, -0.439325, 0.139157,
		-0.424113, 0.896760, 0.126293,
		9.498067, 14.055846, 28.410706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.014046, 13.412380, 28.067200>,  <9.794947, 13.428115, 28.322300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.014046, 13.412380, 28.067200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.160663, 13.784539, 28.066021>,  <9.248632, 14.007834, 28.065313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.160663, 13.784539, 28.066021>,  <9.014046, 13.412380, 28.067200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.160663, 13.784539, 28.066021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176098, 0.066263, -0.982140,
		-0.913585, 0.360514, 0.188129,
		0.366541, 0.930397, -0.002949,
		9.270625, 14.063659, 28.065136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.430954, 13.714562, 27.658024>,  <9.014046, 13.412380, 28.067200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.430954, 13.714562, 27.658024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.727009, 13.982257, 27.684320>,  <8.904641, 14.142874, 27.700098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.727009, 13.982257, 27.684320>,  <8.430954, 13.714562, 27.658024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.727009, 13.982257, 27.684320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140189, 0.249177, -0.958258,
		-0.657681, 0.700025, 0.278244,
		0.740137, 0.669235, 0.065743,
		8.949050, 14.183027, 27.704042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.164721, 14.211678, 27.332670>,  <8.430954, 13.714562, 27.658024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.164721, 14.211678, 27.332670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.555683, 14.295890, 27.325163>,  <8.790261, 14.346417, 27.320658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.555683, 14.295890, 27.325163>,  <8.164721, 14.211678, 27.332670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.555683, 14.295890, 27.325163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045410, 0.122427, -0.991438,
		-0.206430, 0.969891, 0.129221,
		0.977407, 0.210530, -0.018770,
		8.848906, 14.359049, 27.319532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.226756, 14.813063, 27.037922>,  <8.164721, 14.211678, 27.332670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.226756, 14.813063, 27.037922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.579561, 14.633747, 26.979836>,  <8.791245, 14.526157, 26.944983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.579561, 14.633747, 26.979836>,  <8.226756, 14.813063, 27.037922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.579561, 14.633747, 26.979836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072511, 0.175385, -0.981826,
		0.465611, 0.876514, 0.122186,
		0.882014, -0.448289, -0.145218,
		8.844166, 14.499260, 26.936270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.725344, 15.261282, 26.738794>,  <8.226756, 14.813063, 27.037922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.725344, 15.261282, 26.738794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.873511, 14.897352, 26.663952>,  <8.962412, 14.678994, 26.619047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.873511, 14.897352, 26.663952>,  <8.725344, 15.261282, 26.738794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.873511, 14.897352, 26.663952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010732, 0.197229, -0.980299,
		0.928803, 0.365128, 0.063293,
		0.370418, -0.909825, -0.187105,
		8.984636, 14.624405, 26.607821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.300073, 15.692159, 26.891474>,  <8.725344, 15.261282, 26.738794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.300073, 15.692159, 26.891474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.384077, 16.083097, 26.880981>,  <9.434480, 16.317661, 26.874687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.384077, 16.083097, 26.880981>,  <9.300073, 15.692159, 26.891474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.384077, 16.083097, 26.880981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230781, 0.075624, 0.970062,
		0.950071, -0.197671, 0.241435,
		0.210012, 0.977347, -0.026230,
		9.447081, 16.376301, 26.873112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.715713, 15.793931, 27.526695>,  <9.300073, 15.692159, 26.891474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.715713, 15.793931, 27.526695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.557989, 16.146084, 27.421286>,  <9.463355, 16.357376, 27.358040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.557989, 16.146084, 27.421286>,  <9.715713, 15.793931, 27.526695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.557989, 16.146084, 27.421286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193693, 0.200700, 0.960314,
		0.898334, 0.429704, 0.091386,
		-0.394309, 0.880383, -0.263526,
		9.439696, 16.410198, 27.342228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.969216, 16.288635, 28.010014>,  <9.715713, 15.793931, 27.526695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.969216, 16.288635, 28.010014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.632863, 16.451303, 27.867165>,  <9.431051, 16.548904, 27.781456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.632863, 16.451303, 27.867165>,  <9.969216, 16.288635, 28.010014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.632863, 16.451303, 27.867165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266930, 0.262389, 0.927308,
		0.470812, 0.875084, -0.112086,
		-0.840883, 0.406669, -0.357122,
		9.380598, 16.573305, 27.760029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.968791, 16.867695, 28.382633>,  <9.969216, 16.288635, 28.010014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.968791, 16.867695, 28.382633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.610515, 16.836399, 28.207539>,  <9.395549, 16.817621, 28.102482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.610515, 16.836399, 28.207539>,  <9.968791, 16.867695, 28.382633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.610515, 16.836399, 28.207539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407369, 0.539055, 0.737204,
		0.178287, 0.838629, -0.514700,
		-0.895692, -0.078239, -0.437738,
		9.341807, 16.812927, 28.076218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.760887, 17.482805, 28.242853>,  <9.968791, 16.867695, 28.382633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.760887, 17.482805, 28.242853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.420894, 17.274048, 28.271574>,  <9.216898, 17.148794, 28.288807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.420894, 17.274048, 28.271574>,  <9.760887, 17.482805, 28.242853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.420894, 17.274048, 28.271574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324052, 0.625423, 0.709814,
		-0.415354, 0.580062, -0.700720,
		-0.849983, -0.521894, 0.071802,
		9.165898, 17.117479, 28.293114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.211477, 17.918871, 28.225990>,  <9.760887, 17.482805, 28.242853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.211477, 17.918871, 28.225990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.078360, 17.600830, 28.428795>,  <8.998489, 17.410006, 28.550478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.078360, 17.600830, 28.428795>,  <9.211477, 17.918871, 28.225990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.078360, 17.600830, 28.428795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295033, 0.598458, 0.744851,
		-0.895659, 0.098296, -0.433744,
		-0.332794, -0.795101, 0.507014,
		8.978521, 17.362299, 28.580898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.583787, 18.232433, 28.522594>,  <9.211477, 17.918871, 28.225990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.583787, 18.232433, 28.522594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.681204, 17.904270, 28.729523>,  <8.739654, 17.707373, 28.853680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.681204, 17.904270, 28.729523>,  <8.583787, 18.232433, 28.522594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.681204, 17.904270, 28.729523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212418, 0.475314, 0.853789,
		-0.946344, -0.317821, -0.058510,
		0.243541, -0.820406, 0.517321,
		8.754266, 17.658148, 28.884720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.160389, 18.183842, 29.064632>,  <8.583787, 18.232433, 28.522594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.160389, 18.183842, 29.064632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.418254, 17.908844, 29.198359>,  <8.572973, 17.743845, 29.278593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.418254, 17.908844, 29.198359>,  <8.160389, 18.183842, 29.064632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.418254, 17.908844, 29.198359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161143, 0.305283, 0.938528,
		-0.747291, -0.658906, 0.086020,
		0.644662, -0.687492, 0.334313,
		8.611652, 17.702597, 29.298653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.936601, 17.918905, 29.702730>,  <8.160389, 18.183842, 29.064632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.936601, 17.918905, 29.702730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.326043, 17.832766, 29.732975>,  <8.559709, 17.781082, 29.751122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.326043, 17.832766, 29.732975>,  <7.936601, 17.918905, 29.702730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.326043, 17.832766, 29.732975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027210, 0.219411, 0.975253,
		-0.226609, -0.951569, 0.207760,
		0.973606, -0.215348, 0.075613,
		8.618125, 17.768162, 29.755659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.929492, 15.488601, 14.189250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186546, 15.434677, 14.490937>,  <14.340779, 15.402323, 14.671949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186546, 15.434677, 14.490937>,  <13.929492, 15.488601, 14.189250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.186546, 15.434677, 14.490937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764907, -0.056353, 0.641671,
		-0.043974, -0.989273, -0.139300,
		0.642638, -0.134768, 0.754224,
		14.379337, 15.394235, 14.717203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.589204, 15.001570, 14.626622>,  <13.929492, 15.488601, 14.189250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.589204, 15.001570, 14.626622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.821852, 15.246392, 14.840951>,  <13.961441, 15.393286, 14.969548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.821852, 15.246392, 14.840951>,  <13.589204, 15.001570, 14.626622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.821852, 15.246392, 14.840951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667776, -0.016910, 0.744170,
		0.464535, -0.790633, 0.398882,
		0.581620, 0.612056, 0.535821,
		13.996338, 15.430009, 15.001698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.561935, 14.747536, 15.232374>,  <13.589204, 15.001570, 14.626622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.561935, 14.747536, 15.232374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.690315, 15.112629, 15.333495>,  <13.767344, 15.331685, 15.394168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.690315, 15.112629, 15.333495>,  <13.561935, 14.747536, 15.232374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.690315, 15.112629, 15.333495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710221, 0.055358, 0.701799,
		0.626561, -0.404788, 0.666009,
		0.320949, 0.912733, 0.252803,
		13.786600, 15.386449, 15.409336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.776959, 14.674864, 15.987797>,  <13.561935, 14.747536, 15.232374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.776959, 14.674864, 15.987797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.697368, 15.061154, 15.921128>,  <13.649612, 15.292929, 15.881127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.697368, 15.061154, 15.921128>,  <13.776959, 14.674864, 15.987797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.697368, 15.061154, 15.921128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441086, 0.063618, 0.895207,
		0.875129, 0.251644, 0.413310,
		-0.198980, 0.965727, -0.166671,
		13.637673, 15.350872, 15.871127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.982353, 15.085364, 16.631245>,  <13.776959, 14.674864, 15.987797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.982353, 15.085364, 16.631245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.752157, 15.365624, 16.462532>,  <13.614039, 15.533781, 16.361305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.752157, 15.365624, 16.462532>,  <13.982353, 15.085364, 16.631245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.752157, 15.365624, 16.462532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322586, 0.279444, 0.904350,
		0.751498, 0.656505, 0.065203,
		-0.575490, 0.700651, -0.421781,
		13.579511, 15.575820, 16.335999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.129207, 15.722942, 17.029467>,  <13.982353, 15.085364, 16.631245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.129207, 15.722942, 17.029467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.783565, 15.795018, 16.841486>,  <13.576180, 15.838264, 16.728699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.783565, 15.795018, 16.841486>,  <14.129207, 15.722942, 17.029467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.783565, 15.795018, 16.841486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395945, 0.333071, 0.855740,
		0.310722, 0.925524, -0.216464,
		-0.864106, 0.180189, -0.469950,
		13.524333, 15.849075, 16.700500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.938932, 16.306973, 17.365908>,  <14.129207, 15.722942, 17.029467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.938932, 16.306973, 17.365908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.603110, 16.196293, 17.178896>,  <13.401617, 16.129885, 17.066689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.603110, 16.196293, 17.178896>,  <13.938932, 16.306973, 17.365908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.603110, 16.196293, 17.178896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541025, 0.347569, 0.765825,
		-0.049405, 0.895897, -0.441505,
		-0.839554, -0.276701, -0.467531,
		13.351244, 16.113283, 17.038637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.382618, 16.848909, 17.617300>,  <13.938932, 16.306973, 17.365908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.382618, 16.848909, 17.617300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.191296, 16.539869, 17.450296>,  <13.076502, 16.354446, 17.350094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.191296, 16.539869, 17.450296>,  <13.382618, 16.848909, 17.617300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.191296, 16.539869, 17.450296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751275, 0.113791, 0.650106,
		-0.454762, 0.624614, -0.634861,
		-0.478307, -0.772599, -0.417509,
		13.047804, 16.308090, 17.325043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.639053, 17.037325, 17.359694>,  <13.382618, 16.848909, 17.617300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.639053, 17.037325, 17.359694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.648069, 16.643194, 17.427362>,  <12.653479, 16.406715, 17.467964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.648069, 16.643194, 17.427362>,  <12.639053, 17.037325, 17.359694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.648069, 16.643194, 17.427362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725024, 0.100398, 0.681367,
		-0.688355, -0.138011, -0.712124,
		0.022540, -0.985329, 0.169171,
		12.654832, 16.347595, 17.478113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.915058, 16.824553, 17.488508>,  <12.639053, 17.037325, 17.359694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.915058, 16.824553, 17.488508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.112123, 16.519659, 17.656454>,  <12.230363, 16.336723, 17.757221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.112123, 16.519659, 17.656454>,  <11.915058, 16.824553, 17.488508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.112123, 16.519659, 17.656454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640055, 0.009494, 0.768270,
		-0.589586, -0.647235, -0.483193,
		0.492664, -0.762232, 0.419864,
		12.259923, 16.290989, 17.782413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.359120, 16.330700, 17.723701>,  <11.915058, 16.824553, 17.488508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.359120, 16.330700, 17.723701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.699252, 16.273624, 17.926317>,  <11.903331, 16.239378, 18.047886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.699252, 16.273624, 17.926317>,  <11.359120, 16.330700, 17.723701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.699252, 16.273624, 17.926317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512701, -0.007609, 0.858533,
		-0.118655, -0.989737, -0.079630,
		0.850328, -0.142696, 0.506537,
		11.954350, 16.230818, 18.078278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.139826, 15.821295, 18.182400>,  <11.359120, 16.330700, 17.723701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.139826, 15.821295, 18.182400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.462535, 15.992322, 18.345520>,  <11.656160, 16.094938, 18.443392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.462535, 15.992322, 18.345520>,  <11.139826, 15.821295, 18.182400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.462535, 15.992322, 18.345520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483642, 0.081393, 0.871473,
		0.339423, -0.900311, 0.272456,
		0.806773, 0.427569, 0.407801,
		11.704567, 16.120592, 18.467861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.384051, 15.289929, 17.799618>,  <11.139826, 15.821295, 18.182400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.384051, 15.289929, 17.799618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.366553, 14.897810, 17.876665>,  <11.356054, 14.662539, 17.922894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.366553, 14.897810, 17.876665>,  <11.384051, 15.289929, 17.799618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.366553, 14.897810, 17.876665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176961, -0.197357, -0.964228,
		0.983245, -0.008094, 0.182108,
		-0.043745, -0.980298, 0.192618,
		11.353430, 14.603721, 17.934450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.996269, 14.846195, 17.542990>,  <11.384051, 15.289929, 17.799618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.996269, 14.846195, 17.542990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.696506, 14.584204, 17.581747>,  <11.516647, 14.427009, 17.605001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.696506, 14.584204, 17.581747>,  <11.996269, 14.846195, 17.542990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.696506, 14.584204, 17.581747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106852, -0.264061, -0.958569,
		0.653428, -0.708007, 0.267876,
		-0.749409, -0.654979, 0.096893,
		11.471683, 14.387711, 17.610815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.163158, 14.218170, 17.124893>,  <11.996269, 14.846195, 17.542990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.163158, 14.218170, 17.124893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.769921, 14.182532, 17.188881>,  <11.533979, 14.161149, 17.227274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.769921, 14.182532, 17.188881>,  <12.163158, 14.218170, 17.124893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.769921, 14.182532, 17.188881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104359, -0.445226, -0.889316,
		0.150457, -0.890975, 0.428400,
		-0.983093, -0.089096, 0.159969,
		11.474994, 14.155804, 17.236872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.979933, 13.563717, 17.018436>,  <12.163158, 14.218170, 17.124893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.979933, 13.563717, 17.018436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.640879, 13.772989, 16.983116>,  <11.437447, 13.898553, 16.961924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.640879, 13.772989, 16.983116>,  <11.979933, 13.563717, 17.018436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.640879, 13.772989, 16.983116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222503, -0.501587, -0.836004,
		-0.481669, -0.688981, 0.541572,
		-0.847636, 0.523179, -0.088299,
		11.386588, 13.929944, 16.956625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.445625, 13.061169, 16.991318>,  <11.979933, 13.563717, 17.018436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.445625, 13.061169, 16.991318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.291539, 13.400845, 16.846825>,  <11.199087, 13.604650, 16.760130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.291539, 13.400845, 16.846825>,  <11.445625, 13.061169, 16.991318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.291539, 13.400845, 16.846825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396057, -0.505689, -0.766432,
		-0.833516, -0.152173, 0.531126,
		-0.385215, 0.849189, -0.361231,
		11.175975, 13.655602, 16.738455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.820667, 12.895993, 16.661184>,  <11.445625, 13.061169, 16.991318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.820667, 12.895993, 16.661184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.926268, 13.240969, 16.488440>,  <10.989628, 13.447954, 16.384792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.926268, 13.240969, 16.488440>,  <10.820667, 12.895993, 16.661184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.926268, 13.240969, 16.488440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019578, -0.452444, -0.891578,
		-0.964323, 0.226923, -0.136331,
		0.264002, 0.862438, -0.431860,
		11.005468, 13.499701, 16.358881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.228297, 13.099924, 16.157463>,  <10.820667, 12.895993, 16.661184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.228297, 13.099924, 16.157463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.529343, 13.332592, 16.034023>,  <10.709970, 13.472193, 15.959959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.529343, 13.332592, 16.034023>,  <10.228297, 13.099924, 16.157463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.529343, 13.332592, 16.034023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064653, -0.531681, -0.844473,
		-0.655281, 0.615610, -0.437757,
		0.752613, 0.581670, -0.308599,
		10.755127, 13.507092, 15.941443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.100060, 13.359175, 15.422310>,  <10.228297, 13.099924, 16.157463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.100060, 13.359175, 15.422310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.492016, 13.430640, 15.457844>,  <10.727190, 13.473519, 15.479164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.492016, 13.430640, 15.457844>,  <10.100060, 13.359175, 15.422310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.492016, 13.430640, 15.457844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158312, -0.425162, -0.891164,
		-0.121450, 0.887308, -0.444898,
		0.979892, 0.178664, 0.088836,
		10.785983, 13.484240, 15.484494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.309009, 13.705992, 14.750499>,  <10.100060, 13.359175, 15.422310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.309009, 13.705992, 14.750499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.642121, 13.590680, 14.939548>,  <10.841989, 13.521493, 15.052977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.642121, 13.590680, 14.939548>,  <10.309009, 13.705992, 14.750499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.642121, 13.590680, 14.939548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374644, -0.335056, -0.864511,
		0.407574, 0.897013, -0.171026,
		0.832781, -0.288278, 0.472621,
		10.891955, 13.504196, 15.081334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.970956, 13.988471, 14.446263>,  <10.309009, 13.705992, 14.750499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.970956, 13.988471, 14.446263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.055938, 13.649214, 14.640383>,  <11.106927, 13.445660, 14.756854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.055938, 13.649214, 14.640383>,  <10.970956, 13.988471, 14.446263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.055938, 13.649214, 14.640383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331066, -0.404789, -0.852374,
		0.919379, 0.341758, 0.194792,
		0.212456, -0.848144, 0.485299,
		11.119675, 13.394771, 14.785973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.682480, 13.874657, 14.282951>,  <10.970956, 13.988471, 14.446263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.682480, 13.874657, 14.282951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.518438, 13.519680, 14.367105>,  <11.420013, 13.306694, 14.417596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.518438, 13.519680, 14.367105>,  <11.682480, 13.874657, 14.282951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.518438, 13.519680, 14.367105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491579, -0.409379, -0.768609,
		0.768222, -0.211790, 0.604136,
		-0.410104, -0.887443, 0.210382,
		11.395408, 13.253448, 14.430220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.206119, 13.449867, 14.011101>,  <11.682480, 13.874657, 14.282951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.206119, 13.449867, 14.011101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.903920, 13.198747, 14.086032>,  <11.722601, 13.048074, 14.130990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.903920, 13.198747, 14.086032>,  <12.206119, 13.449867, 14.011101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.903920, 13.198747, 14.086032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409746, -0.675882, -0.612611,
		0.511210, -0.386068, 0.767865,
		-0.755495, -0.627802, 0.187328,
		11.677272, 13.010406, 14.142230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.530339, 12.932845, 14.200435>,  <12.206119, 13.449867, 14.011101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.530339, 12.932845, 14.200435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.178970, 12.823340, 14.043755>,  <11.968149, 12.757638, 13.949746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.178970, 12.823340, 14.043755>,  <12.530339, 12.932845, 14.200435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.178970, 12.823340, 14.043755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477117, -0.455923, -0.751328,
		0.027099, -0.846870, 0.531109,
		-0.878422, -0.273762, -0.391701,
		11.915443, 12.741212, 13.926244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.506279, 12.213854, 13.788625>,  <12.530339, 12.932845, 14.200435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.506279, 12.213854, 13.788625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.200686, 12.437130, 13.659163>,  <12.017330, 12.571095, 13.581485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.200686, 12.437130, 13.659163>,  <12.506279, 12.213854, 13.788625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.200686, 12.437130, 13.659163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247605, -0.209584, -0.945921,
		-0.595838, -0.802806, 0.021908,
		-0.763982, 0.558191, -0.323656,
		11.971491, 12.604588, 13.562065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.051572, 11.832199, 14.216737>,  <12.506279, 12.213854, 13.788625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.051572, 11.832199, 14.216737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.996671, 12.089346, 14.518169>,  <12.963730, 12.243634, 14.699029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.996671, 12.089346, 14.518169>,  <13.051572, 11.832199, 14.216737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.996671, 12.089346, 14.518169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749756, 0.429751, -0.503170,
		-0.647323, -0.634063, 0.423009,
		-0.137253, 0.642867, 0.753580,
		12.955495, 12.282206, 14.744244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.580008, 11.661963, 14.587316>,  <13.051572, 11.832199, 14.216737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.580008, 11.661963, 14.587316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.873750, 11.474505, 14.390909>,  <14.049995, 11.362031, 14.273066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.873750, 11.474505, 14.390909>,  <13.580008, 11.661963, 14.587316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.873750, 11.474505, 14.390909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240996, -0.496245, 0.834064,
		-0.634542, -0.730832, -0.251479,
		0.734355, -0.468643, -0.491016,
		14.094056, 11.333913, 14.243605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.651924, 10.792017, 14.468671>,  <13.580008, 11.661963, 14.587316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.651924, 10.792017, 14.468671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.986716, 11.003164, 14.526382>,  <14.187592, 11.129853, 14.561009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.986716, 11.003164, 14.526382>,  <13.651924, 10.792017, 14.468671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.986716, 11.003164, 14.526382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162158, -0.491055, 0.855903,
		0.522654, -0.692979, -0.496602,
		0.836981, 0.527869, 0.144280,
		14.237810, 11.161525, 14.569666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.187776, 10.342665, 14.715106>,  <13.651924, 10.792017, 14.468671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.187776, 10.342665, 14.715106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.335340, 10.695476, 14.832361>,  <14.423880, 10.907163, 14.902715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.335340, 10.695476, 14.832361>,  <14.187776, 10.342665, 14.715106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.335340, 10.695476, 14.832361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199885, -0.232717, 0.951782,
		0.907716, -0.409718, 0.090452,
		0.368913, 0.882028, 0.293138,
		14.446014, 10.960084, 14.920302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.309061, 10.246493, 15.434870>,  <14.187776, 10.342665, 14.715106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.309061, 10.246493, 15.434870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.346754, 10.643631, 15.405528>,  <14.369370, 10.881913, 15.387923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.346754, 10.643631, 15.405528>,  <14.309061, 10.246493, 15.434870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.346754, 10.643631, 15.405528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101362, 0.082868, 0.991392,
		0.990377, -0.085986, 0.108446,
		0.094233, 0.992844, -0.073355,
		14.375024, 10.941484, 15.383522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.951036, 10.552231, 15.746300>,  <14.309061, 10.246493, 15.434870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.951036, 10.552231, 15.746300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.673368, 10.840138, 15.743137>,  <14.506767, 11.012883, 15.741240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.673368, 10.840138, 15.743137>,  <14.951036, 10.552231, 15.746300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.673368, 10.840138, 15.743137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035531, -0.023294, 0.999097,
		0.718934, 0.693824, 0.041744,
		-0.694170, 0.719768, -0.007906,
		14.465117, 11.056068, 15.740766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.998132, 10.952231, 16.344584>,  <14.951036, 10.552231, 15.746300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.998132, 10.952231, 16.344584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.643076, 11.109725, 16.249025>,  <14.430042, 11.204221, 16.191690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.643076, 11.109725, 16.249025>,  <14.998132, 10.952231, 16.344584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.643076, 11.109725, 16.249025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214237, 0.106164, 0.970995,
		0.407676, 0.913073, -0.009883,
		-0.887639, 0.393734, -0.238895,
		14.376784, 11.227845, 16.177357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.945251, 11.556895, 16.715897>,  <14.998132, 10.952231, 16.344584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.945251, 11.556895, 16.715897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.571404, 11.450459, 16.621508>,  <14.347095, 11.386597, 16.564875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.571404, 11.450459, 16.621508>,  <14.945251, 11.556895, 16.715897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.571404, 11.450459, 16.621508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293466, 0.202185, 0.934344,
		-0.200912, 0.942505, -0.267055,
		-0.934619, -0.266093, -0.235972,
		14.291018, 11.370630, 16.550716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.456820, 12.076556, 16.862764>,  <14.945251, 11.556895, 16.715897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.456820, 12.076556, 16.862764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.213884, 11.758794, 16.865887>,  <14.068123, 11.568136, 16.867760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.213884, 11.758794, 16.865887>,  <14.456820, 12.076556, 16.862764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.213884, 11.758794, 16.865887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334133, 0.264341, 0.904698,
		-0.720760, 0.546850, -0.425981,
		-0.607339, -0.794405, 0.007805,
		14.031683, 11.520473, 16.868229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.853292, 12.460497, 17.111675>,  <14.456820, 12.076556, 16.862764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.853292, 12.460497, 17.111675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.828796, 12.065976, 17.172937>,  <13.814099, 11.829264, 17.209694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.828796, 12.065976, 17.172937>,  <13.853292, 12.460497, 17.111675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.828796, 12.065976, 17.172937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547585, 0.161488, 0.821019,
		-0.834506, -0.033588, -0.549974,
		-0.061238, -0.986303, 0.153155,
		13.810425, 11.770085, 17.218884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.216373, 12.432016, 17.435932>,  <13.853292, 12.460497, 17.111675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.216373, 12.432016, 17.435932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.386504, 12.077987, 17.511553>,  <13.488583, 11.865569, 17.556925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.386504, 12.077987, 17.511553>,  <13.216373, 12.432016, 17.435932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.386504, 12.077987, 17.511553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487093, -0.047806, 0.872041,
		-0.762783, -0.462989, -0.451447,
		0.425327, -0.885074, 0.189053,
		13.514102, 11.812465, 17.568268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.665764, 12.067770, 17.675104>,  <13.216373, 12.432016, 17.435932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.665764, 12.067770, 17.675104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.999919, 11.897058, 17.813660>,  <13.200412, 11.794630, 17.896793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.999919, 11.897058, 17.813660>,  <12.665764, 12.067770, 17.675104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.999919, 11.897058, 17.813660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426808, -0.106562, 0.898042,
		-0.346357, -0.898054, -0.271175,
		0.835387, -0.426783, 0.346388,
		13.250535, 11.769023, 17.917576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.517015, 11.681882, 18.193575>,  <12.665764, 12.067770, 17.675104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.517015, 11.681882, 18.193575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.911401, 11.713316, 18.252497>,  <13.148032, 11.732176, 18.287849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.911401, 11.713316, 18.252497>,  <12.517015, 11.681882, 18.193575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.911401, 11.713316, 18.252497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145944, -0.022807, 0.989030,
		0.081083, -0.996646, -0.011018,
		0.985965, 0.078585, 0.147304,
		13.207191, 11.736892, 18.296688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.561482, 11.384899, 18.791023>,  <12.517015, 11.681882, 18.193575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.561482, 11.384899, 18.791023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.921045, 11.559711, 18.778545>,  <13.136783, 11.664598, 18.771059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.921045, 11.559711, 18.778545>,  <12.561482, 11.384899, 18.791023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.921045, 11.559711, 18.778545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085585, 0.244970, 0.965746,
		0.429700, -0.865445, 0.257609,
		0.898906, 0.437029, -0.031195,
		13.190718, 11.690819, 18.769188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.848808, 11.182692, 19.323164>,  <12.561482, 11.384899, 18.791023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.848808, 11.182692, 19.323164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.082191, 11.494786, 19.233002>,  <13.222220, 11.682043, 19.178904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.082191, 11.494786, 19.233002>,  <12.848808, 11.182692, 19.323164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.082191, 11.494786, 19.233002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035396, 0.252852, 0.966857,
		0.811373, -0.572098, 0.119911,
		0.583457, 0.780237, -0.225407,
		13.257228, 11.728857, 19.165380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.539179, 11.193604, 19.687227>,  <12.848808, 11.182692, 19.323164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.539179, 11.193604, 19.687227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.455253, 11.570478, 19.582718>,  <13.404897, 11.796603, 19.520012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.455253, 11.570478, 19.582718>,  <13.539179, 11.193604, 19.687227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.455253, 11.570478, 19.582718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117116, 0.289514, 0.949982,
		0.970702, 0.168721, -0.171090,
		-0.209815, 0.942186, -0.261272,
		13.392308, 11.853134, 19.504337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.096204, 11.577606, 19.981359>,  <13.539179, 11.193604, 19.687227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.096204, 11.577606, 19.981359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.798594, 11.831894, 19.899105>,  <13.620028, 11.984467, 19.849752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.798594, 11.831894, 19.899105>,  <14.096204, 11.577606, 19.981359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.798594, 11.831894, 19.899105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185060, 0.491800, 0.850815,
		0.642011, 0.594974, -0.483558,
		-0.744026, 0.635720, -0.205635,
		13.575386, 12.022610, 19.837414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.377427, 12.120858, 20.337185>,  <14.096204, 11.577606, 19.981359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.377427, 12.120858, 20.337185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.984999, 12.177793, 20.284668>,  <13.749541, 12.211953, 20.253157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.984999, 12.177793, 20.284668>,  <14.377427, 12.120858, 20.337185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.984999, 12.177793, 20.284668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113380, 0.127421, 0.985347,
		0.156980, 0.981583, -0.108871,
		-0.981072, 0.142336, -0.131294,
		13.690677, 12.220493, 20.245279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.103740, 12.809301, 20.683121>,  <14.377427, 12.120858, 20.337185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.103740, 12.809301, 20.683121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.794280, 12.557635, 20.653133>,  <13.608604, 12.406636, 20.635141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.794280, 12.557635, 20.653133>,  <14.103740, 12.809301, 20.683121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.794280, 12.557635, 20.653133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307834, 0.269809, 0.912382,
		-0.553810, 0.728942, -0.402415,
		-0.773649, -0.629164, -0.074970,
		13.562185, 12.368886, 20.630642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.553815, 13.214433, 20.997986>,  <14.103740, 12.809301, 20.683121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.553815, 13.214433, 20.997986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.422349, 12.837339, 20.975243>,  <13.343470, 12.611083, 20.961597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.422349, 12.837339, 20.975243>,  <13.553815, 13.214433, 20.997986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.422349, 12.837339, 20.975243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410424, 0.088346, 0.907605,
		-0.850607, 0.321633, -0.415956,
		-0.328664, -0.942734, -0.056858,
		13.323750, 12.554520, 20.958185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.802879, 13.188077, 21.078936>,  <13.553815, 13.214433, 20.997986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.802879, 13.188077, 21.078936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.962631, 12.839360, 21.192408>,  <13.058482, 12.630130, 21.260490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.962631, 12.839360, 21.192408>,  <12.802879, 13.188077, 21.078936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.962631, 12.839360, 21.192408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519756, 0.039590, 0.853397,
		-0.755216, -0.488274, -0.437307,
		0.399378, -0.871792, 0.283682,
		13.082445, 12.577823, 21.277512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.250166, 12.926552, 21.439569>,  <12.802879, 13.188077, 21.078936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.250166, 12.926552, 21.439569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.561482, 12.700352, 21.548729>,  <12.748272, 12.564631, 21.614223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.561482, 12.700352, 21.548729>,  <12.250166, 12.926552, 21.439569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.561482, 12.700352, 21.548729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291943, 0.058880, 0.954622,
		-0.555908, -0.822643, -0.119269,
		0.778290, -0.565501, 0.272897,
		12.794970, 12.530702, 21.630598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.957711, 12.419946, 21.883902>,  <12.250166, 12.926552, 21.439569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.957711, 12.419946, 21.883902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.348971, 12.410348, 21.966507>,  <12.583727, 12.404590, 22.016069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.348971, 12.410348, 21.966507>,  <11.957711, 12.419946, 21.883902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.348971, 12.410348, 21.966507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206928, -0.208436, 0.955895,
		0.020111, -0.977742, -0.208846,
		0.978149, -0.023992, 0.206514,
		12.642416, 12.403150, 22.028461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.091838, 11.823477, 22.404789>,  <11.957711, 12.419946, 21.883902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.091838, 11.823477, 22.404789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.415663, 12.058134, 22.396214>,  <12.609958, 12.198929, 22.391068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.415663, 12.058134, 22.396214>,  <12.091838, 11.823477, 22.404789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.415663, 12.058134, 22.396214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098244, -0.099389, 0.990187,
		0.578755, -0.803723, -0.138095,
		0.809561, 0.586643, -0.021439,
		12.658531, 12.234127, 22.389782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.594299, 11.469070, 22.789753>,  <12.091838, 11.823477, 22.404789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.594299, 11.469070, 22.789753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.682907, 11.859082, 22.783466>,  <12.736072, 12.093089, 22.779696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.682907, 11.859082, 22.783466>,  <12.594299, 11.469070, 22.789753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.682907, 11.859082, 22.783466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133903, 0.046377, 0.989909,
		0.965919, -0.217179, 0.140833,
		0.221519, 0.975030, -0.015715,
		12.749363, 12.151591, 22.778751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.092487, 11.575823, 23.288063>,  <12.594299, 11.469070, 22.789753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.092487, 11.575823, 23.288063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.924561, 11.935474, 23.238552>,  <12.823805, 12.151265, 23.208845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.924561, 11.935474, 23.238552>,  <13.092487, 11.575823, 23.288063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.924561, 11.935474, 23.238552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180325, 0.051028, 0.982283,
		0.889515, 0.434699, 0.140713,
		-0.419817, 0.899129, -0.123777,
		12.798615, 12.205214, 23.201418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.304007, 11.972863, 23.852970>,  <13.092487, 11.575823, 23.288063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.304007, 11.972863, 23.852970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.022684, 12.229269, 23.730034>,  <12.853890, 12.383113, 23.656271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.022684, 12.229269, 23.730034>,  <13.304007, 11.972863, 23.852970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.022684, 12.229269, 23.730034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185054, 0.252344, 0.949777,
		0.686377, 0.724860, -0.058853,
		-0.703307, 0.641015, -0.307341,
		12.811692, 12.421574, 23.637831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.424142, 12.433797, 24.275539>,  <13.304007, 11.972863, 23.852970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.424142, 12.433797, 24.275539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.043917, 12.481916, 24.161024>,  <12.815782, 12.510788, 24.092316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.043917, 12.481916, 24.161024>,  <13.424142, 12.433797, 24.275539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.043917, 12.481916, 24.161024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264031, 0.172190, 0.949020,
		0.163461, 0.977691, -0.131915,
		-0.950562, 0.120298, -0.286287,
		12.758748, 12.518005, 24.075138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
