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
	<24.072821, 35.097633, 34.607105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.442019, 35.069733, 34.758480>,  <24.663536, 35.052994, 34.849304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.442019, 35.069733, 34.758480>,  <24.072821, 35.097633, 34.607105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.442019, 35.069733, 34.758480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063385, 0.997560, 0.029272,
		-0.379560, -0.003030, 0.925162,
		0.922994, -0.069752, 0.378442,
		24.718916, 35.048805, 34.872013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.093624, 35.521980, 35.308289>,  <24.072821, 35.097633, 34.607105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.093624, 35.521980, 35.308289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379549, 35.476116, 35.032345>,  <24.551104, 35.448597, 34.866779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379549, 35.476116, 35.032345>,  <24.093624, 35.521980, 35.308289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.379549, 35.476116, 35.032345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076189, 0.967828, -0.239800,
		0.695156, 0.223971, 0.683078,
		0.714810, -0.114656, -0.689855,
		24.593992, 35.441719, 34.825390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.706280, 35.753551, 35.494568>,  <24.093624, 35.521980, 35.308289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.706280, 35.753551, 35.494568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702095, 35.781166, 35.095543>,  <24.699585, 35.797733, 34.856129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702095, 35.781166, 35.095543>,  <24.706280, 35.753551, 35.494568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.702095, 35.781166, 35.095543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259039, 0.963745, 0.063981,
		0.965810, -0.257738, -0.027964,
		-0.010460, 0.069037, -0.997559,
		24.698957, 35.801876, 34.796276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.399715, 36.157742, 35.258888>,  <24.706280, 35.753551, 35.494568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.399715, 36.157742, 35.258888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156309, 36.166885, 34.941605>,  <25.010265, 36.172371, 34.751232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156309, 36.166885, 34.941605>,  <25.399715, 36.157742, 35.258888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.156309, 36.166885, 34.941605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334378, 0.913898, -0.230179,
		0.719652, -0.405301, -0.563766,
		-0.608516, 0.022862, -0.793212,
		24.973755, 36.173744, 34.703640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.860054, 36.344624, 34.681797>,  <25.399715, 36.157742, 35.258888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.860054, 36.344624, 34.681797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477829, 36.429657, 34.600109>,  <25.248493, 36.480675, 34.551094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477829, 36.429657, 34.600109>,  <25.860054, 36.344624, 34.681797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.477829, 36.429657, 34.600109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256671, 0.940713, -0.221763,
		0.144972, -0.264327, -0.953475,
		-0.955564, 0.212580, -0.204222,
		25.191160, 36.493431, 34.538841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.733461, 36.587769, 33.922268>,  <25.860054, 36.344624, 34.681797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.733461, 36.587769, 33.922268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478670, 36.721710, 34.200008>,  <25.325794, 36.802074, 34.366653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478670, 36.721710, 34.200008>,  <25.733461, 36.587769, 33.922268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478670, 36.721710, 34.200008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191487, 0.941229, -0.278247,
		-0.746719, -0.044278, -0.663664,
		-0.636980, 0.334855, 0.694355,
		25.287577, 36.822166, 34.408314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329229, 37.064209, 33.589241>,  <25.733461, 36.587769, 33.922268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.329229, 37.064209, 33.589241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261127, 37.176495, 33.967068>,  <25.220266, 37.243866, 34.193764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261127, 37.176495, 33.967068>,  <25.329229, 37.064209, 33.589241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.261127, 37.176495, 33.967068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001143, 0.958507, -0.285066,
		-0.985399, -0.049614, -0.162872,
		-0.170257, 0.280718, 0.944569,
		25.210051, 37.260712, 34.250439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.570791, 37.438759, 33.674271>,  <25.329229, 37.064209, 33.589241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.570791, 37.438759, 33.674271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.849566, 37.561634, 33.933475>,  <25.016830, 37.635357, 34.088997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.849566, 37.561634, 33.933475>,  <24.570791, 37.438759, 33.674271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.849566, 37.561634, 33.933475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050026, 0.922235, -0.383379,
		-0.715385, 0.234774, 0.658107,
		0.696937, 0.307186, 0.648009,
		25.058647, 37.653790, 34.127876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.260412, 37.981800, 34.126362>,  <24.570791, 37.438759, 33.674271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.260412, 37.981800, 34.126362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.654903, 38.034016, 34.085743>,  <24.891598, 38.065346, 34.061371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.654903, 38.034016, 34.085743>,  <24.260412, 37.981800, 34.126362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.654903, 38.034016, 34.085743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161409, 0.893536, -0.418976,
		0.036043, 0.429597, 0.902301,
		0.986229, 0.130538, -0.101547,
		24.950771, 38.073177, 34.055279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.395016, 38.712181, 34.391239>,  <24.260412, 37.981800, 34.126362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.395016, 38.712181, 34.391239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.705656, 38.612522, 34.159786>,  <24.892040, 38.552727, 34.020912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.705656, 38.612522, 34.159786>,  <24.395016, 38.712181, 34.391239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.705656, 38.612522, 34.159786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103913, 0.855237, -0.507713,
		0.621366, 0.454417, 0.638286,
		0.776599, -0.249149, -0.578635,
		24.938635, 38.537777, 33.986195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.891645, 39.366028, 34.266800>,  <24.395016, 38.712181, 34.391239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.891645, 39.366028, 34.266800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.929144, 39.108971, 33.962635>,  <24.951643, 38.954735, 33.780136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.929144, 39.108971, 33.962635>,  <24.891645, 39.366028, 34.266800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.929144, 39.108971, 33.962635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069731, 0.757659, -0.648915,
		0.993151, 0.113858, 0.026216,
		0.093747, -0.642643, -0.760409,
		24.957268, 38.916180, 33.734512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.528149, 39.527050, 33.847191>,  <24.891645, 39.366028, 34.266800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.528149, 39.527050, 33.847191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204350, 39.368938, 33.673542>,  <25.010071, 39.274071, 33.569351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204350, 39.368938, 33.673542>,  <25.528149, 39.527050, 33.847191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.204350, 39.368938, 33.673542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138333, 0.847002, -0.513275,
		0.570592, -0.355442, -0.740328,
		-0.809499, -0.395283, -0.434124,
		24.961500, 39.250355, 33.543304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.480179, 39.655415, 33.113113>,  <25.528149, 39.527050, 33.847191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.480179, 39.655415, 33.113113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100721, 39.609455, 33.231014>,  <24.873047, 39.581879, 33.301754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100721, 39.609455, 33.231014>,  <25.480179, 39.655415, 33.113113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.100721, 39.609455, 33.231014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257209, 0.822571, -0.507170,
		-0.184181, -0.556935, -0.809877,
		-0.948642, -0.114897, 0.294750,
		24.816130, 39.574986, 33.319439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.782507, 39.876705, 32.770405>,  <25.480179, 39.655415, 33.113113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.782507, 39.876705, 32.770405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.032181, 39.624870, 32.585358>,  <25.181986, 39.473770, 32.474331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.032181, 39.624870, 32.585358>,  <24.782507, 39.876705, 32.770405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.032181, 39.624870, 32.585358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036530, -0.567960, 0.822245,
		-0.780422, -0.530133, -0.331514,
		0.624186, -0.629588, -0.462614,
		25.219437, 39.435993, 32.446575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.470076, 39.194141, 32.626373>,  <24.782507, 39.876705, 32.770405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.470076, 39.194141, 32.626373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.863607, 39.212090, 32.695732>,  <25.099726, 39.222858, 32.737347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.863607, 39.212090, 32.695732>,  <24.470076, 39.194141, 32.626373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.863607, 39.212090, 32.695732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114785, -0.585238, 0.802696,
		0.137499, -0.809619, -0.570623,
		0.983829, 0.044871, 0.173402,
		25.158756, 39.225552, 32.747753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.741127, 38.522915, 32.647789>,  <24.470076, 39.194141, 32.626373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.741127, 38.522915, 32.647789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983500, 38.739746, 32.880684>,  <25.128923, 38.869843, 33.020420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983500, 38.739746, 32.880684>,  <24.741127, 38.522915, 32.647789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.983500, 38.739746, 32.880684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012541, -0.738319, 0.674335,
		0.795419, -0.401298, -0.454168,
		0.605930, 0.542074, 0.582241,
		25.165279, 38.902367, 33.055355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.394047, 38.103458, 32.787933>,  <24.741127, 38.522915, 32.647789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.394047, 38.103458, 32.787933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.282259, 38.374039, 33.060493>,  <25.215187, 38.536388, 33.224030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.282259, 38.374039, 33.060493>,  <25.394047, 38.103458, 32.787933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.282259, 38.374039, 33.060493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085494, -0.689328, 0.719387,
		0.956341, 0.259301, 0.134813,
		-0.279468, 0.676454, 0.681402,
		25.198418, 38.576973, 33.264915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944113, 38.109421, 33.257679>,  <25.394047, 38.103458, 32.787933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944113, 38.109421, 33.257679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616198, 38.233292, 33.450367>,  <25.419449, 38.307613, 33.565979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616198, 38.233292, 33.450367>,  <25.944113, 38.109421, 33.257679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616198, 38.233292, 33.450367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239221, -0.579093, 0.779375,
		0.520311, 0.754158, 0.400652,
		-0.819786, 0.309673, 0.481719,
		25.370262, 38.326195, 33.594883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197922, 38.272911, 33.932682>,  <25.944113, 38.109421, 33.257679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197922, 38.272911, 33.932682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802841, 38.216412, 33.959499>,  <25.565792, 38.182510, 33.975590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802841, 38.216412, 33.959499>,  <26.197922, 38.272911, 33.932682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.802841, 38.216412, 33.959499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136525, -0.570134, 0.810129,
		-0.076208, 0.809318, 0.582406,
		-0.987701, -0.141252, 0.067043,
		25.506531, 38.174038, 33.979610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933462, 38.314064, 34.710873>,  <26.197922, 38.272911, 33.932682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933462, 38.314064, 34.710873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715641, 38.097000, 34.455067>,  <25.584949, 37.966763, 34.301582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715641, 38.097000, 34.455067>,  <25.933462, 38.314064, 34.710873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.715641, 38.097000, 34.455067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053514, -0.783413, 0.619193,
		-0.837018, 0.302960, 0.455649,
		-0.544552, -0.542660, -0.639518,
		25.552275, 37.934200, 34.263210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.853685, 37.734131, 35.164673>,  <25.933462, 38.314064, 34.710873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.853685, 37.734131, 35.164673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555088, 37.758335, 34.899620>,  <25.375929, 37.772858, 34.740589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555088, 37.758335, 34.899620>,  <25.853685, 37.734131, 35.164673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.555088, 37.758335, 34.899620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366805, -0.868297, 0.333936,
		-0.555159, 0.492340, 0.670373,
		-0.746493, 0.060508, -0.662636,
		25.331141, 37.776489, 34.700829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.172531, 37.682755, 35.477081>,  <25.853685, 37.734131, 35.164673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.172531, 37.682755, 35.477081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.129108, 37.567448, 35.096531>,  <25.103056, 37.498264, 34.868202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.129108, 37.567448, 35.096531>,  <25.172531, 37.682755, 35.477081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.129108, 37.567448, 35.096531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336397, -0.889919, 0.308029,
		-0.935443, 0.353478, -0.000367,
		-0.108555, -0.288267, -0.951377,
		25.096542, 37.480968, 34.811119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.546095, 37.308514, 35.398777>,  <25.172531, 37.682755, 35.477081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.546095, 37.308514, 35.398777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.779190, 37.166309, 35.106468>,  <24.919048, 37.080986, 34.931084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.779190, 37.166309, 35.106468>,  <24.546095, 37.308514, 35.398777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.779190, 37.166309, 35.106468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215026, -0.934638, 0.283223,
		-0.783695, -0.007911, -0.621096,
		0.582740, -0.355512, -0.730770,
		24.954012, 37.059654, 34.887238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.128014, 36.830048, 34.901897>,  <24.546095, 37.308514, 35.398777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.128014, 36.830048, 34.901897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.519808, 36.749973, 34.911137>,  <24.754885, 36.701927, 34.916679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.519808, 36.749973, 34.911137>,  <24.128014, 36.830048, 34.901897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.519808, 36.749973, 34.911137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192103, -0.892961, 0.407083,
		-0.060866, -0.403169, -0.913099,
		0.979486, -0.200186, 0.023099,
		24.813654, 36.689919, 34.918068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.946987, 36.684605, 34.166767>,  <24.128014, 36.830048, 34.901897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.946987, 36.684605, 34.166767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.325554, 36.629459, 34.283585>,  <24.552694, 36.596371, 34.353676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.325554, 36.629459, 34.283585>,  <23.946987, 36.684605, 34.166767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.325554, 36.629459, 34.283585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196693, -0.963295, 0.182687,
		0.256137, -0.230341, -0.938796,
		0.946417, -0.137862, 0.292042,
		24.609480, 36.588100, 34.371197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.232546, 36.364059, 33.639591>,  <23.946987, 36.684605, 34.166767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.232546, 36.364059, 33.639591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.441422, 36.290409, 33.972679>,  <24.566748, 36.246220, 34.172531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.441422, 36.290409, 33.972679>,  <24.232546, 36.364059, 33.639591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.441422, 36.290409, 33.972679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142292, -0.981539, -0.127806,
		0.840876, -0.051750, -0.538748,
		0.522189, -0.184129, 0.832716,
		24.598078, 36.235172, 34.222492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.744997, 35.975105, 33.492035>,  <24.232546, 36.364059, 33.639591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.744997, 35.975105, 33.492035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.705935, 35.925144, 33.886974>,  <24.682497, 35.895168, 34.123940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.705935, 35.925144, 33.886974>,  <24.744997, 35.975105, 33.492035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.705935, 35.925144, 33.886974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098846, -0.988406, -0.115255,
		0.990299, 0.086340, 0.108872,
		-0.097659, -0.124899, 0.987352,
		24.676638, 35.887676, 34.183178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002483, 35.255714, 33.566814>,  <24.744997, 35.975105, 33.492035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.002483, 35.255714, 33.566814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.789440, 35.323586, 33.898487>,  <24.661613, 35.364307, 34.097488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.789440, 35.323586, 33.898487>,  <25.002483, 35.255714, 33.566814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.789440, 35.323586, 33.898487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136357, -0.984103, 0.113792,
		0.835305, -0.052458, 0.547279,
		-0.532610, 0.169676, 0.829179,
		24.629658, 35.374489, 34.147240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.259842, 34.809860, 34.132668>,  <25.002483, 35.255714, 33.566814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.259842, 34.809860, 34.132668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.877016, 34.912315, 34.186962>,  <24.647322, 34.973789, 34.219540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.877016, 34.912315, 34.186962>,  <25.259842, 34.809860, 34.132668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.877016, 34.912315, 34.186962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238731, -0.962054, 0.132140,
		0.164431, 0.094062, 0.981894,
		-0.957064, 0.256136, 0.135736,
		24.589897, 34.989155, 34.227684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.016642, 34.320370, 33.645889>,  <25.259842, 34.809860, 34.132668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.016642, 34.320370, 33.645889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325687, 34.067532, 33.622135>,  <25.511114, 33.915829, 33.607883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325687, 34.067532, 33.622135>,  <25.016642, 34.320370, 33.645889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.325687, 34.067532, 33.622135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065321, -0.013900, 0.997767,
		-0.631506, -0.774769, 0.030549,
		0.772614, -0.632092, -0.059387,
		25.557472, 33.877903, 33.604321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.810177, 33.817253, 34.167233>,  <25.016642, 34.320370, 33.645889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.810177, 33.817253, 34.167233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203129, 33.825882, 34.092972>,  <25.438900, 33.831059, 34.048416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203129, 33.825882, 34.092972>,  <24.810177, 33.817253, 34.167233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203129, 33.825882, 34.092972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186665, -0.063076, 0.980397,
		0.009443, -0.997775, -0.065992,
		0.982378, 0.021576, -0.185654,
		25.497843, 33.832355, 34.037277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.182306, 33.205509, 34.429909>,  <24.810177, 33.817253, 34.167233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.182306, 33.205509, 34.429909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464733, 33.486942, 34.397816>,  <25.634190, 33.655804, 34.378559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464733, 33.486942, 34.397816>,  <25.182306, 33.205509, 34.429909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464733, 33.486942, 34.397816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421774, -0.326819, 0.845752,
		0.568838, -0.630997, -0.527510,
		0.706067, 0.703586, -0.080231,
		25.676554, 33.698017, 34.373745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878311, 32.916893, 34.502625>,  <25.182306, 33.205509, 34.429909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878311, 32.916893, 34.502625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949192, 33.302208, 34.583305>,  <25.991720, 33.533398, 34.631714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949192, 33.302208, 34.583305>,  <25.878311, 32.916893, 34.502625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.949192, 33.302208, 34.583305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601432, -0.268217, 0.752555,
		0.779025, -0.012040, -0.626878,
		0.177200, 0.963283, 0.201707,
		26.002352, 33.591194, 34.643818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552481, 32.957912, 34.785721>,  <25.878311, 32.916893, 34.502625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552481, 32.957912, 34.785721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366524, 33.284710, 34.922192>,  <26.254950, 33.480789, 35.004074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366524, 33.284710, 34.922192>,  <26.552481, 32.957912, 34.785721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366524, 33.284710, 34.922192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373139, -0.168655, 0.912317,
		0.802896, 0.551435, -0.226445,
		-0.464893, 0.816991, 0.341174,
		26.227057, 33.529808, 35.024544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052399, 33.329262, 35.228592>,  <26.552481, 32.957912, 34.785721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052399, 33.329262, 35.228592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683758, 33.429668, 35.347012>,  <26.462574, 33.489910, 35.418064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683758, 33.429668, 35.347012>,  <27.052399, 33.329262, 35.228592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683758, 33.429668, 35.347012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292844, -0.050927, 0.954803,
		0.254746, 0.966643, -0.026574,
		-0.921600, 0.251015, 0.296049,
		26.407278, 33.504974, 35.435825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975983, 33.967377, 35.022705>,  <27.052399, 33.329262, 35.228592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975983, 33.967377, 35.022705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676691, 33.957272, 35.287891>,  <26.497116, 33.951206, 35.447002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676691, 33.957272, 35.287891>,  <26.975983, 33.967377, 35.022705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676691, 33.957272, 35.287891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647197, -0.247579, 0.720999,
		0.145919, 0.968538, 0.201597,
		-0.748227, -0.025266, 0.662962,
		26.452223, 33.949692, 35.486778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332924, 33.860909, 35.707596>,  <26.975983, 33.967377, 35.022705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332924, 33.860909, 35.707596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943460, 33.818897, 35.788551>,  <26.709784, 33.793690, 35.837124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943460, 33.818897, 35.788551>,  <27.332924, 33.860909, 35.707596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943460, 33.818897, 35.788551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225390, -0.308915, 0.923997,
		-0.034521, 0.945273, 0.324449,
		-0.973657, -0.105025, 0.202391,
		26.651363, 33.787388, 35.849270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314060, 34.154633, 36.390755>,  <27.332924, 33.860909, 35.707596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314060, 34.154633, 36.390755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969952, 33.958187, 36.335987>,  <26.763487, 33.840321, 36.303127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969952, 33.958187, 36.335987>,  <27.314060, 34.154633, 36.390755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969952, 33.958187, 36.335987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101072, -0.427493, 0.898351,
		-0.499719, 0.758986, 0.417397,
		-0.860270, -0.491110, -0.136914,
		26.711870, 33.810856, 36.294914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014400, 34.215714, 36.937721>,  <27.314060, 34.154633, 36.390755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014400, 34.215714, 36.937721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871258, 33.860680, 36.821705>,  <26.785372, 33.647659, 36.752094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871258, 33.860680, 36.821705>,  <27.014400, 34.215714, 36.937721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871258, 33.860680, 36.821705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269893, -0.395671, 0.877840,
		-0.893922, 0.235861, 0.381147,
		-0.357857, -0.887589, -0.290042,
		26.763901, 33.594402, 36.734692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697985, 33.833443, 37.526756>,  <27.014400, 34.215714, 36.937721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697985, 33.833443, 37.526756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512093, 34.151764, 37.371464>,  <26.400557, 34.342758, 37.278290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512093, 34.151764, 37.371464>,  <26.697985, 33.833443, 37.526756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512093, 34.151764, 37.371464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789530, -0.570914, -0.225167,
		-0.400836, 0.201878, 0.893631,
		-0.464730, 0.795803, -0.388231,
		26.372673, 34.390507, 37.254993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245628, 33.255566, 37.359455>,  <26.697985, 33.833443, 37.526756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245628, 33.255566, 37.359455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866816, 33.148273, 37.430092>,  <26.639528, 33.083897, 37.472473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866816, 33.148273, 37.430092>,  <27.245628, 33.255566, 37.359455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866816, 33.148273, 37.430092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255918, 0.298131, -0.919578,
		0.194007, -0.916063, -0.350984,
		-0.947031, -0.268227, 0.176597,
		26.582706, 33.067806, 37.483070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925709, 32.743420, 36.867279>,  <27.245628, 33.255566, 37.359455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925709, 32.743420, 36.867279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681170, 33.041031, 36.975117>,  <26.534447, 33.219597, 37.039818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681170, 33.041031, 36.975117>,  <26.925709, 32.743420, 36.867279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681170, 33.041031, 36.975117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095970, 0.268449, -0.958501,
		-0.785522, -0.611850, -0.092711,
		-0.611347, 0.744027, 0.269592,
		26.497765, 33.264240, 37.055996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229088, 32.771862, 36.525490>,  <26.925709, 32.743420, 36.867279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.229088, 32.771862, 36.525490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303219, 33.154949, 36.613522>,  <26.347698, 33.384800, 36.666340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303219, 33.154949, 36.613522>,  <26.229088, 32.771862, 36.525490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.303219, 33.154949, 36.613522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286511, 0.266891, -0.920153,
		-0.939981, 0.107477, 0.323858,
		0.185330, 0.957715, 0.220079,
		26.358818, 33.442265, 36.679546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628349, 33.103668, 36.257683>,  <26.229088, 32.771862, 36.525490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.628349, 33.103668, 36.257683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.940191, 33.354095, 36.263981>,  <26.127296, 33.504353, 36.267761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.940191, 33.354095, 36.263981>,  <25.628349, 33.103668, 36.257683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.940191, 33.354095, 36.263981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258384, 0.344450, -0.902547,
		-0.570485, 0.699562, 0.430302,
		0.779605, 0.626073, 0.015748,
		26.174072, 33.541916, 36.268703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.328733, 33.715115, 36.074020>,  <25.628349, 33.103668, 36.257683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.328733, 33.715115, 36.074020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721401, 33.731834, 35.999641>,  <25.957003, 33.741867, 35.955013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721401, 33.731834, 35.999641>,  <25.328733, 33.715115, 36.074020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.721401, 33.731834, 35.999641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181002, 0.510044, -0.840889,
		0.059690, 0.859132, 0.508261,
		0.981670, 0.041803, -0.185949,
		26.015902, 33.744377, 35.943855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507607, 34.432198, 35.898468>,  <25.328733, 33.715115, 36.074020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.507607, 34.432198, 35.898468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765497, 34.170227, 35.740788>,  <25.920233, 34.013046, 35.646179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765497, 34.170227, 35.740788>,  <25.507607, 34.432198, 35.898468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765497, 34.170227, 35.740788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153236, 0.394494, -0.906032,
		0.748895, 0.644551, 0.153984,
		0.644729, -0.654926, -0.394203,
		25.958916, 33.973747, 35.622528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882305, 34.713364, 35.521732>,  <25.507607, 34.432198, 35.898468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882305, 34.713364, 35.521732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943336, 34.349270, 35.367752>,  <25.979956, 34.130814, 35.275364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943336, 34.349270, 35.367752>,  <25.882305, 34.713364, 35.521732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943336, 34.349270, 35.367752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132586, 0.367139, -0.920668,
		0.979357, 0.191513, -0.064668,
		0.152578, -0.910238, -0.384952,
		25.989109, 34.076199, 35.252266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.313799, 34.753189, 34.965755>,  <25.882305, 34.713364, 35.521732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.313799, 34.753189, 34.965755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130823, 34.408852, 34.876579>,  <26.021038, 34.202251, 34.823074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130823, 34.408852, 34.876579>,  <26.313799, 34.753189, 34.965755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130823, 34.408852, 34.876579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068830, 0.284230, -0.956282,
		0.886573, -0.422096, -0.189270,
		-0.457440, -0.860841, -0.222938,
		25.993591, 34.150600, 34.809696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494564, 34.739014, 34.304237>,  <26.313799, 34.753189, 34.965755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494564, 34.739014, 34.304237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217041, 34.451073, 34.312634>,  <26.050528, 34.278309, 34.317673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217041, 34.451073, 34.312634>,  <26.494564, 34.739014, 34.304237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217041, 34.451073, 34.312634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140912, 0.107116, -0.984210,
		0.706238, -0.685812, -0.175754,
		-0.693810, -0.719852, 0.020990,
		26.008898, 34.235119, 34.318932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606514, 34.126308, 33.827877>,  <26.494564, 34.739014, 34.304237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606514, 34.126308, 33.827877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211561, 34.170444, 33.873310>,  <25.974590, 34.196926, 33.900570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211561, 34.170444, 33.873310>,  <26.606514, 34.126308, 33.827877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.211561, 34.170444, 33.873310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108959, 0.047121, -0.992929,
		-0.114917, -0.992776, -0.034504,
		-0.987381, 0.110345, 0.113587,
		25.915346, 34.203548, 33.907387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731339, 33.771366, 33.089077>,  <26.606514, 34.126308, 33.827877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.731339, 33.771366, 33.089077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859571, 34.008423, 32.793510>,  <26.936512, 34.150658, 32.616169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859571, 34.008423, 32.793510>,  <26.731339, 33.771366, 33.089077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859571, 34.008423, 32.793510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661701, -0.698306, -0.272985,
		-0.677774, -0.401429, -0.616017,
		0.320584, 0.592641, -0.738919,
		26.955748, 34.186214, 32.571835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.899174, 33.427841, 32.441013>,  <26.731339, 33.771366, 33.089077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.899174, 33.427841, 32.441013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134073, 33.749432, 32.403564>,  <27.275013, 33.942387, 32.381096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134073, 33.749432, 32.403564>,  <26.899174, 33.427841, 32.441013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134073, 33.749432, 32.403564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721621, -0.572432, -0.389340,
		-0.366610, 0.161082, -0.916324,
		0.587249, 0.803974, -0.093619,
		27.310247, 33.990623, 32.375477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053373, 33.451866, 31.774481>,  <26.899174, 33.427841, 32.441013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053373, 33.451866, 31.774481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333548, 33.606167, 32.014675>,  <27.501652, 33.698750, 32.158791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333548, 33.606167, 32.014675>,  <27.053373, 33.451866, 31.774481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333548, 33.606167, 32.014675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642114, -0.707894, -0.294237,
		0.311578, 0.591675, -0.743532,
		0.700435, 0.385755, 0.600487,
		27.543678, 33.721893, 32.194820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702738, 33.169762, 31.479250>,  <27.053373, 33.451866, 31.774481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702738, 33.169762, 31.479250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907465, 33.377129, 31.753267>,  <28.030302, 33.501549, 31.917679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907465, 33.377129, 31.753267>,  <27.702738, 33.169762, 31.479250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907465, 33.377129, 31.753267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740157, -0.670908, -0.045278,
		0.436130, 0.530215, -0.727092,
		0.511818, 0.518415, 0.685045,
		28.061010, 33.532654, 31.958780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341139, 33.098751, 31.171412>,  <27.702738, 33.169762, 31.479250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341139, 33.098751, 31.171412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392473, 33.240963, 31.541737>,  <28.423273, 33.326290, 31.763931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392473, 33.240963, 31.541737>,  <28.341139, 33.098751, 31.171412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392473, 33.240963, 31.541737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906573, -0.420527, 0.035820,
		0.402064, 0.834721, -0.376279,
		0.128336, 0.355526, 0.925814,
		28.430973, 33.347622, 31.819481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877651, 33.709507, 31.222952>,  <28.341139, 33.098751, 31.171412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877651, 33.709507, 31.222952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846790, 33.442673, 31.519342>,  <28.828274, 33.282574, 31.697176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846790, 33.442673, 31.519342>,  <28.877651, 33.709507, 31.222952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846790, 33.442673, 31.519342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938102, -0.300264, -0.172644,
		0.337656, 0.681790, 0.648961,
		-0.077152, -0.667086, 0.740974,
		28.823645, 33.242546, 31.741634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340992, 33.963245, 31.784260>,  <28.877651, 33.709507, 31.222952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340992, 33.963245, 31.784260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291159, 33.569496, 31.734465>,  <29.261259, 33.333248, 31.704588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291159, 33.569496, 31.734465>,  <29.340992, 33.963245, 31.784260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291159, 33.569496, 31.734465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955476, -0.085198, -0.282501,
		0.267479, -0.154138, 0.951155,
		-0.124581, -0.984369, -0.124487,
		29.253784, 33.274185, 31.697119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831030, 33.615623, 32.165401>,  <29.340992, 33.963245, 31.784260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831030, 33.615623, 32.165401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719604, 33.366058, 31.873337>,  <29.652750, 33.216320, 31.698097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719604, 33.366058, 31.873337>,  <29.831030, 33.615623, 32.165401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719604, 33.366058, 31.873337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920316, 0.043992, -0.388695,
		0.274632, -0.780258, 0.561939,
		-0.278561, -0.623909, -0.730165,
		29.636036, 33.178886, 31.654287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353512, 33.093475, 32.256092>,  <29.831030, 33.615623, 32.165401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353512, 33.093475, 32.256092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188238, 33.140888, 31.894932>,  <30.089073, 33.169334, 31.678236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188238, 33.140888, 31.894932>,  <30.353512, 33.093475, 32.256092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188238, 33.140888, 31.894932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886226, -0.175733, -0.428627,
		-0.209475, -0.977276, -0.032434,
		-0.413187, 0.118531, -0.902899,
		30.064281, 33.176449, 31.624062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742743, 32.660255, 31.694908>,  <30.353512, 33.093475, 32.256092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742743, 32.660255, 31.694908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533401, 32.933712, 31.491442>,  <30.407797, 33.097786, 31.369362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533401, 32.933712, 31.491442>,  <30.742743, 32.660255, 31.694908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533401, 32.933712, 31.491442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662075, -0.049555, -0.747798,
		-0.536430, -0.728136, -0.426685,
		-0.523354, 0.683639, -0.508664,
		30.376394, 33.138805, 31.338842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715986, 32.362324, 30.991619>,  <30.742743, 32.660255, 31.694908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715986, 32.362324, 30.991619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651340, 32.757061, 30.993343>,  <30.612553, 32.993904, 30.994379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651340, 32.757061, 30.993343>,  <30.715986, 32.362324, 30.991619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651340, 32.757061, 30.993343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438130, 0.075666, -0.895721,
		-0.884264, -0.142873, -0.444595,
		-0.161615, 0.986845, 0.004312,
		30.602856, 33.053116, 30.994637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508629, 32.623352, 30.339087>,  <30.715986, 32.362324, 30.991619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508629, 32.623352, 30.339087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720062, 32.881828, 30.559282>,  <30.846922, 33.036915, 30.691401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720062, 32.881828, 30.559282>,  <30.508629, 32.623352, 30.339087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720062, 32.881828, 30.559282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769386, -0.090688, -0.632313,
		-0.358671, 0.757770, -0.545105,
		0.528583, 0.646189, 0.550491,
		30.878637, 33.075684, 30.724430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572346, 33.232418, 29.913271>,  <30.508629, 32.623352, 30.339087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572346, 33.232418, 29.913271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849146, 33.126728, 30.181993>,  <31.015226, 33.063316, 30.343227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849146, 33.126728, 30.181993>,  <30.572346, 33.232418, 29.913271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849146, 33.126728, 30.181993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682818, -0.062479, -0.727912,
		0.234304, 0.962436, 0.137179,
		0.691998, -0.264221, 0.671808,
		31.056746, 33.047462, 30.383535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155098, 33.678127, 29.660007>,  <30.572346, 33.232418, 29.913271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155098, 33.678127, 29.660007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228735, 33.338612, 29.858263>,  <31.272917, 33.134903, 29.977217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228735, 33.338612, 29.858263>,  <31.155098, 33.678127, 29.660007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228735, 33.338612, 29.858263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576610, -0.315114, -0.753806,
		0.796009, 0.424563, 0.431412,
		0.184094, -0.848793, 0.495641,
		31.283964, 33.083973, 30.006956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848486, 33.654964, 29.601101>,  <31.155098, 33.678127, 29.660007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848486, 33.654964, 29.601101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688490, 33.290276, 29.638563>,  <31.592493, 33.071461, 29.661041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688490, 33.290276, 29.638563>,  <31.848486, 33.654964, 29.601101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688490, 33.290276, 29.638563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504792, -0.304439, -0.807776,
		0.764979, -0.275825, 0.582003,
		-0.399989, -0.911722, 0.093655,
		31.568493, 33.016758, 29.666660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302639, 33.038994, 29.654007>,  <31.848486, 33.654964, 29.601101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302639, 33.038994, 29.654007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984219, 32.932236, 29.436728>,  <31.793165, 32.868179, 29.306360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984219, 32.932236, 29.436728>,  <32.302639, 33.038994, 29.654007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984219, 32.932236, 29.436728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604811, -0.383962, -0.697693,
		-0.022355, -0.883934, 0.467077,
		-0.796055, -0.266896, -0.543197,
		31.745401, 32.852165, 29.273767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409115, 32.360023, 29.517885>,  <32.302639, 33.038994, 29.654007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409115, 32.360023, 29.517885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190685, 32.562702, 29.251034>,  <32.059628, 32.684311, 29.090923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190685, 32.562702, 29.251034>,  <32.409115, 32.360023, 29.517885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190685, 32.562702, 29.251034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560352, -0.371046, -0.740493,
		-0.622739, -0.778193, -0.081308,
		-0.546078, 0.506696, -0.667127,
		32.026863, 32.714710, 29.050896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211510, 31.947414, 28.908314>,  <32.409115, 32.360023, 29.517885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211510, 31.947414, 28.908314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218731, 32.328415, 28.786715>,  <32.223064, 32.557014, 28.713755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218731, 32.328415, 28.786715>,  <32.211510, 31.947414, 28.908314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218731, 32.328415, 28.786715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296619, -0.295464, -0.908140,
		-0.954825, -0.073774, -0.287865,
		0.018057, 0.952501, -0.303999,
		32.224148, 32.614166, 28.695515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120174, 31.905884, 28.152527>,  <32.211510, 31.947414, 28.908314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120174, 31.905884, 28.152527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264118, 32.272705, 28.221247>,  <32.350487, 32.492798, 28.262478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264118, 32.272705, 28.221247>,  <32.120174, 31.905884, 28.152527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264118, 32.272705, 28.221247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601059, -0.087031, -0.794452,
		-0.713601, 0.389156, -0.582521,
		0.359863, 0.917051, 0.171800,
		32.372078, 32.547821, 28.272787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139759, 32.368134, 27.475876>,  <32.120174, 31.905884, 28.152527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139759, 32.368134, 27.475876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414791, 32.503036, 27.733088>,  <32.579811, 32.583981, 27.887415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414791, 32.503036, 27.733088>,  <32.139759, 32.368134, 27.475876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414791, 32.503036, 27.733088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668780, 0.050742, -0.741727,
		-0.282783, 0.940043, -0.190663,
		0.687581, 0.337260, 0.643031,
		32.621067, 32.604214, 27.925997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412365, 33.026386, 27.106113>,  <32.139759, 32.368134, 27.475876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412365, 33.026386, 27.106113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660076, 32.927429, 27.404186>,  <32.808701, 32.868057, 27.583031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660076, 32.927429, 27.404186>,  <32.412365, 33.026386, 27.106113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660076, 32.927429, 27.404186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780252, 0.087785, -0.619274,
		0.087785, 0.964931, 0.247388,
		0.619274, -0.247388, 0.745184,
		32.845860, 32.853214, 27.627741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960270, 33.495235, 27.110060>,  <32.412365, 33.026386, 27.106113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960270, 33.495235, 27.110060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108051, 33.177979, 27.303734>,  <33.196720, 32.987625, 27.419939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108051, 33.177979, 27.303734>,  <32.960270, 33.495235, 27.110060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108051, 33.177979, 27.303734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827412, 0.043616, -0.559899,
		0.422959, 0.607477, 0.672367,
		0.369452, -0.793139, 0.484186,
		33.218887, 32.940037, 27.448990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591789, 33.621967, 27.072065>,  <32.960270, 33.495235, 27.110060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591789, 33.621967, 27.072065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615738, 33.249645, 27.216293>,  <33.630108, 33.026253, 27.302830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615738, 33.249645, 27.216293>,  <33.591789, 33.621967, 27.072065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615738, 33.249645, 27.216293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835175, -0.151129, -0.528813,
		0.546716, 0.332802, 0.768339,
		0.059872, -0.930808, 0.360572,
		33.633698, 32.970402, 27.324465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218571, 33.548355, 27.352015>,  <33.591789, 33.621967, 27.072065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218571, 33.548355, 27.352015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112007, 33.174889, 27.256268>,  <34.048069, 32.950809, 27.198818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112007, 33.174889, 27.256268>,  <34.218571, 33.548355, 27.352015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112007, 33.174889, 27.256268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801140, -0.076414, -0.593578,
		0.535912, -0.349902, 0.768354,
		-0.266407, -0.933665, -0.239370,
		34.032085, 32.894791, 27.184456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895851, 33.104980, 27.454399>,  <34.218571, 33.548355, 27.352015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895851, 33.104980, 27.454399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655205, 32.878414, 27.229105>,  <34.510818, 32.742474, 27.093929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655205, 32.878414, 27.229105>,  <34.895851, 33.104980, 27.454399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655205, 32.878414, 27.229105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775689, -0.245939, -0.581223,
		0.190692, -0.786568, 0.587322,
		-0.601617, -0.566414, -0.563233,
		34.474720, 32.708488, 27.060135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359653, 32.484406, 27.218325>,  <34.895851, 33.104980, 27.454399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359653, 32.484406, 27.218325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043579, 32.498055, 26.973557>,  <34.853935, 32.506245, 26.826696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043579, 32.498055, 26.973557>,  <35.359653, 32.484406, 27.218325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043579, 32.498055, 26.973557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598498, -0.171989, -0.782445,
		-0.131941, -0.984508, 0.115481,
		-0.790184, 0.034122, -0.611918,
		34.806522, 32.508289, 26.789982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250420, 31.791960, 26.903875>,  <35.359653, 32.484406, 27.218325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250420, 31.791960, 26.903875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092247, 32.034569, 26.627972>,  <34.997345, 32.180134, 26.462429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092247, 32.034569, 26.627972>,  <35.250420, 31.791960, 26.903875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092247, 32.034569, 26.627972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765468, -0.197431, -0.612438,
		-0.507638, -0.770162, -0.386205,
		-0.395428, 0.606524, -0.689758,
		34.973618, 32.216526, 26.421045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223518, 31.291256, 26.294878>,  <35.250420, 31.791960, 26.903875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223518, 31.291256, 26.294878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175129, 31.660269, 26.148289>,  <35.146095, 31.881676, 26.060335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175129, 31.660269, 26.148289>,  <35.223518, 31.291256, 26.294878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175129, 31.660269, 26.148289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313237, -0.314843, -0.895967,
		-0.941938, -0.223185, -0.250882,
		-0.120978, 0.922531, -0.366472,
		35.138836, 31.937029, 26.038347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107769, 31.168354, 25.544374>,  <35.223518, 31.291256, 26.294878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107769, 31.168354, 25.544374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198704, 31.556087, 25.581699>,  <35.253265, 31.788729, 25.604094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198704, 31.556087, 25.581699>,  <35.107769, 31.168354, 25.544374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198704, 31.556087, 25.581699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430551, -0.014104, -0.902456,
		-0.873466, 0.245338, -0.420554,
		0.227338, 0.969335, 0.093311,
		35.266907, 31.846888, 25.609694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976498, 31.418907, 24.934341>,  <35.107769, 31.168354, 25.544374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976498, 31.418907, 24.934341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216412, 31.687321, 25.108686>,  <35.360359, 31.848368, 25.213293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216412, 31.687321, 25.108686>,  <34.976498, 31.418907, 24.934341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216412, 31.687321, 25.108686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542585, 0.059276, -0.837907,
		-0.588098, 0.739055, -0.328539,
		0.599785, 0.671032, 0.435861,
		35.396347, 31.888630, 25.239445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963448, 31.927660, 24.405085>,  <34.976498, 31.418907, 24.934341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963448, 31.927660, 24.405085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271755, 31.960884, 24.657757>,  <35.456738, 31.980818, 24.809361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271755, 31.960884, 24.657757>,  <34.963448, 31.927660, 24.405085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271755, 31.960884, 24.657757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626189, 0.084093, -0.775123,
		-0.117501, 0.992990, 0.012805,
		0.770766, 0.083059, 0.631681,
		35.502987, 31.985802, 24.847261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300232, 32.622669, 24.311714>,  <34.963448, 31.927660, 24.405085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300232, 32.622669, 24.311714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610630, 32.426003, 24.469748>,  <35.796867, 32.308002, 24.564568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610630, 32.426003, 24.469748>,  <35.300232, 32.622669, 24.311714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610630, 32.426003, 24.469748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532917, 0.176027, -0.827656,
		0.337387, 0.852805, 0.398615,
		0.775996, -0.491669, 0.395085,
		35.843430, 32.278503, 24.588272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759899, 32.885235, 23.967243>,  <35.300232, 32.622669, 24.311714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759899, 32.885235, 23.967243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960205, 32.570389, 24.111288>,  <36.080387, 32.381481, 24.197716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960205, 32.570389, 24.111288>,  <35.759899, 32.885235, 23.967243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960205, 32.570389, 24.111288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467710, -0.104017, -0.877740,
		0.728343, 0.607969, 0.316055,
		0.500764, -0.787118, 0.360113,
		36.110435, 32.334255, 24.219322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362045, 33.095306, 23.841717>,  <35.759899, 32.885235, 23.967243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362045, 33.095306, 23.841717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366066, 32.697037, 23.878653>,  <36.368477, 32.458073, 23.900814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366066, 32.697037, 23.878653>,  <36.362045, 33.095306, 23.841717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366066, 32.697037, 23.878653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383500, -0.081444, -0.919943,
		0.923486, 0.044655, 0.381023,
		0.010048, -0.995677, 0.092338,
		36.369080, 32.398335, 23.906353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027626, 32.887173, 23.731350>,  <36.362045, 33.095306, 23.841717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027626, 32.887173, 23.731350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799614, 32.569313, 23.647829>,  <36.662807, 32.378597, 23.597717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799614, 32.569313, 23.647829>,  <37.027626, 32.887173, 23.731350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799614, 32.569313, 23.647829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444691, -0.084699, -0.891670,
		0.690878, -0.601134, 0.401653,
		-0.570033, -0.794647, -0.208803,
		36.628605, 32.330917, 23.585188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469357, 32.434273, 23.499645>,  <37.027626, 32.887173, 23.731350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469357, 32.434273, 23.499645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126129, 32.284229, 23.359354>,  <36.920193, 32.194202, 23.275179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126129, 32.284229, 23.359354>,  <37.469357, 32.434273, 23.499645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126129, 32.284229, 23.359354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439684, -0.183791, -0.879147,
		0.265313, -0.908579, 0.322634,
		-0.858072, -0.375106, -0.350726,
		36.868706, 32.171696, 23.254137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595638, 31.753275, 23.296003>,  <37.469357, 32.434273, 23.499645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595638, 31.753275, 23.296003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289207, 31.841051, 23.054352>,  <37.105350, 31.893717, 22.909361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289207, 31.841051, 23.054352>,  <37.595638, 31.753275, 23.296003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289207, 31.841051, 23.054352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532517, -0.309647, -0.787746,
		-0.359930, -0.925184, 0.120358,
		-0.766078, 0.219441, -0.604127,
		37.059383, 31.906883, 22.873114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716801, 31.307798, 22.749916>,  <37.595638, 31.753275, 23.296003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716801, 31.307798, 22.749916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419022, 31.536915, 22.612682>,  <37.240353, 31.674385, 22.530342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419022, 31.536915, 22.612682>,  <37.716801, 31.307798, 22.749916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419022, 31.536915, 22.612682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274503, -0.205840, -0.939297,
		-0.608642, -0.793435, -0.003996,
		-0.744448, 0.572793, -0.343083,
		37.195686, 31.708752, 22.509758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546707, 30.862541, 22.221382>,  <37.716801, 31.307798, 22.749916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546707, 30.862541, 22.221382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418636, 31.234755, 22.150282>,  <37.341793, 31.458082, 22.107622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418636, 31.234755, 22.150282>,  <37.546707, 30.862541, 22.221382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418636, 31.234755, 22.150282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291894, -0.081599, -0.952964,
		-0.901268, -0.357003, -0.245491,
		-0.320179, 0.930533, -0.177749,
		37.322582, 31.513914, 22.096956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978386, 30.831184, 21.687208>,  <37.546707, 30.862541, 22.221382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978386, 30.831184, 21.687208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164967, 31.184374, 21.708290>,  <37.276917, 31.396288, 21.720940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164967, 31.184374, 21.708290>,  <36.978386, 30.831184, 21.687208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164967, 31.184374, 21.708290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142467, -0.016189, -0.989667,
		-0.872996, 0.469145, -0.133346,
		0.466456, 0.882973, 0.052705,
		37.304905, 31.449266, 21.724102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996895, 31.029882, 20.981258>,  <36.978386, 30.831184, 21.687208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996895, 31.029882, 20.981258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237118, 31.318975, 21.118071>,  <37.381252, 31.492432, 21.200157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237118, 31.318975, 21.118071>,  <36.996895, 31.029882, 20.981258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237118, 31.318975, 21.118071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429205, 0.069519, -0.900528,
		-0.674619, 0.687622, -0.268451,
		0.600560, 0.722734, 0.342029,
		37.417286, 31.535795, 21.220680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845783, 31.624289, 20.577190>,  <36.996895, 31.029882, 20.981258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845783, 31.624289, 20.577190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215038, 31.683624, 20.719072>,  <37.436592, 31.719225, 20.804201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215038, 31.683624, 20.719072>,  <36.845783, 31.624289, 20.577190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215038, 31.683624, 20.719072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292464, 0.327923, -0.898294,
		-0.249566, 0.932986, 0.259334,
		0.923137, 0.148338, 0.354703,
		37.491978, 31.728125, 20.825483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176796, 32.233822, 20.163700>,  <36.845783, 31.624289, 20.577190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176796, 32.233822, 20.163700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493519, 32.058521, 20.333866>,  <37.683552, 31.953341, 20.435966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493519, 32.058521, 20.333866>,  <37.176796, 32.233822, 20.163700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493519, 32.058521, 20.333866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565331, 0.262250, -0.782066,
		0.231176, 0.859745, 0.455408,
		0.791808, -0.438251, 0.425414,
		37.731060, 31.927046, 20.461491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649208, 32.743370, 20.123186>,  <37.176796, 32.233822, 20.163700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649208, 32.743370, 20.123186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871803, 32.416965, 20.185728>,  <38.005360, 32.221123, 20.223253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871803, 32.416965, 20.185728>,  <37.649208, 32.743370, 20.123186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871803, 32.416965, 20.185728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631387, 0.293008, -0.717981,
		0.540069, 0.498265, 0.678275,
		0.556485, -0.816013, 0.156354,
		38.038750, 32.172161, 20.232634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319168, 32.987808, 20.119011>,  <37.649208, 32.743370, 20.123186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319168, 32.987808, 20.119011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324219, 32.598846, 20.025833>,  <38.327248, 32.365467, 19.969927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324219, 32.598846, 20.025833>,  <38.319168, 32.987808, 20.119011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324219, 32.598846, 20.025833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620172, 0.190355, -0.761020,
		0.784364, -0.134858, 0.605463,
		0.012623, -0.972409, -0.232943,
		38.328007, 32.307125, 19.955950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919830, 32.922737, 19.961573>,  <38.319168, 32.987808, 20.119011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919830, 32.922737, 19.961573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745789, 32.600250, 19.801226>,  <38.641365, 32.406757, 19.705017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745789, 32.600250, 19.801226>,  <38.919830, 32.922737, 19.961573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745789, 32.600250, 19.801226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571199, 0.096998, -0.815060,
		0.696002, -0.583608, 0.418309,
		-0.435101, -0.806221, -0.400867,
		38.615257, 32.358383, 19.680965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470718, 32.576210, 19.643026>,  <38.919830, 32.922737, 19.961573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470718, 32.576210, 19.643026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158802, 32.402714, 19.462450>,  <38.971653, 32.298618, 19.354105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158802, 32.402714, 19.462450>,  <39.470718, 32.576210, 19.643026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158802, 32.402714, 19.462450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488652, 0.029067, -0.871994,
		0.391339, -0.900570, 0.189281,
		-0.779790, -0.433737, -0.451441,
		38.924866, 32.272594, 19.327017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774727, 32.079689, 19.196457>,  <39.470718, 32.576210, 19.643026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774727, 32.079689, 19.196457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403862, 32.148098, 19.063118>,  <39.181343, 32.189144, 18.983114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403862, 32.148098, 19.063118>,  <39.774727, 32.079689, 19.196457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403862, 32.148098, 19.063118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347485, 0.059868, -0.935773,
		-0.140085, -0.983446, -0.114936,
		-0.927162, 0.171026, -0.333346,
		39.125713, 32.199406, 18.963114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694790, 31.702890, 18.550711>,  <39.774727, 32.079689, 19.196457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694790, 31.702890, 18.550711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400700, 31.973293, 18.530876>,  <39.224247, 32.135536, 18.518976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400700, 31.973293, 18.530876>,  <39.694790, 31.702890, 18.550711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400700, 31.973293, 18.530876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269883, 0.224850, -0.936272,
		-0.621777, -0.701753, -0.347758,
		-0.735225, 0.676007, -0.049585,
		39.180134, 32.176094, 18.516001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248947, 31.516260, 18.014294>,  <39.694790, 31.702890, 18.550711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248947, 31.516260, 18.014294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218048, 31.910486, 18.074547>,  <39.199509, 32.147022, 18.110699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218048, 31.910486, 18.074547>,  <39.248947, 31.516260, 18.014294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218048, 31.910486, 18.074547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235797, 0.164858, -0.957717,
		-0.968727, -0.038465, -0.245129,
		-0.077250, 0.985567, 0.150633,
		39.194874, 32.206158, 18.119736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153080, 31.781691, 17.379683>,  <39.248947, 31.516260, 18.014294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153080, 31.781691, 17.379683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224091, 32.124680, 17.572855>,  <39.266697, 32.330475, 17.688759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224091, 32.124680, 17.572855>,  <39.153080, 31.781691, 17.379683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224091, 32.124680, 17.572855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433365, 0.372469, -0.820647,
		-0.883561, 0.354971, -0.305476,
		0.177526, 0.857474, 0.482931,
		39.277348, 32.381924, 17.717733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830582, 32.355980, 17.023151>,  <39.153080, 31.781691, 17.379683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830582, 32.355980, 17.023151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117390, 32.530960, 17.240231>,  <39.289474, 32.635948, 17.370478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117390, 32.530960, 17.240231>,  <38.830582, 32.355980, 17.023151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117390, 32.530960, 17.240231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179297, 0.636621, -0.750044,
		-0.673599, 0.635100, 0.378037,
		0.717020, 0.437448, 0.542699,
		39.332497, 32.662193, 17.403040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737450, 33.119259, 16.977512>,  <38.830582, 32.355980, 17.023151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737450, 33.119259, 16.977512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120350, 33.030529, 17.051783>,  <39.350090, 32.977291, 17.096344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120350, 33.030529, 17.051783>,  <38.737450, 33.119259, 16.977512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120350, 33.030529, 17.051783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277738, 0.525324, -0.804298,
		0.080871, 0.821481, 0.564473,
		0.957247, -0.221820, 0.185673,
		39.407524, 32.963982, 17.107485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091774, 33.741070, 16.890215>,  <38.737450, 33.119259, 16.977512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091774, 33.741070, 16.890215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410450, 33.499882, 16.906773>,  <39.601654, 33.355167, 16.916708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410450, 33.499882, 16.906773>,  <39.091774, 33.741070, 16.890215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410450, 33.499882, 16.906773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460760, 0.561610, -0.687237,
		0.391136, 0.566587, 0.725253,
		0.796689, -0.602971, 0.041395,
		39.649456, 33.318989, 16.919191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755241, 34.175606, 16.942038>,  <39.091774, 33.741070, 16.890215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755241, 34.175606, 16.942038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812187, 33.811672, 16.786127>,  <39.846355, 33.593311, 16.692581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812187, 33.811672, 16.786127>,  <39.755241, 34.175606, 16.942038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812187, 33.811672, 16.786127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312250, 0.414962, -0.854580,
		0.939272, -0.000045, 0.343173,
		0.142366, -0.909839, -0.389776,
		39.854897, 33.538719, 16.669193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333481, 34.286037, 16.496729>,  <39.755241, 34.175606, 16.942038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333481, 34.286037, 16.496729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187546, 33.924213, 16.408485>,  <40.099987, 33.707119, 16.355539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187546, 33.924213, 16.408485>,  <40.333481, 34.286037, 16.496729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187546, 33.924213, 16.408485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204573, 0.153271, -0.966777,
		0.908320, -0.397844, 0.129130,
		-0.364835, -0.904560, -0.220607,
		40.078094, 33.652847, 16.342302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889370, 33.943100, 16.066431>,  <40.333481, 34.286037, 16.496729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889370, 33.943100, 16.066431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526222, 33.790997, 15.995797>,  <40.308334, 33.699734, 15.953417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526222, 33.790997, 15.995797>,  <40.889370, 33.943100, 16.066431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526222, 33.790997, 15.995797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078010, 0.260622, -0.962284,
		0.411935, -0.887402, -0.206947,
		-0.907868, -0.380255, -0.176585,
		40.253860, 33.676922, 15.942822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047825, 33.557987, 15.557103>,  <40.889370, 33.943100, 16.066431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047825, 33.557987, 15.557103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648937, 33.557709, 15.527303>,  <40.409603, 33.557541, 15.509422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648937, 33.557709, 15.527303>,  <41.047825, 33.557987, 15.557103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648937, 33.557709, 15.527303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074477, 0.018119, -0.997058,
		0.002024, -0.999835, -0.018018,
		-0.997221, -0.000677, -0.074501,
		40.349770, 33.557503, 15.504952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878639, 33.129513, 15.020781>,  <41.047825, 33.557987, 15.557103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878639, 33.129513, 15.020781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567039, 33.375954, 15.067403>,  <40.380081, 33.523819, 15.095376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567039, 33.375954, 15.067403>,  <40.878639, 33.129513, 15.020781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567039, 33.375954, 15.067403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020834, 0.160353, -0.986840,
		-0.626680, -0.771175, -0.112079,
		-0.778998, 0.616098, 0.116556,
		40.333340, 33.560783, 15.102369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285545, 32.841621, 14.610326>,  <40.878639, 33.129513, 15.020781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285545, 32.841621, 14.610326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283566, 33.235813, 14.678223>,  <40.282379, 33.472328, 14.718961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283566, 33.235813, 14.678223>,  <40.285545, 32.841621, 14.610326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283566, 33.235813, 14.678223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038748, 0.169806, -0.984716,
		-0.999237, 0.001708, -0.039025,
		-0.004945, 0.985476, 0.169742,
		40.282082, 33.531456, 14.729145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748234, 33.233177, 14.312998>,  <40.285545, 32.841621, 14.610326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748234, 33.233177, 14.312998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088608, 33.441319, 14.341669>,  <40.292831, 33.566204, 14.358871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088608, 33.441319, 14.341669>,  <39.748234, 33.233177, 14.312998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088608, 33.441319, 14.341669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001739, 0.133668, -0.991025,
		-0.525263, 0.843425, 0.112838,
		0.850938, 0.520353, 0.071678,
		40.343887, 33.597424, 14.363173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641197, 33.873463, 14.048345>,  <39.748234, 33.233177, 14.312998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641197, 33.873463, 14.048345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026142, 33.769032, 14.018167>,  <40.257111, 33.706371, 14.000061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026142, 33.769032, 14.018167>,  <39.641197, 33.873463, 14.048345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026142, 33.769032, 14.018167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015566, 0.330112, -0.943814,
		0.271315, 0.907118, 0.321752,
		0.962365, -0.261079, -0.075444,
		40.314850, 33.690708, 13.995534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195080, 34.417091, 13.727379>,  <39.641197, 33.873463, 14.048345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195080, 34.417091, 13.727379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353523, 34.062332, 13.632298>,  <40.448589, 33.849476, 13.575250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353523, 34.062332, 13.632298>,  <40.195080, 34.417091, 13.727379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353523, 34.062332, 13.632298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146605, 0.316644, -0.937147,
		0.906425, 0.336363, 0.255450,
		0.396108, -0.886903, -0.237701,
		40.472355, 33.796261, 13.560988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951687, 34.529480, 13.517357>,  <40.195080, 34.417091, 13.727379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951687, 34.529480, 13.517357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727085, 34.233028, 13.370147>,  <40.592323, 34.055157, 13.281820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727085, 34.233028, 13.370147>,  <40.951687, 34.529480, 13.517357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727085, 34.233028, 13.370147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037302, 0.466977, -0.883482,
		0.826634, -0.482349, -0.289854,
		-0.561502, -0.741129, -0.368026,
		40.558636, 34.010689, 13.259739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340401, 34.693348, 14.073888>,  <40.951687, 34.529480, 13.517357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340401, 34.693348, 14.073888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963619, 34.599743, 14.170186>,  <40.737549, 34.543579, 14.227965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963619, 34.599743, 14.170186>,  <41.340401, 34.693348, 14.073888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963619, 34.599743, 14.170186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085497, 0.860617, 0.502024,
		-0.324670, 0.452301, -0.830670,
		-0.941955, -0.234012, 0.240746,
		40.681034, 34.529541, 14.242410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433880, 35.334152, 13.715200>,  <41.340401, 34.693348, 14.073888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433880, 35.334152, 13.715200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264591, 35.426430, 13.364734>,  <41.163017, 35.481796, 13.154454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264591, 35.426430, 13.364734>,  <41.433880, 35.334152, 13.715200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264591, 35.426430, 13.364734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718535, 0.503607, 0.479675,
		0.551899, 0.832564, -0.047378,
		-0.423220, 0.230689, -0.876166,
		41.137627, 35.495636, 13.101884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183720, 36.048084, 13.739849>,  <41.433880, 35.334152, 13.715200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183720, 36.048084, 13.739849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954113, 35.892239, 13.451763>,  <40.816349, 35.798729, 13.278912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954113, 35.892239, 13.451763>,  <41.183720, 36.048084, 13.739849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954113, 35.892239, 13.451763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776662, 0.537719, 0.328108,
		0.259436, 0.747701, -0.611258,
		-0.574012, -0.389617, -0.720214,
		40.781910, 35.775352, 13.235699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729038, 36.596840, 13.455959>,  <41.183720, 36.048084, 13.739849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729038, 36.596840, 13.455959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529587, 36.252678, 13.413871>,  <40.409916, 36.046181, 13.388618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529587, 36.252678, 13.413871>,  <40.729038, 36.596840, 13.455959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529587, 36.252678, 13.413871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826046, 0.434872, 0.358515,
		-0.262711, 0.265682, -0.927575,
		-0.498628, -0.860406, -0.105220,
		40.379997, 35.994556, 13.382305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107624, 36.638607, 13.809606>,  <40.729038, 36.596840, 13.455959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107624, 36.638607, 13.809606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845020, 36.348591, 13.726361>,  <39.687458, 36.174580, 13.676414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845020, 36.348591, 13.726361>,  <40.107624, 36.638607, 13.809606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845020, 36.348591, 13.726361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553964, 0.276164, 0.785403,
		-0.511978, 0.630909, -0.582951,
		-0.656508, -0.725043, -0.208112,
		39.648067, 36.131077, 13.663928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455727, 36.912441, 13.852351>,  <40.107624, 36.638607, 13.809606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455727, 36.912441, 13.852351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423813, 36.518349, 13.912950>,  <39.404663, 36.281895, 13.949308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423813, 36.518349, 13.912950>,  <39.455727, 36.912441, 13.852351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423813, 36.518349, 13.912950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557065, 0.170102, 0.812862,
		-0.826628, -0.019540, -0.562410,
		-0.079784, -0.985233, 0.151496,
		39.399879, 36.222778, 13.958399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715008, 36.759029, 13.900890>,  <39.455727, 36.912441, 13.852351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715008, 36.759029, 13.900890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936695, 36.495285, 14.104096>,  <39.069706, 36.337036, 14.226020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936695, 36.495285, 14.104096>,  <38.715008, 36.759029, 13.900890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936695, 36.495285, 14.104096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598660, 0.108282, 0.793651,
		-0.578315, -0.743984, -0.334724,
		0.554219, -0.659365, 0.508014,
		39.102962, 36.297474, 14.256501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188782, 36.290668, 14.307281>,  <38.715008, 36.759029, 13.900890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188782, 36.290668, 14.307281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538021, 36.252502, 14.498526>,  <38.747566, 36.229603, 14.613273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538021, 36.252502, 14.498526>,  <38.188782, 36.290668, 14.307281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538021, 36.252502, 14.498526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481414, -0.013738, 0.876386,
		-0.077059, -0.995342, -0.057932,
		0.873099, -0.095422, 0.478113,
		38.799950, 36.223877, 14.641959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128338, 35.779232, 14.805097>,  <38.188782, 36.290668, 14.307281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128338, 35.779232, 14.805097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422749, 36.021667, 14.925710>,  <38.599396, 36.167130, 14.998077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422749, 36.021667, 14.925710>,  <38.128338, 35.779232, 14.805097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422749, 36.021667, 14.925710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331101, -0.066203, 0.941270,
		0.590451, -0.792641, 0.151948,
		0.736030, 0.606084, 0.301533,
		38.643559, 36.203491, 15.016170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188675, 35.561539, 15.483905>,  <38.128338, 35.779232, 14.805097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188675, 35.561539, 15.483905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413746, 35.891678, 15.502616>,  <38.548790, 36.089764, 15.513843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413746, 35.891678, 15.502616>,  <38.188675, 35.561539, 15.483905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413746, 35.891678, 15.502616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327707, 0.170746, 0.929223,
		0.758949, -0.538181, 0.366548,
		0.562677, 0.825353, 0.046778,
		38.582550, 36.139282, 15.516649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528934, 35.481308, 16.165855>,  <38.188675, 35.561539, 15.483905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528934, 35.481308, 16.165855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520012, 35.862347, 16.044489>,  <38.514660, 36.090969, 15.971669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520012, 35.862347, 16.044489>,  <38.528934, 35.481308, 16.165855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520012, 35.862347, 16.044489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283372, 0.285019, 0.915677,
		0.958751, 0.106406, 0.263581,
		-0.022308, 0.952597, -0.303415,
		38.513321, 36.148125, 15.953465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970337, 35.912224, 16.640415>,  <38.528934, 35.481308, 16.165855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970337, 35.912224, 16.640415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725384, 36.165707, 16.451351>,  <38.578411, 36.317795, 16.337912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725384, 36.165707, 16.451351>,  <38.970337, 35.912224, 16.640415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725384, 36.165707, 16.451351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289458, 0.376632, 0.879979,
		0.735665, 0.675699, -0.047211,
		-0.612382, 0.633704, -0.472661,
		38.541668, 36.355816, 16.309553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078423, 36.587063, 16.897469>,  <38.970337, 35.912224, 16.640415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078423, 36.587063, 16.897469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712234, 36.620037, 16.739929>,  <38.492523, 36.639820, 16.645405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712234, 36.620037, 16.739929>,  <39.078423, 36.587063, 16.897469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712234, 36.620037, 16.739929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290397, 0.542186, 0.788482,
		0.278536, 0.836205, -0.472418,
		-0.915471, 0.082432, -0.393850,
		38.437592, 36.644768, 16.621775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870522, 37.317379, 16.950102>,  <39.078423, 36.587063, 16.897469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870522, 37.317379, 16.950102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523418, 37.121334, 16.917160>,  <38.315155, 37.003708, 16.897394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523418, 37.121334, 16.917160>,  <38.870522, 37.317379, 16.950102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523418, 37.121334, 16.917160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324916, 0.434085, 0.840238,
		-0.376064, 0.755882, -0.535927,
		-0.867759, -0.490114, -0.082354,
		38.263092, 36.974300, 16.892454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342831, 37.786774, 17.031139>,  <38.870522, 37.317379, 16.950102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342831, 37.786774, 17.031139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135830, 37.452785, 17.105995>,  <38.011627, 37.252392, 17.150909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135830, 37.452785, 17.105995>,  <38.342831, 37.786774, 17.031139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135830, 37.452785, 17.105995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466541, 0.458663, 0.756286,
		-0.717306, 0.304074, -0.626906,
		-0.517505, -0.834966, 0.187139,
		37.980579, 37.202297, 17.162136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703865, 38.062843, 17.134163>,  <38.342831, 37.786774, 17.031139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703865, 38.062843, 17.134163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712852, 37.706112, 17.314890>,  <37.718246, 37.492073, 17.423326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712852, 37.706112, 17.314890>,  <37.703865, 38.062843, 17.134163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712852, 37.706112, 17.314890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474217, 0.388347, 0.790130,
		-0.880121, -0.232013, -0.414194,
		0.022470, -0.891828, 0.451817,
		37.719593, 37.438564, 17.450436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011223, 38.031826, 17.440804>,  <37.703865, 38.062843, 17.134163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011223, 38.031826, 17.440804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204002, 37.730625, 17.620005>,  <37.319672, 37.549904, 17.727526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204002, 37.730625, 17.620005>,  <37.011223, 38.031826, 17.440804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204002, 37.730625, 17.620005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520375, 0.165376, 0.837771,
		-0.704934, -0.636896, -0.312141,
		0.481952, -0.753004, 0.448004,
		37.348587, 37.504723, 17.754406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507973, 37.530060, 17.692940>,  <37.011223, 38.031826, 17.440804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507973, 37.530060, 17.692940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844585, 37.490524, 17.905375>,  <37.046555, 37.466805, 18.032835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844585, 37.490524, 17.905375>,  <36.507973, 37.530060, 17.692940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844585, 37.490524, 17.905375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538973, -0.087287, 0.837789,
		-0.036443, -0.991269, -0.126722,
		0.841535, -0.098832, 0.531086,
		37.097046, 37.460873, 18.064701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296249, 37.199249, 18.228537>,  <36.507973, 37.530060, 17.692940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296249, 37.199249, 18.228537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644100, 37.279522, 18.408968>,  <36.852810, 37.327686, 18.517227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644100, 37.279522, 18.408968>,  <36.296249, 37.199249, 18.228537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644100, 37.279522, 18.408968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421171, -0.175172, 0.889904,
		0.257601, -0.963869, -0.067814,
		0.869630, 0.200679, 0.451078,
		36.904991, 37.339725, 18.544291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482430, 36.598446, 18.453211>,  <36.296249, 37.199249, 18.228537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482430, 36.598446, 18.453211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631729, 36.903553, 18.664444>,  <36.721310, 37.086617, 18.791183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631729, 36.903553, 18.664444>,  <36.482430, 36.598446, 18.453211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631729, 36.903553, 18.664444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463086, -0.340052, 0.818484,
		0.803887, -0.550049, 0.226301,
		0.373252, 0.762766, 0.528083,
		36.743706, 37.132381, 18.822868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807240, 36.321705, 19.050566>,  <36.482430, 36.598446, 18.453211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807240, 36.321705, 19.050566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758987, 36.706902, 19.146980>,  <36.730034, 36.938019, 19.204828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758987, 36.706902, 19.146980>,  <36.807240, 36.321705, 19.050566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758987, 36.706902, 19.146980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403444, -0.269412, 0.874443,
		0.907017, 0.008242, 0.421013,
		-0.120633, 0.962990, 0.241036,
		36.722797, 36.995800, 19.219292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071327, 36.426655, 19.763277>,  <36.807240, 36.321705, 19.050566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071327, 36.426655, 19.763277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827652, 36.740406, 19.716551>,  <36.681446, 36.928658, 19.688515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827652, 36.740406, 19.716551>,  <37.071327, 36.426655, 19.763277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827652, 36.740406, 19.716551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304421, -0.095285, 0.947760,
		0.732267, 0.612926, 0.296826,
		-0.609190, 0.784374, -0.116814,
		36.644894, 36.975719, 19.681507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147911, 36.736820, 20.316816>,  <37.071327, 36.426655, 19.763277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147911, 36.736820, 20.316816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809460, 36.898838, 20.178247>,  <36.606388, 36.996048, 20.095106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809460, 36.898838, 20.178247>,  <37.147911, 36.736820, 20.316816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809460, 36.898838, 20.178247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423771, -0.117069, 0.898172,
		0.323245, 0.906771, 0.270702,
		-0.846127, 0.405045, -0.346421,
		36.555622, 37.020351, 20.074322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830292, 37.414188, 20.735079>,  <37.147911, 36.736820, 20.316816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830292, 37.414188, 20.735079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525543, 37.238724, 20.544451>,  <36.342693, 37.133446, 20.430075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525543, 37.238724, 20.544451>,  <36.830292, 37.414188, 20.735079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525543, 37.238724, 20.544451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504774, -0.058960, 0.861236,
		-0.405891, 0.896715, -0.176506,
		-0.761876, -0.438664, -0.476570,
		36.296982, 37.107124, 20.401480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342369, 37.569668, 21.176702>,  <36.830292, 37.414188, 20.735079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342369, 37.569668, 21.176702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205299, 37.274570, 20.944046>,  <36.123058, 37.097511, 20.804453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205299, 37.274570, 20.944046>,  <36.342369, 37.569668, 21.176702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205299, 37.274570, 20.944046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529999, -0.359377, 0.768082,
		-0.775676, 0.571474, -0.267853,
		-0.342679, -0.737744, -0.581640,
		36.102497, 37.053246, 20.769554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591873, 37.566029, 21.310114>,  <36.342369, 37.569668, 21.176702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591873, 37.566029, 21.310114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688145, 37.199181, 21.183014>,  <35.745907, 36.979073, 21.106754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688145, 37.199181, 21.183014>,  <35.591873, 37.566029, 21.310114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688145, 37.199181, 21.183014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473354, -0.396709, 0.786485,
		-0.847356, -0.038880, -0.529601,
		0.240676, -0.917121, -0.317750,
		35.760349, 36.924046, 21.087688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073162, 37.213268, 21.453194>,  <35.591873, 37.566029, 21.310114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073162, 37.213268, 21.453194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331524, 36.913723, 21.393850>,  <35.486542, 36.733997, 21.358244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331524, 36.913723, 21.393850>,  <35.073162, 37.213268, 21.453194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331524, 36.913723, 21.393850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382131, -0.485383, 0.786371,
		-0.660896, -0.451227, -0.599675,
		0.645905, -0.748864, -0.148360,
		35.525295, 36.689064, 21.349342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673565, 36.688339, 21.522207>,  <35.073162, 37.213268, 21.453194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673565, 36.688339, 21.522207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032154, 36.523113, 21.586342>,  <35.247307, 36.423977, 21.624823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032154, 36.523113, 21.586342>,  <34.673565, 36.688339, 21.522207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032154, 36.523113, 21.586342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405648, -0.619521, 0.672044,
		-0.178262, -0.667514, -0.722944,
		0.896478, -0.413061, 0.160338,
		35.301098, 36.399197, 21.634443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626968, 35.919075, 21.478136>,  <34.673565, 36.688339, 21.522207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626968, 35.919075, 21.478136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967945, 35.987244, 21.675846>,  <35.172531, 36.028145, 21.794472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967945, 35.987244, 21.675846>,  <34.626968, 35.919075, 21.478136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967945, 35.987244, 21.675846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350824, -0.514504, 0.782438,
		0.387651, -0.840382, -0.378794,
		0.852437, 0.170423, 0.494274,
		35.223675, 36.038372, 21.824129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777229, 35.304451, 21.807205>,  <34.626968, 35.919075, 21.478136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777229, 35.304451, 21.807205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999363, 35.590645, 21.976765>,  <35.132645, 35.762360, 22.078501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999363, 35.590645, 21.976765>,  <34.777229, 35.304451, 21.807205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999363, 35.590645, 21.976765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213973, -0.369632, 0.904205,
		0.803628, -0.592840, -0.052176,
		0.555335, 0.715481, 0.423899,
		35.165962, 35.805290, 22.103935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057812, 34.879467, 22.320971>,  <34.777229, 35.304451, 21.807205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057812, 34.879467, 22.320971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099468, 35.259083, 22.439953>,  <35.124462, 35.486851, 22.511343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099468, 35.259083, 22.439953>,  <35.057812, 34.879467, 22.320971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099468, 35.259083, 22.439953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433622, -0.225835, 0.872336,
		0.895057, -0.219830, 0.388005,
		0.104141, 0.949038, 0.297458,
		35.130711, 35.543793, 22.529190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414276, 34.794880, 23.039785>,  <35.057812, 34.879467, 22.320971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414276, 34.794880, 23.039785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263275, 35.165077, 23.027378>,  <35.172676, 35.387196, 23.019934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263275, 35.165077, 23.027378>,  <35.414276, 34.794880, 23.039785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263275, 35.165077, 23.027378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302464, -0.091575, 0.948751,
		0.875220, 0.367535, 0.314497,
		-0.377499, 0.925490, -0.031018,
		35.150024, 35.442726, 23.018072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606106, 35.094513, 23.671741>,  <35.414276, 34.794880, 23.039785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606106, 35.094513, 23.671741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280437, 35.264465, 23.513451>,  <35.085037, 35.366436, 23.418476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280437, 35.264465, 23.513451>,  <35.606106, 35.094513, 23.671741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280437, 35.264465, 23.513451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381445, 0.122444, 0.916246,
		0.437749, 0.896931, 0.062378,
		-0.814172, 0.424880, -0.395729,
		35.036186, 35.391930, 23.394732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350380, 35.445843, 24.189180>,  <35.606106, 35.094513, 23.671741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350380, 35.445843, 24.189180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032467, 35.473560, 23.948011>,  <34.841717, 35.490189, 23.803310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032467, 35.473560, 23.948011>,  <35.350380, 35.445843, 24.189180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032467, 35.473560, 23.948011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595047, 0.106340, 0.796625,
		0.119313, 0.991912, -0.043286,
		-0.794785, 0.069291, -0.602922,
		34.794033, 35.494347, 23.767136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960922, 36.118050, 24.316866>,  <35.350380, 35.445843, 24.189180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960922, 36.118050, 24.316866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692200, 35.873558, 24.149494>,  <34.530968, 35.726864, 24.049072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692200, 35.873558, 24.149494>,  <34.960922, 36.118050, 24.316866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692200, 35.873558, 24.149494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641212, 0.197064, 0.741628,
		-0.370846, 0.766530, -0.524315,
		-0.671804, -0.611227, -0.418428,
		34.490658, 35.690189, 24.023966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275639, 36.458511, 24.313517>,  <34.960922, 36.118050, 24.316866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275639, 36.458511, 24.313517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186596, 36.070240, 24.277250>,  <34.133171, 35.837276, 24.255489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186596, 36.070240, 24.277250>,  <34.275639, 36.458511, 24.313517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186596, 36.070240, 24.277250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749059, 0.110774, 0.653177,
		-0.623984, 0.213318, -0.751757,
		-0.222610, -0.970683, -0.090667,
		34.119812, 35.779034, 24.250050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561470, 36.404396, 24.452837>,  <34.275639, 36.458511, 24.313517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561470, 36.404396, 24.452837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679703, 36.025723, 24.504091>,  <33.750641, 35.798519, 24.534843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679703, 36.025723, 24.504091>,  <33.561470, 36.404396, 24.452837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679703, 36.025723, 24.504091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718944, -0.132112, 0.682397,
		-0.629087, -0.293825, -0.719664,
		0.295581, -0.946686, 0.128134,
		33.768375, 35.741718, 24.542532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886600, 36.060318, 24.490332>,  <33.561470, 36.404396, 24.452837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886600, 36.060318, 24.490332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157429, 35.823452, 24.665104>,  <33.319927, 35.681332, 24.769966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157429, 35.823452, 24.665104>,  <32.886600, 36.060318, 24.490332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157429, 35.823452, 24.665104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634118, -0.168164, 0.754728,
		-0.373452, -0.788071, -0.489365,
		0.677073, -0.592170, 0.436930,
		33.360550, 35.645802, 24.796183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465149, 35.497673, 24.782068>,  <32.886600, 36.060318, 24.490332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465149, 35.497673, 24.782068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815285, 35.464046, 24.972528>,  <33.025364, 35.443871, 25.086803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815285, 35.464046, 24.972528>,  <32.465149, 35.497673, 24.782068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815285, 35.464046, 24.972528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481289, -0.245833, 0.841384,
		0.046324, -0.965660, -0.255645,
		0.875338, -0.084063, 0.476149,
		33.077885, 35.438828, 25.115374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414413, 34.839359, 25.096682>,  <32.465149, 35.497673, 24.782068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414413, 34.839359, 25.096682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696293, 35.029011, 25.307816>,  <32.865421, 35.142803, 25.434496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696293, 35.029011, 25.307816>,  <32.414413, 34.839359, 25.096682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696293, 35.029011, 25.307816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390416, -0.362060, 0.846456,
		0.592436, -0.802568, -0.070035,
		0.704695, 0.474128, 0.527833,
		32.907700, 35.171249, 25.466166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562439, 34.377995, 25.618921>,  <32.414413, 34.839359, 25.096682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562439, 34.377995, 25.618921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704723, 34.717594, 25.775211>,  <32.790092, 34.921356, 25.868986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704723, 34.717594, 25.775211>,  <32.562439, 34.377995, 25.618921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704723, 34.717594, 25.775211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142309, -0.363991, 0.920466,
		0.923699, -0.383020, -0.008653,
		0.355707, 0.849003, 0.390726,
		32.811436, 34.972294, 25.892429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975376, 34.161186, 26.124313>,  <32.562439, 34.377995, 25.618921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975376, 34.161186, 26.124313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898327, 34.545494, 26.204124>,  <32.852097, 34.776081, 26.252012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898327, 34.545494, 26.204124>,  <32.975376, 34.161186, 26.124313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898327, 34.545494, 26.204124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325902, -0.254434, 0.910523,
		0.925572, 0.110363, 0.362128,
		-0.192625, 0.960772, 0.199529,
		32.840538, 34.833725, 26.263983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380585, 34.254791, 26.743856>,  <32.975376, 34.161186, 26.124313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380585, 34.254791, 26.743856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081627, 34.514774, 26.688778>,  <32.902252, 34.670765, 26.655731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081627, 34.514774, 26.688778>,  <33.380585, 34.254791, 26.743856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081627, 34.514774, 26.688778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268839, -0.106337, 0.957297,
		0.607561, 0.752494, 0.254209,
		-0.747392, 0.649958, -0.137694,
		32.857410, 34.709763, 26.647470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465939, 34.781841, 27.188967>,  <33.380585, 34.254791, 26.743856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465939, 34.781841, 27.188967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075569, 34.802490, 27.104204>,  <32.841347, 34.814880, 27.053347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075569, 34.802490, 27.104204>,  <33.465939, 34.781841, 27.188967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075569, 34.802490, 27.104204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209577, 0.047056, 0.976659,
		0.060391, 0.997557, -0.035104,
		-0.975925, 0.051625, -0.211906,
		32.782791, 34.817978, 27.040632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264759, 35.174194, 27.696037>,  <33.465939, 34.781841, 27.188967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264759, 35.174194, 27.696037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909756, 35.054855, 27.555571>,  <32.696754, 34.983253, 27.471291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909756, 35.054855, 27.555571>,  <33.264759, 35.174194, 27.696037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909756, 35.054855, 27.555571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375204, 0.025508, 0.926591,
		-0.267488, 0.954117, -0.134580,
		-0.887509, -0.298347, -0.351166,
		32.643501, 34.965351, 27.450220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659588, 35.879990, 27.598320>,  <33.264759, 35.174194, 27.696037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659588, 35.879990, 27.598320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910290, 35.981049, 27.893169>,  <34.060711, 36.041683, 28.070078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910290, 35.981049, 27.893169>,  <33.659588, 35.879990, 27.598320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910290, 35.981049, 27.893169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683389, 0.276277, -0.675759,
		-0.374379, 0.927276, 0.000501,
		0.626754, 0.252647, 0.737122,
		34.098316, 36.056843, 28.114305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878399, 36.614391, 27.455011>,  <33.659588, 35.879990, 27.598320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878399, 36.614391, 27.455011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152744, 36.457497, 27.700203>,  <34.317352, 36.363361, 27.847319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152744, 36.457497, 27.700203>,  <33.878399, 36.614391, 27.455011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152744, 36.457497, 27.700203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727561, 0.351355, -0.589241,
		0.015746, 0.850119, 0.526355,
		0.685862, -0.392233, 0.612981,
		34.358501, 36.339828, 27.884098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401512, 37.111652, 27.438490>,  <33.878399, 36.614391, 27.455011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401512, 37.111652, 27.438490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619251, 36.808128, 27.581539>,  <34.749893, 36.626015, 27.667370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619251, 36.808128, 27.581539>,  <34.401512, 37.111652, 27.438490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619251, 36.808128, 27.581539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756931, 0.260544, -0.599309,
		0.361585, 0.596929, 0.716193,
		0.544345, -0.758810, 0.357625,
		34.782555, 36.580486, 27.688828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034988, 37.352905, 27.777752>,  <34.401512, 37.111652, 27.438490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034988, 37.352905, 27.777752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106335, 36.979218, 27.654196>,  <35.149143, 36.755005, 27.580061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106335, 36.979218, 27.654196>,  <35.034988, 37.352905, 27.777752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106335, 36.979218, 27.654196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849397, 0.304660, -0.430936,
		0.496697, -0.185506, 0.847868,
		0.178370, -0.934221, -0.308892,
		35.159847, 36.698952, 27.561527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681572, 37.386463, 27.783012>,  <35.034988, 37.352905, 27.777752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681572, 37.386463, 27.783012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650970, 37.030773, 27.602602>,  <35.632610, 36.817360, 27.494356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650970, 37.030773, 27.602602>,  <35.681572, 37.386463, 27.783012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650970, 37.030773, 27.602602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848094, 0.179825, -0.498396,
		0.524292, -0.420644, 0.740389,
		-0.076506, -0.889225, -0.451027,
		35.628017, 36.764004, 27.467295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345505, 37.087059, 27.891073>,  <35.681572, 37.386463, 27.783012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345505, 37.087059, 27.891073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142693, 36.948074, 27.575558>,  <36.021004, 36.864685, 27.386248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142693, 36.948074, 27.575558>,  <36.345505, 37.087059, 27.891073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142693, 36.948074, 27.575558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729079, 0.315239, -0.607510,
		0.459743, -0.883117, 0.093490,
		-0.507031, -0.347461, -0.788791,
		35.990582, 36.843838, 27.338921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896061, 36.822796, 27.441235>,  <36.345505, 37.087059, 27.891073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896061, 36.822796, 27.441235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580238, 36.873100, 27.200975>,  <36.390743, 36.903282, 27.056820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580238, 36.873100, 27.200975>,  <36.896061, 36.822796, 27.441235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580238, 36.873100, 27.200975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612924, 0.113256, -0.781983,
		-0.030317, -0.985574, -0.166505,
		-0.789560, 0.125762, -0.600649,
		36.343369, 36.910828, 27.020781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055515, 36.512451, 26.885637>,  <36.896061, 36.822796, 27.441235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055515, 36.512451, 26.885637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758446, 36.742561, 26.748529>,  <36.580204, 36.880627, 26.666265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758446, 36.742561, 26.748529>,  <37.055515, 36.512451, 26.885637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758446, 36.742561, 26.748529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538453, 0.208693, -0.816404,
		-0.398126, -0.790887, -0.464751,
		-0.742674, 0.575278, -0.342769,
		36.535645, 36.915146, 26.645699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049564, 36.455292, 26.048931>,  <37.055515, 36.512451, 26.885637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049564, 36.455292, 26.048931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842319, 36.786781, 26.133572>,  <36.717972, 36.985676, 26.184357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842319, 36.786781, 26.133572>,  <37.049564, 36.455292, 26.048931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842319, 36.786781, 26.133572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320545, 0.417500, -0.850261,
		-0.792978, -0.372700, -0.481955,
		-0.518109, 0.828727, 0.211601,
		36.686886, 37.035400, 26.197052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765663, 36.687935, 25.391209>,  <37.049564, 36.455292, 26.048931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765663, 36.687935, 25.391209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704418, 37.013756, 25.615019>,  <36.667671, 37.209248, 25.749304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704418, 37.013756, 25.615019>,  <36.765663, 36.687935, 25.391209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704418, 37.013756, 25.615019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191154, 0.579920, -0.791930,
		-0.969544, -0.014300, -0.244498,
		-0.153114, 0.814548, 0.559525,
		36.658485, 37.258121, 25.782877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256451, 37.029026, 25.065075>,  <36.765663, 36.687935, 25.391209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256451, 37.029026, 25.065075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469604, 37.293526, 25.276278>,  <36.597496, 37.452225, 25.403000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469604, 37.293526, 25.276278>,  <36.256451, 37.029026, 25.065075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469604, 37.293526, 25.276278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117038, 0.560389, -0.819919,
		-0.838057, 0.498716, 0.221230,
		0.532881, 0.661247, 0.528006,
		36.629467, 37.491901, 25.434679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023685, 37.705288, 24.902706>,  <36.256451, 37.029026, 25.065075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023685, 37.705288, 24.902706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401081, 37.749981, 25.027510>,  <36.627518, 37.776794, 25.102392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401081, 37.749981, 25.027510>,  <36.023685, 37.705288, 24.902706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401081, 37.749981, 25.027510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220519, 0.491148, -0.842701,
		-0.247397, 0.863881, 0.438753,
		0.943486, 0.111729, 0.312011,
		36.684128, 37.783501, 25.121113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101170, 38.347157, 24.712610>,  <36.023685, 37.705288, 24.902706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101170, 38.347157, 24.712610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473118, 38.212677, 24.772369>,  <36.696285, 38.131989, 24.808224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473118, 38.212677, 24.772369>,  <36.101170, 38.347157, 24.712610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473118, 38.212677, 24.772369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333333, 0.598068, -0.728838,
		0.155685, 0.727520, 0.668189,
		0.929866, -0.336198, 0.149396,
		36.752079, 38.111816, 24.817188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546490, 38.944103, 24.811632>,  <36.101170, 38.347157, 24.712610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546490, 38.944103, 24.811632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779366, 38.641483, 24.692507>,  <36.919090, 38.459911, 24.621033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779366, 38.641483, 24.692507>,  <36.546490, 38.944103, 24.811632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779366, 38.641483, 24.692507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245688, 0.512866, -0.822561,
		0.775042, 0.405719, 0.484460,
		0.582192, -0.756545, -0.297812,
		36.954021, 38.414520, 24.603163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162376, 39.270733, 24.600138>,  <36.546490, 38.944103, 24.811632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162376, 39.270733, 24.600138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159225, 38.917953, 24.411625>,  <37.157337, 38.706287, 24.298517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159225, 38.917953, 24.411625>,  <37.162376, 39.270733, 24.600138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159225, 38.917953, 24.411625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396227, 0.429966, -0.811255,
		0.918119, -0.193122, 0.346066,
		-0.007875, -0.881949, -0.471280,
		37.156864, 38.653370, 24.270241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811913, 39.183159, 24.271725>,  <37.162376, 39.270733, 24.600138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811913, 39.183159, 24.271725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575451, 38.940140, 24.059528>,  <37.433575, 38.794331, 23.932211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575451, 38.940140, 24.059528>,  <37.811913, 39.183159, 24.271725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575451, 38.940140, 24.059528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442832, 0.305238, -0.843048,
		0.674116, -0.733293, 0.088596,
		-0.591158, -0.607545, -0.530492,
		37.398102, 38.757877, 23.900381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048698, 39.337402, 23.647268>,  <37.811913, 39.183159, 24.271725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048698, 39.337402, 23.647268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736511, 39.115887, 23.531214>,  <37.549198, 38.982979, 23.461580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736511, 39.115887, 23.531214>,  <38.048698, 39.337402, 23.647268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736511, 39.115887, 23.531214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260806, 0.133370, -0.956134,
		0.568194, -0.821906, 0.040340,
		-0.780472, -0.553790, -0.290138,
		37.502369, 38.949749, 23.444172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309559, 38.959858, 23.141251>,  <38.048698, 39.337402, 23.647268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309559, 38.959858, 23.141251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913658, 38.961769, 23.084152>,  <37.676117, 38.962914, 23.049894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913658, 38.961769, 23.084152>,  <38.309559, 38.959858, 23.141251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913658, 38.961769, 23.084152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142815, 0.044404, -0.988753,
		0.001619, -0.999002, -0.044630,
		-0.989748, 0.004773, -0.142744,
		37.616734, 38.963203, 23.041328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249454, 38.449684, 22.657387>,  <38.309559, 38.959858, 23.141251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249454, 38.449684, 22.657387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903843, 38.648743, 22.626898>,  <37.696476, 38.768177, 22.608604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903843, 38.648743, 22.626898>,  <38.249454, 38.449684, 22.657387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903843, 38.648743, 22.626898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089353, 0.002587, -0.995997,
		-0.495454, -0.867378, -0.046701,
		-0.864026, 0.497643, -0.076221,
		37.644634, 38.798035, 22.604031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878693, 38.028870, 22.052118>,  <38.249454, 38.449684, 22.657387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878693, 38.028870, 22.052118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757664, 38.407143, 22.099674>,  <37.685047, 38.634106, 22.128208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757664, 38.407143, 22.099674>,  <37.878693, 38.028870, 22.052118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757664, 38.407143, 22.099674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122231, 0.162208, -0.979157,
		-0.945257, -0.281730, -0.164671,
		-0.302569, 0.945683, 0.118892,
		37.666893, 38.690849, 22.135342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361153, 38.161629, 21.560572>,  <37.878693, 38.028870, 22.052118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361153, 38.161629, 21.560572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506088, 38.526123, 21.638912>,  <37.593052, 38.744820, 21.685917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506088, 38.526123, 21.638912>,  <37.361153, 38.161629, 21.560572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506088, 38.526123, 21.638912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107620, 0.167821, -0.979926,
		-0.925811, 0.376145, -0.037259,
		0.362341, 0.911236, 0.195852,
		37.614792, 38.799496, 21.697668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044605, 38.732784, 21.100021>,  <37.361153, 38.161629, 21.560572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044605, 38.732784, 21.100021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405113, 38.872654, 21.202343>,  <37.621418, 38.956573, 21.263737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405113, 38.872654, 21.202343>,  <37.044605, 38.732784, 21.100021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405113, 38.872654, 21.202343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133113, 0.338385, -0.931545,
		-0.412296, 0.873628, 0.258431,
		0.901273, 0.349672, 0.255806,
		37.675495, 38.977554, 21.279085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129303, 39.403187, 20.744318>,  <37.044605, 38.732784, 21.100021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129303, 39.403187, 20.744318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508457, 39.325382, 20.845255>,  <37.735950, 39.278698, 20.905817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508457, 39.325382, 20.845255>,  <37.129303, 39.403187, 20.744318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508457, 39.325382, 20.845255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291844, 0.212332, -0.932600,
		0.127821, 0.957643, 0.258033,
		0.947887, -0.194511, 0.252342,
		37.792824, 39.267029, 20.920958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587482, 39.943096, 20.509348>,  <37.129303, 39.403187, 20.744318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587482, 39.943096, 20.509348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865196, 39.659809, 20.560575>,  <38.031822, 39.489838, 20.591312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865196, 39.659809, 20.560575>,  <37.587482, 39.943096, 20.509348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865196, 39.659809, 20.560575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305615, 0.129010, -0.943375,
		0.651594, 0.694106, 0.306012,
		0.694280, -0.708219, 0.128067,
		38.073479, 39.447342, 20.598995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142864, 40.238667, 20.164438>,  <37.587482, 39.943096, 20.509348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142864, 40.238667, 20.164438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200809, 39.844879, 20.204123>,  <38.235577, 39.608608, 20.227934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200809, 39.844879, 20.204123>,  <38.142864, 40.238667, 20.164438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200809, 39.844879, 20.204123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412750, -0.031003, -0.910317,
		0.899250, 0.172824, 0.401846,
		0.144866, -0.984465, 0.099213,
		38.244270, 39.549541, 20.233887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867340, 40.105934, 19.969908>,  <38.142864, 40.238667, 20.164438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867340, 40.105934, 19.969908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669296, 39.764008, 19.907734>,  <38.550468, 39.558853, 19.870430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669296, 39.764008, 19.907734>,  <38.867340, 40.105934, 19.969908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669296, 39.764008, 19.907734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491288, -0.127893, -0.861556,
		0.716590, -0.502929, 0.483281,
		-0.495110, -0.854813, -0.155436,
		38.520763, 39.507565, 19.861103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275585, 39.637451, 19.918201>,  <38.867340, 40.105934, 19.969908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275585, 39.637451, 19.918201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970325, 39.462017, 19.728361>,  <38.787170, 39.356758, 19.614456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970325, 39.462017, 19.728361>,  <39.275585, 39.637451, 19.918201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970325, 39.462017, 19.728361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614951, -0.267181, -0.741923,
		0.198593, -0.858054, 0.473608,
		-0.763149, -0.438587, -0.474601,
		38.741383, 39.330441, 19.585981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702473, 39.215084, 19.523798>,  <39.275585, 39.637451, 19.918201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702473, 39.215084, 19.523798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340210, 39.172089, 19.359735>,  <39.122852, 39.146290, 19.261299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340210, 39.172089, 19.359735>,  <39.702473, 39.215084, 19.523798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340210, 39.172089, 19.359735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423238, -0.287339, -0.859247,
		-0.025494, -0.951779, 0.305725,
		-0.905660, -0.107489, -0.410155,
		39.068512, 39.139843, 19.236689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694729, 38.608383, 19.269464>,  <39.702473, 39.215084, 19.523798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694729, 38.608383, 19.269464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410892, 38.798191, 19.061113>,  <39.240589, 38.912075, 18.936102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410892, 38.798191, 19.061113>,  <39.694729, 38.608383, 19.269464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410892, 38.798191, 19.061113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338102, -0.419273, -0.842554,
		-0.618199, -0.773977, 0.137075,
		-0.709589, 0.474520, -0.520877,
		39.198017, 38.940548, 18.904850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537853, 38.049393, 18.897415>,  <39.694729, 38.608383, 19.269464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537853, 38.049393, 18.897415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406933, 38.377151, 18.709175>,  <39.328381, 38.573807, 18.596231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406933, 38.377151, 18.709175>,  <39.537853, 38.049393, 18.897415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406933, 38.377151, 18.709175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326854, -0.369111, -0.870014,
		-0.886588, -0.438578, -0.147010,
		-0.327305, 0.819394, -0.470600,
		39.308743, 38.622971, 18.567995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355446, 37.799057, 18.165134>,  <39.537853, 38.049393, 18.897415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355446, 37.799057, 18.165134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323132, 38.195530, 18.123138>,  <39.303745, 38.433414, 18.097940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323132, 38.195530, 18.123138>,  <39.355446, 37.799057, 18.165134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323132, 38.195530, 18.123138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357923, -0.069462, -0.931164,
		-0.930250, -0.112801, -0.349157,
		-0.080783, 0.991187, -0.104991,
		39.298897, 38.492886, 18.091640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962486, 38.023853, 17.494518>,  <39.355446, 37.799057, 18.165134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962486, 38.023853, 17.494518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234566, 38.279354, 17.638367>,  <39.397812, 38.432655, 17.724676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234566, 38.279354, 17.638367>,  <38.962486, 38.023853, 17.494518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234566, 38.279354, 17.638367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674341, -0.352919, -0.648623,
		-0.287392, 0.683699, -0.670792,
		0.680198, 0.638752, 0.359620,
		39.438625, 38.470982, 17.746252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153194, 38.418900, 16.943819>,  <38.962486, 38.023853, 17.494518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153194, 38.418900, 16.943819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468544, 38.459522, 17.186522>,  <39.657753, 38.483894, 17.332142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468544, 38.459522, 17.186522>,  <39.153194, 38.418900, 16.943819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468544, 38.459522, 17.186522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602010, -0.330453, -0.726900,
		0.126683, 0.938343, -0.321659,
		0.788375, 0.101556, 0.606755,
		39.705055, 38.489990, 17.368547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548306, 38.837437, 16.581882>,  <39.153194, 38.418900, 16.943819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548306, 38.837437, 16.581882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778603, 38.633343, 16.837439>,  <39.916782, 38.510887, 16.990772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778603, 38.633343, 16.837439>,  <39.548306, 38.837437, 16.581882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778603, 38.633343, 16.837439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480772, -0.420771, -0.769292,
		0.661346, 0.750075, 0.003051,
		0.575743, -0.510235, 0.638890,
		39.951324, 38.480270, 17.029106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216366, 39.019531, 16.490089>,  <39.548306, 38.837437, 16.581882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216366, 39.019531, 16.490089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293911, 38.690262, 16.703560>,  <40.340439, 38.492702, 16.831642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293911, 38.690262, 16.703560>,  <40.216366, 39.019531, 16.490089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293911, 38.690262, 16.703560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659340, -0.293482, -0.692199,
		0.726420, 0.486066, 0.485853,
		0.193865, -0.823170, 0.533674,
		40.352070, 38.443310, 16.863663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897507, 38.933331, 16.393915>,  <40.216366, 39.019531, 16.490089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897507, 38.933331, 16.393915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791042, 38.568661, 16.519135>,  <40.727161, 38.349857, 16.594267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791042, 38.568661, 16.519135>,  <40.897507, 38.933331, 16.393915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791042, 38.568661, 16.519135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570894, -0.410771, -0.710878,
		0.776683, -0.010493, 0.629804,
		-0.266165, -0.911678, 0.313049,
		40.711193, 38.295158, 16.613049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451668, 38.533966, 16.556112>,  <40.897507, 38.933331, 16.393915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451668, 38.533966, 16.556112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211697, 38.219059, 16.499128>,  <41.067715, 38.030113, 16.464937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211697, 38.219059, 16.499128>,  <41.451668, 38.533966, 16.556112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211697, 38.219059, 16.499128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654721, -0.380764, -0.652962,
		0.459814, -0.485000, 0.743872,
		-0.599926, -0.787270, -0.142460,
		41.031719, 37.982880, 16.456390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820061, 37.922852, 16.761196>,  <41.451668, 38.533966, 16.556112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820061, 37.922852, 16.761196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527107, 37.876675, 16.492781>,  <41.351337, 37.848969, 16.331732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527107, 37.876675, 16.492781>,  <41.820061, 37.922852, 16.761196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527107, 37.876675, 16.492781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667841, -0.313849, -0.674898,
		-0.132691, -0.942428, 0.306955,
		-0.732381, -0.115444, -0.671037,
		41.307392, 37.842041, 16.291470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030209, 37.355354, 16.303909>,  <41.820061, 37.922852, 16.761196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.030209, 37.355354, 16.303909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365150, 37.174286, 16.426498>,  <42.566116, 37.065643, 16.500051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365150, 37.174286, 16.426498>,  <42.030209, 37.355354, 16.303909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365150, 37.174286, 16.426498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323670, 0.041255, 0.945270,
		-0.440541, -0.890722, -0.111971,
		0.837354, -0.452672, 0.306474,
		42.616356, 37.038483, 16.518440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886002, 36.770664, 16.665903>,  <42.030209, 37.355354, 16.303909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886002, 36.770664, 16.665903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245461, 36.884003, 16.799858>,  <42.461136, 36.952007, 16.880230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245461, 36.884003, 16.799858>,  <41.886002, 36.770664, 16.665903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245461, 36.884003, 16.799858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368243, 0.072390, 0.926907,
		0.238398, -0.956280, 0.169395,
		0.898645, 0.283351, 0.334886,
		42.515053, 36.969009, 16.900324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972652, 36.477669, 17.315313>,  <41.886002, 36.770664, 16.665903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972652, 36.477669, 17.315313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277302, 36.732475, 17.362879>,  <42.460091, 36.885361, 17.391418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277302, 36.732475, 17.362879>,  <41.972652, 36.477669, 17.315313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277302, 36.732475, 17.362879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255873, 0.127029, 0.958328,
		0.595365, -0.760312, 0.259743,
		0.761624, 0.637016, 0.118915,
		42.505791, 36.923580, 17.398554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259068, 36.379391, 17.978441>,  <41.972652, 36.477669, 17.315313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259068, 36.379391, 17.978441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403461, 36.743492, 17.897310>,  <42.490097, 36.961952, 17.848631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403461, 36.743492, 17.897310>,  <42.259068, 36.379391, 17.978441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403461, 36.743492, 17.897310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241596, 0.301346, 0.922400,
		0.900736, -0.283966, 0.328692,
		0.360980, 0.910249, -0.202828,
		42.511757, 37.016567, 17.836462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826714, 36.456612, 18.437943>,  <42.259068, 36.379391, 17.978441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826714, 36.456612, 18.437943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706482, 36.821014, 18.324999>,  <42.634342, 37.039654, 18.257233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706482, 36.821014, 18.324999>,  <42.826714, 36.456612, 18.437943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706482, 36.821014, 18.324999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192846, 0.231883, 0.953436,
		0.934058, 0.341033, 0.105984,
		-0.300578, 0.911003, -0.282359,
		42.616310, 37.094315, 18.240292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.194687, 37.033024, 18.903797>,  <42.826714, 36.456612, 18.437943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.194687, 37.033024, 18.903797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861137, 37.183022, 18.741793>,  <42.661007, 37.273022, 18.644590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861137, 37.183022, 18.741793>,  <43.194687, 37.033024, 18.903797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861137, 37.183022, 18.741793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336557, 0.236147, 0.911573,
		0.437476, 0.896446, -0.070710,
		-0.833873, 0.374993, -0.405013,
		42.610977, 37.295521, 18.620289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235931, 37.755142, 19.154905>,  <43.194687, 37.033024, 18.903797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235931, 37.755142, 19.154905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859966, 37.675312, 19.044096>,  <42.634388, 37.627415, 18.977610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859966, 37.675312, 19.044096>,  <43.235931, 37.755142, 19.154905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859966, 37.675312, 19.044096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331141, 0.335208, 0.882032,
		-0.083173, 0.920763, -0.381153,
		-0.939908, -0.199577, -0.277023,
		42.577995, 37.615440, 18.960989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.917225, 38.330433, 19.271135>,  <43.235931, 37.755142, 19.154905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.917225, 38.330433, 19.271135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631004, 38.051010, 19.270138>,  <42.459270, 37.883358, 19.269539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631004, 38.051010, 19.270138>,  <42.917225, 38.330433, 19.271135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631004, 38.051010, 19.270138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342612, 0.347835, 0.872713,
		-0.608769, 0.625328, -0.488227,
		-0.715554, -0.698553, -0.002494,
		42.416340, 37.841446, 19.269390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406300, 38.651958, 19.668383>,  <42.917225, 38.330433, 19.271135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406300, 38.651958, 19.668383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328030, 38.260082, 19.650824>,  <42.281067, 38.024956, 19.640287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328030, 38.260082, 19.650824>,  <42.406300, 38.651958, 19.668383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328030, 38.260082, 19.650824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464312, 0.053122, 0.884077,
		-0.863787, 0.193370, -0.465274,
		-0.195671, -0.979687, -0.043897,
		42.269329, 37.966175, 19.637655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801708, 38.571690, 20.054640>,  <42.406300, 38.651958, 19.668383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801708, 38.571690, 20.054640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949432, 38.200077, 20.045601>,  <42.038067, 37.977108, 20.040178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949432, 38.200077, 20.045601>,  <41.801708, 38.571690, 20.054640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949432, 38.200077, 20.045601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404191, -0.182476, 0.896288,
		-0.836801, -0.321878, -0.442897,
		0.369314, -0.929030, -0.022596,
		42.060226, 37.921368, 20.038822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267456, 38.255219, 20.369493>,  <41.801708, 38.571690, 20.054640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267456, 38.255219, 20.369493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572392, 37.996807, 20.354120>,  <41.755352, 37.841759, 20.344896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572392, 37.996807, 20.354120>,  <41.267456, 38.255219, 20.369493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572392, 37.996807, 20.354120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232846, -0.329208, 0.915098,
		-0.603837, -0.688667, -0.401395,
		0.762341, -0.646034, -0.038435,
		41.801094, 37.802998, 20.342590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957939, 37.627659, 20.467888>,  <41.267456, 38.255219, 20.369493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957939, 37.627659, 20.467888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343861, 37.587029, 20.564907>,  <41.575413, 37.562649, 20.623119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343861, 37.587029, 20.564907>,  <40.957939, 37.627659, 20.467888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343861, 37.587029, 20.564907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258867, -0.204811, 0.943949,
		-0.046208, -0.973516, -0.223899,
		0.964807, -0.101578, 0.242548,
		41.633305, 37.556557, 20.637671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858387, 37.169670, 20.947834>,  <40.957939, 37.627659, 20.467888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858387, 37.169670, 20.947834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219147, 37.330772, 21.010279>,  <41.435604, 37.427433, 21.047745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219147, 37.330772, 21.010279>,  <40.858387, 37.169670, 20.947834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219147, 37.330772, 21.010279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120097, -0.113351, 0.986270,
		0.414917, -0.908264, -0.053862,
		0.901898, 0.402751, 0.156111,
		41.489716, 37.451599, 21.057112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293995, 36.704525, 21.394009>,  <40.858387, 37.169670, 20.947834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293995, 36.704525, 21.394009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445122, 37.070423, 21.451283>,  <41.535797, 37.289963, 21.485647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445122, 37.070423, 21.451283>,  <41.293995, 36.704525, 21.394009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445122, 37.070423, 21.451283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214429, -0.063996, 0.974641,
		0.900709, -0.398936, 0.171969,
		0.377814, 0.914743, 0.143185,
		41.558464, 37.344845, 21.494238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664963, 36.541203, 22.034655>,  <41.293995, 36.704525, 21.394009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664963, 36.541203, 22.034655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601555, 36.931446, 21.973906>,  <41.563511, 37.165592, 21.937456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601555, 36.931446, 21.973906>,  <41.664963, 36.541203, 22.034655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601555, 36.931446, 21.973906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206236, 0.117711, 0.971397,
		0.965577, 0.185304, 0.182546,
		-0.158516, 0.975606, -0.151875,
		41.554001, 37.224129, 21.928343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789658, 36.832813, 22.690470>,  <41.664963, 36.541203, 22.034655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789658, 36.832813, 22.690470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564411, 37.085007, 22.476782>,  <41.429264, 37.236324, 22.348568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564411, 37.085007, 22.476782>,  <41.789658, 36.832813, 22.690470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564411, 37.085007, 22.476782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451659, 0.306549, 0.837874,
		0.692032, 0.713103, 0.112143,
		-0.563113, 0.630485, -0.534221,
		41.395477, 37.274151, 22.316515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718746, 37.403812, 23.130363>,  <41.789658, 36.832813, 22.690470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718746, 37.403812, 23.130363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418976, 37.453514, 22.870234>,  <41.239113, 37.483337, 22.714155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418976, 37.453514, 22.870234>,  <41.718746, 37.403812, 23.130363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418976, 37.453514, 22.870234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612135, 0.244246, 0.752087,
		0.252290, 0.961720, -0.106983,
		-0.749427, 0.124256, -0.650323,
		41.194149, 37.490791, 22.675137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417152, 38.046936, 23.334249>,  <41.718746, 37.403812, 23.130363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417152, 38.046936, 23.334249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141911, 37.825935, 23.146099>,  <40.976765, 37.693336, 23.033209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141911, 37.825935, 23.146099>,  <41.417152, 38.046936, 23.334249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141911, 37.825935, 23.146099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604799, 0.078544, 0.792495,
		-0.400910, 0.829803, -0.388199,
		-0.688106, -0.552501, -0.470375,
		40.935478, 37.660187, 23.004986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756584, 38.271469, 23.514194>,  <41.417152, 38.046936, 23.334249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756584, 38.271469, 23.514194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638817, 37.909386, 23.391615>,  <40.568157, 37.692135, 23.318068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638817, 37.909386, 23.391615>,  <40.756584, 38.271469, 23.514194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638817, 37.909386, 23.391615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669352, -0.033556, 0.742188,
		-0.682121, 0.423633, -0.596026,
		-0.294415, -0.905213, -0.306448,
		40.550491, 37.637821, 23.299681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033165, 38.287754, 23.488245>,  <40.756584, 38.271469, 23.514194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033165, 38.287754, 23.488245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086170, 37.891693, 23.470201>,  <40.117973, 37.654057, 23.459375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086170, 37.891693, 23.470201>,  <40.033165, 38.287754, 23.488245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086170, 37.891693, 23.470201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702769, -0.125951, 0.700181,
		-0.698968, -0.061084, -0.712540,
		0.132515, -0.990154, -0.045108,
		40.125923, 37.594646, 23.456669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428432, 37.992699, 23.530708>,  <40.033165, 38.287754, 23.488245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428432, 37.992699, 23.530708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643192, 37.667645, 23.621367>,  <39.772049, 37.472610, 23.675762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643192, 37.667645, 23.621367>,  <39.428432, 37.992699, 23.530708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643192, 37.667645, 23.621367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696084, -0.274914, 0.663241,
		-0.476665, -0.513856, -0.713262,
		0.536896, -0.812635, 0.226645,
		39.804260, 37.423855, 23.689360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920040, 37.398994, 23.676685>,  <39.428432, 37.992699, 23.530708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920040, 37.398994, 23.676685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259380, 37.263851, 23.839731>,  <39.462986, 37.182766, 23.937559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259380, 37.263851, 23.839731>,  <38.920040, 37.398994, 23.676685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259380, 37.263851, 23.839731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515854, -0.354253, 0.779999,
		-0.119127, -0.871986, -0.474815,
		0.848353, -0.337855, 0.407617,
		39.513885, 37.162495, 23.962015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870518, 36.665852, 23.907000>,  <38.920040, 37.398994, 23.676685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870518, 36.665852, 23.907000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161198, 36.848827, 24.112000>,  <39.335606, 36.958614, 24.234999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161198, 36.848827, 24.112000>,  <38.870518, 36.665852, 23.907000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161198, 36.848827, 24.112000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384662, -0.347153, 0.855289,
		0.569160, -0.818677, -0.076316,
		0.726699, 0.457441, 0.512500,
		39.379208, 36.986061, 24.265749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870125, 36.286720, 24.421442>,  <38.870518, 36.665852, 23.907000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870125, 36.286720, 24.421442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107063, 36.569679, 24.575699>,  <39.249226, 36.739452, 24.668253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107063, 36.569679, 24.575699>,  <38.870125, 36.286720, 24.421442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107063, 36.569679, 24.575699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414132, -0.143251, 0.898874,
		0.691102, -0.692150, 0.208101,
		0.592345, 0.707395, 0.385643,
		39.284767, 36.781898, 24.691391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107773, 36.058987, 24.988781>,  <38.870125, 36.286720, 24.421442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107773, 36.058987, 24.988781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167694, 36.451809, 25.034607>,  <39.203648, 36.687504, 25.062103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167694, 36.451809, 25.034607>,  <39.107773, 36.058987, 24.988781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167694, 36.451809, 25.034607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254204, -0.073723, 0.964337,
		0.955478, -0.173585, 0.238598,
		0.149804, 0.982055, 0.114566,
		39.212635, 36.746426, 25.068977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507210, 36.113853, 25.707048>,  <39.107773, 36.058987, 24.988781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507210, 36.113853, 25.707048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375980, 36.477299, 25.603678>,  <39.297245, 36.695366, 25.541655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375980, 36.477299, 25.603678>,  <39.507210, 36.113853, 25.707048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375980, 36.477299, 25.603678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258841, 0.176633, 0.949632,
		0.908499, 0.378438, 0.177240,
		-0.328070, 0.908617, -0.258426,
		39.277557, 36.749886, 25.526150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953987, 36.615803, 26.010454>,  <39.507210, 36.113853, 25.707048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953987, 36.615803, 26.010454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585575, 36.758675, 25.948311>,  <39.364529, 36.844398, 25.911026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585575, 36.758675, 25.948311>,  <39.953987, 36.615803, 26.010454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585575, 36.758675, 25.948311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127796, 0.099669, 0.986780,
		0.367940, 0.928704, -0.046152,
		-0.921026, 0.357178, -0.155357,
		39.309269, 36.865829, 25.901703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878872, 37.071941, 26.555557>,  <39.953987, 36.615803, 26.010454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878872, 37.071941, 26.555557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506817, 36.996090, 26.429777>,  <39.283585, 36.950577, 26.354309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506817, 36.996090, 26.429777>,  <39.878872, 37.071941, 26.555557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506817, 36.996090, 26.429777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288789, -0.151144, 0.945387,
		-0.226802, 0.970152, 0.085822,
		-0.930141, -0.189631, -0.314449,
		39.227776, 36.939201, 26.335442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390728, 37.573792, 26.921917>,  <39.878872, 37.071941, 26.555557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390728, 37.573792, 26.921917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179283, 37.260639, 26.790665>,  <39.052418, 37.072746, 26.711914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179283, 37.260639, 26.790665>,  <39.390728, 37.573792, 26.921917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179283, 37.260639, 26.790665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331829, -0.165216, 0.928759,
		-0.781320, 0.599834, -0.172448,
		-0.528610, -0.782881, -0.328129,
		39.020699, 37.025776, 26.692226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739044, 37.668690, 27.228693>,  <39.390728, 37.573792, 26.921917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739044, 37.668690, 27.228693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807587, 37.287941, 27.127039>,  <38.848713, 37.059494, 27.066046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807587, 37.287941, 27.127039>,  <38.739044, 37.668690, 27.228693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807587, 37.287941, 27.127039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184161, -0.284349, 0.940867,
		-0.967845, -0.114417, -0.224021,
		0.171351, -0.951869, -0.254135,
		38.858994, 37.002380, 27.050798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259281, 37.334835, 27.598940>,  <38.739044, 37.668690, 27.228693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259281, 37.334835, 27.598940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500092, 37.028370, 27.508991>,  <38.644577, 36.844490, 27.455021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500092, 37.028370, 27.508991>,  <38.259281, 37.334835, 27.598940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500092, 37.028370, 27.508991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208456, -0.422666, 0.881986,
		-0.770789, -0.484099, -0.414165,
		0.602022, -0.766160, -0.224873,
		38.680698, 36.798523, 27.441530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941479, 36.750210, 27.816242>,  <38.259281, 37.334835, 27.598940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941479, 36.750210, 27.816242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331680, 36.664406, 27.796757>,  <38.565804, 36.612923, 27.785065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331680, 36.664406, 27.796757>,  <37.941479, 36.750210, 27.816242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331680, 36.664406, 27.796757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021430, -0.313085, 0.949483,
		-0.218918, -0.925184, -0.310014,
		0.975508, -0.214502, -0.048714,
		38.624332, 36.600056, 27.782143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987846, 36.036625, 27.924259>,  <37.941479, 36.750210, 27.816242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987846, 36.036625, 27.924259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355499, 36.150299, 28.033394>,  <38.576092, 36.218502, 28.098875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355499, 36.150299, 28.033394>,  <37.987846, 36.036625, 27.924259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355499, 36.150299, 28.033394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147907, -0.392962, 0.907581,
		0.365134, -0.874540, -0.319151,
		0.919130, 0.284184, 0.272835,
		38.631237, 36.235554, 28.115244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330639, 35.529064, 28.289520>,  <37.987846, 36.036625, 27.924259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330639, 35.529064, 28.289520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578827, 35.828255, 28.383795>,  <38.727741, 36.007771, 28.440359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578827, 35.828255, 28.383795>,  <38.330639, 35.529064, 28.289520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578827, 35.828255, 28.383795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015341, -0.288901, 0.957236,
		0.784080, -0.597553, -0.167780,
		0.620470, 0.747975, 0.235689,
		38.764969, 36.052647, 28.454502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902271, 35.164692, 28.583269>,  <38.330639, 35.529064, 28.289520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902271, 35.164692, 28.583269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950775, 35.542858, 28.704260>,  <38.979877, 35.769756, 28.776854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950775, 35.542858, 28.704260>,  <38.902271, 35.164692, 28.583269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950775, 35.542858, 28.704260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148909, -0.318600, 0.936120,
		0.981388, -0.068468, -0.179413,
		0.121255, 0.945413, 0.302475,
		38.987152, 35.826481, 28.795002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487682, 35.162380, 28.994160>,  <38.902271, 35.164692, 28.583269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487682, 35.162380, 28.994160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273075, 35.480816, 29.106153>,  <39.144310, 35.671875, 29.173349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273075, 35.480816, 29.106153>,  <39.487682, 35.162380, 28.994160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273075, 35.480816, 29.106153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011630, -0.338724, 0.940814,
		0.843808, 0.501509, 0.190990,
		-0.536520, 0.796087, 0.279985,
		39.112118, 35.719643, 29.190149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716599, 35.347137, 29.654402>,  <39.487682, 35.162380, 28.994160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716599, 35.347137, 29.654402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364830, 35.536762, 29.671757>,  <39.153770, 35.650539, 29.682169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364830, 35.536762, 29.671757>,  <39.716599, 35.347137, 29.654402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364830, 35.536762, 29.671757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163097, -0.385665, 0.908109,
		0.447235, 0.791534, 0.416480,
		-0.879421, 0.474064, 0.043386,
		39.101006, 35.678982, 29.684772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680931, 35.513168, 30.420647>,  <39.716599, 35.347137, 29.654402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680931, 35.513168, 30.420647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310398, 35.549973, 30.274525>,  <39.088078, 35.572056, 30.186852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310398, 35.549973, 30.274525>,  <39.680931, 35.513168, 30.420647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310398, 35.549973, 30.274525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376056, -0.168464, 0.911154,
		0.022295, 0.981404, 0.190655,
		-0.926329, 0.092011, -0.365307,
		39.032501, 35.577576, 30.164932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380013, 36.064400, 30.853037>,  <39.680931, 35.513168, 30.420647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380013, 36.064400, 30.853037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109863, 35.811352, 30.701426>,  <38.947773, 35.659523, 30.610458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109863, 35.811352, 30.701426>,  <39.380013, 36.064400, 30.853037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109863, 35.811352, 30.701426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324338, -0.206788, 0.923062,
		-0.662323, 0.746348, -0.065522,
		-0.675376, -0.632617, -0.379029,
		38.907249, 35.621567, 30.587717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745552, 36.262840, 31.162766>,  <39.380013, 36.064400, 30.853037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745552, 36.262840, 31.162766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711884, 35.891365, 31.018291>,  <38.691681, 35.668480, 30.931608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711884, 35.891365, 31.018291>,  <38.745552, 36.262840, 31.162766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711884, 35.891365, 31.018291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130494, -0.349074, 0.927965,
		-0.987869, 0.125244, -0.091805,
		-0.084176, -0.928688, -0.361184,
		38.686630, 35.612759, 30.909937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078949, 35.863422, 31.363127>,  <38.745552, 36.262840, 31.162766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078949, 35.863422, 31.363127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377445, 35.611160, 31.277889>,  <38.556541, 35.459805, 31.226748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377445, 35.611160, 31.277889>,  <38.078949, 35.863422, 31.363127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377445, 35.611160, 31.277889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050572, -0.372896, 0.926494,
		-0.663758, -0.680607, -0.310162,
		0.746236, -0.630653, -0.213093,
		38.601315, 35.421963, 31.213961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807438, 35.164745, 31.452909>,  <38.078949, 35.863422, 31.363127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807438, 35.164745, 31.452909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206409, 35.177528, 31.478582>,  <38.445793, 35.185200, 31.493986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206409, 35.177528, 31.478582>,  <37.807438, 35.164745, 31.452909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206409, 35.177528, 31.478582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044661, -0.423357, 0.904862,
		0.056088, -0.905399, -0.420840,
		0.997426, 0.031957, 0.064181,
		38.505638, 35.187115, 31.497837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174049, 34.398243, 31.461845>,  <37.807438, 35.164745, 31.452909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174049, 34.398243, 31.461845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357483, 34.695011, 31.657503>,  <38.467541, 34.873070, 31.774899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357483, 34.695011, 31.657503>,  <38.174049, 34.398243, 31.461845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357483, 34.695011, 31.657503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074862, -0.580730, 0.810647,
		0.885494, -0.335129, -0.321853,
		0.458581, 0.741917, 0.489145,
		38.495056, 34.917587, 31.804247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677731, 33.989471, 31.685638>,  <38.174049, 34.398243, 31.461845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677731, 33.989471, 31.685638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682461, 34.319939, 31.910961>,  <38.685299, 34.518219, 32.046154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682461, 34.319939, 31.910961>,  <38.677731, 33.989471, 31.685638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682461, 34.319939, 31.910961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058989, -0.562941, 0.824390,
		0.998189, 0.023482, -0.055390,
		0.011824, 0.826164, 0.563306,
		38.686008, 34.567787, 32.079952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203751, 33.818485, 32.096931>,  <38.677731, 33.989471, 31.685638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203751, 33.818485, 32.096931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002853, 34.123005, 32.260971>,  <38.882317, 34.305717, 32.359394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002853, 34.123005, 32.260971>,  <39.203751, 33.818485, 32.096931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002853, 34.123005, 32.260971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091860, -0.424593, 0.900712,
		0.859836, 0.490044, 0.143314,
		-0.502238, 0.761300, 0.410096,
		38.852180, 34.351395, 32.383999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594475, 34.044224, 32.651974>,  <39.203751, 33.818485, 32.096931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594475, 34.044224, 32.651974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212631, 34.137909, 32.725590>,  <38.983524, 34.194118, 32.769760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212631, 34.137909, 32.725590>,  <39.594475, 34.044224, 32.651974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212631, 34.137909, 32.725590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069749, -0.424931, 0.902535,
		0.289587, 0.874403, 0.389306,
		-0.954607, 0.234209, 0.184043,
		38.926250, 34.208172, 32.780804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599030, 34.176235, 33.309715>,  <39.594475, 34.044224, 32.651974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599030, 34.176235, 33.309715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204811, 34.188519, 33.243080>,  <38.968281, 34.195889, 33.203098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204811, 34.188519, 33.243080>,  <39.599030, 34.176235, 33.309715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204811, 34.188519, 33.243080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164114, -0.416799, 0.894061,
		-0.041983, 0.908480, 0.415814,
		-0.985548, 0.030705, -0.166593,
		38.909145, 34.197731, 33.193104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361256, 34.501316, 33.926136>,  <39.599030, 34.176235, 33.309715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361256, 34.501316, 33.926136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044125, 34.319489, 33.763760>,  <38.853844, 34.210392, 33.666332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044125, 34.319489, 33.763760>,  <39.361256, 34.501316, 33.926136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044125, 34.319489, 33.763760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285987, -0.310699, 0.906464,
		-0.538175, 0.834766, 0.116331,
		-0.792830, -0.454567, -0.405943,
		38.806274, 34.183117, 33.641975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831264, 34.725433, 34.288635>,  <39.361256, 34.501316, 33.926136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831264, 34.725433, 34.288635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704346, 34.386078, 34.119141>,  <38.628193, 34.182465, 34.017445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704346, 34.386078, 34.119141>,  <38.831264, 34.725433, 34.288635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704346, 34.386078, 34.119141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519165, -0.218520, 0.826267,
		-0.793594, 0.482160, -0.371120,
		-0.317295, -0.848393, -0.423737,
		38.609158, 34.131561, 33.992020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073875, 34.673302, 34.543777>,  <38.831264, 34.725433, 34.288635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073875, 34.673302, 34.543777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144672, 34.300484, 34.417313>,  <38.187153, 34.076794, 34.341434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144672, 34.300484, 34.417313>,  <38.073875, 34.673302, 34.543777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144672, 34.300484, 34.417313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404250, -0.361735, 0.840077,
		-0.897359, -0.020880, -0.440806,
		0.176996, -0.932047, -0.316166,
		38.197773, 34.020870, 34.322464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551647, 34.304478, 34.733967>,  <38.073875, 34.673302, 34.543777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551647, 34.304478, 34.733967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842281, 34.032074, 34.697521>,  <38.016663, 33.868633, 34.675652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842281, 34.032074, 34.697521>,  <37.551647, 34.304478, 34.733967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842281, 34.032074, 34.697521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298006, -0.431853, 0.851291,
		-0.619085, -0.591382, -0.516722,
		0.726586, -0.681007, -0.091118,
		38.060257, 33.827770, 34.670185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310368, 33.657463, 34.900436>,  <37.551647, 34.304478, 34.733967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310368, 33.657463, 34.900436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707043, 33.649509, 34.951279>,  <37.945049, 33.644737, 34.981785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707043, 33.649509, 34.951279>,  <37.310368, 33.657463, 34.900436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707043, 33.649509, 34.951279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120503, -0.489620, 0.863569,
		0.045058, -0.871709, -0.487948,
		0.991690, -0.019888, 0.127105,
		38.004551, 33.643543, 34.989410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398376, 32.955357, 35.167480>,  <37.310368, 33.657463, 34.900436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398376, 32.955357, 35.167480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728600, 33.157475, 35.267990>,  <37.926731, 33.278744, 35.328297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728600, 33.157475, 35.267990>,  <37.398376, 32.955357, 35.167480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728600, 33.157475, 35.267990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105590, -0.299092, 0.948364,
		0.554358, -0.809457, -0.193563,
		0.825553, 0.505295, 0.251274,
		37.976265, 33.309063, 35.343372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856476, 32.457291, 35.544312>,  <37.398376, 32.955357, 35.167480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856476, 32.457291, 35.544312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989460, 32.813835, 35.667561>,  <38.069252, 33.027763, 35.741508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989460, 32.813835, 35.667561>,  <37.856476, 32.457291, 35.544312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989460, 32.813835, 35.667561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173621, -0.263273, 0.948969,
		0.926998, -0.368992, 0.067232,
		0.332462, 0.891365, 0.308119,
		38.089199, 33.081245, 35.759995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478374, 32.446041, 36.105904>,  <37.856476, 32.457291, 35.544312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478374, 32.446041, 36.105904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264950, 32.783207, 36.133621>,  <38.136894, 32.985508, 36.150253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264950, 32.783207, 36.133621>,  <38.478374, 32.446041, 36.105904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264950, 32.783207, 36.133621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216721, -0.215462, 0.952160,
		0.817520, 0.493022, 0.297641,
		-0.533566, 0.842915, 0.069296,
		38.104881, 33.036083, 36.154411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600201, 32.732124, 36.719402>,  <38.478374, 32.446041, 36.105904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600201, 32.732124, 36.719402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330635, 33.026318, 36.691380>,  <38.168896, 33.202831, 36.674564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330635, 33.026318, 36.691380>,  <38.600201, 32.732124, 36.719402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330635, 33.026318, 36.691380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115992, -0.011673, 0.993182,
		0.729648, 0.677446, 0.093177,
		-0.673914, 0.735480, -0.070062,
		38.128460, 33.246964, 36.670361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757828, 33.300003, 37.234798>,  <38.600201, 32.732124, 36.719402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757828, 33.300003, 37.234798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376328, 33.264721, 37.119850>,  <38.147427, 33.243553, 37.050880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376328, 33.264721, 37.119850>,  <38.757828, 33.300003, 37.234798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376328, 33.264721, 37.119850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268858, -0.177296, 0.946722,
		-0.134452, 0.980197, 0.145382,
		-0.953750, -0.088201, -0.287371,
		38.090202, 33.238262, 37.033638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350948, 33.880608, 37.623852>,  <38.757828, 33.300003, 37.234798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350948, 33.880608, 37.623852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094135, 33.598923, 37.502598>,  <37.940048, 33.429913, 37.429844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094135, 33.598923, 37.502598>,  <38.350948, 33.880608, 37.623852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094135, 33.598923, 37.502598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448888, 0.024743, 0.893245,
		-0.621530, 0.709563, -0.331996,
		-0.642028, -0.704207, -0.303136,
		37.901527, 33.387661, 37.411655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696747, 33.968632, 37.926243>,  <38.350948, 33.880608, 37.623852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696747, 33.968632, 37.926243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723110, 33.578926, 37.840019>,  <37.738930, 33.345104, 37.788284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723110, 33.578926, 37.840019>,  <37.696747, 33.968632, 37.926243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723110, 33.578926, 37.840019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419787, -0.223058, 0.879786,
		-0.905226, 0.032501, -0.423686,
		0.065913, -0.974263, -0.215562,
		37.742886, 33.286648, 37.775352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056580, 33.628387, 37.859978>,  <37.696747, 33.968632, 37.926243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056580, 33.628387, 37.859978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340370, 33.377926, 37.989334>,  <37.510643, 33.227650, 38.066948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340370, 33.377926, 37.989334>,  <37.056580, 33.628387, 37.859978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340370, 33.377926, 37.989334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503028, -0.128565, 0.854654,
		-0.493569, -0.769027, -0.406187,
		0.709474, -0.626154, 0.323386,
		37.553211, 33.190079, 38.086349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769009, 33.153564, 38.165428>,  <37.056580, 33.628387, 37.859978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769009, 33.153564, 38.165428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134510, 33.086411, 38.313412>,  <37.353809, 33.046120, 38.402203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134510, 33.086411, 38.313412>,  <36.769009, 33.153564, 38.165428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134510, 33.086411, 38.313412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400616, -0.220970, 0.889202,
		-0.067532, -0.960722, -0.269169,
		0.913754, -0.167883, 0.369958,
		37.408638, 33.036045, 38.424400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862335, 32.417053, 38.396446>,  <36.769009, 33.153564, 38.165428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862335, 32.417053, 38.396446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068531, 32.683563, 38.611980>,  <37.192249, 32.843468, 38.741302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068531, 32.683563, 38.611980>,  <36.862335, 32.417053, 38.396446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068531, 32.683563, 38.611980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424573, -0.347611, 0.836005,
		0.744314, -0.659731, 0.103691,
		0.515494, 0.666274, 0.538836,
		37.223179, 32.883446, 38.773632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992714, 32.570808, 39.152031>,  <36.862335, 32.417053, 38.396446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992714, 32.570808, 39.152031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203392, 32.242332, 39.064178>,  <37.329800, 32.045246, 39.011467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203392, 32.242332, 39.064178>,  <36.992714, 32.570808, 39.152031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203392, 32.242332, 39.064178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227763, 0.385256, -0.894261,
		0.818971, 0.420983, 0.389950,
		0.526699, -0.821189, -0.219629,
		37.361401, 31.995975, 38.998291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785019, 32.733894, 38.994793>,  <36.992714, 32.570808, 39.152031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785019, 32.733894, 38.994793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617306, 32.424747, 38.804268>,  <37.516678, 32.239258, 38.689953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617306, 32.424747, 38.804268>,  <37.785019, 32.733894, 38.994793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617306, 32.424747, 38.804268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154100, 0.456461, -0.876297,
		0.894683, -0.440814, -0.072285,
		-0.419280, -0.772869, -0.476317,
		37.491520, 32.192886, 38.661373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326160, 32.436756, 38.558208>,  <37.785019, 32.733894, 38.994793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326160, 32.436756, 38.558208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958607, 32.398853, 38.405014>,  <37.738075, 32.376110, 38.313095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958607, 32.398853, 38.405014>,  <38.326160, 32.436756, 38.558208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958607, 32.398853, 38.405014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284701, 0.512785, -0.809936,
		0.273137, -0.853272, -0.444211,
		-0.918880, -0.094757, -0.382988,
		37.682941, 32.370426, 38.290119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281033, 32.200764, 37.887794>,  <38.326160, 32.436756, 38.558208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281033, 32.200764, 37.887794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978233, 32.451023, 37.963177>,  <37.796555, 32.601177, 38.008408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978233, 32.451023, 37.963177>,  <38.281033, 32.200764, 37.887794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978233, 32.451023, 37.963177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172784, 0.469817, -0.865689,
		-0.630158, -0.622764, -0.463753,
		-0.756999, 0.625650, 0.188455,
		37.751133, 32.638718, 38.019714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806892, 32.050228, 37.336250>,  <38.281033, 32.200764, 37.887794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806892, 32.050228, 37.336250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751793, 32.418266, 37.482918>,  <37.718735, 32.639088, 37.570919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751793, 32.418266, 37.482918>,  <37.806892, 32.050228, 37.336250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751793, 32.418266, 37.482918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127245, 0.383571, -0.914703,
		-0.982260, -0.079341, -0.169914,
		-0.137747, 0.920097, 0.366671,
		37.710468, 32.694294, 37.592918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222954, 32.361389, 37.000004>,  <37.806892, 32.050228, 37.336250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222954, 32.361389, 37.000004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415462, 32.686565, 37.131153>,  <37.530968, 32.881672, 37.209843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415462, 32.686565, 37.131153>,  <37.222954, 32.361389, 37.000004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415462, 32.686565, 37.131153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130585, 0.303378, -0.943880,
		-0.866790, 0.497079, 0.039849,
		0.481272, 0.812942, 0.327876,
		37.559845, 32.930447, 37.229515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861279, 32.915939, 36.716255>,  <37.222954, 32.361389, 37.000004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861279, 32.915939, 36.716255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236843, 33.018959, 36.807564>,  <37.462181, 33.080772, 36.862350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236843, 33.018959, 36.807564>,  <36.861279, 32.915939, 36.716255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236843, 33.018959, 36.807564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108962, 0.406707, -0.907037,
		-0.326448, 0.876503, 0.353800,
		0.938914, 0.257550, 0.228275,
		37.518517, 33.096226, 36.876045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920143, 33.610924, 36.531479>,  <36.861279, 32.915939, 36.716255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920143, 33.610924, 36.531479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274128, 33.424789, 36.538361>,  <37.486519, 33.313107, 36.542492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274128, 33.424789, 36.538361>,  <36.920143, 33.610924, 36.531479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274128, 33.424789, 36.538361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253297, 0.450045, -0.856329,
		0.390739, 0.762181, 0.516143,
		0.884965, -0.465339, 0.017208,
		37.539619, 33.285187, 36.543522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359871, 34.082756, 36.313339>,  <36.920143, 33.610924, 36.531479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359871, 34.082756, 36.313339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555847, 33.741856, 36.239986>,  <37.673435, 33.537315, 36.195976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555847, 33.741856, 36.239986>,  <37.359871, 34.082756, 36.313339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555847, 33.741856, 36.239986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386648, 0.400981, -0.830492,
		0.781318, 0.335991, 0.525978,
		0.489945, -0.852247, -0.183383,
		37.702831, 33.486183, 36.184971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872971, 34.383327, 35.897129>,  <37.359871, 34.082756, 36.313339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872971, 34.383327, 35.897129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865749, 33.986637, 35.846298>,  <37.861416, 33.748623, 35.815800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865749, 33.986637, 35.846298>,  <37.872971, 34.383327, 35.897129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865749, 33.986637, 35.846298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532881, 0.098000, -0.840496,
		0.845997, -0.082891, 0.526704,
		-0.018052, -0.991728, -0.127079,
		37.860332, 33.689117, 35.808174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584534, 34.258053, 36.226208>,  <37.872971, 34.383327, 35.897129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584534, 34.258053, 36.226208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445549, 33.908913, 36.089153>,  <38.362160, 33.699429, 36.006920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445549, 33.908913, 36.089153>,  <38.584534, 34.258053, 36.226208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445549, 33.908913, 36.089153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161867, 0.304085, -0.938792,
		0.923618, -0.381656, 0.035629,
		-0.347461, -0.872853, -0.342636,
		38.341312, 33.647057, 35.986362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981102, 34.044525, 35.662437>,  <38.584534, 34.258053, 36.226208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981102, 34.044525, 35.662437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686878, 33.788464, 35.573753>,  <38.510342, 33.634827, 35.520542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686878, 33.788464, 35.573753>,  <38.981102, 34.044525, 35.662437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686878, 33.788464, 35.573753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133188, 0.184227, -0.973818,
		0.664234, -0.745833, -0.050251,
		-0.735564, -0.640151, -0.221706,
		38.466209, 33.596420, 35.507240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242748, 33.512608, 35.268654>,  <38.981102, 34.044525, 35.662437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242748, 33.512608, 35.268654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860054, 33.599236, 35.190929>,  <38.630436, 33.651211, 35.144295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860054, 33.599236, 35.190929>,  <39.242748, 33.512608, 35.268654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860054, 33.599236, 35.190929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266625, 0.385223, -0.883467,
		-0.116477, -0.897052, -0.426299,
		-0.956736, 0.216566, -0.194306,
		38.573032, 33.664204, 35.132637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113590, 33.085175, 34.571018>,  <39.242748, 33.512608, 35.268654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113590, 33.085175, 34.571018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773674, 33.294479, 34.596462>,  <38.569725, 33.420063, 34.611729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773674, 33.294479, 34.596462>,  <39.113590, 33.085175, 34.571018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773674, 33.294479, 34.596462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026613, 0.163115, -0.986248,
		-0.526442, -0.836415, -0.152540,
		-0.849794, 0.523262, 0.063611,
		38.518734, 33.451458, 34.615547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700336, 32.921528, 33.990181>,  <39.113590, 33.085175, 34.571018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700336, 32.921528, 33.990181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548939, 33.280457, 34.081005>,  <38.458099, 33.495815, 34.135498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548939, 33.280457, 34.081005>,  <38.700336, 32.921528, 33.990181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548939, 33.280457, 34.081005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017491, 0.238332, -0.971026,
		-0.925437, -0.371502, -0.074513,
		-0.378497, 0.897320, 0.227059,
		38.435390, 33.549652, 34.149124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156361, 33.073967, 33.510899>,  <38.700336, 32.921528, 33.990181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156361, 33.073967, 33.510899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268761, 33.435997, 33.638573>,  <38.336201, 33.653214, 33.715176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268761, 33.435997, 33.638573>,  <38.156361, 33.073967, 33.510899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268761, 33.435997, 33.638573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019052, 0.337781, -0.941032,
		-0.959519, 0.258348, 0.112160,
		0.280999, 0.905074, 0.319186,
		38.353062, 33.707520, 33.734329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743256, 33.606544, 33.132164>,  <38.156361, 33.073967, 33.510899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743256, 33.606544, 33.132164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071369, 33.780781, 33.280430>,  <38.268238, 33.885323, 33.369389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071369, 33.780781, 33.280430>,  <37.743256, 33.606544, 33.132164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071369, 33.780781, 33.280430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011375, 0.635514, -0.772006,
		-0.571843, 0.637481, 0.516347,
		0.820284, 0.435592, 0.370666,
		38.317455, 33.911457, 33.391628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563416, 34.315079, 33.033001>,  <37.743256, 33.606544, 33.132164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563416, 34.315079, 33.033001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960003, 34.280380, 33.071934>,  <38.197956, 34.259560, 33.095291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960003, 34.280380, 33.071934>,  <37.563416, 34.315079, 33.033001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960003, 34.280380, 33.071934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129715, 0.731517, -0.669371,
		-0.013129, 0.676282, 0.736526,
		0.991464, -0.086751, 0.097328,
		38.257442, 34.254356, 33.101131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990562, 34.804615, 33.314434>,  <37.563416, 34.315079, 33.033001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990562, 34.804615, 33.314434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241360, 34.601421, 33.078186>,  <38.391838, 34.479504, 32.936436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241360, 34.601421, 33.078186>,  <37.990562, 34.804615, 33.314434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241360, 34.601421, 33.078186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144760, 0.820922, -0.552387,
		0.765457, 0.260844, 0.588248,
		0.626993, -0.507983, -0.590621,
		38.429459, 34.449028, 32.901001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514740, 35.254726, 33.205017>,  <37.990562, 34.804615, 33.314434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514740, 35.254726, 33.205017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571857, 34.980366, 32.919601>,  <38.606129, 34.815750, 32.748352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571857, 34.980366, 32.919601>,  <38.514740, 35.254726, 33.205017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571857, 34.980366, 32.919601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132417, 0.727688, -0.673005,
		0.980854, 0.001617, 0.194735,
		0.142795, -0.685906, -0.713542,
		38.614697, 34.774593, 32.705540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806087, 35.647694, 32.667805>,  <38.514740, 35.254726, 33.205017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806087, 35.647694, 32.667805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799809, 35.291882, 32.485165>,  <38.796043, 35.078392, 32.375580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799809, 35.291882, 32.485165>,  <38.806087, 35.647694, 32.667805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799809, 35.291882, 32.485165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247817, 0.438946, -0.863662,
		0.968680, -0.126706, 0.213554,
		-0.015692, -0.889535, -0.456598,
		38.795101, 35.025021, 32.348186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448368, 35.646515, 32.299465>,  <38.806087, 35.647694, 32.667805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448368, 35.646515, 32.299465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153065, 35.433384, 32.134026>,  <38.975883, 35.305504, 32.034763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153065, 35.433384, 32.134026>,  <39.448368, 35.646515, 32.299465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153065, 35.433384, 32.134026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241311, 0.363960, -0.899612,
		0.629876, -0.763952, -0.140119,
		-0.738259, -0.532832, -0.413600,
		38.931587, 35.273533, 32.009945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803242, 35.210854, 31.808563>,  <39.448368, 35.646515, 32.299465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803242, 35.210854, 31.808563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418072, 35.221859, 31.701218>,  <39.186970, 35.228462, 31.636810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418072, 35.221859, 31.701218>,  <39.803242, 35.210854, 31.808563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418072, 35.221859, 31.701218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269410, 0.149515, -0.951348,
		0.013944, -0.988376, -0.151386,
		-0.962924, 0.027519, -0.268364,
		39.129196, 35.230114, 31.620708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085346, 35.968487, 31.926365>,  <39.803242, 35.210854, 31.808563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085346, 35.968487, 31.926365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087193, 35.641331, 32.156506>,  <40.088303, 35.445038, 32.294590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087193, 35.641331, 32.156506>,  <40.085346, 35.968487, 31.926365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087193, 35.641331, 32.156506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753679, 0.380991, 0.535549,
		-0.657226, 0.431157, 0.618189,
		0.004618, -0.817893, 0.575352,
		40.088577, 35.395962, 32.329109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858849, 36.068539, 32.714806>,  <40.085346, 35.968487, 31.926365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858849, 36.068539, 32.714806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102287, 35.751183, 32.710007>,  <40.248352, 35.560768, 32.707127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102287, 35.751183, 32.710007>,  <39.858849, 36.068539, 32.714806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102287, 35.751183, 32.710007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602260, 0.452035, 0.657987,
		-0.516618, -0.407673, 0.752933,
		0.608596, -0.793390, -0.011996,
		40.284866, 35.513165, 32.706409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086849, 35.756363, 33.342117>,  <39.858849, 36.068539, 32.714806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086849, 35.756363, 33.342117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381435, 35.687817, 33.080353>,  <40.558186, 35.646690, 32.923294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381435, 35.687817, 33.080353>,  <40.086849, 35.756363, 33.342117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381435, 35.687817, 33.080353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656941, 0.411981, 0.631427,
		0.161401, -0.894933, 0.415986,
		0.736463, -0.171365, -0.654413,
		40.602375, 35.636406, 32.884029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657696, 35.532482, 33.678890>,  <40.086849, 35.756363, 33.342117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657696, 35.532482, 33.678890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842247, 35.647762, 33.343254>,  <40.952976, 35.716930, 33.141872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842247, 35.647762, 33.343254>,  <40.657696, 35.532482, 33.678890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842247, 35.647762, 33.343254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761533, 0.356596, 0.541209,
		0.455193, -0.888696, -0.054948,
		0.461375, 0.288200, -0.839091,
		40.980659, 35.734222, 33.091526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377396, 35.228256, 33.523155>,  <40.657696, 35.532482, 33.678890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377396, 35.228256, 33.523155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351376, 35.582951, 33.340084>,  <41.335762, 35.795765, 33.230240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351376, 35.582951, 33.340084>,  <41.377396, 35.228256, 33.523155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351376, 35.582951, 33.340084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914001, 0.237007, 0.329286,
		0.400462, -0.396901, -0.825893,
		-0.065049, 0.886734, -0.457680,
		41.331860, 35.848972, 33.202782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006039, 35.500389, 33.163845>,  <41.377396, 35.228256, 33.523155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006039, 35.500389, 33.163845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880123, 35.875195, 33.224396>,  <41.804573, 36.100079, 33.260727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880123, 35.875195, 33.224396>,  <42.006039, 35.500389, 33.163845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880123, 35.875195, 33.224396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904636, 0.247914, 0.346659,
		0.287296, 0.246064, -0.925696,
		-0.314793, 0.937012, 0.151373,
		41.785686, 36.156300, 33.269806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543533, 35.869987, 33.293266>,  <42.006039, 35.500389, 33.163845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543533, 35.869987, 33.293266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280891, 36.127831, 33.449905>,  <42.123306, 36.282536, 33.543888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280891, 36.127831, 33.449905>,  <42.543533, 35.869987, 33.293266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280891, 36.127831, 33.449905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710848, 0.355334, 0.606987,
		0.252123, 0.676916, -0.691534,
		-0.656605, 0.644611, 0.391596,
		42.083912, 36.321213, 33.567383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701630, 36.610550, 33.059990>,  <42.543533, 35.869987, 33.293266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701630, 36.610550, 33.059990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521671, 36.562252, 33.413940>,  <42.413696, 36.533276, 33.626312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521671, 36.562252, 33.413940>,  <42.701630, 36.610550, 33.059990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521671, 36.562252, 33.413940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804072, 0.376436, 0.460179,
		-0.388663, 0.918541, -0.072273,
		-0.449899, -0.120741, 0.884880,
		42.386700, 36.526031, 33.679405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976788, 37.123650, 33.581097>,  <42.701630, 36.610550, 33.059990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976788, 37.123650, 33.581097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863689, 36.828693, 33.826473>,  <42.795830, 36.651718, 33.973698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863689, 36.828693, 33.826473>,  <42.976788, 37.123650, 33.581097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863689, 36.828693, 33.826473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767213, 0.209988, 0.606044,
		-0.575706, 0.641998, 0.506361,
		-0.282749, -0.737390, 0.613440,
		42.778866, 36.607475, 34.010506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984467, 37.211075, 34.339565>,  <42.976788, 37.123650, 33.581097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984467, 37.211075, 34.339565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.043232, 36.816570, 34.309376>,  <43.078491, 36.579868, 34.291264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.043232, 36.816570, 34.309376>,  <42.984467, 37.211075, 34.339565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043232, 36.816570, 34.309376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750744, 0.061501, 0.657724,
		-0.644049, -0.153291, 0.749468,
		0.146917, -0.986265, -0.075473,
		43.087307, 36.520691, 34.286736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010849, 36.938545, 35.084267>,  <42.984467, 37.211075, 34.339565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010849, 36.938545, 35.084267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193214, 36.665249, 34.856117>,  <43.302635, 36.501270, 34.719227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193214, 36.665249, 34.856117>,  <43.010849, 36.938545, 35.084267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193214, 36.665249, 34.856117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763843, -0.028559, 0.644769,
		-0.456823, -0.729632, 0.508871,
		0.455912, -0.683243, -0.570371,
		43.329987, 36.460278, 34.685005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099689, 36.327240, 35.549191>,  <43.010849, 36.938545, 35.084267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099689, 36.327240, 35.549191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369522, 36.374779, 35.257763>,  <43.531422, 36.403301, 35.082905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369522, 36.374779, 35.257763>,  <43.099689, 36.327240, 35.549191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369522, 36.374779, 35.257763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708156, 0.174507, 0.684151,
		0.208454, -0.977457, 0.033553,
		0.674583, 0.118853, -0.728568,
		43.571896, 36.410435, 35.039192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704491, 35.988243, 35.698887>,  <43.099689, 36.327240, 35.549191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704491, 35.988243, 35.698887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823505, 36.266159, 35.436974>,  <43.894913, 36.432907, 35.279823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823505, 36.266159, 35.436974>,  <43.704491, 35.988243, 35.698887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823505, 36.266159, 35.436974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677045, 0.329997, 0.657809,
		0.673114, -0.639041, -0.372216,
		0.297536, 0.694787, -0.654785,
		43.912766, 36.474594, 35.240540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454300, 35.954609, 35.502258>,  <43.704491, 35.988243, 35.698887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454300, 35.954609, 35.502258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324402, 36.331879, 35.474091>,  <44.246464, 36.558243, 35.457191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324402, 36.331879, 35.474091>,  <44.454300, 35.954609, 35.502258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324402, 36.331879, 35.474091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615686, 0.267329, 0.741260,
		0.717963, 0.197364, -0.667515,
		-0.324744, 0.943177, -0.070417,
		44.226978, 36.614830, 35.452965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087940, 35.480080, 36.052586>,  <44.454300, 35.954609, 35.502258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087940, 35.480080, 36.052586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436619, 35.445114, 35.859711>,  <44.645824, 35.424137, 35.743984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436619, 35.445114, 35.859711>,  <44.087940, 35.480080, 36.052586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436619, 35.445114, 35.859711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226935, -0.800095, 0.555291,
		-0.434335, -0.593470, -0.677603,
		0.871696, -0.087410, -0.482189,
		44.698128, 35.418892, 35.715054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233086, 34.837364, 35.541336>,  <44.087940, 35.480080, 36.052586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233086, 34.837364, 35.541336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.537052, 34.997307, 35.746334>,  <44.719433, 35.093273, 35.869331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.537052, 34.997307, 35.746334>,  <44.233086, 34.837364, 35.541336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.537052, 34.997307, 35.746334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175768, -0.885451, 0.430212,
		0.625809, -0.236844, -0.743147,
		0.759913, 0.399853, 0.512493,
		44.765026, 35.117264, 35.900082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.893673, 34.528408, 35.405655>,  <44.233086, 34.837364, 35.541336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.893673, 34.528408, 35.405655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848164, 34.630806, 35.789639>,  <44.820858, 34.692245, 36.020027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848164, 34.630806, 35.789639>,  <44.893673, 34.528408, 35.405655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848164, 34.630806, 35.789639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209470, -0.938332, 0.275054,
		0.971173, 0.232377, 0.053136,
		-0.113775, 0.255995, 0.959959,
		44.814030, 34.707603, 36.077625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.514961, 34.481148, 35.827576>,  <44.893673, 34.528408, 35.405655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.514961, 34.481148, 35.827576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172657, 34.398121, 36.017139>,  <44.967274, 34.348305, 36.130878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172657, 34.398121, 36.017139>,  <45.514961, 34.481148, 35.827576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172657, 34.398121, 36.017139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348190, -0.908569, 0.230795,
		0.382678, 0.362516, 0.849788,
		-0.855758, -0.207567, 0.473914,
		44.915928, 34.335850, 36.159313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.115246, 34.808491, 35.583458>,  <45.514961, 34.481148, 35.827576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.115246, 34.808491, 35.583458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.268852, 35.001789, 35.268749>,  <46.361015, 35.117767, 35.079926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.268852, 35.001789, 35.268749>,  <46.115246, 34.808491, 35.583458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.268852, 35.001789, 35.268749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881737, 0.060927, 0.467790,
		0.273994, -0.873361, -0.402701,
		0.384014, 0.483248, -0.786768,
		46.384056, 35.146763, 35.032719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.623425, 34.401585, 35.220112>,  <46.115246, 34.808491, 35.583458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.623425, 34.401585, 35.220112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.685688, 34.795830, 35.193790>,  <46.723045, 35.032379, 35.177998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.685688, 34.795830, 35.193790>,  <46.623425, 34.401585, 35.220112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.685688, 34.795830, 35.193790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654409, -0.052990, 0.754282,
		0.739945, -0.160476, -0.653245,
		0.155659, 0.985616, -0.065807,
		46.732388, 35.091515, 35.174049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.312889, 34.583557, 35.269844>,  <46.623425, 34.401585, 35.220112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.312889, 34.583557, 35.269844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.146732, 34.913227, 35.423824>,  <47.047039, 35.111031, 35.516212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.146732, 34.913227, 35.423824>,  <47.312889, 34.583557, 35.269844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.146732, 34.913227, 35.423824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611882, -0.059975, 0.788672,
		0.673091, 0.563150, -0.479385,
		-0.415390, 0.824175, 0.384950,
		47.022114, 35.160480, 35.539310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.631023, 35.299297, 35.320358>,  <47.312889, 34.583557, 35.269844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.631023, 35.299297, 35.320358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.588551, 35.005173, 35.052612>,  <47.563065, 34.828697, 34.891964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.588551, 35.005173, 35.052612>,  <47.631023, 35.299297, 35.320358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.588551, 35.005173, 35.052612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730629, 0.398915, -0.554120,
		0.674468, -0.547895, 0.494879,
		-0.106185, -0.735309, -0.669363,
		47.556694, 34.784580, 34.851803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.620808, 30.950583, 23.071310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.270706, 31.015673, 22.889124>,  <40.060646, 31.054728, 22.779812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.270706, 31.015673, 22.889124>,  <40.620808, 30.950583, 23.071310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270706, 31.015673, 22.889124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459385, 0.014907, 0.888112,
		0.151308, 0.986559, 0.061706,
		-0.875255, 0.162726, -0.455466,
		40.008129, 31.064491, 22.752483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373310, 31.556421, 23.341253>,  <40.620808, 30.950583, 23.071310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373310, 31.556421, 23.341253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.065655, 31.361324, 23.176073>,  <39.881062, 31.244267, 23.076965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.065655, 31.361324, 23.176073>,  <40.373310, 31.556421, 23.341253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065655, 31.361324, 23.176073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572918, 0.239918, 0.783712,
		-0.283177, 0.839372, -0.463968,
		-0.769140, -0.487744, -0.412952,
		39.834911, 31.215000, 23.052187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780529, 31.979607, 23.515970>,  <40.373310, 31.556421, 23.341253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780529, 31.979607, 23.515970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.617901, 31.629450, 23.411366>,  <39.520325, 31.419355, 23.348602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.617901, 31.629450, 23.411366>,  <39.780529, 31.979607, 23.515970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617901, 31.629450, 23.411366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695600, 0.111027, 0.709798,
		-0.592315, 0.470495, -0.654062,
		-0.406575, -0.875390, -0.261513,
		39.495930, 31.366833, 23.332912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094345, 32.041656, 23.367390>,  <39.780529, 31.979607, 23.515970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094345, 32.041656, 23.367390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.131916, 31.652781, 23.453196>,  <39.154457, 31.419455, 23.504679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.131916, 31.652781, 23.453196>,  <39.094345, 32.041656, 23.367390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131916, 31.652781, 23.453196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655948, 0.101658, 0.747929,
		-0.748939, -0.210961, -0.628160,
		0.093926, -0.972194, 0.214515,
		39.160095, 31.361122, 23.517550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431702, 31.816761, 23.511650>,  <39.094345, 32.041656, 23.367390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431702, 31.816761, 23.511650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.619576, 31.497425, 23.662409>,  <38.732300, 31.305824, 23.752865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.619576, 31.497425, 23.662409>,  <38.431702, 31.816761, 23.511650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619576, 31.497425, 23.662409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597222, 0.027084, 0.801619,
		-0.650172, -0.601599, -0.464065,
		0.469684, -0.798339, 0.376897,
		38.760479, 31.257923, 23.775478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899059, 31.249954, 23.703352>,  <38.431702, 31.816761, 23.511650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899059, 31.249954, 23.703352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.229500, 31.202848, 23.923782>,  <38.427765, 31.174585, 24.056040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.229500, 31.202848, 23.923782>,  <37.899059, 31.249954, 23.703352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229500, 31.202848, 23.923782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563516, -0.174424, 0.807481,
		0.001030, -0.977603, -0.210453,
		0.826104, -0.117762, 0.551075,
		38.477329, 31.167521, 24.089106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669151, 30.817978, 24.161499>,  <37.899059, 31.249954, 23.703352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669151, 30.817978, 24.161499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.995823, 30.967985, 24.336948>,  <38.191826, 31.057989, 24.442219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.995823, 30.967985, 24.336948>,  <37.669151, 30.817978, 24.161499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995823, 30.967985, 24.336948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411562, -0.154308, 0.898224,
		0.404536, -0.914083, 0.028324,
		0.816681, 0.375021, 0.438625,
		38.240826, 31.080492, 24.468536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691082, 30.432205, 24.760954>,  <37.669151, 30.817978, 24.161499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691082, 30.432205, 24.760954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940521, 30.733807, 24.843513>,  <38.090187, 30.914768, 24.893049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940521, 30.733807, 24.843513>,  <37.691082, 30.432205, 24.760954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940521, 30.733807, 24.843513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385421, 0.066838, 0.920317,
		0.680128, -0.653460, 0.332290,
		0.623600, 0.754005, 0.206398,
		38.127602, 30.960009, 24.905434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166443, 30.249994, 25.352493>,  <37.691082, 30.432205, 24.760954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166443, 30.249994, 25.352493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.100517, 30.643930, 25.330854>,  <38.060963, 30.880291, 25.317871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.100517, 30.643930, 25.330854>,  <38.166443, 30.249994, 25.352493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100517, 30.643930, 25.330854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008570, 0.053416, 0.998536,
		0.986287, 0.165040, -0.000364,
		-0.164818, 0.984839, -0.054097,
		38.051071, 30.939383, 25.314625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575077, 30.501778, 25.808973>,  <38.166443, 30.249994, 25.352493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575077, 30.501778, 25.808973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.319138, 30.805660, 25.762606>,  <38.165573, 30.987989, 25.734785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.319138, 30.805660, 25.762606>,  <38.575077, 30.501778, 25.808973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319138, 30.805660, 25.762606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105246, 0.062789, 0.992462,
		0.761257, 0.647228, 0.039780,
		-0.639852, 0.759706, -0.115917,
		38.127182, 31.033571, 25.727831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757061, 30.956766, 26.377483>,  <38.575077, 30.501778, 25.808973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757061, 30.956766, 26.377483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.385349, 31.052229, 26.264709>,  <38.162323, 31.109507, 26.197046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.385349, 31.052229, 26.264709>,  <38.757061, 30.956766, 26.377483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385349, 31.052229, 26.264709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274261, 0.065485, 0.959423,
		0.247436, 0.968893, 0.004601,
		-0.929277, 0.238658, -0.281933,
		38.106567, 31.123827, 26.180130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564796, 31.406179, 26.884607>,  <38.757061, 30.956766, 26.377483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564796, 31.406179, 26.884607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.207054, 31.312296, 26.732269>,  <37.992409, 31.255966, 26.640867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.207054, 31.312296, 26.732269>,  <38.564796, 31.406179, 26.884607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207054, 31.312296, 26.732269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434502, 0.253120, 0.864371,
		-0.106477, 0.938532, -0.328361,
		-0.894355, -0.234709, -0.380843,
		37.938747, 31.241882, 26.618017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070786, 31.995613, 27.074207>,  <38.564796, 31.406179, 26.884607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070786, 31.995613, 27.074207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.855755, 31.665173, 27.006603>,  <37.726738, 31.466908, 26.966042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.855755, 31.665173, 27.006603>,  <38.070786, 31.995613, 27.074207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855755, 31.665173, 27.006603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579111, 0.216022, 0.786107,
		-0.612895, 0.520470, -0.594534,
		-0.537578, -0.826102, -0.169011,
		37.694481, 31.417341, 26.955900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322670, 32.152943, 27.127998>,  <38.070786, 31.995613, 27.074207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322670, 32.152943, 27.127998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.303894, 31.754705, 27.160454>,  <37.292629, 31.515762, 27.179928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.303894, 31.754705, 27.160454>,  <37.322670, 32.152943, 27.127998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303894, 31.754705, 27.160454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440409, 0.093532, 0.892912,
		-0.896569, 0.006176, -0.442860,
		-0.046936, -0.995597, 0.081138,
		37.289814, 31.456026, 27.184795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663643, 32.093605, 27.554808>,  <37.322670, 32.152943, 27.127998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663643, 32.093605, 27.554808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.826996, 31.729162, 27.532528>,  <36.925007, 31.510496, 27.519159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.826996, 31.729162, 27.532528>,  <36.663643, 32.093605, 27.554808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826996, 31.729162, 27.532528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377978, -0.224331, 0.898225,
		-0.830876, -0.345768, -0.435992,
		0.408384, -0.911110, -0.055699,
		36.949512, 31.455830, 27.515818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107670, 31.677053, 27.820284>,  <36.663643, 32.093605, 27.554808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107670, 31.677053, 27.820284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.465748, 31.506474, 27.872093>,  <36.680595, 31.404125, 27.903179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.465748, 31.506474, 27.872093>,  <36.107670, 31.677053, 27.820284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465748, 31.506474, 27.872093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337868, -0.459819, 0.821225,
		-0.290651, -0.778916, -0.555709,
		0.895191, -0.426446, 0.129524,
		36.734306, 31.378540, 27.910950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112980, 30.924639, 27.922619>,  <36.107670, 31.677053, 27.820284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112980, 30.924639, 27.922619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.453152, 31.033546, 28.102678>,  <36.657257, 31.098890, 28.210714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.453152, 31.033546, 28.102678>,  <36.112980, 30.924639, 27.922619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453152, 31.033546, 28.102678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363249, -0.315046, 0.876810,
		0.380545, -0.909184, -0.169024,
		0.850432, 0.272268, 0.450149,
		36.708282, 31.115227, 28.237722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249908, 30.434845, 28.444830>,  <36.112980, 30.924639, 27.922619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249908, 30.434845, 28.444830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.449421, 30.759121, 28.567463>,  <36.569130, 30.953686, 28.641043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.449421, 30.759121, 28.567463>,  <36.249908, 30.434845, 28.444830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449421, 30.759121, 28.567463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257211, -0.199341, 0.945572,
		0.827681, -0.550494, 0.109089,
		0.498786, 0.810690, 0.306584,
		36.599056, 31.002329, 28.659437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676960, 30.222347, 29.042122>,  <36.249908, 30.434845, 28.444830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676960, 30.222347, 29.042122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.640835, 30.620680, 29.036955>,  <36.619160, 30.859678, 29.033855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.640835, 30.620680, 29.036955>,  <36.676960, 30.222347, 29.042122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640835, 30.620680, 29.036955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337976, -0.018446, 0.940974,
		0.936812, 0.089343, 0.338232,
		-0.090308, 0.995830, -0.012916,
		36.613743, 30.919430, 29.033081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872643, 30.437380, 29.757313>,  <36.676960, 30.222347, 29.042122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872643, 30.437380, 29.757313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.667709, 30.744024, 29.602484>,  <36.544750, 30.928011, 29.509586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.667709, 30.744024, 29.602484>,  <36.872643, 30.437380, 29.757313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667709, 30.744024, 29.602484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368194, 0.211114, 0.905464,
		0.775854, 0.606415, 0.174101,
		-0.512332, 0.766610, -0.387072,
		36.514011, 30.974007, 29.486362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889084, 30.897350, 30.226986>,  <36.872643, 30.437380, 29.757313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889084, 30.897350, 30.226986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.580070, 31.023603, 30.006599>,  <36.394661, 31.099356, 29.874369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.580070, 31.023603, 30.006599>,  <36.889084, 30.897350, 30.226986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580070, 31.023603, 30.006599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435965, 0.367195, 0.821646,
		0.461652, 0.874953, -0.146066,
		-0.772536, 0.315635, -0.550965,
		36.348309, 31.118294, 29.841311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728085, 31.664272, 30.512756>,  <36.889084, 30.897350, 30.226986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728085, 31.664272, 30.512756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401390, 31.508978, 30.342007>,  <36.205376, 31.415802, 30.239557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401390, 31.508978, 30.342007>,  <36.728085, 31.664272, 30.512756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401390, 31.508978, 30.342007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552281, 0.311695, 0.773196,
		-0.167127, 0.867249, -0.468987,
		-0.816734, -0.388235, -0.426872,
		36.156368, 31.392508, 30.213945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998436, 31.946384, 29.827034>,  <36.728085, 31.664272, 30.512756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998436, 31.946384, 29.827034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.228416, 32.159454, 30.075449>,  <37.366405, 32.287296, 30.224499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.228416, 32.159454, 30.075449>,  <36.998436, 31.946384, 29.827034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228416, 32.159454, 30.075449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740212, -0.015255, -0.672201,
		-0.348589, 0.846183, -0.403063,
		0.574954, 0.532674, 0.621037,
		37.400902, 32.319256, 30.261761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190372, 32.530727, 29.371433>,  <36.998436, 31.946384, 29.827034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190372, 32.530727, 29.371433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.439789, 32.532101, 29.684147>,  <37.589439, 32.532925, 29.871777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.439789, 32.532101, 29.684147>,  <37.190372, 32.530727, 29.371433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439789, 32.532101, 29.684147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770948, 0.163290, -0.615610,
		-0.129773, 0.986572, 0.099168,
		0.623537, 0.003436, 0.781786,
		37.626850, 32.533131, 29.918682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574112, 33.205452, 29.421227>,  <37.190372, 32.530727, 29.371433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574112, 33.205452, 29.421227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.824718, 32.973904, 29.629992>,  <37.975082, 32.834976, 29.755251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.824718, 32.973904, 29.629992>,  <37.574112, 33.205452, 29.421227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824718, 32.973904, 29.629992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772124, 0.369601, -0.516933,
		0.106336, 0.726847, 0.678518,
		0.626512, -0.578868, 0.521914,
		38.012672, 32.800243, 29.786566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222580, 33.568172, 29.486221>,  <37.574112, 33.205452, 29.421227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222580, 33.568172, 29.486221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.328068, 33.194199, 29.581171>,  <38.391361, 32.969814, 29.638142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.328068, 33.194199, 29.581171>,  <38.222580, 33.568172, 29.486221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328068, 33.194199, 29.581171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838890, 0.100825, -0.534881,
		0.476146, 0.340192, 0.810897,
		0.263721, -0.934935, 0.237377,
		38.407185, 32.913719, 29.652384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030846, 33.588699, 29.622299>,  <38.222580, 33.568172, 29.486221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030846, 33.588699, 29.622299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.934044, 33.216022, 29.513948>,  <38.875961, 32.992416, 29.448938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.934044, 33.216022, 29.513948>,  <39.030846, 33.588699, 29.622299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934044, 33.216022, 29.513948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656690, 0.048238, -0.752616,
		0.714276, -0.360020, 0.600162,
		-0.242006, -0.931697, -0.270877,
		38.861443, 32.936512, 29.432686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583694, 33.498909, 29.219242>,  <39.030846, 33.588699, 29.622299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583694, 33.498909, 29.219242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.383583, 33.157478, 29.161097>,  <39.263515, 32.952621, 29.126209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.383583, 33.157478, 29.161097>,  <39.583694, 33.498909, 29.219242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383583, 33.157478, 29.161097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548590, -0.182573, -0.815914,
		0.669906, -0.487928, 0.559601,
		-0.500275, -0.853577, -0.145366,
		39.233501, 32.901405, 29.117487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057945, 32.936924, 29.052179>,  <39.583694, 33.498909, 29.219242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057945, 32.936924, 29.052179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.706257, 32.802238, 28.917366>,  <39.495243, 32.721428, 28.836477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.706257, 32.802238, 28.917366>,  <40.057945, 32.936924, 29.052179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706257, 32.802238, 28.917366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423962, -0.230300, -0.875910,
		0.217316, -0.913007, 0.345241,
		-0.879221, -0.336718, -0.337033,
		39.442490, 32.701221, 28.816256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242569, 32.412529, 28.530529>,  <40.057945, 32.936924, 29.052179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242569, 32.412529, 28.530529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.869629, 32.528233, 28.443768>,  <39.645863, 32.597652, 28.391710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.869629, 32.528233, 28.443768>,  <40.242569, 32.412529, 28.530529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869629, 32.528233, 28.443768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216005, -0.035442, -0.975749,
		-0.289929, -0.956596, -0.029436,
		-0.932354, 0.289256, -0.216905,
		39.589924, 32.615009, 28.378696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014820, 31.987028, 28.095478>,  <40.242569, 32.412529, 28.530529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014820, 31.987028, 28.095478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.788120, 32.310459, 28.032236>,  <39.652100, 32.504517, 27.994291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.788120, 32.310459, 28.032236>,  <40.014820, 31.987028, 28.095478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788120, 32.310459, 28.032236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161825, -0.078913, -0.983659,
		-0.807842, -0.583072, -0.086124,
		-0.566748, 0.808579, -0.158105,
		39.618095, 32.553032, 27.984804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668026, 31.865358, 27.514929>,  <40.014820, 31.987028, 28.095478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668026, 31.865358, 27.514929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.634174, 32.262440, 27.549282>,  <39.613861, 32.500690, 27.569895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.634174, 32.262440, 27.549282>,  <39.668026, 31.865358, 27.514929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634174, 32.262440, 27.549282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015078, 0.087460, -0.996054,
		-0.996298, -0.083003, -0.022370,
		-0.084632, 0.992704, 0.085885,
		39.608784, 32.560249, 27.575047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227730, 32.089832, 27.027119>,  <39.668026, 31.865358, 27.514929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227730, 32.089832, 27.027119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.432358, 32.427555, 27.090929>,  <39.555134, 32.630188, 27.129215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.432358, 32.427555, 27.090929>,  <39.227730, 32.089832, 27.027119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432358, 32.427555, 27.090929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043205, 0.160148, -0.986147,
		-0.858156, 0.511373, 0.045448,
		0.511568, 0.844305, 0.159526,
		39.585827, 32.680847, 27.138786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051842, 32.518246, 26.457491>,  <39.227730, 32.089832, 27.027119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051842, 32.518246, 26.457491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.380272, 32.684841, 26.613636>,  <39.577328, 32.784798, 26.707323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.380272, 32.684841, 26.613636>,  <39.051842, 32.518246, 26.457491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380272, 32.684841, 26.613636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309081, 0.250558, -0.917437,
		-0.479906, 0.873934, 0.076999,
		0.821072, 0.416485, 0.390360,
		39.626595, 32.809788, 26.730743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162727, 33.198048, 26.120094>,  <39.051842, 32.518246, 26.457491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162727, 33.198048, 26.120094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.528137, 33.096279, 26.247053>,  <39.747383, 33.035217, 26.323229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.528137, 33.096279, 26.247053>,  <39.162727, 33.198048, 26.120094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528137, 33.096279, 26.247053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365517, 0.170986, -0.914965,
		0.178515, 0.951859, 0.249194,
		0.913526, -0.254420, 0.317397,
		39.802197, 33.019955, 26.342272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653172, 33.679363, 25.931946>,  <39.162727, 33.198048, 26.120094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653172, 33.679363, 25.931946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.883625, 33.355537, 25.976988>,  <40.021896, 33.161243, 26.004013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.883625, 33.355537, 25.976988>,  <39.653172, 33.679363, 25.931946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883625, 33.355537, 25.976988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426642, 0.180351, -0.886256,
		0.697172, 0.558642, 0.449300,
		0.576131, -0.809563, 0.112605,
		40.056465, 33.112667, 26.010769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289803, 33.846600, 25.686995>,  <39.653172, 33.679363, 25.931946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289803, 33.846600, 25.686995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.316486, 33.447647, 25.698166>,  <40.332497, 33.208275, 25.704868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.316486, 33.447647, 25.698166>,  <40.289803, 33.846600, 25.686995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316486, 33.447647, 25.698166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635961, 0.020933, -0.771437,
		0.768833, 0.069222, 0.635692,
		0.066708, -0.997382, 0.027928,
		40.336498, 33.148434, 25.706545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022141, 33.680508, 25.629450>,  <40.289803, 33.846600, 25.686995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022141, 33.680508, 25.629450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.822174, 33.356159, 25.507748>,  <40.702194, 33.161549, 25.434727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.822174, 33.356159, 25.507748>,  <41.022141, 33.680508, 25.629450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822174, 33.356159, 25.507748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618279, -0.088130, -0.781002,
		0.606480, -0.578547, 0.545403,
		-0.499913, -0.810874, -0.304254,
		40.672199, 33.112896, 25.416471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552166, 33.397854, 25.342754>,  <41.022141, 33.680508, 25.629450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552166, 33.397854, 25.342754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.223682, 33.209274, 25.214161>,  <41.026592, 33.096127, 25.137005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.223682, 33.209274, 25.214161>,  <41.552166, 33.397854, 25.342754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223682, 33.209274, 25.214161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418077, -0.113660, -0.901273,
		0.388368, -0.874536, 0.290442,
		-0.821207, -0.471453, -0.321482,
		40.977322, 33.067837, 25.117716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836010, 32.804802, 25.068937>,  <41.552166, 33.397854, 25.342754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836010, 32.804802, 25.068937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.468849, 32.874779, 24.926472>,  <41.248554, 32.916763, 24.840992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.468849, 32.874779, 24.926472>,  <41.836010, 32.804802, 25.068937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468849, 32.874779, 24.926472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319320, -0.207188, -0.924720,
		-0.235567, -0.962532, 0.134314,
		-0.917901, 0.174944, -0.356163,
		41.193478, 32.927261, 24.819624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.651176, 32.188717, 24.648308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.432312, 32.505337, 24.539454>,  <41.300995, 32.695309, 24.474140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.432312, 32.505337, 24.539454>,  <41.651176, 32.188717, 24.648308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432312, 32.505337, 24.539454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257519, -0.150160, -0.954534,
		-0.796430, -0.592363, -0.121679,
		-0.547160, 0.791554, -0.272136,
		41.268166, 32.742802, 24.457813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404705, 31.969584, 24.081743>,  <41.651176, 32.188717, 24.648308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404705, 31.969584, 24.081743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.375622, 32.366852, 24.045237>,  <41.358173, 32.605213, 24.023333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.375622, 32.366852, 24.045237>,  <41.404705, 31.969584, 24.081743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375622, 32.366852, 24.045237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410529, -0.053594, -0.910272,
		-0.908945, -0.103650, -0.403827,
		-0.072707, 0.993169, -0.091265,
		41.353809, 32.664803, 24.017857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013172, 32.113678, 23.479403>,  <41.404705, 31.969584, 24.081743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013172, 32.113678, 23.479403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.221992, 32.451771, 23.525074>,  <41.347286, 32.654629, 23.552477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.221992, 32.451771, 23.525074>,  <41.013172, 32.113678, 23.479403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221992, 32.451771, 23.525074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399884, -0.124313, -0.908097,
		-0.753362, 0.519732, -0.402894,
		0.522052, 0.845236, 0.114180,
		41.378609, 32.705341, 23.559328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947392, 32.394947, 22.897154>,  <41.013172, 32.113678, 23.479403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947392, 32.394947, 22.897154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.231976, 32.640224, 23.034452>,  <41.402725, 32.787392, 23.116831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.231976, 32.640224, 23.034452>,  <40.947392, 32.394947, 22.897154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231976, 32.640224, 23.034452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312998, 0.160807, -0.936041,
		-0.629173, 0.773390, -0.077522,
		0.711459, 0.613196, 0.343245,
		41.445412, 32.824184, 23.137426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811077, 33.090710, 22.621504>,  <40.947392, 32.394947, 22.897154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811077, 33.090710, 22.621504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.199692, 33.037262, 22.699747>,  <41.432861, 33.005196, 22.746693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.199692, 33.037262, 22.699747>,  <40.811077, 33.090710, 22.621504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199692, 33.037262, 22.699747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196900, -0.003614, -0.980417,
		0.131705, 0.991027, 0.022797,
		0.971537, -0.133615, 0.195609,
		41.491154, 32.997177, 22.758430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126564, 33.406303, 22.142920>,  <40.811077, 33.090710, 22.621504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126564, 33.406303, 22.142920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.448666, 33.200420, 22.260660>,  <41.641926, 33.076893, 22.331305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.448666, 33.200420, 22.260660>,  <41.126564, 33.406303, 22.142920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448666, 33.200420, 22.260660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350715, 0.013188, -0.936389,
		0.478081, 0.857267, 0.191134,
		0.805256, -0.514704, 0.294352,
		41.690243, 33.046009, 22.348967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547188, 33.707775, 21.737192>,  <41.126564, 33.406303, 22.142920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547188, 33.707775, 21.737192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.721611, 33.370262, 21.862337>,  <41.826263, 33.167755, 21.937424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.721611, 33.370262, 21.862337>,  <41.547188, 33.707775, 21.737192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721611, 33.370262, 21.862337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547402, -0.027243, -0.836426,
		0.714287, 0.535991, 0.450009,
		0.436057, -0.843784, 0.312861,
		41.852428, 33.117126, 21.956196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328342, 33.778931, 21.695765>,  <41.547188, 33.707775, 21.737192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328342, 33.778931, 21.695765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.227203, 33.392662, 21.671917>,  <42.166519, 33.160900, 21.657608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.227203, 33.392662, 21.671917>,  <42.328342, 33.778931, 21.695765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227203, 33.392662, 21.671917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584853, -0.103467, -0.804513,
		0.770724, -0.238287, 0.590935,
		-0.252848, -0.965667, -0.059619,
		42.151348, 33.102962, 21.654032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979866, 33.371544, 21.618458>,  <42.328342, 33.778931, 21.695765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979866, 33.371544, 21.618458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.706772, 33.106045, 21.496275>,  <42.542915, 32.946743, 21.422964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.706772, 33.106045, 21.496275>,  <42.979866, 33.371544, 21.618458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706772, 33.106045, 21.496275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488083, -0.103200, -0.866675,
		0.543733, -0.740800, 0.394424,
		-0.682737, -0.663751, -0.305458,
		42.501949, 32.906918, 21.404638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382462, 32.699093, 21.511747>,  <42.979866, 33.371544, 21.618458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382462, 32.699093, 21.511747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.054565, 32.738289, 21.286032>,  <42.857826, 32.761806, 21.150602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.054565, 32.738289, 21.286032>,  <43.382462, 32.699093, 21.511747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054565, 32.738289, 21.286032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554630, -0.109936, -0.824803,
		-0.142867, -0.989096, 0.035765,
		-0.819740, 0.098000, -0.564288,
		42.808643, 32.767689, 21.116745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634468, 32.405880, 20.918467>,  <43.382462, 32.699093, 21.511747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634468, 32.405880, 20.918467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.281746, 32.550640, 20.797501>,  <43.070114, 32.637497, 20.724922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.281746, 32.550640, 20.797501>,  <43.634468, 32.405880, 20.918467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281746, 32.550640, 20.797501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363663, 0.113487, -0.924591,
		-0.300289, -0.925283, -0.231683,
		-0.881802, 0.361900, -0.302413,
		43.017204, 32.659210, 20.706778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545452, 32.077408, 20.320637>,  <43.634468, 32.405880, 20.918467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545452, 32.077408, 20.320637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.305069, 32.396072, 20.294767>,  <43.160839, 32.587273, 20.279245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.305069, 32.396072, 20.294767>,  <43.545452, 32.077408, 20.320637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305069, 32.396072, 20.294767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420884, 0.246629, -0.872944,
		-0.679490, -0.551821, -0.483515,
		-0.600958, 0.796660, -0.064671,
		43.124783, 32.635071, 20.275366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068226, 32.018726, 19.661629>,  <43.545452, 32.077408, 20.320637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068226, 32.018726, 19.661629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.109982, 32.398228, 19.780939>,  <43.135033, 32.625927, 19.852526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.109982, 32.398228, 19.780939>,  <43.068226, 32.018726, 19.661629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109982, 32.398228, 19.780939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244429, 0.266241, -0.932400,
		-0.964032, 0.170238, -0.204111,
		0.104387, 0.948754, 0.298276,
		43.141296, 32.682854, 19.870422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966854, 32.296516, 19.079405>,  <43.068226, 32.018726, 19.661629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966854, 32.296516, 19.079405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.118580, 32.593681, 19.300024>,  <43.209614, 32.771980, 19.432396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.118580, 32.593681, 19.300024>,  <42.966854, 32.296516, 19.079405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118580, 32.593681, 19.300024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277842, 0.477133, -0.833755,
		-0.882567, 0.469498, -0.025429,
		0.379314, 0.742910, 0.551549,
		43.232372, 32.816555, 19.465488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652180, 32.881763, 18.838652>,  <42.966854, 32.296516, 19.079405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652180, 32.881763, 18.838652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.995495, 32.998344, 19.007599>,  <43.201485, 33.068295, 19.108967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.995495, 32.998344, 19.007599>,  <42.652180, 32.881763, 18.838652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995495, 32.998344, 19.007599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185239, 0.591610, -0.784656,
		-0.478567, 0.751700, 0.453784,
		0.858289, 0.291452, 0.422369,
		43.252983, 33.085781, 19.134310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779541, 33.464394, 18.436625>,  <42.652180, 32.881763, 18.838652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779541, 33.464394, 18.436625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.122326, 33.455017, 18.642561>,  <43.327999, 33.449390, 18.766123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.122326, 33.455017, 18.642561>,  <42.779541, 33.464394, 18.436625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122326, 33.455017, 18.642561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349821, 0.760049, -0.547677,
		-0.378466, 0.649442, 0.659536,
		0.856965, -0.023443, 0.514841,
		43.379414, 33.447983, 18.797014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915916, 34.154396, 18.742964>,  <42.779541, 33.464394, 18.436625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915916, 34.154396, 18.742964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.243656, 33.940517, 18.660248>,  <43.440300, 33.812191, 18.610619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.243656, 33.940517, 18.660248>,  <42.915916, 34.154396, 18.742964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.243656, 33.940517, 18.660248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241127, 0.648670, -0.721863,
		0.520118, 0.541596, 0.660418,
		0.819351, -0.534698, -0.206791,
		43.489460, 33.780109, 18.598211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442272, 34.649876, 18.558962>,  <42.915916, 34.154396, 18.742964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442272, 34.649876, 18.558962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.602089, 34.310204, 18.420822>,  <43.697979, 34.106400, 18.337938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.602089, 34.310204, 18.420822>,  <43.442272, 34.649876, 18.558962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.602089, 34.310204, 18.420822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292293, 0.475069, -0.829984,
		0.868867, 0.230672, 0.438019,
		0.399543, -0.849176, -0.345348,
		43.721951, 34.055450, 18.317217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.183365, 34.835316, 18.437252>,  <43.442272, 34.649876, 18.558962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.183365, 34.835316, 18.437252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.057236, 34.523716, 18.220465>,  <43.981560, 34.336758, 18.090393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.057236, 34.523716, 18.220465>,  <44.183365, 34.835316, 18.437252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.057236, 34.523716, 18.220465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200941, 0.503346, -0.840396,
		0.927466, -0.373900, -0.002184,
		-0.315323, -0.779000, -0.541969,
		43.962639, 34.290016, 18.057875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.682453, 34.724861, 17.878363>,  <44.183365, 34.835316, 18.437252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.682453, 34.724861, 17.878363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.396152, 34.505695, 17.705164>,  <44.224373, 34.374195, 17.601244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.396152, 34.505695, 17.705164>,  <44.682453, 34.724861, 17.878363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396152, 34.505695, 17.705164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184368, 0.449774, -0.873906,
		0.673580, -0.705330, -0.220908,
		-0.715751, -0.547917, -0.432999,
		44.181427, 34.341320, 17.575264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.855717, 34.596725, 17.226982>,  <44.682453, 34.724861, 17.878363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.855717, 34.596725, 17.226982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.467464, 34.512085, 17.181204>,  <44.234512, 34.461300, 17.153736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.467464, 34.512085, 17.181204>,  <44.855717, 34.596725, 17.226982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.467464, 34.512085, 17.181204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049452, 0.290075, -0.955725,
		0.235427, -0.933318, -0.271093,
		-0.970633, -0.211598, -0.114446,
		44.176273, 34.448605, 17.146870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811554, 34.328228, 16.516813>,  <44.855717, 34.596725, 17.226982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811554, 34.328228, 16.516813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.440868, 34.430370, 16.627079>,  <44.218456, 34.491657, 16.693237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.440868, 34.430370, 16.627079>,  <44.811554, 34.328228, 16.516813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.440868, 34.430370, 16.627079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239937, 0.162454, -0.957099,
		-0.289183, -0.953102, -0.089280,
		-0.926717, 0.255355, 0.275663,
		44.162853, 34.506977, 16.709778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301361, 33.899132, 16.228687>,  <44.811554, 34.328228, 16.516813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301361, 33.899132, 16.228687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.167118, 34.268116, 16.305042>,  <44.086575, 34.489506, 16.350855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.167118, 34.268116, 16.305042>,  <44.301361, 33.899132, 16.228687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.167118, 34.268116, 16.305042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020379, 0.195483, -0.980495,
		-0.941783, -0.332948, -0.046806,
		-0.335604, 0.922460, 0.190888,
		44.066437, 34.544853, 16.362309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662388, 34.129147, 15.865532>,  <44.301361, 33.899132, 16.228687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662388, 34.129147, 15.865532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.899456, 34.439419, 15.952302>,  <44.041698, 34.625584, 16.004364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.899456, 34.439419, 15.952302>,  <43.662388, 34.129147, 15.865532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899456, 34.439419, 15.952302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135745, 0.169277, -0.976175,
		-0.793925, 0.607996, -0.004970,
		0.592669, 0.775685, 0.216926,
		44.077255, 34.672123, 16.017380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611412, 33.424667, 15.894503>,  <43.662388, 34.129147, 15.865532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611412, 33.424667, 15.894503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.335911, 33.274418, 15.646461>,  <43.170609, 33.184269, 15.497635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.335911, 33.274418, 15.646461>,  <43.611412, 33.424667, 15.894503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335911, 33.274418, 15.646461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580867, -0.225921, 0.782019,
		-0.433838, 0.898815, -0.062582,
		-0.688752, -0.375621, -0.620105,
		43.129284, 33.161732, 15.460429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035145, 33.514305, 16.326090>,  <43.611412, 33.424667, 15.894503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035145, 33.514305, 16.326090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.884712, 33.247143, 16.069199>,  <42.794453, 33.086845, 15.915064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.884712, 33.247143, 16.069199>,  <43.035145, 33.514305, 16.326090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884712, 33.247143, 16.069199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660975, -0.292364, 0.691111,
		-0.649365, 0.684412, -0.331520,
		-0.376081, -0.667910, -0.642230,
		42.771889, 33.046768, 15.876530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278057, 33.625942, 16.405336>,  <43.035145, 33.514305, 16.326090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278057, 33.625942, 16.405336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.323910, 33.257336, 16.256922>,  <42.351421, 33.036171, 16.167873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.323910, 33.257336, 16.256922>,  <42.278057, 33.625942, 16.405336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323910, 33.257336, 16.256922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625697, -0.357076, 0.693541,
		-0.771598, 0.152658, -0.617521,
		0.114627, -0.921516, -0.371037,
		42.358299, 32.980881, 16.145611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622822, 33.359394, 16.343937>,  <42.278057, 33.625942, 16.405336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622822, 33.359394, 16.343937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.851799, 33.032413, 16.318394>,  <41.989185, 32.836224, 16.303068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.851799, 33.032413, 16.318394>,  <41.622822, 33.359394, 16.343937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851799, 33.032413, 16.318394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504742, -0.412691, 0.758236,
		-0.646178, -0.401814, -0.648845,
		0.572442, -0.817455, -0.063860,
		42.023533, 32.787178, 16.299236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102646, 32.745186, 16.398159>,  <41.622822, 33.359394, 16.343937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102646, 32.745186, 16.398159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.470177, 32.627098, 16.502924>,  <41.690697, 32.556244, 16.565783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.470177, 32.627098, 16.502924>,  <41.102646, 32.745186, 16.398159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470177, 32.627098, 16.502924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376592, -0.457364, 0.805604,
		-0.118043, -0.838845, -0.531417,
		0.918828, -0.295223, 0.261914,
		41.745827, 32.538532, 16.581497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010719, 32.060337, 16.595125>,  <41.102646, 32.745186, 16.398159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010719, 32.060337, 16.595125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.345249, 32.192295, 16.770273>,  <41.545967, 32.271469, 16.875362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.345249, 32.192295, 16.770273>,  <41.010719, 32.060337, 16.595125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345249, 32.192295, 16.770273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254808, -0.473282, 0.843254,
		0.485425, -0.816805, -0.311756,
		0.836323, 0.329898, 0.437871,
		41.596146, 32.291264, 16.901634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159775, 31.526186, 17.092497>,  <41.010719, 32.060337, 16.595125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159775, 31.526186, 17.092497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.381458, 31.837425, 17.210764>,  <41.514469, 32.024170, 17.281725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.381458, 31.837425, 17.210764>,  <41.159775, 31.526186, 17.092497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381458, 31.837425, 17.210764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049677, -0.323657, 0.944870,
		0.830896, -0.538340, -0.140719,
		0.554206, 0.778098, 0.295668,
		41.547722, 32.070854, 17.299465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702847, 31.251125, 17.504375>,  <41.159775, 31.526186, 17.092497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702847, 31.251125, 17.504375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.651936, 31.633936, 17.608606>,  <41.621387, 31.863623, 17.671144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.651936, 31.633936, 17.608606>,  <41.702847, 31.251125, 17.504375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651936, 31.633936, 17.608606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014726, -0.264509, 0.964271,
		0.991758, 0.118895, 0.047760,
		-0.127280, 0.957026, 0.260578,
		41.613750, 31.921043, 17.686779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085232, 31.323965, 18.107622>,  <41.702847, 31.251125, 17.504375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085232, 31.323965, 18.107622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.869221, 31.660471, 18.117777>,  <41.739613, 31.862373, 18.123869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.869221, 31.660471, 18.117777>,  <42.085232, 31.323965, 18.107622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869221, 31.660471, 18.117777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214680, -0.166848, 0.962327,
		0.813807, 0.514235, 0.270705,
		-0.540029, 0.841264, 0.025386,
		41.707211, 31.912849, 18.125393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282387, 31.565319, 18.747423>,  <42.085232, 31.323965, 18.107622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282387, 31.565319, 18.747423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.944817, 31.764212, 18.666870>,  <41.742275, 31.883547, 18.618538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.944817, 31.764212, 18.666870>,  <42.282387, 31.565319, 18.747423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944817, 31.764212, 18.666870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296588, -0.119646, 0.947481,
		0.447023, 0.859329, 0.248445,
		-0.843923, 0.497232, -0.201382,
		41.691639, 31.913382, 18.606455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174412, 32.088112, 19.282370>,  <42.282387, 31.565319, 18.747423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174412, 32.088112, 19.282370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.810402, 32.032055, 19.126310>,  <41.591995, 31.998421, 19.032675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.810402, 32.032055, 19.126310>,  <42.174412, 32.088112, 19.282370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810402, 32.032055, 19.126310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392968, -0.008124, 0.919516,
		-0.132030, 0.990098, -0.047677,
		-0.910024, -0.140140, -0.390150,
		41.537395, 31.990013, 19.009266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646526, 32.581524, 19.517250>,  <42.174412, 32.088112, 19.282370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646526, 32.581524, 19.517250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.439053, 32.257908, 19.406668>,  <41.314568, 32.063740, 19.340319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.439053, 32.257908, 19.406668>,  <41.646526, 32.581524, 19.517250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439053, 32.257908, 19.406668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405743, -0.051694, 0.912524,
		-0.752557, 0.585480, -0.301448,
		-0.518682, -0.809037, -0.276458,
		41.283447, 32.015198, 19.323730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110764, 32.593536, 19.954611>,  <41.646526, 32.581524, 19.517250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110764, 32.593536, 19.954611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.103279, 32.219810, 19.812231>,  <41.098789, 31.995575, 19.726803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.103279, 32.219810, 19.812231>,  <41.110764, 32.593536, 19.954611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103279, 32.219810, 19.812231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217765, -0.343658, 0.913497,
		-0.975822, 0.094608, -0.197031,
		-0.018713, -0.934317, -0.355952,
		41.097664, 31.939516, 19.705446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414043, 32.457855, 20.111372>,  <41.110764, 32.593536, 19.954611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414043, 32.457855, 20.111372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.623280, 32.119461, 20.070024>,  <40.748821, 31.916426, 20.045216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.623280, 32.119461, 20.070024>,  <40.414043, 32.457855, 20.111372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623280, 32.119461, 20.070024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404117, -0.352986, 0.843855,
		-0.750377, -0.399639, -0.526520,
		0.523092, -0.845985, -0.103371,
		40.780209, 31.865665, 20.039013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944828, 31.894047, 20.127897>,  <40.414043, 32.457855, 20.111372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944828, 31.894047, 20.127897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.290707, 31.724537, 20.235765>,  <40.498234, 31.622831, 20.300488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.290707, 31.724537, 20.235765>,  <39.944828, 31.894047, 20.127897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290707, 31.724537, 20.235765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447667, -0.406664, 0.796379,
		-0.227817, -0.809347, -0.541348,
		0.864693, -0.423772, 0.269672,
		40.550114, 31.597404, 20.316668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725224, 31.222841, 20.433365>,  <39.944828, 31.894047, 20.127897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725224, 31.222841, 20.433365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.094185, 31.245472, 20.586187>,  <40.315563, 31.259050, 20.677881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.094185, 31.245472, 20.586187>,  <39.725224, 31.222841, 20.433365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094185, 31.245472, 20.586187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329684, -0.399949, 0.855189,
		0.201188, -0.914789, -0.350263,
		0.922406, 0.056577, 0.382056,
		40.370907, 31.262445, 20.700804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882282, 30.547056, 20.796318>,  <39.725224, 31.222841, 20.433365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882282, 30.547056, 20.796318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.144024, 30.804623, 20.954910>,  <40.301067, 30.959162, 21.050066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.144024, 30.804623, 20.954910>,  <39.882282, 30.547056, 20.796318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144024, 30.804623, 20.954910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076661, -0.465127, 0.881918,
		0.752296, -0.607478, -0.254993,
		0.654350, 0.643916, 0.396483,
		40.340328, 30.997797, 21.073854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118439, 30.220304, 21.219242>,  <39.882282, 30.547056, 20.796318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118439, 30.220304, 21.219242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.198723, 30.595705, 21.331621>,  <40.246891, 30.820946, 21.399048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.198723, 30.595705, 21.331621>,  <40.118439, 30.220304, 21.219242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198723, 30.595705, 21.331621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241848, -0.230440, 0.942553,
		0.949329, -0.257123, 0.180724,
		0.200706, 0.938502, 0.280948,
		40.258934, 30.877256, 21.415905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482517, 30.165918, 21.817320>,  <40.118439, 30.220304, 21.219242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482517, 30.165918, 21.817320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.336872, 30.538082, 21.834085>,  <40.249485, 30.761381, 21.844145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.336872, 30.538082, 21.834085>,  <40.482517, 30.165918, 21.817320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336872, 30.538082, 21.834085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286027, -0.154540, 0.945677,
		0.886346, 0.332347, 0.322393,
		-0.364115, 0.930410, 0.041915,
		40.227638, 30.817205, 21.846661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690845, 30.571341, 22.385704>,  <40.482517, 30.165918, 21.817320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690845, 30.571341, 22.385704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.349991, 30.770187, 22.320293>,  <40.145477, 30.889496, 22.281048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.349991, 30.770187, 22.320293>,  <40.690845, 30.571341, 22.385704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349991, 30.770187, 22.320293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202146, -0.024449, 0.979050,
		0.482703, 0.867339, 0.121324,
		-0.852135, 0.497116, -0.163527,
		40.094349, 30.919323, 22.271235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.710037, 33.322807, 27.182703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.374554, 33.163456, 27.034182>,  <40.173264, 33.067844, 26.945068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.374554, 33.163456, 27.034182>,  <40.710037, 33.322807, 27.182703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374554, 33.163456, 27.034182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443073, 0.102753, 0.890577,
		-0.316634, 0.911448, -0.262690,
		-0.838707, -0.398378, -0.371303,
		40.122940, 33.043941, 26.922791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208454, 33.772137, 27.414837>,  <40.710037, 33.322807, 27.182703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208454, 33.772137, 27.414837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.041927, 33.420815, 27.320816>,  <39.942009, 33.210022, 27.264404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.041927, 33.420815, 27.320816>,  <40.208454, 33.772137, 27.414837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041927, 33.420815, 27.320816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534503, 0.027291, 0.844726,
		-0.735516, 0.477312, -0.480821,
		-0.416320, -0.878310, -0.235052,
		39.917030, 33.157322, 27.250299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443932, 33.822289, 27.575096>,  <40.208454, 33.772137, 27.414837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443932, 33.822289, 27.575096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.525799, 33.430965, 27.587929>,  <39.574921, 33.196171, 27.595629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.525799, 33.430965, 27.587929>,  <39.443932, 33.822289, 27.575096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525799, 33.430965, 27.587929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585057, -0.095992, 0.805291,
		-0.784741, -0.183589, -0.592011,
		0.204671, -0.978305, 0.032081,
		39.587200, 33.137474, 27.597553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809601, 33.529297, 27.790443>,  <39.443932, 33.822289, 27.575096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809601, 33.529297, 27.790443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.056648, 33.219685, 27.846201>,  <39.204876, 33.033916, 27.879656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.056648, 33.219685, 27.846201>,  <38.809601, 33.529297, 27.790443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056648, 33.219685, 27.846201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432784, -0.186495, 0.881996,
		-0.656692, -0.605064, -0.450169,
		0.617619, -0.774026, 0.139392,
		39.241936, 32.987476, 27.888018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384827, 33.010593, 28.030394>,  <38.809601, 33.529297, 27.790443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384827, 33.010593, 28.030394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.746212, 32.892704, 28.154905>,  <38.963043, 32.821972, 28.229612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.746212, 32.892704, 28.154905>,  <38.384827, 33.010593, 28.030394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746212, 32.892704, 28.154905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398021, -0.307120, 0.864440,
		-0.159167, -0.904885, -0.394776,
		0.903463, -0.294719, 0.311280,
		39.017250, 32.804287, 28.248289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289600, 32.399361, 28.363220>,  <38.384827, 33.010593, 28.030394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289600, 32.399361, 28.363220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.658150, 32.491199, 28.488661>,  <38.879280, 32.546303, 28.563925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.658150, 32.491199, 28.488661>,  <38.289600, 32.399361, 28.363220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658150, 32.491199, 28.488661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222227, -0.350758, 0.909716,
		0.318871, -0.907883, -0.272156,
		0.921377, 0.229602, 0.313603,
		38.934563, 32.560081, 28.582741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622524, 31.811522, 28.681644>,  <38.289600, 32.399361, 28.363220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622524, 31.811522, 28.681644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789810, 32.143372, 28.829603>,  <38.890182, 32.342480, 28.918379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789810, 32.143372, 28.829603>,  <38.622524, 31.811522, 28.681644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789810, 32.143372, 28.829603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265611, -0.277728, 0.923211,
		0.868649, -0.484345, 0.104209,
		0.418210, 0.829625, 0.369895,
		38.915272, 32.392258, 28.940573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809872, 31.676584, 29.254995>,  <38.622524, 31.811522, 28.681644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809872, 31.676584, 29.254995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.794617, 32.073296, 29.303850>,  <38.785465, 32.311321, 29.333164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.794617, 32.073296, 29.303850>,  <38.809872, 31.676584, 29.254995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794617, 32.073296, 29.303850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499159, -0.124792, 0.857477,
		0.865671, -0.028266, 0.499816,
		-0.038136, 0.991780, 0.122138,
		38.783176, 32.370831, 29.340492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785385, 31.721441, 29.963200>,  <38.809872, 31.676584, 29.254995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785385, 31.721441, 29.963200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.663563, 32.088566, 29.861322>,  <38.590469, 32.308842, 29.800196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.663563, 32.088566, 29.861322>,  <38.785385, 31.721441, 29.963200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663563, 32.088566, 29.861322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589047, 0.028644, 0.807591,
		0.748510, 0.395985, 0.531910,
		-0.304558, 0.917810, -0.254694,
		38.572197, 32.363911, 29.784914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697193, 32.013748, 30.541143>,  <38.785385, 31.721441, 29.963200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697193, 32.013748, 30.541143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.488785, 32.269325, 30.314766>,  <38.363739, 32.422672, 30.178940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.488785, 32.269325, 30.314766>,  <38.697193, 32.013748, 30.541143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488785, 32.269325, 30.314766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733496, 0.003907, 0.679683,
		0.436488, 0.769247, 0.466624,
		-0.521020, 0.638940, -0.565945,
		38.332478, 32.461006, 30.144983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449402, 32.514065, 30.992472>,  <38.697193, 32.013748, 30.541143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449402, 32.514065, 30.992472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.218132, 32.534725, 30.666761>,  <38.079369, 32.547123, 30.471334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.218132, 32.534725, 30.666761>,  <38.449402, 32.514065, 30.992472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218132, 32.534725, 30.666761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811629, 0.065743, 0.580463,
		0.083515, 0.996499, 0.003912,
		-0.578173, 0.051653, -0.814277,
		38.044682, 32.550220, 30.422478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028561, 33.056137, 31.086800>,  <38.449402, 32.514065, 30.992472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028561, 33.056137, 31.086800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.852394, 32.791050, 30.844532>,  <37.746693, 32.631996, 30.699171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.852394, 32.791050, 30.844532>,  <38.028561, 33.056137, 31.086800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852394, 32.791050, 30.844532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837503, 0.060225, 0.543103,
		-0.323450, 0.746441, -0.581555,
		-0.440418, -0.662721, -0.605667,
		37.720268, 32.592236, 30.662832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359245, 33.355171, 31.030668>,  <38.028561, 33.056137, 31.086800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359245, 33.355171, 31.030668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.378742, 32.961746, 30.961132>,  <37.390438, 32.725689, 30.919411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.378742, 32.961746, 30.961132>,  <37.359245, 33.355171, 31.030668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378742, 32.961746, 30.961132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840557, -0.134405, 0.524785,
		-0.539526, 0.120545, -0.833295,
		0.048739, -0.983567, -0.173840,
		37.393364, 32.666676, 30.908979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947311, 33.863087, 30.860659>,  <37.359245, 33.355171, 31.030668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947311, 33.863087, 30.860659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.065453, 33.751579, 31.226185>,  <38.136337, 33.684677, 31.445501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.065453, 33.751579, 31.226185>,  <37.947311, 33.863087, 30.860659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065453, 33.751579, 31.226185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102777, 0.941664, 0.320478,
		-0.949844, -0.188574, 0.249472,
		0.295352, -0.278764, 0.913815,
		38.154057, 33.667950, 31.500330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386261, 34.389172, 30.491611>,  <37.947311, 33.863087, 30.860659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386261, 34.389172, 30.491611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.472080, 34.761948, 30.608549>,  <38.523571, 34.985611, 30.678711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.472080, 34.761948, 30.608549>,  <38.386261, 34.389172, 30.491611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472080, 34.761948, 30.608549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192192, 0.253178, -0.948137,
		-0.957617, 0.259608, -0.124792,
		0.214549, 0.931936, 0.292342,
		38.536446, 35.041527, 30.696251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033669, 34.822525, 30.000282>,  <38.386261, 34.389172, 30.491611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033669, 34.822525, 30.000282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.290268, 35.072266, 30.178574>,  <38.444225, 35.222111, 30.285549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.290268, 35.072266, 30.178574>,  <38.033669, 34.822525, 30.000282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290268, 35.072266, 30.178574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106752, 0.502730, -0.857827,
		-0.759664, 0.597874, 0.255848,
		0.641494, 0.624348, 0.445730,
		38.482716, 35.259571, 30.312292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905228, 35.529747, 29.588783>,  <38.033669, 34.822525, 30.000282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905228, 35.529747, 29.588783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.240711, 35.591309, 29.797737>,  <38.442001, 35.628246, 29.923109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.240711, 35.591309, 29.797737>,  <37.905228, 35.529747, 29.588783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240711, 35.591309, 29.797737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398349, 0.480698, -0.781183,
		-0.371338, 0.863274, 0.341856,
		0.838705, 0.153904, 0.522386,
		38.492321, 35.637482, 29.954453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993717, 36.309772, 29.666887>,  <37.905228, 35.529747, 29.588783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993717, 36.309772, 29.666887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.340031, 36.110161, 29.681828>,  <38.547817, 35.990395, 29.690792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.340031, 36.110161, 29.681828>,  <37.993717, 36.309772, 29.666887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340031, 36.110161, 29.681828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299247, 0.456462, -0.837911,
		0.401090, 0.736625, 0.544528,
		0.865782, -0.499026, 0.037350,
		38.599766, 35.960453, 29.693033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467087, 36.843235, 29.573828>,  <37.993717, 36.309772, 29.666887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467087, 36.843235, 29.573828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.638248, 36.496014, 29.473129>,  <38.740948, 36.287682, 29.412710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.638248, 36.496014, 29.473129>,  <38.467087, 36.843235, 29.573828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638248, 36.496014, 29.473129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315903, 0.404612, -0.858193,
		0.846817, 0.287701, 0.447357,
		0.427909, -0.868054, -0.251747,
		38.766621, 36.235596, 29.397606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066578, 37.007706, 29.304283>,  <38.467087, 36.843235, 29.573828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066578, 37.007706, 29.304283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.022842, 36.638336, 29.157135>,  <38.996601, 36.416714, 29.068846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.022842, 36.638336, 29.157135>,  <39.066578, 37.007706, 29.304283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022842, 36.638336, 29.157135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348996, 0.310864, -0.884062,
		0.930724, -0.225047, 0.288283,
		-0.109339, -0.923427, -0.367869,
		38.990040, 36.361309, 29.046774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595943, 36.921432, 28.869650>,  <39.066578, 37.007706, 29.304283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595943, 36.921432, 28.869650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.325943, 36.656506, 28.739597>,  <39.163940, 36.497551, 28.661566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.325943, 36.656506, 28.739597>,  <39.595943, 36.921432, 28.869650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325943, 36.656506, 28.739597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130933, 0.326145, -0.936209,
		0.726103, -0.674515, -0.133430,
		-0.675004, -0.662314, -0.325131,
		39.123444, 36.457813, 28.642057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903763, 36.579403, 28.281132>,  <39.595943, 36.921432, 28.869650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903763, 36.579403, 28.281132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.517933, 36.487427, 28.229404>,  <39.286434, 36.432243, 28.198368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.517933, 36.487427, 28.229404>,  <39.903763, 36.579403, 28.281132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517933, 36.487427, 28.229404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134650, -0.007589, -0.990864,
		0.226856, -0.973176, 0.038281,
		-0.964575, -0.229938, -0.129316,
		39.228561, 36.418446, 28.190609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884056, 36.081974, 27.673225>,  <39.903763, 36.579403, 28.281132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884056, 36.081974, 27.673225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.516705, 36.236069, 27.709379>,  <39.296291, 36.328526, 27.731071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.516705, 36.236069, 27.709379>,  <39.884056, 36.081974, 27.673225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516705, 36.236069, 27.709379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071341, 0.063479, -0.995430,
		-0.389210, -0.920633, -0.030815,
		-0.918382, 0.385233, 0.090385,
		39.241188, 36.351639, 27.736494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523071, 35.828426, 27.164505>,  <39.884056, 36.081974, 27.673225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523071, 35.828426, 27.164505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.251926, 36.113358, 27.237263>,  <39.089237, 36.284317, 27.280918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.251926, 36.113358, 27.237263>,  <39.523071, 35.828426, 27.164505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251926, 36.113358, 27.237263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174453, 0.084499, -0.981033,
		-0.714189, -0.696740, 0.066990,
		-0.677865, 0.712329, 0.181896,
		39.048569, 36.327057, 27.291832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842289, 35.753345, 26.746515>,  <39.523071, 35.828426, 27.164505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842289, 35.753345, 26.746515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.839489, 36.140808, 26.845831>,  <38.837807, 36.373287, 26.905420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.839489, 36.140808, 26.845831>,  <38.842289, 35.753345, 26.746515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839489, 36.140808, 26.845831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194432, 0.242238, -0.950535,
		-0.980891, -0.054933, 0.186642,
		-0.007004, 0.968661, 0.248290,
		38.837387, 36.431408, 26.920319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308258, 36.067085, 26.331217>,  <38.842289, 35.753345, 26.746515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308258, 36.067085, 26.331217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.540474, 36.367592, 26.456800>,  <38.679802, 36.547897, 26.532150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.540474, 36.367592, 26.456800>,  <38.308258, 36.067085, 26.331217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540474, 36.367592, 26.456800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036775, 0.361002, -0.931840,
		-0.813402, 0.552514, 0.181947,
		0.580538, 0.751269, 0.313959,
		38.714634, 36.592972, 26.550987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976490, 36.750343, 26.086895>,  <38.308258, 36.067085, 26.331217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976490, 36.750343, 26.086895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.370022, 36.789932, 26.146597>,  <38.606140, 36.813686, 26.182419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.370022, 36.789932, 26.146597>,  <37.976490, 36.750343, 26.086895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370022, 36.789932, 26.146597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102354, 0.373155, -0.922106,
		-0.146958, 0.922475, 0.356992,
		0.983833, 0.098971, 0.149257,
		38.665173, 36.819622, 26.191374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099678, 37.378052, 25.741680>,  <37.976490, 36.750343, 26.086895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099678, 37.378052, 25.741680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.475422, 37.245235, 25.775980>,  <38.700867, 37.165546, 25.796560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.475422, 37.245235, 25.775980>,  <38.099678, 37.378052, 25.741680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475422, 37.245235, 25.775980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196003, 0.314644, -0.928753,
		0.281407, 0.889239, 0.360645,
		0.939358, -0.332045, 0.085750,
		38.757229, 37.145622, 25.801704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820274, 38.090279, 25.570581>,  <38.099678, 37.378052, 25.741680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820274, 38.090279, 25.570581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.460808, 37.976871, 25.436707>,  <37.245129, 37.908829, 25.356382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.460808, 37.976871, 25.436707>,  <37.820274, 38.090279, 25.570581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460808, 37.976871, 25.436707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254338, -0.284844, 0.924217,
		-0.357363, 0.915687, 0.183872,
		-0.898668, -0.283515, -0.334686,
		37.191208, 37.891815, 25.336300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348267, 38.375439, 26.092314>,  <37.820274, 38.090279, 25.570581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348267, 38.375439, 26.092314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.150578, 38.093010, 25.889452>,  <37.031963, 37.923553, 25.767735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.150578, 38.093010, 25.889452>,  <37.348267, 38.375439, 26.092314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150578, 38.093010, 25.889452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245565, -0.446239, 0.860563,
		-0.833934, 0.549846, 0.047152,
		-0.494218, -0.706074, -0.507156,
		37.002312, 37.881187, 25.737305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777283, 38.327328, 26.577694>,  <37.348267, 38.375439, 26.092314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777283, 38.327328, 26.577694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.729877, 38.020863, 26.325045>,  <36.701435, 37.836983, 26.173454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.729877, 38.020863, 26.325045>,  <36.777283, 38.327328, 26.577694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729877, 38.020863, 26.325045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612845, -0.444056, 0.653632,
		-0.781265, 0.464552, -0.416913,
		-0.118513, -0.766163, -0.631624,
		36.694324, 37.791012, 26.135557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108330, 38.197056, 26.356218>,  <36.777283, 38.327328, 26.577694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108330, 38.197056, 26.356218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.302341, 37.847363, 26.347572>,  <36.418751, 37.637547, 26.342384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.302341, 37.847363, 26.347572>,  <36.108330, 38.197056, 26.356218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302341, 37.847363, 26.347572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689313, -0.397415, 0.605730,
		-0.538137, -0.278898, -0.795377,
		0.485032, -0.874229, -0.021616,
		36.447853, 37.585094, 26.341087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637436, 37.724239, 26.222651>,  <36.108330, 38.197056, 26.356218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637436, 37.724239, 26.222651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.918697, 37.479645, 26.367790>,  <36.087456, 37.332890, 26.454874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.918697, 37.479645, 26.367790>,  <35.637436, 37.724239, 26.222651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918697, 37.479645, 26.367790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694928, -0.482997, 0.532718,
		-0.150494, -0.626738, -0.764560,
		0.703155, -0.611485, 0.362850,
		36.129642, 37.296200, 26.476645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310604, 37.056820, 26.221464>,  <35.637436, 37.724239, 26.222651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310604, 37.056820, 26.221464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.627747, 37.005337, 26.459730>,  <35.818031, 36.974445, 26.602690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.627747, 37.005337, 26.459730>,  <35.310604, 37.056820, 26.221464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627747, 37.005337, 26.459730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513755, -0.666896, 0.539727,
		0.327780, -0.733951, -0.594875,
		0.792853, -0.128708, 0.595666,
		35.865604, 36.966724, 26.638430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353748, 36.391163, 26.291407>,  <35.310604, 37.056820, 26.221464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353748, 36.391163, 26.291407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.570248, 36.519211, 26.602425>,  <35.700146, 36.596039, 26.789036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.570248, 36.519211, 26.602425>,  <35.353748, 36.391163, 26.291407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570248, 36.519211, 26.602425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504443, -0.616206, 0.604837,
		0.672749, -0.719592, -0.172035,
		0.541244, 0.320122, 0.777546,
		35.732620, 36.615246, 26.835688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312008, 35.795391, 26.626877>,  <35.353748, 36.391163, 26.291407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312008, 35.795391, 26.626877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.435345, 36.067471, 26.892883>,  <35.509346, 36.230721, 27.052488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.435345, 36.067471, 26.892883>,  <35.312008, 35.795391, 26.626877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435345, 36.067471, 26.892883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543224, -0.447983, 0.710084,
		0.780917, -0.580204, 0.231369,
		0.308344, 0.680202, 0.665018,
		35.527847, 36.271530, 27.092388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385601, 35.434990, 27.378839>,  <35.312008, 35.795391, 26.626877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385601, 35.434990, 27.378839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.331234, 35.826431, 27.440632>,  <35.298615, 36.061295, 27.477707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.331234, 35.826431, 27.440632>,  <35.385601, 35.434990, 27.378839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331234, 35.826431, 27.440632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599271, -0.205377, 0.773753,
		0.788923, 0.012595, 0.614363,
		-0.135921, 0.978602, 0.154479,
		35.290459, 36.120010, 27.486975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461964, 35.600880, 28.087708>,  <35.385601, 35.434990, 27.378839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461964, 35.600880, 28.087708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.246689, 35.911427, 27.956495>,  <35.117523, 36.097755, 27.877768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.246689, 35.911427, 27.956495>,  <35.461964, 35.600880, 28.087708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246689, 35.911427, 27.956495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691266, -0.183934, 0.698798,
		0.482191, 0.602839, 0.635670,
		-0.538184, 0.776372, -0.328031,
		35.085232, 36.144337, 27.858086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382114, 35.944073, 28.629427>,  <35.461964, 35.600880, 28.087708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382114, 35.944073, 28.629427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.073166, 36.061115, 28.403925>,  <34.887794, 36.131340, 28.268623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.073166, 36.061115, 28.403925>,  <35.382114, 35.944073, 28.629427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073166, 36.061115, 28.403925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630915, -0.250911, 0.734160,
		0.073366, 0.922728, 0.378406,
		-0.772376, 0.292604, -0.563754,
		34.841454, 36.148895, 28.234798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989788, 36.173374, 29.055872>,  <35.382114, 35.944073, 28.629427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989788, 36.173374, 29.055872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.700546, 36.189163, 28.780029>,  <34.527000, 36.198635, 28.614523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.700546, 36.189163, 28.780029>,  <34.989788, 36.173374, 29.055872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700546, 36.189163, 28.780029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681782, -0.201017, 0.703396,
		-0.110860, 0.978792, 0.172266,
		-0.723107, 0.039469, -0.689608,
		34.483616, 36.201004, 28.573147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.999016, 40.006611, 21.937283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863403, 39.637779, 21.862638>,  <37.782036, 39.416481, 21.817852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863403, 39.637779, 21.862638>,  <37.999016, 40.006611, 21.937283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863403, 39.637779, 21.862638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569744, 0.043395, 0.820676,
		-0.748634, 0.384551, -0.540064,
		-0.339028, -0.922083, -0.186608,
		37.761696, 39.361153, 21.806656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296295, 39.998486, 22.246727>,  <37.999016, 40.006611, 21.937283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296295, 39.998486, 22.246727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399723, 39.613327, 22.215828>,  <37.461781, 39.382233, 22.197289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399723, 39.613327, 22.215828>,  <37.296295, 39.998486, 22.246727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399723, 39.613327, 22.215828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486001, -0.198783, 0.851052,
		-0.834832, -0.182516, -0.519369,
		0.258572, -0.962899, -0.077247,
		37.477295, 39.324459, 22.192654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586109, 39.529354, 22.335228>,  <37.296295, 39.998486, 22.246727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586109, 39.529354, 22.335228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902687, 39.302330, 22.425999>,  <37.092632, 39.166115, 22.480461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902687, 39.302330, 22.425999>,  <36.586109, 39.529354, 22.335228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902687, 39.302330, 22.425999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400075, -0.200311, 0.894324,
		-0.462125, -0.798594, -0.385601,
		0.791441, -0.567559, 0.226929,
		37.140121, 39.132061, 22.494078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367970, 38.988785, 22.815672>,  <36.586109, 39.529354, 22.335228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367970, 38.988785, 22.815672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760849, 38.953087, 22.881796>,  <36.996574, 38.931667, 22.921471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760849, 38.953087, 22.881796>,  <36.367970, 38.988785, 22.815672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760849, 38.953087, 22.881796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187440, -0.406645, 0.894151,
		-0.012578, -0.909216, -0.416134,
		0.982195, -0.089247, 0.165309,
		37.055508, 38.926311, 22.931389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398537, 38.304844, 23.129559>,  <36.367970, 38.988785, 22.815672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398537, 38.304844, 23.129559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741211, 38.488163, 23.224257>,  <36.946815, 38.598156, 23.281075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741211, 38.488163, 23.224257>,  <36.398537, 38.304844, 23.129559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741211, 38.488163, 23.224257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000267, -0.459343, 0.888259,
		0.515837, -0.760897, -0.393635,
		0.856687, 0.458302, 0.236743,
		36.998219, 38.625652, 23.295279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713497, 37.817524, 23.424202>,  <36.398537, 38.304844, 23.129559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713497, 37.817524, 23.424202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945061, 38.117504, 23.552223>,  <37.084000, 38.297493, 23.629036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945061, 38.117504, 23.552223>,  <36.713497, 37.817524, 23.424202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945061, 38.117504, 23.552223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082407, -0.444316, 0.892072,
		0.811215, -0.490057, -0.319021,
		0.578912, 0.749952, 0.320052,
		37.118732, 38.342491, 23.648239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281448, 37.512554, 23.721979>,  <36.713497, 37.817524, 23.424202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281448, 37.512554, 23.721979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285839, 37.865494, 23.910168>,  <37.288475, 38.077255, 24.023081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285839, 37.865494, 23.910168>,  <37.281448, 37.512554, 23.721979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285839, 37.865494, 23.910168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096674, -0.469234, 0.877766,
		0.995256, 0.035849, -0.090450,
		0.010976, 0.882346, 0.470474,
		37.289131, 38.130196, 24.051310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827938, 37.557003, 24.249708>,  <37.281448, 37.512554, 23.721979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827938, 37.557003, 24.249708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541912, 37.808632, 24.371660>,  <37.370296, 37.959610, 24.444832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541912, 37.808632, 24.371660>,  <37.827938, 37.557003, 24.249708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541912, 37.808632, 24.371660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040346, -0.472541, 0.880385,
		0.697895, 0.617229, 0.363277,
		-0.715063, 0.629073, 0.304882,
		37.327393, 37.997353, 24.463125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969421, 37.719532, 24.958874>,  <37.827938, 37.557003, 24.249708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969421, 37.719532, 24.958874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581516, 37.799503, 24.902905>,  <37.348774, 37.847488, 24.869322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581516, 37.799503, 24.902905>,  <37.969421, 37.719532, 24.958874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581516, 37.799503, 24.902905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219439, -0.463598, 0.858442,
		0.106761, 0.863194, 0.493455,
		-0.969767, 0.199932, -0.139924,
		37.290585, 37.859482, 24.860928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541214, 37.801769, 25.342445>,  <37.969421, 37.719532, 24.958874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541214, 37.801769, 25.342445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761349, 37.470112, 25.381735>,  <38.893429, 37.271118, 25.405308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761349, 37.470112, 25.381735>,  <38.541214, 37.801769, 25.342445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761349, 37.470112, 25.381735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511745, 0.242016, -0.824346,
		0.659728, 0.503936, 0.557500,
		0.550342, -0.829142, 0.098222,
		38.926453, 37.221371, 25.411201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283821, 37.990868, 25.221519>,  <38.541214, 37.801769, 25.342445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283821, 37.990868, 25.221519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273544, 37.593632, 25.175720>,  <39.267380, 37.355289, 25.148241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273544, 37.593632, 25.175720>,  <39.283821, 37.990868, 25.221519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273544, 37.593632, 25.175720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597340, 0.076589, -0.798323,
		0.801577, -0.088904, 0.591245,
		-0.025691, -0.993091, -0.114498,
		39.265839, 37.295704, 25.141371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946163, 37.940357, 24.976883>,  <39.283821, 37.990868, 25.221519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946163, 37.940357, 24.976883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738537, 37.604485, 24.913013>,  <39.613960, 37.402962, 24.874691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738537, 37.604485, 24.913013>,  <39.946163, 37.940357, 24.976883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738537, 37.604485, 24.913013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584005, -0.212009, -0.783575,
		0.624104, -0.499981, 0.600428,
		-0.519069, -0.839685, -0.159675,
		39.582817, 37.352577, 24.865110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449345, 37.494888, 24.873627>,  <39.946163, 37.940357, 24.976883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449345, 37.494888, 24.873627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117390, 37.346832, 24.706638>,  <39.918217, 37.257999, 24.606445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117390, 37.346832, 24.706638>,  <40.449345, 37.494888, 24.873627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117390, 37.346832, 24.706638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478685, -0.087981, -0.873568,
		0.286614, -0.924800, 0.250195,
		-0.829888, -0.370142, -0.417471,
		39.868423, 37.235790, 24.581396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643669, 36.877407, 24.570597>,  <40.449345, 37.494888, 24.873627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643669, 36.877407, 24.570597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294128, 36.928680, 24.382998>,  <40.084404, 36.959446, 24.270439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294128, 36.928680, 24.382998>,  <40.643669, 36.877407, 24.570597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294128, 36.928680, 24.382998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476930, 0.038542, -0.878096,
		-0.094485, -0.991001, -0.094816,
		-0.873848, 0.128187, -0.468996,
		40.031975, 36.967136, 24.242298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612934, 36.445625, 24.028450>,  <40.643669, 36.877407, 24.570597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612934, 36.445625, 24.028450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351952, 36.725594, 23.912233>,  <40.195362, 36.893574, 23.842505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351952, 36.725594, 23.912233>,  <40.612934, 36.445625, 24.028450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351952, 36.725594, 23.912233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541153, 0.161917, -0.825189,
		-0.530521, -0.695628, -0.484406,
		-0.652458, 0.699918, -0.290540,
		40.156216, 36.935570, 23.825071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395584, 36.342163, 23.425941>,  <40.612934, 36.445625, 24.028450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395584, 36.342163, 23.425941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318390, 36.734543, 23.434883>,  <40.272076, 36.969971, 23.440248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318390, 36.734543, 23.434883>,  <40.395584, 36.342163, 23.425941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318390, 36.734543, 23.434883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472800, 0.112930, -0.873903,
		-0.859778, -0.158078, -0.485586,
		-0.192983, 0.980947, 0.022355,
		40.260494, 37.028828, 23.441589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264160, 36.495972, 22.753748>,  <40.395584, 36.342163, 23.425941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264160, 36.495972, 22.753748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353542, 36.850159, 22.916725>,  <40.407173, 37.062672, 23.014511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353542, 36.850159, 22.916725>,  <40.264160, 36.495972, 22.753748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353542, 36.850159, 22.916725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508474, 0.250729, -0.823765,
		-0.831577, 0.391252, -0.394211,
		0.223459, 0.885470, 0.407442,
		40.420582, 37.115799, 23.038958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041676, 37.017838, 22.303188>,  <40.264160, 36.495972, 22.753748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041676, 37.017838, 22.303188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320145, 37.202801, 22.522833>,  <40.487225, 37.313778, 22.654619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320145, 37.202801, 22.522833>,  <40.041676, 37.017838, 22.303188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320145, 37.202801, 22.522833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526431, 0.191214, -0.828437,
		-0.488071, 0.865806, -0.110305,
		0.696174, 0.462404, 0.549113,
		40.528996, 37.341522, 22.687567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203030, 37.704803, 21.897318>,  <40.041676, 37.017838, 22.303188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203030, 37.704803, 21.897318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495880, 37.616493, 22.155079>,  <40.671589, 37.563507, 22.309734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495880, 37.616493, 22.155079>,  <40.203030, 37.704803, 21.897318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495880, 37.616493, 22.155079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680979, 0.214756, -0.700105,
		0.016176, 0.951388, 0.307571,
		0.732124, -0.220774, 0.644401,
		40.715519, 37.550262, 22.348400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648628, 38.285957, 21.842157>,  <40.203030, 37.704803, 21.897318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648628, 38.285957, 21.842157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865608, 37.977467, 21.975399>,  <40.995796, 37.792370, 22.055344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865608, 37.977467, 21.975399>,  <40.648628, 38.285957, 21.842157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865608, 37.977467, 21.975399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686932, 0.178939, -0.704347,
		0.483608, 0.610889, 0.626847,
		0.542446, -0.771229, 0.333103,
		41.028343, 37.746098, 22.075331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415382, 38.465538, 21.803720>,  <40.648628, 38.285957, 21.842157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415382, 38.465538, 21.803720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473579, 38.073994, 21.861208>,  <41.508499, 37.839066, 21.895700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473579, 38.073994, 21.861208>,  <41.415382, 38.465538, 21.803720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473579, 38.073994, 21.861208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581522, -0.032910, -0.812865,
		0.800414, 0.201845, 0.564443,
		0.145497, -0.978864, 0.143719,
		41.517227, 37.780334, 21.904324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143921, 38.413944, 21.728233>,  <41.415382, 38.465538, 21.803720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143921, 38.413944, 21.728233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943501, 38.077900, 21.645132>,  <41.823246, 37.876274, 21.595272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943501, 38.077900, 21.645132>,  <42.143921, 38.413944, 21.728233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943501, 38.077900, 21.645132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499734, -0.084881, -0.862009,
		0.706548, -0.535735, 0.462362,
		-0.501054, -0.840109, -0.207752,
		41.793182, 37.825867, 21.582806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593857, 38.090847, 21.346529>,  <42.143921, 38.413944, 21.728233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593857, 38.090847, 21.346529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264626, 37.880772, 21.260067>,  <42.067089, 37.754726, 21.208189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264626, 37.880772, 21.260067>,  <42.593857, 38.090847, 21.346529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264626, 37.880772, 21.260067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290033, -0.061469, -0.955041,
		0.488290, -0.848763, 0.202915,
		-0.823076, -0.525189, -0.216154,
		42.017704, 37.723213, 21.195221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.637756, 31.063040, 19.612856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.554787, 31.433043, 19.740189>,  <38.505005, 31.655045, 19.816587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.554787, 31.433043, 19.740189>,  <38.637756, 31.063040, 19.612856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554787, 31.433043, 19.740189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286732, -0.368605, 0.884260,
		0.935286, 0.092143, 0.341688,
		-0.207426, 0.925008, 0.318330,
		38.492558, 31.710545, 19.835688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749332, 31.040655, 20.351564>,  <38.637756, 31.063040, 19.612856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749332, 31.040655, 20.351564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.531586, 31.375633, 20.332195>,  <38.400936, 31.576620, 20.320574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.531586, 31.375633, 20.332195>,  <38.749332, 31.040655, 20.351564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531586, 31.375633, 20.332195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293511, -0.136082, 0.946220,
		0.785820, 0.529306, 0.319879,
		-0.544370, 0.837447, -0.048422,
		38.368275, 31.626867, 20.317669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671856, 31.266544, 21.013481>,  <38.749332, 31.040655, 20.351564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671856, 31.266544, 21.013481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391697, 31.494019, 20.840950>,  <38.223602, 31.630503, 20.737431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391697, 31.494019, 20.840950>,  <38.671856, 31.266544, 21.013481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391697, 31.494019, 20.840950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539328, -0.025838, 0.841700,
		0.467517, 0.822150, 0.324804,
		-0.700396, 0.568684, -0.431329,
		38.181580, 31.664623, 20.711552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639568, 31.946007, 21.380322>,  <38.671856, 31.266544, 21.013481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639568, 31.946007, 21.380322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.283665, 31.864361, 21.217022>,  <38.070122, 31.815372, 21.119043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.283665, 31.864361, 21.217022>,  <38.639568, 31.946007, 21.380322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283665, 31.864361, 21.217022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433548, 0.098298, 0.895753,
		-0.142707, 0.973999, -0.175955,
		-0.889759, -0.204116, -0.408248,
		38.016739, 31.803125, 21.094547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200424, 32.288036, 21.841030>,  <38.639568, 31.946007, 21.380322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200424, 32.288036, 21.841030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.960384, 32.061237, 21.615326>,  <37.816360, 31.925158, 21.479902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.960384, 32.061237, 21.615326>,  <38.200424, 32.288036, 21.841030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960384, 32.061237, 21.615326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705556, 0.042800, 0.707360,
		-0.376921, 0.822606, -0.425734,
		-0.600101, -0.566998, -0.564263,
		37.780354, 31.891138, 21.446047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669575, 32.657738, 21.923759>,  <38.200424, 32.288036, 21.841030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669575, 32.657738, 21.923759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.549587, 32.292828, 21.812210>,  <37.477596, 32.073879, 21.745279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.549587, 32.292828, 21.812210>,  <37.669575, 32.657738, 21.923759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549587, 32.292828, 21.812210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667247, -0.008279, 0.744790,
		-0.681764, 0.409489, -0.606231,
		-0.299965, -0.912277, -0.278875,
		37.459599, 32.019146, 21.728548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961273, 32.747456, 21.785088>,  <37.669575, 32.657738, 21.923759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961273, 32.747456, 21.785088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.047050, 32.370605, 21.888166>,  <37.098518, 32.144493, 21.950014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.047050, 32.370605, 21.888166>,  <36.961273, 32.747456, 21.785088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047050, 32.370605, 21.888166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757254, 0.006273, 0.653091,
		-0.616911, -0.335197, -0.712084,
		0.214447, -0.942127, 0.257699,
		37.111385, 32.087967, 21.965477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293232, 32.432014, 21.750206>,  <36.961273, 32.747456, 21.785088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293232, 32.432014, 21.750206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.554401, 32.242855, 21.986870>,  <36.711102, 32.129360, 22.128868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.554401, 32.242855, 21.986870>,  <36.293232, 32.432014, 21.750206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554401, 32.242855, 21.986870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669823, 0.004161, 0.742509,
		-0.353591, -0.881108, -0.314040,
		0.652924, -0.472896, 0.591658,
		36.750278, 32.100986, 22.164368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908707, 32.083687, 22.263231>,  <36.293232, 32.432014, 21.750206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908707, 32.083687, 22.263231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.261765, 32.026020, 22.442184>,  <36.473598, 31.991421, 22.549557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.261765, 32.026020, 22.442184>,  <35.908707, 32.083687, 22.263231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261765, 32.026020, 22.442184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454289, -0.017342, 0.890686,
		-0.120650, -0.989401, -0.080801,
		0.882647, -0.144168, 0.447381,
		36.526558, 31.982771, 22.576399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806999, 31.588415, 22.853876>,  <35.908707, 32.083687, 22.263231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806999, 31.588415, 22.853876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.147491, 31.757874, 22.977762>,  <36.351788, 31.859549, 23.052094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.147491, 31.757874, 22.977762>,  <35.806999, 31.588415, 22.853876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147491, 31.757874, 22.977762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310145, -0.069964, 0.948111,
		0.423332, -0.903122, 0.071836,
		0.851235, 0.423645, 0.309717,
		36.402863, 31.884968, 23.070677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066998, 31.162590, 23.336670>,  <35.806999, 31.588415, 22.853876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066998, 31.162590, 23.336670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.218239, 31.526651, 23.404383>,  <36.308983, 31.745089, 23.445009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.218239, 31.526651, 23.404383>,  <36.066998, 31.162590, 23.336670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218239, 31.526651, 23.404383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171742, -0.110720, 0.978900,
		0.909693, -0.399201, 0.114448,
		0.378106, 0.910154, 0.169280,
		36.331669, 31.799698, 23.455166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435181, 31.076828, 23.906477>,  <36.066998, 31.162590, 23.336670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435181, 31.076828, 23.906477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.400711, 31.475269, 23.914017>,  <36.380028, 31.714334, 23.918541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.400711, 31.475269, 23.914017>,  <36.435181, 31.076828, 23.906477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400711, 31.475269, 23.914017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238391, -0.038988, 0.970386,
		0.967338, 0.079133, 0.240822,
		-0.086179, 0.996101, 0.018850,
		36.374859, 31.774099, 23.919672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647877, 31.208696, 24.541613>,  <36.435181, 31.076828, 23.906477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647877, 31.208696, 24.541613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.466419, 31.553112, 24.449684>,  <36.357544, 31.759762, 24.394527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.466419, 31.553112, 24.449684>,  <36.647877, 31.208696, 24.541613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466419, 31.553112, 24.449684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391979, 0.038818, 0.919155,
		0.800349, 0.507055, 0.319900,
		-0.453644, 0.861039, -0.229823,
		36.330326, 31.811424, 24.380737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764587, 31.613552, 25.181160>,  <36.647877, 31.208696, 24.541613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764587, 31.613552, 25.181160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.485680, 31.818399, 24.980539>,  <36.318336, 31.941307, 24.860167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.485680, 31.818399, 24.980539>,  <36.764587, 31.613552, 25.181160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485680, 31.818399, 24.980539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473335, 0.196502, 0.858686,
		0.538303, 0.836136, 0.105389,
		-0.697269, 0.512117, -0.501550,
		36.276501, 31.972034, 24.830074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297062, 31.992926, 25.485897>,  <36.764587, 31.613552, 25.181160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297062, 31.992926, 25.485897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.553749, 31.699398, 25.575083>,  <37.707760, 31.523281, 25.628593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.553749, 31.699398, 25.575083>,  <37.297062, 31.992926, 25.485897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553749, 31.699398, 25.575083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296790, -0.030465, -0.954457,
		0.707191, 0.678662, 0.198240,
		0.641714, -0.733819, 0.222965,
		37.746262, 31.479252, 25.641972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922390, 32.210648, 25.235968>,  <37.297062, 31.992926, 25.485897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922390, 32.210648, 25.235968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.974934, 31.816950, 25.283300>,  <38.006458, 31.580730, 25.311701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.974934, 31.816950, 25.283300>,  <37.922390, 32.210648, 25.235968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974934, 31.816950, 25.283300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589148, -0.018492, -0.807814,
		0.797277, 0.175828, 0.577438,
		0.131358, -0.984247, 0.118332,
		38.014339, 31.521675, 25.318800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698734, 32.057560, 25.169399>,  <37.922390, 32.210648, 25.235968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698734, 32.057560, 25.169399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.530556, 31.707458, 25.073772>,  <38.429649, 31.497396, 25.016396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.530556, 31.707458, 25.073772>,  <38.698734, 32.057560, 25.169399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530556, 31.707458, 25.073772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679966, -0.129500, -0.721718,
		0.600729, -0.465998, 0.649592,
		-0.420442, -0.875257, -0.239068,
		38.404423, 31.444881, 25.002052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275700, 31.581730, 25.054907>,  <38.698734, 32.057560, 25.169399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275700, 31.581730, 25.054907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.958942, 31.406595, 24.884632>,  <38.768890, 31.301514, 24.782467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.958942, 31.406595, 24.884632>,  <39.275700, 31.581730, 25.054907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958942, 31.406595, 24.884632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564392, -0.258573, -0.783965,
		0.233178, -0.861068, 0.451873,
		-0.791889, -0.437837, -0.425687,
		38.721375, 31.275244, 24.756926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497398, 30.930803, 24.850670>,  <39.275700, 31.581730, 25.054907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497398, 30.930803, 24.850670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.194874, 31.030771, 24.608829>,  <39.013359, 31.090752, 24.463726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.194874, 31.030771, 24.608829>,  <39.497398, 30.930803, 24.850670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194874, 31.030771, 24.608829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568043, -0.207588, -0.796388,
		-0.324542, -0.945752, 0.015034,
		-0.756307, 0.249921, -0.604599,
		38.967983, 31.105747, 24.427450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515751, 30.422117, 24.384424>,  <39.497398, 30.930803, 24.850670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515751, 30.422117, 24.384424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.296745, 30.700565, 24.198673>,  <39.165340, 30.867634, 24.087223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.296745, 30.700565, 24.198673>,  <39.515751, 30.422117, 24.384424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296745, 30.700565, 24.198673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448988, -0.223917, -0.865027,
		-0.706143, -0.682115, -0.189951,
		-0.547514, 0.696118, -0.464378,
		39.132492, 30.909401, 24.059361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423668, 30.106897, 23.743963>,  <39.515751, 30.422117, 24.384424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423668, 30.106897, 23.743963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.328484, 30.490299, 23.681173>,  <39.271374, 30.720341, 23.643499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.328484, 30.490299, 23.681173>,  <39.423668, 30.106897, 23.743963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328484, 30.490299, 23.681173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428626, -0.041397, -0.902533,
		-0.871582, -0.282051, -0.400989,
		-0.237961, 0.958506, -0.156975,
		39.257095, 30.777851, 23.634081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063641, 30.177984, 23.078577>,  <39.423668, 30.106897, 23.743963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063641, 30.177984, 23.078577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.204628, 30.541523, 23.167809>,  <39.289219, 30.759645, 23.221348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.204628, 30.541523, 23.167809>,  <39.063641, 30.177984, 23.078577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204628, 30.541523, 23.167809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365405, 0.085797, -0.926886,
		-0.861536, 0.408213, -0.301856,
		0.352469, 0.908846, 0.223081,
		39.310368, 30.814177, 23.234734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876564, 30.542177, 22.496433>,  <39.063641, 30.177984, 23.078577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876564, 30.542177, 22.496433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.163231, 30.762230, 22.667898>,  <39.335232, 30.894260, 22.770777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.163231, 30.762230, 22.667898>,  <38.876564, 30.542177, 22.496433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163231, 30.762230, 22.667898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239757, 0.382837, -0.892162,
		-0.654913, 0.742153, 0.142467,
		0.716663, 0.550131, 0.428662,
		39.378231, 30.927269, 22.796497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842884, 31.101789, 22.136471>,  <38.876564, 30.542177, 22.496433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842884, 31.101789, 22.136471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.193569, 31.114756, 22.328436>,  <39.403980, 31.122536, 22.443615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.193569, 31.114756, 22.328436>,  <38.842884, 31.101789, 22.136471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193569, 31.114756, 22.328436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431873, 0.386240, -0.815048,
		-0.211783, 0.921828, 0.324624,
		0.876717, 0.032417, 0.479912,
		39.456585, 31.124481, 22.472410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178074, 31.765257, 21.986433>,  <38.842884, 31.101789, 22.136471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178074, 31.765257, 21.986433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459740, 31.499308, 22.086111>,  <39.628738, 31.339739, 22.145918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459740, 31.499308, 22.086111>,  <39.178074, 31.765257, 21.986433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459740, 31.499308, 22.086111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472792, 0.177216, -0.863170,
		0.529737, 0.725630, 0.439135,
		0.704164, -0.664873, 0.249194,
		39.670990, 31.299847, 22.160870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699890, 32.048767, 21.744999>,  <39.178074, 31.765257, 21.986433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699890, 32.048767, 21.744999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.877716, 31.692768, 21.785547>,  <39.984409, 31.479170, 21.809875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.877716, 31.692768, 21.785547>,  <39.699890, 32.048767, 21.744999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877716, 31.692768, 21.785547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583983, 0.202160, -0.786190,
		0.679211, 0.408709, 0.609614,
		0.444563, -0.889993, 0.101370,
		40.011086, 31.425770, 21.815958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415134, 32.144524, 21.667311>,  <39.699890, 32.048767, 21.744999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415134, 32.144524, 21.667311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.383781, 31.749226, 21.614796>,  <40.364971, 31.512049, 21.583286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.383781, 31.749226, 21.614796>,  <40.415134, 32.144524, 21.667311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383781, 31.749226, 21.614796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467095, 0.079938, -0.880586,
		0.880726, -0.130347, 0.455336,
		-0.078383, -0.988241, -0.131288,
		40.360268, 31.452753, 21.575409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110165, 31.927111, 21.555222>,  <40.415134, 32.144524, 21.667311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110165, 31.927111, 21.555222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.861446, 31.657419, 21.395832>,  <40.712215, 31.495604, 21.300198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.861446, 31.657419, 21.395832>,  <41.110165, 31.927111, 21.555222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861446, 31.657419, 21.395832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567907, -0.037803, -0.822224,
		0.539305, -0.737553, 0.406406,
		-0.621797, -0.674231, -0.398474,
		40.674908, 31.455151, 21.276289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934978, 31.826006, 21.673712>,  <41.110165, 31.927111, 21.555222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934978, 31.826006, 21.673712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.008244, 32.219090, 21.662865>,  <42.052204, 32.454941, 21.656357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.008244, 32.219090, 21.662865>,  <41.934978, 31.826006, 21.673712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008244, 32.219090, 21.662865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144760, 0.054243, 0.987979,
		0.972366, -0.177038, 0.152192,
		0.183165, 0.982708, -0.027116,
		42.063194, 32.513901, 21.654730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399902, 32.005028, 22.257687>,  <41.934978, 31.826006, 21.673712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399902, 32.005028, 22.257687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.218266, 32.347164, 22.157934>,  <42.109283, 32.552444, 22.098083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.218266, 32.347164, 22.157934>,  <42.399902, 32.005028, 22.257687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218266, 32.347164, 22.157934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224201, 0.161193, 0.961119,
		0.862282, 0.492352, 0.118571,
		-0.454096, 0.855340, -0.249380,
		42.082035, 32.603767, 22.083120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703739, 32.355209, 22.669613>,  <42.399902, 32.005028, 22.257687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703739, 32.355209, 22.669613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.382885, 32.567806, 22.560732>,  <42.190372, 32.695362, 22.495403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.382885, 32.567806, 22.560732>,  <42.703739, 32.355209, 22.669613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382885, 32.567806, 22.560732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045776, 0.399771, 0.915471,
		0.595381, 0.746794, -0.296343,
		-0.802138, 0.531489, -0.272202,
		42.142242, 32.727253, 22.479071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713776, 32.948723, 23.090284>,  <42.703739, 32.355209, 22.669613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713776, 32.948723, 23.090284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.322353, 32.972889, 23.011522>,  <42.087498, 32.987389, 22.964266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.322353, 32.972889, 23.011522>,  <42.713776, 32.948723, 23.090284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322353, 32.972889, 23.011522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143359, 0.486632, 0.861764,
		0.147883, 0.871516, -0.467537,
		-0.978560, 0.060414, -0.196904,
		42.028786, 32.991013, 22.952452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505543, 33.366734, 23.630623>,  <42.713776, 32.948723, 23.090284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505543, 33.366734, 23.630623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.163284, 33.229137, 23.475941>,  <41.957928, 33.146580, 23.383131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.163284, 33.229137, 23.475941>,  <42.505543, 33.366734, 23.630623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163284, 33.229137, 23.475941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456571, 0.149799, 0.876985,
		-0.243749, 0.926946, -0.285232,
		-0.855645, -0.343993, -0.386704,
		41.906590, 33.125938, 23.359930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938194, 33.821587, 23.758095>,  <42.505543, 33.366734, 23.630623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938194, 33.821587, 23.758095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.767197, 33.463886, 23.705095>,  <41.664597, 33.249264, 23.673296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.767197, 33.463886, 23.705095>,  <41.938194, 33.821587, 23.758095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767197, 33.463886, 23.705095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482595, 0.101814, 0.869906,
		-0.764428, 0.435822, -0.475088,
		-0.427495, -0.894255, -0.132496,
		41.638947, 33.195610, 23.665346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178902, 33.924648, 23.899208>,  <41.938194, 33.821587, 23.758095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178902, 33.924648, 23.899208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.211983, 33.527843, 23.937305>,  <41.231831, 33.289761, 23.960163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.211983, 33.527843, 23.937305>,  <41.178902, 33.924648, 23.899208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211983, 33.527843, 23.937305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525686, 0.037768, 0.849840,
		-0.846649, -0.120347, -0.518364,
		0.082698, -0.992013, 0.095241,
		41.236794, 33.230240, 23.965878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553627, 33.770817, 24.008282>,  <41.178902, 33.924648, 23.899208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553627, 33.770817, 24.008282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.766106, 33.460518, 24.144539>,  <40.893593, 33.274338, 24.226294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.766106, 33.460518, 24.144539>,  <40.553627, 33.770817, 24.008282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766106, 33.460518, 24.144539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566260, -0.025999, 0.823817,
		-0.630219, -0.630506, -0.453086,
		0.531201, -0.775749, 0.340645,
		40.925465, 33.227795, 24.246733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063763, 33.145111, 24.163679>,  <40.553627, 33.770817, 24.008282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063763, 33.145111, 24.163679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.393070, 33.089504, 24.383827>,  <40.590652, 33.056141, 24.515917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.393070, 33.089504, 24.383827>,  <40.063763, 33.145111, 24.163679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393070, 33.089504, 24.383827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565784, -0.279614, 0.775696,
		0.046056, -0.949995, -0.308850,
		0.823266, -0.139017, 0.550370,
		40.640049, 33.047798, 24.548939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959465, 32.502140, 24.536900>,  <40.063763, 33.145111, 24.163679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959465, 32.502140, 24.536900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.265583, 32.666832, 24.734806>,  <40.449253, 32.765648, 24.853550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.265583, 32.666832, 24.734806>,  <39.959465, 32.502140, 24.536900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265583, 32.666832, 24.734806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510140, -0.080767, 0.856291,
		0.392522, -0.907719, 0.148230,
		0.765299, 0.411731, 0.494767,
		40.495174, 32.790352, 24.883236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044289, 32.030762, 25.097744>,  <39.959465, 32.502140, 24.536900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044289, 32.030762, 25.097744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.212990, 32.384995, 25.175579>,  <40.314209, 32.597534, 25.222281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.212990, 32.384995, 25.175579>,  <40.044289, 32.030762, 25.097744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212990, 32.384995, 25.175579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216844, -0.109866, 0.970004,
		0.880400, -0.451297, 0.145698,
		0.421753, 0.885585, 0.194587,
		40.339516, 32.650669, 25.233955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355343, 31.900221, 25.707405>,  <40.044289, 32.030762, 25.097744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355343, 31.900221, 25.707405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.347248, 32.299831, 25.691738>,  <40.342392, 32.539597, 25.682339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.347248, 32.299831, 25.691738>,  <40.355343, 31.900221, 25.707405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347248, 32.299831, 25.691738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125413, 0.036329, 0.991439,
		0.991898, 0.024973, 0.124556,
		-0.020234, 0.999028, -0.039166,
		40.341179, 32.599541, 25.679989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898159, 32.187431, 26.280060>,  <40.355343, 31.900221, 25.707405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898159, 32.187431, 26.280060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.622734, 32.465351, 26.196987>,  <40.457478, 32.632103, 26.147144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.622734, 32.465351, 26.196987>,  <40.898159, 32.187431, 26.280060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622734, 32.465351, 26.196987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142689, 0.150977, 0.978185,
		0.710998, 0.703178, -0.004817,
		-0.688565, 0.694800, -0.207680,
		40.416164, 32.673790, 26.134684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983715, 32.773361, 26.776184>,  <40.898159, 32.187431, 26.280060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983715, 32.773361, 26.776184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.614223, 32.819408, 26.630051>,  <40.392529, 32.847034, 26.542370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.614223, 32.819408, 26.630051>,  <40.983715, 32.773361, 26.776184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614223, 32.819408, 26.630051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367509, 0.002497, 0.930017,
		0.107971, 0.993349, 0.039999,
		-0.923731, 0.115115, -0.365335,
		40.337105, 32.853943, 26.520451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.858009, 37.454208, 21.008575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.479618, 37.497993, 20.886503>,  <42.252583, 37.524265, 20.813261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.479618, 37.497993, 20.886503>,  <42.858009, 37.454208, 21.008575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479618, 37.497993, 20.886503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290394, -0.132516, -0.947687,
		-0.144190, -0.985116, 0.093567,
		-0.945981, 0.109475, -0.305180,
		42.195824, 37.530834, 20.794950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775257, 36.851448, 20.459057>,  <42.858009, 37.454208, 21.008575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775257, 36.851448, 20.459057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.481796, 37.121624, 20.429281>,  <42.305721, 37.283730, 20.411415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.481796, 37.121624, 20.429281>,  <42.775257, 36.851448, 20.459057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481796, 37.121624, 20.429281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148022, 0.051936, -0.987619,
		-0.663208, -0.735587, -0.138083,
		-0.733651, 0.675436, -0.074439,
		42.261700, 37.324253, 20.406950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416496, 36.690632, 19.943890>,  <42.775257, 36.851448, 20.459057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416496, 36.690632, 19.943890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.277752, 37.063972, 19.980844>,  <42.194504, 37.287979, 20.003017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.277752, 37.063972, 19.980844>,  <42.416496, 36.690632, 19.943890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277752, 37.063972, 19.980844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025553, 0.107872, -0.993836,
		-0.937568, -0.342363, -0.061267,
		-0.346861, 0.933355, 0.092389,
		42.173695, 37.343979, 20.008562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787647, 36.782326, 19.591103>,  <42.416496, 36.690632, 19.943890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787647, 36.782326, 19.591103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.953583, 37.146278, 19.593130>,  <42.053143, 37.364651, 19.594347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.953583, 37.146278, 19.593130>,  <41.787647, 36.782326, 19.591103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953583, 37.146278, 19.593130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021062, -0.004031, -0.999770,
		-0.909653, 0.414847, -0.020836,
		0.414836, 0.909882, 0.005071,
		42.078033, 37.419243, 19.594652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368866, 37.124989, 19.089756>,  <41.787647, 36.782326, 19.591103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368866, 37.124989, 19.089756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.706074, 37.329651, 19.156130>,  <41.908398, 37.452446, 19.195953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.706074, 37.329651, 19.156130>,  <41.368866, 37.124989, 19.089756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706074, 37.329651, 19.156130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158335, 0.058770, -0.985635,
		-0.514055, 0.857180, -0.031469,
		0.843017, 0.511653, 0.165933,
		41.958981, 37.483147, 19.205910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344341, 37.586178, 18.592798>,  <41.368866, 37.124989, 19.089756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344341, 37.586178, 18.592798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.726826, 37.562122, 18.707367>,  <41.956318, 37.547691, 18.776108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.726826, 37.562122, 18.707367>,  <41.344341, 37.586178, 18.592798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726826, 37.562122, 18.707367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291008, 0.091320, -0.952352,
		0.031116, 0.994004, 0.104822,
		0.956215, -0.060137, 0.286421,
		42.013691, 37.544083, 18.793293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642685, 37.990620, 18.115564>,  <41.344341, 37.586178, 18.592798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642685, 37.990620, 18.115564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.941673, 37.785534, 18.284515>,  <42.121067, 37.662483, 18.385887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.941673, 37.785534, 18.284515>,  <41.642685, 37.990620, 18.115564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941673, 37.785534, 18.284515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435317, -0.102222, -0.894455,
		0.501777, 0.852452, 0.146785,
		0.747475, -0.512715, 0.422380,
		42.165916, 37.631718, 18.411230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152317, 38.258301, 17.819757>,  <41.642685, 37.990620, 18.115564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152317, 38.258301, 17.819757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.302551, 37.910179, 17.947203>,  <42.392693, 37.701305, 18.023670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.302551, 37.910179, 17.947203>,  <42.152317, 38.258301, 17.819757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302551, 37.910179, 17.947203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559836, -0.060925, -0.826360,
		0.738594, 0.488738, 0.464344,
		0.375583, -0.870301, 0.318611,
		42.415226, 37.649090, 18.042786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817898, 38.239510, 17.660864>,  <42.152317, 38.258301, 17.819757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817898, 38.239510, 17.660864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.724491, 37.853176, 17.705824>,  <42.668449, 37.621376, 17.732800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.724491, 37.853176, 17.705824>,  <42.817898, 38.239510, 17.660864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724491, 37.853176, 17.705824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400430, -0.200857, -0.894043,
		0.886074, -0.163764, 0.433652,
		-0.233514, -0.965835, 0.112398,
		42.654438, 37.563427, 17.739544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390373, 37.812454, 17.697102>,  <42.817898, 38.239510, 17.660864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390373, 37.812454, 17.697102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.107075, 37.569023, 17.553988>,  <42.937096, 37.422962, 17.468119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.107075, 37.569023, 17.553988>,  <43.390373, 37.812454, 17.697102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107075, 37.569023, 17.553988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596507, -0.244832, -0.764354,
		0.377573, -0.754776, 0.536425,
		-0.708250, -0.608580, -0.357787,
		42.894600, 37.386448, 17.446651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748619, 37.297897, 17.217628>,  <43.390373, 37.812454, 17.697102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748619, 37.297897, 17.217628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.369843, 37.217117, 17.117609>,  <43.142578, 37.168648, 17.057596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.369843, 37.217117, 17.117609>,  <43.748619, 37.297897, 17.217628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369843, 37.217117, 17.117609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312865, -0.400851, -0.861066,
		0.073664, -0.893607, 0.442765,
		-0.946937, -0.201955, -0.250050,
		43.085762, 37.156532, 17.042595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652725, 36.515755, 17.089762>,  <43.748619, 37.297897, 17.217628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652725, 36.515755, 17.089762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.374802, 36.740551, 16.910248>,  <43.208050, 36.875427, 16.802540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.374802, 36.740551, 16.910248>,  <43.652725, 36.515755, 17.089762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374802, 36.740551, 16.910248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200279, -0.448134, -0.871243,
		-0.690749, -0.695226, 0.198811,
		-0.694806, 0.561992, -0.448787,
		43.166359, 36.909149, 16.775612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965042, 36.260269, 16.723053>,  <43.652725, 36.515755, 17.089762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965042, 36.260269, 16.723053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.130112, 36.557796, 16.512743>,  <43.229153, 36.736313, 16.386557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.130112, 36.557796, 16.512743>,  <42.965042, 36.260269, 16.723053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130112, 36.557796, 16.512743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168890, -0.629690, -0.758265,
		-0.895083, 0.224120, -0.385481,
		0.412676, 0.743815, -0.525774,
		43.253914, 36.780941, 16.355011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331116, 35.583366, 16.659704>,  <42.965042, 36.260269, 16.723053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331116, 35.583366, 16.659704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.472008, 35.231087, 16.533020>,  <43.556545, 35.019718, 16.457008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.472008, 35.231087, 16.533020>,  <43.331116, 35.583366, 16.659704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472008, 35.231087, 16.533020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133081, -0.382092, 0.914492,
		-0.926402, -0.279967, -0.251790,
		0.352234, -0.880695, -0.316712,
		43.577679, 34.966877, 16.438005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962517, 34.995403, 16.933886>,  <43.331116, 35.583366, 16.659704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.962517, 34.995403, 16.933886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.315601, 34.825214, 16.854095>,  <43.527451, 34.723099, 16.806221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.315601, 34.825214, 16.854095>,  <42.962517, 34.995403, 16.933886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315601, 34.825214, 16.854095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025579, -0.380355, 0.924487,
		-0.469219, -0.821157, -0.324860,
		0.882711, -0.425477, -0.199474,
		43.580414, 34.697571, 16.794254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904610, 34.279224, 17.141392>,  <42.962517, 34.995403, 16.933886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904610, 34.279224, 17.141392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.299706, 34.341354, 17.147610>,  <43.536762, 34.378632, 17.151340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.299706, 34.341354, 17.147610>,  <42.904610, 34.279224, 17.141392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299706, 34.341354, 17.147610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057331, -0.453589, 0.889365,
		0.145193, -0.877571, -0.456934,
		0.987741, 0.155326, 0.015546,
		43.596027, 34.387951, 17.152273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120647, 33.621826, 17.203960>,  <42.904610, 34.279224, 17.141392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120647, 33.621826, 17.203960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.449280, 33.834141, 17.287169>,  <43.646458, 33.961529, 17.337093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.449280, 33.834141, 17.287169>,  <43.120647, 33.621826, 17.203960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449280, 33.834141, 17.287169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123808, -0.522302, 0.843725,
		0.556487, -0.667433, -0.494829,
		0.821580, 0.530786, 0.208021,
		43.695755, 33.993378, 17.349575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631943, 33.169075, 17.403271>,  <43.120647, 33.621826, 17.203960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631943, 33.169075, 17.403271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.715969, 33.521667, 17.572439>,  <43.766384, 33.733223, 17.673941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.715969, 33.521667, 17.572439>,  <43.631943, 33.169075, 17.403271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715969, 33.521667, 17.572439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005002, -0.431600, 0.902051,
		0.977675, -0.191605, -0.086255,
		0.210065, 0.881481, 0.422922,
		43.778988, 33.786114, 17.699316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201447, 33.028591, 17.800936>,  <43.631943, 33.169075, 17.403271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201447, 33.028591, 17.800936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.041336, 33.357433, 17.962889>,  <43.945271, 33.554737, 18.060061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.041336, 33.357433, 17.962889>,  <44.201447, 33.028591, 17.800936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.041336, 33.357433, 17.962889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017311, -0.434959, 0.900284,
		0.916232, 0.367370, 0.159871,
		-0.400275, 0.822101, 0.404883,
		43.921253, 33.604065, 18.084354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.577057, 33.078392, 18.420076>,  <44.201447, 33.028591, 17.800936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.577057, 33.078392, 18.420076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.234417, 33.282551, 18.450361>,  <44.028831, 33.405045, 18.468533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.234417, 33.282551, 18.450361>,  <44.577057, 33.078392, 18.420076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.234417, 33.282551, 18.450361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176827, -0.428232, 0.886200,
		0.484736, 0.745730, 0.457075,
		-0.856600, 0.510396, 0.075714,
		43.977436, 33.435669, 18.473076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.682384, 33.228214, 19.072735>,  <44.577057, 33.078392, 18.420076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.682384, 33.228214, 19.072735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.296570, 33.264610, 18.973633>,  <44.065079, 33.286449, 18.914171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.296570, 33.264610, 18.973633>,  <44.682384, 33.228214, 19.072735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296570, 33.264610, 18.973633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262417, -0.230019, 0.937139,
		0.028281, 0.968923, 0.245739,
		-0.964540, 0.090989, -0.247757,
		44.007206, 33.291908, 18.899305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362179, 33.526669, 19.597675>,  <44.682384, 33.228214, 19.072735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362179, 33.526669, 19.597675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.015297, 33.384163, 19.458519>,  <43.807167, 33.298660, 19.375025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.015297, 33.384163, 19.458519>,  <44.362179, 33.526669, 19.597675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.015297, 33.384163, 19.458519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299247, -0.185546, 0.935961,
		-0.397999, 0.915778, 0.054296,
		-0.867207, -0.356263, -0.347891,
		43.755135, 33.277283, 19.354151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875156, 33.588207, 20.281666>,  <44.362179, 33.526669, 19.597675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875156, 33.588207, 20.281666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.649364, 33.394238, 20.014469>,  <43.513889, 33.277855, 19.854151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.649364, 33.394238, 20.014469>,  <43.875156, 33.588207, 20.281666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649364, 33.394238, 20.014469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654115, -0.230823, 0.720315,
		-0.503485, 0.843546, -0.186901,
		-0.564478, -0.484923, -0.667993,
		43.480022, 33.248760, 19.814072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185596, 33.885067, 20.337614>,  <43.875156, 33.588207, 20.281666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185596, 33.885067, 20.337614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.130470, 33.528187, 20.165571>,  <43.097393, 33.314060, 20.062346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.130470, 33.528187, 20.165571>,  <43.185596, 33.885067, 20.337614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130470, 33.528187, 20.165571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678120, -0.231516, 0.697534,
		-0.721914, 0.387797, -0.573109,
		-0.137818, -0.892196, -0.430108,
		43.089127, 33.260529, 20.036539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385143, 33.732815, 20.270691>,  <43.185596, 33.885067, 20.337614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385143, 33.732815, 20.270691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.585022, 33.386635, 20.285103>,  <42.704948, 33.178928, 20.293751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.585022, 33.386635, 20.285103>,  <42.385143, 33.732815, 20.270691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585022, 33.386635, 20.285103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609563, -0.321789, 0.724489,
		-0.615415, -0.383988, -0.688344,
		0.499697, -0.865451, 0.036031,
		42.734932, 33.126999, 20.295912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947338, 33.284435, 20.378641>,  <42.385143, 33.732815, 20.270691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947338, 33.284435, 20.378641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.270374, 33.078819, 20.494268>,  <42.464195, 32.955452, 20.563644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.270374, 33.078819, 20.494268>,  <41.947338, 33.284435, 20.378641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270374, 33.078819, 20.494268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485186, -0.300487, 0.821159,
		-0.335250, -0.803411, -0.492076,
		0.807590, -0.514041, 0.289065,
		42.512653, 32.924606, 20.580988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694233, 32.613022, 20.481630>,  <41.947338, 33.284435, 20.378641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694233, 32.613022, 20.481630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.020275, 32.708012, 20.692989>,  <42.215900, 32.765007, 20.819805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.020275, 32.708012, 20.692989>,  <41.694233, 32.613022, 20.481630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020275, 32.708012, 20.692989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425610, -0.373304, 0.824318,
		0.393007, -0.896800, -0.203212,
		0.815109, 0.237474, 0.528398,
		42.264809, 32.779255, 20.851509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743996, 31.983528, 20.866375>,  <41.694233, 32.613022, 20.481630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743996, 31.983528, 20.866375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.963219, 32.268784, 21.041220>,  <42.094753, 32.439938, 21.146126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.963219, 32.268784, 21.041220>,  <41.743996, 31.983528, 20.866375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963219, 32.268784, 21.041220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293738, -0.325208, 0.898865,
		0.783168, -0.621024, 0.031245,
		0.548056, 0.713140, 0.437111,
		42.127636, 32.482727, 21.172354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537788, 31.411367, 21.204576>,  <41.743996, 31.983528, 20.866375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537788, 31.411367, 21.204576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.175598, 31.383486, 21.037123>,  <40.958282, 31.366756, 20.936651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.175598, 31.383486, 21.037123>,  <41.537788, 31.411367, 21.204576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175598, 31.383486, 21.037123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395217, 0.220953, -0.891618,
		0.154646, -0.972791, -0.172521,
		-0.905476, -0.069702, -0.418633,
		40.903954, 31.362576, 20.911533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592880, 30.979675, 20.588167>,  <41.537788, 31.411367, 21.204576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592880, 30.979675, 20.588167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.258114, 31.188448, 20.522247>,  <41.057255, 31.313711, 20.482695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.258114, 31.188448, 20.522247>,  <41.592880, 30.979675, 20.588167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258114, 31.188448, 20.522247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323219, 0.228305, -0.918371,
		-0.441705, -0.821865, -0.359771,
		-0.836915, 0.521934, -0.164799,
		41.007038, 31.345028, 20.472807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430618, 30.764578, 19.915998>,  <41.592880, 30.979675, 20.588167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430618, 30.764578, 19.915998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.215263, 31.101152, 19.934416>,  <41.086048, 31.303097, 19.945467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.215263, 31.101152, 19.934416>,  <41.430618, 30.764578, 19.915998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215263, 31.101152, 19.934416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283918, 0.232567, -0.930217,
		-0.793427, -0.487746, -0.364111,
		-0.538390, 0.841437, 0.046045,
		41.053745, 31.353584, 19.948229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973351, 30.704664, 19.438192>,  <41.430618, 30.764578, 19.915998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973351, 30.704664, 19.438192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.992577, 31.100613, 19.491621>,  <41.004112, 31.338182, 19.523678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.992577, 31.100613, 19.491621>,  <40.973351, 30.704664, 19.438192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992577, 31.100613, 19.491621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152495, 0.124887, -0.980382,
		-0.987135, 0.067491, -0.144948,
		0.048064, 0.989873, 0.133572,
		41.006996, 31.397575, 19.531693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551121, 31.078285, 18.842878>,  <40.973351, 30.704664, 19.438192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551121, 31.078285, 18.842878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.769424, 31.379696, 18.989494>,  <40.900406, 31.560541, 19.077463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.769424, 31.379696, 18.989494>,  <40.551121, 31.078285, 18.842878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769424, 31.379696, 18.989494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099282, 0.376196, -0.921205,
		-0.832042, 0.539144, 0.130499,
		0.545755, 0.753525, 0.366538,
		40.933151, 31.605753, 19.099457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409515, 31.691309, 18.484612>,  <40.551121, 31.078285, 18.842878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409515, 31.691309, 18.484612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.744564, 31.814251, 18.665241>,  <40.945595, 31.888016, 18.773619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.744564, 31.814251, 18.665241>,  <40.409515, 31.691309, 18.484612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744564, 31.814251, 18.665241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306265, 0.420279, -0.854147,
		-0.452311, 0.853756, 0.257905,
		0.837625, 0.307353, 0.451573,
		40.995853, 31.906456, 18.800713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561180, 32.426582, 18.281805>,  <40.409515, 31.691309, 18.484612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561180, 32.426582, 18.281805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.909733, 32.263763, 18.391348>,  <41.118866, 32.166073, 18.457073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.909733, 32.263763, 18.391348>,  <40.561180, 32.426582, 18.281805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909733, 32.263763, 18.391348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403924, 0.278444, -0.871387,
		0.278444, 0.869931, 0.407049,
		0.871387, -0.407049, 0.273855,
		41.171150, 32.141647, 18.473505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214550, 33.130756, 18.187742>,  <40.561180, 32.426582, 18.281805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214550, 33.130756, 18.187742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.932877, 32.992790, 17.939499>,  <39.763874, 32.910011, 17.790552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.932877, 32.992790, 17.939499>,  <40.214550, 33.130756, 18.187742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932877, 32.992790, 17.939499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518441, -0.347431, 0.781352,
		-0.485121, 0.871965, 0.065836,
		-0.704185, -0.344918, -0.620608,
		39.721622, 32.889317, 17.753317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588291, 33.430363, 18.421288>,  <40.214550, 33.130756, 18.187742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588291, 33.430363, 18.421288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.493084, 33.092480, 18.229528>,  <39.435959, 32.889751, 18.114473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.493084, 33.092480, 18.229528>,  <39.588291, 33.430363, 18.421288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493084, 33.092480, 18.229528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603256, -0.258266, 0.754573,
		-0.761204, 0.468800, -0.448102,
		-0.238014, -0.844704, -0.479400,
		39.421680, 32.839069, 18.085709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860207, 33.441120, 18.446547>,  <39.588291, 33.430363, 18.421288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860207, 33.441120, 18.446547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986378, 33.075661, 18.343981>,  <39.062080, 32.856384, 18.282442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986378, 33.075661, 18.343981>,  <38.860207, 33.441120, 18.446547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986378, 33.075661, 18.343981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580533, -0.399538, 0.709472,
		-0.750656, -0.074931, -0.656430,
		0.315430, -0.913649, -0.256415,
		39.081005, 32.801567, 18.267056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278011, 33.084259, 18.484972>,  <38.860207, 33.441120, 18.446547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278011, 33.084259, 18.484972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.559841, 32.800411, 18.486156>,  <38.728939, 32.630104, 18.486866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.559841, 32.800411, 18.486156>,  <38.278011, 33.084259, 18.484972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559841, 32.800411, 18.486156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505034, -0.498507, 0.704579,
		-0.498507, -0.497927, -0.709619,
		-0.704579, 0.709619, -0.002961,
		38.771214, 32.587524, 18.487045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949593, 32.503273, 18.510593>,  <38.278011, 33.084259, 18.484972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949593, 32.503273, 18.510593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.314342, 32.410992, 18.646399>,  <38.533192, 32.355625, 18.727882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.314342, 32.410992, 18.646399>,  <37.949593, 32.503273, 18.510593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314342, 32.410992, 18.646399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410441, -0.523449, 0.746685,
		0.005457, -0.820231, -0.572007,
		0.911871, -0.230700, 0.339512,
		38.587902, 32.341782, 18.748253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761715, 31.912830, 18.857681>,  <37.949593, 32.503273, 18.510593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761715, 31.912830, 18.857681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.116379, 32.025829, 19.004126>,  <38.329178, 32.093628, 19.091991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.116379, 32.025829, 19.004126>,  <37.761715, 31.912830, 18.857681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116379, 32.025829, 19.004126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239273, -0.397220, 0.885982,
		0.395712, -0.873162, -0.284604,
		0.886657, 0.282496, 0.366109,
		38.382378, 32.110577, 19.113958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111210, 31.310318, 19.112703>,  <37.761715, 31.912830, 18.857681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111210, 31.310318, 19.112703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.253254, 31.643915, 19.281631>,  <38.338482, 31.844074, 19.382988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.253254, 31.643915, 19.281631>,  <38.111210, 31.310318, 19.112703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253254, 31.643915, 19.281631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308761, -0.321772, 0.895058,
		0.882363, -0.448238, 0.143241,
		0.355108, 0.833993, 0.422319,
		38.359787, 31.894114, 19.408327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.025978, 37.627468, 15.861876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.413616, 37.559097, 15.933015>,  <40.646198, 37.518074, 15.975698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.413616, 37.559097, 15.933015>,  <40.025978, 37.627468, 15.861876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413616, 37.559097, 15.933015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113513, 0.331083, 0.936749,
		-0.218999, -0.927991, 0.301450,
		0.969100, -0.170928, 0.177846,
		40.704346, 37.507820, 15.986368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079830, 37.124035, 16.346882>,  <40.025978, 37.627468, 15.861876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079830, 37.124035, 16.346882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.388844, 37.377277, 16.366364>,  <40.574253, 37.529221, 16.378054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.388844, 37.377277, 16.366364>,  <40.079830, 37.124035, 16.346882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388844, 37.377277, 16.366364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329219, 0.333770, 0.883296,
		0.542963, -0.698410, 0.466278,
		0.772532, 0.633105, 0.048705,
		40.620602, 37.567207, 16.380976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391430, 37.088390, 17.010859>,  <40.079830, 37.124035, 16.346882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391430, 37.088390, 17.010859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.469749, 37.453144, 16.866560>,  <40.516739, 37.671997, 16.779980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.469749, 37.453144, 16.866560>,  <40.391430, 37.088390, 17.010859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469749, 37.453144, 16.866560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406036, 0.410238, 0.816603,
		0.892636, -0.013409, 0.450578,
		0.195794, 0.911880, -0.360748,
		40.528488, 37.726707, 16.758335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604622, 37.376968, 17.522417>,  <40.391430, 37.088390, 17.010859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604622, 37.376968, 17.522417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.509171, 37.705887, 17.315773>,  <40.451900, 37.903236, 17.191788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.509171, 37.705887, 17.315773>,  <40.604622, 37.376968, 17.522417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509171, 37.705887, 17.315773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411970, 0.396017, 0.820641,
		0.879397, 0.408653, 0.244262,
		-0.238625, 0.822298, -0.516609,
		40.437584, 37.952576, 17.160789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760128, 37.932869, 17.993546>,  <40.604622, 37.376968, 17.522417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760128, 37.932869, 17.993546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.537773, 38.113003, 17.714064>,  <40.404362, 38.221081, 17.546373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.537773, 38.113003, 17.714064>,  <40.760128, 37.932869, 17.993546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537773, 38.113003, 17.714064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530823, 0.454537, 0.715279,
		0.639700, 0.768504, -0.013624,
		-0.555887, 0.450332, -0.698707,
		40.371006, 38.248104, 17.504452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713387, 38.700806, 18.062553>,  <40.760128, 37.932869, 17.993546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713387, 38.700806, 18.062553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.384750, 38.628204, 17.846386>,  <40.187569, 38.584644, 17.716686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.384750, 38.628204, 17.846386>,  <40.713387, 38.700806, 18.062553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384750, 38.628204, 17.846386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549584, 0.504094, 0.666217,
		0.151499, 0.844360, -0.513910,
		-0.821587, -0.181506, -0.540417,
		40.138275, 38.573753, 17.684261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345722, 39.388622, 18.059183>,  <40.713387, 38.700806, 18.062553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345722, 39.388622, 18.059183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.071583, 39.114620, 17.960339>,  <39.907101, 38.950218, 17.901031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.071583, 39.114620, 17.960339>,  <40.345722, 39.388622, 18.059183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071583, 39.114620, 17.960339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660165, 0.441203, 0.607882,
		-0.307379, 0.579744, -0.754596,
		-0.685346, -0.685008, -0.247110,
		39.865978, 38.909119, 17.886206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755733, 39.706791, 17.967133>,  <40.345722, 39.388622, 18.059183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755733, 39.706791, 17.967133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.605915, 39.340919, 18.027891>,  <39.516026, 39.121395, 18.064346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.605915, 39.340919, 18.027891>,  <39.755733, 39.706791, 17.967133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605915, 39.340919, 18.027891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603775, 0.364925, 0.708721,
		-0.703685, 0.173736, -0.688943,
		-0.374543, -0.914683, 0.151895,
		39.493553, 39.066513, 18.073460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048428, 39.688110, 17.800167>,  <39.755733, 39.706791, 17.967133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048428, 39.688110, 17.800167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.120178, 39.377831, 18.042198>,  <39.163227, 39.191662, 18.187416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.120178, 39.377831, 18.042198>,  <39.048428, 39.688110, 17.800167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120178, 39.377831, 18.042198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745179, 0.294423, 0.598350,
		-0.642287, -0.558221, -0.525221,
		0.179375, -0.775696, 0.605078,
		39.173992, 39.145123, 18.223722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352867, 39.542160, 18.149801>,  <39.048428, 39.688110, 17.800167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352867, 39.542160, 18.149801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.610001, 39.330055, 18.370922>,  <38.764282, 39.202793, 18.503593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.610001, 39.330055, 18.370922>,  <38.352867, 39.542160, 18.149801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610001, 39.330055, 18.370922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539910, 0.198276, 0.818036,
		-0.543379, -0.824325, -0.158834,
		0.642834, -0.530260, 0.552801,
		38.802853, 39.170979, 18.536762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909592, 39.084621, 18.611036>,  <38.352867, 39.542160, 18.149801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909592, 39.084621, 18.611036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.258400, 39.077435, 18.806690>,  <38.467686, 39.073124, 18.924082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.258400, 39.077435, 18.806690>,  <37.909592, 39.084621, 18.611036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258400, 39.077435, 18.806690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489350, -0.010522, 0.872024,
		-0.010522, -0.999783, -0.017968,
		-0.872024, 0.017968, -0.489134,
		38.520008, 39.072044, 18.953430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765141, 38.688423, 19.100502>,  <37.909592, 39.084621, 18.611036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765141, 38.688423, 19.100502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.081223, 38.887611, 19.243389>,  <38.270870, 39.007126, 19.329121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.081223, 38.887611, 19.243389>,  <37.765141, 38.688423, 19.100502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081223, 38.887611, 19.243389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372289, -0.072957, 0.925245,
		0.486810, -0.864117, 0.127740,
		0.790200, 0.497975, 0.357217,
		38.318283, 39.037003, 19.350554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853252, 37.946827, 19.081079>,  <37.765141, 38.688423, 19.100502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853252, 37.946827, 19.081079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.554142, 37.751358, 18.901291>,  <37.374676, 37.634075, 18.793417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.554142, 37.751358, 18.901291>,  <37.853252, 37.946827, 19.081079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554142, 37.751358, 18.901291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479768, 0.070267, -0.874577,
		0.458963, -0.869634, 0.181904,
		-0.747780, -0.488670, -0.449473,
		37.329807, 37.604755, 18.766449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153534, 37.338734, 18.812145>,  <37.853252, 37.946827, 19.081079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153534, 37.338734, 18.812145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.831673, 37.406094, 18.584400>,  <37.638557, 37.446510, 18.447754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.831673, 37.406094, 18.584400>,  <38.153534, 37.338734, 18.812145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831673, 37.406094, 18.584400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540214, -0.190261, -0.819737,
		-0.246375, -0.967181, 0.062119,
		-0.804654, 0.168405, -0.569361,
		37.590275, 37.456615, 18.413591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072445, 36.676941, 18.385000>,  <38.153534, 37.338734, 18.812145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072445, 36.676941, 18.385000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.863136, 36.959507, 18.194349>,  <37.737553, 37.129047, 18.079960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.863136, 36.959507, 18.194349>,  <38.072445, 36.676941, 18.385000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863136, 36.959507, 18.194349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428058, -0.265738, -0.863800,
		-0.736856, -0.656022, -0.163333,
		-0.523268, 0.706412, -0.476626,
		37.706154, 37.171429, 18.051361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653580, 36.208672, 17.900126>,  <38.072445, 36.676941, 18.385000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653580, 36.208672, 17.900126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.659481, 36.583313, 17.760090>,  <37.663021, 36.808098, 17.676069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.659481, 36.583313, 17.760090>,  <37.653580, 36.208672, 17.900126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659481, 36.583313, 17.760090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024418, -0.349686, -0.936549,
		-0.999593, 0.022362, 0.017712,
		0.014749, 0.936600, -0.350090,
		37.663906, 36.864292, 17.655064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091919, 36.302898, 17.408245>,  <37.653580, 36.208672, 17.900126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091919, 36.302898, 17.408245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.374683, 36.574047, 17.327482>,  <37.544342, 36.736736, 17.279024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.374683, 36.574047, 17.327482>,  <37.091919, 36.302898, 17.408245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374683, 36.574047, 17.327482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049829, -0.237025, -0.970225,
		-0.705542, 0.695926, -0.133778,
		0.706914, 0.677869, -0.201908,
		37.586758, 36.777409, 17.266911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038441, 36.468018, 16.727760>,  <37.091919, 36.302898, 17.408245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038441, 36.468018, 16.727760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.410221, 36.603157, 16.787064>,  <37.633289, 36.684242, 16.822645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.410221, 36.603157, 16.787064>,  <37.038441, 36.468018, 16.727760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410221, 36.603157, 16.787064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219231, -0.182532, -0.958446,
		-0.296752, 0.923330, -0.243722,
		0.929449, 0.337852, 0.148256,
		37.689056, 36.704514, 16.831541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222092, 36.850208, 16.154036>,  <37.038441, 36.468018, 16.727760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222092, 36.850208, 16.154036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.584602, 36.745049, 16.286430>,  <37.802109, 36.681953, 16.365868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.584602, 36.745049, 16.286430>,  <37.222092, 36.850208, 16.154036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584602, 36.745049, 16.286430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317943, -0.091995, -0.943636,
		0.278534, 0.960426, 0.000216,
		0.906273, -0.262903, 0.330985,
		37.856483, 36.666176, 16.385725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768219, 37.191311, 15.730212>,  <37.222092, 36.850208, 16.154036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768219, 37.191311, 15.730212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.006168, 36.924355, 15.909416>,  <38.148937, 36.764179, 16.016939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.006168, 36.924355, 15.909416>,  <37.768219, 37.191311, 15.730212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006168, 36.924355, 15.909416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468801, -0.164689, -0.867815,
		0.652954, 0.726270, 0.214903,
		0.594876, -0.667390, 0.448010,
		38.184631, 36.724136, 16.043819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449726, 37.361118, 15.525868>,  <37.768219, 37.191311, 15.730212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449726, 37.361118, 15.525868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.449879, 36.982094, 15.653701>,  <38.449970, 36.754681, 15.730400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.449879, 36.982094, 15.653701>,  <38.449726, 37.361118, 15.525868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449879, 36.982094, 15.653701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462532, -0.283176, -0.840164,
		0.886602, 0.148134, 0.438169,
		0.000378, -0.947559, 0.319581,
		38.449993, 36.697826, 15.749576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203304, 37.213989, 15.611104>,  <38.449726, 37.361118, 15.525868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203304, 37.213989, 15.611104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.997696, 36.881737, 15.525469>,  <38.874332, 36.682384, 15.474088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.997696, 36.881737, 15.525469>,  <39.203304, 37.213989, 15.611104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997696, 36.881737, 15.525469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738882, -0.301985, -0.602377,
		0.435703, -0.467819, 0.768966,
		-0.514019, -0.830633, -0.214088,
		38.843491, 36.632545, 15.461243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689728, 36.771381, 15.447041>,  <39.203304, 37.213989, 15.611104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689728, 36.771381, 15.447041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.364006, 36.575787, 15.321946>,  <39.168575, 36.458427, 15.246889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.364006, 36.575787, 15.321946>,  <39.689728, 36.771381, 15.447041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364006, 36.575787, 15.321946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524327, -0.388553, -0.757699,
		0.248993, -0.780971, 0.572789,
		-0.814300, -0.488990, -0.312737,
		39.119717, 36.429089, 15.228125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976498, 36.147316, 15.165543>,  <39.689728, 36.771381, 15.447041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976498, 36.147316, 15.165543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.602795, 36.138885, 15.023154>,  <39.378574, 36.133827, 14.937721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.602795, 36.138885, 15.023154>,  <39.976498, 36.147316, 15.165543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602795, 36.138885, 15.023154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328391, -0.439960, -0.835820,
		-0.138994, -0.897770, 0.417959,
		-0.934259, -0.021080, -0.355971,
		39.322517, 36.132561, 14.916363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882027, 35.526718, 14.919702>,  <39.976498, 36.147316, 15.165543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882027, 35.526718, 14.919702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.644020, 35.781704, 14.723907>,  <39.501217, 35.934696, 14.606431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.644020, 35.781704, 14.723907>,  <39.882027, 35.526718, 14.919702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644020, 35.781704, 14.723907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450938, -0.239349, -0.859865,
		-0.665290, -0.732361, -0.145039,
		-0.595017, 0.637463, -0.489486,
		39.465515, 35.972942, 14.577062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006176, 34.804993, 14.933057>,  <39.882027, 35.526718, 14.919702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006176, 34.804993, 14.933057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.035496, 34.417458, 14.838422>,  <40.053085, 34.184937, 14.781641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.035496, 34.417458, 14.838422>,  <40.006176, 34.804993, 14.933057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035496, 34.417458, 14.838422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270474, -0.247645, 0.930331,
		-0.959933, -0.004199, -0.280198,
		0.073296, -0.968842, -0.236587,
		40.057484, 34.126804, 14.767446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371689, 34.378120, 15.182549>,  <40.006176, 34.804993, 14.933057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371689, 34.378120, 15.182549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.661232, 34.103752, 15.152769>,  <39.834957, 33.939133, 15.134902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.661232, 34.103752, 15.152769>,  <39.371689, 34.378120, 15.182549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661232, 34.103752, 15.152769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283885, -0.394444, 0.873970,
		-0.628840, -0.611495, -0.480244,
		0.723857, -0.685921, -0.074448,
		39.878387, 33.897976, 15.130435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089142, 33.693069, 15.384395>,  <39.371689, 34.378120, 15.182549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089142, 33.693069, 15.384395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.481705, 33.621346, 15.411787>,  <39.717243, 33.578312, 15.428223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.481705, 33.621346, 15.411787>,  <39.089142, 33.693069, 15.384395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481705, 33.621346, 15.411787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155591, -0.534268, 0.830873,
		-0.112395, -0.826079, -0.552233,
		0.981407, -0.179308, 0.068482,
		39.776127, 33.567554, 15.432331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238548, 32.963058, 15.548076>,  <39.089142, 33.693069, 15.384395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238548, 32.963058, 15.548076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.545708, 33.186260, 15.673902>,  <39.730003, 33.320183, 15.749397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.545708, 33.186260, 15.673902>,  <39.238548, 32.963058, 15.548076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545708, 33.186260, 15.673902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023316, -0.515098, 0.856814,
		0.640142, -0.650616, -0.408556,
		0.767903, 0.558009, 0.314566,
		39.776077, 33.353664, 15.768271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676857, 32.484825, 15.912114>,  <39.238548, 32.963058, 15.548076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676857, 32.484825, 15.912114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.830532, 32.835747, 16.027170>,  <39.922737, 33.046299, 16.096205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.830532, 32.835747, 16.027170>,  <39.676857, 32.484825, 15.912114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830532, 32.835747, 16.027170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247396, -0.397979, 0.883407,
		0.889494, -0.268229, -0.369938,
		0.384183, 0.877306, 0.287641,
		39.945786, 33.098938, 16.113462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386768, 32.354717, 16.250900>,  <39.676857, 32.484825, 15.912114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386768, 32.354717, 16.250900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.204636, 32.686230, 16.381006>,  <40.095356, 32.885136, 16.459070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.204636, 32.686230, 16.381006>,  <40.386768, 32.354717, 16.250900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204636, 32.686230, 16.381006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012489, -0.359351, 0.933119,
		0.890232, 0.428945, 0.153275,
		-0.455336, 0.828778, 0.325263,
		40.068035, 32.934864, 16.478584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543007, 32.407051, 17.011959>,  <40.386768, 32.354717, 16.250900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543007, 32.407051, 17.011959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.281261, 32.702625, 16.947729>,  <40.124214, 32.879971, 16.909191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.281261, 32.702625, 16.947729>,  <40.543007, 32.407051, 17.011959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281261, 32.702625, 16.947729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318190, -0.076431, 0.944941,
		0.685981, 0.669424, 0.285136,
		-0.654359, 0.738939, -0.160574,
		40.084953, 32.924309, 16.899557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648865, 32.772045, 17.536680>,  <40.543007, 32.407051, 17.011959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648865, 32.772045, 17.536680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.273731, 32.834328, 17.412605>,  <40.048649, 32.871696, 17.338160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.273731, 32.834328, 17.412605>,  <40.648865, 32.772045, 17.536680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273731, 32.834328, 17.412605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343362, -0.285850, 0.894646,
		0.050635, 0.945540, 0.321545,
		-0.937837, 0.155706, -0.310188,
		39.992378, 32.881039, 17.319550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980095, 33.006172, 18.243872>,  <40.648865, 32.772045, 17.536680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980095, 33.006172, 18.243872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.188721, 32.667492, 18.201771>,  <41.313896, 32.464283, 18.176510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.188721, 32.667492, 18.201771>,  <40.980095, 33.006172, 18.243872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188721, 32.667492, 18.201771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205658, 0.244479, -0.947594,
		0.828057, 0.472584, 0.301641,
		0.521562, -0.846696, -0.105252,
		41.345188, 32.413483, 18.170195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572762, 33.190468, 17.976305>,  <40.980095, 33.006172, 18.243872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572762, 33.190468, 17.976305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.603111, 32.800434, 17.892929>,  <41.621319, 32.566414, 17.842903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.603111, 32.800434, 17.892929>,  <41.572762, 33.190468, 17.976305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603111, 32.800434, 17.892929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400765, 0.221237, -0.889068,
		0.913034, -0.016082, 0.407567,
		0.075871, -0.975087, -0.208442,
		41.625874, 32.507908, 17.830397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277946, 33.063919, 17.700525>,  <41.572762, 33.190468, 17.976305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277946, 33.063919, 17.700525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.044453, 32.763401, 17.577358>,  <41.904358, 32.583092, 17.503458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.044453, 32.763401, 17.577358>,  <42.277946, 33.063919, 17.700525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044453, 32.763401, 17.577358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476263, -0.009682, -0.879250,
		0.657596, -0.659894, 0.363467,
		-0.583731, -0.751297, -0.307916,
		41.869335, 32.538013, 17.484983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763161, 32.622719, 17.333614>,  <42.277946, 33.063919, 17.700525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763161, 32.622719, 17.333614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.398121, 32.514397, 17.211084>,  <42.179096, 32.449406, 17.137566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.398121, 32.514397, 17.211084>,  <42.763161, 32.622719, 17.333614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398121, 32.514397, 17.211084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335610, -0.068219, -0.939528,
		0.233530, -0.960214, 0.153140,
		-0.912595, -0.270803, -0.306326,
		42.124344, 32.433155, 17.119186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932861, 32.095276, 16.896685>,  <42.763161, 32.622719, 17.333614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932861, 32.095276, 16.896685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.567108, 32.225365, 16.800245>,  <42.347656, 32.303417, 16.742382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.567108, 32.225365, 16.800245>,  <42.932861, 32.095276, 16.896685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567108, 32.225365, 16.800245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314740, 0.196503, -0.928615,
		-0.254631, -0.924995, -0.282041,
		-0.914386, 0.325224, -0.241097,
		42.292793, 32.322933, 16.727917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790680, 31.742067, 16.282753>,  <42.932861, 32.095276, 16.896685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790680, 31.742067, 16.282753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.546566, 32.058750, 16.293762>,  <42.400097, 32.248760, 16.300367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.546566, 32.058750, 16.293762>,  <42.790680, 31.742067, 16.282753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546566, 32.058750, 16.293762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253153, 0.227825, -0.940218,
		-0.750648, -0.566829, -0.339461,
		-0.610280, 0.791708, 0.027522,
		42.363483, 32.296261, 16.302019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582260, 31.784548, 15.562246>,  <42.790680, 31.742067, 16.282753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582260, 31.784548, 15.562246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.500198, 32.141712, 15.722557>,  <42.450962, 32.356010, 15.818744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.500198, 32.141712, 15.722557>,  <42.582260, 31.784548, 15.562246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500198, 32.141712, 15.722557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328755, 0.448566, -0.831089,
		-0.921862, -0.038748, -0.385575,
		-0.205159, 0.892910, 0.400777,
		42.438652, 32.409584, 15.842791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220596, 32.180721, 15.068877>,  <42.582260, 31.784548, 15.562246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220596, 32.180721, 15.068877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.388206, 32.454681, 15.307314>,  <42.488773, 32.619057, 15.450377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.388206, 32.454681, 15.307314>,  <42.220596, 32.180721, 15.068877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388206, 32.454681, 15.307314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281852, 0.525960, -0.802450,
		-0.863120, 0.504258, 0.027350,
		0.419026, 0.684902, 0.596093,
		42.513916, 32.660152, 15.486142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999821, 32.779781, 14.857751>,  <42.220596, 32.180721, 15.068877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999821, 32.779781, 14.857751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.350113, 32.877300, 15.024436>,  <42.560287, 32.935814, 15.124447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.350113, 32.877300, 15.024436>,  <41.999821, 32.779781, 14.857751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350113, 32.877300, 15.024436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224360, 0.558757, -0.798407,
		-0.427493, 0.792686, 0.434624,
		0.875735, 0.243801, 0.416712,
		42.612835, 32.950439, 15.149449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.244057, 30.876743, 29.440393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.506737, 31.068909, 29.672926>,  <35.664345, 31.184208, 29.812445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.506737, 31.068909, 29.672926>,  <35.244057, 30.876743, 29.440393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506737, 31.068909, 29.672926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640987, 0.050572, -0.765884,
		-0.397340, 0.875583, -0.274728,
		0.656702, 0.480413, 0.581331,
		35.703747, 31.213032, 29.847324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369106, 31.535261, 29.117220>,  <35.244057, 30.876743, 29.440393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369106, 31.535261, 29.117220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.671764, 31.431936, 29.357473>,  <35.853359, 31.369942, 29.501625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.671764, 31.431936, 29.357473>,  <35.369106, 31.535261, 29.117220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671764, 31.431936, 29.357473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644787, 0.142581, -0.750946,
		0.108341, 0.955481, 0.274440,
		0.756645, -0.258314, 0.600635,
		35.898758, 31.354443, 29.537664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922680, 31.951796, 28.808891>,  <35.369106, 31.535261, 29.117220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922680, 31.951796, 28.808891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089191, 31.672680, 29.042063>,  <36.189098, 31.505211, 29.181965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089191, 31.672680, 29.042063>,  <35.922680, 31.951796, 28.808891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089191, 31.672680, 29.042063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822350, 0.015438, -0.568773,
		0.387885, 0.716137, 0.580253,
		0.416277, -0.697789, 0.582927,
		36.214073, 31.463343, 29.216940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591030, 32.242935, 29.033484>,  <35.922680, 31.951796, 28.808891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591030, 32.242935, 29.033484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.591301, 31.842993, 29.040222>,  <36.591465, 31.603027, 29.044266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.591301, 31.842993, 29.040222>,  <36.591030, 32.242935, 29.033484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591301, 31.842993, 29.040222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567700, -0.013485, -0.823125,
		0.823235, 0.010124, 0.567610,
		0.000678, -0.999858, 0.016849,
		36.591503, 31.543036, 29.045277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360001, 32.063206, 28.849033>,  <36.591030, 32.242935, 29.033484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360001, 32.063206, 28.849033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.123947, 31.745003, 28.794018>,  <36.982315, 31.554083, 28.761007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.123947, 31.745003, 28.794018>,  <37.360001, 32.063206, 28.849033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123947, 31.745003, 28.794018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420448, -0.157409, -0.893558,
		0.689178, -0.585147, 0.427360,
		-0.590133, -0.795503, -0.137541,
		36.946907, 31.506351, 28.752756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794678, 31.524376, 28.721474>,  <37.360001, 32.063206, 28.849033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794678, 31.524376, 28.721474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.437214, 31.425518, 28.571651>,  <37.222736, 31.366203, 28.481758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.437214, 31.425518, 28.571651>,  <37.794678, 31.524376, 28.721474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437214, 31.425518, 28.571651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416653, -0.147002, -0.897101,
		0.166654, -0.957763, 0.234343,
		-0.893659, -0.247145, -0.374556,
		37.169117, 31.351376, 28.459284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927322, 30.956369, 28.223829>,  <37.794678, 31.524376, 28.721474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927322, 30.956369, 28.223829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.564125, 31.082884, 28.113909>,  <37.346207, 31.158792, 28.047956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.564125, 31.082884, 28.113909>,  <37.927322, 30.956369, 28.223829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564125, 31.082884, 28.113909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285441, -0.013178, -0.958306,
		-0.306720, -0.948572, -0.078315,
		-0.907990, 0.316286, -0.274803,
		37.291729, 31.177769, 28.031467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633602, 30.409742, 27.782448>,  <37.927322, 30.956369, 28.223829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633602, 30.409742, 27.782448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402477, 30.719160, 27.678324>,  <37.263802, 30.904812, 27.615849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402477, 30.719160, 27.678324>,  <37.633602, 30.409742, 27.782448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402477, 30.719160, 27.678324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212527, -0.165338, -0.963066,
		-0.788015, -0.611792, -0.068865,
		-0.577810, 0.773547, -0.260311,
		37.229134, 30.951223, 27.600231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115383, 30.186937, 27.330475>,  <37.633602, 30.409742, 27.782448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115383, 30.186937, 27.330475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209385, 30.574089, 27.294729>,  <37.265785, 30.806379, 27.273283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209385, 30.574089, 27.294729>,  <37.115383, 30.186937, 27.330475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209385, 30.574089, 27.294729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258097, -0.150772, -0.954282,
		-0.937102, 0.201192, -0.285238,
		0.235000, 0.967879, -0.089362,
		37.279884, 30.864452, 27.267921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939022, 30.376898, 26.604376>,  <37.115383, 30.186937, 27.330475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939022, 30.376898, 26.604376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.144611, 30.704374, 26.706810>,  <37.267963, 30.900860, 26.768270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.144611, 30.704374, 26.706810>,  <36.939022, 30.376898, 26.604376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144611, 30.704374, 26.706810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350008, 0.072405, -0.933944,
		-0.783154, 0.569650, -0.249335,
		0.513969, 0.818692, 0.256086,
		37.298801, 30.949982, 26.783636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936630, 30.715246, 26.043554>,  <36.939022, 30.376898, 26.604376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936630, 30.715246, 26.043554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214840, 30.916418, 26.248810>,  <37.381763, 31.037121, 26.371964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214840, 30.916418, 26.248810>,  <36.936630, 30.715246, 26.043554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214840, 30.916418, 26.248810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476187, 0.212156, -0.853367,
		-0.538050, 0.837885, -0.091930,
		0.695520, 0.502930, 0.513141,
		37.423496, 31.067297, 26.402752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867844, 31.460514, 25.860884>,  <36.936630, 30.715246, 26.043554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867844, 31.460514, 25.860884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.244030, 31.362082, 25.954670>,  <37.469742, 31.303022, 26.010941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.244030, 31.362082, 25.954670>,  <36.867844, 31.460514, 25.860884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244030, 31.362082, 25.954670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283518, 0.187474, -0.940463,
		0.187474, 0.950946, 0.246080,
		0.940463, -0.246080, 0.234464,
		37.526169, 31.288258, 26.025009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585712, 32.098694, 25.657320>,  <36.867844, 31.460514, 25.860884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585712, 32.098694, 25.657320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.268661, 32.101334, 25.413450>,  <36.078430, 32.102917, 25.267128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.268661, 32.101334, 25.413450>,  <36.585712, 32.098694, 25.657320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268661, 32.101334, 25.413450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596007, 0.202408, 0.777050,
		0.128532, 0.979279, -0.156499,
		-0.792625, 0.006601, -0.609673,
		36.030872, 32.103313, 25.230549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209698, 32.712959, 25.745544>,  <36.585712, 32.098694, 25.657320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209698, 32.712959, 25.745544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.959370, 32.433228, 25.607388>,  <35.809174, 32.265388, 25.524494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.959370, 32.433228, 25.607388>,  <36.209698, 32.712959, 25.745544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959370, 32.433228, 25.607388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663695, 0.244856, 0.706791,
		-0.409706, 0.671558, -0.617374,
		-0.625820, -0.699325, -0.345391,
		35.771626, 32.223431, 25.503771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652641, 33.109192, 25.754265>,  <36.209698, 32.712959, 25.745544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652641, 33.109192, 25.754265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.507179, 32.739498, 25.707695>,  <35.419903, 32.517681, 25.679752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.507179, 32.739498, 25.707695>,  <35.652641, 33.109192, 25.754265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507179, 32.739498, 25.707695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771242, 0.228623, 0.594068,
		-0.522438, 0.305828, -0.795944,
		-0.363654, -0.924229, -0.116426,
		35.398083, 32.462231, 25.672768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884350, 33.111229, 25.495438>,  <35.652641, 33.109192, 25.754265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884350, 33.111229, 25.495438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970097, 32.766525, 25.679361>,  <35.021545, 32.559704, 25.789717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970097, 32.766525, 25.679361>,  <34.884350, 33.111229, 25.495438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970097, 32.766525, 25.679361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795580, 0.119058, 0.594035,
		-0.566657, -0.493157, -0.660073,
		0.214366, -0.861755, 0.459810,
		35.034405, 32.507999, 25.817305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235035, 32.887291, 25.594236>,  <34.884350, 33.111229, 25.495438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235035, 32.887291, 25.594236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.470203, 32.680183, 25.842838>,  <34.611305, 32.555920, 25.992001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.470203, 32.680183, 25.842838>,  <34.235035, 32.887291, 25.594236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470203, 32.680183, 25.842838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672326, 0.114466, 0.731352,
		-0.449812, -0.847829, -0.280812,
		0.587918, -0.517768, 0.621506,
		34.646580, 32.524853, 26.029289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752052, 32.663342, 26.048986>,  <34.235035, 32.887291, 25.594236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752052, 32.663342, 26.048986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.092117, 32.586945, 26.245249>,  <34.296158, 32.541107, 26.363007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.092117, 32.586945, 26.245249>,  <33.752052, 32.663342, 26.048986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092117, 32.586945, 26.245249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483222, 0.087042, 0.871161,
		-0.209093, -0.977725, -0.018291,
		0.850163, -0.190992, 0.490658,
		34.347168, 32.529648, 26.392447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603077, 32.061134, 26.340120>,  <33.752052, 32.663342, 26.048986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603077, 32.061134, 26.340120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.875580, 32.260563, 26.554525>,  <34.039082, 32.380219, 26.683168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.875580, 32.260563, 26.554525>,  <33.603077, 32.061134, 26.340120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875580, 32.260563, 26.554525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613745, -0.010085, 0.789440,
		0.398999, -0.866789, 0.299126,
		0.681261, 0.498573, 0.536011,
		34.079960, 32.410133, 26.715328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622238, 31.700649, 26.952234>,  <33.603077, 32.061134, 26.340120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622238, 31.700649, 26.952234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.773609, 32.062130, 27.032352>,  <33.864429, 32.279018, 27.080423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.773609, 32.062130, 27.032352>,  <33.622238, 31.700649, 26.952234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773609, 32.062130, 27.032352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424041, -0.023094, 0.905349,
		0.822790, -0.427540, 0.374467,
		0.378425, 0.903701, 0.200296,
		33.887138, 32.333241, 27.092442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724884, 31.676382, 27.636747>,  <33.622238, 31.700649, 26.952234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724884, 31.676382, 27.636747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.696548, 32.067421, 27.557468>,  <33.679546, 32.302044, 27.509901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.696548, 32.067421, 27.557468>,  <33.724884, 31.676382, 27.636747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696548, 32.067421, 27.557468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640763, 0.107683, 0.760150,
		0.764464, 0.180844, 0.618781,
		-0.070837, 0.977599, -0.198198,
		33.675297, 32.360703, 27.498009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733395, 32.015503, 28.249535>,  <33.724884, 31.676382, 27.636747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733395, 32.015503, 28.249535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.578873, 32.287415, 28.000160>,  <33.486160, 32.450562, 27.850536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.578873, 32.287415, 28.000160>,  <33.733395, 32.015503, 28.249535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578873, 32.287415, 28.000160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649318, 0.279630, 0.707244,
		0.655098, 0.678021, 0.333367,
		-0.386307, 0.679775, -0.623437,
		33.462982, 32.491348, 27.813129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538975, 32.475872, 28.675520>,  <33.733395, 32.015503, 28.249535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538975, 32.475872, 28.675520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352226, 32.575180, 28.336018>,  <33.240177, 32.634766, 28.132317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352226, 32.575180, 28.336018>,  <33.538975, 32.475872, 28.675520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352226, 32.575180, 28.336018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695306, 0.489990, 0.525795,
		0.546422, 0.835626, -0.056140,
		-0.466876, 0.248271, -0.848757,
		33.212162, 32.649662, 28.081390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340878, 33.161613, 28.833513>,  <33.538975, 32.475872, 28.675520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340878, 33.161613, 28.833513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.131786, 33.012238, 28.526972>,  <33.006332, 32.922611, 28.343046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.131786, 33.012238, 28.526972>,  <33.340878, 33.161613, 28.833513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131786, 33.012238, 28.526972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821425, 0.461136, 0.335582,
		0.228075, 0.804922, -0.547799,
		-0.522727, -0.373437, -0.766356,
		32.974968, 32.900208, 28.297066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966766, 33.652786, 28.492785>,  <33.340878, 33.161613, 28.833513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966766, 33.652786, 28.492785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.783768, 33.300106, 28.446653>,  <32.673969, 33.088497, 28.418974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.783768, 33.300106, 28.446653>,  <32.966766, 33.652786, 28.492785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783768, 33.300106, 28.446653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799697, 0.351251, 0.486936,
		-0.388823, 0.314999, -0.865790,
		-0.457494, -0.881702, -0.115329,
		32.646519, 33.035595, 28.412054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345661, 33.856483, 28.403240>,  <32.966766, 33.652786, 28.492785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345661, 33.856483, 28.403240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.297039, 33.469765, 28.493147>,  <32.267864, 33.237732, 28.547091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.297039, 33.469765, 28.493147>,  <32.345661, 33.856483, 28.403240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297039, 33.469765, 28.493147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763111, 0.235833, 0.601701,
		-0.634733, -0.098379, -0.766444,
		-0.121558, -0.966801, 0.224765,
		32.260571, 33.179726, 28.560575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652283, 33.674129, 28.297909>,  <32.345661, 33.856483, 28.403240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652283, 33.674129, 28.297909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.804180, 33.410000, 28.557066>,  <31.895319, 33.251522, 28.712561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.804180, 33.410000, 28.557066>,  <31.652283, 33.674129, 28.297909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804180, 33.410000, 28.557066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779195, 0.149201, 0.608765,
		-0.498650, -0.736008, -0.457866,
		0.379741, -0.660327, 0.647893,
		31.918102, 33.211903, 28.751434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569027, 34.060249, 27.692142>,  <31.652283, 33.674129, 28.297909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569027, 34.060249, 27.692142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.758024, 34.412785, 27.692472>,  <31.871422, 34.624306, 27.692671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.758024, 34.412785, 27.692472>,  <31.569027, 34.060249, 27.692142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758024, 34.412785, 27.692472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138935, -0.073561, -0.987566,
		-0.870315, 0.466731, -0.157205,
		0.472492, 0.881335, 0.000824,
		31.899773, 34.677185, 27.692720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449537, 34.458057, 27.139605>,  <31.569027, 34.060249, 27.692142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449537, 34.458057, 27.139605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.814432, 34.596569, 27.227161>,  <32.033371, 34.679676, 27.279696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.814432, 34.596569, 27.227161>,  <31.449537, 34.458057, 27.139605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814432, 34.596569, 27.227161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224379, 0.024700, -0.974189,
		-0.342748, 0.937806, -0.055165,
		0.912238, 0.346279, 0.218891,
		32.088104, 34.700451, 27.292830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577871, 34.952335, 26.598621>,  <31.449537, 34.458057, 27.139605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577871, 34.952335, 26.598621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.944157, 34.889622, 26.746618>,  <32.163929, 34.851994, 26.835417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.944157, 34.889622, 26.746618>,  <31.577871, 34.952335, 26.598621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944157, 34.889622, 26.746618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383954, 0.069756, -0.920713,
		0.118540, 0.985167, 0.124073,
		0.915711, -0.156780, 0.369990,
		32.218868, 34.842587, 26.857615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875444, 35.627602, 26.519966>,  <31.577871, 34.952335, 26.598621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875444, 35.627602, 26.519966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.166531, 35.356388, 26.561338>,  <32.341183, 35.193661, 26.586161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.166531, 35.356388, 26.561338>,  <31.875444, 35.627602, 26.519966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166531, 35.356388, 26.561338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358477, 0.247429, -0.900152,
		0.584746, 0.692129, 0.423119,
		0.727713, -0.678038, 0.103430,
		32.384846, 35.152977, 26.592367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511841, 36.021263, 26.489487>,  <31.875444, 35.627602, 26.519966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511841, 36.021263, 26.489487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.625336, 35.646431, 26.408127>,  <32.693432, 35.421532, 26.359310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.625336, 35.646431, 26.408127>,  <32.511841, 36.021263, 26.489487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625336, 35.646431, 26.408127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531592, 0.330258, -0.779962,
		0.798062, 0.113177, 0.591851,
		0.283737, -0.937081, -0.203402,
		32.710457, 35.365307, 26.347107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216629, 36.120171, 26.402056>,  <32.511841, 36.021263, 26.489487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216629, 36.120171, 26.402056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.078999, 35.787407, 26.227909>,  <32.996418, 35.587749, 26.123421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.078999, 35.787407, 26.227909>,  <33.216629, 36.120171, 26.402056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078999, 35.787407, 26.227909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589656, 0.169390, -0.789691,
		0.730695, -0.528431, 0.432255,
		-0.344078, -0.831906, -0.435365,
		32.975777, 35.537834, 26.097300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837421, 35.895424, 26.053980>,  <33.216629, 36.120171, 26.402056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837421, 35.895424, 26.053980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.545952, 35.682621, 25.881470>,  <33.371071, 35.554939, 25.777964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.545952, 35.682621, 25.881470>,  <33.837421, 35.895424, 26.053980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545952, 35.682621, 25.881470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581670, -0.148344, -0.799784,
		0.361514, -0.833643, 0.417547,
		-0.728675, -0.532008, -0.431277,
		33.327351, 35.523018, 25.752087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179546, 35.461803, 25.818295>,  <33.837421, 35.895424, 26.053980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179546, 35.461803, 25.818295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.843266, 35.425823, 25.604706>,  <33.641499, 35.404236, 25.476553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.843266, 35.425823, 25.604706>,  <34.179546, 35.461803, 25.818295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843266, 35.425823, 25.604706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539873, -0.062894, -0.839394,
		0.041924, -0.993958, 0.101440,
		-0.840702, -0.089956, -0.533974,
		33.591057, 35.398838, 25.444513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281803, 34.901833, 25.378376>,  <34.179546, 35.461803, 25.818295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281803, 34.901833, 25.378376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.008137, 35.130966, 25.197807>,  <33.843937, 35.268448, 25.089466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.008137, 35.130966, 25.197807>,  <34.281803, 34.901833, 25.378376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008137, 35.130966, 25.197807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528730, -0.036772, -0.847993,
		-0.502362, -0.818844, -0.277719,
		-0.684161, 0.572838, -0.451420,
		33.802887, 35.302818, 25.062382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215385, 34.558052, 24.705992>,  <34.281803, 34.901833, 25.378376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215385, 34.558052, 24.705992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.069721, 34.925133, 24.642490>,  <33.982323, 35.145382, 24.604389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.069721, 34.925133, 24.642490>,  <34.215385, 34.558052, 24.705992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069721, 34.925133, 24.642490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503445, 0.050567, -0.862546,
		-0.783535, -0.394031, -0.480429,
		-0.364164, 0.917705, -0.158752,
		33.960472, 35.200443, 24.594866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798515, 34.469654, 24.044788>,  <34.215385, 34.558052, 24.705992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798515, 34.469654, 24.044788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926624, 34.840855, 24.120941>,  <34.003490, 35.063576, 24.166634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926624, 34.840855, 24.120941>,  <33.798515, 34.469654, 24.044788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926624, 34.840855, 24.120941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420734, 0.040722, -0.906270,
		-0.848768, 0.370355, -0.377398,
		0.320273, 0.927997, 0.190384,
		34.022705, 35.119255, 24.178057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838177, 34.791496, 23.393774>,  <33.798515, 34.469654, 24.044788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838177, 34.791496, 23.393774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.025379, 35.081699, 23.595608>,  <34.137699, 35.255821, 23.716707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.025379, 35.081699, 23.595608>,  <33.838177, 34.791496, 23.393774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025379, 35.081699, 23.595608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501260, 0.252303, -0.827697,
		-0.727811, 0.640295, -0.245590,
		0.468007, 0.725511, 0.504583,
		34.165783, 35.299355, 23.746983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818417, 35.408798, 22.954279>,  <33.838177, 34.791496, 23.393774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818417, 35.408798, 22.954279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.123703, 35.416576, 23.212622>,  <34.306873, 35.421246, 23.367626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.123703, 35.416576, 23.212622>,  <33.818417, 35.408798, 22.954279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123703, 35.416576, 23.212622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611184, 0.302612, -0.731355,
		-0.209668, 0.952915, 0.219069,
		0.763212, 0.019450, 0.645855,
		34.352665, 35.422413, 23.406378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020931, 36.059216, 22.873095>,  <33.818417, 35.408798, 22.954279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020931, 36.059216, 22.873095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.329536, 35.866600, 23.039417>,  <34.514698, 35.751030, 23.139210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.329536, 35.866600, 23.039417>,  <34.020931, 36.059216, 22.873095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329536, 35.866600, 23.039417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614053, 0.392592, -0.684698,
		0.166465, 0.783578, 0.598577,
		0.771511, -0.481536, 0.415806,
		34.560989, 35.722137, 23.164160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545818, 36.547279, 23.077330>,  <34.020931, 36.059216, 22.873095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545818, 36.547279, 23.077330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.745842, 36.202431, 23.044611>,  <34.865856, 35.995522, 23.024979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.745842, 36.202431, 23.044611>,  <34.545818, 36.547279, 23.077330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745842, 36.202431, 23.044611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567858, 0.397750, -0.720647,
		0.653820, 0.313915, 0.688460,
		0.500057, -0.862121, -0.081798,
		34.895859, 35.943794, 23.020071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269825, 36.738232, 23.068087>,  <34.545818, 36.547279, 23.077330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269825, 36.738232, 23.068087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.223064, 36.378658, 22.899210>,  <35.195007, 36.162914, 22.797884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.223064, 36.378658, 22.899210>,  <35.269825, 36.738232, 23.068087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223064, 36.378658, 22.899210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551210, 0.294892, -0.780516,
		0.826136, -0.323962, 0.461029,
		-0.116904, -0.898937, -0.422192,
		35.187992, 36.108978, 22.772552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912605, 36.604172, 22.891584>,  <35.269825, 36.738232, 23.068087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912605, 36.604172, 22.891584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669930, 36.383499, 22.662649>,  <35.524323, 36.251095, 22.525288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669930, 36.383499, 22.662649>,  <35.912605, 36.604172, 22.891584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669930, 36.383499, 22.662649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500751, 0.293949, -0.814151,
		0.617393, -0.780536, 0.097921,
		-0.606691, -0.551685, -0.572337,
		35.487923, 36.217995, 22.490948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296867, 36.262489, 22.497124>,  <35.912605, 36.604172, 22.891584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296867, 36.262489, 22.497124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.960800, 36.214962, 22.285463>,  <35.759159, 36.186447, 22.158468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.960800, 36.214962, 22.285463>,  <36.296867, 36.262489, 22.497124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960800, 36.214962, 22.285463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509359, 0.162112, -0.845147,
		0.186205, -0.979592, -0.075677,
		-0.840167, -0.118824, -0.529150,
		35.708748, 36.179317, 22.126719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518066, 35.843571, 21.925531>,  <36.296867, 36.262489, 22.497124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518066, 35.843571, 21.925531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.168163, 36.012295, 21.830145>,  <35.958221, 36.113529, 21.772913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.168163, 36.012295, 21.830145>,  <36.518066, 35.843571, 21.925531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168163, 36.012295, 21.830145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320583, 0.134775, -0.937583,
		-0.363346, -0.896610, -0.253122,
		-0.874761, 0.421814, -0.238468,
		35.905735, 36.138840, 21.758604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416302, 35.742268, 21.203550>,  <36.518066, 35.843571, 21.925531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416302, 35.742268, 21.203550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.142960, 36.029213, 21.257820>,  <35.978954, 36.201382, 21.290382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.142960, 36.029213, 21.257820>,  <36.416302, 35.742268, 21.203550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142960, 36.029213, 21.257820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218733, 0.378468, -0.899398,
		-0.696548, -0.584933, -0.415541,
		-0.683357, 0.717367, 0.135677,
		35.937954, 36.244423, 21.298523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094540, 35.836662, 20.549303>,  <36.416302, 35.742268, 21.203550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094540, 35.836662, 20.549303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.962196, 36.176540, 20.713526>,  <35.882790, 36.380466, 20.812059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.962196, 36.176540, 20.713526>,  <36.094540, 35.836662, 20.549303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962196, 36.176540, 20.713526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099014, 0.463915, -0.880329,
		-0.938472, -0.250614, -0.237621,
		-0.330858, 0.849692, 0.410557,
		35.862938, 36.431446, 20.836693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624130, 36.038780, 20.077047>,  <36.094540, 35.836662, 20.549303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624130, 36.038780, 20.077047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774544, 36.348835, 20.280127>,  <35.864792, 36.534870, 20.401974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774544, 36.348835, 20.280127>,  <35.624130, 36.038780, 20.077047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774544, 36.348835, 20.280127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188420, 0.472497, -0.860956,
		-0.907245, 0.419412, 0.031625,
		0.376038, 0.775139, 0.507696,
		35.887356, 36.581375, 20.432436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389492, 36.638771, 19.678034>,  <35.624130, 36.038780, 20.077047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389492, 36.638771, 19.678034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.688805, 36.766277, 19.910742>,  <35.868393, 36.842781, 20.050367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.688805, 36.766277, 19.910742>,  <35.389492, 36.638771, 19.678034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688805, 36.766277, 19.910742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331968, 0.579341, -0.744420,
		-0.574341, 0.750167, 0.327690,
		0.748284, 0.318769, 0.581771,
		35.913288, 36.861908, 20.085274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440437, 37.378307, 19.557514>,  <35.389492, 36.638771, 19.678034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440437, 37.378307, 19.557514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.795898, 37.275967, 19.709743>,  <36.009174, 37.214561, 19.801081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.795898, 37.275967, 19.709743>,  <35.440437, 37.378307, 19.557514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795898, 37.275967, 19.709743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449519, 0.650164, -0.612551,
		-0.090713, 0.715420, 0.692781,
		0.888653, -0.255852, 0.380573,
		36.062496, 37.199211, 19.823915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884228, 38.010410, 19.447525>,  <35.440437, 37.378307, 19.557514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884228, 38.010410, 19.447525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.125557, 37.707195, 19.546625>,  <36.270355, 37.525265, 19.606085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.125557, 37.707195, 19.546625>,  <35.884228, 38.010410, 19.447525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125557, 37.707195, 19.546625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741023, 0.418036, -0.525481,
		0.294766, 0.500624, 0.813934,
		0.603323, -0.758038, 0.247751,
		36.306553, 37.479782, 19.620951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472614, 38.247704, 19.507050>,  <35.884228, 38.010410, 19.447525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472614, 38.247704, 19.507050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.559536, 37.865391, 19.427803>,  <36.611691, 37.636002, 19.380255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.559536, 37.865391, 19.427803>,  <36.472614, 38.247704, 19.507050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559536, 37.865391, 19.427803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648298, 0.293059, -0.702728,
		0.729718, 0.024268, 0.683318,
		0.217306, -0.955786, -0.198118,
		36.624729, 37.578655, 19.368368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215431, 38.186642, 19.459223>,  <36.472614, 38.247704, 19.507050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215431, 38.186642, 19.459223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.081600, 37.856552, 19.277206>,  <37.001301, 37.658497, 19.167995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.081600, 37.856552, 19.277206>,  <37.215431, 38.186642, 19.459223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081600, 37.856552, 19.277206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703002, 0.103002, -0.703690,
		0.627571, -0.555336, 0.545671,
		-0.334579, -0.825223, -0.455043,
		36.981228, 37.608986, 19.140694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928108, 38.345821, 19.700819>,  <37.215431, 38.186642, 19.459223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928108, 38.345821, 19.700819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.091599, 38.708008, 19.746552>,  <38.189693, 38.925320, 19.773991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.091599, 38.708008, 19.746552>,  <37.928108, 38.345821, 19.700819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091599, 38.708008, 19.746552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084907, -0.087002, 0.992583,
		0.908697, -0.415406, 0.041320,
		0.408730, 0.905466, 0.114329,
		38.214218, 38.979649, 19.780849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366413, 38.249084, 20.239819>,  <37.928108, 38.345821, 19.700819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366413, 38.249084, 20.239819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.316933, 38.645973, 20.245274>,  <38.287243, 38.884106, 20.248547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.316933, 38.645973, 20.245274>,  <38.366413, 38.249084, 20.239819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316933, 38.645973, 20.245274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077709, -0.004012, 0.996968,
		0.989272, 0.124387, -0.076608,
		-0.123702, 0.992226, 0.013635,
		38.279823, 38.943642, 20.249365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737331, 38.364647, 20.868769>,  <38.366413, 38.249084, 20.239819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737331, 38.364647, 20.868769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.547764, 38.701618, 20.766232>,  <38.434021, 38.903801, 20.704708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.547764, 38.701618, 20.766232>,  <38.737331, 38.364647, 20.868769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547764, 38.701618, 20.766232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143048, 0.213592, 0.966393,
		0.868870, 0.494665, 0.019282,
		-0.473922, 0.842428, -0.256345,
		38.405586, 38.954346, 20.689327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015575, 38.940979, 21.288214>,  <38.737331, 38.364647, 20.868769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015575, 38.940979, 21.288214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.638950, 39.015450, 21.175924>,  <38.412975, 39.060131, 21.108551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.638950, 39.015450, 21.175924>,  <39.015575, 38.940979, 21.288214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638950, 39.015450, 21.175924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254552, 0.152548, 0.954951,
		0.220610, 0.970602, -0.096242,
		-0.941559, 0.186174, -0.280723,
		38.356483, 39.071301, 21.091707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735653, 39.507599, 21.727608>,  <39.015575, 38.940979, 21.288214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735653, 39.507599, 21.727608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.391338, 39.355343, 21.592451>,  <38.184750, 39.263988, 21.511356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.391338, 39.355343, 21.592451>,  <38.735653, 39.507599, 21.727608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391338, 39.355343, 21.592451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365353, -0.000117, 0.930869,
		-0.354361, 0.924725, -0.138966,
		-0.860782, -0.380636, -0.337893,
		38.133102, 39.241154, 21.491083>
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
