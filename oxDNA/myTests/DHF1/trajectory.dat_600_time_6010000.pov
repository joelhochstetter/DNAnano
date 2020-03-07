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
	<2.010912, 0.307420, 1.073386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.328453, 0.265925, 0.833707>,  <2.518978, 0.241028, 0.689899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.328453, 0.265925, 0.833707>,  <2.010912, 0.307420, 1.073386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.328453, 0.265925, 0.833707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608011, 0.117551, 0.785178,
		-0.011017, -0.987634, 0.156393,
		0.793852, -0.103739, -0.599197,
		2.566609, 0.234804, 0.653948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.493553, -0.272180, 1.296369>,  <2.010912, 0.307420, 1.073386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.493553, -0.272180, 1.296369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.676697, 0.035697, 1.118408>,  <2.786583, 0.220423, 1.011632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.676697, 0.035697, 1.118408>,  <2.493553, -0.272180, 1.296369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.676697, 0.035697, 1.118408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718459, -0.025599, 0.695098,
		0.523623, -0.637901, -0.564713,
		0.457860, 0.769692, -0.444902,
		2.814055, 0.266604, 0.984938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.281011, -0.397607, 1.308783>,  <2.493553, -0.272180, 1.296369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.281011, -0.397607, 1.308783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.158813, -0.016733, 1.307031>,  <3.085495, 0.211791, 1.305979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.158813, -0.016733, 1.307031>,  <3.281011, -0.397607, 1.308783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.158813, -0.016733, 1.307031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670861, 0.218495, 0.708664,
		0.675736, 0.213554, -0.705532,
		-0.305493, 0.952184, -0.004380,
		3.067165, 0.268922, 1.305717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.830770, 0.132275, 1.241388>,  <3.281011, -0.397607, 1.308783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.830770, 0.132275, 1.241388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.525177, 0.302565, 1.435332>,  <3.341821, 0.404738, 1.551699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.525177, 0.302565, 1.435332>,  <3.830770, 0.132275, 1.241388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.525177, 0.302565, 1.435332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632077, 0.342802, 0.694957,
		0.129648, 0.837405, -0.530985,
		-0.763983, 0.425723, 0.484860,
		3.295982, 0.430282, 1.580790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.047759, 0.880014, 1.312722>,  <3.830770, 0.132275, 1.241388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.047759, 0.880014, 1.312722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.781029, 0.773821, 1.591250>,  <3.620991, 0.710105, 1.758367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.781029, 0.773821, 1.591250>,  <4.047759, 0.880014, 1.312722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.781029, 0.773821, 1.591250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557484, 0.442350, 0.702523,
		-0.494525, 0.856648, -0.146967,
		-0.666825, -0.265483, 0.696321,
		3.580981, 0.694176, 1.800147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.990406, 1.431231, 1.701065>,  <4.047759, 0.880014, 1.312722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.990406, 1.431231, 1.701065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.838696, 1.150830, 1.942642>,  <3.747669, 0.982590, 2.087588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.838696, 1.150830, 1.942642>,  <3.990406, 1.431231, 1.701065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.838696, 1.150830, 1.942642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482199, 0.407327, 0.775609,
		-0.789705, 0.585390, 0.183533,
		-0.379276, -0.701002, 0.603942,
		3.724913, 0.940530, 2.123825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.655283, 1.813481, 2.292268>,  <3.990406, 1.431231, 1.701065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.655283, 1.813481, 2.292268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.732353, 1.443878, 2.424380>,  <3.778595, 1.222116, 2.503648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.732353, 1.443878, 2.424380>,  <3.655283, 1.813481, 2.292268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.732353, 1.443878, 2.424380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344149, 0.378841, 0.859093,
		-0.918933, -0.051860, 0.390990,
		0.192675, -0.924008, 0.330281,
		3.790156, 1.166676, 2.523465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.518148, 1.829899, 3.027232>,  <3.655283, 1.813481, 2.292268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.518148, 1.829899, 3.027232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.720901, 1.487169, 2.989451>,  <3.842553, 1.281531, 2.966783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.720901, 1.487169, 2.989451>,  <3.518148, 1.829899, 3.027232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.720901, 1.487169, 2.989451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425428, 0.153357, 0.891904,
		-0.749721, -0.492273, 0.442251,
		0.506883, -0.856825, -0.094451,
		3.872966, 1.230122, 2.961116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.704687, 2.083239, 3.245432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.820679, 1.733438, 3.400948>,  <4.890274, 1.523557, 3.494257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.820679, 1.733438, 3.400948>,  <4.704687, 2.083239, 3.245432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.820679, 1.733438, 3.400948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513559, -0.484988, -0.707844,
		0.807569, 0.005595, -0.589746,
		0.289981, -0.874503, 0.388788,
		4.907673, 1.471087, 3.517584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.012215, 1.582510, 2.727344>,  <4.704687, 2.083239, 3.245432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.012215, 1.582510, 2.727344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.848244, 1.373629, 3.026480>,  <4.749861, 1.248300, 3.205961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.848244, 1.373629, 3.026480>,  <5.012215, 1.582510, 2.727344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.848244, 1.373629, 3.026480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657524, -0.399055, -0.639075,
		0.632156, -0.753696, -0.179779,
		-0.409927, -0.522204, 0.747839,
		4.725266, 1.216967, 3.250831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.086073, 0.800744, 2.682369>,  <5.012215, 1.582510, 2.727344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.086073, 0.800744, 2.682369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.771057, 0.923205, 2.896303>,  <4.582047, 0.996682, 3.024664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.771057, 0.923205, 2.896303>,  <5.086073, 0.800744, 2.682369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.771057, 0.923205, 2.896303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605902, -0.543132, -0.581283,
		0.112526, -0.781843, 0.613237,
		-0.787540, 0.306152, 0.534837,
		4.534795, 1.015051, 3.056754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.677377, 0.238425, 2.910046>,  <5.086073, 0.800744, 2.682369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.677377, 0.238425, 2.910046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.418732, 0.543433, 2.918556>,  <4.263544, 0.726438, 2.923662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.418732, 0.543433, 2.918556>,  <4.677377, 0.238425, 2.910046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.418732, 0.543433, 2.918556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577158, -0.470810, -0.667253,
		-0.498780, -0.443732, 0.744527,
		-0.646612, 0.762523, 0.021273,
		4.224747, 0.772189, 2.924939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.024383, -0.043816, 2.871817>,  <4.677377, 0.238425, 2.910046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.024383, -0.043816, 2.871817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.947327, 0.339376, 2.786814>,  <3.901093, 0.569292, 2.735812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.947327, 0.339376, 2.786814>,  <4.024383, -0.043816, 2.871817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.947327, 0.339376, 2.786814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739770, -0.284066, -0.609957,
		-0.644694, 0.039705, 0.763409,
		-0.192641, 0.957982, -0.212508,
		3.889534, 0.626771, 2.723061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.286951, -0.027781, 2.849971>,  <4.024383, -0.043816, 2.871817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.286951, -0.027781, 2.849971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.400772, 0.292826, 2.639599>,  <3.469065, 0.485189, 2.513376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.400772, 0.292826, 2.639599>,  <3.286951, -0.027781, 2.849971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.400772, 0.292826, 2.639599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720662, -0.182941, -0.668714,
		-0.632199, 0.569303, 0.525565,
		0.284554, 0.801516, -0.525930,
		3.486138, 0.533280, 2.481820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.663590, 0.494683, 2.740177>,  <3.286951, -0.027781, 2.849971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.663590, 0.494683, 2.740177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.944603, 0.498615, 2.455544>,  <3.113210, 0.500974, 2.284763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.944603, 0.498615, 2.455544>,  <2.663590, 0.494683, 2.740177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.944603, 0.498615, 2.455544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691155, -0.228831, -0.685523,
		-0.169571, 0.973416, -0.153967,
		0.702531, 0.009830, -0.711585,
		3.155362, 0.501564, 2.242068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.396833, 1.011519, 2.325051>,  <2.663590, 0.494683, 2.740177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.396833, 1.011519, 2.325051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.650826, 0.782920, 2.117132>,  <2.803221, 0.645761, 1.992381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.650826, 0.782920, 2.117132>,  <2.396833, 1.011519, 2.325051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.650826, 0.782920, 2.117132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760518, -0.344262, -0.550541,
		0.135686, 0.744899, -0.653234,
		0.634981, -0.571497, -0.519798,
		2.841320, 0.611471, 1.961193>
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
